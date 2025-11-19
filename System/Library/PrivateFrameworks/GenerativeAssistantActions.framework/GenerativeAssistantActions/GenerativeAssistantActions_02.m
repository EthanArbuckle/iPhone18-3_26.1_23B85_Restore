uint64_t GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:)()
{
  v375 = v0;
  v1 = *(v0 + 2120);
  v2 = *(v0 + 2096);
  v3 = *(v0 + 2088);
  v4 = *(v0 + 1480);
  v5 = *(v2 + 16);
  *(v0 + 2160) = v5;
  *(v0 + 2168) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = type metadata accessor for DocumentInfo(0);
  *(v0 + 2176) = v6;
  v366 = v6;
  v7 = *(v4 + *(v6 + 20));
  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 2120);
  v9 = *(v0 + 2112);
  v10 = *(v0 + 2088);
  v11 = type metadata accessor for Logger();
  *(v0 + 2184) = __swift_project_value_buffer(v11, static Logger.genFromMediaController);
  v5(v9, v8, v10);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 2112);
  v16 = *(v0 + 2096);
  v17 = *(v0 + 2088);
  if (v14)
  {
    v360 = v11;
    v18 = swift_slowAlloc();
    v357 = swift_slowAlloc();
    *&v369[0] = v357;
    *v18 = 136315906;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v369);
    *(v18 + 12) = 2080;
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v369);
    *(v18 + 22) = 2080;
    v353 = v13;
    v19 = URL.debugDescription.getter();
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v15, v17);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v369);

    *(v18 + 24) = v23;
    *(v18 + 32) = 2080;
    v24 = IntelligenceFile.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v369);

    *(v18 + 34) = v26;
    _os_log_impl(&dword_24FD67000, v12, v353, "%s.%s [url = %s; file: %s]", v18, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v357, -1, -1);
    v27 = v18;
    v11 = v360;
    MEMORY[0x253057F40](v27, -1, -1);
  }

  else
  {

    v22 = *(v16 + 8);
    v22(v15, v17);
  }

  v361 = v22;
  *(v0 + 2192) = v22;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1480);
  *(v0 + 2200) = static MetricsUtils.shared;
  MetricsUtils.emitSignpostEvent(_:)("Usecase.DocumentQnA", 19, 2);
  v29 = (v28 + v366[7]);
  v30 = *v29;
  *(v0 + 2208) = *v29;
  v31 = v29[1];
  *(v0 + 2216) = v31;
  v32 = specialized static GATSchemaGATMediaType.from(fileExtension:)();
  v33 = *(v28 + v366[9]) * 1024.0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v34 = static SELFUtils.shared;
  *(v0 + 2224) = static SELFUtils.shared;
  LOBYTE(v371) = 0;
  LOBYTE(v369[0]) = 0;
  *(v0 + 1329) = 0;
  swift_beginAccess();
  v34[4] = v32;
  *(v34 + 20) = 0;
  *(v34 + 3) = v33;
  *(v34 + 32) = 0;
  v34[9] = 4;
  *(v34 + 40) = 0;
  v34[11] = 2;
  *(v34 + 48) = 0;
  v34[13] = v32;
  *(v34 + 56) = 0;
  *(v34 + 8) = v33;
  *(v34 + 72) = 0;
  *(v34 + 73) = *(v0 + 1329);
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, static Logger.selfSchemaLogger);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_24FD67000, v35, v36, "Successfully updated GAT MediaQA usecase: GATMEDIAQNAUSECASE_REGISTER_DOCUMENT", v37, 2u);
    MEMORY[0x253057F40](v37, -1, -1);
  }

  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 2072);
  v39 = *(v0 + 2064);
  v40 = *(v0 + 2056);
  v41 = *(&static Disclaimer.partnerName + 1);
  *(v0 + 2232) = static Disclaimer.partnerName;
  *(v0 + 2240) = v41;

  specialized SupportedDocumentHelper.init()((v0 + 1144));
  SupportedDocumentHelper.getFileType(typeIdentifier:)(v30, v31, v40);
  outlined destroy of SupportedDocumentHelper(v0 + 1144);
  if ((*(v38 + 48))(v40, 1, v39) == 1)
  {
    v42 = *(v0 + 2136);
    v43 = *(v0 + 2120);
    v44 = *(v0 + 2096);
    v45 = *(v0 + 2088);
    v46 = *(v0 + 2056);

    outlined destroy of OnScreenContent.Document?(v46, &_s25GenerativeAssistantCommon21SupportedDocumentTypeOSgMd, &_s25GenerativeAssistantCommon21SupportedDocumentTypeOSgMR);
    *&v369[0] = 0;
    *(&v369[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    *&v369[0] = 0xD000000000000017;
    *(&v369[0] + 1) = 0x800000024FE20100;
    MEMORY[0x253056FE0](v30, v31);
    v47 = v369[0];
    SELFUtils.recordRequestFailed(code:domain:)(3, 1);
    lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();
    swift_allocError();
    *v48 = v47;
    *(v48 + 16) = 3;
    swift_willThrow();
    v49 = v43;
    v50 = v45;
LABEL_50:
    v361(v49, v50);
    v127 = *(v0 + 2120);
    v128 = *(v0 + 2112);
    v129 = *(v0 + 2104);
    v130 = *(v0 + 2080);
    v131 = *(v0 + 2056);
    v132 = *(v0 + 2048);
    v133 = *(v0 + 2040);
    v134 = *(v0 + 2032);
    v135 = *(v0 + 2024);
    v136 = *(v0 + 2016);
    v309 = *(v0 + 1992);
    v310 = *(v0 + 1984);
    v311 = *(v0 + 1976);
    v312 = *(v0 + 1968);
    v313 = *(v0 + 1960);
    v314 = *(v0 + 1952);
    v315 = *(v0 + 1944);
    v316 = *(v0 + 1920);
    v317 = *(v0 + 1896);
    v318 = *(v0 + 1888);
    v319 = *(v0 + 1864);
    v320 = *(v0 + 1840);
    v321 = *(v0 + 1832);
    v322 = *(v0 + 1824);
    v323 = *(v0 + 1816);
    v324 = *(v0 + 1808);
    v325 = *(v0 + 1800);
    v326 = *(v0 + 1792);
    v327 = *(v0 + 1784);
    v328 = *(v0 + 1776);
    v329 = *(v0 + 1760);
    v330 = *(v0 + 1744);
    v331 = *(v0 + 1736);
    v332 = *(v0 + 1728);
    v333 = *(v0 + 1720);
    v334 = *(v0 + 1696);
    v335 = *(v0 + 1688);
    v336 = *(v0 + 1672);
    v337 = *(v0 + 1664);
    v338 = *(v0 + 1656);
    v339 = *(v0 + 1648);
    v340 = *(v0 + 1640);
    v343 = *(v0 + 1632);
    v345 = *(v0 + 1616);
    v348 = *(v0 + 1592);
    v351 = *(v0 + 1568);
    v355 = *(v0 + 1560);
    v358 = *(v0 + 1552);
    v362 = *(v0 + 1528);
    v364 = *(v0 + 1520);

    v137 = *(v0 + 8);

    return v137();
  }

  v51 = *(v0 + 2040);
  v52 = *(v0 + 1480);
  (*(*(v0 + 2072) + 32))(*(v0 + 2080), *(v0 + 2056), *(v0 + 2064));
  outlined init with copy of Date?(v52 + v366[10], v51, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v53 = type metadata accessor for OnScreenContent.UIMetadata();
  *(v0 + 2248) = v53;
  v54 = *(v53 - 8);
  *(v0 + 2256) = v54;
  v55 = *(v54 + 48);
  *(v0 + 2264) = v55;
  *(v0 + 2272) = (v54 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v55(v51, 1, v53) == 1)
  {
    v56 = *(v0 + 2040);
    v57 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd;
    v58 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR;
LABEL_22:
    outlined destroy of OnScreenContent.Document?(v56, v57, v58);
    v68 = 0;
    goto LABEL_24;
  }

  v59 = *(v0 + 2048);
  v60 = *(v0 + 2040);
  v61 = *(v0 + 2024);
  v62 = *(v0 + 2008);
  v63 = *(v0 + 2000);
  OnScreenContent.UIMetadata.window.getter();
  (*(v54 + 8))(v60, v53);
  OnScreenContent.UIMetadata.Window.intelligenceUserActivity.getter();
  (*(v62 + 8))(v61, v63);
  v64 = type metadata accessor for IntelligenceUserActivity();
  v65 = *(v64 - 8);
  v66 = (*(v65 + 48))(v59, 1, v64);
  v67 = *(v0 + 2048);
  if (v66 == 1)
  {
    v57 = &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMd;
    v58 = &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMR;
    v56 = *(v0 + 2048);
    goto LABEL_22;
  }

  v68 = IntelligenceUserActivity.userActivity.getter();
  (*(v65 + 8))(v67, v64);
LABEL_24:
  *(v0 + 2280) = v68;
  v69 = v68;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();

  v354 = v69;
  if (!os_log_type_enabled(v70, v71))
  {
    goto LABEL_34;
  }

  v72 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  *&v369[0] = v73;
  *v72 = 136315650;
  *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v369);
  *(v72 + 12) = 2080;
  *(v72 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v369);
  *(v72 + 22) = 2080;
  if (v68)
  {
    v74 = [v69 webpageURL];
    v367 = v73;
    if (v74)
    {
      v75 = *(v0 + 1984);
      v76 = v74;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = 0;
    }

    else
    {
      v77 = 1;
    }

    v78 = *(v0 + 2096);
    v79 = *(v0 + 2088);
    v80 = *(v0 + 1992);
    v81 = *(v0 + 1984);
    (*(v78 + 56))(v81, v77, 1, v79);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v81, v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v82 = (*(v78 + 48))(v80, 1, v79);
    v69 = v354;
    v73 = v367;
    if (v82 != 1)
    {
      v83 = 0xE400000000000000;
      v84 = 1702195828;
      goto LABEL_33;
    }
  }

  else
  {
    (*(*(v0 + 2096) + 56))(*(v0 + 1992), 1, 1, *(v0 + 2088));
  }

  v83 = 0xE500000000000000;
  v84 = 0x65736C6166;
LABEL_33:
  outlined destroy of OnScreenContent.Document?(*(v0 + 1992), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, v369);

  *(v72 + 24) = v85;
  _os_log_impl(&dword_24FD67000, v70, v71, "%s.%s [NSUserActivity webpageURL provided = %s]", v72, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x253057F40](v73, -1, -1);
  MEMORY[0x253057F40](v72, -1, -1);
LABEL_34:

  if (v68)
  {
    v86 = [v69 activityType];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0;
  }

  v90 = *(v0 + 1496);
  LOBYTE(v90) = GenerateTextFromMediaController.isFromWebsite(activityType:)(v87, v89);
  *(v0 + 1330) = v90 & 1;

  if ((v90 & 1) != 0 && v68)
  {
    v91 = [v69 webpageURL];
    if (v91)
    {
      v92 = *(v0 + 1968);
      v93 = v91;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v94 = 0;
    }

    else
    {
      v94 = 1;
    }

    v95 = *(v0 + 1976);
    v96 = *(v0 + 1968);
    (*(*(v0 + 2096) + 56))(v96, v94, 1, *(v0 + 2088));
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v96, v95, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(*(v0 + 2096) + 56))(*(v0 + 1976), 1, 1, *(v0 + 2088));
  }

  v97 = *(v0 + 1952);
  v98 = *(v0 + 1944);
  v99 = *(v0 + 1936);
  v100 = *(v0 + 1928);
  v101 = *(v0 + 1920);
  v102 = *(v0 + 1912);
  v103 = *(v0 + 1904);
  v104 = *(v0 + 1472);
  *(v0 + 1432) = MEMORY[0x277D84F90];
  *(v0 + 1440) = 0;
  (*(v102 + 104))(v101, *MEMORY[0x277D0D778], v103);
  v105 = *(v104 + 40);
  v106 = type metadata accessor for GenerativeRequestMetadata();
  *(v0 + 2288) = v106;
  v107 = (v104 + *(v106 + 52));
  *(v0 + 2296) = *v107;
  *(v0 + 2304) = v107[1];
  static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();
  (*(v102 + 8))(v101, v103);
  (*(v99 + 16))(v98, v97, v100);
  v108 = (*(v99 + 88))(v98, v100);
  if (v108 == *MEMORY[0x277D0D788])
  {
    v109 = *(v0 + 2136);

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&v369[0] = v113;
      *v112 = 136315394;
      *(v112 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v369);
      *(v112 + 12) = 2080;
      *(v112 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v369);
      _os_log_impl(&dword_24FD67000, v110, v111, "%s.%s Fallback to SiriX.", v112, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v113, -1, -1);
      MEMORY[0x253057F40](v112, -1, -1);
    }

    v114 = *(v0 + 1888);
    v115 = *(v0 + 1880);
    v116 = *(v0 + 1872);
    *v114 = 0xD000000000000043;
    v114[1] = 0x800000024FE1FF90;
    (*(v115 + 104))(v114, *MEMORY[0x277D0D710], v116);
    result = GATError.errorCode.getter();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v363 = *(v0 + 2120);
      v347 = *(v0 + 2096);
      v350 = *(v0 + 2088);
      v118 = *(v0 + 2072);
      v342 = *(v0 + 2064);
      v344 = *(v0 + 2080);
      v119 = *(v0 + 1976);
      v120 = *(v0 + 1952);
      v121 = *(v0 + 1936);
      v122 = *(v0 + 1928);
      v123 = *(v0 + 1888);
      v124 = *(v0 + 1880);
      v125 = *(v0 + 1872);
      SELFUtils.recordRequestFailed(code:domain:)(result, 4);
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v124 + 32))(v126, v123, v125);
      swift_willThrow();

      (*(v121 + 8))(v120, v122);
      outlined destroy of OnScreenContent.Document?(v119, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v118 + 8))(v344, v342);
      v50 = v350;
      v49 = v363;
      goto LABEL_50;
    }

    __break(1u);
    return result;
  }

  v138 = (v0 + 16);
  if (v108 == *MEMORY[0x277D0D798])
  {
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *&v369[0] = v142;
      *v141 = 136315394;
      *(v141 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v369);
      *(v141 + 12) = 2080;
      *(v141 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v369);
      _os_log_impl(&dword_24FD67000, v139, v140, "%s.%s Request confirmation", v141, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v142, -1, -1);
      MEMORY[0x253057F40](v141, -1, -1);
    }

    specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
    outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 832);
    v143 = swift_task_alloc();
    *(v0 + 2312) = v143;
    *v143 = v0;
    v143[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v144 = *(v0 + 2120);
    v145 = *(v0 + 2080);
    v146 = *(v0 + 1976);
    v147 = *(v0 + 1488);
    v148 = *(v0 + 1480);
    v149 = *(v0 + 1472);
    v150 = *(v0 + 1456);
    v378 = *(v0 + 1496);
    v379 = v0 + 16;
    v377 = v150;

    JUMPOUT(0x24FDA791CLL);
  }

  if (v108 == *MEMORY[0x277D0D790])
  {
    v151 = *(v0 + 2128);
    *(v0 + 2328) = static MainActor.shared.getter();
    v152 = *(v0 + 128);
    *(v0 + 656) = *(v0 + 112);
    *(v0 + 672) = v152;
    *(v0 + 688) = *(v0 + 144);
    v153 = *(v0 + 64);
    *(v0 + 592) = *(v0 + 48);
    *(v0 + 608) = v153;
    v154 = *(v0 + 96);
    *(v0 + 624) = *(v0 + 80);
    *(v0 + 640) = v154;
    v155 = *(v0 + 32);
    *(v0 + 560) = *v138;
    *(v0 + 576) = v155;
    v156 = swift_task_alloc();
    *(v0 + 2336) = v156;
    *v156 = v0;
    v156[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v157 = *(v0 + 1496);
    v158 = *(v0 + 1472);

    return GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:)(v0 + 560, 1, v158);
  }

  v159 = *MEMORY[0x277D0D780];
  v160 = v108;
  v161 = Logger.logObject.getter();
  if (v160 == v159)
  {
    v162 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *&v369[0] = v164;
      *v163 = 136315394;
      *(v163 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v369);
      *(v163 + 12) = 2080;
      *(v163 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v369);
      _os_log_impl(&dword_24FD67000, v161, v162, "%s.%s Skipping confirmation: user previously confirmed media upload in this session", v163, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v164, -1, -1);
      MEMORY[0x253057F40](v163, -1, -1);
    }
  }

  else
  {
    v165 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v161, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *&v369[0] = v167;
      *v166 = 136315394;
      *(v166 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v369);
      *(v166 + 12) = 2080;
      *(v166 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v369);
      _os_log_impl(&dword_24FD67000, v161, v165, "%s.%s Unkown Default when checking for confirmation vs enablement vs SiriX", v166, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v167, -1, -1);
      MEMORY[0x253057F40](v166, -1, -1);
    }

    (*(*(v0 + 1936) + 8))(*(v0 + 1944), *(v0 + 1928));
  }

  v168 = *(v0 + 2304);
  v169 = *(v0 + 2296);
  v170 = *(v0 + 1864);
  v172 = *(v0 + 120);
  v171 = *(v0 + 128);
  *(v0 + 2368) = v172;
  *(v0 + 2376) = v171;
  v173 = *(v0 + 112);
  v369[7] = *(v0 + 128);
  v174 = *(v0 + 144);
  v175 = *(v0 + 64);
  v369[2] = *(v0 + 48);
  v369[3] = v175;
  v176 = *(v0 + 80);
  v369[5] = *(v0 + 96);
  v369[6] = v173;
  v369[4] = v176;
  v177 = *(v0 + 32);
  v369[0] = *v138;
  v369[1] = v177;
  v370 = v174;
  v371 = v172;
  v372 = v171;
  v373 = 0;
  v374 = 1;
  swift_bridgeObjectRetain_n();
  IntentCallbackManager.updateIntentProgress(to:)(&v371);
  outlined consume of GenerativeAssistantProgressLevel(v371, v372, v373, v374);
  static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
  static SessionPersistenceUtils.clearStoredValuesForSession()();
  v178 = SessionPersistenceUtils.SessionStoredValues.didSelectAlternateAttachment.getter();
  v179 = *(v0 + 1432);
  v180 = *(v179 + 16);
  if (v178)
  {
    v181 = *(v0 + 1840);
    if (v180)
    {
      v182 = v180 - 1;
      v183 = type metadata accessor for Attachment();
      v184 = *(v183 - 8);
      (*(v184 + 16))(v181, v179 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v182, v183);
      (*(v184 + 56))(v181, 0, 1, v183);
    }

    else
    {
      v183 = type metadata accessor for Attachment();
      (*(*(v183 - 8) + 56))(v181, 1, 1, v183);
    }
  }

  else
  {
    v183 = type metadata accessor for Attachment();
    v185 = *(v183 - 8);
    v186 = v185;
    v187 = *(v0 + 1840);
    if (v180)
    {
      (*(v185 + 16))(*(v0 + 1840), v179 + ((*(v185 + 80) + 32) & ~*(v185 + 80)), v183);
      (*(v186 + 56))(v187, 0, 1, v183);
    }

    else
    {
      (*(v185 + 56))(*(v0 + 1840), 1, 1, v183);
    }
  }

  v188 = *(v0 + 1832);
  outlined init with copy of Date?(*(v0 + 1840), v188, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  type metadata accessor for Attachment();
  v189 = *(v183 - 8);
  v190 = (*(v189 + 48))(v188, 1, v183);
  v191 = *(v0 + 1864);
  v192 = *(v0 + 1832);
  if (v190 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 1832), &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter();
    if ((SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter() & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_89;
  }

  v193 = Attachment.isScreenshot.getter();
  (*(v189 + 8))(v192, v183);
  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter() & 1) == 0 && (v193)
  {
    v194 = *(v0 + 1440);
    *(v0 + 2384) = v194;
    if (v194)
    {
      v195 = *(v0 + 2224);

      v196 = (v195 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase);
      swift_beginAccess();
      v197 = *v196;
      v198 = *(v196 + 4);
      *v196 = 1;
      *(v196 + 4) = 0;
      if ((v198 & 1) == 0 && v197 == 6)
      {
        *v196 = 6;
      }

      v199 = *(v0 + 1744);
      outlined init with copy of Date?(*(v0 + 1488), v199, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v200 = type metadata accessor for ImageInfo(0);
      v365 = *(*(v200 - 8) + 48);
      v368 = v200;
      if (v365(v199, 1, v200) == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v0 + 1744), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      }

      else
      {
        v254 = *(v0 + 2272);
        v255 = *(v0 + 2264);
        v256 = *(v0 + 2248);
        v257 = *(v0 + 2032);
        v258 = *(v0 + 1744);
        outlined init with copy of Date?(v258 + *(v200 + 32), v257, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        outlined destroy of DocumentInfo(v258, type metadata accessor for ImageInfo);
        if (v255(v257, 1, v256) == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 2032), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        }

        else
        {
          v259 = *(v0 + 2256);
          v260 = *(v0 + 2248);
          v261 = *(v0 + 2032);
          v262 = *(v0 + 2016);
          v263 = *(v0 + 2008);
          v264 = *(v0 + 2000);
          OnScreenContent.UIMetadata.window.getter();
          (*(v259 + 8))(v261, v260);
          OnScreenContent.UIMetadata.Window.boundingBox.getter();
          (*(v263 + 8))(v262, v264);
          if ((*(v0 + 1328) & 1) == 0)
          {
            v352 = 0;
            v308 = *(v0 + 1320);
            v356 = v308;
            v359 = *(v0 + 1312);
            goto LABEL_116;
          }
        }
      }

      v356 = 0;
      v359 = 0;
      v352 = 1;
LABEL_116:
      v265 = *(v0 + 1330);
      v266 = *(v0 + 1728);
      v267 = *(v0 + 1712);
      v268 = *(v0 + 1704);
      IntelligenceFile.attributes.getter();
      v269 = IntelligenceFile.Attributes.fileSize.getter();
      v270 = v194;
      v272 = v271;
      v273 = *(v267 + 8);
      v273(v266, v268);
      v274 = vcvts_n_f32_s64(v269, 0x14uLL);
      v349 = v272;
      if (v272)
      {
        v274 = 0.0;
      }

      v346 = v274;
      if (v265 == 1)
      {
        v275 = *(v0 + 1680);
        outlined init with copy of Date?(*(v0 + 1976), *(v0 + 1696), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        swift_storeEnumTagMultiPayload();
        v276 = v270;
      }

      else
      {
        v277 = *(v0 + 1720);
        v278 = *(v0 + 1704);
        v279 = *(v0 + 1672);
        v276 = v270;
        v280 = IntelligenceFile.name.getter();
        v341 = v281;
        IntelligenceFile.attributes.getter();
        IntelligenceFile.Attributes.contentType.getter();
        v273(v277, v278);
        v282 = type metadata accessor for UTType();
        v283 = *(v282 - 8);
        v284 = (*(v283 + 48))(v279, 1, v282);
        v285 = *(v0 + 1672);
        if (v284 == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 1672), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v286 = 0;
          v287 = 0;
        }

        else
        {
          v286 = UTType.preferredMIMEType.getter();
          v287 = v288;
          (*(v283 + 8))(v285, v282);
        }

        v289 = *(v0 + 1696);
        v290 = *(v0 + 1680);
        *v289 = v280;
        v289[1] = v341;
        v289[2] = v286;
        v289[3] = v287;
        swift_storeEnumTagMultiPayload();
      }

      v291 = *(v0 + 1760);
      v292 = *(v0 + 1752);
      v293 = *(v0 + 1736);
      v294 = *(v0 + 1696);
      v295 = *(v0 + 1656);
      v296 = *(v0 + 1496);
      v297 = *(v0 + 1488);
      *v291 = v276;
      *(v291 + 8) = v359;
      *(v291 + 16) = v356;
      *(v291 + 24) = v352;
      *(v291 + 28) = v346;
      *(v291 + 32) = v349 & 1;
      outlined init with take of SelectedContent(v294, v291 + *(v292 + 28), type metadata accessor for UploadableMedia.Source);
      outlined init with copy of ModelOrchestrator(v296 + 40, v0 + 968);
      outlined init with copy of ScreenContent(v291, v295, type metadata accessor for UploadableImageData);
      v298 = type metadata accessor for UploadableMedia(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v298 - 8) + 56))(v295, 0, 1, v298);
      v299 = *(v0 + 128);
      *(v0 + 520) = *(v0 + 112);
      *(v0 + 536) = v299;
      *(v0 + 552) = *(v0 + 144);
      v300 = *(v0 + 64);
      *(v0 + 456) = *(v0 + 48);
      *(v0 + 472) = v300;
      v301 = *(v0 + 96);
      *(v0 + 488) = *(v0 + 80);
      *(v0 + 504) = v301;
      v302 = *(v0 + 32);
      *(v0 + 424) = *v138;
      *(v0 + 440) = v302;
      outlined init with copy of Date?(v297, v293, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v303 = v365(v293, 1, v368);
      v304 = *(v0 + 1736);
      if (v303 == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v0 + 1736), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
        v305 = 0;
        v306 = 0;
      }

      else
      {
        v305 = *(v304 + 24);
        v306 = *(v304 + 32);

        outlined destroy of DocumentInfo(v304, type metadata accessor for ImageInfo);
      }

      *(v0 + 2392) = v306;
      v307 = swift_task_alloc();
      *(v0 + 2400) = v307;
      *v307 = v0;
      v307[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
      v213 = *(v0 + 1816);
      v214 = *(v0 + 1656);
      v215 = *(v0 + 1472);
      v216 = *(v0 + 1464);
      v217 = *(v0 + 1456);
      v378 = v306;
      v218 = v0 + 424;
      v253 = v305;
      goto LABEL_109;
    }
  }

  v201 = *(v0 + 1864);
  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
  {
LABEL_89:

    goto LABEL_90;
  }

  if ((v193 & 1) == 0)
  {
LABEL_97:

    goto LABEL_98;
  }

  v219 = *(v0 + 1488);
  v220 = type metadata accessor for ImageInfo(0);
  LODWORD(v219) = (*(*(v220 - 8) + 48))(v219, 1, v220);

  if (v219 == 1)
  {
LABEL_90:
    v202 = *(v0 + 2224) + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v203 = *v202;
    v204 = *(v202 + 4);
    *v202 = 4;
    *(v202 + 4) = 0;
    if ((v204 & 1) == 0 && v203 == 6)
    {
      *v202 = 6;
    }

    v205 = *(v0 + 1648);
    v206 = *(v0 + 1496);
    v207 = type metadata accessor for UploadableMedia(0);
    (*(*(v207 - 8) + 56))(v205, 1, 1, v207);
    v208 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v208;
    *(v0 + 416) = *(v0 + 144);
    v209 = *(v0 + 64);
    *(v0 + 320) = *(v0 + 48);
    *(v0 + 336) = v209;
    v210 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v210;
    v211 = *(v0 + 32);
    *(v0 + 288) = *v138;
    *(v0 + 304) = v211;
    v212 = swift_task_alloc();
    *(v0 + 2416) = v212;
    *v212 = v0;
    v212[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v213 = *(v0 + 1808);
    v214 = *(v0 + 1648);
    v215 = *(v0 + 1472);
    v216 = *(v0 + 1464);
    v217 = *(v0 + 1456);
    v378 = 0;
    v218 = v0 + 288;
    goto LABEL_108;
  }

LABEL_98:
  v221 = *(v0 + 2224) + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
  swift_beginAccess();
  v222 = *v221;
  v223 = *(v221 + 4);
  *v221 = 2;
  *(v221 + 4) = 0;
  if ((v223 & 1) == 0 && v222 == 6)
  {
    *v221 = 6;
  }

  v224 = *(v0 + 1330);
  v225 = *(v0 + 2168);
  (*(v0 + 2160))(*(v0 + 2104), *(v0 + 2120), *(v0 + 2088));
  if (v224 == 1)
  {
    v226 = *(v0 + 1680);
    outlined init with copy of Date?(*(v0 + 1976), *(v0 + 1688), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v227 = *(v0 + 2216);
    v228 = *(v0 + 2208);
    v229 = *(v0 + 1664);
    v230 = (*(v0 + 1480) + *(*(v0 + 2176) + 24));
    v232 = *v230;
    v231 = v230[1];

    UTType.init(_:)();
    v233 = type metadata accessor for UTType();
    v234 = *(v233 - 8);
    v235 = (*(v234 + 48))(v229, 1, v233);
    v236 = *(v0 + 1664);
    if (v235 == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 1664), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      v237 = 0;
      v238 = 0;
    }

    else
    {
      v237 = UTType.preferredMIMEType.getter();
      v238 = v239;
      (*(v234 + 8))(v236, v233);
    }

    v240 = *(v0 + 1688);
    v241 = *(v0 + 1680);
    *v240 = v232;
    v240[1] = v231;
    v240[2] = v237;
    v240[3] = v238;
  }

  swift_storeEnumTagMultiPayload();
  v242 = *(v0 + 1688);
  v243 = *(v0 + 1640);
  v244 = *(v0 + 1632);
  v245 = *(v0 + 1624);
  v246 = *(v0 + 1496);
  (*(*(v0 + 2096) + 32))(v244, *(v0 + 2104), *(v0 + 2088));
  outlined init with take of SelectedContent(v242, v244 + *(v245 + 20), type metadata accessor for UploadableMedia.Source);
  outlined init with copy of ScreenContent(v244, v243, type metadata accessor for UploadableDocumentData);
  v247 = type metadata accessor for UploadableMedia(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v247 - 8) + 56))(v243, 0, 1, v247);
  v248 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  v249 = *(v0 + 128);
  *(v0 + 248) = *(v0 + 112);
  *(v0 + 264) = v249;
  v250 = *v138;
  *(v0 + 168) = *(v0 + 32);
  v251 = *(v0 + 64);
  *(v0 + 184) = *(v0 + 48);
  *(v0 + 200) = v251;
  *(v0 + 216) = v248;
  *(v0 + 280) = *(v0 + 144);
  *(v0 + 152) = v250;
  v252 = swift_task_alloc();
  *(v0 + 2432) = v252;
  *v252 = v0;
  v252[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  v213 = *(v0 + 1800);
  v214 = *(v0 + 1640);
  v215 = *(v0 + 1472);
  v216 = *(v0 + 1464);
  v217 = *(v0 + 1456);
  v378 = 0;
  v218 = v0 + 152;
LABEL_108:
  v253 = 0;
LABEL_109:

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v213, v217, v216, v215, v214, v218, 0, v253);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2312);
  v8 = *v1;
  *(*v1 + 2320) = v0;

  if (v0)
  {
    v4 = *(v2 + 2152);
    v5 = *(v2 + 2144);
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of IntentCallbackManager(v2 + 16);
    v4 = *(v2 + 2152);
    v5 = *(v2 + 2144);
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v81 = v0;
  v1 = v0[273];
  v2 = v0[267];

  v3 = v0[179];

  outlined destroy of IntentCallbackManager((v0 + 2));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v80[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v80);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v80);
    _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s User cancelled", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v7, -1, -1);
    MEMORY[0x253057F40](v6, -1, -1);
  }

  v61 = v0[290];
  v63 = v0[285];
  v8 = v0[280];
  v9 = v0[279];
  v10 = v0[278];
  v11 = v0[275];
  v75 = v0[265];
  v77 = v0[274];
  v71 = v0[262];
  v73 = v0[261];
  v12 = v0[259];
  v67 = v0[258];
  v69 = v0[260];
  v65 = v0[247];
  v59 = v0[244];
  v13 = v0[242];
  v14 = v0[241];
  v15 = v0[181];
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  SELFUtils.recordRequestCanceled()();
  v79 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v79, v9, v8, v15);

  (*(v13 + 8))(v59, v14);
  v16 = v0[180];

  outlined destroy of OnScreenContent.Document?(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v12 + 8))(v69, v67);
  v77(v75, v73);
  v17 = v0[265];
  v18 = v0[264];
  v19 = v0[263];
  v20 = v0[260];
  v21 = v0[257];
  v22 = v0[256];
  v23 = v0[255];
  v24 = v0[254];
  v25 = v0[253];
  v26 = v0[252];
  v29 = v0[249];
  v30 = v0[248];
  v31 = v0[247];
  v32 = v0[246];
  v33 = v0[245];
  v34 = v0[244];
  v35 = v0[243];
  v36 = v0[240];
  v37 = v0[237];
  v38 = v0[236];
  v39 = v0[233];
  v40 = v0[230];
  v41 = v0[229];
  v42 = v0[228];
  v43 = v0[227];
  v44 = v0[226];
  v45 = v0[225];
  v46 = v0[224];
  v47 = v0[223];
  v48 = v0[222];
  v49 = v0[220];
  v50 = v0[218];
  v51 = v0[217];
  v52 = v0[216];
  v53 = v0[215];
  v54 = v0[212];
  v55 = v0[211];
  v56 = v0[209];
  v57 = v0[208];
  v58 = v0[207];
  v60 = v0[206];
  v62 = v0[205];
  v64 = v0[204];
  v66 = v0[202];
  v68 = v0[199];
  v70 = v0[196];
  v72 = v0[195];
  v74 = v0[194];
  v76 = v0[191];
  v78 = v0[190];

  v27 = v0[1];

  return v27();
}

{
  v2 = *v1;
  v3 = *(*v1 + 2336);
  v15 = *v1;
  *(*v1 + 2344) = v0;

  if (v0)
  {
    v4 = v2[291];
    v5 = v2[280];
    v6 = v2[266];

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v11 = v2[291];
    v12 = v2[266];
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v13;
    v10 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

{
  v1 = v0[291];
  v2 = v0[237];
  v3 = v0[198];
  v4 = v0[197];

  (*(v3 + 56))(v2, 1, 1, v4);
  v5 = v0[269];
  v6 = v0[268];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:), v6, v5);
}

{
  v83 = v0;
  v1 = *(v0 + 1896);
  if ((*(*(v0 + 1584) + 48))(v1, 1, *(v0 + 1576)) == 1)
  {
    v2 = *(v0 + 2184);
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v82[0] = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v82);
      *(v5 + 12) = 2080;
      *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v82);
      _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s Request confirmation", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v6, -1, -1);
      MEMORY[0x253057F40](v5, -1, -1);
    }

    specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
    outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 696);
    v7 = swift_task_alloc();
    *(v0 + 2352) = v7;
    *v7 = v0;
    v7[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v8 = *(v0 + 2120);
    v9 = *(v0 + 2080);
    v10 = *(v0 + 1976);
    v11 = *(v0 + 1488);
    v12 = *(v0 + 1480);
    v13 = *(v0 + 1472);
    v14 = *(v0 + 1456);
    v86 = *(v0 + 1496);
    v87 = v0 + 16;
    v85 = v14;

    JUMPOUT(0x24FDA9864);
  }

  v15 = *(v0 + 2280);
  v16 = *(v0 + 2240);
  v17 = *(v0 + 2136);
  v78 = *(v0 + 2120);
  v80 = *(v0 + 2192);
  v70 = *(v0 + 2080);
  v72 = *(v0 + 2096);
  v18 = *(v0 + 2072);
  v19 = *(v0 + 2064);
  v20 = *(v0 + 1976);
  v21 = *(v0 + 1952);
  v22 = *(v0 + 1936);
  v23 = *(v0 + 1928);
  v74 = *(v0 + 1448);
  v76 = *(v0 + 2088);

  (*(v22 + 8))(v21, v23);
  outlined destroy of OnScreenContent.Document?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v18 + 8))(v70, v19);
  v80(v78, v76);
  outlined init with take of SelectedContent(v1, v74, type metadata accessor for GeneratedResponse);
  v24 = *(v0 + 2120);
  v25 = *(v0 + 2112);
  v26 = *(v0 + 2104);
  v27 = *(v0 + 2080);
  v28 = *(v0 + 2056);
  v29 = *(v0 + 2048);
  v30 = *(v0 + 2040);
  v31 = *(v0 + 2032);
  v32 = *(v0 + 2024);
  v33 = *(v0 + 2016);
  v36 = *(v0 + 1992);
  v37 = *(v0 + 1984);
  v38 = *(v0 + 1976);
  v39 = *(v0 + 1968);
  v40 = *(v0 + 1960);
  v41 = *(v0 + 1952);
  v42 = *(v0 + 1944);
  v43 = *(v0 + 1920);
  v44 = *(v0 + 1896);
  v45 = *(v0 + 1888);
  v46 = *(v0 + 1864);
  v47 = *(v0 + 1840);
  v48 = *(v0 + 1832);
  v49 = *(v0 + 1824);
  v50 = *(v0 + 1816);
  v51 = *(v0 + 1808);
  v52 = *(v0 + 1800);
  v53 = *(v0 + 1792);
  v54 = *(v0 + 1784);
  v55 = *(v0 + 1776);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1744);
  v58 = *(v0 + 1736);
  v59 = *(v0 + 1728);
  v60 = *(v0 + 1720);
  v61 = *(v0 + 1696);
  v62 = *(v0 + 1688);
  v63 = *(v0 + 1672);
  v64 = *(v0 + 1664);
  v65 = *(v0 + 1656);
  v66 = *(v0 + 1648);
  v67 = *(v0 + 1640);
  v68 = *(v0 + 1632);
  v69 = *(v0 + 1616);
  v71 = *(v0 + 1592);
  v73 = *(v0 + 1568);
  v75 = *(v0 + 1560);
  v77 = *(v0 + 1552);
  v79 = *(v0 + 1528);
  v81 = *(v0 + 1520);

  v34 = *(v0 + 8);

  return v34();
}

{
  v1 = v0[291];

  v2 = v0[269];
  v3 = v0[268];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:), v3, v2);
}

{
  v1 = v0[285];
  v2 = v0[267];
  v63 = v0[265];
  v65 = v0[274];
  v3 = v0[262];
  v61 = v0[261];
  v4 = v0[260];
  v5 = v0[259];
  v6 = v0[258];
  v7 = v0[247];
  v8 = v0[244];
  v9 = v0[242];
  v10 = v0[241];

  (*(v9 + 8))(v8, v10);
  outlined destroy of OnScreenContent.Document?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 8))(v4, v6);
  v65(v63, v61);
  v66 = v0[293];
  v11 = v0[265];
  v12 = v0[264];
  v13 = v0[263];
  v14 = v0[260];
  v15 = v0[257];
  v16 = v0[256];
  v17 = v0[255];
  v18 = v0[254];
  v19 = v0[253];
  v20 = v0[252];
  v23 = v0[249];
  v24 = v0[248];
  v25 = v0[247];
  v26 = v0[246];
  v27 = v0[245];
  v28 = v0[244];
  v29 = v0[243];
  v30 = v0[240];
  v31 = v0[237];
  v32 = v0[236];
  v33 = v0[233];
  v34 = v0[230];
  v35 = v0[229];
  v36 = v0[228];
  v37 = v0[227];
  v38 = v0[226];
  v39 = v0[225];
  v40 = v0[224];
  v41 = v0[223];
  v42 = v0[222];
  v43 = v0[220];
  v44 = v0[218];
  v45 = v0[217];
  v46 = v0[216];
  v47 = v0[215];
  v48 = v0[212];
  v49 = v0[211];
  v50 = v0[209];
  v51 = v0[208];
  v52 = v0[207];
  v53 = v0[206];
  v54 = v0[205];
  v55 = v0[204];
  v56 = v0[202];
  v57 = v0[199];
  v58 = v0[196];
  v59 = v0[195];
  v60 = v0[194];
  v62 = v0[191];
  v64 = v0[190];

  v21 = v0[1];

  return v21();
}

{
  v2 = *v1;
  v3 = *(*v1 + 2352);
  v8 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {
    v4 = *(v2 + 2152);
    v5 = *(v2 + 2144);
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of IntentCallbackManager(v2 + 16);
    v4 = *(v2 + 2152);
    v5 = *(v2 + 2144);
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v159 = v0;
  v1 = *(v0 + 2304);
  v2 = *(v0 + 2296);
  v3 = *(v0 + 1864);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  *(v0 + 2368) = v5;
  *(v0 + 2376) = v4;
  v152 = *(v0 + 112);
  v153 = *(v0 + 128);
  v154 = *(v0 + 144);
  v148 = *(v0 + 48);
  v149 = *(v0 + 64);
  v150 = *(v0 + 80);
  v151 = *(v0 + 96);
  v146 = *(v0 + 16);
  v147 = *(v0 + 32);
  v155 = v5;
  v156 = v4;
  v157 = 0;
  v158 = 1;
  swift_bridgeObjectRetain_n();
  IntentCallbackManager.updateIntentProgress(to:)(&v155);
  outlined consume of GenerativeAssistantProgressLevel(v155, v156, v157, v158);
  static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
  static SessionPersistenceUtils.clearStoredValuesForSession()();
  v6 = SessionPersistenceUtils.SessionStoredValues.didSelectAlternateAttachment.getter();
  v7 = *(v0 + 1432);
  v8 = *(v7 + 16);
  if (v6)
  {
    v9 = *(v0 + 1840);
    if (v8)
    {
      v10 = v8 - 1;
      v11 = type metadata accessor for Attachment();
      v12 = *(v11 - 8);
      (*(v12 + 16))(v9, v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v11);
      (*(v12 + 56))(v9, 0, 1, v11);
    }

    else
    {
      v11 = type metadata accessor for Attachment();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    }
  }

  else
  {
    v11 = type metadata accessor for Attachment();
    v13 = *(v11 - 8);
    v14 = v13;
    v15 = *(v0 + 1840);
    if (v8)
    {
      (*(v13 + 16))(*(v0 + 1840), v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11);
      (*(v14 + 56))(v15, 0, 1, v11);
    }

    else
    {
      (*(v13 + 56))(*(v0 + 1840), 1, 1, v11);
    }
  }

  v16 = *(v0 + 1832);
  outlined init with copy of Date?(*(v0 + 1840), v16, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  type metadata accessor for Attachment();
  v17 = *(v11 - 8);
  v18 = (*(v17 + 48))(v16, 1, v11);
  v19 = *(v0 + 1864);
  v20 = *(v0 + 1832);
  if (v18 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 1832), &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter();
    if ((SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter() & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  v21 = Attachment.isScreenshot.getter();
  (*(v17 + 8))(v20, v11);
  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter() & 1) == 0 && (v21)
  {
    v22 = *(v0 + 1440);
    *(v0 + 2384) = v22;
    if (v22)
    {
      v23 = *(v0 + 2224);

      v24 = (v23 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase);
      swift_beginAccess();
      v25 = *v24;
      v26 = *(v24 + 4);
      *v24 = 1;
      *(v24 + 4) = 0;
      if ((v26 & 1) == 0 && v25 == 6)
      {
        *v24 = 6;
      }

      v27 = *(v0 + 1744);
      outlined init with copy of Date?(*(v0 + 1488), v27, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v28 = type metadata accessor for ImageInfo(0);
      v145 = *(*(v28 - 8) + 48);
      v29 = v145(v27, 1, v28);
      v162 = v28;
      if (v29 == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v0 + 1744), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      }

      else
      {
        v84 = *(v0 + 2272);
        v85 = *(v0 + 2264);
        v86 = *(v0 + 2248);
        v87 = *(v0 + 2032);
        v88 = *(v0 + 1744);
        outlined init with copy of Date?(v88 + *(v28 + 32), v87, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        outlined destroy of DocumentInfo(v88, type metadata accessor for ImageInfo);
        if (v85(v87, 1, v86) == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 2032), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        }

        else
        {
          v89 = *(v0 + 2256);
          v90 = *(v0 + 2248);
          v91 = *(v0 + 2032);
          v92 = *(v0 + 2016);
          v93 = *(v0 + 2008);
          v94 = *(v0 + 2000);
          OnScreenContent.UIMetadata.window.getter();
          (*(v89 + 8))(v91, v90);
          OnScreenContent.UIMetadata.Window.boundingBox.getter();
          (*(v93 + 8))(v92, v94);
          if ((*(v0 + 1328) & 1) == 0)
          {
            v142 = 0;
            v138 = *(v0 + 1320);
            v143 = v138;
            v144 = *(v0 + 1312);
            goto LABEL_47;
          }
        }
      }

      v143 = 0;
      v144 = 0;
      v142 = 1;
LABEL_47:
      v95 = *(v0 + 1330);
      v96 = *(v0 + 1728);
      v97 = *(v0 + 1712);
      v98 = *(v0 + 1704);
      IntelligenceFile.attributes.getter();
      v99 = IntelligenceFile.Attributes.fileSize.getter();
      v101 = v100;
      v102 = *(v97 + 8);
      v102(v96, v98);
      v103 = vcvts_n_f32_s64(v99, 0x14uLL);
      v141 = v101;
      if (v101)
      {
        v104 = 0.0;
      }

      else
      {
        v104 = v103;
      }

      if (v95 == 1)
      {
        v105 = *(v0 + 1680);
        outlined init with copy of Date?(*(v0 + 1976), *(v0 + 1696), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        swift_storeEnumTagMultiPayload();
        v106 = v162;
      }

      else
      {
        v140 = v104;
        v107 = *(v0 + 1720);
        v108 = *(v0 + 1704);
        v109 = *(v0 + 1672);
        v139 = IntelligenceFile.name.getter();
        v111 = v110;
        IntelligenceFile.attributes.getter();
        IntelligenceFile.Attributes.contentType.getter();
        v102(v107, v108);
        v112 = type metadata accessor for UTType();
        v113 = *(v112 - 8);
        v114 = (*(v113 + 48))(v109, 1, v112);
        v115 = *(v0 + 1672);
        if (v114 == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 1672), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v116 = 0;
          v117 = 0;
        }

        else
        {
          v116 = UTType.preferredMIMEType.getter();
          v117 = v118;
          (*(v113 + 8))(v115, v112);
        }

        v119 = *(v0 + 1696);
        v120 = *(v0 + 1680);
        *v119 = v139;
        v119[1] = v111;
        v119[2] = v116;
        v119[3] = v117;
        swift_storeEnumTagMultiPayload();
        v106 = v162;
        v104 = v140;
      }

      v121 = *(v0 + 1760);
      v122 = *(v0 + 1752);
      v123 = *(v0 + 1736);
      v124 = *(v0 + 1696);
      v125 = *(v0 + 1656);
      v126 = *(v0 + 1496);
      v127 = *(v0 + 1488);
      *v121 = v22;
      *(v121 + 8) = v144;
      *(v121 + 16) = v143;
      *(v121 + 24) = v142;
      *(v121 + 28) = v104;
      *(v121 + 32) = v141 & 1;
      outlined init with take of SelectedContent(v124, v121 + *(v122 + 28), type metadata accessor for UploadableMedia.Source);
      outlined init with copy of ModelOrchestrator(v126 + 40, v0 + 968);
      outlined init with copy of ScreenContent(v121, v125, type metadata accessor for UploadableImageData);
      v128 = type metadata accessor for UploadableMedia(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v128 - 8) + 56))(v125, 0, 1, v128);
      v129 = *(v0 + 128);
      *(v0 + 520) = *(v0 + 112);
      *(v0 + 536) = v129;
      *(v0 + 552) = *(v0 + 144);
      v130 = *(v0 + 64);
      *(v0 + 456) = *(v0 + 48);
      *(v0 + 472) = v130;
      v131 = *(v0 + 96);
      *(v0 + 488) = *(v0 + 80);
      *(v0 + 504) = v131;
      v132 = *(v0 + 32);
      *(v0 + 424) = *(v0 + 16);
      *(v0 + 440) = v132;
      outlined init with copy of Date?(v127, v123, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v133 = v145(v123, 1, v106);
      v134 = *(v0 + 1736);
      if (v133 == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v0 + 1736), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
        v135 = 0;
        v136 = 0;
      }

      else
      {
        v135 = *(v134 + 24);
        v136 = *(v134 + 32);

        outlined destroy of DocumentInfo(v134, type metadata accessor for ImageInfo);
      }

      *(v0 + 2392) = v136;
      v137 = swift_task_alloc();
      *(v0 + 2400) = v137;
      *v137 = v0;
      v137[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
      v42 = *(v0 + 1816);
      v43 = *(v0 + 1656);
      v44 = *(v0 + 1472);
      v45 = *(v0 + 1464);
      v46 = *(v0 + 1456);
      v161 = v136;
      v47 = v0 + 424;
      v82 = v135;
      goto LABEL_40;
    }
  }

  v30 = *(v0 + 1864);
  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
  {
LABEL_20:

    goto LABEL_21;
  }

  if ((v21 & 1) == 0)
  {
LABEL_28:

    goto LABEL_29;
  }

  v48 = *(v0 + 1488);
  v49 = type metadata accessor for ImageInfo(0);
  LODWORD(v48) = (*(*(v49 - 8) + 48))(v48, 1, v49);

  if (v48 == 1)
  {
LABEL_21:
    v31 = *(v0 + 2224) + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v32 = *v31;
    v33 = *(v31 + 4);
    *v31 = 4;
    *(v31 + 4) = 0;
    if ((v33 & 1) == 0 && v32 == 6)
    {
      *v31 = 6;
    }

    v34 = *(v0 + 1648);
    v35 = *(v0 + 1496);
    v36 = type metadata accessor for UploadableMedia(0);
    (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
    v37 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v37;
    *(v0 + 416) = *(v0 + 144);
    v38 = *(v0 + 64);
    *(v0 + 320) = *(v0 + 48);
    *(v0 + 336) = v38;
    v39 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v39;
    v40 = *(v0 + 32);
    *(v0 + 288) = *(v0 + 16);
    *(v0 + 304) = v40;
    v41 = swift_task_alloc();
    *(v0 + 2416) = v41;
    *v41 = v0;
    v41[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v42 = *(v0 + 1808);
    v43 = *(v0 + 1648);
    v44 = *(v0 + 1472);
    v45 = *(v0 + 1464);
    v46 = *(v0 + 1456);
    v161 = 0;
    v47 = v0 + 288;
    goto LABEL_39;
  }

LABEL_29:
  v50 = *(v0 + 2224) + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
  swift_beginAccess();
  v51 = *v50;
  v52 = *(v50 + 4);
  *v50 = 2;
  *(v50 + 4) = 0;
  if ((v52 & 1) == 0 && v51 == 6)
  {
    *v50 = 6;
  }

  v53 = *(v0 + 1330);
  v54 = *(v0 + 2168);
  (*(v0 + 2160))(*(v0 + 2104), *(v0 + 2120), *(v0 + 2088));
  if (v53 == 1)
  {
    v55 = *(v0 + 1680);
    outlined init with copy of Date?(*(v0 + 1976), *(v0 + 1688), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v56 = *(v0 + 2216);
    v57 = *(v0 + 2208);
    v58 = *(v0 + 1664);
    v59 = (*(v0 + 1480) + *(*(v0 + 2176) + 24));
    v61 = *v59;
    v60 = v59[1];

    UTType.init(_:)();
    v62 = type metadata accessor for UTType();
    v63 = *(v62 - 8);
    v64 = (*(v63 + 48))(v58, 1, v62);
    v65 = *(v0 + 1664);
    if (v64 == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 1664), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      v66 = 0;
      v67 = 0;
    }

    else
    {
      v66 = UTType.preferredMIMEType.getter();
      v67 = v68;
      (*(v63 + 8))(v65, v62);
    }

    v69 = *(v0 + 1688);
    v70 = *(v0 + 1680);
    *v69 = v61;
    v69[1] = v60;
    v69[2] = v66;
    v69[3] = v67;
  }

  swift_storeEnumTagMultiPayload();
  v71 = *(v0 + 1688);
  v72 = *(v0 + 1640);
  v73 = *(v0 + 1632);
  v74 = *(v0 + 1624);
  v75 = *(v0 + 1496);
  (*(*(v0 + 2096) + 32))(v73, *(v0 + 2104), *(v0 + 2088));
  outlined init with take of SelectedContent(v71, v73 + *(v74 + 20), type metadata accessor for UploadableMedia.Source);
  outlined init with copy of ScreenContent(v73, v72, type metadata accessor for UploadableDocumentData);
  v76 = type metadata accessor for UploadableMedia(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v76 - 8) + 56))(v72, 0, 1, v76);
  v77 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  v78 = *(v0 + 128);
  *(v0 + 248) = *(v0 + 112);
  *(v0 + 264) = v78;
  v79 = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  v80 = *(v0 + 64);
  *(v0 + 184) = *(v0 + 48);
  *(v0 + 200) = v80;
  *(v0 + 216) = v77;
  *(v0 + 280) = *(v0 + 144);
  *(v0 + 152) = v79;
  v81 = swift_task_alloc();
  *(v0 + 2432) = v81;
  *v81 = v0;
  v81[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  v42 = *(v0 + 1800);
  v43 = *(v0 + 1640);
  v44 = *(v0 + 1472);
  v45 = *(v0 + 1464);
  v46 = *(v0 + 1456);
  v161 = 0;
  v47 = v0 + 152;
LABEL_39:
  v82 = 0;
LABEL_40:

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v42, v46, v45, v44, v43, v47, 0, v82);
}

{
  v81 = v0;
  v1 = v0[273];
  v2 = v0[267];

  v3 = v0[179];

  outlined destroy of IntentCallbackManager((v0 + 2));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v80[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v80);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v80);
    _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s User cancelled", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v7, -1, -1);
    MEMORY[0x253057F40](v6, -1, -1);
  }

  v61 = v0[295];
  v63 = v0[285];
  v8 = v0[280];
  v9 = v0[279];
  v10 = v0[278];
  v11 = v0[275];
  v75 = v0[265];
  v77 = v0[274];
  v71 = v0[262];
  v73 = v0[261];
  v12 = v0[259];
  v67 = v0[258];
  v69 = v0[260];
  v65 = v0[247];
  v59 = v0[244];
  v13 = v0[242];
  v14 = v0[241];
  v15 = v0[181];
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  SELFUtils.recordRequestCanceled()();
  v79 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v79, v9, v8, v15);

  (*(v13 + 8))(v59, v14);
  v16 = v0[180];

  outlined destroy of OnScreenContent.Document?(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v12 + 8))(v69, v67);
  v77(v75, v73);
  v17 = v0[265];
  v18 = v0[264];
  v19 = v0[263];
  v20 = v0[260];
  v21 = v0[257];
  v22 = v0[256];
  v23 = v0[255];
  v24 = v0[254];
  v25 = v0[253];
  v26 = v0[252];
  v29 = v0[249];
  v30 = v0[248];
  v31 = v0[247];
  v32 = v0[246];
  v33 = v0[245];
  v34 = v0[244];
  v35 = v0[243];
  v36 = v0[240];
  v37 = v0[237];
  v38 = v0[236];
  v39 = v0[233];
  v40 = v0[230];
  v41 = v0[229];
  v42 = v0[228];
  v43 = v0[227];
  v44 = v0[226];
  v45 = v0[225];
  v46 = v0[224];
  v47 = v0[223];
  v48 = v0[222];
  v49 = v0[220];
  v50 = v0[218];
  v51 = v0[217];
  v52 = v0[216];
  v53 = v0[215];
  v54 = v0[212];
  v55 = v0[211];
  v56 = v0[209];
  v57 = v0[208];
  v58 = v0[207];
  v60 = v0[206];
  v62 = v0[205];
  v64 = v0[204];
  v66 = v0[202];
  v68 = v0[199];
  v70 = v0[196];
  v72 = v0[195];
  v74 = v0[194];
  v76 = v0[191];
  v78 = v0[190];

  v27 = v0[1];

  return v27();
}

{
  v2 = *v1;
  v3 = *(*v1 + 2400);
  v14 = *v1;
  *(*v1 + 2408) = v0;

  if (v0)
  {
    v4 = v2[299];
    v5 = v2[297];
    v6 = v2[280];
    v7 = v2[207];

    outlined destroy of OnScreenContent.Document?(v7, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    outlined destroy of ModelOrchestrator((v2 + 121));
    v8 = v2[269];
    v9 = v2[268];
    v10 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v11 = v2[299];
    v12 = v2[207];

    outlined destroy of OnScreenContent.Document?(v12, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    outlined destroy of ModelOrchestrator((v2 + 121));
    v8 = v2[269];
    v9 = v2[268];
    v10 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v199 = v0;
  v1 = *(v0 + 2136);
  v2 = *(v0 + 1760);

  outlined destroy of DocumentInfo(v2, type metadata accessor for UploadableImageData);
  v3 = *(v0 + 2184);
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1792);
  outlined init with take of SelectedContent(*(v0 + 1816), v4, type metadata accessor for ModelResponse);
  outlined init with copy of ScreenContent(v4, v5, type metadata accessor for ModelResponse);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1792);
  if (v8)
  {
    v10 = *(v0 + 1784);
    v11 = *(v0 + 1768);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v193[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v193);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v193);
    *(v12 + 22) = 2080;
    outlined init with copy of ScreenContent(v9, v10, type metadata accessor for ModelResponse);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    outlined destroy of DocumentInfo(v9, type metadata accessor for ModelResponse);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v193);

    *(v12 + 24) = v17;
    _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s gms response: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v13, -1, -1);
    MEMORY[0x253057F40](v12, -1, -1);
  }

  else
  {

    outlined destroy of DocumentInfo(v9, type metadata accessor for ModelResponse);
  }

  v18 = *(v0 + 2376);
  v19 = *(v0 + 2368);
  v20 = *(v0 + 2288);
  v21 = *(v0 + 2240);
  partnerName = *(v0 + 2232);
  partnerName_8 = *(v0 + 1960);
  v22 = *(v0 + 1776);
  v23 = *(v0 + 1768);
  v24 = *(v0 + 1616);
  v168 = *(v0 + 1824);
  v25 = *(v0 + 1608);
  v177 = *(v0 + 1600);
  v182 = *(v0 + 1592);
  v26 = *(v0 + 1576);
  v27 = *(v0 + 1472);
  v28 = *(v0 + 128);
  v193[6] = *(v0 + 112);
  v193[7] = v28;
  v194 = *(v0 + 144);
  v29 = *(v0 + 64);
  v193[2] = *(v0 + 48);
  v193[3] = v29;
  v30 = *(v0 + 96);
  v193[4] = *(v0 + 80);
  v193[5] = v30;
  v31 = *(v0 + 32);
  v193[0] = *(v0 + 16);
  v193[1] = v31;
  v195 = v19;
  v196 = v18;
  v197 = 0;
  v198 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v195);
  outlined consume of GenerativeAssistantProgressLevel(v195, v196, v197, v198);
  outlined init with copy of ScreenContent(v168, v22, type metadata accessor for ModelResponse);
  LOBYTE(v168) = *(v27 + 41);
  (*(v25 + 16))(v24, v27 + *(v20 + 32), v177);
  LODWORD(v25) = *(v27 + *(v20 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v193[0]) = 44;

  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v33.value._countAndFlagsBits = partnerName;
  v33.value._object = v21;
  v34 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v193, v33, v32);

  *(v0 + 1088) = xmmword_24FE1ADF0;
  *(v0 + 1104) = 5;
  *(v0 + 1112) = v34;
  *(v0 + 1128) = partnerName;
  v173 = v21;
  *(v0 + 1136) = v21;
  outlined init with copy of DialogConfig(v0 + 1088, v0 + 1200);

  LOBYTE(v193[0]) = v168;
  v169 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v193, v24, v0 + 1088, v25);
  outlined destroy of DialogConfig(v0 + 1088);
  v35 = (v22 + v23[14]);
  v36 = v35[1];
  v140 = *v35;
  v132 = v36;
  v134 = v22[4];
  v37 = *v22;
  v38 = MEMORY[0x277D84F90];
  if (*(v22 + v23[9]))
  {
    v38 = *(v22 + v23[9]);
  }

  v142 = v38;
  outlined init with copy of Date?(v22 + v23[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v39 = v22[2];
  v160 = v22[1];
  v152 = *(v22 + v23[10]);
  v156 = *(v22 + v23[11]);
  v40 = (v22 + v23[12]);
  v41 = *v40;
  v42 = v40[1];
  v43 = (v22 + v23[13]);
  v145 = v41;
  v148 = *v43;
  v137 = v43[1];
  *(v0 + 1280) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 1288) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 1256));

  v44 = v37;

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v45 = (v182 + v26[14]);
  swift_initStaticObject();
  LOBYTE(v193[0]) = 49;
  v46 = MEMORY[0x277D84F90];
  v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v48 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v193, 0, v47);

  *v45 = v48;
  v49 = v44;
  *v182 = v140;
  *(v182 + 8) = v132;
  *(v182 + 16) = v44;
  *(v182 + 24) = v169;
  *(v182 + 32) = 64;
  *(v182 + 40) = v134;
  *(v182 + 48) = v46;
  *(v182 + v26[15]) = v142;
  *(v182 + v26[12]) = 0;
  v50 = (v182 + v26[13]);
  *v50 = partnerName;
  v50[1] = v173;
  outlined init with copy of Date?(partnerName_8, v182 + v26[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v51 = (v182 + v26[11]);
  *v51 = v160;
  v51[1] = v39;
  *(v182 + v26[16]) = v152;
  *(v182 + v26[17]) = v156;
  v52 = (v182 + v26[18]);
  *v52 = v145;
  v52[1] = v42;
  v53 = (v182 + v26[19]);
  *v53 = v148;
  v53[1] = v137;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1256, v182 + v26[21]);
  *(v182 + v26[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    partnerNameb = *(v0 + 2088);
    partnerName_8b = *(v0 + 2120);
    v179 = *(v0 + 2080);
    v183 = *(v0 + 2096);
    v80 = *(v0 + 2072);
    v170 = *(v0 + 1976);
    v174 = *(v0 + 2064);
    v81 = *(v0 + 1960);
    v82 = *(v0 + 1936);
    v161 = *(v0 + 1928);
    v165 = *(v0 + 1952);
    v83 = *(v0 + 1856);
    v153 = *(v0 + 1848);
    v157 = *(v0 + 1864);
    v149 = *(v0 + 1840);
    v84 = *(v0 + 1824);
    v85 = *(v0 + 1776);
    v86 = *(v0 + 1616);
    v87 = *(v0 + 1608);
    v88 = *(v0 + 1600);

    outlined destroy of OnScreenContent.Document?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v87 + 8))(v86, v88);
    outlined destroy of DocumentInfo(v85, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v84, type metadata accessor for ModelResponse);
    outlined destroy of OnScreenContent.Document?(v149, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    (*(v83 + 8))(v157, v153);
    (*(v82 + 8))(v165, v161);
    v89 = *(v0 + 1440);

    outlined destroy of OnScreenContent.Document?(v170, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v80 + 8))(v179, v174);
LABEL_23:
    (*(v183 + 8))(partnerName_8b, partnerNameb);
    v99 = *(v0 + 1592);
    outlined init with copy of ScreenContent(v99, *(v0 + 1448), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1256));
    outlined destroy of DocumentInfo(v99, type metadata accessor for GeneratedResponse);
    v100 = *(v0 + 2120);
    v101 = *(v0 + 2112);
    v102 = *(v0 + 2104);
    v103 = *(v0 + 2080);
    v104 = *(v0 + 2056);
    v105 = *(v0 + 2048);
    v106 = *(v0 + 2040);
    v107 = *(v0 + 2032);
    v108 = *(v0 + 2024);
    v109 = *(v0 + 2016);
    v111 = *(v0 + 1992);
    v112 = *(v0 + 1984);
    v113 = *(v0 + 1976);
    v114 = *(v0 + 1968);
    v115 = *(v0 + 1960);
    v116 = *(v0 + 1952);
    v117 = *(v0 + 1944);
    v118 = *(v0 + 1920);
    v119 = *(v0 + 1896);
    v120 = *(v0 + 1888);
    v121 = *(v0 + 1864);
    v122 = *(v0 + 1840);
    v123 = *(v0 + 1832);
    v124 = *(v0 + 1824);
    v125 = *(v0 + 1816);
    v126 = *(v0 + 1808);
    v127 = *(v0 + 1800);
    v128 = *(v0 + 1792);
    v129 = *(v0 + 1784);
    v130 = *(v0 + 1776);
    v131 = *(v0 + 1760);
    v133 = *(v0 + 1744);
    v135 = *(v0 + 1736);
    v136 = *(v0 + 1728);
    v138 = *(v0 + 1720);
    v139 = *(v0 + 1696);
    v141 = *(v0 + 1688);
    v144 = *(v0 + 1672);
    v147 = *(v0 + 1664);
    v151 = *(v0 + 1656);
    v155 = *(v0 + 1648);
    v159 = *(v0 + 1640);
    v163 = *(v0 + 1632);
    v167 = *(v0 + 1616);
    v172 = *(v0 + 1592);
    v176 = *(v0 + 1568);
    v181 = *(v0 + 1560);
    v184 = *(v0 + 1552);
    partnerNamec = *(v0 + 1528);
    partnerName_8c = *(v0 + 1520);

    v110 = *(v0 + 8);

    return v110();
  }

  v54 = *(v0 + 1592);
  v55 = *(v0 + 1544);
  v56 = *(v0 + 1536);
  v178 = *(v0 + 1520);
  partnerName_8a = *(v0 + 1512);
  v57._countAndFlagsBits = v140;
  v57._object = v132;
  v58 = GeneratedResponse.updateText(_:)(v57);

  *v54 = v58._countAndFlagsBits;
  *(v182 + 8) = v58._object;
  v59 = v44[2];
  v60 = (v55 + 56);
  v61 = (v55 + 48);

  v63 = 0;
  partnerNamea = v49;
  while (v63 == v59)
  {
    v64 = 1;
    v63 = v59;
LABEL_12:
    v69 = *(v0 + 1568);
    v70 = *(v0 + 1560);
    v71 = *(v0 + 1536);
    (*v60)(v70, v64, 1, v71);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v70, v69, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v61)(v69, 1, v71) == 1)
    {
      v90 = *(v0 + 2280);
      partnerNameb = *(v0 + 2088);
      partnerName_8b = *(v0 + 2120);
      v180 = *(v0 + 2080);
      v183 = *(v0 + 2096);
      v171 = *(v0 + 2072);
      v175 = *(v0 + 2064);
      v91 = *(v0 + 1960);
      v162 = *(v0 + 1952);
      v166 = *(v0 + 1976);
      v92 = *(v0 + 1936);
      v154 = *(v0 + 1864);
      v158 = *(v0 + 1928);
      v93 = *(v0 + 1856);
      v146 = *(v0 + 1840);
      v150 = *(v0 + 1848);
      v143 = *(v0 + 1824);
      v94 = *(v0 + 1776);
      v95 = *(v0 + 1616);
      v96 = *(v0 + 1608);
      v97 = *(v0 + 1600);

      outlined destroy of OnScreenContent.Document?(v91, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v96 + 8))(v95, v97);
      outlined destroy of DocumentInfo(v94, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v143, type metadata accessor for ModelResponse);
      outlined destroy of OnScreenContent.Document?(v146, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
      (*(v93 + 8))(v154, v150);
      (*(v92 + 8))(v162, v158);
      v98 = *(v0 + 1440);

      outlined destroy of OnScreenContent.Document?(v166, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v171 + 8))(v180, v175);
      goto LABEL_23;
    }

    v72 = *(v0 + 1568);
    v73 = *(v0 + 1504);
    v74 = *v72;
    outlined init with take of SelectedContent(v72 + *(v56 + 48), *(v0 + 1528), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v76 = *(v0 + 1528);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v76, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v77 = *(v0 + 1520);
      v164 = *(v0 + 1504);
      outlined destroy of DocumentInfo(v76, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v77 = v58._countAndFlagsBits;
      *(v178 + 8) = v58._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v78 = partnerNamea;
        if ((v74 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v78 = result;
        if ((v74 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v74 >= v78[2])
      {
        goto LABEL_27;
      }

      v79 = v78;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1520), v78 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v74);
      partnerNamea = v79;
      *(v182 + 16) = v79;
    }
  }

  if (v63 < v49[2])
  {
    v65 = *(v0 + 1560);
    v66 = *(v0 + 1552);
    v67 = v49 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v63;
    v68 = *(v56 + 48);
    *v66 = v63;
    outlined init with copy of ScreenContent(v67, v66 + v68, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v66, v65, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v64 = 0;
    ++v63;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v2 = *v1;
  v3 = (*v1)[302];
  v11 = *v1;
  (*v1)[303] = v0;

  if (v0)
  {
    v4 = v2[297];
    v5 = v2[280];
    v6 = v2[206];

    outlined destroy of OnScreenContent.Document?(v6, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v7 = v2[269];
    v8 = v2[268];
    v9 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[206], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v7 = v2[269];
    v8 = v2[268];
    v9 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v198 = v0;
  v1 = *(v0 + 2136);

  v2 = *(v0 + 2184);
  v3 = *(v0 + 1824);
  v4 = *(v0 + 1792);
  outlined init with take of SelectedContent(*(v0 + 1808), v3, type metadata accessor for ModelResponse);
  outlined init with copy of ScreenContent(v3, v4, type metadata accessor for ModelResponse);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1792);
  if (v7)
  {
    v9 = *(v0 + 1784);
    v10 = *(v0 + 1768);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v192[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v192);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v192);
    *(v11 + 22) = 2080;
    outlined init with copy of ScreenContent(v8, v9, type metadata accessor for ModelResponse);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    outlined destroy of DocumentInfo(v8, type metadata accessor for ModelResponse);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v192);

    *(v11 + 24) = v16;
    _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s gms response: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v12, -1, -1);
    MEMORY[0x253057F40](v11, -1, -1);
  }

  else
  {

    outlined destroy of DocumentInfo(v8, type metadata accessor for ModelResponse);
  }

  v17 = *(v0 + 2376);
  v18 = *(v0 + 2368);
  v19 = *(v0 + 2288);
  v20 = *(v0 + 2240);
  partnerName = *(v0 + 2232);
  partnerName_8 = *(v0 + 1960);
  v21 = *(v0 + 1776);
  v22 = *(v0 + 1768);
  v23 = *(v0 + 1616);
  v167 = *(v0 + 1824);
  v24 = *(v0 + 1608);
  v176 = *(v0 + 1600);
  v181 = *(v0 + 1592);
  v25 = *(v0 + 1576);
  v26 = *(v0 + 1472);
  v27 = *(v0 + 128);
  v192[6] = *(v0 + 112);
  v192[7] = v27;
  v193 = *(v0 + 144);
  v28 = *(v0 + 64);
  v192[2] = *(v0 + 48);
  v192[3] = v28;
  v29 = *(v0 + 96);
  v192[4] = *(v0 + 80);
  v192[5] = v29;
  v30 = *(v0 + 32);
  v192[0] = *(v0 + 16);
  v192[1] = v30;
  v194 = v18;
  v195 = v17;
  v196 = 0;
  v197 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v194);
  outlined consume of GenerativeAssistantProgressLevel(v194, v195, v196, v197);
  outlined init with copy of ScreenContent(v167, v21, type metadata accessor for ModelResponse);
  LOBYTE(v167) = *(v26 + 41);
  (*(v24 + 16))(v23, v26 + *(v19 + 32), v176);
  LODWORD(v24) = *(v26 + *(v19 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v192[0]) = 44;

  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v32.value._countAndFlagsBits = partnerName;
  v32.value._object = v20;
  v33 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v192, v32, v31);

  *(v0 + 1088) = xmmword_24FE1ADF0;
  *(v0 + 1104) = 5;
  *(v0 + 1112) = v33;
  *(v0 + 1128) = partnerName;
  v172 = v20;
  *(v0 + 1136) = v20;
  outlined init with copy of DialogConfig(v0 + 1088, v0 + 1200);

  LOBYTE(v192[0]) = v167;
  v168 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v192, v23, v0 + 1088, v24);
  outlined destroy of DialogConfig(v0 + 1088);
  v34 = (v21 + v22[14]);
  v35 = v34[1];
  v139 = *v34;
  v131 = v35;
  v133 = v21[4];
  v36 = *v21;
  v37 = MEMORY[0x277D84F90];
  if (*(v21 + v22[9]))
  {
    v37 = *(v21 + v22[9]);
  }

  v141 = v37;
  outlined init with copy of Date?(v21 + v22[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v38 = v21[2];
  v159 = v21[1];
  v151 = *(v21 + v22[10]);
  v155 = *(v21 + v22[11]);
  v39 = (v21 + v22[12]);
  v40 = *v39;
  v41 = v39[1];
  v42 = (v21 + v22[13]);
  v144 = v40;
  v147 = *v42;
  v136 = v42[1];
  *(v0 + 1280) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 1288) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 1256));

  v43 = v36;

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v44 = (v181 + v25[14]);
  swift_initStaticObject();
  LOBYTE(v192[0]) = 49;
  v45 = MEMORY[0x277D84F90];
  v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v47 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v192, 0, v46);

  *v44 = v47;
  v48 = v43;
  *v181 = v139;
  *(v181 + 8) = v131;
  *(v181 + 16) = v43;
  *(v181 + 24) = v168;
  *(v181 + 32) = 64;
  *(v181 + 40) = v133;
  *(v181 + 48) = v45;
  *(v181 + v25[15]) = v141;
  *(v181 + v25[12]) = 0;
  v49 = (v181 + v25[13]);
  *v49 = partnerName;
  v49[1] = v172;
  outlined init with copy of Date?(partnerName_8, v181 + v25[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v50 = (v181 + v25[11]);
  *v50 = v159;
  v50[1] = v38;
  *(v181 + v25[16]) = v151;
  *(v181 + v25[17]) = v155;
  v51 = (v181 + v25[18]);
  *v51 = v144;
  v51[1] = v41;
  v52 = (v181 + v25[19]);
  *v52 = v147;
  v52[1] = v136;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1256, v181 + v25[21]);
  *(v181 + v25[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    partnerNameb = *(v0 + 2088);
    partnerName_8b = *(v0 + 2120);
    v178 = *(v0 + 2080);
    v182 = *(v0 + 2096);
    v79 = *(v0 + 2072);
    v169 = *(v0 + 1976);
    v173 = *(v0 + 2064);
    v80 = *(v0 + 1960);
    v81 = *(v0 + 1936);
    v160 = *(v0 + 1928);
    v164 = *(v0 + 1952);
    v82 = *(v0 + 1856);
    v152 = *(v0 + 1848);
    v156 = *(v0 + 1864);
    v148 = *(v0 + 1840);
    v83 = *(v0 + 1824);
    v84 = *(v0 + 1776);
    v85 = *(v0 + 1616);
    v86 = *(v0 + 1608);
    v87 = *(v0 + 1600);

    outlined destroy of OnScreenContent.Document?(v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v86 + 8))(v85, v87);
    outlined destroy of DocumentInfo(v84, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v83, type metadata accessor for ModelResponse);
    outlined destroy of OnScreenContent.Document?(v148, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    (*(v82 + 8))(v156, v152);
    (*(v81 + 8))(v164, v160);
    v88 = *(v0 + 1440);

    outlined destroy of OnScreenContent.Document?(v169, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v79 + 8))(v178, v173);
LABEL_23:
    (*(v182 + 8))(partnerName_8b, partnerNameb);
    v98 = *(v0 + 1592);
    outlined init with copy of ScreenContent(v98, *(v0 + 1448), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1256));
    outlined destroy of DocumentInfo(v98, type metadata accessor for GeneratedResponse);
    v99 = *(v0 + 2120);
    v100 = *(v0 + 2112);
    v101 = *(v0 + 2104);
    v102 = *(v0 + 2080);
    v103 = *(v0 + 2056);
    v104 = *(v0 + 2048);
    v105 = *(v0 + 2040);
    v106 = *(v0 + 2032);
    v107 = *(v0 + 2024);
    v108 = *(v0 + 2016);
    v110 = *(v0 + 1992);
    v111 = *(v0 + 1984);
    v112 = *(v0 + 1976);
    v113 = *(v0 + 1968);
    v114 = *(v0 + 1960);
    v115 = *(v0 + 1952);
    v116 = *(v0 + 1944);
    v117 = *(v0 + 1920);
    v118 = *(v0 + 1896);
    v119 = *(v0 + 1888);
    v120 = *(v0 + 1864);
    v121 = *(v0 + 1840);
    v122 = *(v0 + 1832);
    v123 = *(v0 + 1824);
    v124 = *(v0 + 1816);
    v125 = *(v0 + 1808);
    v126 = *(v0 + 1800);
    v127 = *(v0 + 1792);
    v128 = *(v0 + 1784);
    v129 = *(v0 + 1776);
    v130 = *(v0 + 1760);
    v132 = *(v0 + 1744);
    v134 = *(v0 + 1736);
    v135 = *(v0 + 1728);
    v137 = *(v0 + 1720);
    v138 = *(v0 + 1696);
    v140 = *(v0 + 1688);
    v143 = *(v0 + 1672);
    v146 = *(v0 + 1664);
    v150 = *(v0 + 1656);
    v154 = *(v0 + 1648);
    v158 = *(v0 + 1640);
    v162 = *(v0 + 1632);
    v166 = *(v0 + 1616);
    v171 = *(v0 + 1592);
    v175 = *(v0 + 1568);
    v180 = *(v0 + 1560);
    v183 = *(v0 + 1552);
    partnerNamec = *(v0 + 1528);
    partnerName_8c = *(v0 + 1520);

    v109 = *(v0 + 8);

    return v109();
  }

  v53 = *(v0 + 1592);
  v54 = *(v0 + 1544);
  v55 = *(v0 + 1536);
  v177 = *(v0 + 1520);
  partnerName_8a = *(v0 + 1512);
  v56._countAndFlagsBits = v139;
  v56._object = v131;
  v57 = GeneratedResponse.updateText(_:)(v56);

  *v53 = v57._countAndFlagsBits;
  *(v181 + 8) = v57._object;
  v58 = v43[2];
  v59 = (v54 + 56);
  v60 = (v54 + 48);

  v62 = 0;
  partnerNamea = v48;
  while (v62 == v58)
  {
    v63 = 1;
    v62 = v58;
LABEL_12:
    v68 = *(v0 + 1568);
    v69 = *(v0 + 1560);
    v70 = *(v0 + 1536);
    (*v59)(v69, v63, 1, v70);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v69, v68, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v60)(v68, 1, v70) == 1)
    {
      v89 = *(v0 + 2280);
      partnerNameb = *(v0 + 2088);
      partnerName_8b = *(v0 + 2120);
      v179 = *(v0 + 2080);
      v182 = *(v0 + 2096);
      v170 = *(v0 + 2072);
      v174 = *(v0 + 2064);
      v90 = *(v0 + 1960);
      v161 = *(v0 + 1952);
      v165 = *(v0 + 1976);
      v91 = *(v0 + 1936);
      v153 = *(v0 + 1864);
      v157 = *(v0 + 1928);
      v92 = *(v0 + 1856);
      v145 = *(v0 + 1840);
      v149 = *(v0 + 1848);
      v142 = *(v0 + 1824);
      v93 = *(v0 + 1776);
      v94 = *(v0 + 1616);
      v95 = *(v0 + 1608);
      v96 = *(v0 + 1600);

      outlined destroy of OnScreenContent.Document?(v90, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v95 + 8))(v94, v96);
      outlined destroy of DocumentInfo(v93, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v142, type metadata accessor for ModelResponse);
      outlined destroy of OnScreenContent.Document?(v145, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
      (*(v92 + 8))(v153, v149);
      (*(v91 + 8))(v161, v157);
      v97 = *(v0 + 1440);

      outlined destroy of OnScreenContent.Document?(v165, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v170 + 8))(v179, v174);
      goto LABEL_23;
    }

    v71 = *(v0 + 1568);
    v72 = *(v0 + 1504);
    v73 = *v71;
    outlined init with take of SelectedContent(v71 + *(v55 + 48), *(v0 + 1528), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v75 = *(v0 + 1528);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v75, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v76 = *(v0 + 1520);
      v163 = *(v0 + 1504);
      outlined destroy of DocumentInfo(v75, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v76 = v57._countAndFlagsBits;
      *(v177 + 8) = v57._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v77 = partnerNamea;
        if ((v73 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v77 = result;
        if ((v73 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v73 >= v77[2])
      {
        goto LABEL_27;
      }

      v78 = v77;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1520), v77 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v73);
      partnerNamea = v78;
      *(v181 + 16) = v78;
    }
  }

  if (v62 < v48[2])
  {
    v64 = *(v0 + 1560);
    v65 = *(v0 + 1552);
    v66 = v48 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v62;
    v67 = *(v55 + 48);
    *v65 = v62;
    outlined init with copy of ScreenContent(v66, v65 + v67, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v65, v64, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v63 = 0;
    ++v62;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v2 = *v1;
  v3 = (*v1)[304];
  v11 = *v1;
  (*v1)[305] = v0;

  if (v0)
  {
    v4 = v2[297];
    v5 = v2[280];
    v6 = v2[205];

    outlined destroy of OnScreenContent.Document?(v6, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v7 = v2[269];
    v8 = v2[268];
    v9 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[205], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v7 = v2[269];
    v8 = v2[268];
    v9 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v199 = v0;
  v1 = *(v0 + 2136);
  v2 = *(v0 + 1632);

  outlined destroy of DocumentInfo(v2, type metadata accessor for UploadableDocumentData);
  v3 = *(v0 + 2184);
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1792);
  outlined init with take of SelectedContent(*(v0 + 1800), v4, type metadata accessor for ModelResponse);
  outlined init with copy of ScreenContent(v4, v5, type metadata accessor for ModelResponse);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1792);
  if (v8)
  {
    v10 = *(v0 + 1784);
    v11 = *(v0 + 1768);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v193[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v193);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v193);
    *(v12 + 22) = 2080;
    outlined init with copy of ScreenContent(v9, v10, type metadata accessor for ModelResponse);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    outlined destroy of DocumentInfo(v9, type metadata accessor for ModelResponse);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v193);

    *(v12 + 24) = v17;
    _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s gms response: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v13, -1, -1);
    MEMORY[0x253057F40](v12, -1, -1);
  }

  else
  {

    outlined destroy of DocumentInfo(v9, type metadata accessor for ModelResponse);
  }

  v18 = *(v0 + 2376);
  v19 = *(v0 + 2368);
  v20 = *(v0 + 2288);
  v21 = *(v0 + 2240);
  partnerName = *(v0 + 2232);
  partnerName_8 = *(v0 + 1960);
  v22 = *(v0 + 1776);
  v23 = *(v0 + 1768);
  v24 = *(v0 + 1616);
  v168 = *(v0 + 1824);
  v25 = *(v0 + 1608);
  v177 = *(v0 + 1600);
  v182 = *(v0 + 1592);
  v26 = *(v0 + 1576);
  v27 = *(v0 + 1472);
  v28 = *(v0 + 128);
  v193[6] = *(v0 + 112);
  v193[7] = v28;
  v194 = *(v0 + 144);
  v29 = *(v0 + 64);
  v193[2] = *(v0 + 48);
  v193[3] = v29;
  v30 = *(v0 + 96);
  v193[4] = *(v0 + 80);
  v193[5] = v30;
  v31 = *(v0 + 32);
  v193[0] = *(v0 + 16);
  v193[1] = v31;
  v195 = v19;
  v196 = v18;
  v197 = 0;
  v198 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v195);
  outlined consume of GenerativeAssistantProgressLevel(v195, v196, v197, v198);
  outlined init with copy of ScreenContent(v168, v22, type metadata accessor for ModelResponse);
  LOBYTE(v168) = *(v27 + 41);
  (*(v25 + 16))(v24, v27 + *(v20 + 32), v177);
  LODWORD(v25) = *(v27 + *(v20 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v193[0]) = 44;

  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v33.value._countAndFlagsBits = partnerName;
  v33.value._object = v21;
  v34 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v193, v33, v32);

  *(v0 + 1088) = xmmword_24FE1ADF0;
  *(v0 + 1104) = 5;
  *(v0 + 1112) = v34;
  *(v0 + 1128) = partnerName;
  v173 = v21;
  *(v0 + 1136) = v21;
  outlined init with copy of DialogConfig(v0 + 1088, v0 + 1200);

  LOBYTE(v193[0]) = v168;
  v169 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v193, v24, v0 + 1088, v25);
  outlined destroy of DialogConfig(v0 + 1088);
  v35 = (v22 + v23[14]);
  v36 = v35[1];
  v140 = *v35;
  v132 = v36;
  v134 = v22[4];
  v37 = *v22;
  v38 = MEMORY[0x277D84F90];
  if (*(v22 + v23[9]))
  {
    v38 = *(v22 + v23[9]);
  }

  v142 = v38;
  outlined init with copy of Date?(v22 + v23[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v39 = v22[2];
  v160 = v22[1];
  v152 = *(v22 + v23[10]);
  v156 = *(v22 + v23[11]);
  v40 = (v22 + v23[12]);
  v41 = *v40;
  v42 = v40[1];
  v43 = (v22 + v23[13]);
  v145 = v41;
  v148 = *v43;
  v137 = v43[1];
  *(v0 + 1280) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 1288) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 1256));

  v44 = v37;

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v45 = (v182 + v26[14]);
  swift_initStaticObject();
  LOBYTE(v193[0]) = 49;
  v46 = MEMORY[0x277D84F90];
  v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v48 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v193, 0, v47);

  *v45 = v48;
  v49 = v44;
  *v182 = v140;
  *(v182 + 8) = v132;
  *(v182 + 16) = v44;
  *(v182 + 24) = v169;
  *(v182 + 32) = 64;
  *(v182 + 40) = v134;
  *(v182 + 48) = v46;
  *(v182 + v26[15]) = v142;
  *(v182 + v26[12]) = 0;
  v50 = (v182 + v26[13]);
  *v50 = partnerName;
  v50[1] = v173;
  outlined init with copy of Date?(partnerName_8, v182 + v26[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v51 = (v182 + v26[11]);
  *v51 = v160;
  v51[1] = v39;
  *(v182 + v26[16]) = v152;
  *(v182 + v26[17]) = v156;
  v52 = (v182 + v26[18]);
  *v52 = v145;
  v52[1] = v42;
  v53 = (v182 + v26[19]);
  *v53 = v148;
  v53[1] = v137;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1256, v182 + v26[21]);
  *(v182 + v26[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    partnerNameb = *(v0 + 2088);
    partnerName_8b = *(v0 + 2120);
    v179 = *(v0 + 2080);
    v183 = *(v0 + 2096);
    v80 = *(v0 + 2072);
    v170 = *(v0 + 1976);
    v174 = *(v0 + 2064);
    v81 = *(v0 + 1960);
    v82 = *(v0 + 1936);
    v161 = *(v0 + 1928);
    v165 = *(v0 + 1952);
    v83 = *(v0 + 1856);
    v153 = *(v0 + 1848);
    v157 = *(v0 + 1864);
    v149 = *(v0 + 1840);
    v84 = *(v0 + 1824);
    v85 = *(v0 + 1776);
    v86 = *(v0 + 1616);
    v87 = *(v0 + 1608);
    v88 = *(v0 + 1600);

    outlined destroy of OnScreenContent.Document?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v87 + 8))(v86, v88);
    outlined destroy of DocumentInfo(v85, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v84, type metadata accessor for ModelResponse);
    outlined destroy of OnScreenContent.Document?(v149, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    (*(v83 + 8))(v157, v153);
    (*(v82 + 8))(v165, v161);
    v89 = *(v0 + 1440);

    outlined destroy of OnScreenContent.Document?(v170, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v80 + 8))(v179, v174);
LABEL_23:
    (*(v183 + 8))(partnerName_8b, partnerNameb);
    v99 = *(v0 + 1592);
    outlined init with copy of ScreenContent(v99, *(v0 + 1448), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1256));
    outlined destroy of DocumentInfo(v99, type metadata accessor for GeneratedResponse);
    v100 = *(v0 + 2120);
    v101 = *(v0 + 2112);
    v102 = *(v0 + 2104);
    v103 = *(v0 + 2080);
    v104 = *(v0 + 2056);
    v105 = *(v0 + 2048);
    v106 = *(v0 + 2040);
    v107 = *(v0 + 2032);
    v108 = *(v0 + 2024);
    v109 = *(v0 + 2016);
    v111 = *(v0 + 1992);
    v112 = *(v0 + 1984);
    v113 = *(v0 + 1976);
    v114 = *(v0 + 1968);
    v115 = *(v0 + 1960);
    v116 = *(v0 + 1952);
    v117 = *(v0 + 1944);
    v118 = *(v0 + 1920);
    v119 = *(v0 + 1896);
    v120 = *(v0 + 1888);
    v121 = *(v0 + 1864);
    v122 = *(v0 + 1840);
    v123 = *(v0 + 1832);
    v124 = *(v0 + 1824);
    v125 = *(v0 + 1816);
    v126 = *(v0 + 1808);
    v127 = *(v0 + 1800);
    v128 = *(v0 + 1792);
    v129 = *(v0 + 1784);
    v130 = *(v0 + 1776);
    v131 = *(v0 + 1760);
    v133 = *(v0 + 1744);
    v135 = *(v0 + 1736);
    v136 = *(v0 + 1728);
    v138 = *(v0 + 1720);
    v139 = *(v0 + 1696);
    v141 = *(v0 + 1688);
    v144 = *(v0 + 1672);
    v147 = *(v0 + 1664);
    v151 = *(v0 + 1656);
    v155 = *(v0 + 1648);
    v159 = *(v0 + 1640);
    v163 = *(v0 + 1632);
    v167 = *(v0 + 1616);
    v172 = *(v0 + 1592);
    v176 = *(v0 + 1568);
    v181 = *(v0 + 1560);
    v184 = *(v0 + 1552);
    partnerNamec = *(v0 + 1528);
    partnerName_8c = *(v0 + 1520);

    v110 = *(v0 + 8);

    return v110();
  }

  v54 = *(v0 + 1592);
  v55 = *(v0 + 1544);
  v56 = *(v0 + 1536);
  v178 = *(v0 + 1520);
  partnerName_8a = *(v0 + 1512);
  v57._countAndFlagsBits = v140;
  v57._object = v132;
  v58 = GeneratedResponse.updateText(_:)(v57);

  *v54 = v58._countAndFlagsBits;
  *(v182 + 8) = v58._object;
  v59 = v44[2];
  v60 = (v55 + 56);
  v61 = (v55 + 48);

  v63 = 0;
  partnerNamea = v49;
  while (v63 == v59)
  {
    v64 = 1;
    v63 = v59;
LABEL_12:
    v69 = *(v0 + 1568);
    v70 = *(v0 + 1560);
    v71 = *(v0 + 1536);
    (*v60)(v70, v64, 1, v71);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v70, v69, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v61)(v69, 1, v71) == 1)
    {
      v90 = *(v0 + 2280);
      partnerNameb = *(v0 + 2088);
      partnerName_8b = *(v0 + 2120);
      v180 = *(v0 + 2080);
      v183 = *(v0 + 2096);
      v171 = *(v0 + 2072);
      v175 = *(v0 + 2064);
      v91 = *(v0 + 1960);
      v162 = *(v0 + 1952);
      v166 = *(v0 + 1976);
      v92 = *(v0 + 1936);
      v154 = *(v0 + 1864);
      v158 = *(v0 + 1928);
      v93 = *(v0 + 1856);
      v146 = *(v0 + 1840);
      v150 = *(v0 + 1848);
      v143 = *(v0 + 1824);
      v94 = *(v0 + 1776);
      v95 = *(v0 + 1616);
      v96 = *(v0 + 1608);
      v97 = *(v0 + 1600);

      outlined destroy of OnScreenContent.Document?(v91, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v96 + 8))(v95, v97);
      outlined destroy of DocumentInfo(v94, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v143, type metadata accessor for ModelResponse);
      outlined destroy of OnScreenContent.Document?(v146, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
      (*(v93 + 8))(v154, v150);
      (*(v92 + 8))(v162, v158);
      v98 = *(v0 + 1440);

      outlined destroy of OnScreenContent.Document?(v166, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v171 + 8))(v180, v175);
      goto LABEL_23;
    }

    v72 = *(v0 + 1568);
    v73 = *(v0 + 1504);
    v74 = *v72;
    outlined init with take of SelectedContent(v72 + *(v56 + 48), *(v0 + 1528), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v76 = *(v0 + 1528);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v76, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v77 = *(v0 + 1520);
      v164 = *(v0 + 1504);
      outlined destroy of DocumentInfo(v76, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v77 = v58._countAndFlagsBits;
      *(v178 + 8) = v58._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v78 = partnerNamea;
        if ((v74 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v78 = result;
        if ((v74 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v74 >= v78[2])
      {
        goto LABEL_27;
      }

      v79 = v78;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1520), v78 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v74);
      partnerNamea = v79;
      *(v182 + 16) = v79;
    }
  }

  if (v63 < v49[2])
  {
    v65 = *(v0 + 1560);
    v66 = *(v0 + 1552);
    v67 = v49 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v63;
    v68 = *(v56 + 48);
    *v66 = v63;
    outlined init with copy of ScreenContent(v67, v66 + v68, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v66, v65, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v64 = 0;
    ++v63;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = v0[285];
  v2 = v0[267];
  v69 = v0[265];
  v71 = v0[274];
  v65 = v0[262];
  v67 = v0[261];
  v63 = v0[260];
  v3 = v0[259];
  v59 = v0[298];
  v61 = v0[258];
  v55 = v0[244];
  v57 = v0[247];
  v4 = v0[242];
  v5 = v0[241];
  v6 = v0[233];
  v7 = v0[232];
  v8 = v0[231];
  v9 = v0[230];
  v10 = v0[220];

  outlined destroy of DocumentInfo(v10, type metadata accessor for UploadableImageData);
  outlined destroy of OnScreenContent.Document?(v9, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v55, v5);

  outlined destroy of OnScreenContent.Document?(v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v3 + 8))(v63, v61);
  v71(v69, v67);
  v72 = v0[301];
  v11 = v0[265];
  v12 = v0[264];
  v13 = v0[263];
  v14 = v0[260];
  v15 = v0[257];
  v16 = v0[256];
  v17 = v0[255];
  v18 = v0[254];
  v19 = v0[253];
  v20 = v0[252];
  v23 = v0[249];
  v24 = v0[248];
  v25 = v0[247];
  v26 = v0[246];
  v27 = v0[245];
  v28 = v0[244];
  v29 = v0[243];
  v30 = v0[240];
  v31 = v0[237];
  v32 = v0[236];
  v33 = v0[233];
  v34 = v0[230];
  v35 = v0[229];
  v36 = v0[228];
  v37 = v0[227];
  v38 = v0[226];
  v39 = v0[225];
  v40 = v0[224];
  v41 = v0[223];
  v42 = v0[222];
  v43 = v0[220];
  v44 = v0[218];
  v45 = v0[217];
  v46 = v0[216];
  v47 = v0[215];
  v48 = v0[212];
  v49 = v0[211];
  v50 = v0[209];
  v51 = v0[208];
  v52 = v0[207];
  v53 = v0[206];
  v54 = v0[205];
  v56 = v0[204];
  v58 = v0[202];
  v60 = v0[199];
  v62 = v0[196];
  v64 = v0[195];
  v66 = v0[194];
  v68 = v0[191];
  v70 = v0[190];

  v21 = v0[1];

  return v21();
}

{
  v1 = v0[285];
  v2 = v0[267];
  v68 = v0[265];
  v70 = v0[274];
  v64 = v0[262];
  v66 = v0[261];
  v3 = v0[259];
  v60 = v0[258];
  v62 = v0[260];
  v58 = v0[247];
  v4 = v0[244];
  v5 = v0[242];
  v6 = v0[241];
  v7 = v0[233];
  v8 = v0[232];
  v9 = v0[231];
  v10 = v0[230];

  outlined destroy of OnScreenContent.Document?(v10, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v11 = v0[180];

  outlined destroy of OnScreenContent.Document?(v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v3 + 8))(v62, v60);
  v70(v68, v66);
  v71 = v0[303];
  v12 = v0[265];
  v13 = v0[264];
  v14 = v0[263];
  v15 = v0[260];
  v16 = v0[257];
  v17 = v0[256];
  v18 = v0[255];
  v19 = v0[254];
  v20 = v0[253];
  v21 = v0[252];
  v24 = v0[249];
  v25 = v0[248];
  v26 = v0[247];
  v27 = v0[246];
  v28 = v0[245];
  v29 = v0[244];
  v30 = v0[243];
  v31 = v0[240];
  v32 = v0[237];
  v33 = v0[236];
  v34 = v0[233];
  v35 = v0[230];
  v36 = v0[229];
  v37 = v0[228];
  v38 = v0[227];
  v39 = v0[226];
  v40 = v0[225];
  v41 = v0[224];
  v42 = v0[223];
  v43 = v0[222];
  v44 = v0[220];
  v45 = v0[218];
  v46 = v0[217];
  v47 = v0[216];
  v48 = v0[215];
  v49 = v0[212];
  v50 = v0[211];
  v51 = v0[209];
  v52 = v0[208];
  v53 = v0[207];
  v54 = v0[206];
  v55 = v0[205];
  v56 = v0[204];
  v57 = v0[202];
  v59 = v0[199];
  v61 = v0[196];
  v63 = v0[195];
  v65 = v0[194];
  v67 = v0[191];
  v69 = v0[190];

  v22 = v0[1];

  return v22();
}

{
  v1 = v0[285];
  v2 = v0[267];
  v69 = v0[265];
  v71 = v0[274];
  v65 = v0[262];
  v67 = v0[261];
  v3 = v0[259];
  v61 = v0[258];
  v63 = v0[260];
  v57 = v0[244];
  v59 = v0[247];
  v4 = v0[242];
  v5 = v0[241];
  v6 = v0[233];
  v7 = v0[232];
  v8 = v0[231];
  v9 = v0[230];
  v10 = v0[204];

  outlined destroy of DocumentInfo(v10, type metadata accessor for UploadableDocumentData);
  outlined destroy of OnScreenContent.Document?(v9, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v57, v5);
  v11 = v0[180];

  outlined destroy of OnScreenContent.Document?(v59, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v3 + 8))(v63, v61);
  v71(v69, v67);
  v72 = v0[305];
  v12 = v0[265];
  v13 = v0[264];
  v14 = v0[263];
  v15 = v0[260];
  v16 = v0[257];
  v17 = v0[256];
  v18 = v0[255];
  v19 = v0[254];
  v20 = v0[253];
  v21 = v0[252];
  v24 = v0[249];
  v25 = v0[248];
  v26 = v0[247];
  v27 = v0[246];
  v28 = v0[245];
  v29 = v0[244];
  v30 = v0[243];
  v31 = v0[240];
  v32 = v0[237];
  v33 = v0[236];
  v34 = v0[233];
  v35 = v0[230];
  v36 = v0[229];
  v37 = v0[228];
  v38 = v0[227];
  v39 = v0[226];
  v40 = v0[225];
  v41 = v0[224];
  v42 = v0[223];
  v43 = v0[222];
  v44 = v0[220];
  v45 = v0[218];
  v46 = v0[217];
  v47 = v0[216];
  v48 = v0[215];
  v49 = v0[212];
  v50 = v0[211];
  v51 = v0[209];
  v52 = v0[208];
  v53 = v0[207];
  v54 = v0[206];
  v55 = v0[205];
  v56 = v0[204];
  v58 = v0[202];
  v60 = v0[199];
  v62 = v0[196];
  v64 = v0[195];
  v66 = v0[194];
  v68 = v0[191];
  v70 = v0[190];

  v22 = v0[1];

  return v22();
}

uint64_t specialized GenerateController.handleGATError(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v124.value._countAndFlagsBits = a2;
  v124.value._object = a3;
  v133 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v118 = *(v133 - 8);
  v7 = *(v118 + 64);
  v8 = MEMORY[0x28223BE20](v133);
  v115 = (&v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v129 = &v112 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v114 = *(v132 - 8);
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v132);
  v125 = (&v112 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v131 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v130 = &v112 - v17;
  v119 = type metadata accessor for GeneratedResponse(0);
  v18 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v123 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v112 - v22;
  v24 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v121 = *(v24 - 8);
  boxed_opaque_existential_1 = v24;
  v25 = *(v121 + 64);
  MEMORY[0x28223BE20](v24);
  v120 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for GATError();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v27);
  v128 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v112 - v32;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static GenerateTextFromMediaController.logger);
  v126 = v28[2];
  *&v127 = a1;
  (v126)(v33, a1, v27);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v37 = os_log_type_enabled(v35, v36);
  v117 = v4;
  v116 = a4;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v134[0] = v113;
    *v38 = 136315650;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v134);
    v135 = v36;
    *(v38 + 12) = 2080;
    *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1FE30, v134);
    *(v38 + 22) = 2080;
    lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
    v39 = Error.localizedDescription.getter();
    v40 = v23;
    v42 = v41;
    v112 = v28;
    v43 = v28[1];
    v43(v33, v27);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v42, v134);
    v23 = v40;

    *(v38 + 24) = v44;
    _os_log_impl(&dword_24FD67000, v35, v135, "%s.%s [GATError = %s]", v38, 0x20u);
    v45 = v113;
    swift_arrayDestroy();
    MEMORY[0x253057F40](v45, -1, -1);
    v46 = v38;
    v47 = v43;
    MEMORY[0x253057F40](v46, -1, -1);

    v48 = v112;
  }

  else
  {

    v47 = v28[1];
    v47(v33, v27);
    v48 = v28;
  }

  v50 = v126;
  v49 = v127;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  result = GATError.errorCode.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  SELFUtils.recordRequestFailed(code:domain:)(result, 4);
  lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
  v52 = swift_allocError();
  (v50)(v53, v49, v27);

  v54 = v128;
  (v50)(v128, v49, v27);
  v55 = (v48[11])(v54, v27);
  if (v55 == *MEMORY[0x277D0D710] || v55 == *MEMORY[0x277D0D718])
  {
    v47(v54, v27);
    swift_allocError();
    (v50)(v56, v49, v27);
    return swift_willThrow();
  }

  if (v55 == *MEMORY[0x277D0D708])
  {
    v58 = v120;
    v57 = v121;
    v59 = boxed_opaque_existential_1;
    (*(v121 + 104))(v120, *MEMORY[0x277D0D7A0], boxed_opaque_existential_1);
    v60 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
    (*(v57 + 8))(v58, v59);
    countAndFlagsBits = v124.value._countAndFlagsBits;
    object = v124.value._object;
    if (v60._countAndFlagsBits == v124.value._countAndFlagsBits && v60._object == v124.value._object)
    {
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v65 & 1) == 0)
      {
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v134[0]) = 10;

        v109 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        v110.value._countAndFlagsBits = countAndFlagsBits;
        v110.value._object = object;
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v134, v110, v109);

        v111 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
        CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
        return swift_willThrow();
      }
    }

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v134[0]) = 18;
    v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v67.value._countAndFlagsBits = countAndFlagsBits;
    v67.value._object = object;
    v68 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v134, v67, v66);
    v124.value._object = v68._countAndFlagsBits;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v69 = swift_allocObject();
    v127 = xmmword_24FE1A560;
    *(v69 + 16) = xmmword_24FE1A560;
    *(v69 + 32) = v68;
    v70 = type metadata accessor for URL();
    (*(*(v70 - 8) + 56))(v23, 1, 1, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
    v71 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v128 = *(v118 + 72);
    v72 = swift_allocObject();
    *(v72 + 16) = v127;
    v121 = v71;
    v73 = (v72 + v71);
    *v73 = 0;
    v73[1] = 0xE000000000000000;
    *&v127 = v72 + v71;
    swift_storeEnumTagMultiPayload();
    v74 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
    v126 = v23;
    v124.value._countAndFlagsBits = v74;
    v134[3] = v74;
    v134[4] = MEMORY[0x277D0D628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v134);

    static GenerativeAssistantFeatureFlagManager.instance.getter();
    v75 = v119;
    v76 = v123;
    v77 = &v123[*(v119 + 56)];
    v136 = 49;
    v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v79 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v136, 0, v78);

    *v77 = v79;
    v80 = v72;
    v81 = v124.value._object;
    *v76 = v124.value._object;
    *(v76 + 8) = v68._object;
    *(v76 + 16) = v80;
    *(v76 + 24) = v69;
    *(v76 + 32) = 64;
    v82 = MEMORY[0x277D84F90];
    v83 = v126;
    *(v76 + 40) = MEMORY[0x277D84F90];
    *(v76 + 48) = v82;
    *(v76 + v75[15]) = v82;
    *(v76 + v75[12]) = 4;
    v84 = (v76 + v75[13]);
    *v84 = 0;
    v84[1] = 0xE000000000000000;
    outlined init with copy of Date?(v83, v76 + v75[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v85 = (v76 + v75[11]);
    *v85 = 0;
    v85[1] = 0xE000000000000000;
    *(v76 + v75[16]) = 1;
    *(v76 + v75[17]) = 0;
    v86 = (v76 + v75[18]);
    *v86 = 0;
    v86[1] = 0xE000000000000000;
    v87 = (v76 + v75[19]);
    *v87 = 0;
    v87[1] = 0xE000000000000000;
    outlined init with copy of GenerativeAssistantFeatureFlagManaging(v134, v76 + v75[21]);
    *(v76 + v75[20]) = xmmword_24FE1AE00;
    if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
    {
      v88._countAndFlagsBits = v81;
      v88._object = v68._object;
      v89 = GeneratedResponse.updateText(_:)(v88);

      v124.value._countAndFlagsBits = v89._countAndFlagsBits;
      *v76 = v89;
      boxed_opaque_existential_1 = v89._object;
      v90 = (v114 + 56);
      v91 = (v114 + 48);
      v92 = v80[2];

      v93 = 0;
      v94 = v80;
      v124.value._object = v80;
      v76 = v132;
      while (1)
      {
        if (v93 == v92)
        {
          v95 = 1;
          v93 = v92;
          v96 = v131;
        }

        else
        {
          if ((v93 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          if (v93 >= v94[2])
          {
            goto LABEL_42;
          }

          v97 = v127 + v93 * v128;
          v98 = *(v76 + 48);
          v99 = v125;
          *v125 = v93;
          outlined init with copy of ScreenContent(v97, v99 + v98, type metadata accessor for GeneratedResponse.RichContentEntity);
          v100 = v99;
          v96 = v131;
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v100, v131, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
          v95 = 0;
          ++v93;
        }

        v101 = v130;
        (*v90)(v96, v95, 1, v76);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v96, v101, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
        if ((*v91)(v101, 1, v76) == 1)
        {
          break;
        }

        v102 = *v101;
        v103 = v101 + *(v76 + 48);
        v104 = v129;
        outlined init with take of SelectedContent(v103, v129, type metadata accessor for GeneratedResponse.RichContentEntity);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v106 = v104;
        v76 = v132;
        result = outlined destroy of DocumentInfo(v106, type metadata accessor for GeneratedResponse.RichContentEntity);
        if (!EnumCaseMultiPayload)
        {
          v107 = v115;
          v108 = boxed_opaque_existential_1;
          *v115 = v124.value._countAndFlagsBits;
          v107[1] = v108;
          swift_storeEnumTagMultiPayload();

          v83 = v124.value._object;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v102 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v83);
            v83 = result;
            if ((v102 & 0x8000000000000000) != 0)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          if (v102 >= v83[2])
          {
            goto LABEL_43;
          }

          result = outlined assign with take of GeneratedResponse.RichContentEntity(v115, v83 + v121 + v102 * v128);
          v124.value._object = v83;
          *(v123 + 2) = v83;
        }
      }

      outlined destroy of OnScreenContent.Document?(v126, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v76 = v123;
    }

    else
    {
LABEL_35:
      outlined destroy of OnScreenContent.Document?(v83, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    outlined init with copy of ScreenContent(v76, v116, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v134);
    return outlined destroy of DocumentInfo(v76, type metadata accessor for GeneratedResponse);
  }

  else
  {
    static GATError.errorDomain.getter();
    GATError.errorCode.getter();
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v134[0]) = 16;
    v63 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v134, v124, v63);

    v64 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    return (v47)(v128, v27);
  }
}

{
  v124.value._countAndFlagsBits = a2;
  v124.value._object = a3;
  v133 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v118 = *(v133 - 8);
  v7 = *(v118 + 64);
  v8 = MEMORY[0x28223BE20](v133);
  v115 = (&v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v129 = &v112 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v114 = *(v132 - 8);
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v132);
  v125 = (&v112 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v131 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v130 = &v112 - v17;
  v119 = type metadata accessor for GeneratedResponse(0);
  v18 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v123 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v112 - v22;
  v24 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v121 = *(v24 - 8);
  boxed_opaque_existential_1 = v24;
  v25 = *(v121 + 64);
  MEMORY[0x28223BE20](v24);
  v120 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for GATError();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v27);
  v128 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v112 - v32;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static GenerateTextController.logger);
  v126 = v28[2];
  *&v127 = a1;
  (v126)(v33, a1, v27);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v37 = os_log_type_enabled(v35, v36);
  v117 = v4;
  v116 = a4;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v134[0] = v113;
    *v38 = 136315650;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1FE10, v134);
    v135 = v36;
    *(v38 + 12) = 2080;
    *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1FE30, v134);
    *(v38 + 22) = 2080;
    lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
    v39 = Error.localizedDescription.getter();
    v40 = v23;
    v42 = v41;
    v112 = v28;
    v43 = v28[1];
    v43(v33, v27);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v42, v134);
    v23 = v40;

    *(v38 + 24) = v44;
    _os_log_impl(&dword_24FD67000, v35, v135, "%s.%s [GATError = %s]", v38, 0x20u);
    v45 = v113;
    swift_arrayDestroy();
    MEMORY[0x253057F40](v45, -1, -1);
    v46 = v38;
    v47 = v43;
    MEMORY[0x253057F40](v46, -1, -1);

    v48 = v112;
  }

  else
  {

    v47 = v28[1];
    v47(v33, v27);
    v48 = v28;
  }

  v50 = v126;
  v49 = v127;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  result = GATError.errorCode.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  SELFUtils.recordRequestFailed(code:domain:)(result, 4);
  lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
  v52 = swift_allocError();
  (v50)(v53, v49, v27);

  v54 = v128;
  (v50)(v128, v49, v27);
  v55 = (v48[11])(v54, v27);
  if (v55 == *MEMORY[0x277D0D710] || v55 == *MEMORY[0x277D0D718])
  {
    v47(v54, v27);
    swift_allocError();
    (v50)(v56, v49, v27);
    return swift_willThrow();
  }

  if (v55 == *MEMORY[0x277D0D708])
  {
    v58 = v120;
    v57 = v121;
    v59 = boxed_opaque_existential_1;
    (*(v121 + 104))(v120, *MEMORY[0x277D0D7A0], boxed_opaque_existential_1);
    v60 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
    (*(v57 + 8))(v58, v59);
    countAndFlagsBits = v124.value._countAndFlagsBits;
    object = v124.value._object;
    if (v60._countAndFlagsBits == v124.value._countAndFlagsBits && v60._object == v124.value._object)
    {
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v65 & 1) == 0)
      {
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v134[0]) = 10;

        v109 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        v110.value._countAndFlagsBits = countAndFlagsBits;
        v110.value._object = object;
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v134, v110, v109);

        v111 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
        CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
        return swift_willThrow();
      }
    }

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v134[0]) = 18;
    v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v67.value._countAndFlagsBits = countAndFlagsBits;
    v67.value._object = object;
    v68 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v134, v67, v66);
    v124.value._object = v68._countAndFlagsBits;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v69 = swift_allocObject();
    v127 = xmmword_24FE1A560;
    *(v69 + 16) = xmmword_24FE1A560;
    *(v69 + 32) = v68;
    v70 = type metadata accessor for URL();
    (*(*(v70 - 8) + 56))(v23, 1, 1, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
    v71 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v128 = *(v118 + 72);
    v72 = swift_allocObject();
    *(v72 + 16) = v127;
    v121 = v71;
    v73 = (v72 + v71);
    *v73 = 0;
    v73[1] = 0xE000000000000000;
    *&v127 = v72 + v71;
    swift_storeEnumTagMultiPayload();
    v74 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
    v126 = v23;
    v124.value._countAndFlagsBits = v74;
    v134[3] = v74;
    v134[4] = MEMORY[0x277D0D628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v134);

    static GenerativeAssistantFeatureFlagManager.instance.getter();
    v75 = v119;
    v76 = v123;
    v77 = &v123[*(v119 + 56)];
    v136 = 49;
    v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v79 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v136, 0, v78);

    *v77 = v79;
    v80 = v72;
    v81 = v124.value._object;
    *v76 = v124.value._object;
    *(v76 + 8) = v68._object;
    *(v76 + 16) = v80;
    *(v76 + 24) = v69;
    *(v76 + 32) = 64;
    v82 = MEMORY[0x277D84F90];
    v83 = v126;
    *(v76 + 40) = MEMORY[0x277D84F90];
    *(v76 + 48) = v82;
    *(v76 + v75[15]) = v82;
    *(v76 + v75[12]) = 4;
    v84 = (v76 + v75[13]);
    *v84 = 0;
    v84[1] = 0xE000000000000000;
    outlined init with copy of Date?(v83, v76 + v75[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v85 = (v76 + v75[11]);
    *v85 = 0;
    v85[1] = 0xE000000000000000;
    *(v76 + v75[16]) = 1;
    *(v76 + v75[17]) = 0;
    v86 = (v76 + v75[18]);
    *v86 = 0;
    v86[1] = 0xE000000000000000;
    v87 = (v76 + v75[19]);
    *v87 = 0;
    v87[1] = 0xE000000000000000;
    outlined init with copy of GenerativeAssistantFeatureFlagManaging(v134, v76 + v75[21]);
    *(v76 + v75[20]) = xmmword_24FE1AE00;
    if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
    {
      v88._countAndFlagsBits = v81;
      v88._object = v68._object;
      v89 = GeneratedResponse.updateText(_:)(v88);

      v124.value._countAndFlagsBits = v89._countAndFlagsBits;
      *v76 = v89;
      boxed_opaque_existential_1 = v89._object;
      v90 = (v114 + 56);
      v91 = (v114 + 48);
      v92 = v80[2];

      v93 = 0;
      v94 = v80;
      v124.value._object = v80;
      v76 = v132;
      while (1)
      {
        if (v93 == v92)
        {
          v95 = 1;
          v93 = v92;
          v96 = v131;
        }

        else
        {
          if ((v93 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          if (v93 >= v94[2])
          {
            goto LABEL_42;
          }

          v97 = v127 + v93 * v128;
          v98 = *(v76 + 48);
          v99 = v125;
          *v125 = v93;
          outlined init with copy of ScreenContent(v97, v99 + v98, type metadata accessor for GeneratedResponse.RichContentEntity);
          v100 = v99;
          v96 = v131;
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v100, v131, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
          v95 = 0;
          ++v93;
        }

        v101 = v130;
        (*v90)(v96, v95, 1, v76);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v96, v101, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
        if ((*v91)(v101, 1, v76) == 1)
        {
          break;
        }

        v102 = *v101;
        v103 = v101 + *(v76 + 48);
        v104 = v129;
        outlined init with take of SelectedContent(v103, v129, type metadata accessor for GeneratedResponse.RichContentEntity);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v106 = v104;
        v76 = v132;
        result = outlined destroy of DocumentInfo(v106, type metadata accessor for GeneratedResponse.RichContentEntity);
        if (!EnumCaseMultiPayload)
        {
          v107 = v115;
          v108 = boxed_opaque_existential_1;
          *v115 = v124.value._countAndFlagsBits;
          v107[1] = v108;
          swift_storeEnumTagMultiPayload();

          v83 = v124.value._object;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v102 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v83);
            v83 = result;
            if ((v102 & 0x8000000000000000) != 0)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          if (v102 >= v83[2])
          {
            goto LABEL_43;
          }

          result = outlined assign with take of GeneratedResponse.RichContentEntity(v115, v83 + v121 + v102 * v128);
          v124.value._object = v83;
          *(v123 + 2) = v83;
        }
      }

      outlined destroy of OnScreenContent.Document?(v126, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v76 = v123;
    }

    else
    {
LABEL_35:
      outlined destroy of OnScreenContent.Document?(v83, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    outlined init with copy of ScreenContent(v76, v116, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v134);
    return outlined destroy of DocumentInfo(v76, type metadata accessor for GeneratedResponse);
  }

  else
  {
    static GATError.errorDomain.getter();
    GATError.errorCode.getter();
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v134[0]) = 16;
    v63 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v134, v124, v63);

    v64 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    return (v47)(v128, v27);
  }
}

size_t specialized GenerateController.handleModelOrchestratorError(error:partnerName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a4;
  v113 = a2;
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 24);
  boxed_opaque_existential_1 = *(a1 + 16);
  v105 = v6;
  v106 = v8;
  LODWORD(v112) = *(a1 + 32);
  v111 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v9 = *(v111 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v111);
  v99 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v107 = &v95 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v98 = *(v110 - 8);
  v14 = *(v98 + 64);
  MEMORY[0x28223BE20](v110);
  v103 = (&v95 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v108 = &v95 - v21;
  object = type metadata accessor for GeneratedResponse(0);
  v22 = *(*(object - 8) + 64);
  MEMORY[0x28223BE20](object);
  v102 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v95 - v26;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static GenerateTextFromMediaController.logger);
  outlined init with copy of ModelOrchestrator.Error(a1, &v114);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  outlined destroy of ModelOrchestrator.Error(a1);
  v31 = os_log_type_enabled(v29, v30);
  v109 = v20;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v97 = a3;
    v33 = v32;
    v34 = swift_slowAlloc();
    v96 = v9;
    v35 = v34;
    v117 = v34;
    *v33 = 136315650;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v117);
    v36 = v27;
    *(v33 + 12) = 2080;
    *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000024FE1FE50, &v117);
    *(v33 + 22) = 2080;
    v37 = *(a1 + 16);
    v114 = *a1;
    v115 = v37;
    LOBYTE(v116) = *(a1 + 32);
    lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
    v38 = Error.localizedDescription.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v117);

    *(v33 + 24) = v40;
    v27 = v36;
    _os_log_impl(&dword_24FD67000, v29, v30, "%s.%s [ModelOrchestrator.Error = %s]", v33, 0x20u);
    swift_arrayDestroy();
    v41 = v35;
    v9 = v96;
    MEMORY[0x253057F40](v41, -1, -1);
    v42 = v33;
    a3 = v97;
    MEMORY[0x253057F40](v42, -1, -1);
  }

  if (*(a1 + 32) != 3)
  {
    goto LABEL_41;
  }

  v43 = *a1;
  v44 = *(a1 + 16) | *(a1 + 24) | *(a1 + 8);
  if (*a1 == 2 && !v44)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v114) = 10;

    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v46.value._countAndFlagsBits = v113;
    v46.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, v46, v45);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v43 == 3 && !v44)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v114) = 11;

    v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, 0, v47);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v43 == 4 && !v44)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v114) = 12;

    v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v49.value._countAndFlagsBits = v113;
    v49.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, v49, v48);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v43 == 5 && !v44)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v114) = 13;

    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v51.value._countAndFlagsBits = v113;
    v51.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, v51, v50);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v43 != 9 || v44)
  {
    goto LABEL_41;
  }

  v52 = type metadata accessor for URL();
  (*(*(v52 - 8) + 56))(v27, 1, 1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v53 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v113 = *(v9 + 72);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_24FE1A560;
  v97 = v53;
  v55 = (v54 + v53);
  *v55 = 0;
  v55[1] = 0xE000000000000000;
  v112 = v54 + v53;
  swift_storeEnumTagMultiPayload();
  v105 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(&v115 + 1) = v105;
  v116 = MEMORY[0x277D0D628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v57 = object;
  v56 = v102;
  v58 = &v102[*(object + 56)];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v117) = 49;
  v106 = v27;
  v59 = MEMORY[0x277D84F90];
  v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v61 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v117, 0, v60);
  v62 = v54;

  *v58 = v61;
  *v56 = 0;
  *(v56 + 8) = 0xE000000000000000;
  *(v56 + 16) = v54;
  *(v56 + 24) = v59;
  *(v56 + 32) = 64;
  *(v56 + 40) = v59;
  *(v56 + 48) = v59;
  *(v56 + v57[15]) = v59;
  v63 = v106;
  *(v56 + v57[12]) = 3;
  v64 = (v56 + v57[13]);
  *v64 = 0;
  v64[1] = 0xE000000000000000;
  outlined init with copy of Date?(v63, v56 + v57[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v65 = (v56 + v57[11]);
  *v65 = 0;
  v65[1] = 0xE000000000000000;
  *(v56 + v57[16]) = 0;
  *(v56 + v57[17]) = 0;
  v66 = (v56 + v57[18]);
  *v66 = 0;
  v66[1] = 0xE000000000000000;
  v67 = (v56 + v57[19]);
  *v67 = 0;
  v67[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(&v114, v56 + v57[21]);
  *(v56 + v57[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    outlined destroy of OnScreenContent.Document?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_38:
    outlined init with copy of ScreenContent(v56, v100, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(&v114);
    return outlined destroy of DocumentInfo(v56, type metadata accessor for GeneratedResponse);
  }

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v69 = GeneratedResponse.updateText(_:)(v68);
  boxed_opaque_existential_1 = v69._countAndFlagsBits;
  *v56 = v69;
  object = v69._object;
  v70 = *(v62 + 16);
  v71 = (v98 + 56);
  v72 = (v98 + 48);

  v73 = v62;
  a3 = 0;
  v74 = v73;
  v105 = v73;
  v75 = v110;
  while (a3 == v70)
  {
    v76 = 1;
    a3 = v70;
    v77 = v109;
LABEL_27:
    v83 = v108;
    (*v71)(v77, v76, 1, v75);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v77, v83, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v72)(v83, 1, v75) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v106, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v56 = v102;
      goto LABEL_38;
    }

    v84 = *v83;
    v85 = v83 + *(v75 + 48);
    v86 = v107;
    outlined init with take of SelectedContent(v85, v107, type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v88 = v86;
    v75 = v110;
    outlined destroy of DocumentInfo(v88, type metadata accessor for GeneratedResponse.RichContentEntity);
    if (!EnumCaseMultiPayload)
    {
      v89 = v99;
      v90 = object;
      *v99 = boxed_opaque_existential_1;
      v89[1] = v90;
      swift_storeEnumTagMultiPayload();

      v91 = v105;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v84 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v91);
        v91 = result;
        if ((v84 & 0x8000000000000000) != 0)
        {
LABEL_34:
          __break(1u);
          goto LABEL_41;
        }
      }

      if (v84 >= v91[2])
      {
        __break(1u);
        return result;
      }

      outlined assign with take of GeneratedResponse.RichContentEntity(v99, v91 + v97 + v84 * v113);
      v105 = v91;
      *(v102 + 2) = v91;
    }
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v78 = *(v74 + 16);
    if (a3 >= v78)
    {
      goto LABEL_40;
    }

    v79 = v112 + a3 * v113;
    v80 = *(v75 + 48);
    v81 = v103;
    *v103 = a3;
    outlined init with copy of ScreenContent(v79, v81 + v80, type metadata accessor for GeneratedResponse.RichContentEntity);
    v82 = v81;
    v77 = v109;
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v82, v109, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v76 = 0;
    ++a3;
    goto LABEL_27;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v114) = 16;

  v93 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v94.value._countAndFlagsBits = v113;
  v94.value._object = a3;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, v94, v93);

  objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
LABEL_42:
  CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
  return swift_willThrow();
}

{
  v100 = a4;
  v113 = a2;
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 24);
  boxed_opaque_existential_1 = *(a1 + 16);
  v105 = v6;
  v106 = v8;
  LODWORD(v112) = *(a1 + 32);
  v111 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v9 = *(v111 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v111);
  v99 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v107 = &v95 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v98 = *(v110 - 8);
  v14 = *(v98 + 64);
  MEMORY[0x28223BE20](v110);
  v103 = (&v95 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v108 = &v95 - v21;
  object = type metadata accessor for GeneratedResponse(0);
  v22 = *(*(object - 8) + 64);
  MEMORY[0x28223BE20](object);
  v102 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v95 - v26;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static GenerateTextController.logger);
  outlined init with copy of ModelOrchestrator.Error(a1, &v114);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  outlined destroy of ModelOrchestrator.Error(a1);
  v31 = os_log_type_enabled(v29, v30);
  v109 = v20;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v97 = a3;
    v33 = v32;
    v34 = swift_slowAlloc();
    v96 = v9;
    v35 = v34;
    v117 = v34;
    *v33 = 136315650;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1FE10, &v117);
    v36 = v27;
    *(v33 + 12) = 2080;
    *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000024FE1FE50, &v117);
    *(v33 + 22) = 2080;
    v37 = *(a1 + 16);
    v114 = *a1;
    v115 = v37;
    LOBYTE(v116) = *(a1 + 32);
    lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
    v38 = Error.localizedDescription.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v117);

    *(v33 + 24) = v40;
    v27 = v36;
    _os_log_impl(&dword_24FD67000, v29, v30, "%s.%s [ModelOrchestrator.Error = %s]", v33, 0x20u);
    swift_arrayDestroy();
    v41 = v35;
    v9 = v96;
    MEMORY[0x253057F40](v41, -1, -1);
    v42 = v33;
    a3 = v97;
    MEMORY[0x253057F40](v42, -1, -1);
  }

  if (*(a1 + 32) != 3)
  {
    goto LABEL_41;
  }

  v43 = *a1;
  v44 = *(a1 + 16) | *(a1 + 24) | *(a1 + 8);
  if (*a1 == 2 && !v44)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v114) = 10;

    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v46.value._countAndFlagsBits = v113;
    v46.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, v46, v45);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v43 == 3 && !v44)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v114) = 11;

    v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, 0, v47);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v43 == 4 && !v44)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v114) = 12;

    v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v49.value._countAndFlagsBits = v113;
    v49.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, v49, v48);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v43 == 5 && !v44)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v114) = 13;

    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v51.value._countAndFlagsBits = v113;
    v51.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, v51, v50);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v43 != 9 || v44)
  {
    goto LABEL_41;
  }

  v52 = type metadata accessor for URL();
  (*(*(v52 - 8) + 56))(v27, 1, 1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v53 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v113 = *(v9 + 72);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_24FE1A560;
  v97 = v53;
  v55 = (v54 + v53);
  *v55 = 0;
  v55[1] = 0xE000000000000000;
  v112 = v54 + v53;
  swift_storeEnumTagMultiPayload();
  v105 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(&v115 + 1) = v105;
  v116 = MEMORY[0x277D0D628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v57 = object;
  v56 = v102;
  v58 = &v102[*(object + 56)];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v117) = 49;
  v106 = v27;
  v59 = MEMORY[0x277D84F90];
  v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v61 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v117, 0, v60);
  v62 = v54;

  *v58 = v61;
  *v56 = 0;
  *(v56 + 8) = 0xE000000000000000;
  *(v56 + 16) = v54;
  *(v56 + 24) = v59;
  *(v56 + 32) = 64;
  *(v56 + 40) = v59;
  *(v56 + 48) = v59;
  *(v56 + v57[15]) = v59;
  v63 = v106;
  *(v56 + v57[12]) = 3;
  v64 = (v56 + v57[13]);
  *v64 = 0;
  v64[1] = 0xE000000000000000;
  outlined init with copy of Date?(v63, v56 + v57[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v65 = (v56 + v57[11]);
  *v65 = 0;
  v65[1] = 0xE000000000000000;
  *(v56 + v57[16]) = 0;
  *(v56 + v57[17]) = 0;
  v66 = (v56 + v57[18]);
  *v66 = 0;
  v66[1] = 0xE000000000000000;
  v67 = (v56 + v57[19]);
  *v67 = 0;
  v67[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(&v114, v56 + v57[21]);
  *(v56 + v57[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    outlined destroy of OnScreenContent.Document?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_38:
    outlined init with copy of ScreenContent(v56, v100, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(&v114);
    return outlined destroy of DocumentInfo(v56, type metadata accessor for GeneratedResponse);
  }

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v69 = GeneratedResponse.updateText(_:)(v68);
  boxed_opaque_existential_1 = v69._countAndFlagsBits;
  *v56 = v69;
  object = v69._object;
  v70 = *(v62 + 16);
  v71 = (v98 + 56);
  v72 = (v98 + 48);

  v73 = v62;
  a3 = 0;
  v74 = v73;
  v105 = v73;
  v75 = v110;
  while (a3 == v70)
  {
    v76 = 1;
    a3 = v70;
    v77 = v109;
LABEL_27:
    v83 = v108;
    (*v71)(v77, v76, 1, v75);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v77, v83, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v72)(v83, 1, v75) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v106, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v56 = v102;
      goto LABEL_38;
    }

    v84 = *v83;
    v85 = v83 + *(v75 + 48);
    v86 = v107;
    outlined init with take of SelectedContent(v85, v107, type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v88 = v86;
    v75 = v110;
    outlined destroy of DocumentInfo(v88, type metadata accessor for GeneratedResponse.RichContentEntity);
    if (!EnumCaseMultiPayload)
    {
      v89 = v99;
      v90 = object;
      *v99 = boxed_opaque_existential_1;
      v89[1] = v90;
      swift_storeEnumTagMultiPayload();

      v91 = v105;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v84 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v91);
        v91 = result;
        if ((v84 & 0x8000000000000000) != 0)
        {
LABEL_34:
          __break(1u);
          goto LABEL_41;
        }
      }

      if (v84 >= v91[2])
      {
        __break(1u);
        return result;
      }

      outlined assign with take of GeneratedResponse.RichContentEntity(v99, v91 + v97 + v84 * v113);
      v105 = v91;
      *(v102 + 2) = v91;
    }
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v78 = *(v74 + 16);
    if (a3 >= v78)
    {
      goto LABEL_40;
    }

    v79 = v112 + a3 * v113;
    v80 = *(v75 + 48);
    v81 = v103;
    *v103 = a3;
    outlined init with copy of ScreenContent(v79, v81 + v80, type metadata accessor for GeneratedResponse.RichContentEntity);
    v82 = v81;
    v77 = v109;
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v82, v109, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v76 = 0;
    ++a3;
    goto LABEL_27;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v114) = 16;

  v93 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v94.value._countAndFlagsBits = v113;
  v94.value._object = a3;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v114, v94, v93);

  objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
LABEL_42:
  CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
  return swift_willThrow();
}

uint64_t GenerateTextFromMediaController.isFromWebsite(activityType:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.genFromMediaController);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000024FE200E0, &v16);
    *(v7 + 22) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 24) = v11;
    _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s [NSUserActivity activityType = %s]", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v8, -1, -1);
    MEMORY[0x253057F40](v7, -1, -1);
  }

  if (a2)
  {
    v12 = *MEMORY[0x277CCA850];
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v13 == a2)
    {
      LOBYTE(a2) = 1;
    }

    else
    {
      LOBYTE(a2) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return a2 & 1;
}

uint64_t GenerateTextFromMediaController.appName(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for IntelligenceProcessInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v5, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v5, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    if (one-time initialization token for genFromMediaController != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.genFromMediaController);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v39 = v15;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v39);
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x28656D614E707061, 0xEE00293A6D6F7266, &v39);
      _os_log_impl(&dword_24FD67000, v12, v13, "%s.%s No IntelligenceProcessInfo found, not returning an appName.", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v15, -1, -1);
      MEMORY[0x253057F40](v14, -1, -1);
    }

    return 0;
  }

  (*(v7 + 32))(v10, v5, v6);
  v16 = IntelligenceProcessInfo.bundleIdentifier.getter();
  if (!v17)
  {
    if (one-time initialization token for genFromMediaController != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.genFromMediaController);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_23;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v39);
    *(v23 + 12) = 2080;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x28656D614E707061, 0xEE00293A6D6F7266, &v39);
    v25 = "%s.%s No bundleIdentifier found in IntelligenceProcessInfo, not returning an appName.";
    goto LABEL_17;
  }

  v18 = v17;
  v19 = v16;
  if (IntelligenceProcessInfo.isSystemApp.getter())
  {

    if (one-time initialization token for genFromMediaController != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.genFromMediaController);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_23;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v39);
    *(v23 + 12) = 2080;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x28656D614E707061, 0xEE00293A6D6F7266, &v39);
    v25 = "%s.%s Content came from a system app, not returning an appName.";
LABEL_17:
    _os_log_impl(&dword_24FD67000, v21, v22, v25, v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v24, -1, -1);
    MEMORY[0x253057F40](v23, -1, -1);
LABEL_23:

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  type metadata accessor for LSBundleRecord();
  v27 = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v19, v18, 0);
  v28 = [v27 localizedName];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.genFromMediaController);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v39);
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x28656D614E707061, 0xEE00293A6D6F7266, &v39);
    *(v35 + 22) = 2080;
    *(v35 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v39);
    _os_log_impl(&dword_24FD67000, v33, v34, "%s.%s Using localized appName: %s.", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v36, -1, -1);
    MEMORY[0x253057F40](v35, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return v29;
}

Swift::String __swiftcall GenerateTextFromMediaController.getDocumentConfirmationText(partnerName:isExplicit:appName:)(Swift::String partnerName, Swift::Bool isExplicit, Swift::String_optional appName)
{
  object = appName.value._object;
  countAndFlagsBits = appName.value._countAndFlagsBits;
  v5 = partnerName._object;
  v6 = partnerName._countAndFlagsBits;
  v7 = 31;
  if (!isExplicit)
  {
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    if (MEMORY[0x253056490]())
    {
      v7 = 31;
    }

    else
    {
      v7 = 29;
    }
  }

  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  if (object)
  {
    v17 = MEMORY[0x277D837D0];
    *&v16 = countAndFlagsBits;
    *(&v16 + 1) = object;
    outlined init with take of Any(&v16, v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x656D614E707061, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v16) = v7;
  v10.value._countAndFlagsBits = v6;
  v10.value._object = v5;
  v11 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v16, v10, v8);

  v12 = v11._countAndFlagsBits;
  v13 = v11._object;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

id GenerateTextFromMediaController.generatePDFThumbnail(for:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = URL.startAccessingSecurityScopedResource()();
  v8 = objc_allocWithZone(MEMORY[0x277CD93D8]);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 initWithURL_];

  if (!v12)
  {
LABEL_8:
    if (one-time initialization token for genFromMediaController != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.genFromMediaController);
    (*(v3 + 16))(v6, a1, v2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      HIDWORD(v28) = v7;
      v22 = v21;
      v29 = v21;
      *v20 = 136315650;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v29);
      *(v20 + 12) = 2080;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE20250, &v29);
      *(v20 + 22) = 2080;
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v3 + 8))(v6, v2);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v29);

      *(v20 + 24) = v26;
      _os_log_impl(&dword_24FD67000, v18, v19, "%s.%s Failed to create a (non-empty) PDFDocument from url: %s", v20, 0x20u);
      swift_arrayDestroy();
      v27 = v22;
      LOBYTE(v22) = BYTE4(v28);
      MEMORY[0x253057F40](v27, -1, -1);
      MEMORY[0x253057F40](v20, -1, -1);

      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      if (!v7)
      {
        return 0;
      }
    }

    URL.stopAccessingSecurityScopedResource()();
    return 0;
  }

  if ([v12 pageCount] < 1 || (v13 = objc_msgSend(v12, sel_pageAtIndex_, 0)) == 0)
  {

    goto LABEL_8;
  }

  v14 = v13;
  v15 = [v13 thumbnailOfSize:4 forBox:{256.0, 256.0}];

  if (v7)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  return v15;
}

Swift::String __swiftcall GenerateTextFromMediaController.getImageConfirmationText(partnerName:isExplicit:isScreenshot:)(Swift::String partnerName, Swift::Bool isExplicit, Swift::Bool isScreenshot)
{
  object = partnerName._object;
  countAndFlagsBits = partnerName._countAndFlagsBits;
  if (isExplicit)
  {
    if (isScreenshot)
    {
      v6 = 28;
    }

    else
    {
      v6 = 25;
    }
  }

  else
  {
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    v7 = MEMORY[0x253056490]();
    if (v7)
    {
      v8 = 25;
    }

    else
    {
      v8 = 23;
    }

    if (v7)
    {
      v9 = 28;
    }

    else
    {
      v9 = 26;
    }

    if (isScreenshot)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8;
    }
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v16 = v6;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v11.value._countAndFlagsBits = countAndFlagsBits;
  v11.value._object = object;
  v12 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v16, v11, v10);

  v13 = v12._countAndFlagsBits;
  v14 = v12._object;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t GenerateTextFromMediaController.getImageConfirmationSpokenDialog(partnerName:isExplicit:isScreenshot:)(uint64_t a1, void *a2, char a3, char a4)
{
  if (a3)
  {
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (a4)
    {
      v15 = v7;
LABEL_7:
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
      v10 = v15;
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v11 = 27;
      goto LABEL_14;
    }

    v15 = v7;
    goto LABEL_11;
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v9 = MEMORY[0x253056490]();
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a4)
  {
    if (v9)
    {
      v15 = v10;
      goto LABEL_7;
    }

    v15 = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    v11 = 26;
  }

  else
  {
    if (v9)
    {
      v15 = v10;
LABEL_11:
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
      v10 = v15;
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v11 = 24;
      goto LABEL_14;
    }

    v15 = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    v11 = 23;
  }

LABEL_14:
  LOBYTE(v15) = v11;
  v12 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  v13.value._countAndFlagsBits = a1;
  v13.value._object = a2;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v15, v13, v12);

  return IntentDialog.init(stringLiteral:)();
}

uint64_t GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 264) = a2;
  v5 = type metadata accessor for ConfirmationActionName();
  *(v3 + 64) = v5;
  v6 = *(v5 - 8);
  *(v3 + 72) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v8 = type metadata accessor for IntentDialog();
  *(v3 + 88) = v8;
  v9 = *(v8 - 8);
  *(v3 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v11 = type metadata accessor for RequestType();
  *(v3 + 112) = v11;
  v12 = *(v11 - 8);
  *(v3 + 120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v14 = type metadata accessor for Date();
  *(v3 + 136) = v14;
  v15 = *(v14 - 8);
  *(v3 + 144) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v17 = *(a1 + 88);
  *(v3 + 160) = *(a1 + 40);
  *(v3 + 176) = v17;
  type metadata accessor for MainActor();
  *(v3 + 192) = static MainActor.shared.getter();
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 200) = v19;
  *(v3 + 208) = v18;

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:), v19, v18);
}

uint64_t GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:)()
{
  v31 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);
  *(v0 + 216) = type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.declineMediaQAExpiration()();
  v3 = *(v2 + 40);
  *(v0 + 265) = v3;
  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    (*(v5 + 104))(v4, *MEMORY[0x277D0D7D8], v6);
    MEMORY[0x253056460](v4);
    (*(v5 + 8))(v4, v6);
  }

  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  *(v0 + 224) = __swift_project_value_buffer(v7, static Logger.genFromTextController);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v30);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x800000024FE20090, &v30);
    _os_log_impl(&dword_24FD67000, v8, v9, "%s.%s Confirming JIT enablement", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v11, -1, -1);
    MEMORY[0x253057F40](v10, -1, -1);
  }

  v12 = *(v0 + 264);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  if (v12)
  {
    v13 = 34;
  }

  else
  {
    v13 = 35;
  }

  v14 = *(v0 + 160);
  v15 = *(v0 + 96);
  v16 = *(v0 + 104);
  v17 = *(v0 + 88);
  v28 = *(v0 + 80);
  v18 = static Disclaimer.partnerName;

  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18.value._countAndFlagsBits, v18.value._object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
  v21 = v30;
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v30) = v13;
  v22 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v30, v18, v22);

  IntentDialog.init(stringLiteral:)();

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
  *(v0 + 48) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static IntentResult.result<>(dialog:)();
  (*(v15 + 8))(v16, v17);
  static ConfirmationButtonActionUtils.getJITEnablementButtonActions()();
  v29 = (v14 + *v14);
  v23 = v14[1];
  v24 = swift_task_alloc();
  *(v0 + 232) = v24;
  *v24 = v0;
  v24[1] = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  v25 = *(v0 + 168);
  v26 = *(v0 + 80);

  return v29(v0 + 16, v26, 1);
}

{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  else
  {
    v3 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:), v1, v2);
}

{
  v17 = v0;
  if ((*(v0 + 265) & 1) == 0)
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 152);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    (*(v4 + 104))(v3, *MEMORY[0x277D0D7D8], v5);
    static GenerativeAssistantSettingsUserDefaults.decrementDecline(for:expirationDate:)();
    (*(v4 + 8))(v3, v5);
  }

  v6 = *(v0 + 224);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v16);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x800000024FE20090, &v16);
    _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s User Confirmed Showing JIT Enablement.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v10, -1, -1);
    MEMORY[0x253057F40](v9, -1, -1);
  }

  v15 = (*(v0 + 176) + **(v0 + 176));
  v11 = *(*(v0 + 176) + 4);
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  v13 = *(v0 + 184);

  return v15();
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:), v1, v2);
}

{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[30];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  else
  {
    v7 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[10];

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];

  (*(v3 + 8))(v2, v4);
  v5 = v0[32];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x253056EA0]();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

unint64_t lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors()
{
  result = lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors;
  if (!lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors;
  if (!lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors;
  if (!lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors);
  }

  return result;
}

uint64_t outlined consume of GenerativeAssistantProgressLevel(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 6u)
  {
  }

  return result;
}

uint64_t outlined consume of GenerateTextFromMediaController.Error(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerateTextFromMediaController(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t storeEnumTagSinglePayload for GenerateTextFromMediaController(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerateTextFromMediaController.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerateTextFromMediaController.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error()
{
  result = lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error;
  if (!lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error;
  if (!lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error);
  }

  return result;
}

uint64_t outlined copy of GenerateTextFromMediaController.Error(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error()
{
  result = lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error;
  if (!lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error;
  if (!lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error);
  }

  return result;
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

uint64_t outlined init with take of SelectedContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of ScreenContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DocumentInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v61;
  *(v8 + 144) = v62;
  *(v8 + 120) = v60;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v10 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v8 + 152) = v10;
  v11 = *(v10 - 8);
  *(v8 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v14 = type metadata accessor for ConfirmationActionName();
  *(v8 + 184) = v14;
  v15 = *(v14 - 8);
  *(v8 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v17 = type metadata accessor for SnippetPluginContainer();
  *(v8 + 208) = v17;
  v18 = *(v17 - 8);
  *(v8 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v22 = type metadata accessor for SupportedDocumentType();
  *(v8 + 248) = v22;
  v23 = *(v22 - 8);
  *(v8 + 256) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v25 = type metadata accessor for AttachmentConfirmationPayload();
  *(v8 + 272) = v25;
  v26 = *(v25 - 8);
  *(v8 + 280) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v29 = type metadata accessor for ImageInfo(0);
  *(v8 + 304) = v29;
  v30 = *(v29 - 8);
  *(v8 + 312) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v32 = type metadata accessor for Attachment.LocalizedName();
  *(v8 + 328) = v32;
  v33 = *(v32 - 8);
  *(v8 + 336) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v35 = type metadata accessor for Attachment();
  *(v8 + 360) = v35;
  v36 = *(v35 - 8);
  *(v8 + 368) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v38 = type metadata accessor for UTType();
  *(v8 + 392) = v38;
  v39 = *(v38 - 8);
  *(v8 + 400) = v39;
  v40 = *(v39 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
  *(v8 + 416) = v41;
  v42 = *(*(v41 - 8) + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v44 = type metadata accessor for IntelligenceFile.Attributes();
  *(v8 + 456) = v44;
  v45 = *(v44 - 8);
  *(v8 + 464) = v45;
  v46 = *(v45 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  v47 = type metadata accessor for IntentDialog();
  *(v8 + 488) = v47;
  v48 = *(v47 - 8);
  *(v8 + 496) = v48;
  v49 = *(v48 + 64) + 15;
  *(v8 + 504) = swift_task_alloc();
  v50 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  *(v8 + 512) = v50;
  v51 = *(v50 - 8);
  *(v8 + 520) = v51;
  v52 = *(v51 + 64) + 15;
  *(v8 + 528) = swift_task_alloc();
  v53 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR) - 8) + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR) - 8) + 64) + 15;
  *(v8 + 544) = swift_task_alloc();
  v55 = *a5;

  type metadata accessor for MainActor();
  *(v8 + 552) = static MainActor.shared.getter();
  v57 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 560) = v57;
  *(v8 + 568) = v56;

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v57, v56);
}

{
  *(v8 + 136) = v61;
  *(v8 + 144) = v62;
  *(v8 + 120) = v60;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v10 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v8 + 152) = v10;
  v11 = *(v10 - 8);
  *(v8 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v14 = type metadata accessor for ConfirmationActionName();
  *(v8 + 184) = v14;
  v15 = *(v14 - 8);
  *(v8 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v17 = type metadata accessor for SnippetPluginContainer();
  *(v8 + 208) = v17;
  v18 = *(v17 - 8);
  *(v8 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v22 = type metadata accessor for SupportedDocumentType();
  *(v8 + 248) = v22;
  v23 = *(v22 - 8);
  *(v8 + 256) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v25 = type metadata accessor for AttachmentConfirmationPayload();
  *(v8 + 272) = v25;
  v26 = *(v25 - 8);
  *(v8 + 280) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v29 = type metadata accessor for ImageInfo(0);
  *(v8 + 304) = v29;
  v30 = *(v29 - 8);
  *(v8 + 312) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v32 = type metadata accessor for Attachment.LocalizedName();
  *(v8 + 328) = v32;
  v33 = *(v32 - 8);
  *(v8 + 336) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v35 = type metadata accessor for Attachment();
  *(v8 + 360) = v35;
  v36 = *(v35 - 8);
  *(v8 + 368) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v38 = type metadata accessor for UTType();
  *(v8 + 392) = v38;
  v39 = *(v38 - 8);
  *(v8 + 400) = v39;
  v40 = *(v39 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
  *(v8 + 416) = v41;
  v42 = *(*(v41 - 8) + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v44 = type metadata accessor for IntelligenceFile.Attributes();
  *(v8 + 456) = v44;
  v45 = *(v44 - 8);
  *(v8 + 464) = v45;
  v46 = *(v45 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  v47 = type metadata accessor for IntentDialog();
  *(v8 + 488) = v47;
  v48 = *(v47 - 8);
  *(v8 + 496) = v48;
  v49 = *(v48 + 64) + 15;
  *(v8 + 504) = swift_task_alloc();
  v50 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  *(v8 + 512) = v50;
  v51 = *(v50 - 8);
  *(v8 + 520) = v51;
  v52 = *(v51 + 64) + 15;
  *(v8 + 528) = swift_task_alloc();
  v53 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR) - 8) + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR) - 8) + 64) + 15;
  *(v8 + 544) = swift_task_alloc();
  v55 = *a5;

  type metadata accessor for MainActor();
  *(v8 + 552) = static MainActor.shared.getter();
  v57 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 560) = v57;
  *(v8 + 568) = v56;

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v57, v56);
}

uint64_t specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:)()
{
  v123 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 536);
  v2 = *(v0 + 64);
  *(v0 + 576) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
  v3 = type metadata accessor for DocumentInfo(0);
  v4 = *(v2 + *(v3 + 20));
  v120 = v3;
  outlined init with copy of Date?(v2 + *(v3 + 40), v1, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v5 = type metadata accessor for OnScreenContent.UIMetadata();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  if (v7 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 536), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v10 = type metadata accessor for IntelligenceProcessInfo();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  else
  {
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v13 = *(v0 + 512);
    OnScreenContent.UIMetadata.window.getter();
    (*(v6 + 8))(v9, v5);
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 544);
  v15 = GenerateTextFromMediaController.appName(from:)(v14);
  v17 = v16;
  outlined destroy of OnScreenContent.Document?(v14, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v18 = static Disclaimer.partnerName;
  v19 = *(*(v0 + 56) + 40);

  v20.value._countAndFlagsBits = v15;
  v20.value._object = v17;
  GenerateTextFromMediaController.getDocumentConfirmationText(partnerName:isExplicit:appName:)(v18, v19, v20);
  if (v19)
  {
    v21 = 30;
  }

  else
  {
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    if (MEMORY[0x253056490]())
    {
      v21 = 30;
    }

    else
    {
      v21 = 29;
    }
  }

  swift_bridgeObjectRetain_n();
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122[0] = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18._countAndFlagsBits, v18._object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
  if (v17)
  {

    specialized Dictionary.subscript.setter(v15, v17, 0x656D614E707061, 0xE700000000000000);
  }

  v24 = *(v0 + 504);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v122[0]) = v21;
  v25 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v22);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v122, v18, v25);

  IntentDialog.init(stringLiteral:)();

  *(v0 + 584) = IntelligenceFile.snippetPreviewFile()();
  v26 = *(v0 + 480);
  v28 = *(v0 + 456);
  v27 = *(v0 + 464);
  v30 = *(v0 + 440);
  v29 = *(v0 + 448);
  v31 = *(v0 + 424);
  v114 = *(v0 + 416);
  v32 = *(v0 + 392);
  v33 = *(v0 + 400);
  IntelligenceFile.attributes.getter();
  IntelligenceFile.Attributes.contentType.getter();
  v111 = *(v27 + 8);
  v111(v26, v28);
  static UTType.pdf.getter();
  (*(v33 + 56))(v30, 0, 1, v32);
  v34 = *(v114 + 48);
  outlined init with copy of Date?(v29, v31, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined init with copy of Date?(v30, v31 + v34, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v35 = *(v33 + 48);
  if (v35(v31, 1, v32) != 1)
  {
    v38 = *(v0 + 392);
    outlined init with copy of Date?(*(v0 + 424), *(v0 + 432), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v39 = v35(v31 + v34, 1, v38);
    v40 = *(v0 + 440);
    v41 = *(v0 + 448);
    v42 = *(v0 + 432);
    if (v39 != 1)
    {
      v115 = *(v0 + 424);
      v46 = *(v0 + 400);
      v47 = *(v0 + 408);
      v48 = *(v0 + 392);
      (*(v46 + 32))(v47, v31 + v34, v48);
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v46 + 8);
      v50(v47, v48);
      outlined destroy of OnScreenContent.Document?(v40, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      outlined destroy of OnScreenContent.Document?(v41, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      v50(v42, v48);
      outlined destroy of OnScreenContent.Document?(v115, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      if (v49)
      {
        goto LABEL_23;
      }

LABEL_21:
      v45 = 0;
      goto LABEL_24;
    }

    v43 = *(v0 + 392);
    v44 = *(v0 + 400);
    outlined destroy of OnScreenContent.Document?(*(v0 + 440), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined destroy of OnScreenContent.Document?(v41, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v44 + 8))(v42, v43);
LABEL_20:
    outlined destroy of OnScreenContent.Document?(*(v0 + 424), &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
    goto LABEL_21;
  }

  v36 = *(v0 + 448);
  v37 = *(v0 + 392);
  outlined destroy of OnScreenContent.Document?(*(v0 + 440), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined destroy of OnScreenContent.Document?(v36, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v35(v31 + v34, 1, v37) != 1)
  {
    goto LABEL_20;
  }

  outlined destroy of OnScreenContent.Document?(*(v0 + 424), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
LABEL_23:
  v51 = *(v0 + 136);
  v45 = GenerateTextFromMediaController.generatePDFThumbnail(for:)(*(v0 + 104));
LABEL_24:
  *(v0 + 592) = v45;
  v107 = *(*(v0 + 336) + 104);
  v107(*(v0 + 352), *MEMORY[0x277D0D860], *(v0 + 328));
  if (v45)
  {
    v52 = v45;
    UIImage.getPlatformData()();
  }

  v53 = *(v0 + 384);
  v54 = *(v0 + 352);
  v55 = *(v0 + 304);
  v56 = *(v0 + 312);
  v57 = *(v0 + 296);
  v58 = *(v0 + 72);
  v59 = *(*(v0 + 64) + v120[9]);

  LOBYTE(v122[0]) = 0;
  Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
  outlined init with copy of Date?(v58, v57, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  if ((*(v56 + 48))(v57, 1, v55) == 1)
  {
    v60 = *(v0 + 384);
    v61 = *(v0 + 360);
    v62 = *(v0 + 368);
    outlined destroy of OnScreenContent.Document?(*(v0 + 296), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
    v63 = *(v62 + 72);
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_24FE1A560;
    (*(v62 + 16))(v65 + v64, v60, v61);
    v66 = 0;
    v67 = 0;
  }

  else
  {
    v68 = *(v0 + 320);
    v69 = *(v0 + 80);
    outlined init with take of SelectedContent(*(v0 + 296), v68, type metadata accessor for ImageInfo);
    v71 = *v68;
    v70 = v68[1];
    v72 = *v69;

    *v69 = v71;
    v66 = IntelligenceFile.snippetPreviewFile()();
    v73 = *(v0 + 472);
    v103 = *(v0 + 456);
    v116 = *(v0 + 384);
    v105 = *(v0 + 376);
    v75 = *(v0 + 360);
    v74 = *(v0 + 368);
    v118 = *(v0 + 320);
    v107(*(v0 + 344), *MEMORY[0x277D0D858], *(v0 + 328));

    v109 = v70;
    UIImage.getPlatformData()();
    IntelligenceFile.attributes.getter();
    IntelligenceFile.Attributes.fileSize.getter();
    LOBYTE(v71) = v76;
    v111(v73, v103);
    LOBYTE(v122[0]) = v71 & 1;
    Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
    v77 = *(v74 + 72);
    v78 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_24FE1A8C0;
    v79 = v65 + v78;
    v80 = *(v74 + 16);
    v80(v79, v105, v75);
    v80(v79 + v77, v116, v75);
    (*(v74 + 8))(v105, v75);
    outlined destroy of DocumentInfo(v118, type metadata accessor for ImageInfo);
    v67 = v109;
  }

  *(v0 + 608) = v67;
  *(v0 + 600) = v66;
  v81 = *(v0 + 256);
  v97 = *(v0 + 264);
  v98 = *(v0 + 248);
  v100 = *(v0 + 240);
  v101 = *(v0 + 232);
  v106 = *(v0 + 288);
  v108 = *(v0 + 224);
  v110 = *(v0 + 216);
  v112 = *(v0 + 208);
  v113 = *(v0 + 504);
  v117 = *(v0 + 200);
  v119 = *(v0 + 144);
  v102 = *(v0 + 128);
  v104 = *(v0 + 120);
  v99 = *(v0 + 112);
  v96 = *(v0 + 96);
  v83 = *(v0 + 56);
  v82 = *(v0 + 64);
  **(v0 + 88) = v65;
  LOBYTE(v122[0]) = 40;
  v84 = MEMORY[0x277D84F90];
  v85 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v122, v18, v85);

  LOBYTE(v122[0]) = 39;
  v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v84);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v122, v18, v86);

  v87 = (v83 + *(type metadata accessor for GenerativeRequestMetadata() + 52));
  *(v0 + 616) = *v87;
  *(v0 + 624) = v87[1];
  v88 = (v82 + v120[6]);
  v90 = *v88;
  v89 = v88[1];
  (*(v81 + 16))(v97, v96, v98);
  outlined init with copy of Date?(v82 + v120[8], v100, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(v99, v101, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)();
  type metadata accessor for SnippetPluginUtils();
  static SnippetPluginUtils.createConfirmationContainer(payload:)(v106);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  *(v0 + 48) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static IntentResult.result<>(pluginContainer:dialog:)();
  (*(v110 + 8))(v108, v112);
  static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()();
  v91 = *(v119 + 48);
  v121 = (*(v119 + 40) + **(v119 + 40));
  v92 = *(*(v119 + 40) + 4);
  v93 = swift_task_alloc();
  *(v0 + 632) = v93;
  *v93 = v0;
  v93[1] = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  v94 = *(v0 + 200);

  return v121(v0 + 16, v94, 0);
}

{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  }

  else
  {
    v3 = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[71];
  v2 = v0[70];

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v2, v1);
}

{
  v80 = v0;
  v1 = v0[69];

  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.genFromMediaController);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v79 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v79);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x800000024FE20190, &v79);
    _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s User confirmed", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
  }

  v7 = v0[72];
  v8 = v0[22];
  v9 = type metadata accessor for OSSignpostID();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("WaitUserConfirmToContinue.Time", 30, 2, v8);
  outlined destroy of OnScreenContent.Document?(v8, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if ((MEMORY[0x253056490]() & 1) == 0)
  {
    static GenerativeAssistantSettingsUserDefaults.logConfirmationCount()();
  }

  if (v0[78])
  {
    v10 = v0[77];
    v11 = v0[21];
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    v12 = SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter();
    v13 = v0[78];
    v14 = v0[77];
    if (v12)
    {
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      static SessionPersistenceUtils.setConfirmation(forMediaSession:)();
    }

    v28 = v0[76];
    v29 = v0[75];
    v30 = v0[74];
    v31 = v0[73];
    v32 = v0[62];
    v74 = v0[61];
    v77 = v0[63];
    v33 = v0[46];
    v68 = v0[45];
    v71 = v0[48];
    v34 = v0[35];
    v62 = v0[34];
    v65 = v0[36];
    v35 = v0[20];
    v36 = v0[21];
    v37 = v0[19];

    (*(v35 + 8))(v36, v37);
    (*(v34 + 8))(v65, v62);
    (*(v33 + 8))(v71, v68);
    (*(v32 + 8))(v77, v74);
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[76];
    v19 = v0[75];
    v70 = v0[74];
    v61 = v0[73];
    v21 = v0[62];
    v20 = v0[63];
    v22 = v0[61];
    v23 = v0[46];
    v73 = v0[45];
    v76 = v0[48];
    v24 = v0[35];
    v25 = v0[34];
    v64 = v25;
    v67 = v0[36];
    if (v17)
    {
      v59 = v0[63];
      v26 = swift_slowAlloc();
      v57 = v22;
      v27 = swift_slowAlloc();
      v79 = v27;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v79);
      *(v26 + 12) = 2080;
      *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x800000024FE20190, &v79);
      _os_log_impl(&dword_24FD67000, v15, v16, "%s.%s Attempting to save the current sessionID but found nil", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v27, -1, -1);
      MEMORY[0x253057F40](v26, -1, -1);

      (*(v24 + 8))(v67, v64);
      (*(v23 + 8))(v76, v73);
      (*(v21 + 8))(v59, v57);
    }

    else
    {

      (*(v24 + 8))(v67, v64);
      (*(v23 + 8))(v76, v73);
      (*(v21 + 8))(v20, v22);
    }
  }

  v38 = v0[68];
  v39 = v0[67];
  v40 = v0[66];
  v41 = v0[63];
  v42 = v0[59];
  v43 = v0[60];
  v45 = v0[55];
  v44 = v0[56];
  v47 = v0[53];
  v46 = v0[54];
  v50 = v0[51];
  v51 = v0[48];
  v52 = v0[47];
  v53 = v0[44];
  v54 = v0[43];
  v55 = v0[40];
  v56 = v0[37];
  v58 = v0[36];
  v60 = v0[33];
  v63 = v0[30];
  v66 = v0[29];
  v69 = v0[28];
  v72 = v0[25];
  v75 = v0[22];
  v78 = v0[21];

  v48 = v0[1];

  return v48();
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[71];
  v2 = v0[70];

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v2, v1);
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[73];
  v4 = v0[69];
  v18 = v0[68];
  v19 = v0[67];
  v5 = v0[62];
  v17 = v0[63];
  v15 = v0[74];
  v16 = v0[61];
  v20 = v0[66];
  v21 = v0[60];
  v22 = v0[59];
  v23 = v0[56];
  v24 = v0[55];
  v25 = v0[54];
  v26 = v0[53];
  v27 = v0[51];
  v14 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v28 = v0[47];
  v29 = v0[44];
  v30 = v0[43];
  v31 = v0[40];
  v8 = v0[36];
  v10 = v0[34];
  v9 = v0[35];
  v32 = v0[37];
  v33 = v0[33];
  v34 = v0[30];
  v35 = v0[29];
  v36 = v0[28];
  v37 = v0[25];
  v38 = v0[22];
  v39 = v0[21];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v14, v7);
  (*(v5 + 8))(v17, v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v11 = v0[1];
  v12 = v0[80];

  return v11();
}

{
  v123 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 536);
  v2 = *(v0 + 64);
  *(v0 + 576) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
  v3 = type metadata accessor for DocumentInfo(0);
  v4 = *(v2 + *(v3 + 20));
  v120 = v3;
  outlined init with copy of Date?(v2 + *(v3 + 40), v1, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v5 = type metadata accessor for OnScreenContent.UIMetadata();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  if (v7 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 536), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v10 = type metadata accessor for IntelligenceProcessInfo();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  else
  {
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v13 = *(v0 + 512);
    OnScreenContent.UIMetadata.window.getter();
    (*(v6 + 8))(v9, v5);
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 544);
  v15 = GenerateTextFromMediaController.appName(from:)(v14);
  v17 = v16;
  outlined destroy of OnScreenContent.Document?(v14, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v18 = static Disclaimer.partnerName;
  v19 = *(*(v0 + 56) + 40);

  v20.value._countAndFlagsBits = v15;
  v20.value._object = v17;
  GenerateTextFromMediaController.getDocumentConfirmationText(partnerName:isExplicit:appName:)(v18, v19, v20);
  if (v19)
  {
    v21 = 30;
  }

  else
  {
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    if (MEMORY[0x253056490]())
    {
      v21 = 30;
    }

    else
    {
      v21 = 29;
    }
  }

  swift_bridgeObjectRetain_n();
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122[0] = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18._countAndFlagsBits, v18._object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
  if (v17)
  {

    specialized Dictionary.subscript.setter(v15, v17, 0x656D614E707061, 0xE700000000000000);
  }

  v24 = *(v0 + 504);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v122[0]) = v21;
  v25 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v22);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v122, v18, v25);

  IntentDialog.init(stringLiteral:)();

  *(v0 + 584) = IntelligenceFile.snippetPreviewFile()();
  v26 = *(v0 + 480);
  v28 = *(v0 + 456);
  v27 = *(v0 + 464);
  v30 = *(v0 + 440);
  v29 = *(v0 + 448);
  v31 = *(v0 + 424);
  v114 = *(v0 + 416);
  v32 = *(v0 + 392);
  v33 = *(v0 + 400);
  IntelligenceFile.attributes.getter();
  IntelligenceFile.Attributes.contentType.getter();
  v111 = *(v27 + 8);
  v111(v26, v28);
  static UTType.pdf.getter();
  (*(v33 + 56))(v30, 0, 1, v32);
  v34 = *(v114 + 48);
  outlined init with copy of Date?(v29, v31, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined init with copy of Date?(v30, v31 + v34, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v35 = *(v33 + 48);
  if (v35(v31, 1, v32) != 1)
  {
    v38 = *(v0 + 392);
    outlined init with copy of Date?(*(v0 + 424), *(v0 + 432), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v39 = v35(v31 + v34, 1, v38);
    v40 = *(v0 + 440);
    v41 = *(v0 + 448);
    v42 = *(v0 + 432);
    if (v39 != 1)
    {
      v115 = *(v0 + 424);
      v46 = *(v0 + 400);
      v47 = *(v0 + 408);
      v48 = *(v0 + 392);
      (*(v46 + 32))(v47, v31 + v34, v48);
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v46 + 8);
      v50(v47, v48);
      outlined destroy of OnScreenContent.Document?(v40, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      outlined destroy of OnScreenContent.Document?(v41, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      v50(v42, v48);
      outlined destroy of OnScreenContent.Document?(v115, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      if (v49)
      {
        goto LABEL_23;
      }

LABEL_21:
      v45 = 0;
      goto LABEL_24;
    }

    v43 = *(v0 + 392);
    v44 = *(v0 + 400);
    outlined destroy of OnScreenContent.Document?(*(v0 + 440), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined destroy of OnScreenContent.Document?(v41, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v44 + 8))(v42, v43);
LABEL_20:
    outlined destroy of OnScreenContent.Document?(*(v0 + 424), &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
    goto LABEL_21;
  }

  v36 = *(v0 + 448);
  v37 = *(v0 + 392);
  outlined destroy of OnScreenContent.Document?(*(v0 + 440), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined destroy of OnScreenContent.Document?(v36, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v35(v31 + v34, 1, v37) != 1)
  {
    goto LABEL_20;
  }

  outlined destroy of OnScreenContent.Document?(*(v0 + 424), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
LABEL_23:
  v51 = *(v0 + 136);
  v45 = GenerateTextFromMediaController.generatePDFThumbnail(for:)(*(v0 + 104));
LABEL_24:
  *(v0 + 592) = v45;
  v107 = *(*(v0 + 336) + 104);
  v107(*(v0 + 352), *MEMORY[0x277D0D860], *(v0 + 328));
  if (v45)
  {
    v52 = v45;
    UIImage.getPlatformData()();
  }

  v53 = *(v0 + 384);
  v54 = *(v0 + 352);
  v55 = *(v0 + 304);
  v56 = *(v0 + 312);
  v57 = *(v0 + 296);
  v58 = *(v0 + 72);
  v59 = *(*(v0 + 64) + v120[9]);

  LOBYTE(v122[0]) = 0;
  Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
  outlined init with copy of Date?(v58, v57, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  if ((*(v56 + 48))(v57, 1, v55) == 1)
  {
    v60 = *(v0 + 384);
    v61 = *(v0 + 360);
    v62 = *(v0 + 368);
    outlined destroy of OnScreenContent.Document?(*(v0 + 296), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
    v63 = *(v62 + 72);
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_24FE1A560;
    (*(v62 + 16))(v65 + v64, v60, v61);
    v66 = 0;
    v67 = 0;
  }

  else
  {
    v68 = *(v0 + 320);
    v69 = *(v0 + 80);
    outlined init with take of SelectedContent(*(v0 + 296), v68, type metadata accessor for ImageInfo);
    v71 = *v68;
    v70 = v68[1];
    v72 = *v69;

    *v69 = v71;
    v66 = IntelligenceFile.snippetPreviewFile()();
    v73 = *(v0 + 472);
    v103 = *(v0 + 456);
    v116 = *(v0 + 384);
    v105 = *(v0 + 376);
    v75 = *(v0 + 360);
    v74 = *(v0 + 368);
    v118 = *(v0 + 320);
    v107(*(v0 + 344), *MEMORY[0x277D0D858], *(v0 + 328));

    v109 = v70;
    UIImage.getPlatformData()();
    IntelligenceFile.attributes.getter();
    IntelligenceFile.Attributes.fileSize.getter();
    LOBYTE(v71) = v76;
    v111(v73, v103);
    LOBYTE(v122[0]) = v71 & 1;
    Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
    v77 = *(v74 + 72);
    v78 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_24FE1A8C0;
    v79 = v65 + v78;
    v80 = *(v74 + 16);
    v80(v79, v105, v75);
    v80(v79 + v77, v116, v75);
    (*(v74 + 8))(v105, v75);
    outlined destroy of DocumentInfo(v118, type metadata accessor for ImageInfo);
    v67 = v109;
  }

  *(v0 + 608) = v67;
  *(v0 + 600) = v66;
  v81 = *(v0 + 256);
  v97 = *(v0 + 264);
  v98 = *(v0 + 248);
  v100 = *(v0 + 240);
  v101 = *(v0 + 232);
  v106 = *(v0 + 288);
  v108 = *(v0 + 224);
  v110 = *(v0 + 216);
  v112 = *(v0 + 208);
  v113 = *(v0 + 504);
  v117 = *(v0 + 200);
  v119 = *(v0 + 144);
  v102 = *(v0 + 128);
  v104 = *(v0 + 120);
  v99 = *(v0 + 112);
  v96 = *(v0 + 96);
  v83 = *(v0 + 56);
  v82 = *(v0 + 64);
  **(v0 + 88) = v65;
  LOBYTE(v122[0]) = 40;
  v84 = MEMORY[0x277D84F90];
  v85 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v122, v18, v85);

  LOBYTE(v122[0]) = 39;
  v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v84);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v122, v18, v86);

  v87 = (v83 + *(type metadata accessor for GenerativeRequestMetadata() + 52));
  *(v0 + 616) = *v87;
  *(v0 + 624) = v87[1];
  v88 = (v82 + v120[6]);
  v90 = *v88;
  v89 = v88[1];
  (*(v81 + 16))(v97, v96, v98);
  outlined init with copy of Date?(v82 + v120[8], v100, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(v99, v101, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)();
  type metadata accessor for SnippetPluginUtils();
  static SnippetPluginUtils.createConfirmationContainer(payload:)(v106);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  *(v0 + 48) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static IntentResult.result<>(pluginContainer:dialog:)();
  (*(v110 + 8))(v108, v112);
  static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()();
  v91 = *(v119 + 48);
  v121 = (*(v119 + 40) + **(v119 + 40));
  v92 = *(*(v119 + 40) + 4);
  v93 = swift_task_alloc();
  *(v0 + 632) = v93;
  *v93 = v0;
  v93[1] = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  v94 = *(v0 + 200);

  return v121(v0 + 16, v94, 0);
}

{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  }

  else
  {
    v3 = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[71];
  v2 = v0[70];

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v2, v1);
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[71];
  v2 = v0[70];

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v2, v1);
}

uint64_t lazy protocol witness table accessor for type GATError and conformance GATError(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for LSBundleRecord()
{
  result = lazy cache variable for type metadata for LSBundleRecord;
  if (!lazy cache variable for type metadata for LSBundleRecord)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LSBundleRecord);
  }

  return result;
}

uint64_t dispatch thunk of EntityConverterProviding.convert(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v13(a1, a2, a3, a4);
}

uint64_t EntityConverter.convert(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for OnScreenContent.UIMetadata() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for OnScreenContent.Content() - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for OnScreenContent();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = type metadata accessor for OnScreenContent.EntityFormat();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetSgMR) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0V_26GenerativeAssistantActions0E4TypeOtMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V_26GenerativeAssistantActions0E4TypeOtMR);
  v3[19] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v17 = type metadata accessor for TypedValue.EntityIdentifierValue();
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](EntityConverter.convert(content:), 0, 0);
}

uint64_t EntityConverter.convert(content:)()
{
  v72 = v0;
  v1 = v0[18];
  v2 = v0[3];
  OnScreenContent.entityWithType.getter(v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMR);
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[18], &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetSgMR);
    if (one-time initialization token for entityConverter != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.entityConverter);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v71 = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v71);
      *(v7 + 12) = 2080;
      *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v71);
      _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s content is not an entity, returning nil", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v8, -1, -1);
      MEMORY[0x253057F40](v7, -1, -1);
    }

    v9 = v0[23];
    v10 = v0[20];
    v12 = v0[17];
    v11 = v0[18];
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    v16 = v0[11];
    v17 = v0[8];
    v66 = v0[7];
    v67 = v0[6];
    v69 = v0[5];
    (*(v0[10] + 56))(v0[2], 1, 1, v0[9]);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[23];
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    v24 = *(v0[18] + *(v3 + 48));
    v25 = *(v23 + 48);
    v26 = *(v0[22] + 32);
    v26(v22);
    *(v22 + v25) = v24;
    v27 = *(v22 + *(v23 + 48));
    (v26)(v20, v22, v21);
    if (v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMd, &_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMR);
      v28 = *(type metadata accessor for IntelligenceImage.Representation() - 8);
      v29 = *(v28 + 72);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_24FE1A8C0;
      static ContentLoader.fullRepresentation.getter();
      static ContentLoader.thumbnailRepresentation.getter();
      v32 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC21UIIntelligenceSupport17IntelligenceImageV14RepresentationV_Tt0g5Tf4g_n(v31);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v33 = MEMORY[0x277D1D398];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
      v34 = *(type metadata accessor for UTType() - 8);
      v35 = *(v34 + 72);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_24FE1B550;
      static UTType.pdf.getter();
      static UTType.rtf.getter();
      static UTType.plainText.getter();
      v33 = MEMORY[0x277D1D3A0];
    }

    v37 = v0[12];
    v38 = v0[13];
    *v0[17] = v32;
    v39 = *v33;
    (*(v38 + 104))();
    if (one-time initialization token for entityConverter != -1)
    {
      swift_once();
    }

    v40 = v0[16];
    v41 = v0[17];
    v42 = v0[12];
    v43 = v0[13];
    v44 = type metadata accessor for Logger();
    v0[24] = __swift_project_value_buffer(v44, static Logger.entityConverter);
    v45 = *(v43 + 16);
    v0[25] = v45;
    v0[26] = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v40, v41, v42);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[16];
    if (v48)
    {
      v68 = v0[15];
      v51 = v0[12];
      v50 = v0[13];
      v52 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = v70;
      *v52 = 136315650;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v71);
      *(v52 + 12) = 2080;
      *(v52 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v71);
      *(v52 + 22) = 2080;
      v45(v68, v49, v51);
      v53 = String.init<A>(describing:)();
      v55 = v54;
      v56 = *(v50 + 8);
      v56(v49, v51);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v71);

      *(v52 + 24) = v57;
      _os_log_impl(&dword_24FD67000, v46, v47, "%s.%s attempting to convert entity to format: %s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v70, -1, -1);
      MEMORY[0x253057F40](v52, -1, -1);
    }

    else
    {
      v58 = v0[12];
      v59 = v0[13];

      v56 = *(v59 + 8);
      v56(v49, v58);
    }

    v0[27] = v56;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v0[28] = static MetricsUtils.shared;
    MetricsUtils.recordSignpostBegin(for:)("EntityConversion.Time", 21, 2);
    v60 = *(MEMORY[0x277D1D3C0] + 4);
    v61 = swift_task_alloc();
    v0[29] = v61;
    *v61 = v0;
    v61[1] = EntityConverter.convert(content:);
    v62 = v0[23];
    v63 = v0[17];
    v64 = v0[8];
    v65 = v0[4];

    return MEMORY[0x282176410](v64, v62, v63);
  }
}

{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = EntityConverter.convert(content:);
  }

  else
  {
    v3 = EntityConverter.convert(content:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v76 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[24];
    outlined destroy of OnScreenContent.Document?(v3, &_s23IntelligenceFlowContext15OnScreenContentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentVSgMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[27];
    v10 = v0[22];
    v9 = v0[23];
    v11 = v0[21];
    v12 = v0[17];
    v14 = v0[12];
    v13 = v0[13];
    if (v7)
    {
      v71 = v0[23];
      v15 = swift_slowAlloc();
      v67 = v11;
      v16 = swift_slowAlloc();
      v75 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v75);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v75);
      _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s converted content is unexpectedly nil", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v16, -1, -1);
      MEMORY[0x253057F40](v15, -1, -1);

      v8(v12, v14);
      (*(v10 + 8))(v71, v67);
    }

    else
    {

      v8(v12, v14);
      (*(v10 + 8))(v9, v11);
    }

    v38 = 1;
  }

  else
  {
    v17 = v0[28];
    v19 = v0[25];
    v18 = v0[26];
    v72 = v0[24];
    v20 = v0[17];
    v21 = v0[14];
    v22 = v0[12];
    v23 = v0[7];
    (*(v2 + 32))(v0[11], v3, v1);
    v24 = type metadata accessor for OSSignpostID();
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("EntityConversion.Time", 21, 2, v23);
    outlined destroy of OnScreenContent.Document?(v23, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    v19(v21, v20, v22);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[27];
    if (v27)
    {
      v64 = v0[25];
      v68 = v0[26];
      v29 = v0[14];
      v30 = v0[15];
      v31 = v0[12];
      v73 = v0[13];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v75 = v33;
      *v32 = 136315650;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v75);
      *(v32 + 12) = 2080;
      *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v75);
      *(v32 + 22) = 2080;
      v64(v30, v29, v31);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      v28(v29, v31);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v75);

      *(v32 + 24) = v37;
      _os_log_impl(&dword_24FD67000, v25, v26, "%s.%s app entity was successfully converted to %s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v33, -1, -1);
      MEMORY[0x253057F40](v32, -1, -1);
    }

    else
    {
      v40 = v0[13];
      v39 = v0[14];
      v41 = v0[12];

      v28(v39, v41);
    }

    v42 = v0[22];
    v69 = v0[23];
    v63 = v0[27];
    v65 = v0[21];
    v43 = v0[11];
    v61 = v0[12];
    v62 = v0[17];
    v45 = v0[9];
    v44 = v0[10];
    v47 = v0[5];
    v46 = v0[6];
    v49 = v0[2];
    v48 = v0[3];
    OnScreenContent.content.getter();
    OnScreenContent.uiMetadata.getter();
    OnScreenContent.init(content:uiMetadata:)();
    (*(v44 + 8))(v43, v45);
    v63(v62, v61);
    (*(v42 + 8))(v69, v65);
    v38 = 0;
  }

  v50 = v0[23];
  v51 = v0[20];
  v53 = v0[17];
  v52 = v0[18];
  v55 = v0[15];
  v54 = v0[16];
  v56 = v0[14];
  v57 = v0[11];
  v58 = v0[8];
  v66 = v0[7];
  v70 = v0[6];
  v74 = v0[5];
  (*(v0[10] + 56))(v0[2], v38, 1, v0[9]);

  v59 = v0[1];

  return v59();
}

{
  v36 = v0;
  v1 = v0[30];
  v2 = v0[24];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v35);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v35);
    *(v7 + 22) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s unable to convert the app entity due to an error: %@", v7, 0x20u);
    outlined destroy of OnScreenContent.Document?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v7, -1, -1);
  }

  v12 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[21];
  v18 = v0[17];
  v19 = v0[12];
  v20 = v0[13];
  MetricsUtils.emitSignpostEvent(_:)("Error.EntityConversion", 22, 2);

  v14(v18, v19);
  (*(v16 + 8))(v15, v17);
  v21 = v0[23];
  v22 = v0[20];
  v24 = v0[17];
  v23 = v0[18];
  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[14];
  v28 = v0[11];
  v29 = v0[8];
  v32 = v0[7];
  v33 = v0[6];
  v34 = v0[5];
  (*(v0[10] + 56))(v0[2], 1, 1, v0[9]);

  v30 = v0[1];

  return v30();
}

BOOL static VisualIntelligenceUtils.isVisualIntelligenceCameraForeground()()
{
  if (one-time initialization token for visualIntelligenceUtils != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.visualIntelligenceUtils);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v9);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x800000024FE202C0, v9);
    _os_log_impl(&dword_24FD67000, v1, v2, "%s.%s isVisualIntelligenceCameraForeground executed", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v4, -1, -1);
    MEMORY[0x253057F40](v3, -1, -1);
  }

  v6 = ForegroundAppDetector.getForegroundAppBundleID()();
  if (v5)
  {

    return 0;
  }

  if (!v6.value._object)
  {
    return 0;
  }

  v8 = specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(v6.value._countAndFlagsBits, v6.value._object);

  return (v8 & 1) != 0;
}

Swift::Bool __swiftcall OnScreenContent.isVisualIntelligenceCameraEntity()()
{
  v1 = type metadata accessor for IntelligenceProcessInfo();
  v62 = *(v1 - 8);
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v1);
  v60 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OnScreenContent.UIMetadata();
  v64 = *(v61 - 8);
  v4 = *(v64 + 64);
  v5 = MEMORY[0x28223BE20](v61);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v9 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = type metadata accessor for OnScreenContent.Content();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  OnScreenContent.content.getter();
  if ((*(v21 + 88))(v24, v20) != *MEMORY[0x277D1D360] || !OnScreenContent.isAppEntity()())
  {
    goto LABEL_18;
  }

  v55 = v24;
  v56 = v20;
  v57 = v21;
  v54 = v0;
  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v25 = *(v64 + 8);
  v64 += 8;
  v53 = v25;
  v25(v8, v61);
  OnScreenContent.UIMetadata.Window.appProcess.getter();
  v26 = *(v63 + 8);
  v63 += 8;
  v52 = v26;
  v26(v12, v9);
  v27 = v62;
  v51 = *(v62 + 48);
  v28 = v51(v19, 1, v1);
  v58 = v1;
  if (v28 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v19, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = IntelligenceProcessInfo.bundleIdentifier.getter();
    v30 = v31;
    (*(v27 + 8))(v19, v1);
  }

  v32 = specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(v29, v30);

  if (v32)
  {
    LOBYTE(v33) = 1;
    v20 = v56;
LABEL_10:
    v21 = v57;
    v24 = v55;
LABEL_19:
    (*(v21 + 8))(v24, v20);
    return v33;
  }

  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v53(v8, v61);
  OnScreenContent.UIMetadata.Window.appProcess.getter();
  v52(v12, v9);
  v34 = v58;
  v35 = v51(v17, 1, v58);
  v20 = v56;
  if (v35 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v17, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    LOBYTE(v33) = 0;
    goto LABEL_10;
  }

  v36 = IntelligenceProcessInfo.bundleIdentifier.getter();
  v33 = v37;
  v38 = v62;
  v63 = *(v62 + 8);
  (v63)(v17, v34);
  v21 = v57;
  v24 = v55;
  if (!v33)
  {
    goto LABEL_19;
  }

  if (v36 == 0xD000000000000015 && v33 == 0x800000024FE203B0)
  {

    goto LABEL_16;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v39 & 1) == 0)
  {
LABEL_18:
    LOBYTE(v33) = 0;
    goto LABEL_19;
  }

LABEL_16:
  v40 = v59;
  OnScreenContent.uiMetadata.getter();
  v41 = OnScreenContent.UIMetadata.nestedRemoteProcesses.getter();
  result = (v53)(v40, v61);
  v43 = *(v41 + 16);
  if (!v43)
  {
LABEL_34:

    LOBYTE(v33) = 0;
LABEL_39:
    v21 = v57;
    goto LABEL_19;
  }

  v44 = 0;
  v64 = v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v61 = 0x800000024FE20390;
  v59 = 0x800000024FE20370;
  v54 = 0x800000024FE20340;
  v45 = v60;
  while (v44 < *(v41 + 16))
  {
    (*(v62 + 16))(v45, v64 + *(v62 + 72) * v44, v34);
    v46 = IntelligenceProcessInfo.bundleIdentifier.getter();
    if (v47)
    {
      v48 = v46;
      v49 = v47;
      if (v46 == 0xD000000000000010 && v47 == v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v48 == 0xD00000000000001ELL && v49 == v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        (v63)(v60, v58);
        goto LABEL_38;
      }

      if (v48 == 0xD000000000000022 && v49 == v54)
      {

        (v63)(v60, v58);
LABEL_37:

LABEL_38:
        LOBYTE(v33) = 1;
        goto LABEL_39;
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v45 = v60;
      result = (v63)(v60, v58);
      if (v50)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = (v63)(v45, v34);
    }

    ++v44;
    v34 = v58;
    if (v43 == v44)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD000000000000010 && 0x800000024FE20390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001ELL && 0x800000024FE20370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000022 && 0x800000024FE20340 == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v51 - v8;
  v10 = type metadata accessor for DirectInvocationClientID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v51 - v16;
  outlined init with copy of DirectInvocationClientID?(a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v9, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_19:
    if (one-time initialization token for visualIntelligenceUtils != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.visualIntelligenceUtils);
    v19 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v34))
    {
      goto LABEL_40;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v52[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v52);
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v52);
    v37 = "%s.%s sessionId not available";
LABEL_27:
    _os_log_impl(&dword_24FD67000, v19, v34, v37, v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v36, -1, -1);
    MEMORY[0x253057F40](v35, -1, -1);
    goto LABEL_40;
  }

  (*(v11 + 32))(v17, v9, v10);
  (*(v11 + 104))(v15, *MEMORY[0x277D0D6F0], v10);
  lazy protocol witness table accessor for type DirectInvocationClientID and conformance DirectInvocationClientID();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v52[0] == v51[0] && v52[1] == v51[1])
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v27 = *(v11 + 8);
  v27(v15, v10);

  if (v26)
  {
    if (one-time initialization token for visualIntelligenceUtils != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.visualIntelligenceUtils);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v52);
      *(v31 + 12) = 2080;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v52);
      _os_log_impl(&dword_24FD67000, v29, v30, "%s.%s Current session from Direct Invocation", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v32, -1, -1);
      MEMORY[0x253057F40](v31, -1, -1);
    }

    v27(v17, v10);
    return 1;
  }

  v27(v17, v10);
  if (!a2)
  {
    goto LABEL_19;
  }

LABEL_3:
  v18 = static SessionPersistenceUtils.getExtensionDomain()();
  v19 = MEMORY[0x2530562A0](v18);

  if (!v19)
  {
    if (one-time initialization token for visualIntelligenceUtils != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.visualIntelligenceUtils);
    v19 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v34))
    {
      goto LABEL_40;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v52[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v52);
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v52);
    v37 = "%s.%s Cannot retrieve defaults from the extension domain";
    goto LABEL_27;
  }

  v20 = static SessionPersistenceUtils.getVISessionKey()();
  v21 = MEMORY[0x253056EA0](v20);

  v22 = [v19 stringForKey:v21];

  if (v22)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == a1 && v25 == a2)
    {

LABEL_29:
      if (one-time initialization token for visualIntelligenceUtils != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.visualIntelligenceUtils);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v52[0] = v44;
        *v43 = 136315650;
        *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v52);
        *(v43 + 12) = 2080;
        *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v52);
        *(v43 + 22) = 2080;
        *(v43 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v52);
        _os_log_impl(&dword_24FD67000, v41, v42, "%s.%s sessionId matched. We are still in the same VI session %s", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v44, -1, -1);
        MEMORY[0x253057F40](v43, -1, -1);
      }

      return 1;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_29;
    }
  }

  if (one-time initialization token for visualIntelligenceUtils != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.visualIntelligenceUtils);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v52[0] = v50;
    *v49 = 136315394;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v52);
    *(v49 + 12) = 2080;
    *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v52);
    _os_log_impl(&dword_24FD67000, v47, v48, "%s.%s We are NOT in a Visual Intelligence session.", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v50, -1, -1);
    MEMORY[0x253057F40](v49, -1, -1);
  }

LABEL_40:
  return 0;
}

uint64_t outlined init with copy of DirectInvocationClientID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DirectInvocationClientID and conformance DirectInvocationClientID()
{
  result = lazy protocol witness table cache variable for type DirectInvocationClientID and conformance DirectInvocationClientID;
  if (!lazy protocol witness table cache variable for type DirectInvocationClientID and conformance DirectInvocationClientID)
  {
    type metadata accessor for DirectInvocationClientID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DirectInvocationClientID and conformance DirectInvocationClientID);
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of Date?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of Date?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      type metadata accessor for ModelResponse();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);
  type metadata accessor for ModelResponse();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t static ContentLoader.fullRepresentation.getter(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, void (*a4)(uint64_t, void))
{
  IntelligenceImage.Representation.init()();
  v8 = IntelligenceImage.Representation.sizeConstraints.modify();
  a2(a1, 0);
  v8(&v16, 0);
  v9 = IntelligenceImage.Representation.sizeConstraints.modify();
  a4(a3, 0);
  v9(&v16, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v10 = *(type metadata accessor for UTType() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_24FE1A560;
  static UTType.jpeg.getter();
  IntelligenceImage.Representation.preferredFormats.setter();
  if (one-time initialization token for _compressionRatio != -1)
  {
    swift_once();
  }

  if (byte_27F39FB20 == 1)
  {
    v13 = unk_27F39FB10;
    v14 = static Overrides._compressionRatio;

    v13(&v16, v14);
  }

  IntelligenceImage.Representation.lossyCompressionQuality.setter();
  return IntelligenceImage.Representation.alwaysStripMetadata.setter();
}

uint64_t closure #1 in ContentLoader.load()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  outlined init with copy of ContentLoader(a2, v21);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v5 + 32))(v15 + v14, v8, v4);
  v16 = v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = v21[3];
  *(v16 + 32) = v21[2];
  *(v16 + 48) = v17;
  *(v16 + 64) = v21[4];
  *(v16 + 80) = v22;
  v18 = v21[1];
  *v16 = v21[0];
  *(v16 + 16) = v18;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in ContentLoader.load(), v15);
}

uint64_t closure #1 in closure #1 in ContentLoader.load()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[229] = a5;
  v5[223] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySay23IntelligenceFlowContext15OnScreenContentVG__GMd, &_sScS12ContinuationV11YieldResultOySay23IntelligenceFlowContext15OnScreenContentVG__GMR);
  v5[230] = v6;
  v7 = *(v6 - 8);
  v5[231] = v7;
  v8 = *(v7 + 64) + 15;
  v5[232] = swift_task_alloc();
  v5[233] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

uint64_t closure #1 in closure #1 in ContentLoader.load()()
{
  v1 = *(v0 + 1832);
  outlined init with copy of ContentLoader(v1, v0 + 1336);
  v2 = swift_allocObject();
  *(v0 + 1872) = v2;
  v3 = *(v0 + 1384);
  *(v2 + 48) = *(v0 + 1368);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v0 + 1400);
  *(v2 + 96) = *(v0 + 1416);
  v4 = *(v0 + 1352);
  *(v2 + 16) = *(v0 + 1336);
  *(v2 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23IntelligenceFlowContext15OnScreenContentVGMd, &_sSay23IntelligenceFlowContext15OnScreenContentVGMR);
  swift_asyncLet_begin();
  outlined init with copy of ContentLoader(v1, v0 + 1464);
  v5 = swift_allocObject();
  *(v0 + 1880) = v5;
  v6 = *(v0 + 1512);
  *(v5 + 48) = *(v0 + 1496);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v0 + 1528);
  *(v5 + 96) = *(v0 + 1544);
  v7 = *(v0 + 1480);
  *(v5 + 16) = *(v0 + 1464);
  *(v5 + 32) = v7;
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1592, closure #1 in closure #1 in ContentLoader.load(), v0 + 1296);
}

{
  *(v1 + 1888) = v0;
  if (v0)
  {
    v2 = closure #1 in closure #1 in ContentLoader.load();
  }

  else
  {
    v2 = closure #1 in closure #1 in ContentLoader.load();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[233];
  v2 = v0[231];
  v3 = v0[230];
  v4 = v0[223];
  v0[211] = v0[199];

  v0[237] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR);
  AsyncStream.Continuation.yield(_:)();
  v5 = *(v2 + 8);
  v0[238] = v5;
  v0[239] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return MEMORY[0x282200930](v0 + 82, v0 + 205, closure #1 in closure #1 in ContentLoader.load(), v0 + 200);
}

{
  *(v1 + 1920) = v0;
  if (v0)
  {
    v2 = closure #1 in closure #1 in ContentLoader.load();
  }

  else
  {
    v2 = closure #1 in closure #1 in ContentLoader.load();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[239];
  v2 = v0[238];
  v3 = v0[237];
  v4 = v0[232];
  v5 = v0[230];
  v6 = v0[223];
  v0[217] = v0[205];

  AsyncStream.Continuation.yield(_:)();
  v2(v4, v5);

  return MEMORY[0x282200920](v0 + 82, v0 + 205, closure #1 in closure #1 in ContentLoader.load(), v0 + 218);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1592, closure #1 in closure #1 in ContentLoader.load(), v0 + 1792);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  v1 = v0[237];
  v2 = v0[235];
  v3 = v0[234];
  v4 = v0[233];
  v5 = v0[232];
  v6 = v0[223];
  AsyncStream.Continuation.finish()();

  v7 = v0[1];

  return v7();
}

{
  return MEMORY[0x282200920](v0 + 656, v0 + 1640, closure #1 in closure #1 in ContentLoader.load(), v0 + 1424);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1592, closure #1 in closure #1 in ContentLoader.load(), v0 + 1552);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR);
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[234];
  v4 = v0[233];
  v5 = v0[232];
  v6 = v0[223];
  AsyncStream.Continuation.finish()();

  v7 = v0[1];

  return v7();
}

{
  return MEMORY[0x282200920](v0 + 656, v0 + 1640, closure #1 in closure #1 in ContentLoader.load(), v0 + 1648);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1592, closure #1 in closure #1 in ContentLoader.load(), v0 + 1696);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  v1 = v0[240];
  v2 = v0[237];
  v3 = v0[235];
  v4 = v0[234];
  v5 = v0[233];
  v6 = v0[232];
  v7 = v0[223];
  AsyncStream.Continuation.finish()();

  v8 = v0[1];

  return v8();
}

uint64_t implicit closure #1 in closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #1 in closure #1 in closure #1 in ContentLoader.load();

  return ContentLoader.retrieve(method:)(0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](implicit closure #1 in closure #1 in closure #1 in ContentLoader.load(), 0, 0);
  }
}

uint64_t ContentLoader.retrieve(method:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 128) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  v4 = type metadata accessor for OnScreenContentRequestParameters();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = type metadata accessor for OnScreenContentSources();
  *(v2 + 56) = v7;
  v8 = *(v7 - 8);
  *(v2 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](ContentLoader.retrieve(method:), 0, 0);
}

uint64_t ContentLoader.retrieve(method:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  ContentLoader.getSources(method:)(*(v0 + 128), *(v0 + 80));
  v5 = MEMORY[0x277D1D4E0];
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, MEMORY[0x277D1D4E0]);
  dispatch thunk of SetAlgebra.init()();
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, v5);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v3 + 8);
  *(v0 + 88) = v6;
  *(v0 + 96) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = *(v0 + 80);
  if (v4)
  {
    v6(*(v0 + 80), *(v0 + 56));
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = *(v0 + 24);

    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }

  v15 = *(v0 + 48);
  v16 = *(v0 + 16);
  v17 = *(v0 + 128);
  (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 80), *(v0 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMd, &_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMR);
  v18 = *(type metadata accessor for IntelligenceImage.Representation() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24FE1A8C0;
  static ContentLoader.fullRepresentation.getter(2048, MEMORY[0x277D744E8], 768, MEMORY[0x277D744F0]);
  static ContentLoader.fullRepresentation.getter(256, MEMORY[0x277D744D8], 256, MEMORY[0x277D744E0]);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC21UIIntelligenceSupport17IntelligenceImageV14RepresentationV_Tt0g5Tf4g_n(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  specialized ContentLoader.getContentTypes(representations:)();

  OnScreenContentRequestParameters.init(sources:contentTypes:)();
  OnScreenContentRequestParameters.downscaleWindowSnapshots.setter();
  if (!v17)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v22 = "LoadAllButWindowContentGeneratedPDF.Time";
    v23 = 40;
    goto LABEL_13;
  }

  if (v17 == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v22 = "LoadWindowContentGeneratedPDF.Time";
    v23 = 34;
LABEL_13:
    MetricsUtils.recordSignpostBegin(for:)(v22, v23, 2);
  }

  v24 = *(*(v0 + 16) + 80);
  v25 = *(MEMORY[0x277D1D3B8] + 4);
  v26 = swift_task_alloc();
  *(v0 + 104) = v26;
  *v26 = v0;
  v26[1] = ContentLoader.retrieve(method:);
  v27 = *(v0 + 48);

  return MEMORY[0x282176408](v27);
}

{
  v44 = v0;
  if (*(v0 + 128))
  {
    if (*(v0 + 128) != 1)
    {
      goto LABEL_10;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = type metadata accessor for OSSignpostID();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = "LoadWindowContentGeneratedPDF.Time";
    v4 = 34;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v5 = type metadata accessor for OSSignpostID();
    (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
    v3 = "LoadAllButWindowContentGeneratedPDF.Time";
    v4 = 40;
  }

  MetricsUtils.recordSignpostEnd(for:signPostID:)(v3, v4, 2, v1);
  outlined destroy of OnScreenContent.Document?(*(v0 + 24), &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
LABEL_10:
  if (one-time initialization token for contentLoader != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.contentLoader);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v8, v9))
  {
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 80);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);

    (*(v21 + 8))(v19, v20);
    v16(v17, v18);
    goto LABEL_21;
  }

  v10 = *(v0 + 128);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v43 = v12;
  *v11 = 136315906;
  *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C746E65746E6F43, 0xED0000726564616FLL, &v43);
  *(v11 + 12) = 2080;
  *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE203D0, &v43);
  *(v11 + 22) = 2080;
  if (v10)
  {
    if (v10 != 1)
    {
      v22 = 0xE300000000000000;
      v14 = 7105633;
      goto LABEL_20;
    }

    v13 = "retrieve(method:)";
    v14 = 0xD000000000000019;
  }

  else
  {
    v14 = 0xD00000000000001FLL;
    v13 = "windowContentGeneratedPDF";
  }

  v22 = v13 | 0x8000000000000000;
LABEL_20:
  v23 = *(v0 + 112);
  v41 = *(v0 + 88);
  v42 = *(v0 + 96);
  v39 = *(v0 + 56);
  v40 = *(v0 + 80);
  v38 = *(v0 + 48);
  v25 = *(v0 + 32);
  v24 = *(v0 + 40);
  v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v22, &v43);

  *(v11 + 24) = v26;
  *(v11 + 32) = 2080;
  v27 = type metadata accessor for OnScreenContent();
  v28 = MEMORY[0x2530570A0](v23, v27);
  v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v43);

  *(v11 + 34) = v30;
  _os_log_impl(&dword_24FD67000, v8, v9, "%s.%s content returned by Context Retrieval with %s retrieval method: %s", v11, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x253057F40](v12, -1, -1);
  MEMORY[0x253057F40](v11, -1, -1);

  (*(v24 + 8))(v38, v25);
  v41(v40, v39);
LABEL_21:
  v31 = *(v0 + 112);
  v33 = *(v0 + 72);
  v32 = *(v0 + 80);
  v34 = *(v0 + 48);
  v35 = *(v0 + 24);

  v36 = *(v0 + 8);

  return v36(v31);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v2(v4, v5);

  v7 = v0[1];
  v8 = v0[15];

  return v7();
}

uint64_t ContentLoader.retrieve(method:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = ContentLoader.retrieve(method:);
  }

  else
  {
    v5 = ContentLoader.retrieve(method:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t implicit closure #2 in closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in closure #1 in closure #1 in ContentLoader.load();

  return ContentLoader.retrieve(method:)(1);
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](implicit closure #2 in closure #1 in closure #1 in ContentLoader.load(), 0, 0);
  }
}

uint64_t ContentLoader.getSources(method:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for OnScreenContentSources();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v45 = &v41 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v47[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, MEMORY[0x277D1D4E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23IntelligenceFlowContext22OnScreenContentSourcesVGMd, &_sSay23IntelligenceFlowContext22OnScreenContentSourcesVGMR);
  v12 = a1;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OnScreenContentSources] and conformance [A], &_sSay23IntelligenceFlowContext22OnScreenContentSourcesVGMd, &_sSay23IntelligenceFlowContext22OnScreenContentSourcesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  if (!a1)
  {
    v13 = 0x800000024FE20410;

    goto LABEL_5;
  }

  v13 = 0x800000024FE20410;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_5:
    static OnScreenContentSources.windowContentGeneratedPDFDisabled.getter();
    v15 = v45;
    specialized OptionSet<>.insert(_:)(v45, v7);
    v16 = *(v46 + 8);
    v16(v7, v3);
    v16(v15, v3);
  }

  v44 = a1;
  if (!a1)
  {
    v17 = v45;
LABEL_12:

LABEL_13:
    static OnScreenContentSources.uiHierarchyContent.getter();
    specialized OptionSet<>.insert(_:)(v17, v7);
    v20 = *(v46 + 8);
    v20(v7, v3);
    v20(v17, v3);
    static OnScreenContentSources.appEntities.getter();
    specialized OptionSet<>.insert(_:)(v17, v7);
    v20(v7, v3);
    v20(v17, v3);
    __swift_project_boxed_opaque_existential_1((v42 + 40), *(v42 + 64));
    if (!ScreenLockChecker.isScreenLocked()())
    {
      if (one-time initialization token for contextRetrieval != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.contextRetrieval);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v47[0] = v45;
        *v24 = 136315394;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C746E65746E6F43, 0xED0000726564616FLL, v47);
        *(v24 + 12) = 2080;
        *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000024FE205D0, v47);
        _os_log_impl(&dword_24FD67000, v22, v23, "%s.%s screen is unlocked, adding app window snapshots", v24, 0x16u);
        v25 = v45;
        swift_arrayDestroy();
        MEMORY[0x253057F40](v25, -1, -1);
        MEMORY[0x253057F40](v24, -1, -1);
      }

      v12 = v44;
      static OnScreenContentSources.appWindowSnapshots.getter();
      specialized OptionSet<>.insert(_:)(v17, v7);
      v20(v7, v3);
      v20(v17, v3);
    }

    goto LABEL_19;
  }

  v17 = v45;
  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_13;
  }

  if (a1 > 1u)
  {
    goto LABEL_12;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_13;
  }

LABEL_19:
  if (v12 == 1)
  {
    goto LABEL_25;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_26:
    static OnScreenContentSources.windowContentGeneratedPDFEnabled.getter();
    specialized OptionSet<>.insert(_:)(v17, v7);
    v28 = *(v46 + 8);
    v28(v7, v3);
    v28(v17, v3);
    goto LABEL_27;
  }

  if (v44 && v44 != 1)
  {
LABEL_25:

    goto LABEL_26;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (one-time initialization token for contextRetrieval != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.contextRetrieval);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47[0] = v33;
    *v32 = 136315906;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C746E65746E6F43, 0xED0000726564616FLL, v47);
    *(v32 + 12) = 2080;
    v34 = 0xD00000000000001FLL;
    *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000024FE205D0, v47);
    *(v32 + 22) = 2080;
    if (v44)
    {
      if (v44 == 1)
      {
        v34 = 0xD000000000000019;
      }

      else
      {
        v34 = 7105633;
      }

      if (v44 == 1)
      {
        v13 = 0x800000024FE203F0;
      }

      else
      {
        v13 = 0xE300000000000000;
      }
    }

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v13, v47);

    *(v32 + 24) = v35;
    *(v32 + 32) = 2080;
    swift_beginAccess();
    v36 = OnScreenContentSources.description.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v47);

    *(v32 + 34) = v38;
    _os_log_impl(&dword_24FD67000, v30, v31, "%s.%s Context Retrieval sources for method '%s': %s", v32, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v33, -1, -1);
    MEMORY[0x253057F40](v32, -1, -1);
  }

  swift_beginAccess();
  v39 = v46;
  (*(v46 + 16))(v43, v11, v3);
  return (*(v39 + 8))(v11, v3);
}

uint64_t specialized OptionSet<>.insert(_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_23IntelligenceFlowContext22OnScreenContentSourcesV17memberAfterInserttMd, &_sSb8inserted_23IntelligenceFlowContext22OnScreenContentSourcesV17memberAfterInserttMR);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = type metadata accessor for OnScreenContentSources();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v14, v2, v9);
  v18 = MEMORY[0x277D1D4E0];
  v27 = lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, MEMORY[0x277D1D4E0]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v19 = v18;
  v20 = v30;
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, v19);
  v28 = a2;
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    v17(&v8[v22], v28, v9);
    v17(v14, v23, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v24 = v31;
  outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v8, v31, &_sSb8inserted_23IntelligenceFlowContext22OnScreenContentSourcesV17memberAfterInserttMd, &_sSb8inserted_23IntelligenceFlowContext22OnScreenContentSourcesV17memberAfterInserttMR);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t OnScreenContentSources.description.getter()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  if (one-time initialization token for debugDescriptions != -1)
  {
    swift_once();
  }

  v8 = swift_beginAccess();
  v9 = static OnScreenContentSources.debugDescriptions;
  MEMORY[0x28223BE20](v8);
  *(&v25 - 2) = v0;

  v10 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in OnScreenContentSources.description.getter, (&v25 - 4), v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v28 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v28;
    v13 = *(v1 + 80);
    v25 = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v27 = *(v1 + 72);
    v15 = v26;
    do
    {
      outlined init with copy of Date?(v14, v7, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v7, v5, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
      v16 = &v5[*(v15 + 48)];
      v17 = *v16;
      v18 = *(v16 + 1);
      v19 = type metadata accessor for OnScreenContentSources();
      (*(*(v19 - 8) + 8))(v5, v19);
      v28 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v15 = v26;
        v12 = v28;
      }

      *(v12 + 16) = v21 + 1;
      v22 = v12 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
      v14 += v27;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v28 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v23 = BidirectionalCollection<>.joined(separator:)();

  return v23;
}

uint64_t protocol witness for ContentLoaderProviding.load() in conformance ContentLoader(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySay23IntelligenceFlowContext15OnScreenContentVG__GMd, &_sScS12ContinuationV15BufferingPolicyOySay23IntelligenceFlowContext15OnScreenContentVG__GMR);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](protocol witness for ContentLoaderProviding.load() in conformance ContentLoader, 0, 0);
}

uint64_t protocol witness for ContentLoaderProviding.load() in conformance ContentLoader()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  *(swift_task_alloc() + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23IntelligenceFlowContext15OnScreenContentVGMd, &_sSay23IntelligenceFlowContext15OnScreenContentVGMR);
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay23IntelligenceFlowContext15OnScreenContentVGGMd, &_sScSySay23IntelligenceFlowContext15OnScreenContentVGGMR);
  v5[4] = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<[OnScreenContent]> and conformance AsyncStream<A>, &_sScSySay23IntelligenceFlowContext15OnScreenContentVGGMd, &_sScSySay23IntelligenceFlowContext15OnScreenContentVGGMR);
  __swift_allocate_boxed_opaque_existential_1(v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v6 = v0[1];

  return v6();
}

uint64_t one-time initialization function for debugDescriptions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext22OnScreenContentSourcesV_SStGMd, &_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext22OnScreenContentSourcesV_SStGMR);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = 2 * v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24FE1B550;
  v5 = v4 + v2;
  v6 = v5 + v0[14];
  static OnScreenContentSources.appEntities.getter();
  strcpy(v6, "App Entities");
  *(v6 + 13) = 0;
  *(v6 + 14) = -5120;
  v7 = (v5 + v1 + v0[14]);
  static OnScreenContentSources.uiHierarchyContent.getter();
  *v7 = 0xD000000000000013;
  v7[1] = 0x800000024FE205F0;
  v8 = v5 + v3 + v0[14];
  result = static OnScreenContentSources.appWindowSnapshots.getter();
  strcpy(v8, "App Snapshots");
  *(v8 + 14) = -4864;
  static OnScreenContentSources.debugDescriptions = v4;
  return result;
}

uint64_t static OnScreenContentSources.debugDescriptions.getter()
{
  if (one-time initialization token for debugDescriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static OnScreenContentSources.debugDescriptions.setter(uint64_t a1)
{
  if (one-time initialization token for debugDescriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static OnScreenContentSources.debugDescriptions = a1;
}

uint64_t (*static OnScreenContentSources.debugDescriptions.modify())()
{
  if (one-time initialization token for debugDescriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return SELFUtils.gatMediaInfo.modify;
}

uint64_t partial apply for closure #1 in OnScreenContentSources.description.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for OnScreenContentSources();
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, MEMORY[0x277D1D4E0]);
  return dispatch thunk of SetAlgebra.isSuperset(of:)() & 1;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      outlined init with copy of Date?(a3 + v16 + v17 * v14, v13, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
      v18 = a1(v13);
      if (v3)
      {
        outlined destroy of OnScreenContent.Document?(v13, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);

        goto LABEL_15;
      }

      if (v18)
      {
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v13, v25, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v25, v15 + v16 + v21 * v17, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = outlined destroy of OnScreenContent.Document?(v13, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t dispatch thunk of ContentLoaderProviding.load()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of ContentLoaderProviding.load();

  return v11(a1, a2, a3);
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

uint64_t getEnumTagSinglePayload for ContentLoader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for ContentLoader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24FDB16E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 40));
  v7 = *(v0 + v5 + 80);

  return MEMORY[0x2821FE8E8](v0, v5 + 88, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in closure #1 in ContentLoader.load()(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t partial apply for implicit closure #1 in closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of ContentLoaderProviding.load();

  return implicit closure #1 in closure #1 in closure #1 in ContentLoader.load()(a1);
}

uint64_t objectdestroy_4Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for implicit closure #2 in closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return implicit closure #2 in closure #1 in closure #1 in ContentLoader.load()(a1);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for OnScreenContentType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for OnScreenContentType();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}