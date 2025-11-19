void OUTLINED_FUNCTION_222_2()
{

  LLMFormatter.sanitized.getter();
}

uint64_t OUTLINED_FUNCTION_237_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 144) = result;
  *(v3 - 120) = v2;
  *(v3 - 112) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_238_3()
{
  *(v1 - 248) = v0;
  result = *(v1 - 216);
  v3 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_242_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(a1, v4, a3, 0);
}

void OUTLINED_FUNCTION_244_2()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_245_3()
{
  v5 = *(v3 - 200);

  return outlined init with copy of SpotlightRankingItem?(v2, v5, v0, v1);
}

void OUTLINED_FUNCTION_247_3()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_248_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0x3A79646F42, 0xE500000000000000, a3, 0);
}

uint64_t OUTLINED_FUNCTION_249_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(a1, 0xE600000000000000, a3, 0);
}

void OUTLINED_FUNCTION_250_3()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);

  LLMFormatter.sanitized.getter();
}

uint64_t OUTLINED_FUNCTION_252_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 112) = a3;
  *(v3 - 144) = result;
  *(v3 - 136) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_256_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256) + v1;
  v4 = *(v2 - 216);
  return result;
}

void OUTLINED_FUNCTION_259_3()
{
  v1 = *(v0 - 208);
  v2 = *(v0 - 224);
  v3 = *(v0 - 264);
}

uint64_t OUTLINED_FUNCTION_267_0()
{
  v2 = *(v0 + 8);
  result = *(v1 - 208);
  v4 = *(v1 - 152);
  return result;
}

void OUTLINED_FUNCTION_274_1()
{
  v1 = *(v0 - 128);
  *(v0 - 96) = *(v0 - 136);
  *(v0 - 88) = v1;
}

void OUTLINED_FUNCTION_277_0()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_278_1(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(a6 - 256);
  v21 = *(v18 - 200);
  v22 = *(v18 - 192);

  static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v21, v22, 0, a1, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t *OUTLINED_FUNCTION_280_1(uint64_t a1)
{
  *(v1 - 112) = a1;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 - 144));
}

void OUTLINED_FUNCTION_282_0()
{
  v2 = *(v0 - 160);

  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
}

uint64_t OUTLINED_FUNCTION_283()
{
}

uint64_t OUTLINED_FUNCTION_284_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(a1, v3, a3, 0);
}

uint64_t CalendarManager.fetchEventsAndHydrate(calendarResults:)(uint64_t a1, void *a2)
{
  v198 = a2;
  v185 = type metadata accessor for SpotlightRankingItem();
  v4 = OUTLINED_FUNCTION_14(v185);
  v197 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v10 = OUTLINED_FUNCTION_114(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_4(&v172 - v14);
  v182 = type metadata accessor for SearchResultItem(0);
  v15 = OUTLINED_FUNCTION_17(v182);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v20 = OUTLINED_FUNCTION_114(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_4(&v172 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v25 = OUTLINED_FUNCTION_114(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  v203 = &v172 - v29;
  v199 = type metadata accessor for SearchResult(0);
  v30 = OUTLINED_FUNCTION_14(v199);
  v212 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  v35 = (MEMORY[0x28223BE20])(v34);
  v202 = &v172 - v36;
  MEMORY[0x28223BE20](v35);
  v204 = &v172 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
  v39 = OUTLINED_FUNCTION_114(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  v44 = &v172 - v43;
  v45 = type metadata accessor for CalendarEvent();
  v46 = OUTLINED_FUNCTION_14(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  v201 = v49;
  v51 = (MEMORY[0x28223BE20])(v50);
  v200 = &v172 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v172 - v54;
  v56 = 0;
  v57 = *(a1 + 16);
  v210 = (v58 + 32);
  v196 = v58;
  v207 = " attachments(s). ";
  v208 = (v58 + 8);
  v53.n128_u64[0] = 136315138;
  v206 = v53;
  v205 = MEMORY[0x277D84F90];
  v211 = a1;
  v209 = v57;
  while (v57 != v56)
  {
    if (v56 >= v57)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      OUTLINED_FUNCTION_0_5();
      swift_once();
LABEL_47:
      v146 = type metadata accessor for Logger();
      __swift_project_value_buffer(v146, static Logging.answerSynthesis);
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_105_6(v148))
      {
LABEL_56:
        OUTLINED_FUNCTION_51_0();
        v153 = OUTLINED_FUNCTION_10_23();
        *(v2 + 4) = OUTLINED_FUNCTION_1_46(v153);
        OUTLINED_FUNCTION_110_4();
        _os_log_impl(v154, v155, v156, v157, v158, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

LABEL_57:

      goto LABEL_58;
    }

    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_66;
    }

    v60 = a1 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v56;
    SearchResultItem.associatedValue.getter(&v213);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v143, v144, v145, v45);

      outlined destroy of IntentApplication?(v44, &_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
      if (one-time initialization token for answerSynthesis == -1)
      {
        goto LABEL_47;
      }

      goto LABEL_69;
    }

    __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
    (*v210)(v55, v44, v45);
    v61 = CalendarEvent.itemAppEntityInstanceId.getter();
    if (v62)
    {
      v63 = v61;
      v64 = v62;
      v65 = HIBYTE(v62) & 0xF;
      if ((v62 & 0x2000000000000000) == 0)
      {
        v65 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (!v65)
      {

        goto LABEL_11;
      }

      v72 = v205;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = *(v72 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v72 = v80;
      }

      v74 = *(v72 + 16);
      v73 = *(v72 + 24);
      v205 = v72;
      v2 = (v74 + 1);
      if (v74 >= v73 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v205 = v81;
      }

      v75 = OUTLINED_FUNCTION_16_21();
      v76(v75);
      v77 = v205;
      *(v205 + 16) = v2;
      v78 = v77 + 16 * v74;
      *(v78 + 32) = v63;
      *(v78 + 40) = v64;
      v56 = v59;
      a1 = v211;
      v57 = v209;
    }

    else
    {
LABEL_11:
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, static Logging.answerSynthesis);
      v67 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v2))
      {
        v68 = OUTLINED_FUNCTION_51_0();
        v69 = swift_slowAlloc();
        v213 = v69;
        *v68 = v206.n128_u32[0];
        *(v68 + 4) = OUTLINED_FUNCTION_2_31();
        _os_log_impl(&dword_25D85C000, v67, v2, "%s CalendarEvent has no itemAppEntityInstanceId. Skip.", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      v70 = OUTLINED_FUNCTION_16_21();
      v71(v70);
      a1 = v211;
      v57 = v209;
      ++v56;
    }
  }

  v56 = v205;
  if (!*(v205 + 16))
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v149 = type metadata accessor for Logger();
    __swift_project_value_buffer(v149, static Logging.answerSynthesis);
    v147 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v150))
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  v83 = __swift_project_value_buffer(v82, static Logging.answerSynthesis);

  v84 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v85 = os_log_type_enabled(v84, v2);
  v86 = v204;
  if (v85)
  {
    v87 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    *v87 = 136315394;
    *(v87 + 4) = OUTLINED_FUNCTION_2_31();
    *(v87 + 12) = 2080;
    MEMORY[0x25F89F8A0](v205, MEMORY[0x277D837D0]);
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v87 + 14) = v88;
    a1 = v211;
    _os_log_impl(&dword_25D85C000, v84, v2, "%s Searching EKEventStore using identifiers=%s", v87, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    v56 = v205;
    OUTLINED_FUNCTION_42_0();
  }

  v89 = v199;
  v90 = outlined bridged method (mbnb) of @objc EKEventStore.events(withIdentifiers:)(v56, v198);
  if (!v90)
  {
    v147 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v151))
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v56 = v90;
  v172 = v83;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_105_6(v92))
  {
    swift_slowAlloc();
    v93 = OUTLINED_FUNCTION_10_23();
    v213 = v93;
    *v2 = 136315394;
    *(v2 + 4) = OUTLINED_FUNCTION_2_31();
    *(v2 + 6) = 2048;
    *(v2 + 14) = specialized Array.count.getter(v56);
    OUTLINED_FUNCTION_110_4();
    _os_log_impl(v94, v95, v96, v97, v98, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v99 = v186;
  if (specialized Array.count.getter(v56) != v57)
  {

    v147 = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v152))
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v178 = specialized Array.count.getter(v56);
  v100 = 0;
  v177 = v56 & 0xC000000000000001;
  v176 = v56 & 0xFFFFFFFFFFFFFF8;
  v174 = (v196 + 16);
  v173 = (v197 + 32);
  v205 = MEMORY[0x277D84F90];
  for (i = v56; ; v56 = i)
  {
    if (v178 == v100)
    {

      return v205;
    }

    if (v177)
    {
      v101 = MEMORY[0x25F89FFD0](v100, v56);
    }

    else
    {
      if (v100 >= *(v176 + 16))
      {
        goto LABEL_68;
      }

      v101 = *(v56 + 8 * v100 + 32);
    }

    if (v57 == v100)
    {
      goto LABEL_67;
    }

    v102 = v86;
    v103 = v101;
    v104 = (*(v212 + 80) + 32) & ~*(v212 + 80);
    v105 = *(v212 + 72);
    _s10OmniSearch0B6ResultVWOcTm_3(a1 + v104 + v105 * v100, v102, type metadata accessor for SearchResult);
    SearchResultItem.associatedValue.getter(&v213);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    if (!swift_dynamicCast())
    {
      break;
    }

    v197 = v105;
    v198 = v104;
    v199 = v100;
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v45);
    (*v210)(v200, v99, v45);
    v196 = WalletPass.id.getter();
    v195 = v106;
    v194 = WalletPass.title.getter();
    v193 = v107;
    v192 = WalletPass.description.getter();
    v191 = v108;
    CalendarEvent.startDate.getter();
    CalendarEvent.endDate.getter();
    v187 = v103;
    v190 = outlined bridged method (ob) of @objc EKCalendarItem.location.getter(v187);
    v189 = v109;
    v188 = CalendarEvent.organizerNames.getter();
    CalendarEvent.participantNames.getter();
    v110 = v181;
    CalendarEvent.notes.getter();
    CalendarEvent.itemAppEntityInstanceId.getter();
    type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
    v115 = v204;
    v116 = v201;
    CalendarEvent.init(id:title:contentDescription:startDate:endDate:locationName:organizerNames:participantNames:notes:itemAppEntityInstanceId:dataDetectorResults:)();
    (*v174)(v110, v116, v45);
    swift_storeEnumTagMultiPayload();
    LODWORD(v196) = v115[v89[8]];
    v117 = v89[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v118 = CodableNSSecureCoding.wrappedValue.getter();
    v119 = v183;
    OUTLINED_FUNCTION_92();
    v120 = v185;
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v185);
    v124 = v180;
    *(v180 + v89[7]) = MEMORY[0x277D84F90];
    v125 = (v124 + v89[10]);
    *v125 = 0;
    v125[1] = 0;
    _s10OmniSearch0B6ResultVWOcTm_3(v110, v124, type metadata accessor for SearchResultItem);
    v126 = v89;
    v127 = v89[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v128 = v118;
    v129 = v119;
    v130 = v128;
    v131 = v184;
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of SpotlightRankingItem?(v129, v131);
    if (__swift_getEnumTagSinglePayload(v131, 1, v120) == 1)
    {
      outlined destroy of IntentApplication?(v131, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      v132 = v126[5];
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      LOBYTE(v213) = 1;
      SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

      outlined destroy of IntentApplication?(v129, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_5_28();
    }

    else
    {

      outlined destroy of IntentApplication?(v129, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_5_28();
      v133 = *v173;
      v134 = v179;
      (*v173)(v179, v131, v120);
      v133(v124 + v126[5], v134, v120);
    }

    v89 = v126;
    *(v124 + v126[8]) = v196;
    *(v124 + v126[9]) = 1;
    outlined init with take of SearchResult(v124, v202);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1 = v211;
    v57 = v209;
    v86 = v204;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v205 + 16) + 1, 1, v205);
      v205 = v141;
    }

    v99 = v186;
    v136 = v187;
    v138 = *(v205 + 16);
    v137 = *(v205 + 24);
    if (v138 >= v137 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v137 > 1, v138 + 1, 1, v205);
      v205 = v142;
    }

    v2 = *v208;
    (*v208)(v201, v45);
    (v2)(v200, v45);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v86, v139);
    v140 = v205;
    *(v205 + 16) = v138 + 1;
    outlined init with take of SearchResult(v202, v198 + v140 + v138 * v197);
    v100 = v199 + 1;
  }

  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v45);

  outlined destroy of IntentApplication?(v99, &_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_105_6(v164))
  {
    OUTLINED_FUNCTION_51_0();
    v165 = OUTLINED_FUNCTION_10_23();
    *(v104 + 4) = OUTLINED_FUNCTION_1_46(v165);
    OUTLINED_FUNCTION_110_4();
    _os_log_impl(v166, v167, v168, v169, v170, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_30();
  _s10OmniSearch0B6ResultVWOhTm_4(v102, v171);
LABEL_58:

  return a1;
}

uint64_t outlined bridged method (mbnb) of @objc EKEventStore.events(withIdentifiers:)(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [a2 eventsWithIdentifiers_];

  if (!v4)
  {
    return 0;
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for EKEvent, 0x277CC5A28);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t outlined bridged method (ob) of @objc EKCalendarItem.location.getter(void *a1)
{
  v2 = [a1 location];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with copy of SpotlightRankingItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1)
{
  *(v2 - 128) = a1;
  *v1 = *(v2 - 192);
  v4 = *(v2 - 176) | 0x8000000000000000;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_2_31()
{
  v2 = *(v0 - 176) | 0x8000000000000000;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return _s10OmniSearch0B6ResultVWOhTm_4(v0, type metadata accessor for SearchResultItem);
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return swift_slowAlloc();
}

id @nonobjc CNContactStore.unifiedContact(withIdentifier:keysToFetch:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x25F89F4C0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8[0] = 0;
  v3 = [v0 unifiedContactWithIdentifier:v1 keysToFetch:isa error:v8];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

id one-time initialization function for addressFormatter()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
  static ContactContentManager.addressFormatter = result;
  return result;
}

{
  result = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
  static ContactStoreHelper.addressFormatter = result;
  return result;
}

id one-time initialization function for dateFormatter()
{
  result = [objc_allocWithZone(MEMORY[0x277CFBDE8]) init];
  static ContactContentManager.dateFormatter = result;
  return result;
}

{
  result = [objc_allocWithZone(MEMORY[0x277CFBDE8]) init];
  static ContactStoreHelper.dateFormatter = result;
  return result;
}

uint64_t *ContactContentManager.__allocating_init(contactStore:)(uint64_t *a1)
{
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v14);
  v8(v7);
  OUTLINED_FUNCTION_47_11();
  v12 = specialized ContactContentManager.init(contactStore:)(v9, v10, v11, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t *ContactContentManager.init(contactStore:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v14);
  v8(v7);
  OUTLINED_FUNCTION_47_11();
  v12 = specialized ContactContentManager.init(contactStore:)(v9, v10, v11, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t ContactContentManager.extractLabel(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  OUTLINED_FUNCTION_14(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v19);
  v21 = v28 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd, &_sSs_SstMR);
  Regex.init(_regexString:version:)();
  Regex.firstMatch(in:)();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of IntentApplication?(v5, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logging.answerSynthesis);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_25D85C000, v23, v24, "Failed to extract label with regex", v25, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    (*(v16 + 8))(v21, v14);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v13, v5, v6);
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v26 = MEMORY[0x25F89F5B0](v28[1], v28[2], v28[3], v28[4]);

    (*(v8 + 8))(v13, v6);
    (*(v16 + 8))(v21, v14);
  }

  return v26;
}

uint64_t ContactContentManager.fetchContactContent(contactsResult:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v258 = a2;
  v236 = *v2;
  v254 = type metadata accessor for SpotlightRankingItem();
  v4 = OUTLINED_FUNCTION_14(v254);
  v245 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v17);
  v253 = type metadata accessor for SearchResultItem(0);
  v18 = OUTLINED_FUNCTION_17(v253);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_2();
  v252 = v22;
  v23 = type metadata accessor for DateComponents();
  v24 = OUTLINED_FUNCTION_14(v23);
  v240 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_4(&v233 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v30 = OUTLINED_FUNCTION_114(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes7ContactVSgMd, &_s15OmniSearchTypes7ContactVSgMR);
  OUTLINED_FUNCTION_114(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  v264 = &v233 - v39;
  v40 = type metadata accessor for Contact();
  v41 = OUTLINED_FUNCTION_14(v40);
  v261 = v42;
  v262 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  v251 = v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v233 - v47;
  v49 = type metadata accessor for SearchResult(0);
  v50 = OUTLINED_FUNCTION_17(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  v56 = &v233 - v55;
  v263 = type metadata accessor for OSSignpostID();
  v57 = OUTLINED_FUNCTION_14(v263);
  v59 = v58;
  v61 = *(v60 + 64);
  v62 = MEMORY[0x28223BE20](v57);
  v64 = &v233 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v66 = &v233 - v65;
  if (one-time initialization token for searchSignposter != -1)
  {
    goto LABEL_113;
  }

  while (1)
  {
    v67 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v67, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v68 = OUTLINED_FUNCTION_6_19();
    _s10OmniSearch0B6ResultVWOcTm_3(v68, v56, v69);
    v70 = OSSignposter.logHandle.getter();
    LODWORD(v255) = static os_signpost_type_t.begin.getter();
    v71 = OS_os_log.signpostsEnabled.getter();
    v259 = a1;
    v260 = v49;
    v257 = v48;
    v241 = v23;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v265 = v73;
      *v72 = 136315138;
      SearchResultItem.associatedValue.getter(&v266);
      v74 = v268;
      v75 = v269;
      __swift_project_boxed_opaque_existential_1(&v266, v268);
      (*(v75 + 32))(v74, v75);
      OUTLINED_FUNCTION_9_25();
      __swift_destroy_boxed_opaque_existential_1Tm(&v266);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v72 + 4) = v76;
      v77 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_25D85C000, v70, v255, v77, "ContactContentManager.fetchContactContent", "Fetching contact information for %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_9_25();
    }

    v78 = v263;
    (*(v59 + 16))(v64, v66, v263);
    v79 = type metadata accessor for OSSignpostIntervalState();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    v82 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v59 + 8))(v66, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25DBDEBD0;
    v83 = *MEMORY[0x277CBD098];
    v84 = *MEMORY[0x277CBCFC0];
    *(v23 + 32) = *MEMORY[0x277CBD098];
    *(v23 + 40) = v84;
    v85 = *MEMORY[0x277CBD0C8];
    v86 = *MEMORY[0x277CBCFB0];
    *(v23 + 48) = *MEMORY[0x277CBD0C8];
    *(v23 + 56) = v86;
    v87 = *MEMORY[0x277CBCF90];
    *(v23 + 64) = *MEMORY[0x277CBCF90];
    v88 = v83;
    v89 = v84;
    v90 = v85;
    v91 = v86;
    v92 = v87;
    SearchResultItem.associatedValue.getter(&v266);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    v93 = v264;
    v59 = v262;
    if (!swift_dynamicCast())
    {

      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v59);
      outlined destroy of IntentApplication?(v93, &_s15OmniSearchTypes7ContactVSgMd, &_s15OmniSearchTypes7ContactVSgMR);
      v99 = OUTLINED_FUNCTION_6_19();
      _s10OmniSearch0B6ResultVWOcTm_3(v99, v258, v100);
      goto LABEL_104;
    }

    __swift_storeEnumTagSinglePayload(v93, 0, 1, v59);
    a1 = v257;
    (*(v261 + 32))(v257, v93, v59);
    v66 = v256[6];
    __swift_project_boxed_opaque_existential_1(v256 + 2, v256[5]);
    v94 = Contact.id.getter();
    v48 = 0;
    v95 = (*(v66 + 1))(v94);
    v255 = v82;
    v249 = v23;
    v238 = 0;
    v101 = v95;

    v256 = v101;
    v56 = [v101 phoneNumbers];
    v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = specialized Array.count.getter(v64);
    if (!v102)
    {
      break;
    }

    v49 = v102;
    v265 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_13(v102);
    if (v49 < 0)
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      result = (*(v23 + 8))(v66, v82);
      __break(1u);
      return result;
    }

    v82 = 0;
    v48 = v265;
    v263 = v64 & 0xFFFFFFFFFFFFFF8;
    v264 = (v64 & 0xC000000000000001);
    while (1)
    {
      v23 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v264)
      {
        v103 = MEMORY[0x25F89FFD0](v82, v64);
      }

      else
      {
        OUTLINED_FUNCTION_25_17();
        if (v82 >= v104)
        {
          goto LABEL_110;
        }

        v103 = *(v64 + 8 * v82 + 32);
      }

      v66 = v103;
      v105 = [v103 label];
      if (v105)
      {
        v106 = v105;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v107 = ContactContentManager.extractLabel(from:)();
      v109 = v108;

      if (v109)
      {
        v266 = v107;
        v267 = v109;
        OUTLINED_FUNCTION_14_18();
        v110 = [v66 value];
        v111 = [v110 stringValue];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;

        MEMORY[0x25F89F6C0](v56, v113);

        a1 = v266;
        v59 = v267;
      }

      else
      {
        v56 = [v66 value];
        v114 = [v56 stringValue];

        a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v115;
      }

      OUTLINED_FUNCTION_21_18();
      if (v117)
      {
        v119 = OUTLINED_FUNCTION_88_8(v116);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v119, v56, 1);
        v48 = v265;
      }

      *(v48 + 16) = v56;
      v118 = (v48 + 16 * v66);
      v118[4] = a1;
      v118[5] = v59;
      ++v82;
      if (v23 == v49)
      {
        v248 = v48;

        goto LABEL_26;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    swift_once();
  }

  v248 = MEMORY[0x277D84F90];
LABEL_26:
  v120 = [v256 emailAddresses];
  v49 = OUTLINED_FUNCTION_18_17();

  v121 = specialized Array.count.getter(v49);
  v122 = MEMORY[0x277D84F90];
  if (v121)
  {
    v82 = v121;
    v265 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_13(v121);
    if ((v82 & 0x8000000000000000) != 0)
    {
      goto LABEL_115;
    }

    a1 = 0;
    v48 = v265;
    OUTLINED_FUNCTION_15_20();
    do
    {
      v64 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_108;
      }

      if (v264)
      {
        v123 = MEMORY[0x25F89FFD0](a1, v49);
      }

      else
      {
        OUTLINED_FUNCTION_25_17();
        if (a1 >= v124)
        {
          goto LABEL_111;
        }

        v123 = *(v49 + 8 * a1 + 32);
      }

      v66 = v123;
      v125 = [v123 label];
      if (v125)
      {
        v126 = v125;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v127 = ContactContentManager.extractLabel(from:)();
      v129 = v128;

      if (v129)
      {
        v266 = v127;
        v267 = v129;
        OUTLINED_FUNCTION_14_18();
        v56 = [v66 value];
        v130 = [v56 description];
        v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v133 = v132;

        MEMORY[0x25F89F6C0](v131, v133);

        v59 = v266;
        v23 = v267;
      }

      else
      {
        v56 = [v66 value];
        v134 = [v56 description];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v135;
      }

      OUTLINED_FUNCTION_21_18();
      if (v117)
      {
        v138 = OUTLINED_FUNCTION_88_8(v136);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v138, v56, 1);
        v48 = v265;
      }

      *(v48 + 16) = v56;
      v137 = (v48 + 16 * v66);
      v137[4] = v59;
      v137[5] = v23;
      ++a1;
    }

    while (v64 != v82);
    v247 = v48;

    v122 = MEMORY[0x277D84F90];
  }

  else
  {

    v247 = MEMORY[0x277D84F90];
  }

  v139 = [v256 postalAddresses];
  v49 = OUTLINED_FUNCTION_18_17();

  v140 = specialized Array.count.getter(v49);
  if (v140)
  {
    v48 = v140;
    v265 = v122;
    OUTLINED_FUNCTION_13_13(v140);
    if (v48 < 0)
    {
      goto LABEL_116;
    }

    v23 = 0;
    a1 = v265;
    OUTLINED_FUNCTION_15_20();
    do
    {
      v64 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_109;
      }

      if (v264)
      {
        v141 = MEMORY[0x25F89FFD0](v23, v49);
      }

      else
      {
        OUTLINED_FUNCTION_25_17();
        if (v23 >= v142)
        {
          goto LABEL_112;
        }

        v141 = *(v49 + 8 * v23 + 32);
      }

      v143 = v141;
      v144 = [v141 label];
      if (v144)
      {
        v145 = v144;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v146 = ContactContentManager.extractLabel(from:)();
      v148 = v147;

      if (v148)
      {
        v266 = v146;
        v267 = v148;
        OUTLINED_FUNCTION_14_18();
        if (one-time initialization token for addressFormatter != -1)
        {
          OUTLINED_FUNCTION_8_26();
          swift_once();
        }

        v149 = static ContactContentManager.addressFormatter;
        v150 = [v143 value];
        v151 = [v149 stringFromPostalAddress_];

        v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v154 = v153;

        MEMORY[0x25F89F6C0](v152, v154);

        v59 = v266;
        v56 = v267;
      }

      else
      {
        if (one-time initialization token for addressFormatter != -1)
        {
          OUTLINED_FUNCTION_8_26();
          swift_once();
        }

        v155 = static ContactContentManager.addressFormatter;
        v156 = [v143 value];
        v157 = [v155 stringFromPostalAddress_];

        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v158;
      }

      v265 = a1;
      v160 = *(a1 + 16);
      v159 = *(a1 + 24);
      v66 = (v160 + 1);
      if (v160 >= v159 >> 1)
      {
        v162 = OUTLINED_FUNCTION_88_8(v159);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v162, v160 + 1, 1);
        a1 = v265;
      }

      *(a1 + 16) = v66;
      v161 = a1 + 16 * v160;
      *(v161 + 32) = v59;
      *(v161 + 40) = v56;
      ++v23;
    }

    while (v64 != v48);
  }

  else
  {

    a1 = MEMORY[0x277D84F90];
  }

  v163 = [v256 dates];
  v49 = OUTLINED_FUNCTION_18_17();

  v23 = specialized Array.count.getter(v49);
  v164 = 0;
  OUTLINED_FUNCTION_15_20();
  v250 = MEMORY[0x277D84F90];
  while (v23 != v164)
  {
    if (v264)
    {
      v166 = MEMORY[0x25F89FFD0](v164, v49);
    }

    else
    {
      OUTLINED_FUNCTION_25_17();
      if (v164 >= v165)
      {
        goto LABEL_106;
      }

      v166 = *(v49 + 8 * v164 + 32);
    }

    v66 = v166;
    v64 = v164 + 1;
    if (__OFADD__(v164, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v167 = [v166 label];
    if (v167)
    {
      v168 = v167;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v169;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    v59 = ContactContentManager.extractLabel(from:)();
    v171 = v170;

    if (v171)
    {
      if (one-time initialization token for dateFormatter != -1)
      {
        swift_once();
      }

      v172 = static ContactContentManager.dateFormatter;
      v48 = [v66 value];
      v56 = [v172 stringFromDateComponents_];

      if (!v56)
      {

        goto LABEL_81;
      }

      v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v174 = v173;

      v266 = v59;
      v267 = v171;
      OUTLINED_FUNCTION_14_18();
      MEMORY[0x25F89F6C0](v234, v174);

      v175 = v266;
      v48 = v267;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v178 = *(v250 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v250 = v179;
      }

      v66 = *(v250 + 16);
      v56 = v66 + 1;
      if (v66 >= *(v250 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v250 = v180;
      }

      v176 = v250;
      *(v250 + 16) = v56;
      v177 = v176 + 16 * v66;
      *(v177 + 32) = v175;
      *(v177 + 40) = v48;
      v164 = v64;
    }

    else
    {

LABEL_81:
      ++v164;
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v181 = type metadata accessor for Logger();
  __swift_project_value_buffer(v181, static Logging.answerSynthesis);
  v182 = Logger.logObject.getter();
  v183 = static os_log_type_t.info.getter();
  v184 = os_log_type_enabled(v182, v183);
  v82 = v241;
  v23 = v240;
  if (v184)
  {
    v185 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v266 = v186;
    *v185 = 136315138;
    *(v185 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v182, v183, "%s Finished fetching missing contact attributes directly from CNContactStore", v185, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v186);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v187 = v252;
  v188 = v246;
  v189 = Contact.id.getter();
  v263 = v190;
  v264 = v189;
  Contact.name.getter();
  v191 = [v256 birthday];
  v192 = v251;
  if (v191)
  {
    v193 = v191;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v194 = 0;
  }

  else
  {
    v194 = 1;
  }

  v195 = v261;
  __swift_storeEnumTagSinglePayload(v188, v194, 1, v82);
  v196 = v239;
  outlined init with copy of Date?(v188, v239, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_28_16(v196);
  if (v197)
  {
    outlined destroy of IntentApplication?(v188, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    goto LABEL_100;
  }

  v66 = v235;
  (*(v23 + 32))(v235, v196, v82);
  v198 = v238;
  closure #5 in ContactContentManager.fetchContactContent(contactsResult:)(&v266);
  if (v198)
  {
    goto LABEL_117;
  }

  (*(v23 + 8))(v66, v82);
  outlined destroy of IntentApplication?(v246, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v187 = v252;
LABEL_100:
  v199 = MEMORY[0x277D84F90];
  Contact.init(id:name:phoneNumbers:emailAddresses:physicalAddresses:dates:birthday:)();
  (*(v195 + 16))(v187, v192, v262);
  swift_storeEnumTagMultiPayload();
  v200 = v260;
  LODWORD(v264) = *(v259 + v260[8]);
  v201 = v195;
  v202 = v260[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v203 = CodableNSSecureCoding.wrappedValue.getter();
  v204 = v244;
  OUTLINED_FUNCTION_92();
  v205 = v254;
  __swift_storeEnumTagSinglePayload(v206, v207, v208, v254);
  v209 = v242;
  *(v242 + v200[7]) = v199;
  OUTLINED_FUNCTION_7_25((v209 + v200[10]));
  _s10OmniSearch0B6ResultVWOcTm_3(v187, v209, v210);
  v211 = v200[6];
  type metadata accessor for CSSearchableItem();
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v212 = v203;
  v213 = v204;
  OUTLINED_FUNCTION_47_11();
  CodableNSSecureCoding.init(wrappedValue:)();
  v214 = v204;
  v215 = v243;
  outlined init with copy of Date?(v214, v243, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_28_16(v215);
  if (v197)
  {
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v216, v217, v218);
    v219 = v200[5];
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_19_18();

    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v220, v221, v222);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v252, v223);
    v224 = *(v201 + 8);
    v225 = v262;
    v224(v251, v262);
    v224(v257, v225);
  }

  else
  {

    outlined destroy of IntentApplication?(v213, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v252, v226);
    v227 = *(v201 + 8);
    v228 = v262;
    v227(v251, v262);
    v227(v257, v228);
    v229 = *(v245 + 32);
    v230 = v237;
    v229(v237, v215, v205);
    v229(v209 + v200[5], v230, v205);
  }

  v231 = v258;
  *(v209 + v200[8]) = v264;
  *(v209 + v200[9]) = 1;
  outlined init with take of SearchResult(v209, v231);
LABEL_104:
  $defer #1 () in ContactContentManager.fetchContactContent(contactsResult:)();
}

uint64_t $defer #1 () in ContactContentManager.fetchContactContent(contactsResult:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchSignposter);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "fetchContactContent.fetchContactContent", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

void closure #5 in ContactContentManager.fetchContactContent(contactsResult:)(uint64_t *a1@<X8>)
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v2 = static ContactContentManager.dateFormatter;
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v4 = [v2 stringFromDateComponents_];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ContactContentManager.fetchContactsContent(contactsResults:)(uint64_t a1)
{
  v2 = type metadata accessor for SearchResult(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v11 = v18;
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = a1 + v12;
    v14 = *(v3 + 72);
    do
    {
      _s10OmniSearch0B6ResultVWOcTm_3(v13, v7, type metadata accessor for SearchResult);
      ContactContentManager.fetchContactContent(contactsResult:)(v7, v9);
      _s10OmniSearch0B6ResultVWOhTm_4(v7, type metadata accessor for SearchResult);
      v18 = v11;
      v15 = *(v11 + 16);
      if (v15 >= *(v11 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v18;
      }

      *(v11 + 16) = v15 + 1;
      outlined init with take of SearchResult(v9, v11 + v12 + v15 * v14);
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t ContactContentManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t *specialized ContactContentManager.init(contactStore:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  return a2;
}

void OUTLINED_FUNCTION_5_29()
{
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
}

uint64_t OUTLINED_FUNCTION_9_25()
{

  return _s10OmniSearch0B6ResultVWOhTm_4(v0, type metadata accessor for SearchResult);
}

uint64_t OUTLINED_FUNCTION_13_13(uint64_t a1)
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_14_18()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_18_17()
{
  v2 = *(v0 - 264);

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_19_18()
{

  return SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
}

void OUTLINED_FUNCTION_21_18()
{
  *(v1 - 144) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t one-time initialization function for bodyFetchTimeout()
{
  result = AFIsInternalInstall();
  v1 = 2.0;
  if (result)
  {
    v1 = 30.0;
  }

  static EmailContentManager.bodyFetchTimeout = *&v1;
  return result;
}

uint64_t *EmailContentManager.bodyFetchTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for bodyFetchTimeout != -1)
  {
    OUTLINED_FUNCTION_12_25();
  }

  return &static EmailContentManager.bodyFetchTimeout;
}

double static EmailContentManager.bodyFetchTimeout.getter()
{
  if (one-time initialization token for bodyFetchTimeout != -1)
  {
    OUTLINED_FUNCTION_12_25();
  }

  return *&static EmailContentManager.bodyFetchTimeout;
}

uint64_t one-time initialization function for contentRequestOptions()
{
  v0 = objc_allocWithZone(MEMORY[0x277D06D60]);
  result = @nonobjc EMContentRequestOptions.init(builder:)(closure #1 in variable initialization expression of static EmailContentManager.contentRequestOptions, 0);
  static EmailContentManager.contentRequestOptions = result;
  return result;
}

id closure #1 in variable initialization expression of static EmailContentManager.contentRequestOptions(void *a1)
{
  [a1 setRequestedRepresentation_];
  [a1 setIncludeSuggestionItems_];

  return [a1 setNetworkUsage_];
}

uint64_t *EmailContentManager.contentRequestOptions.unsafeMutableAddressor()
{
  if (one-time initialization token for contentRequestOptions != -1)
  {
    OUTLINED_FUNCTION_11_24();
  }

  return &static EmailContentManager.contentRequestOptions;
}

id static EmailContentManager.contentRequestOptions.getter()
{
  if (one-time initialization token for contentRequestOptions != -1)
  {
    OUTLINED_FUNCTION_11_24();
  }

  v1 = static EmailContentManager.contentRequestOptions;

  return v1;
}

void EmailContentManager.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for OSSignpostID();
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_109();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v35 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v35, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v36 = OSSignposter.logHandle.getter();
  v37 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v38 = OUTLINED_FUNCTION_172();
    *v38 = 0;
    v39 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v36, v37, v39, "EmailContentManager.init", "", v38, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  (*(v26 + 16))(v31, v34, v23);
  v40 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v40);
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v26 + 8))(v34, v23);
  *(v20 + 16) = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v41 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v41, static Logging.answerSynthesis);
  v42 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_77_4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_172();
    *v44 = 0;
    _os_log_impl(&dword_25D85C000, v42, v23, "EmailContentManager: EMDaemonInterface initialized", v44, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  $defer #1 () in EmailContentManager.init()();

  OUTLINED_FUNCTION_148();
}

uint64_t EmailContentManager.hydrateEmailResults(_:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = type metadata accessor for SearchResultItem(0);
  v1[5] = v3;
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for EmailDocument();
  v1[7] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for SearchResult(0);
  v1[10] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_160();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v14 = type metadata accessor for OSSignpostID();
  v1[15] = v14;
  OUTLINED_FUNCTION_21(v14);
  v1[16] = v15;
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_160();
  v1[18] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[18];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[18];
    *OUTLINED_FUNCTION_172() = 0;
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_41_12();
    _os_signpost_emit_with_name_impl(v5, v6, v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v12 = v0[17];
  v13 = v0[18];
  v14 = v0[15];
  v15 = v0[16];

  v16 = OUTLINED_FUNCTION_30_16(v15);
  v17(v16);
  v18 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v18);
  v0[19] = OUTLINED_FUNCTION_38_6();
  v19 = *(v15 + 8);
  v20 = OUTLINED_FUNCTION_54_0();
  v21(v20);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v22 = v0[2];
  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logging.answerSynthesis);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v27 = OUTLINED_FUNCTION_16_11(v26);
  v28 = v0[2];
  if (v27)
  {
    OUTLINED_FUNCTION_28_3();
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v28 + 16);

    OUTLINED_FUNCTION_49_16(&dword_25D85C000, v30, v24, "EmailContentManager: Gathering full email documents for %ld email items");
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    v31 = v0[2];
  }

  v32 = 0;
  v33 = v0[11];
  v34 = v0[8];
  v35 = *(v0[2] + 16);
  v86 = (v34 + 8);
  v87 = (v34 + 32);
  v85 = MEMORY[0x277D84F90];
  while (v35 != v32)
  {
    v36 = v0[14];
    v38 = v0[5];
    v37 = v0[6];
    v39 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v40 = *(v33 + 72);
    v41 = v0[2] + v39;
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_6(v42, v36, v43);
    OUTLINED_FUNCTION_5_30();
    _s10OmniSearch0B6ResultVWOcTm_6(v36, v37, v44);
    OUTLINED_FUNCTION_54_0();
    if (swift_getEnumCaseMultiPayload())
    {
      v45 = v0[6];
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_5(v46, v47);
      goto LABEL_16;
    }

    (*v87)(v0[9], v0[6], v0[7]);
    v48 = EmailDocument.hydratable.getter();
    v49 = *v86;
    v50 = OUTLINED_FUNCTION_54_0();
    v51(v50);
    if (v48 != 2 && (v48 & 1) != 0)
    {
      outlined init with take of SearchResult(v0[14], v0[12]);
      v55 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v85 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v55 = v85;
      }

      v57 = *(v55 + 16);
      if (v57 >= *(v55 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v55 = v85;
      }

      ++v32;
      v58 = v0[12];
      *(v55 + 16) = v57 + 1;
      v85 = v55;
      outlined init with take of SearchResult(v58, v55 + v39 + v57 * v40);
    }

    else
    {
LABEL_16:
      v52 = v0[14];
      OUTLINED_FUNCTION_27_15();
      _s10OmniSearch0B10ResultItemOWOhTm_5(v53, v54);
      ++v32;
    }
  }

  v59 = *(v85 + 16);
  if (v59)
  {
    v88 = v0[13];
    v60 = *(v0[10] + 24);
    v61 = v85 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v62 = MEMORY[0x277D84F90];
    v63 = *(v33 + 72);
    do
    {
      v64 = v0[13];
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_6(v61, v64, v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v66 = CodableNSSecureCoding.wrappedValue.getter();
      v67 = [v66 uniqueIdentifier];

      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      OUTLINED_FUNCTION_27_15();
      _s10OmniSearch0B10ResultItemOWOhTm_5(v64, v71);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = *(v62 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v62 = v75;
      }

      v72 = *(v62 + 16);
      if (v72 >= *(v62 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v62 = v76;
      }

      *(v62 + 16) = v72 + 1;
      v73 = v62 + 16 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
      v61 += v63;
      --v59;
    }

    while (v59);
  }

  v77 = v0[3];
  v78 = v0[4];
  EmailContentManager.messages(for:)();
  v80 = v79;

  v81 = swift_allocObject();
  v0[20] = v81;
  v81[2] = v80;
  v81[3] = v77;
  v81[4] = v78;

  v82 = swift_task_alloc();
  v0[21] = v82;
  *v82 = v0;
  v82[1] = EmailContentManager.hydrateEmailResults(_:);
  v83 = v0[2];

  return specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 168);
  v5 = *(v3 + 160);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 176) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[6];
  $defer #1 () in EmailContentManager.init()();

  v9 = v0[1];
  v10 = v0[22];

  return v9(v10);
}

uint64_t closure #3 in EmailContentManager.hydrateEmailResults(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for SearchResult(0);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in EmailContentManager.hydrateEmailResults(_:), 0, 0);
}

uint64_t closure #3 in EmailContentManager.hydrateEmailResults(_:)()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 96) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v3 = CodableNSSecureCoding.wrappedValue.getter();
  v4 = [v3 attributeSet];

  v5 = [v4 attributeForKey_];
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  *(v0 + 16) = v57;
  *(v0 + 32) = v58;
  if (!*(v0 + 40))
  {
    outlined destroy of EagerResolutionService?(v0 + 16, &_sypSgMd, &_sypSgMR);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v31, static Logging.answerSynthesis);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v33))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v40 = *(v0 + 64);
    v39 = *(v0 + 72);

    OUTLINED_FUNCTION_0_49();
    v42 = v39;
    v43 = v40;
    goto LABEL_18;
  }

  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 136) = v7;
  v8 = OUTLINED_FUNCTION_119();
  v11 = specialized Dictionary.subscript.getter(v8, v9, v10);
  *(v0 + 144) = v11;
  if (v11)
  {
    v12 = v11;
    if (one-time initialization token for bodyFetchTimeout != -1)
    {
      OUTLINED_FUNCTION_12_25();
    }

    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    v17 = *(v0 + 72);
    v18 = static EmailContentManager.bodyFetchTimeout;
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_6(v19, v13, v20);
    v21 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v0 + 152) = v23;
    outlined init with take of SearchResult(v13, v23 + v21);
    *(v23 + v22) = v16;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;
    v24 = *(MEMORY[0x277D61CC0] + 4);

    v25 = v12;
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 160) = v26;
    *v26 = v27;
    v26[1] = closure #3 in EmailContentManager.hydrateEmailResults(_:);
    v28 = *(v0 + 96);
    v29 = *(v0 + 64);
    v30.n128_u64[0] = v18;

    return MEMORY[0x2821C8618](v29, &async function pointer to partial apply for closure #1 in closure #3 in EmailContentManager.hydrateEmailResults(_:), v23, v28, v30);
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v46 = *(v0 + 80);
  v47 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v47, static Logging.answerSynthesis);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = *(v0 + 80);
    v51 = swift_slowAlloc();
    swift_slowAlloc();
    *v51 = 136315395;
    OUTLINED_FUNCTION_119();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v51 + 4) = v52;
    *(v51 + 12) = 2085;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for EMMessage, 0x277D06DB8);
    Dictionary.description.getter();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v51 + 14) = v53;
    _os_log_impl(&dword_25D85C000, v48, v49, "EmailContentManager: No mail message from id: %s from messages %{sensitive}s", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  v55 = *(v0 + 64);
  v54 = *(v0 + 72);
  OUTLINED_FUNCTION_0_49();
LABEL_18:
  _s10OmniSearch0B6ResultVWOcTm_6(v42, v43, v41);
  v44 = *(v0 + 120);

  OUTLINED_FUNCTION_127();

  return v45();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  v3[21] = v0;

  if (!v0)
  {
    v9 = v3[19];
    v10 = v3[17];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_127();

  return v2();
}

{
  OUTLINED_FUNCTION_159();
  v1 = v0[19];

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v2 = v0[17];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v3, static Logging.answerSynthesis);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  v8 = v0[17];
  v9 = v0[18];
  if (v6)
  {
    v10 = v0[16];
    OUTLINED_FUNCTION_28_3();
    v11 = swift_slowAlloc();
    v21 = OUTLINED_FUNCTION_49_0();
    *v11 = 136315138;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v11 + 4) = v12;
    _os_log_impl(&dword_25D85C000, v4, v5, "EmailContentManager: Timeout when fetching email body for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  v14 = v0[8];
  v13 = v0[9];
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_6(v15, v16, v17);
  v18 = v0[15];

  OUTLINED_FUNCTION_127();

  return v19();
}

uint64_t closure #1 in closure #3 in EmailContentManager.hydrateEmailResults(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SpotlightRankingItem();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for SearchResult(0);
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for SearchResultItem(0);
  v4[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v13 = type metadata accessor for EmailDocument();
  v4[16] = v13;
  v14 = *(v13 - 8);
  v4[17] = v14;
  v15 = *(v14 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in EmailContentManager.hydrateEmailResults(_:), 0, 0);
}

uint64_t closure #1 in closure #3 in EmailContentManager.hydrateEmailResults(_:)()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[3];
  OUTLINED_FUNCTION_5_30();
  _s10OmniSearch0B6ResultVWOcTm_6(v4, v1, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = v0[15];
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_5(v7, v8);
    v10 = v0[2];
    v9 = v0[3];
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_6(v11, v12, v13);
    OUTLINED_FUNCTION_22_17();

    OUTLINED_FUNCTION_106();

    return v14();
  }

  else
  {
    (*(v0[17] + 32))(v0[21], v0[15], v0[16]);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v16 = v0[20];
    v17 = v0[21];
    v18 = v0[16];
    v19 = v0[17];
    v20 = type metadata accessor for Logger();
    v0[22] = __swift_project_value_buffer(v20, static Logging.answerSynthesis);
    v21 = *(v19 + 16);
    v0[23] = v21;
    v0[24] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22 = OUTLINED_FUNCTION_94();
    v21(v22);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = OUTLINED_FUNCTION_16_11(v24);
    v26 = v0[20];
    if (v25)
    {
      v27 = v0[19];
      v29 = v0[16];
      v28 = v0[17];
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v45 = OUTLINED_FUNCTION_10_23();
      *v18 = 136642819;
      (v21)(v27, v26, v29);
      String.init<A>(describing:)();
      v30 = *(v28 + 8);
      v30(v26, v29);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v18 + 4) = v31;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
      v37 = v0[16];
      v38 = v0[17];

      v30 = *(v38 + 8);
      v30(v26, v37);
    }

    v0[25] = v30;
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[26] = v39;
    *v39 = v40;
    v39[1] = closure #1 in closure #3 in EmailContentManager.hydrateEmailResults(_:);
    v41 = v0[21];
    v42 = v0[18];
    v44 = v0[4];
    v43 = v0[5];

    return EmailContentManager.createEmailDoc(message:spotlightResult:)();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  (*(v0 + 184))(v2, *(v0 + 144), *(v0 + 128));
  swift_storeEnumTagMultiPayload();
  v50 = *(v8 + v6[8]);
  v9 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v10 = CodableNSSecureCoding.wrappedValue.getter();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  *(v5 + v6[7]) = MEMORY[0x277D84F90];
  v14 = (v5 + v6[10]);
  *v14 = 0;
  v14[1] = 0;
  OUTLINED_FUNCTION_5_30();
  _s10OmniSearch0B6ResultVWOcTm_6(v2, v5, v15);
  v51 = v6;
  v16 = v6[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v17 = v10;
  OUTLINED_FUNCTION_189_4();
  CodableNSSecureCoding.init(wrappedValue:)();
  _s10Foundation4DateVSgWOcTm_0(v4, v3, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v7);
  v19 = *(v0 + 200);
  v20 = *(v0 + 136);
  v48 = *(v0 + 144);
  v49 = *(v0 + 168);
  v21 = *(v0 + 128);
  v22 = *(v0 + 112);
  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v46 = v23;
  v47 = *(v0 + 72);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_189_4();
    outlined destroy of EagerResolutionService?(v25, v26, v27);
    v28 = *(v47 + 20);
    SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

    OUTLINED_FUNCTION_189_4();
    outlined destroy of EagerResolutionService?(v29, v30, v31);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_5(v22, v32);
    v19(v48, v21);
    v19(v49, v21);
  }

  else
  {
    v45 = *(v0 + 80);
    v33 = *(v0 + 136);
    v34 = *(v0 + 56);
    v35 = *(v0 + 64);
    v36 = *(v0 + 48);

    outlined destroy of EagerResolutionService?(v46, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_5(v22, v37);
    v19(v48, v21);
    v19(v49, v21);
    v38 = *(v34 + 32);
    (v38)(v35, v24, v36);
    v39 = *(v47 + 20);
    OUTLINED_FUNCTION_189_4();
    v38();
  }

  v41 = *(v0 + 72);
  v40 = *(v0 + 80);
  v42 = *(v0 + 16);
  *(v40 + v51[8]) = v50;
  *(v40 + *(v41 + 36)) = 1;
  outlined init with take of SearchResult(v40, v42);
  OUTLINED_FUNCTION_22_17();

  OUTLINED_FUNCTION_106();

  return v43();
}

{
  OUTLINED_FUNCTION_159();
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136) + 8;
  (*(v0 + 200))(*(v0 + 168), *(v0 + 128));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 216);
  if (v7)
  {
    OUTLINED_FUNCTION_28_3();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_49_16(&dword_25D85C000, v13, v6, "EmailContentManager: Failed to convert email to EmailDoc %@");
    outlined destroy of EagerResolutionService?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_6(v16, v17, v18);
  OUTLINED_FUNCTION_22_17();

  OUTLINED_FUNCTION_106();

  return v19();
}

uint64_t EmailContentManager.mailURLFromId(_:networkUsage:)()
{
  OUTLINED_FUNCTION_48();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = type metadata accessor for URL();
  v1[9] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_199();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_160();
  v1[13] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = [*(v0[8] + 16) messageRepository];
  v5 = OUTLINED_FUNCTION_94();
  v6 = MEMORY[0x25F89F4C0](v5);
  v7 = [v4 messageForSearchableItemIdentifier_];

  v8 = [v7 result];
  v0[14] = v8;

  v9 = swift_task_alloc();
  v0[15] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  v10 = *(MEMORY[0x277D859E0] + 4);
  v11 = swift_task_alloc();
  v0[16] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23EMContentRepresentationCSgMd, &_sSo23EMContentRepresentationCSgMR);
  *v11 = v0;
  v11[1] = EmailContentManager.mailURLFromId(_:networkUsage:);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822007B8]();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 32);
  if (!v1)
  {

LABEL_8:
    v12 = 0;
    v13 = 0;
    goto LABEL_10;
  }

  v2 = [*(v0 + 32) publicMessageURL];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 96);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 72);
  __swift_storeEnumTagSinglePayload(v7, v5, 1, v8);
  outlined init with take of URL?(v7, v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  if (EnumTagSinglePayload)
  {

    outlined destroy of EagerResolutionService?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    goto LABEL_8;
  }

  v14 = *(v0 + 80);
  (*(v14 + 16))(*(v0 + 88), *(v0 + 104), *(v0 + 72));
  outlined destroy of EagerResolutionService?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = URL.absoluteString.getter();
  v17 = v16;
  v18 = *(v14 + 8);
  v19 = OUTLINED_FUNCTION_54_0();
  v20(v19);
  *(v0 + 16) = v15;
  *(v0 + 24) = v17;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.removingPercentEncoding.getter();
  v13 = v21;

LABEL_10:
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 88);

  OUTLINED_FUNCTION_32_5();

  return v25(v12, v13);
}

void closure #1 in EmailContentManager.mailURLFromId(_:networkUsage:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() optionsWithRequestedRepresentationType:*MEMORY[0x277D06BA0] networkUsage:a3 includeSuggestions:2];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in EmailContentManager.mailURLFromId(_:networkUsage:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed EMContentRepresentation?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);

  v15 = [a2 requestRepresentationWithOptions:v11 completionHandler:v14];
  _Block_release(v14);
}

uint64_t closure #1 in closure #1 in EmailContentManager.mailURLFromId(_:networkUsage:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed EMContentRepresentation?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t EmailContentManager.mailIDForMailURL(_:)()
{
  OUTLINED_FUNCTION_48();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_199();
  v7 = type metadata accessor for URL();
  v1[6] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_199();
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_159();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];
  URL.init(string:)();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    outlined destroy of EagerResolutionService?(v0[5], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v5 = v0[3];
    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v6, static Logging.answerSynthesis);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[2];
      v9 = v0[3];
      OUTLINED_FUNCTION_28_3();
      v11 = swift_slowAlloc();
      v41 = OUTLINED_FUNCTION_49_0();
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v7, v8, "Can't convert to URL: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    v12 = 0;
  }

  else
  {
    v13 = v0[4];
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v14 = *(v13 + 16);
    v15 = [v14 messageRepository];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    v19 = [v15 messageObjectIDForURL_];

    v20 = [v19 result];
    v21 = [v14 messageRepository];
    v22 = [v21 messageForObjectID_];

    v23 = [v22 result];
    v24 = [v23 searchableMessageID];
    v12 = v24;
    v26 = v0[7];
    v25 = v0[8];
    v27 = v0[6];
    if (v24)
    {
      v28 = [v24 stringValue];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = *(v26 + 8);
      v32 = OUTLINED_FUNCTION_54_0();
      v33(v32);
      goto LABEL_11;
    }

    v34 = *(v26 + 8);
    v35 = OUTLINED_FUNCTION_54_0();
    v36(v35);
  }

  v30 = 0;
LABEL_11:
  v37 = v0[8];
  v38 = v0[5];

  OUTLINED_FUNCTION_32_5();

  return v39(v12, v30);
}

void EmailContentManager.messages(for:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for OSSignpostID();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = v68 - v14;
  v68[3] = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for EMMessage, 0x277D06DB8);
  Dictionary.init(dictionaryLiteral:)();
  if (v3[2])
  {

    if (one-time initialization token for searchSignposter != -1)
    {
LABEL_36:
      OUTLINED_FUNCTION_22();
    }

    v16 = type metadata accessor for OSSignposter();
    OUTLINED_FUNCTION_200(v16, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v17 = OSSignposter.logHandle.getter();
    v18 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v19 = OUTLINED_FUNCTION_172();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_25D85C000, v17, v18, v20, "EmailContentManager.messages(for:)", "", v19, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    (*(v7 + 16))(v12, v15, v4);
    v21 = type metadata accessor for OSSignpostIntervalState();
    v22 = OUTLINED_FUNCTION_170(v21);
    v68[1] = OSSignpostIntervalState.init(id:isOpen:)();
    v23 = *(v7 + 8);
    v24 = OUTLINED_FUNCTION_119();
    v25(v24);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v26, static Logging.answerSynthesis);

    v68[2] = v22;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_10_23();
      v74 = v12;
      *v15 = 136315138;
      MEMORY[0x25F89F8A0](v3, MEMORY[0x277D837D0]);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v15 + 4) = v29;
      OUTLINED_FUNCTION_63_12(&dword_25D85C000, v30, v31, "EmailContentManager: Fetching EMMessages for searchableItemIdentifiers: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_2_8();
    }

    v32 = [v1[2] messageRepository];
    v4 = MEMORY[0x277D837D0];
    isa = Array._bridgeToObjectiveC()().super.isa;
    v71 = v32;
    v34 = [v32 messageObjectIDsForSearchableItemIdentifiers_];

    v35 = [v34 result];
    v68[0] = v35;
    v36 = [v35 objectIDs];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for EMMessageObjectID, 0x277D06E18);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = Dictionary.init(dictionaryLiteral:)();
    v38 = specialized Array.count.getter(v15);
    v72 = v15;
    v73 = v38;
    v7 = 0;
    v69 = v15 & 0xFFFFFFFFFFFFFF8;
    v70 = v15 & 0xC000000000000001;
    while (v73 != v7)
    {
      if (v70)
      {
        v39 = MEMORY[0x25F89FFD0](v7, v72);
      }

      else
      {
        if (v7 >= *(v69 + 16))
        {
          goto LABEL_33;
        }

        v39 = *(v72 + 8 * v7 + 32);
      }

      v1 = v39;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v4 = [v71 messageForObjectID_];
      v40 = [v4 result];

      v74 = [v1 globalMessageID];
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v3 = v41;
      v15 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v37;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)();
      v45 = v37[2];
      v46 = (v44 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_34;
      }

      v4 = v43;
      v48 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9EMMessageCGMd, &_ss17_NativeDictionaryVySSSo9EMMessageCGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v47))
      {
        v49 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v48 & 1) != (v50 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v4 = v49;
      }

      if (v48)
      {

        v37 = v74;
        v51 = v74[7];
        v52 = *(v51 + 8 * v4);
        *(v51 + 8 * v4) = v15;
      }

      else
      {
        v37 = v74;
        v74[(v4 >> 6) + 8] |= 1 << v4;
        v53 = (v37[6] + 16 * v4);
        *v53 = v12;
        v53[1] = v3;
        *(v37[7] + 8 * v4) = v15;

        v54 = v37[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_35;
        }

        v37[2] = v56;
      }

      ++v7;
    }

    v57 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_77_4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_49_0();
      v74 = swift_slowAlloc();
      *v59 = 134218499;
      *(v59 + 4) = v37[2];

      *(v59 + 12) = 2080;

      Dictionary.Keys.description.getter();

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v59 + 14) = v60;
      *(v59 + 22) = 2085;

      Dictionary.Values.description.getter();
      OUTLINED_FUNCTION_42_14();

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v59 + 24) = v61;
      _os_log_impl(&dword_25D85C000, v57, v15, "EmailContentManager: Found %ld messages, mail message id keys: %s, values: %{sensitive}s", v59, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v64 = OUTLINED_FUNCTION_10_23();
      v74 = v64;
      *v15 = 136315138;

      Dictionary.Keys.description.getter();
      OUTLINED_FUNCTION_42_14();

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v15 + 4) = v65;
      OUTLINED_FUNCTION_63_12(&dword_25D85C000, v66, v67, "EmailContentManager: Mail message id keys: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_2_8();
    }

    $defer #1 () in EmailContentManager.init()();
  }

  OUTLINED_FUNCTION_148();
}

uint64_t EmailContentManager.createEmailDoc(message:spotlightResult:)()
{
  OUTLINED_FUNCTION_48();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for OSSignpostID();
  v1[6] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_160();
  v1[9] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[9];
  v2 = v0[3];
  v3 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v3, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v4 = v2;
  v5 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[9];
    v7 = v0[3];
    OUTLINED_FUNCTION_28_3();
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = [v7 objectID];
    v10 = [v9 globalMessageID];

    *(v8 + 4) = v10;
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_41_12();
    _os_signpost_emit_with_name_impl(v11, v12, v13, v14, v15, v16, v17, 0xCu);
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v5 = v0[3];
  }

  v18 = v0[8];
  v19 = v0[9];
  v20 = v0[6];
  v21 = v0[7];

  v22 = OUTLINED_FUNCTION_30_16(v21);
  v23(v22);
  v24 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v24);
  v0[10] = OUTLINED_FUNCTION_38_6();
  v25 = *(v21 + 8);
  v26 = OUTLINED_FUNCTION_54_0();
  v27(v26);
  if (one-time initialization token for contentRequestOptions != -1)
  {
    OUTLINED_FUNCTION_11_24();
  }

  v28 = static EmailContentManager.contentRequestOptions;
  v29 = swift_task_alloc();
  v0[11] = v29;
  *v29 = v0;
  v29[1] = EmailContentManager.createEmailDoc(message:spotlightResult:);
  v30 = v0[3];

  return EMMessage.oms_requestRepresentation(with:)(v28);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 88);
  *v2 = *v0;
  *(v1 + 96) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(**(v0 + 40) + 136);
    v26 = (v2 + *v2);
    v3 = v2[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 104) = v4;
    *v4 = v5;
    v4[1] = EmailContentManager.createEmailDoc(message:spotlightResult:);
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    return v26(v7, v8, v1);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v10, static Logging.answerSynthesis);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_172();
      *v13 = 0;
      _os_log_impl(&dword_25D85C000, v11, v12, "EmailContentManager: EM Content Representation is nil", v13, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);

    OUTLINED_FUNCTION_133();
    v19 = *(v18 + 144);
    v20 = OUTLINED_FUNCTION_119();
    v21(v20);
    v22 = *(v0 + 72);
    v23 = *(v0 + 80);
    v24 = *(v0 + 64);
    $defer #1 () in EmailContentManager.init()();

    OUTLINED_FUNCTION_106();

    return v25();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_78();

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  $defer #1 () in EmailContentManager.init()();

  OUTLINED_FUNCTION_106();

  return v4();
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);

  $defer #1 () in EmailContentManager.init()();

  OUTLINED_FUNCTION_127();
  v5 = *(v0 + 112);

  return v4();
}

uint64_t EMMessage.oms_requestRepresentation(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](EMMessage.oms_requestRepresentation(with:), 0, 0);
}

uint64_t EMMessage.oms_requestRepresentation(with:)()
{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v3, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v4 = v2;
  v5 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[8];
    v7 = v0[4];
    OUTLINED_FUNCTION_28_3();
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = [v7 objectID];
    v10 = [v9 globalMessageID];

    *(v8 + 4) = v10;
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_41_12();
    _os_signpost_emit_with_name_impl(v11, v12, v13, v14, v15, v16, v17, 0xCu);
    OUTLINED_FUNCTION_42_0();
    v18 = v0[4];
  }

  else
  {

    v18 = v0[4];
    v5 = v18;
  }

  v19 = v0[7];
  v20 = v0[8];
  v21 = v0[5];
  v22 = v0[6];
  v23 = v0[3];

  v24 = OUTLINED_FUNCTION_30_16(v22);
  v25(v24);
  v26 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v26);
  v0[9] = OUTLINED_FUNCTION_38_6();
  v27 = *(v22 + 8);
  v28 = OUTLINED_FUNCTION_54_0();
  v29(v28);
  v30 = swift_task_alloc();
  v0[10] = v30;
  *(v30 + 16) = v18;
  *(v30 + 24) = v23;
  v31 = *(MEMORY[0x277D859E0] + 4);
  v32 = swift_task_alloc();
  v0[11] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23EMContentRepresentationCSgMd, &_sSo23EMContentRepresentationCSgMR);
  *v32 = v0;
  v32[1] = EMMessage.oms_requestRepresentation(with:);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822007B8]();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  $defer #1 () in EmailContentManager.init()();

  v5 = v0[1];

  return v5(v4);
}

uint64_t EmailContentManager.createEmailDocumentUsingContentRep(message:contentRep:)()
{
  OUTLINED_FUNCTION_48();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = type metadata accessor for EmailDocument();
  v1[15] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[16] = v6;
  v8 = *(v7 + 64);
  v1[17] = OUTLINED_FUNCTION_160();
  v1[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[19] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[20] = OUTLINED_FUNCTION_199();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[21] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[22] = OUTLINED_FUNCTION_199();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v23 = *(v22 + 64);
  v1[23] = OUTLINED_FUNCTION_160();
  v1[24] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v24);
  v26 = *(v25 + 64);
  v1[25] = OUTLINED_FUNCTION_160();
  v1[26] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  v1[27] = OUTLINED_FUNCTION_160();
  v1[28] = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

{
  OUTLINED_FUNCTION_78();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v1 = type metadata accessor for Logger();
  v0[29] = __swift_project_value_buffer(v1, static Logging.answerSynthesis);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v3))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  v9 = v0[13];

  v0[30] = [v9 searchableItem];
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = EmailContentManager.createEmailDocumentUsingContentRep(message:contentRep:);
  v11 = v0[13];

  return EmailContentManager.fetchHTML(for:contentRep:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v1[6] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v6 = *(v5 + 248);
  v7 = *v0;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v10 + 256) = v9;

  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_159();
  if (*(v0 + 256))
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 232);
    v3 = *(v0 + 96);
    v4 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_119();
    v6 = MEMORY[0x25F89F4C0](v5);

    v7 = [v4 snippetFromHTMLBody:v6 options:32 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:1];

    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = v3;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = OUTLINED_FUNCTION_16_11(v12);
    v14 = *(v0 + 96);
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      v16 = [v14 objectID];
      v17 = [v16 globalMessageID];

      *(v15 + 4) = v17;
      *(v15 + 12) = 2048;
      *(v15 + 14) = String.count.getter();

      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
    }

    v36 = [*(v0 + 104) searchableItem];
    v121 = v9;
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_64_9(v36);

      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v37, &selRef_attachmentNames);
    }

    v38 = [*(v0 + 104) searchableItem];
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_64_9(v38);

      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v39, &selRef_attachmentTypes);
    }

    v40 = [*(v0 + 104) searchableItem];
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_64_9(v40);

      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v41, &selRef_attachmentPaths);
    }

    v42 = [*(v0 + 104) searchableItem];
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_64_9(v42);

      v44 = [v43 mailRead];
      if (v44)
      {
        [v44 BOOLValue];
      }
    }

    v45 = *(v0 + 240);
    if (v45 && (v46 = [*(v0 + 240) attributeSet], v47 = objc_msgSend(v45, sel_uniqueIdentifier), static String._unconditionallyBridgeFromObjectiveC(_:)(), v47, v46))
    {
      if ([v46 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v138 = 0u;
        v140 = 0u;
      }

      *(v0 + 16) = v138;
      *(v0 + 32) = v140;
      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v114 = *(v0 + 80);
          v125 = *(v0 + 72);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v46 = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    outlined destroy of EagerResolutionService?(v0 + 16, &_sypSgMd, &_sypSgMR);
LABEL_23:
    v128 = v46;
    v48 = [*(v0 + 96) subject];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 subjectString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v51 = *(v0 + 224);
    v124 = *(v0 + 232);
    v52 = *(v0 + 208);
    v53 = *(v0 + 216);
    v54 = *(v0 + 192);
    v55 = *(v0 + 176);
    v115 = *(v0 + 200);
    v116 = *(v0 + 184);
    v117 = *(v0 + 168);
    v118 = *(v0 + 160);
    v119 = *(v0 + 152);
    v136 = *(v0 + 128);
    v122 = *(v0 + 120);
    v123 = *(v0 + 144);
    v56 = *(v0 + 96);
    v120 = *(v0 + 88);
    v57 = [v56 senderList];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25ECEmailAddressConvertible_pMd, &_sSo25ECEmailAddressConvertible_pMR);
    v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    EmailContentManager.convertEmailToStringArray(_:)(v58);

    v59 = [v56 toList];
    v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    EmailContentManager.convertEmailToStringArray(_:)(v60);

    v61 = [v56 ccList];
    v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    EmailContentManager.convertEmailToStringArray(_:)(v62);

    v63 = [v56 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v64);
    v65 = type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_10_24(v52, v66, v67, v65);
    type metadata accessor for PartialExtractedAttributes();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5(&outlined read-only object #0 of EmailContentManager.createEmailDocumentUsingContentRep(message:contentRep:));
    String.oms_trimCharacters(_:)(v72, v131, v121);

    _s10Foundation4DateVSgWOcTm_0(v51, v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOcTm_0(v52, v115, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    _s10Foundation4DateVSgWOcTm_0(v54, v116, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    v73 = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_10_24(v55, v74, v75, v73);
    v76 = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_10_24(v117, v77, v78, v76);
    v79 = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_10_24(v118, v80, v81, v79);
    type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
    EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
    outlined destroy of EagerResolutionService?(v54, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of EagerResolutionService?(v52, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of EagerResolutionService?(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v86 = *(v136 + 16);
    v86(v123, v120, v122);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    v89 = OUTLINED_FUNCTION_16_11(v88);
    v90 = *(v0 + 144);
    if (v89)
    {
      v92 = *(v0 + 128);
      v91 = *(v0 + 136);
      v93 = *(v0 + 120);
      OUTLINED_FUNCTION_28_3();
      v133 = v94;
      swift_slowAlloc();
      v139 = OUTLINED_FUNCTION_10_23();
      *v52 = 136642819;
      v86(v91, v90, v93);
      String.init<A>(describing:)();
      (*(v92 + 8))(v90, v93);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v52 + 4) = v95;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v139);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
      v101 = *(v0 + 120);
      v102 = *(v0 + 128);

      (*(v102 + 8))(v90, v101);
    }

    v104 = *(v0 + 216);
    v103 = *(v0 + 224);
    v106 = *(v0 + 200);
    v105 = *(v0 + 208);
    v108 = *(v0 + 184);
    v107 = *(v0 + 192);
    v110 = *(v0 + 168);
    v109 = *(v0 + 176);
    v112 = *(v0 + 152);
    v111 = *(v0 + 160);
    v134 = *(v0 + 144);
    v137 = *(v0 + 136);

    OUTLINED_FUNCTION_106();
    goto LABEL_29;
  }

  v23 = *(v0 + 232);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_172();
    *v26 = 0;
    _os_log_impl(&dword_25D85C000, v24, v25, "EmailContentManager: HTML body is nil", v26, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v27 = *(v0 + 240);
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v30 = *(v0 + 200);
  v31 = *(v0 + 208);
  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v126 = *(v0 + 176);
  v127 = *(v0 + 168);
  v129 = *(v0 + 160);
  v130 = *(v0 + 152);
  v132 = *(v0 + 144);
  v135 = *(v0 + 136);

  lazy protocol witness table accessor for type OmniSearchError and conformance OmniSearchError();
  swift_allocError();
  *v34 = 0xD00000000000002FLL;
  *(v34 + 8) = 0x800000025DBF4690;
  *(v34 + 16) = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_127();
LABEL_29:

  return v35();
}

void EmailContentManager.createEmailDocumentWithSpotlightDocument(message:spotlightResult:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v147 = v2;
  v163 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_49_3();
  v162 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_3();
  v160 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_49_3();
  v159 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_49_3();
  v156 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v25 = OUTLINED_FUNCTION_114(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_109();
  v154 = v28 - v29;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v30);
  v32 = &v132 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v34 = OUTLINED_FUNCTION_114(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_109();
  v153 = v37 - v38;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v39);
  v165 = &v132 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v42 = OUTLINED_FUNCTION_114(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_109();
  v150 = v45 - v46;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v47);
  v164 = &v132 - v48;
  v49 = type metadata accessor for EmailDocument();
  v50 = OUTLINED_FUNCTION_14(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_109();
  v157 = (v55 - v56);
  OUTLINED_FUNCTION_174();
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v132 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v132 - v61;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v63 = type metadata accessor for Logger();
  v64 = __swift_project_value_buffer(v63, static Logging.answerSynthesis);
  v65 = *(v52 + 16);
  v155 = v1;
  v65(v62, v1, v49);
  v149 = v64;
  v66 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_77_4();
  v68 = os_log_type_enabled(v66, v67);
  v161 = v49;
  v158 = v52;
  v133 = v60;
  v151 = v65;
  v152 = v52 + 16;
  if (v68)
  {
    OUTLINED_FUNCTION_28_3();
    v69 = swift_slowAlloc();
    v146 = v32;
    v70 = v69;
    v71 = OUTLINED_FUNCTION_49_0();
    v166 = v71;
    *v70 = 136642819;
    v65(v60, v62, v49);
    String.init<A>(describing:)();
    v148 = *(v52 + 8);
    v148(v62, v49);
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v70 + 4) = v72;
    OUTLINED_FUNCTION_49_16(&dword_25D85C000, v73, v64, "EmailContentManager: Creating EmailDocument using spotlight result %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    OUTLINED_FUNCTION_42_0();
    v32 = v146;
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v148 = *(v52 + 8);
    v148(v62, v49);
  }

  v146 = WalletPass.id.getter();
  v145 = v74;
  v144 = WalletPass.title.getter();
  v143 = v75;
  v76 = v147;
  v77 = [v147 subject];
  if (v77)
  {
    v78 = v77;
    v79 = [v77 subjectString];

    v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = v80;
  }

  else
  {
    v142 = 0;
    v141 = 0;
  }

  v81 = NoteDocument.folderName.getter();
  v83 = v82;
  v84 = [v76 senderList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25ECEmailAddressConvertible_pMd, &_sSo25ECEmailAddressConvertible_pMR);
  v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v140 = EmailContentManager.convertEmailToStringArray(_:)(v85);

  v86 = [v76 toList];
  v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v139 = EmailContentManager.convertEmailToStringArray(_:)(v87);

  v88 = [v76 ccList];
  v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v138 = EmailContentManager.convertEmailToStringArray(_:)(v89);

  v90 = [v76 date];
  v91 = v164;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v92 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v91, 0, 1, v92);
  v147 = EmailDocument.attachmentNames.getter();
  v137 = EmailDocument.attachmentTypes.getter();
  v136 = EmailDocument.attachmentPaths.getter();
  LODWORD(v155) = EmailDocument.unread.getter();
  v93 = type metadata accessor for DataDetectorResults();
  OUTLINED_FUNCTION_10_24(v165, v94, v95, v93);
  type metadata accessor for PartialExtractedAttributes();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  if (v83)
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5(&outlined read-only object #0 of EmailContentManager.createEmailDocumentWithSpotlightDocument(message:spotlightResult:));
    String.oms_trimCharacters(_:)(v100, v81, v83);
    v135 = v101;
    v134 = v102;
  }

  else
  {
    v135 = 0;
    v134 = 0;
  }

  v103 = v164;
  v104 = v150;
  _s10Foundation4DateVSgWOcTm_0(v164, v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v105 = v165;
  _s10Foundation4DateVSgWOcTm_0(v165, v153, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  _s10Foundation4DateVSgWOcTm_0(v32, v154, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v106 = type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_10_24(v156, v107, v108, v106);
  v109 = type metadata accessor for PreExtractedContact();
  OUTLINED_FUNCTION_10_24(v159, v110, v111, v109);
  v112 = type metadata accessor for PreExtractedSharedLink();
  OUTLINED_FUNCTION_10_24(v160, v113, v114, v112);
  type metadata accessor for PreExtractedBreadcrumb();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
  v119 = v163;
  EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
  outlined destroy of EagerResolutionService?(v32, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of EagerResolutionService?(v105, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of EagerResolutionService?(v103, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v120 = v157;
  v121 = v161;
  v122 = v151;
  v151(v157, v119, v161);
  v123 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_77_4();
  if (os_log_type_enabled(v123, v124))
  {
    OUTLINED_FUNCTION_28_3();
    v125 = swift_slowAlloc();
    v126 = OUTLINED_FUNCTION_49_0();
    v166 = v126;
    *v125 = 136642819;
    v122(v133, v120, v121);
    String.init<A>(describing:)();
    v127 = OUTLINED_FUNCTION_46_16();
    v128(v127);
    v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v125 + 4) = v129;
    _os_log_impl(&dword_25D85C000, v123, v104, "EmailContentManager: Returning %{sensitive}s", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v130 = OUTLINED_FUNCTION_46_16();
    v131(v130);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t EmailContentManager.convertEmailToStringArray(_:)(uint64_t a1)
{
  v3 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v4 = MEMORY[0x25F8A01B0](a1);
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v13;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25F89FFD0](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [v8 stringValue];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_42_14();
      swift_unknownObjectRelease();

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1);
      }

      ++v7;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = v1;
      *(v12 + 40) = v2;
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t EmailContentManager.fetchHTML(for:contentRep:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v2 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  v0[3] = OUTLINED_FUNCTION_199();
  v5 = type metadata accessor for URL();
  v0[4] = v5;
  OUTLINED_FUNCTION_21(v5);
  v0[5] = v6;
  v8 = *(v7 + 64);
  v0[6] = OUTLINED_FUNCTION_160();
  v0[7] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_75();
  v1 = [*(v0 + 16) contentURL];
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v2, v3, v4);
    static String.Encoding.utf8.getter();
    v1 = String.init(contentsOf:encoding:)();
    v7 = *(v0 + 56);
    v8 = *(v0 + 32);
    v10 = v9;
    v11 = *(*(v0 + 40) + 8);
    v12 = OUTLINED_FUNCTION_54_0();
    v13(v12);
  }

  else
  {
    v10 = 0;
  }

  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  v16 = *(v0 + 24);

  OUTLINED_FUNCTION_32_5();

  return v17(v1, v10);
}

uint64_t EmailContentManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void $defer #1 () in EmailContentManager.init()()
{
  OUTLINED_FUNCTION_155();
  v24 = v0;
  v1 = type metadata accessor for OSSignpostError();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v17 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v17, static Logging.searchSignposter);
  v18 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v8, v1) == *MEMORY[0x277D85B00])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v8, v1);
      v20 = "";
    }

    v21 = OUTLINED_FUNCTION_172();
    *v21 = 0;
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v18, v19, v22, v24, v20, v21, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  (*(v12 + 8))(v16, v9);
  OUTLINED_FUNCTION_148();
}

void closure #1 in EMMessage.oms_requestRepresentation(with:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in EMMessage.oms_requestRepresentation(with:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed EMContentRepresentation?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  v15 = [v14 requestRepresentationWithOptions:a3 completionHandler:v13];
  _Block_release(v13);
}

uint64_t closure #1 in closure #1 in EMMessage.oms_requestRepresentation(with:)(void *a1, id a2, void *a3)
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logging.answerSynthesis);
    v8 = a3;
    v9 = a2;
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 134218242;
      v15 = [v10 objectID];
      v16 = [v15 globalMessageID];

      *(v13 + 4) = v16;
      *(v13 + 12) = 2112;
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v18;
      *v14 = v18;
      _os_log_impl(&dword_25D85C000, v11, v12, "Unable to request representation for message: %lld with error %@", v13, 0x16u);
      outlined destroy of EagerResolutionService?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F8A1050](v14, -1, -1);
      MEMORY[0x25F8A1050](v13, -1, -1);
    }

    else
    {
    }
  }

  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t @nonobjc EMContentRequestOptions.init(builder:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = partial apply for thunk for @callee_guaranteed (@guaranteed EMContentRequestOptionsBuilder) -> ();
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed EMContentRequestOptionsBuilder) -> ();
  v9[3] = &block_descriptor_39;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed EMContentRequestOptionsBuilder) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_6(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_51(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_5(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #3 in EmailContentManager.hydrateEmailResults(_:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_93();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v3 + 16) = v7;
  *v7 = v8;
  v7[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #3 in EmailContentManager.hydrateEmailResults(_:)(v2, v0, v4, v5);
}

unint64_t lazy protocol witness table accessor for type OmniSearchError and conformance OmniSearchError()
{
  result = lazy protocol witness table cache variable for type OmniSearchError and conformance OmniSearchError;
  if (!lazy protocol witness table cache variable for type OmniSearchError and conformance OmniSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchError and conformance OmniSearchError);
  }

  return result;
}

uint64_t dispatch thunk of EmailContentManager.hydrateEmailResults(_:)()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  OUTLINED_FUNCTION_133();
  v4 = *(v3 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = dispatch thunk of EmailContentManager.hydrateEmailResults(_:);

  return v8(v2);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of EmailContentManager.mailURLFromId(_:networkUsage:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_133();
  v8 = *(v7 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 16) = v10;
  *v10 = v0;
  v10[1] = dispatch thunk of EmailContentManager.mailURLFromId(_:networkUsage:);

  return v12(v6, v4, v2);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_32_5();
  v5 = OUTLINED_FUNCTION_94();

  return v6(v5);
}

uint64_t dispatch thunk of EmailContentManager.mailIDForMailURL(_:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_133();
  v2 = *(v1 + 112);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = dispatch thunk of EmailContentManager.mailIDForMailURL(_:);
  v5 = OUTLINED_FUNCTION_119();

  return v7(v5);
}

uint64_t dispatch thunk of EmailContentManager.createEmailDocumentUsingContentRep(message:contentRep:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_133();
  v8 = *(v7 + 136);
  v13 = (v8 + *v8);
  v9 = v8[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 16) = v10;
  *v10 = v11;
  v10[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v13(v6, v4, v2);
}

uint64_t partial apply for closure #1 in closure #1 in EMMessage.oms_requestRepresentation(with:)()
{
  OUTLINED_FUNCTION_93();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  OUTLINED_FUNCTION_114(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = OUTLINED_FUNCTION_119();

  return closure #1 in closure #1 in EMMessage.oms_requestRepresentation(with:)(v5, v6, v7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in EmailContentManager.mailURLFromId(_:networkUsage:)()
{
  OUTLINED_FUNCTION_93();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_119();

  return closure #1 in closure #1 in EmailContentManager.mailURLFromId(_:networkUsage:)(v3);
}

uint64_t partial apply for closure #1 in closure #3 in EmailContentManager.hydrateEmailResults(_:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8);
  v10 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in closure #3 in EmailContentManager.hydrateEmailResults(_:)(v3, v0 + v6, v9, v10);
}

uint64_t _s10Foundation4DateVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_51(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed EMContentRequestOptionsBuilder) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_11_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_17()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  v11 = v0[8];
}

uint64_t OUTLINED_FUNCTION_46_16()
{
  v2 = *(v1 - 160) + 8;
  result = v0;
  v4 = *(v1 - 240);
  return result;
}

void OUTLINED_FUNCTION_49_16(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_63_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_64_9(void *a1)
{

  return [a1 (v1 + 116)];
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = specialized Array.count.getter(a1);
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
LABEL_10:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x25F89FFD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v10;
    closure #1 in closure #1 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(&v13, a2, a3, a4);

    if (v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t static EventManager.hydrateWithEvents(for:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v4 = type metadata accessor for SearchResult(0);
  v0[12] = v4;
  OUTLINED_FUNCTION_21(v4);
  v0[13] = v5;
  v7 = *(v6 + 64);
  v0[14] = OUTLINED_FUNCTION_160();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v0[17] = v8;
  OUTLINED_FUNCTION_21(v8);
  v0[18] = v9;
  v11 = *(v10 + 64);
  v0[19] = OUTLINED_FUNCTION_160();
  v0[20] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[20];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v4 = v0[20];
    v5 = OUTLINED_FUNCTION_172();
    v6 = OUTLINED_FUNCTION_159_5(v5);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v7, v8, v6, "EventManager.hydrateWithEvents", "");
    OUTLINED_FUNCTION_37_0();
  }

  v9 = v0[19];
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[18];

  v13 = OUTLINED_FUNCTION_30_16(v12);
  v14(v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v15);
  v0[21] = OUTLINED_FUNCTION_38_6();
  v16 = *(v12 + 8);
  v17 = OUTLINED_FUNCTION_54_0();
  v18(v17);
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_eventAnswers))
  {
    v20 = v0[10];
    v19 = v0[11];
    v21 = swift_allocObject();
    v0[22] = v21;
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    OUTLINED_FUNCTION_175_5(&async function pointer to specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:));

    v22 = swift_task_alloc();
    v0[23] = v22;
    *v22 = v0;
    v22[1] = static EventManager.hydrateWithEvents(for:locale:);
    v23 = v0[9];

    return v37(0, &async function pointer to partial apply for closure #1 in static EventManager.hydrateWithEvents(for:locale:), v21, v23);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v25, static Logging.answerSynthesis);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v27))
    {
      v28 = OUTLINED_FUNCTION_51_0();
      v38 = OUTLINED_FUNCTION_49_0();
      *v28 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    v34 = v0[9];
    OUTLINED_FUNCTION_174_4();

    $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

    v35 = OUTLINED_FUNCTION_28();

    return v36(v35);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 184);
  v5 = *(v3 + 176);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 192) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 192);
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v55 = v6;
    v56 = v4;
    do
    {
      v7 = *(v0 + 128);
      OUTLINED_FUNCTION_0_49();
      v8 = OUTLINED_FUNCTION_94();
      _s10OmniSearch0B6ResultVWOcTm_7(v8, v9, v10);
      v11 = *(v4 + 24);
      v12 = OUTLINED_FUNCTION_158();
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      v14 = CodableNSSecureCoding.wrappedValue.getter();
      v15 = [v14 attributeSet];

      v16 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v15);
      if (v16)
      {
        v17 = v16;
        if (*(v16 + 16))
        {
          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v19 = *(v0 + 120);
          v18 = *(v0 + 128);
          v20 = *(v0 + 112);
          v21 = type metadata accessor for Logger();
          __swift_project_value_buffer(v21, static Logging.answerSynthesis);
          _s10OmniSearch0B6ResultVWOcTm_7(v18, v19, type metadata accessor for SearchResult);
          v22 = OUTLINED_FUNCTION_26_2();
          _s10OmniSearch0B6ResultVWOcTm_7(v22, v23, type metadata accessor for SearchResult);

          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.info.getter();

          v26 = os_log_type_enabled(v24, v25);
          v27 = *(v0 + 120);
          v28 = *(v0 + 128);
          v29 = *(v0 + 112);
          if (v26)
          {
            v30 = swift_slowAlloc();
            swift_slowAlloc();
            *v30 = 136315906;
            *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v30 + 12) = 2080;
            v53 = v25;
            SearchResultItem.type.getter((v0 + 200));
            lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
            dispatch thunk of CustomStringConvertible.description.getter();
            v54 = v28;
            OUTLINED_FUNCTION_1_47();
            v52 = v31;
            _s10OmniSearch0B6ResultVWOhTm_5(v27, v32);
            OUTLINED_FUNCTION_26_2();
            v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v30 + 14) = v33;
            *(v30 + 22) = 2080;
            SearchResultItem.associatedValue.getter((v0 + 16));
            v34 = *(v0 + 48);
            v35 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
            v36 = *(v34 + 32);
            v37 = v35;
            v38 = OUTLINED_FUNCTION_54_0();
            v39(v38);
            OUTLINED_FUNCTION_67_8();
            _s10OmniSearch0B6ResultVWOhTm_5(v29, v52);
            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
            OUTLINED_FUNCTION_88();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_104_9();

            *(v30 + 24) = v37;
            *(v30 + 32) = 2080;
            MEMORY[0x25F89F8A0](v17, MEMORY[0x277D837D0]);
            OUTLINED_FUNCTION_67_8();

            OUTLINED_FUNCTION_88();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_104_9();

            *(v30 + 34) = v37;
            _os_log_impl(&dword_25D85C000, v24, v53, "%s %s %s has MDItemDetectedEventTypes: %s", v30, 0x2Au);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_64_10();
            OUTLINED_FUNCTION_72_9();

            v40 = v54;
            v41 = v52;
          }

          else
          {

            _s10OmniSearch0B6ResultVWOhTm_5(v29, type metadata accessor for SearchResult);
            _s10OmniSearch0B6ResultVWOhTm_5(v27, type metadata accessor for SearchResult);
            v40 = v28;
            v41 = type metadata accessor for SearchResult;
          }

          _s10OmniSearch0B6ResultVWOhTm_5(v40, v41);
          v6 = v55;
          v4 = v56;
        }

        else
        {
          v45 = *(v0 + 128);
          OUTLINED_FUNCTION_1_47();
          _s10OmniSearch0B6ResultVWOhTm_5(v46, v47);
        }
      }

      else
      {
        v42 = *(v0 + 128);
        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v43, v44);
      }

      v5 += v6;
      --v2;
    }

    while (v2);
    v48 = *(v0 + 192);
  }

  OUTLINED_FUNCTION_174_4();
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  v49 = OUTLINED_FUNCTION_28();

  return v50(v49);
}

uint64_t closure #1 in static EventManager.hydrateWithEvents(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v4[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for EmailDocument();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v9 = *(v8 + 64) + 15;
  v4[16] = swift_task_alloc();
  v10 = type metadata accessor for SearchResultItem(0);
  v4[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v12 = type metadata accessor for SearchResult(0);
  v4[19] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static EventManager.hydrateWithEvents(for:locale:), 0, 0);
}

uint64_t closure #1 in static EventManager.hydrateWithEvents(for:locale:)()
{
  OUTLINED_FUNCTION_78();
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[9];
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v5, v1, v6);
  OUTLINED_FUNCTION_5_30();
  v7 = OUTLINED_FUNCTION_107();
  _s10OmniSearch0B6ResultVWOcTm_7(v7, v8, v9);
  OUTLINED_FUNCTION_32_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[18];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v14 = type metadata accessor for MobileSMSDocument();
      goto LABEL_35;
    case 2:
      v14 = type metadata accessor for CalendarEvent();
      goto LABEL_35;
    case 3:
      v14 = type metadata accessor for Photo();
      goto LABEL_35;
    case 4:
      v14 = type metadata accessor for NoteDocument();
      goto LABEL_35;
    case 5:
      v14 = type metadata accessor for Reminder();
      goto LABEL_35;
    case 6:
      v14 = type metadata accessor for PhoneHistory();
      goto LABEL_35;
    case 7:
      v14 = type metadata accessor for VoicemailTranscript();
      goto LABEL_35;
    case 8:
      v14 = type metadata accessor for JournalEntry();
      goto LABEL_35;
    case 9:
      v14 = type metadata accessor for VoiceMemo();
      goto LABEL_35;
    case 10:
      v14 = type metadata accessor for Safari();
      goto LABEL_35;
    case 11:
      v14 = type metadata accessor for FileDocument();
      goto LABEL_35;
    case 12:
      v14 = type metadata accessor for WalletTransaction();
      goto LABEL_35;
    case 13:
      v14 = type metadata accessor for WalletPass();
      goto LABEL_35;
    case 14:
      v14 = type metadata accessor for Contact();
      goto LABEL_35;
    case 15:
      v14 = type metadata accessor for Appointment();
      goto LABEL_35;
    case 16:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5(v13);
      v14 = type metadata accessor for FlightReservation();
      goto LABEL_35;
    case 17:
      v14 = type metadata accessor for HotelReservation();
      goto LABEL_35;
    case 18:
      v14 = type metadata accessor for Party();
      goto LABEL_35;
    case 19:
      v14 = type metadata accessor for RestaurantReservation();
      goto LABEL_35;
    case 20:
      v14 = type metadata accessor for RentalCarReservation();
      goto LABEL_35;
    case 21:
      v14 = type metadata accessor for ShippingOrder();
      goto LABEL_35;
    case 22:
      v14 = type metadata accessor for TicketedTransportation();
      goto LABEL_35;
    case 23:
      v14 = type metadata accessor for TicketedShow();
      goto LABEL_35;
    case 24:
      v14 = type metadata accessor for Trip();
      goto LABEL_35;
    case 25:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5(v15);
      v12 = type metadata accessor for GlobalItem;
      goto LABEL_33;
    case 26:
    case 27:
      v12 = type metadata accessor for SearchResultItem;
      goto LABEL_33;
    case 28:
      v12 = type metadata accessor for Answer;
LABEL_33:
      _s10OmniSearch0B6ResultVWOhTm_5(v11, v12);
      goto LABEL_36;
    case 29:
      v14 = type metadata accessor for OnScreen();
      goto LABEL_35;
    case 30:
      v14 = type metadata accessor for GenericSpotlightItem();
LABEL_35:
      OUTLINED_FUNCTION_17(v14);
      (*(v21 + 8))(v11);
LABEL_36:
      v23 = v0[8];
      v22 = v0[9];
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v24, v25, v26);
      v27 = v0[20];
      v28 = v0[18];
      v29 = v0[16];
      v30 = v0[13];
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v27, v31);

      OUTLINED_FUNCTION_127();

      result = v32();
      break;
    default:
      (*(v0[15] + 32))(v0[16], v0[18], v0[14]);
      v16 = swift_task_alloc();
      v0[21] = v16;
      *v16 = v0;
      v16[1] = closure #1 in static EventManager.hydrateWithEvents(for:locale:);
      v17 = v0[10];
      v18 = v0[11];
      v19 = v0[9];

      result = static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)();
      break;
  }

  return result;
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 168);
  *v2 = *v0;
  *(v1 + 176) = v5;
  *(v1 + 184) = v6;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t closure #1 in static EventManager.hydrateWithEvents(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  v13 = v12[22];
  v14 = v12[23];
  v15 = v12[16];
  EmailDocument.extractedEventsLLMConsumableDescription.setter();
  EmailDocument.extractedEventsLLMConsumableDescription.getter();
  if (v16)
  {
  }

  else
  {
    v17 = v12[16];
    v18 = v12[13];
    v19 = v12[9];
    v20 = *(v12[19] + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v21 = CodableNSSecureCoding.wrappedValue.getter();
    PartialExtractedAttributes.init(item:bundleID:)(v21, 0xD000000000000014, 0x800000025DBF1CF0, v18);
    EmailDocument.partialExtractedAttributes.setter();
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v22, static Logging.answerSynthesis);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_91_0(v24))
    {
      v25 = v12[16];
      v27 = v12[12];
      v26 = v12[13];
      OUTLINED_FUNCTION_90_1();
      a10 = OUTLINED_FUNCTION_51_13();
      *v18 = 136315395;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_25_18(v28);
      swift_beginAccess();
      EmailDocument.partialExtractedAttributes.getter();
      swift_endAccess();
      OUTLINED_FUNCTION_179_0();
      String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v18 + 14) = v29;
      OUTLINED_FUNCTION_92_8();
      _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
      OUTLINED_FUNCTION_148_6();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }
  }

  v35 = v12[20];
  v37 = v12[16];
  v36 = v12[17];
  v38 = v12[14];
  v39 = v12[15];
  v40 = v12[8];
  OUTLINED_FUNCTION_0_50();
  _s10OmniSearch0B6ResultVWOhTm_5(v35, v41);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v42 = OUTLINED_FUNCTION_30_16(v39);
  v43(v42);
  OUTLINED_FUNCTION_107();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v35, v40, v44);
  v45 = *(v39 + 8);
  v46 = OUTLINED_FUNCTION_54_0();
  v47(v46);
  v48 = v12[20];
  v49 = v12[18];
  v50 = v12[16];
  v51 = v12[13];
  OUTLINED_FUNCTION_1_47();
  _s10OmniSearch0B6ResultVWOhTm_5(v48, v52);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_136_7();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
}

uint64_t static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[24] = v1;
  v0[25] = v2;
  v0[23] = v3;
  v4 = type metadata accessor for SearchResult(0);
  v0[26] = v4;
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v0[27] = OUTLINED_FUNCTION_160();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v0[30] = v7;
  OUTLINED_FUNCTION_21(v7);
  v0[31] = v8;
  v10 = *(v9 + 64);
  v0[32] = OUTLINED_FUNCTION_160();
  v0[33] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 216);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  _s10OmniSearch0B6ResultVWOcTm_7(*(v0 + 184), *(v0 + 224), type metadata accessor for SearchResult);
  v5 = OUTLINED_FUNCTION_30_5();
  _s10OmniSearch0B6ResultVWOcTm_7(v5, v6, type metadata accessor for SearchResult);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = *(v0 + 328);
    v35 = *(v0 + 296);
    v36 = *(v0 + 304);
    v33 = v8;
    v9 = *(v0 + 288);
    v10 = *(v0 + 216);
    v11 = *(v0 + 224);
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136315907;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v12 + 12) = 2080;
    SearchResultItem.type.getter((v0 + 336));
    lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_67_8();
    _s10OmniSearch0B6ResultVWOhTm_5(v11, type metadata accessor for SearchResult);
    OUTLINED_FUNCTION_88();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_104_9();

    *(v12 + 14) = v0 + 336;
    *(v12 + 22) = 2080;
    SearchResultItem.associatedValue.getter((v0 + 64));
    v13 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    v14 = *(v13 + 32);
    v15 = OUTLINED_FUNCTION_104_9();
    v16(v15, v13);
    OUTLINED_FUNCTION_67_8();
    v17 = OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B6ResultVWOhTm_5(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    OUTLINED_FUNCTION_88();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_104_9();

    *(v12 + 24) = v10;
    *(v12 + 32) = 2085;
    *(v0 + 168) = v4;
    *(v0 + 176) = v3;

    String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v12 + 34) = v19;
    _os_log_impl(&dword_25D85C000, v7, v33, "%s returning LLM prompt from com.apple.spotlight.events associated with source %s %s: %{sensitive}s", v12, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    v20 = *(v0 + 296);
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);

    _s10OmniSearch0B6ResultVWOhTm_5(v22, type metadata accessor for SearchResult);
    v23 = OUTLINED_FUNCTION_26_2();
    _s10OmniSearch0B6ResultVWOhTm_5(v23, v24);
  }

  v25 = *(v0 + 272);
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  v27 = *(v0 + 256);
  v26 = *(v0 + 264);
  v29 = *(v0 + 224);
  v28 = *(v0 + 232);
  v30 = *(v0 + 216);

  v31 = *(v0 + 8);

  return v31(v4, v3);
}

uint64_t static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v19 = *(v18 + 264);
  v20 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v20, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v21 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v22 = *(v18 + 264);
    v23 = OUTLINED_FUNCTION_172();
    v24 = OUTLINED_FUNCTION_159_5(v23);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v25, v26, v24, "EventManager.fetchExtractedEventsLLMConsumableDescription", "");
    OUTLINED_FUNCTION_37_0();
  }

  v27 = *(v18 + 256);
  v28 = *(v18 + 264);
  v29 = *(v18 + 240);
  v30 = *(v18 + 248);

  v31 = OUTLINED_FUNCTION_30_16(v30);
  v32(v31);
  v33 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v33);
  v127 = OUTLINED_FUNCTION_38_6();
  *(v18 + 272) = v127;
  v34 = *(v30 + 8);
  v35 = OUTLINED_FUNCTION_54_0();
  v36(v35);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v37 = *(v18 + 232);
  v38 = *(v18 + 184);
  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static Logging.answerSynthesis);
  *(v18 + 280) = v40;
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v38, v37, v41);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v18 + 232);
  if (v44)
  {
    v46 = OUTLINED_FUNCTION_90_1();
    *&a13 = OUTLINED_FUNCTION_260();
    *v46 = 136315395;
    OUTLINED_FUNCTION_44_17();
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v46 + 12) = 2085;
    SearchResult.description.getter();
    OUTLINED_FUNCTION_164_4();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v45, v47);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v46 + 14) = v48;
    OUTLINED_FUNCTION_184_4(&dword_25D85C000, v49, v50, "%s fetching com.apple.spotlight.events associated with this: %{sensitive}s");
    OUTLINED_FUNCTION_152_5();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_72_9();
  }

  else
  {

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v45, v51);
  }

  v52 = *(v18 + 184);
  v53 = *(*(v18 + 208) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v54 = CodableNSSecureCoding.wrappedValue.getter();
  outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v54);
  if (v55)
  {
    a11 = v40;
    if (one-time initialization token for dict != -1)
    {
      swift_once();
    }

    v56 = static BundleIdEventSourceIdMapping.dict;
    v57 = OUTLINED_FUNCTION_118_0();
    v59 = specialized Dictionary.subscript.getter(v57, v58, v56);
    if (v60)
    {
      v61 = v59;
      v62 = v60;

      v63 = CodableNSSecureCoding.wrappedValue.getter();
      v64 = [v63 attributeSet];

      v65 = MEMORY[0x25F89F4C0](v61, v62);
      v66 = [v64 attributeForKey_];

      if (v66)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        a13 = 0u;
        a14 = 0u;
      }

      *(v18 + 120) = a14;
      *(v18 + 104) = a13;
      if (*(v18 + 128))
      {
        if (swift_dynamicCast())
        {
          v75 = *(v18 + 136);
          v74 = *(v18 + 144);
          if (one-time initialization token for fetchAttributes != -1)
          {
            swift_once();
          }

          v76 = static LocalIndexClient.fetchAttributes;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_25DBC8180;
          v78 = *MEMORY[0x277CC2A58];
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(inited + 40) = v79;

          specialized Array.append<A>(contentsOf:)(inited);
          v80 = v76;

          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.info.getter();

          v128 = v80;
          if (os_log_type_enabled(v81, v82))
          {
            a9 = v61;
            a10 = v62;
            v83 = OUTLINED_FUNCTION_90_1();
            OUTLINED_FUNCTION_260();
            *v83 = 136315394;
            OUTLINED_FUNCTION_98_2();
            OUTLINED_FUNCTION_44_17();
            *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v83 + 12) = 2080;
            MEMORY[0x25F89F8A0](v80, MEMORY[0x277D837D0]);
            v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v83 + 14) = v84;
            _os_log_impl(&dword_25D85C000, v81, v82, "%s fetching attributes from com.apple.spotlight.events: %s", v83, 0x16u);
            OUTLINED_FUNCTION_152_5();
            OUTLINED_FUNCTION_42_0();
            v61 = a9;
            OUTLINED_FUNCTION_42_0();
          }

          v129 = v61;
          MEMORY[0x25F89F6C0](2243901, 0xE300000000000000);
          v102 = OUTLINED_FUNCTION_118_0();
          MEMORY[0x25F89F6C0](v102);

          MEMORY[0x25F89F6C0](34, 0xE100000000000000);

          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = OUTLINED_FUNCTION_90_1();
            v129 = OUTLINED_FUNCTION_260();
            *v105 = 136315394;
            OUTLINED_FUNCTION_44_17();
            *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v105 + 12) = 2080;
            OUTLINED_FUNCTION_64_0();
            *(v105 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            _os_log_impl(&dword_25D85C000, v103, v104, "%s queryString: %s", v105, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_33_0();
          }

          *(v18 + 288) = 0x800000025DBF4860;
          v107 = *(v18 + 192);
          v106 = *(v18 + 200);
          v108 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
          *(v18 + 296) = v108;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v108 setFetchAttributes_];

          outlined bridged method (mbnn) of @objc CSSearchQueryContext.bundleIDs.setter(&outlined read-only object #0 of static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:), v108);
          v110 = objc_allocWithZone(MEMORY[0x277CC3498]);
          v111 = v108;
          v112 = OUTLINED_FUNCTION_64_0();
          v114 = @nonobjc CSSearchQuery.init(queryString:queryContext:)(v112, v113, v108);
          *(v18 + 304) = v114;
          v115 = swift_task_alloc();
          *(v18 + 312) = v115;
          v115[2] = v114;
          v115[3] = v107;
          v115[4] = v106;
          v116 = *(MEMORY[0x277D859E0] + 4);
          v117 = swift_task_alloc();
          *(v18 + 320) = v117;
          *(v18 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          *v117 = v18;
          v117[1] = static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:);
          OUTLINED_FUNCTION_17_4();

          return MEMORY[0x2822007B8](v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, v128, v129, v62, a14, *(&a14 + 1), a15, a16, a17, a18);
        }
      }

      else
      {
        outlined destroy of IntentApplication?(v18 + 104, &_sypSgMd, &_sypSgMR);
      }

      v67 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v67, v85))
      {
        OUTLINED_FUNCTION_90_1();
        *&a13 = OUTLINED_FUNCTION_51_13();
        *a11 = 136315394;
        OUTLINED_FUNCTION_44_17();
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_94_8(v86);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_151_3();
        *(a11 + 14) = "fetchExtractedEventsLLMConsumableDescription(for:locale:)";
        _os_log_impl(&dword_25D85C000, v67, v85, "%s unable to get attribute for %s)", a11, 0x16u);
        OUTLINED_FUNCTION_152_5();
        OUTLINED_FUNCTION_42_0();
        goto LABEL_31;
      }

LABEL_33:

      goto LABEL_34;
    }

    v67 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v67, v70))
    {
      goto LABEL_33;
    }

    v71 = OUTLINED_FUNCTION_49_0();
    *&a13 = swift_slowAlloc();
    *v71 = 136315650;
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_44_17();
    *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v71 + 12) = 2080;
    OUTLINED_FUNCTION_118_0();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v71 + 14) = v72;
    *(v71 + 22) = 2080;
    Dictionary.description.getter();
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v71 + 24) = v73;
    _os_log_impl(&dword_25D85C000, v67, v70, "%s Skipping. Unsupported as we don't have the mapping for source id of this bundleID: %s. Current dict: %s", v71, 0x20u);
    OUTLINED_FUNCTION_148_6();
    swift_arrayDestroy();
LABEL_20:
    OUTLINED_FUNCTION_72_9();
LABEL_31:
    OUTLINED_FUNCTION_42_0();
    goto LABEL_32;
  }

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_51_0();
    *&a13 = OUTLINED_FUNCTION_49_0();
    *v69 = 136315138;
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_44_17();
    *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v67, v68, "%s unable to get bundleID from CSItem", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a13);
    goto LABEL_20;
  }

LABEL_32:

LABEL_34:
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  v88 = *(v18 + 256);
  v87 = *(v18 + 264);
  v90 = *(v18 + 224);
  v89 = *(v18 + 232);
  v91 = *(v18 + 216);

  v92 = *(v18 + 8);
  OUTLINED_FUNCTION_17_4();

  return v96(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, v127, a13, *(&a13 + 1), a14, *(&a14 + 1), a15, a16, a17, a18);
}

uint64_t closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5NeverOGMd, &_sScCySSSgs5NeverOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v26 = partial apply for closure #1 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:);
  v27 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ();
  v25 = &block_descriptor_1;
  v14 = _Block_copy(&aBlock);

  v15 = a2;
  [a2 setFoundItemsHandler_];
  _Block_release(v14);
  (*(v8 + 16))(v11, v21, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v11, v7);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v26 = partial apply for closure #2 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:);
  v27 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v25 = &block_descriptor_30;
  v18 = _Block_copy(&aBlock);

  [v15 setCompletionHandler_];
  _Block_release(v18);
  [v15 start];
}

void closure #1 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.answerSynthesis);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 12) = 2048;
    *(v11 + 14) = specialized Array.count.getter(a1);

    _os_log_impl(&dword_25D85C000, v9, v10, "%s found %ld Event(s)", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8A1050](v12, -1, -1);
    MEMORY[0x25F8A1050](v11, -1, -1);
  }

  else
  {
  }

  specialized Sequence.forEach(_:)(a1, a2, a3, (a4 + 16));
}

void closure #1 in closure #1 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v34 - v10;
  v12 = type metadata accessor for SearchResult(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static EventManager.createSearchResult(from:)(*a1, v16, v17, v18, v19, v20, v21, v22, v34[0], v34[1], v34[2], v35[0], v35[1], v35[2], v36, v37, v38, v39, v40, v41);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of IntentApplication?(v11, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logging.answerSynthesis);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v24, v25, "%s skip this CSSearchableItem as no associated SearchResult could be created", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x25F8A1050](v27, -1, -1);
      MEMORY[0x25F8A1050](v26, -1, -1);
    }
  }

  else
  {
    outlined init with take of SearchResult(v11, v15);
    SearchResultItem.associatedValue.getter(v35);
    v28 = v36;
    v29 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v30 = (*(v29 + 56))(a2, a3, v28, v29);
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    swift_beginAccess();
    if (a4[1])
    {
      swift_beginAccess();
      MEMORY[0x25F89F6A0](v30, v32);
      swift_endAccess();

      _s10OmniSearch0B6ResultVWOhTm_5(v15, type metadata accessor for SearchResult);
    }

    else
    {
      _s10OmniSearch0B6ResultVWOhTm_5(v15, type metadata accessor for SearchResult);
      swift_beginAccess();
      v33 = a4[1];
      *a4 = v30;
      a4[1] = v32;
    }
  }
}

void static EventManager.createSearchResult(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v31);
  v32 = type metadata accessor for RestaurantReservation();
  v33 = OUTLINED_FUNCTION_1_5(v32, &v705);
  v676 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v44);
  v45 = type metadata accessor for HotelReservation();
  v46 = OUTLINED_FUNCTION_1_5(v45, &v715);
  v684 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v57);
  v58 = type metadata accessor for FlightReservation();
  v59 = OUTLINED_FUNCTION_1_5(v58, &v730);
  v694 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  OUTLINED_FUNCTION_114(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v70);
  v71 = type metadata accessor for Trip();
  v72 = OUTLINED_FUNCTION_14(v71);
  v74 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  OUTLINED_FUNCTION_114(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v84);
  v85 = type metadata accessor for Party();
  v86 = OUTLINED_FUNCTION_1_5(v85, &v745);
  v713 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  OUTLINED_FUNCTION_114(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v97);
  v98 = type metadata accessor for Appointment();
  v99 = OUTLINED_FUNCTION_1_5(v98, &v755);
  v723 = v100;
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  OUTLINED_FUNCTION_114(v106);
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v110);
  v111 = type metadata accessor for TicketedShow();
  v112 = OUTLINED_FUNCTION_1_5(v111, &v761 + 8);
  v732 = v113;
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  OUTLINED_FUNCTION_114(v119);
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v123);
  v124 = type metadata accessor for TicketedTransportation();
  v125 = OUTLINED_FUNCTION_1_5(v124, &a18);
  v742 = v126;
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v131);
  v132 = type metadata accessor for SpotlightRankingItem();
  v133 = OUTLINED_FUNCTION_14(v132);
  v741 = v134;
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_14_2();
  v146 = OUTLINED_FUNCTION_28_2(v145);
  v147 = type metadata accessor for SearchResult(v146);
  v148 = OUTLINED_FUNCTION_17(v147);
  v150 = *(v149 + 64);
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v159);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v161 = OUTLINED_FUNCTION_114(v160);
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v178);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_14_2();
  v182 = OUTLINED_FUNCTION_28_2(v181);
  v747 = type metadata accessor for SearchResultItem(v182);
  v183 = OUTLINED_FUNCTION_17(v747);
  v185 = *(v184 + 64);
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v194);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_114(v195);
  v197 = *(v196 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_49_3();
  v749 = v199;
  OUTLINED_FUNCTION_78_0();
  v753 = type metadata accessor for RentalCarReservation();
  v200 = OUTLINED_FUNCTION_14(v753);
  v751 = v201;
  v203 = *(v202 + 64);
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_7_4();
  v756 = v205;
  MEMORY[0x28223BE20](v206);
  OUTLINED_FUNCTION_14_2();
  v752 = v207;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v208 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v208, static Logging.answerSynthesis);
  v209 = v24;
  v755 = v20;
  v210 = v209;
  v211 = Logger.logObject.getter();
  v212 = static os_log_type_t.debug.getter();

  v213 = os_log_type_enabled(v211, v212);
  v748 = v132;
  v705 = v74;
  if (v213)
  {
    v214 = OUTLINED_FUNCTION_49_0();
    *&v760 = swift_slowAlloc();
    *v214 = 136315651;
    *(v214 + 4) = OUTLINED_FUNCTION_19_19();
    *(v214 + 12) = 2085;
    v215 = v210;
    v750 = v147;
    v216 = v215;
    v217 = [v215 description];
    v754 = v210;
    v218 = v26;
    v219 = v217;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v220 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v214 + 14) = v220;
    *(v214 + 22) = 2085;
    v221 = [v216 attributeSet];
    v222 = [v221 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_164_4();

    v26 = v218;
    v210 = v754;
    v147 = v750;
    v223 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v214 + 24) = v223;
    _os_log_impl(&dword_25D85C000, v211, v212, "%s CSSearchableItem: %{sensitive}s, attributes: %{sensitive}s", v214, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_42_0();
  }

  v224 = [v210 attributeSet];
  v225 = [v224 attributeForKey_];

  if (v225)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v758 = 0u;
    v759 = 0u;
  }

  v226 = v756;
  v760 = v758;
  v761 = v759;
  if (!*(&v759 + 1))
  {
    outlined destroy of IntentApplication?(&v760, &_sypSgMd, &_sypSgMR);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v235 = Logger.logObject.getter();
    v236 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_4_11(v236))
    {
      OUTLINED_FUNCTION_90_1();
      v237 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_99_10(v237);
      v238 = OUTLINED_FUNCTION_16_22(4.8151e-34);
      OUTLINED_FUNCTION_94_8(v238);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v239 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v226 + 14) = v239;
      OUTLINED_FUNCTION_37_13(&dword_25D85C000, v240, v241, "%s skip this CSSearchableItem as it has no %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    goto LABEL_20;
  }

  v227 = v26;
  v754 = v210;
  v228 = v757[0];
  v229 = v757[1];
  v230 = *MEMORY[0x277CC22A0];
  v232 = static String._unconditionallyBridgeFromObjectiveC(_:)() == v228 && v231 == v229;
  if (v232)
  {

    v234 = v751;
    v233 = v752;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_33_13();
  OUTLINED_FUNCTION_130_8();
  OUTLINED_FUNCTION_250_2();
  v234 = v751;
  v233 = v752;
  if ((v226 & 1) == 0)
  {
    v265 = *MEMORY[0x277CC22D8];
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v228 && v266 == v229)
    {

      v269 = v754;
      v26 = v227;
LABEL_42:

      v296 = v269;
      OUTLINED_FUNCTION_169_6(&v763);
      TicketedTransportation.init(item:)(v297, v298);
      v299 = OUTLINED_FUNCTION_93_0();
      v300 = v746;
      OUTLINED_FUNCTION_166(v299, v301, v746);
      v302 = v742;
      if (!v232)
      {
        v306 = OUTLINED_FUNCTION_20_14();
        v307(v306);
        v308 = OUTLINED_FUNCTION_31_20();
        (v227)(v308);
        v309 = Logger.logObject.getter();
        v310 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_4_11(v310))
        {
          OUTLINED_FUNCTION_90_1();
          v312 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v312);
          v313 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v313);
          v314 = v730;
          v315 = OUTLINED_FUNCTION_180();
          (v227)(v315);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_38_19(&a12);
          OUTLINED_FUNCTION_182_6();
          v316();
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();
          v26 = v296;

          *(v300 + 14) = v314;
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v317, v318, "%s created ticketedTransportation: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v322 = OUTLINED_FUNCTION_36_14();
          v323(v322);
        }

        v324 = v748;
        OUTLINED_FUNCTION_50_1(&v759);
        OUTLINED_FUNCTION_163_5(&a17);
        v227();
        OUTLINED_FUNCTION_171_4();
        swift_storeEnumTagMultiPayload();
        v325 = v735;
        OUTLINED_FUNCTION_34_20(v735);
        v326 = v736;
        *(v736 + v327) = MEMORY[0x277D84F90];
        v328 = (v326 + *(v147 + 40));
        *v328 = 0;
        v328[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v329 = OUTLINED_FUNCTION_129_4();
        _s10OmniSearch0B6ResultVWOcTm_7(v329, v330, v331);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v332, v333);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_192_6(v325, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR, &v759 + 8);
        OUTLINED_FUNCTION_105_3(v302);
        if (!v232)
        {
          outlined destroy of IntentApplication?(v325, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v296, v343);
          OUTLINED_FUNCTION_59_11(&a12);
          OUTLINED_FUNCTION_149_7();
          v344();
          OUTLINED_FUNCTION_32_21();
          v345 = &v758;
LABEL_60:
          v346 = *(v345 - 32);
          v347 = OUTLINED_FUNCTION_54_0();
LABEL_61:
          v325(v347);
          (v325)(v326 + *(v147 + 20), v346, v324);
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v334, v335, v336);
        v337 = *(v147 + 20);
        OUTLINED_FUNCTION_4_31();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v338, v339, v340);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v296, v341);
        OUTLINED_FUNCTION_59_11(&a12);
        goto LABEL_59;
      }

      v303 = &_s15OmniSearchTypes22TicketedTransportationVSgMd;
      v304 = &_s15OmniSearchTypes22TicketedTransportationVSgMR;
      goto LABEL_45;
    }

    v268 = v228;
    OUTLINED_FUNCTION_33_13();
    OUTLINED_FUNCTION_130_8();
    OUTLINED_FUNCTION_250_2();
    v269 = v754;
    v26 = v227;
    if (v226)
    {
      goto LABEL_42;
    }

    v319 = *MEMORY[0x277CC22D0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v232 && v320 == v229)
    {

LABEL_65:

      v348 = v269;
      OUTLINED_FUNCTION_169_6(v757);
      TicketedShow.init(item:)(v349, v350);
      v351 = OUTLINED_FUNCTION_93_0();
      v352 = v737;
      OUTLINED_FUNCTION_166(v351, v353, v737);
      v354 = v732;
      if (!v232)
      {
        v355 = OUTLINED_FUNCTION_20_14();
        v356(v355);
        v357 = OUTLINED_FUNCTION_31_20();
        (v227)(v357);
        v358 = Logger.logObject.getter();
        v359 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_4_11(v359))
        {
          OUTLINED_FUNCTION_90_1();
          v361 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v361);
          v362 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v362);
          v363 = v720;
          v364 = OUTLINED_FUNCTION_180();
          (v227)(v364);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_38_19(&v758 + 8);
          OUTLINED_FUNCTION_182_6();
          v365();
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();
          v26 = v348;

          *(v352 + 14) = v363;
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v366, v367, "%s created ticketedShow: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v371 = OUTLINED_FUNCTION_36_14();
          v372(v371);
        }

        v324 = v748;
        OUTLINED_FUNCTION_50_1(&v750);
        OUTLINED_FUNCTION_163_5(&v761);
        v227();
        OUTLINED_FUNCTION_171_4();
        swift_storeEnumTagMultiPayload();
        v325 = v726;
        OUTLINED_FUNCTION_34_20(v726);
        v326 = v727;
        *(v727 + v373) = MEMORY[0x277D84F90];
        v374 = (v326 + *(v147 + 40));
        *v374 = 0;
        v374[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v375 = OUTLINED_FUNCTION_129_4();
        _s10OmniSearch0B6ResultVWOcTm_7(v375, v376, v377);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v378, v379);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_192_6(v325, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR, &v751);
        OUTLINED_FUNCTION_105_3(v354);
        if (!v232)
        {
          outlined destroy of IntentApplication?(v325, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v348, v388);
          OUTLINED_FUNCTION_59_11(&v758 + 8);
          OUTLINED_FUNCTION_149_7();
          v389();
          OUTLINED_FUNCTION_32_21();
          v345 = &v747;
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v380, v381, v382);
        v383 = *(v147 + 20);
        OUTLINED_FUNCTION_4_31();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v384, v385, v386);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v348, v387);
        OUTLINED_FUNCTION_59_11(&v758 + 8);
LABEL_59:
        OUTLINED_FUNCTION_149_7();
        v342();
LABEL_62:
        *(v326 + *(v147 + 32)) = 1;
        *(v326 + *(v147 + 36)) = 1;
        v295 = v326;
        goto LABEL_63;
      }

      v303 = &_s15OmniSearchTypes12TicketedShowVSgMd;
      v304 = &_s15OmniSearchTypes12TicketedShowVSgMR;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_66_12();
    OUTLINED_FUNCTION_250_2();
    if (v226)
    {
      goto LABEL_65;
    }

    v368 = *MEMORY[0x277CC2298];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v232 && v369 == v229)
    {

LABEL_81:

      v390 = v269;
      OUTLINED_FUNCTION_169_6(&v746);
      Appointment.init(item:)(v391, v392);
      v393 = OUTLINED_FUNCTION_93_0();
      v394 = v729;
      OUTLINED_FUNCTION_166(v393, v395, v729);
      v396 = v723;
      if (!v232)
      {
        v397 = OUTLINED_FUNCTION_20_14();
        v398(v397);
        v399 = OUTLINED_FUNCTION_31_20();
        (v227)(v399);
        v400 = Logger.logObject.getter();
        v401 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_4_11(v401))
        {
          OUTLINED_FUNCTION_90_1();
          v403 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v403);
          v404 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v404);
          v405 = v710;
          v406 = OUTLINED_FUNCTION_180();
          (v227)(v406);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_38_19(&v749);
          OUTLINED_FUNCTION_182_6();
          v407();
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();
          v26 = v390;

          *(v394 + 14) = v405;
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v408, v409, "%s created appointment: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v413 = OUTLINED_FUNCTION_36_14();
          v414(v413);
        }

        v324 = v748;
        OUTLINED_FUNCTION_50_1(&v741);
        OUTLINED_FUNCTION_163_5(&v754);
        v227();
        OUTLINED_FUNCTION_171_4();
        swift_storeEnumTagMultiPayload();
        v325 = v716;
        OUTLINED_FUNCTION_34_20(v716);
        v326 = v717;
        *(v717 + v415) = MEMORY[0x277D84F90];
        v416 = (v326 + *(v147 + 40));
        *v416 = 0;
        v416[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v417 = OUTLINED_FUNCTION_129_4();
        _s10OmniSearch0B6ResultVWOcTm_7(v417, v418, v419);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v420, v421);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_192_6(v325, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR, &v742);
        OUTLINED_FUNCTION_105_3(v396);
        if (!v232)
        {
          outlined destroy of IntentApplication?(v325, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v390, v430);
          OUTLINED_FUNCTION_59_11(&v749);
          OUTLINED_FUNCTION_149_7();
          v431();
          OUTLINED_FUNCTION_32_21();
          v345 = &v738;
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v422, v423, v424);
        v425 = *(v147 + 20);
        OUTLINED_FUNCTION_4_31();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v426, v427, v428);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v390, v429);
        OUTLINED_FUNCTION_59_11(&v749);
        goto LABEL_59;
      }

      v303 = &_s15OmniSearchTypes11AppointmentVSgMd;
      v304 = &_s15OmniSearchTypes11AppointmentVSgMR;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_66_12();
    OUTLINED_FUNCTION_250_2();
    if (v226)
    {
      goto LABEL_81;
    }

    v410 = *MEMORY[0x277CC22C0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v232 && v411 == v229)
    {

LABEL_97:

      v432 = v269;
      OUTLINED_FUNCTION_169_6(&v739);
      Party.init(item:)(v433, v434);
      v435 = OUTLINED_FUNCTION_93_0();
      v346 = v719;
      OUTLINED_FUNCTION_166(v435, v436, v719);
      if (!v232)
      {
        v437 = OUTLINED_FUNCTION_20_14();
        v438(v437);
        v439 = OUTLINED_FUNCTION_31_20();
        (v227)(v439);
        v440 = Logger.logObject.getter();
        v441 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_4_11(v441))
        {
          OUTLINED_FUNCTION_90_1();
          v443 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v443);
          v444 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v444);
          v445 = OUTLINED_FUNCTION_180();
          (v227)(v445);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_38_19(&v740);
          OUTLINED_FUNCTION_182_6();
          v446();
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();
          v26 = v432;

          *(v346 + 14) = v702[1];
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v447, v448, "%s created upcomingParty: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          v346 = v719;
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v452 = OUTLINED_FUNCTION_36_14();
          v453(v452);
        }

        v324 = v748;
        OUTLINED_FUNCTION_50_1(&v734);
        OUTLINED_FUNCTION_163_5(&v744);
        v227();
        OUTLINED_FUNCTION_171_4();
        swift_storeEnumTagMultiPayload();
        v454 = v708;
        OUTLINED_FUNCTION_34_20(v708);
        v326 = v709;
        *(v709 + v455) = MEMORY[0x277D84F90];
        v456 = (v326 + *(v147 + 40));
        *v456 = 0;
        v456[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v457 = OUTLINED_FUNCTION_129_4();
        _s10OmniSearch0B6ResultVWOcTm_7(v457, v458, v459);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v460, v461);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_113_10(&v735);
        outlined init with copy of ResourceBundle?(v462, v463, v464, v465);
        OUTLINED_FUNCTION_105_3(v454);
        if (!v232)
        {
          outlined destroy of IntentApplication?(v454, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v432, v473);
          OUTLINED_FUNCTION_59_11(&v740);
          OUTLINED_FUNCTION_149_7();
          v474();
          v325 = *(v741 + 32);
          v347 = OUTLINED_FUNCTION_119_5(&v731);
          goto LABEL_61;
        }

        v466 = OUTLINED_FUNCTION_32_0();
        outlined destroy of IntentApplication?(v466, v467, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v468 = *(v147 + 20);
        OUTLINED_FUNCTION_4_31();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_103_10();
        outlined destroy of IntentApplication?(v469, v470, v471);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v432, v472);
        OUTLINED_FUNCTION_59_11(&v740);
        goto LABEL_59;
      }

      v303 = &_s15OmniSearchTypes5PartyVSgMd;
      v304 = &_s15OmniSearchTypes5PartyVSgMR;
LABEL_45:
      v305 = v71;
LABEL_46:
      outlined destroy of IntentApplication?(v305, v303, v304);
LABEL_20:
      v242 = 1;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_66_12();
    OUTLINED_FUNCTION_250_2();
    if (v226)
    {
      goto LABEL_97;
    }

    v449 = *MEMORY[0x277CC22E0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v232 && v450 == v229)
    {

LABEL_113:

      v475 = v269;
      Trip.init(item:)(v475, v703);
      OUTLINED_FUNCTION_166(v703, 1, v71);
      if (!v232)
      {
        v754 = v475;
        v750 = v147;
        v670 = v227;
        OUTLINED_FUNCTION_65_14(&v733);
        v476 = OUTLINED_FUNCTION_88();
        v477(v476);
        v478 = *(v147 + 16);
        v479 = OUTLINED_FUNCTION_122_7(&v728);
        (v478)(v479, v704, v71);
        v480 = Logger.logObject.getter();
        v481 = static os_log_type_t.info.getter();
        v756 = v71;
        if (OUTLINED_FUNCTION_4_11(v481))
        {
          OUTLINED_FUNCTION_90_1();
          v483 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v483);
          v484 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v484);
          v485 = OUTLINED_FUNCTION_63_0();
          v486 = v756;
          v478(v485);
          OUTLINED_FUNCTION_180();
          String.init<A>(describing:)();
          v487 = OUTLINED_FUNCTION_79_11();
          v26 = v488;
          v755 = *(v147 + 8);
          (v755)(v487, v486);
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();

          *(v703 + 14) = v690;
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v489, v490, "%s created trip: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_2_8();
        }

        else
        {

          v755 = *(v147 + 8);
          (v755)(v26, v756);
        }

        v494 = OUTLINED_FUNCTION_122_7(&v724);
        v279 = v704;
        v478(v494);
        swift_storeEnumTagMultiPayload();
        v495 = v697;
        OUTLINED_FUNCTION_92();
        v263 = v748;
        __swift_storeEnumTagSinglePayload(v496, v497, v498, v748);
        v147 = v750;
        v264 = v698;
        *(v698 + *(v750 + 28)) = MEMORY[0x277D84F90];
        v499 = (v264 + *(v147 + 40));
        *v499 = 0;
        v499[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v500 = OUTLINED_FUNCTION_179_0();
        _s10OmniSearch0B6ResultVWOcTm_7(v500, v501, v502);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v503, v504);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_192_6(v495, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR, &v725);
        OUTLINED_FUNCTION_105_3(v229);
        if (v232)
        {
          OUTLINED_FUNCTION_103_10();
          outlined destroy of IntentApplication?(v505, v506, v507);
          v508 = *(v147 + 20);
          OUTLINED_FUNCTION_4_31();
          OUTLINED_FUNCTION_19_18();
          OUTLINED_FUNCTION_103_10();
          outlined destroy of IntentApplication?(v509, v510, v511);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v26, v512);
          OUTLINED_FUNCTION_59_11(&v733);
          (v755)(v279, v756);
          goto LABEL_39;
        }

        outlined destroy of IntentApplication?(v495, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v26, v513);
        OUTLINED_FUNCTION_59_11(&v733);
        (v755)(v279, v756);
        OUTLINED_FUNCTION_32_21();
        v271 = v689;
        v293 = OUTLINED_FUNCTION_54_0();
        goto LABEL_38;
      }

      v303 = &_s15OmniSearchTypes4TripVSgMd;
      v304 = &_s15OmniSearchTypes4TripVSgMR;
      v305 = v703;
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_66_12();
    OUTLINED_FUNCTION_250_2();
    if (v226)
    {
      goto LABEL_113;
    }

    v750 = v147;
    v670 = v227;
    v491 = *MEMORY[0x277CC22A8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v232 && v492 == v229)
    {
    }

    else
    {
      OUTLINED_FUNCTION_66_12();
      OUTLINED_FUNCTION_250_2();
      if ((v226 & 1) == 0)
      {
        v534 = *MEMORY[0x277CC22B0];
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v268 && v535 == v229)
        {
        }

        else
        {
          OUTLINED_FUNCTION_130_8();
          OUTLINED_FUNCTION_250_2();
          if ((v226 & 1) == 0)
          {
            v586 = *MEMORY[0x277CC22C8];
            if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v268 && v587 == v229)
            {
            }

            else
            {
              OUTLINED_FUNCTION_130_8();
              OUTLINED_FUNCTION_250_2();
              if ((v226 & 1) == 0)
              {

                v635 = v755;
                v636 = Logger.logObject.getter();
                v637 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v636, v637))
                {
                  OUTLINED_FUNCTION_90_1();
                  *&v760 = OUTLINED_FUNCTION_52_14();
                  *v635 = 136315394;
                  *(v635 + 4) = OUTLINED_FUNCTION_19_19();
                  *(v635 + 6) = 2080;
                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  OUTLINED_FUNCTION_151_3();
                  *(v635 + 14) = "createSearchResult(from:)";
                  OUTLINED_FUNCTION_67_13(&dword_25D85C000, v638, v639, "%s unimplemented eventType: %s");
                  OUTLINED_FUNCTION_154_2();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_64_10();
                }

                else
                {
                }

                goto LABEL_133;
              }
            }

            v619 = OUTLINED_FUNCTION_132_8(v754, &v704);
            RestaurantReservation.init(item:)(v619);
            v620 = OUTLINED_FUNCTION_11_1();
            OUTLINED_FUNCTION_166(v620, v621, v678);
            if (!v232)
            {
              OUTLINED_FUNCTION_65_14(&v703);
              v622(v675, v677, v678);
              v624 = *(v147 + 16);
              v147 += 16;
              v623 = v624;
              OUTLINED_FUNCTION_103_10();
              v624();
              v625 = Logger.logObject.getter();
              v626 = static os_log_type_t.info.getter();
              if (OUTLINED_FUNCTION_4_11(v626))
              {
                OUTLINED_FUNCTION_90_1();
                v628 = OUTLINED_FUNCTION_51_13();
                OUTLINED_FUNCTION_99_10(v628);
                v629 = OUTLINED_FUNCTION_16_22(4.8151e-34);
                OUTLINED_FUNCTION_25_18(v629);
                OUTLINED_FUNCTION_93_10(&v695);
                OUTLINED_FUNCTION_113_10(&v701);
                v623();
                OUTLINED_FUNCTION_48_3();
                String.init<A>(describing:)();
                OUTLINED_FUNCTION_166_5();
                v630 = OUTLINED_FUNCTION_38_19(&v703);
                v632 = v631;
                v631(v630, v678);
                OUTLINED_FUNCTION_74_15();
                OUTLINED_FUNCTION_79_11();

                *(v675 + 14) = "createSearchResult(from:)";
                OUTLINED_FUNCTION_37_13(&dword_25D85C000, v633, v634, "%s created upcomingRestaurant: %{sensitive}s");
                OUTLINED_FUNCTION_68_11();
                OUTLINED_FUNCTION_37_0();
                OUTLINED_FUNCTION_2_8();
              }

              else
              {

                v632 = *(v676 + 8);
                v632(v673, v678);
              }

              v640 = OUTLINED_FUNCTION_119_5(&v696);
              (v623)(v640, v675, v678);
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_122_7(&v698);
              OUTLINED_FUNCTION_92();
              OUTLINED_FUNCTION_143_7(v641, v642, v643);
              v644 = v674;
              *(v674 + v645) = MEMORY[0x277D84F90];
              v646 = (v644 + v625[10]);
              *v646 = 0;
              v646[1] = 0;
              OUTLINED_FUNCTION_5_30();
              v647 = OUTLINED_FUNCTION_119();
              _s10OmniSearch0B6ResultVWOcTm_7(v647, v648, v649);
              v650 = v625[6];
              type metadata accessor for CSSearchableItem();
              OUTLINED_FUNCTION_6_20();
              lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v651, v652);
              v653 = v756;
              OUTLINED_FUNCTION_47_11();
              CodableNSSecureCoding.init(wrappedValue:)();
              OUTLINED_FUNCTION_113_10(&v697);
              outlined init with copy of ResourceBundle?(v654, v655, v656, v657);
              OUTLINED_FUNCTION_105_3(v644);
              if (v232)
              {
                OUTLINED_FUNCTION_33_13();
                outlined destroy of IntentApplication?(v658, v659, v660);
                OUTLINED_FUNCTION_123_9();
                OUTLINED_FUNCTION_4_31();
                OUTLINED_FUNCTION_19_18();
                OUTLINED_FUNCTION_33_13();
                outlined destroy of IntentApplication?(v661, v662, v663);
                OUTLINED_FUNCTION_0_50();
                _s10OmniSearch0B6ResultVWOhTm_5(v671, v664);
                OUTLINED_FUNCTION_59_11(&v703);
                v665 = OUTLINED_FUNCTION_167_3();
                (v632)(v665);
              }

              else
              {
                outlined destroy of IntentApplication?(v672, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                OUTLINED_FUNCTION_0_50();
                _s10OmniSearch0B6ResultVWOhTm_5(v671, v666);
                OUTLINED_FUNCTION_59_11(&v703);
                v667 = OUTLINED_FUNCTION_167_3();
                (v632)(v667);
                OUTLINED_FUNCTION_32_21();
                OUTLINED_FUNCTION_226_1(&v694);
                OUTLINED_FUNCTION_128_6(&v697);
                v644();
                OUTLINED_FUNCTION_123_9();
                v669 = OUTLINED_FUNCTION_95_8(v668);
                (v644)(v669);
              }

              OUTLINED_FUNCTION_131_5();
              v569 = v702;
              goto LABEL_147;
            }

            v518 = &_s15OmniSearchTypes21RestaurantReservationVSgMd;
            v519 = &_s15OmniSearchTypes21RestaurantReservationVSgMR;
            v520 = &v704;
LABEL_132:
            outlined destroy of IntentApplication?(*(v520 - 32), v518, v519);
LABEL_133:
            v242 = 1;
            v26 = v227;
            v147 = v750;
            goto LABEL_21;
          }
        }

        v570 = OUTLINED_FUNCTION_132_8(v754, &v714);
        HotelReservation.init(item:)(v570);
        v571 = OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_166(v571, v572, v686);
        if (!v232)
        {
          OUTLINED_FUNCTION_65_14(&v713);
          v573(v683, v685, v686);
          v575 = *(v147 + 16);
          v147 += 16;
          v574 = v575;
          OUTLINED_FUNCTION_103_10();
          v575();
          v576 = Logger.logObject.getter();
          v577 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_4_11(v577))
          {
            OUTLINED_FUNCTION_90_1();
            v579 = OUTLINED_FUNCTION_51_13();
            OUTLINED_FUNCTION_99_10(v579);
            v580 = OUTLINED_FUNCTION_16_22(4.8151e-34);
            OUTLINED_FUNCTION_25_18(v580);
            OUTLINED_FUNCTION_93_10(&v700);
            OUTLINED_FUNCTION_113_10(&v711);
            v574();
            OUTLINED_FUNCTION_48_3();
            String.init<A>(describing:)();
            OUTLINED_FUNCTION_166_5();
            v581 = OUTLINED_FUNCTION_38_19(&v713);
            v583 = v582;
            v582(v581, v686);
            OUTLINED_FUNCTION_74_15();
            OUTLINED_FUNCTION_79_11();

            *(v683 + 14) = "createSearchResult(from:)";
            OUTLINED_FUNCTION_37_13(&dword_25D85C000, v584, v585, "%s created upcomingHotel: %{sensitive}s");
            OUTLINED_FUNCTION_68_11();
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_2_8();
          }

          else
          {

            v583 = *(v684 + 8);
            v583(v681, v686);
          }

          v589 = OUTLINED_FUNCTION_119_5(&v706);
          (v574)(v589, v683, v686);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_122_7(&v708);
          OUTLINED_FUNCTION_92();
          OUTLINED_FUNCTION_143_7(v590, v591, v592);
          v593 = v682;
          *(v682 + v594) = MEMORY[0x277D84F90];
          v595 = (v593 + v576[10]);
          *v595 = 0;
          v595[1] = 0;
          OUTLINED_FUNCTION_5_30();
          v596 = OUTLINED_FUNCTION_119();
          _s10OmniSearch0B6ResultVWOcTm_7(v596, v597, v598);
          v599 = v576[6];
          type metadata accessor for CSSearchableItem();
          OUTLINED_FUNCTION_6_20();
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v600, v601);
          v602 = v756;
          OUTLINED_FUNCTION_47_11();
          CodableNSSecureCoding.init(wrappedValue:)();
          OUTLINED_FUNCTION_113_10(&v707);
          outlined init with copy of ResourceBundle?(v603, v604, v605, v606);
          OUTLINED_FUNCTION_105_3(v593);
          if (v232)
          {
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v607, v608, v609);
            OUTLINED_FUNCTION_123_9();
            OUTLINED_FUNCTION_4_31();
            OUTLINED_FUNCTION_19_18();
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v610, v611, v612);
            OUTLINED_FUNCTION_0_50();
            _s10OmniSearch0B6ResultVWOhTm_5(v679, v613);
            OUTLINED_FUNCTION_59_11(&v713);
            v614 = OUTLINED_FUNCTION_165_3();
            (v583)(v614);
          }

          else
          {
            outlined destroy of IntentApplication?(v680, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_0_50();
            _s10OmniSearch0B6ResultVWOhTm_5(v679, v615);
            OUTLINED_FUNCTION_59_11(&v713);
            v616 = OUTLINED_FUNCTION_165_3();
            (v583)(v616);
            OUTLINED_FUNCTION_32_21();
            OUTLINED_FUNCTION_226_1(&v699);
            OUTLINED_FUNCTION_128_6(&v707);
            v593();
            OUTLINED_FUNCTION_123_9();
            v618 = OUTLINED_FUNCTION_95_8(v617);
            (v593)(v618);
          }

          OUTLINED_FUNCTION_131_5();
          v569 = &v712;
          goto LABEL_147;
        }

        v518 = &_s15OmniSearchTypes16HotelReservationVSgMd;
        v519 = &_s15OmniSearchTypes16HotelReservationVSgMR;
        v520 = &v714;
        goto LABEL_132;
      }
    }

    v514 = OUTLINED_FUNCTION_132_8(v754, &v729);
    FlightReservation.init(item:)(v514, v515);
    v516 = OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_166(v516, v517, v701);
    if (!v232)
    {
      OUTLINED_FUNCTION_65_14(&v723);
      v521(v693, v700, v701);
      v523 = *(v147 + 16);
      v147 += 16;
      v522 = v523;
      OUTLINED_FUNCTION_103_10();
      v523();
      v524 = Logger.logObject.getter();
      v525 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_4_11(v525))
      {
        OUTLINED_FUNCTION_90_1();
        v527 = OUTLINED_FUNCTION_51_13();
        OUTLINED_FUNCTION_99_10(v527);
        v528 = OUTLINED_FUNCTION_16_22(4.8151e-34);
        OUTLINED_FUNCTION_25_18(v528);
        OUTLINED_FUNCTION_93_10(&v710);
        OUTLINED_FUNCTION_113_10(&v721);
        v522();
        OUTLINED_FUNCTION_48_3();
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_166_5();
        v529 = OUTLINED_FUNCTION_38_19(&v723);
        v531 = v530;
        v530(v529, v701);
        OUTLINED_FUNCTION_74_15();
        OUTLINED_FUNCTION_79_11();

        *(v693 + 14) = "createSearchResult(from:)";
        OUTLINED_FUNCTION_37_13(&dword_25D85C000, v532, v533, "%s created upcomingFlight: %{sensitive}s");
        OUTLINED_FUNCTION_68_11();
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {

        v531 = *(v694 + 8);
        v531(v691, v701);
      }

      v537 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48);
      v538 = v687;
      (v522)(v687, v693, v701);
      v539 = MEMORY[0x277D84F90];
      *(v687 + v537) = MEMORY[0x277D84F90];
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122_7(&v718);
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_143_7(v540, v541, v542);
      v543 = v692;
      *(v692 + v544) = v539;
      v545 = (v543 + *(v537 + 40));
      *v545 = 0;
      v545[1] = 0;
      OUTLINED_FUNCTION_5_30();
      _s10OmniSearch0B6ResultVWOcTm_7(v538, v543, v546);
      v547 = *(v537 + 24);
      type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_6_20();
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v548, v549);
      v550 = v756;
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_113_10(&v717);
      outlined init with copy of ResourceBundle?(v551, v552, v553, v554);
      OUTLINED_FUNCTION_105_3(v543);
      if (v232)
      {
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v555, v556, v557);
        OUTLINED_FUNCTION_123_9();
        OUTLINED_FUNCTION_4_31();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v558, v559, v560);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v687, v561);
        OUTLINED_FUNCTION_59_11(&v723);
        v562 = OUTLINED_FUNCTION_162_6();
        (v531)(v562);
      }

      else
      {
        outlined destroy of IntentApplication?(v688, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v687, v563);
        OUTLINED_FUNCTION_59_11(&v723);
        v564 = OUTLINED_FUNCTION_162_6();
        (v531)(v564);
        OUTLINED_FUNCTION_32_21();
        OUTLINED_FUNCTION_226_1(&v709);
        OUTLINED_FUNCTION_128_6(&v717);
        v543();
        OUTLINED_FUNCTION_123_9();
        v566 = OUTLINED_FUNCTION_95_8(v565);
        (v543)(v566);
      }

      OUTLINED_FUNCTION_131_5();
      v569 = &v722;
LABEL_147:
      v295 = *(v569 - 32);
      *(v295 + v567) = v568;
      *(v295 + *(v147 + 36)) = v568;
      goto LABEL_40;
    }

    v518 = &_s15OmniSearchTypes17FlightReservationVSgMd;
    v519 = &_s15OmniSearchTypes17FlightReservationVSgMR;
    v520 = &v729;
    goto LABEL_132;
  }

  v226 = v756;
LABEL_23:

  v243 = v754;
  v244 = v749;
  RentalCarReservation.init(item:)(v243, v749);
  v245 = OUTLINED_FUNCTION_11_1();
  v246 = v753;
  OUTLINED_FUNCTION_166(v245, v247, v753);
  if (!v232)
  {
    v756 = v243;
    v750 = v147;
    (*(v234 + 32))(v233, v244, v246);
    v248 = v233;
    v147 = v234 + 16;
    v249 = *(v234 + 16);
    v249(v226, v248, v246);
    v250 = v755;
    v251 = Logger.logObject.getter();
    v252 = static os_log_type_t.info.getter();
    v253 = OUTLINED_FUNCTION_91_0(v252);
    v670 = v227;
    if (v253)
    {
      OUTLINED_FUNCTION_90_1();
      *&v760 = OUTLINED_FUNCTION_52_14();
      *v250 = 136315395;
      v254 = OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_23_19(v254);
      v255 = OUTLINED_FUNCTION_93_10(&v762);
      v249(v255, v226, v753);
      v256 = String.init<A>(describing:)();
      v257 = v249;
      v249 = v258;
      v259 = *(v234 + 8);
      v259(v226, v753);
      OUTLINED_FUNCTION_74_15();
      OUTLINED_FUNCTION_79_11();

      *(v250 + 14) = v256;
      v260 = v252;
      v261 = v259;
      OUTLINED_FUNCTION_78_13(&dword_25D85C000, v262, v260, "%s created rentalCarReservation: %{sensitive}s");
      OUTLINED_FUNCTION_154_2();
      v246 = v753;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_64_10();

      v263 = v748;
      v264 = v745;
    }

    else
    {

      v261 = *(v234 + 8);
      v261(v226, v246);
      v263 = v748;
      v264 = v745;
      v257 = v249;
    }

    v270 = OUTLINED_FUNCTION_122_7(&a13);
    v257(v270, v752, v246);
    swift_storeEnumTagMultiPayload();
    v271 = 1;
    v272 = v744;
    OUTLINED_FUNCTION_34_20(v744);
    *(v264 + v273) = MEMORY[0x277D84F90];
    v274 = (v264 + *(v147 + 40));
    *v274 = 0;
    v274[1] = 0;
    OUTLINED_FUNCTION_5_30();
    v275 = OUTLINED_FUNCTION_179_0();
    _s10OmniSearch0B6ResultVWOcTm_7(v275, v276, v277);
    v278 = *(v147 + 24);
    v279 = type metadata accessor for CSSearchableItem();
    OUTLINED_FUNCTION_6_20();
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v280, v281);
    v282 = v756;
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v283 = v743;
    outlined init with copy of ResourceBundle?(v272, v743, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_105_3(v283);
    if (v232)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v284, v285, v286);
      v287 = *(v147 + 20);
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      LOBYTE(v760) = 1;
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v288, v289, v290);
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v249, v291);
      v261(v752, v753);
LABEL_39:
      *(v264 + *(v147 + 32)) = 1;
      *(v264 + *(v147 + 36)) = 1;
      v295 = v264;
LABEL_40:
      v26 = v670;
LABEL_63:
      outlined init with take of SearchResult(v295, v26);
      v242 = 0;
      goto LABEL_21;
    }

    outlined destroy of IntentApplication?(v272, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_50();
    _s10OmniSearch0B6ResultVWOhTm_5(v249, v292);
    v261(v752, v753);
    OUTLINED_FUNCTION_32_21();
    v293 = OUTLINED_FUNCTION_119_5(&a10);
    v294 = v283;
LABEL_38:
    v279(v293, v294, v263);
    v279(v264 + *(v147 + 20), v271, v263);
    goto LABEL_39;
  }

  outlined destroy of IntentApplication?(v244, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  v242 = 1;
  v26 = v227;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v26, v242, 1, v147);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5NeverOGMd, &_sScCySSSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_project_boxed_opaque_existential_1(a3, v10);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance SmartChunkingPreprocessing;

  return specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)(a1, a2, v12, a4, a5, v10, v11);
}

uint64_t closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v7 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  v0[20] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for SearchResultItem(0);
  v0[21] = v10;
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  v0[22] = OUTLINED_FUNCTION_160();
  v0[23] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 208);
  v3 = *(v1 + 192);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];

  OUTLINED_FUNCTION_127();

  return v4();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 216);
  v3 = *(v1 + 200);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  v13 = v12 + 7;
  v14 = v12[23];
  v15 = v12[21];
  v16 = v12[15];
  OUTLINED_FUNCTION_5_30();
  _s10OmniSearch0B6ResultVWOcTm_7(v17, v14, v18);
  OUTLINED_FUNCTION_88();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for MobileSMSDocument();
      goto LABEL_57;
    case 2u:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for CalendarEvent();
      goto LABEL_57;
    case 3u:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for Photo();
      goto LABEL_57;
    case 4u:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for NoteDocument();
      goto LABEL_57;
    case 5u:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for Reminder();
      goto LABEL_57;
    case 6u:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for PhoneHistory();
      goto LABEL_57;
    case 7u:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for VoicemailTranscript();
      goto LABEL_57;
    case 8u:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for JournalEntry();
      goto LABEL_57;
    case 9u:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for VoiceMemo();
      goto LABEL_57;
    case 0xAu:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for Safari();
      goto LABEL_57;
    case 0xBu:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for FileDocument();
      goto LABEL_57;
    case 0xCu:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for WalletTransaction();
      goto LABEL_57;
    case 0xDu:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for WalletPass();
      goto LABEL_57;
    case 0xEu:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for Contact();
      goto LABEL_57;
    case 0xFu:
      v33 = type metadata accessor for Appointment();
      OUTLINED_FUNCTION_112_11(v33);
      v31 = &lazy protocol witness table cache variable for type Appointment and conformance Appointment;
      v32 = MEMORY[0x277D370E8];
      goto LABEL_31;
    case 0x10u:
      v21 = v12[23];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5(v22);
      v23 = type metadata accessor for FlightReservation();
      v12[5] = v23;
      v24 = &lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation;
      v25 = MEMORY[0x277D37290];
      goto LABEL_29;
    case 0x11u:
      v23 = type metadata accessor for HotelReservation();
      v12[5] = v23;
      v24 = &lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation;
      v25 = MEMORY[0x277D37250];
      goto LABEL_29;
    case 0x12u:
      v36 = type metadata accessor for Party();
      OUTLINED_FUNCTION_112_11(v36);
      v31 = &lazy protocol witness table cache variable for type Party and conformance Party;
      v32 = MEMORY[0x277D37520];
      goto LABEL_31;
    case 0x13u:
      v23 = type metadata accessor for RestaurantReservation();
      v12[5] = v23;
      v24 = &lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation;
      v25 = MEMORY[0x277D373D8];
LABEL_29:
      v38 = lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v24, v25);
      v39 = v12[23];
      v12[6] = v38;
      __swift_allocate_boxed_opaque_existential_1Tm(v12 + 2);
      v40 = *(*(v23 - 8) + 32);
      OUTLINED_FUNCTION_33_13();
      v41();
      v42 = v12[5];
      v43 = v12[6];
      v44 = OUTLINED_FUNCTION_180();
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v46 = *(v43 + 56);
      v47 = OUTLINED_FUNCTION_32_0();
      v49 = v48(v47);
      v51 = v50;
      v52 = v12[5];
      v53 = v12[6];
      v54 = OUTLINED_FUNCTION_180();
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v56 = *(v53 + 40);

      v56(v52, v53);
      v58 = v57;
      v59 = v12[5];
      v60 = v12[6];
      v61 = OUTLINED_FUNCTION_180();
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v63 = *(v60 + 48);
      v64 = OUTLINED_FUNCTION_112_2();
      v65(v64, v60);
      v67 = v66;
      v13 = v12 + 2;
      goto LABEL_32;
    case 0x14u:
      v34 = type metadata accessor for RentalCarReservation();
      OUTLINED_FUNCTION_112_11(v34);
      v31 = &lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation;
      v32 = MEMORY[0x277D37368];
      goto LABEL_31;
    case 0x15u:
      v35 = type metadata accessor for ShippingOrder();
      OUTLINED_FUNCTION_112_11(v35);
      v31 = &lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder;
      v32 = MEMORY[0x277D37218];
      goto LABEL_31;
    case 0x16u:
      v37 = type metadata accessor for TicketedTransportation();
      OUTLINED_FUNCTION_112_11(v37);
      v31 = &lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation;
      v32 = MEMORY[0x277D37438];
      goto LABEL_31;
    case 0x17u:
      v68 = type metadata accessor for TicketedShow();
      OUTLINED_FUNCTION_112_11(v68);
      v31 = &lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow;
      v32 = MEMORY[0x277D371B8];
      goto LABEL_31;
    case 0x18u:
      v30 = type metadata accessor for Trip();
      OUTLINED_FUNCTION_112_11(v30);
      v31 = &lazy protocol witness table cache variable for type Trip and conformance Trip;
      v32 = MEMORY[0x277D37500];
LABEL_31:
      v69 = lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v31, v32);
      v70 = v12[23];
      v12[11] = v69;
      __swift_allocate_boxed_opaque_existential_1Tm(v12 + 7);
      v71 = *(*(v14 - 8) + 32);
      OUTLINED_FUNCTION_103_10();
      v72();
      v73 = v12[10];
      v74 = v12[11];
      v75 = OUTLINED_FUNCTION_32_0();
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v77 = *(v74 + 64);
      v78 = OUTLINED_FUNCTION_54_0();
      v49 = v79(v78);
      v51 = v80;
      v81 = v12[11];
      __swift_project_boxed_opaque_existential_1(v12 + 7, v12[10]);
      v82 = *(v81 + 104);

      v83 = OUTLINED_FUNCTION_63_0();
      v82(v83);
      v58 = v84;
      v85 = v12[10];
      v86 = v12[11];
      __swift_project_boxed_opaque_existential_1(v12 + 7, v85);
      (*(v86 + 16))(v85, v86);
      v67 = v87;
LABEL_32:
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      v12[24] = v58;
      v12[25] = v67;
      if (v51)
      {
        OUTLINED_FUNCTION_98_2();
        v89 = v49 == 0xD000000000000014 && v88 == v51;
        if (v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_bridgeObjectRelease_n();

          swift_task_alloc();
          OUTLINED_FUNCTION_53();
          v12[26] = v90;
          *v90 = v91;
          v90[1] = closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:);
          v92 = v12[17];
          v93 = v12[18];
          v94 = v12[15];
          v95 = v12[16];
          v96 = v12[14];
          OUTLINED_FUNCTION_136_7();

          return static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:)();
        }

        OUTLINED_FUNCTION_98_2();
        if (v49 == 0xD000000000000013 && v105 == v51)
        {

LABEL_68:

          swift_task_alloc();
          OUTLINED_FUNCTION_53();
          v12[27] = v143;
          *v143 = v144;
          v143[1] = closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:);
          v146 = v12[18];
          v145 = v12[19];
          v147 = v12[17];
          v148 = v12[14];
          v149 = v12[15];
          OUTLINED_FUNCTION_136_7();

          return static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:)();
        }

        v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v107)
        {
          goto LABEL_68;
        }
      }

      else
      {
      }

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v99 = type metadata accessor for Logger();
      __swift_project_value_buffer(v99, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_104_9();

      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = OUTLINED_FUNCTION_90_1();
        a10 = OUTLINED_FUNCTION_260();
        *v102 = 136315394;
        v103 = OUTLINED_FUNCTION_133_8();
        OUTLINED_FUNCTION_98_7(v103);
        v12[12] = v49;
        v12[13] = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        String.init<A>(describing:)();
        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v102 + 14) = v104;
        _os_log_impl(&dword_25D85C000, v100, v101, "%s Returning event as-is. Unimplemented bundleId: %s", v102, 0x16u);
        OUTLINED_FUNCTION_109_10();
        goto LABEL_62;
      }

LABEL_64:
      v128 = v12[14];
      v127 = v12[15];
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v129, v130, v131);
      v133 = v12[22];
      v132 = v12[23];
      v134 = v12[20];

      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_136_7();

      return v136(v135, v136, v137, v138, v139, v140, v141, v142, a9, a10, a11, a12);
    case 0x19u:
      v27 = v12[23];
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5(v28);
      v29 = type metadata accessor for GlobalItem;
      v19 = v27;
      goto LABEL_55;
    case 0x1Au:
    case 0x1Bu:
      v19 = v12[23];
      v20 = type metadata accessor for SearchResultItem;
      goto LABEL_54;
    case 0x1Cu:
      v19 = v12[23];
      v20 = type metadata accessor for Answer;
LABEL_54:
      v29 = v20;
LABEL_55:
      _s10OmniSearch0B6ResultVWOhTm_5(v19, v29);
      goto LABEL_58;
    case 0x1Du:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for OnScreen();
      goto LABEL_57;
    case 0x1Eu:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_57;
    default:
      OUTLINED_FUNCTION_56_11();
      v26 = type metadata accessor for EmailDocument();
LABEL_57:
      OUTLINED_FUNCTION_17(v26);
      (*(v108 + 8))(v14);
LABEL_58:
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v109 = v12[20];
      v110 = v12[15];
      v111 = type metadata accessor for Logger();
      __swift_project_value_buffer(v111, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_0_49();
      v112 = OUTLINED_FUNCTION_94();
      _s10OmniSearch0B6ResultVWOcTm_7(v112, v113, v114);
      v100 = Logger.logObject.getter();
      v115 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v100, v115))
      {
        v117 = v12[21];
        v116 = v12[22];
        v118 = v12[20];
        v119 = OUTLINED_FUNCTION_90_1();
        a10 = OUTLINED_FUNCTION_260();
        *v119 = 136315394;
        v120 = OUTLINED_FUNCTION_133_8();
        OUTLINED_FUNCTION_98_7(v120);
        OUTLINED_FUNCTION_5_30();
        _s10OmniSearch0B6ResultVWOcTm_7(v118, v116, v121);
        OUTLINED_FUNCTION_63_0();
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_166_5();
        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v118, v122);
        OUTLINED_FUNCTION_63_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_79_11();

        *(v119 + 14) = v116;
        OUTLINED_FUNCTION_118_5(&dword_25D85C000, v123, v124, "%s Returning event as-is. Unimplemented sub event type: %s");
        OUTLINED_FUNCTION_68_11();
LABEL_62:
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
        v125 = v12[20];

        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v125, v126);
      }

      goto LABEL_64;
  }
}

uint64_t static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v0[3] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_160();
  v0[11] = swift_task_alloc();
  v11 = type metadata accessor for SpotlightRankingItem();
  v0[12] = v11;
  OUTLINED_FUNCTION_21(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_199();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v0[15] = OUTLINED_FUNCTION_160();
  v0[16] = swift_task_alloc();
  v18 = type metadata accessor for SearchResultItem(0);
  v0[17] = v18;
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v0[18] = OUTLINED_FUNCTION_199();
  v21 = type metadata accessor for EmailDocument();
  v0[19] = v21;
  OUTLINED_FUNCTION_21(v21);
  v0[20] = v22;
  v24 = *(v23 + 64);
  v0[21] = OUTLINED_FUNCTION_160();
  v0[22] = swift_task_alloc();
  v25 = type metadata accessor for SearchResult(0);
  v0[23] = v25;
  OUTLINED_FUNCTION_21(v25);
  v0[24] = v26;
  v28 = *(v27 + 64);
  v0[25] = OUTLINED_FUNCTION_160();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v29 = type metadata accessor for OSSignpostID();
  v0[32] = v29;
  OUTLINED_FUNCTION_21(v29);
  v0[33] = v30;
  v32 = *(v31 + 64);
  v0[34] = OUTLINED_FUNCTION_160();
  v0[35] = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 328);
  v5 = *(v3 + 312);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 336) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 336);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_51_13();
    *v1 = 136315394;
    v6 = OUTLINED_FUNCTION_86_11();
    OUTLINED_FUNCTION_94_8(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
    Dictionary.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v1 + 14) = v7;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  if (*(*(v0 + 336) + 16) >= 2uLL)
  {
    v13 = *(v0 + 304);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v15))
    {
      v1 = OUTLINED_FUNCTION_51_0();
      v157 = OUTLINED_FUNCTION_49_0();
      *v1 = 136315138;
      *(v1 + 4) = OUTLINED_FUNCTION_86_11();
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v157);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }
  }

  v21 = specialized Collection.first.getter(*(v0 + 336));

  if (v21)
  {
    if (specialized Array.count.getter(v21))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v21 & 0xC000000000000001) == 0, v21);
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25F89FFD0](0, v21);
      }

      else
      {
        v22 = *(v21 + 32);
      }

      v23 = v22;
      *(v0 + 344) = v22;
      v24 = *(v0 + 232);
      v26 = *(v0 + 176);
      v25 = *(v0 + 184);
      v28 = *(v0 + 152);
      v27 = *(v0 + 160);
      v29 = *(v0 + 136);
      v30 = *(v0 + 144);
      v152 = *(v0 + 120);
      v144 = *(v0 + 128);
      v147 = *(v0 + 96);

      v31 = v23;
      EmailDocument.init(from:)(v31, v32, v33, v34, v35, v36, v37, v38, v123, v125, v127, v129, v131, v133, v135, v137, v140, v144, v147, v152);
      (*(v27 + 16))(v30, v26, v28);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v148);
      *(v24 + v25[7]) = MEMORY[0x277D84F90];
      v42 = (v24 + v25[10]);
      *v42 = 0;
      v42[1] = 0;
      OUTLINED_FUNCTION_5_30();
      _s10OmniSearch0B6ResultVWOcTm_7(v30, v24, v43);
      v44 = v25[6];
      type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_6_20();
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v45, v46);
      v47 = v31;
      CodableNSSecureCoding.init(wrappedValue:)();
      outlined init with copy of ResourceBundle?(v145, v153, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v153, 1, v148);
      v49 = *(v0 + 232);
      v50 = *(v0 + 184);
      v51 = *(v0 + 144);
      v52 = *(v0 + 120);
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of IntentApplication?(*(v0 + 120), &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v53 = *(v50 + 20);
        OUTLINED_FUNCTION_140_5();
        OUTLINED_FUNCTION_140_5();
        OUTLINED_FUNCTION_140_5();
        OUTLINED_FUNCTION_140_5();
        OUTLINED_FUNCTION_140_5();
        v128 = 0x100000000;
        v130 = 0x100000000;
        OUTLINED_FUNCTION_19_18();
        v54 = OUTLINED_FUNCTION_32_0();
        outlined destroy of IntentApplication?(v54, v55, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v51, v56);
      }

      else
      {
        v97 = *(v0 + 104);
        v96 = *(v0 + 112);
        v98 = *(v0 + 96);
        outlined destroy of IntentApplication?(*(v0 + 128), &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v51, v99);
        v100 = *(v97 + 32);
        v100(v96, v52, v98);
        v100(v49 + *(v50 + 20), v96, v98);
      }

      v101 = *(v0 + 232);
      v102 = *(v0 + 240);
      v103 = *(v0 + 184);
      v104 = *(v0 + 192);
      *(v101 + *(v103 + 32)) = 1;
      *(v101 + *(v103 + 36)) = 1;
      outlined init with take of SearchResult(v101, v102);
      type metadata accessor for EmailContentManager();
      v105 = swift_allocObject();
      EmailContentManager.init()(v105, v106, v107, v108, v109, v110, v111, v112, v124, v126, v128, v130, v132, v134, v136, v138, v141, v145, v148, v153);
      v114 = v113;
      *(v0 + 352) = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
      v115 = *(v104 + 72);
      v116 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v117 = swift_allocObject();
      *(v0 + 360) = v117;
      *(v117 + 16) = xmmword_25DBC8180;
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v102, v118 + v116, v119);
      v120 = *(*v114 + 96);
      v156 = (v120 + *v120);
      v121 = v120[1];
      v122 = swift_task_alloc();
      *(v0 + 368) = v122;
      *v122 = v0;
      v122[1] = static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:);

      return v156(v117);
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v57 = *(v0 + 48);
  OUTLINED_FUNCTION_200(*(v0 + 296), static Logging.search);

  v58 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_250_2();
  if (os_log_type_enabled(v58, v1))
  {
    v60 = *(v0 + 40);
    v59 = *(v0 + 48);
    v61 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_260();
    *v61 = 136315394;
    v62 = OUTLINED_FUNCTION_86_11();
    OUTLINED_FUNCTION_98_7(v62);
    OUTLINED_FUNCTION_30_5();
    *(v61 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_118_5(&dword_25D85C000, v63, v64, "%s No EmailDocument in the mapping for %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_42_0();
  }

  v65 = *(v0 + 304);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_11(v67))
  {
    v68 = OUTLINED_FUNCTION_51_0();
    v158 = OUTLINED_FUNCTION_49_0();
    *v68 = 136315138;
    *(v68 + 4) = OUTLINED_FUNCTION_86_11();
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v158);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  v74 = *(v0 + 320);
  v75 = *(v0 + 184);
  v76 = *(v0 + 160);
  v77 = *(v0 + 168);
  v149 = *(v0 + 152);
  v154 = *(v0 + 288);
  v79 = *(v0 + 72);
  v78 = *(v0 + 80);
  v80 = *(v0 + 64);
  v81 = *(v0 + 24);
  v82 = *(v0 + 32) + *(v0 + 392);
  v83 = CodableNSSecureCoding.wrappedValue.getter();
  EmailDocument.init(from:)(v83, v84, v85, v86, v87, v88, v89, v90, v123, v125, v127, v129, v131, v133, v135, v137, v140, v143, v149, v154);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v75);
  OUTLINED_FUNCTION_134_6();

  outlined destroy of IntentApplication?(v78, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  (*(v76 + 8))(v77, v150);
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_21_19();
  v139 = *(v0 + 128);
  v142 = *(v0 + 120);
  v146 = *(v0 + 112);
  v151 = *(v0 + 88);
  v155 = *(v0 + 80);

  OUTLINED_FUNCTION_127();

  return v94();
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  v8 = *(v7 + 368);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v5[47] = v0;

  if (v0)
  {
    v11 = static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:);
  }

  else
  {
    v13 = v5[44];
    v12 = v5[45];

    v5[48] = v3;
    v11 = static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v21 = *(v20 + 280);
  v22 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v22, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v23 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v24 = *(v20 + 280);
    v25 = OUTLINED_FUNCTION_172();
    v26 = OUTLINED_FUNCTION_159_5(v25);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v27, v28, v26, "EventManager.hydrateWithSourceEmailDocument", "");
    OUTLINED_FUNCTION_37_0();
  }

  v29 = *(v20 + 272);
  v30 = *(v20 + 280);
  v31 = *(v20 + 256);
  v32 = *(v20 + 264);

  v33 = OUTLINED_FUNCTION_30_16(v32);
  v34(v33);
  v35 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v35);
  *(v20 + 288) = OUTLINED_FUNCTION_38_6();
  v36 = *(v32 + 8);
  v37 = OUTLINED_FUNCTION_54_0();
  v38(v37);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v39 = *(v20 + 248);
  v40 = *(v20 + 32);
  v41 = type metadata accessor for Logger();
  *(v20 + 296) = v41;
  *(v20 + 304) = __swift_project_value_buffer(v41, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v40, v39, v42);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v20 + 248);
  v47 = &unk_25DBC9000;
  if (v45)
  {
    v48 = OUTLINED_FUNCTION_90_1();
    a17 = OUTLINED_FUNCTION_260();
    *v48 = 136315395;
    *(v48 + 4) = OUTLINED_FUNCTION_61_14();
    *(v48 + 12) = 2085;
    SearchResult.description.getter();
    OUTLINED_FUNCTION_164_4();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v46, v49);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v48 + 14) = v50;
    OUTLINED_FUNCTION_184_4(&dword_25D85C000, v51, v52, "%s Fetching source Email for event: %{sensitive}s");
    swift_arrayDestroy();
    v47 = &unk_25DBC9000;
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_72_9();
  }

  else
  {

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v46, v53);
  }

  if (*(v20 + 48))
  {
    v54 = *(v20 + 48);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v20 + 40);
      v58 = OUTLINED_FUNCTION_90_1();
      a17 = OUTLINED_FUNCTION_260();
      *v58 = 136315394;
      v59 = OUTLINED_FUNCTION_61_14();
      OUTLINED_FUNCTION_98_7(v59);
      OUTLINED_FUNCTION_30_5();
      *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_118_5(&dword_25D85C000, v60, v61, "%s Fetching source document via mailMessageId: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_42_0();
    }

    v62 = *(v20 + 184);
    v63 = *(v20 + 56);
    v64 = *(v20 + 32);
    v65 = v63[4];
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v66 = swift_allocObject();
    *(v20 + 312) = v66;
    *(v66 + 16) = xmmword_25DBC8190;
    *(v20 + 392) = *(v62 + 24);
    *(v20 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    *(v66 + 32) = CodableNSSecureCoding.wrappedValue.getter();
    v67 = *(v65 + 8);
    v108 = v67 + *v67;
    v68 = v67[1];
    v69 = swift_task_alloc();
    *(v20 + 328) = v69;
    *v69 = v20;
    v69[1] = static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:);
    OUTLINED_FUNCTION_17_4();

    return v73(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, v65 + 8, v108, a17, a18, a19, a20);
  }

  else
  {
    v79 = *(v20 + 208);
    v80 = *(v20 + 32);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v81, v82, v83);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v20 + 208);
    if (v86)
    {
      v88 = OUTLINED_FUNCTION_90_1();
      a17 = OUTLINED_FUNCTION_260();
      *v88 = v47[411];
      v89 = OUTLINED_FUNCTION_61_14();
      OUTLINED_FUNCTION_155_7(v89);
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v87, v90);
      OUTLINED_FUNCTION_158();
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v88 + 14) = v91;
      OUTLINED_FUNCTION_86_0(&dword_25D85C000, v92, v93, "%s Skipping. No mailMessageId for this event: %{sensitive}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v87, v94);
    }

    v96 = *(v20 + 24);
    v95 = *(v20 + 32);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v97, v98, v99);
    $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_54_15();

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_17_4();

    return v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[47];
  v23 = v20[44];
  v22 = v20[45];
  v24 = v20[38];
  v25 = v20[25];
  v26 = v20[4];

  OUTLINED_FUNCTION_0_49();
  v27 = OUTLINED_FUNCTION_30_5();
  _s10OmniSearch0B6ResultVWOcTm_7(v27, v28, v29);
  v30 = v21;
  v31 = Logger.logObject.getter();
  LOBYTE(v25) = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v25))
  {
    v32 = v20[47];
    v33 = v20[25];
    v34 = OUTLINED_FUNCTION_49_0();
    a17 = swift_slowAlloc();
    *v34 = 136315651;
    v35 = OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_94_8(v35);
    v20[2] = v32;
    v36 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v34 + 14) = v37;
    *(v34 + 22) = 2085;
    SearchResult.description.getter();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v33, v38);
    OUTLINED_FUNCTION_179_0();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v34 + 24) = v39;
    OUTLINED_FUNCTION_92_8();
    _os_log_impl(v40, v41, v42, v43, v44, 0x20u);
    OUTLINED_FUNCTION_148_6();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    v45 = v20[25];

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v45, v46);
  }

  v47 = v20[47];
  v48 = v20[43];
  v71 = v20[30];
  v50 = v20[22];
  v49 = v20[23];
  v51 = v20[20];
  v72 = v20[19];
  v73 = v20[36];
  v53 = v20[9];
  v52 = v20[10];
  v54 = v20[8];
  v55 = v20[3];
  v56 = v20[4];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  OUTLINED_FUNCTION_134_6();

  outlined destroy of IntentApplication?(v52, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_1_47();
  _s10OmniSearch0B6ResultVWOhTm_5(v71, v61);
  (*(v51 + 8))(v50, v72);
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_54_15();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_17_4();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, v71, v72, v73, a17, a18, a19, a20);
}

uint64_t static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[23];
  v22 = v20[11];
  specialized Collection.first.getter(v20[48], v22);

  OUTLINED_FUNCTION_166(v22, 1, v21);
  if (v23)
  {
    v24 = v20[38];
    v25 = v20[27];
    v26 = v20[4];
    outlined destroy of IntentApplication?(v20[11], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_0_49();
    v27 = OUTLINED_FUNCTION_119();
    _s10OmniSearch0B6ResultVWOcTm_7(v27, v28, v29);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = OUTLINED_FUNCTION_91_0(v31);
    v33 = v20[27];
    if (v32)
    {
      OUTLINED_FUNCTION_90_1();
      a17 = OUTLINED_FUNCTION_51_13();
      *v26 = 136315395;
      v34 = OUTLINED_FUNCTION_61_14();
      OUTLINED_FUNCTION_25_18(v34);
      SearchResult.description.getter();
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v33, v35);
      OUTLINED_FUNCTION_179_0();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v26 + 14) = v36;
      OUTLINED_FUNCTION_92_8();
      _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
      OUTLINED_FUNCTION_148_6();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v33, v54);
    }

    v55 = v20[43];
    v56 = v20[36];
    v58 = v20[22];
    v57 = v20[23];
    v59 = v20[20];
    v79 = v20[30];
    v80 = v20[19];
    v61 = v20[9];
    v60 = v20[10];
    v62 = v20[8];
    v64 = v20[3];
    v63 = v20[4];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    static EventManager.buildEventAfterHydration(for:locale:emailDocument:with:)();

    outlined destroy of IntentApplication?(v60, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v79, v69);
    (*(v59 + 8))(v58, v80);
  }

  else
  {
    a13 = v20[43];
    a14 = v20[30];
    v42 = v20[28];
    v43 = v20[22];
    v44 = v20[23];
    v45 = v20[20];
    v79 = v20[19];
    v80 = v20[36];
    v46 = v20[10];
    v48 = v20[8];
    v47 = v20[9];
    v50 = v20[3];
    v49 = v20[4];
    outlined init with take of SearchResult(v20[11], v42);
    OUTLINED_FUNCTION_0_49();
    v51 = OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B6ResultVWOcTm_7(v51, v52, v53);
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v44);
    static EventManager.buildEventAfterHydration(for:locale:emailDocument:with:)();

    outlined destroy of IntentApplication?(v46, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    _s10OmniSearch0B6ResultVWOhTm_5(v42, type metadata accessor for SearchResult);
    _s10OmniSearch0B6ResultVWOhTm_5(a14, type metadata accessor for SearchResult);
    (*(v45 + 8))(v43, v79);
  }

  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_54_15();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_17_4();

  return v71(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, v79, v80, a17, a18, a19, a20);
}

uint64_t static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  v0[27] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  v0[34] = OUTLINED_FUNCTION_199();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  v0[35] = OUTLINED_FUNCTION_199();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  v0[36] = OUTLINED_FUNCTION_199();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  v0[37] = OUTLINED_FUNCTION_199();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v20);
  v22 = *(v21 + 64);
  v0[38] = OUTLINED_FUNCTION_160();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  v0[41] = OUTLINED_FUNCTION_160();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v26);
  v28 = *(v27 + 64);
  v0[44] = OUTLINED_FUNCTION_160();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v29);
  v31 = *(v30 + 64);
  v0[48] = OUTLINED_FUNCTION_160();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v32 = type metadata accessor for MobileSMSDocument();
  v0[52] = v32;
  OUTLINED_FUNCTION_21(v32);
  v0[53] = v33;
  v35 = *(v34 + 64);
  v0[54] = OUTLINED_FUNCTION_160();
  v0[55] = swift_task_alloc();
  v36 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_114(v36);
  v38 = *(v37 + 64);
  v0[56] = OUTLINED_FUNCTION_160();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v39 = type metadata accessor for OSSignpostID();
  v0[60] = v39;
  OUTLINED_FUNCTION_21(v39);
  v0[61] = v40;
  v42 = *(v41 + 64);
  v0[62] = OUTLINED_FUNCTION_160();
  v0[63] = swift_task_alloc();
  v43 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = *(v0 + 504);
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v4 = *(v0 + 504);
    v5 = OUTLINED_FUNCTION_172();
    v6 = OUTLINED_FUNCTION_159_5(v5);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v7, v8, v6, "EventManager.hydrateWithSourceMessageDocumentFromResultHydrator", "");
    OUTLINED_FUNCTION_37_0();
  }

  v9 = *(v0 + 496);
  v10 = *(v0 + 504);
  v11 = *(v0 + 480);
  v12 = *(v0 + 488);
  v13 = *(v0 + 240);

  v14 = OUTLINED_FUNCTION_30_16(v12);
  v15(v14);
  v16 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v16);
  *(v0 + 512) = OUTLINED_FUNCTION_38_6();
  v17 = *(v12 + 8);
  v18 = OUTLINED_FUNCTION_54_0();
  v19(v18);
  if (v13)
  {
    v20 = *(v0 + 240);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v21 = *(v0 + 472);
    v22 = *(v0 + 224);
    v23 = type metadata accessor for Logger();
    *(v0 + 520) = __swift_project_value_buffer(v23, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_0_49();
    v24 = OUTLINED_FUNCTION_94();
    _s10OmniSearch0B6ResultVWOcTm_7(v24, v25, v26);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    v29 = OUTLINED_FUNCTION_91_0(v28);
    v30 = *(v0 + 472);
    if (v29)
    {
      v31 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v31 = 136315395;
      v32 = OUTLINED_FUNCTION_53_13();
      OUTLINED_FUNCTION_155_7(v32);
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v30, v33);
      OUTLINED_FUNCTION_158();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v31 + 14) = v34;
      _os_log_impl(&dword_25D85C000, v27, v28, "%s Fetching source Message for event: %{sensitive}s", v31, 0x16u);
      OUTLINED_FUNCTION_109_10();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v30, v48);
    }

    v49 = *(v0 + 408);
    v50 = *(v0 + 376);
    v51 = *(v0 + 344);
    v52 = *(v0 + 320);
    type metadata accessor for Date();
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    *(v0 + 528) = type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    *(v0 + 536) = type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    *(v0 + 544) = type metadata accessor for PartialExtractedAttributes();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    v69 = one-time initialization token for search;

    if (v69 != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    *(v0 + 552) = __swift_project_value_buffer(v23, static Logging.search);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v71))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v72, v73, v74, v75, v76, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v137 = *(v0 + 416);
    v139 = *(v0 + 424);
    v78 = *(v0 + 400);
    v77 = *(v0 + 408);
    v132 = *(v0 + 440);
    v80 = *(v0 + 368);
    v79 = *(v0 + 376);
    v81 = *(v0 + 336);
    v82 = *(v0 + 344);
    v84 = *(v0 + 312);
    v83 = *(v0 + 320);
    v118 = *(v0 + 296);
    v120 = *(v0 + 288);
    v122 = *(v0 + 280);
    v124 = *(v0 + 272);
    v135 = *(v0 + 248);
    v129 = *(v0 + 232);

    outlined init with copy of ResourceBundle?(v77, v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of ResourceBundle?(v79, v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    specialized Array.append<A>(contentsOf:)(MEMORY[0x277D84F90]);
    outlined init with copy of ResourceBundle?(v82, v81, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined init with copy of ResourceBundle?(v83, v84, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    *(v0 + 560) = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    *(v0 + 568) = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    *(v0 + 576) = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
    *(v0 + 584) = type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
    OUTLINED_FUNCTION_28_1();
    MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
    outlined destroy of IntentApplication?(v83, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of IntentApplication?(v82, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of IntentApplication?(v79, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of IntentApplication?(v77, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v101 = v135[3];
    v102 = v135[4];
    __swift_project_boxed_opaque_existential_1(v135, v101);
    *(v0 + 120) = v137;
    *(v0 + 128) = &protocol witness table for MobileSMSDocument;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 96));
    (*(v139 + 16))(boxed_opaque_existential_1Tm, v132, v137);
    v104 = *(v102 + 24);
    v141 = (v104 + *v104);
    v105 = v104[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 592) = v106;
    *v106 = v107;
    v106[1] = static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:);
    v108 = *(v0 + 224);

    return v141(v0 + 56, v108, v0 + 96, v101, v102);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v35 = *(v0 + 456);
    v36 = *(v0 + 224);
    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v36, v35, v38);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 456);
    if (v41)
    {
      v43 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v43 = 136315394;
      *(v43 + 4) = OUTLINED_FUNCTION_53_13();
      *(v43 + 12) = 2080;
      SearchResult.description.getter();
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v42, v44);
      OUTLINED_FUNCTION_158();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v43 + 14) = v45;
      OUTLINED_FUNCTION_86_0(&dword_25D85C000, v46, v47, "%s Skipping. No valid id for MobileSMS message: %s");
      OUTLINED_FUNCTION_109_10();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v42, v110);
    }

    v112 = *(v0 + 216);
    v111 = *(v0 + 224);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v113, v114, v115);
    $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

    OUTLINED_FUNCTION_60_9();
    v117 = *(v0 + 392);
    v119 = *(v0 + 384);
    v121 = *(v0 + 376);
    v123 = *(v0 + 368);
    v125 = *(v0 + 360);
    v126 = *(v0 + 352);
    v127 = *(v0 + 344);
    v128 = *(v0 + 336);
    v130 = *(v0 + 328);
    v131 = *(v0 + 320);
    v133 = *(v0 + 312);
    v134 = *(v0 + 304);
    v136 = *(v0 + 296);
    v138 = *(v0 + 288);
    v140 = *(v0 + 280);
    v142 = *(v0 + 272);

    OUTLINED_FUNCTION_127();

    return v116();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 592);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v3 + 600) = v0;

  if (v0)
  {
    v9 = static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
    v9 = static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = *(*(v0 + 424) + 8);
  (v1)(*(v0 + 440), *(v0 + 416));
  outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
  v2 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 88);
  outlined init with copy of ResourceBundle?(v0 + 16, v0 + 176, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
  if (*(v0 + 200))
  {
    v161 = v1;
    v149 = *(v0 + 536);
    v152 = *(v0 + 544);
    v3 = *(v0 + 528);
    v4 = *(v0 + 392);
    v5 = *(v0 + 360);
    v6 = *(v0 + 328);
    v7 = *(v0 + 304);
    v8 = *(v0 + 240);
    outlined init with take of ResponseOverrideMatcherProtocol((v0 + 176), v0 + 136);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v9);
    OUTLINED_FUNCTION_112_2();

    ChatMessageRecord.text.getter(v9, v10);
    OUTLINED_FUNCTION_147_6();
    v11 = OUTLINED_FUNCTION_107();
    v13 = ChatMessageRecord.from.getter(v11, v12);
    OUTLINED_FUNCTION_147_6();
    v14 = OUTLINED_FUNCTION_107();
    v16 = ChatMessageRecord.isFromMe.getter(v14, v15) & 1;
    OUTLINED_FUNCTION_147_6();
    v17 = OUTLINED_FUNCTION_107();
    ChatMessageRecord.date.getter(v17, v18);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v3);
    v22 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v23 = *(*(v22 + 8) + 8);
    v24 = OUTLINED_FUNCTION_112_2();
    v26 = v25(v24);
    v155 = v27;
    v157 = v26;
    v28 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v29 = *(*(v28 + 8) + 16);
    v30 = OUTLINED_FUNCTION_112_2();
    v32 = v31(v30);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v149);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v152);
    v142 = v13;
    v140 = v16;
    if (*(v32 + 16))
    {
      v39 = *(v0 + 352);
      v40 = *(v0 + 360);
      outlined init with copy of ResourceBundle?(*(v0 + 392), *(v0 + 384), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v41 = OUTLINED_FUNCTION_107();
      outlined init with copy of ResourceBundle?(v41, v42, v43, v44);
      v138 = v32;
    }

    else
    {
      v63 = *(v0 + 552);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_16_11(v65))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v66, v67, v68, v69, v70, 2u);
        OUTLINED_FUNCTION_2_8();
      }

      v72 = *(v0 + 384);
      v71 = *(v0 + 392);
      v74 = *(v0 + 352);
      v73 = *(v0 + 360);

      v75 = OUTLINED_FUNCTION_32_0();
      outlined init with copy of ResourceBundle?(v75, v76, v77, v78);
      v79 = OUTLINED_FUNCTION_64_0();
      outlined init with copy of ResourceBundle?(v79, v80, v81, v82);

      v164 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v13, v16);
      specialized Array.append<A>(contentsOf:)(MEMORY[0x277D84F90]);
      v138 = v164;
    }

    v128 = *(v0 + 576);
    v129 = *(v0 + 584);
    v83 = *(v0 + 568);
    v84 = *(v0 + 560);
    v136 = *(v0 + 432);
    v150 = *(v0 + 392);
    v153 = *(v0 + 520);
    v133 = *(v0 + 384);
    v144 = *(v0 + 360);
    v132 = *(v0 + 352);
    v134 = *(v0 + 328);
    v86 = *(v0 + 304);
    v85 = *(v0 + 312);
    v87 = *(v0 + 288);
    v88 = *(v0 + 296);
    v89 = *(v0 + 272);
    v90 = *(v0 + 280);
    v146 = *(v0 + 256);
    v130 = *(v0 + 232);
    v131 = *(v0 + 240);
    outlined init with copy of ResourceBundle?(v134, *(v0 + 336), &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined init with copy of ResourceBundle?(v86, v85, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v84);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v83);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v128);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v129);
    v127 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    LOBYTE(v124) = v140;
    OUTLINED_FUNCTION_28_1();
    MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
    outlined destroy of IntentApplication?(v86, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of IntentApplication?(v134, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of IntentApplication?(v144, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of IntentApplication?(v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    MobileSMSDocument.llmConsumableDescription(locale:)(v146);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v103, v104))
    {
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_51_13();
      *v85 = 136315395;
      v105 = OUTLINED_FUNCTION_53_13();
      OUTLINED_FUNCTION_25_18(v105);
      OUTLINED_FUNCTION_180();
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v85 + 14) = v106;
      _os_log_impl(&dword_25D85C000, v103, v104, "%s Created a new MobileSMSDocument from source SMS document. New LLM description is: %{sensitive}s", v85, 0x16u);
      OUTLINED_FUNCTION_109_10();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
    }

    v111 = *(v0 + 512);
    v112 = *(v0 + 416);
    v113 = *(v0 + 216);
    static EventManager.buildEventAfterSMSHydration(for:mobileSMSDocument:locale:)(*(v0 + 224), *(v0 + 432), *(v0 + 256), *(v0 + 264), v107, v108, v109, v110, v142, v124, v125, v133, v132, v126, 0, 0, v157, v155, v138, v127);
    v114 = OUTLINED_FUNCTION_32_0();
    v161(v114);
    outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  }

  else
  {
    v45 = *(v0 + 520);
    v46 = *(v0 + 464);
    v47 = *(v0 + 224);
    outlined destroy of IntentApplication?(v0 + 176, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
    OUTLINED_FUNCTION_0_49();
    v48 = OUTLINED_FUNCTION_119();
    _s10OmniSearch0B6ResultVWOcTm_7(v48, v49, v50);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = OUTLINED_FUNCTION_91_0(v52);
    v54 = *(v0 + 464);
    if (v53)
    {
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_51_13();
      *v47 = 136315395;
      v55 = OUTLINED_FUNCTION_53_13();
      OUTLINED_FUNCTION_25_18(v55);
      SearchResult.description.getter();
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v54, v56);
      OUTLINED_FUNCTION_179_0();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v47 + 14) = v57;
      OUTLINED_FUNCTION_92_8();
      _os_log_impl(v58, v59, v60, v61, v62, 0x16u);
      OUTLINED_FUNCTION_148_6();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v54, v115);
    }

    outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
    v116 = *(v0 + 512);
    v118 = *(v0 + 216);
    v117 = *(v0 + 224);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v119, v120, v121);
  }

  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_60_9();
  v135 = *(v0 + 392);
  v137 = *(v0 + 384);
  v139 = *(v0 + 376);
  v141 = *(v0 + 368);
  v143 = *(v0 + 360);
  v145 = *(v0 + 352);
  v147 = *(v0 + 344);
  v148 = *(v0 + 336);
  v151 = *(v0 + 328);
  v154 = *(v0 + 320);
  v156 = *(v0 + 312);
  v158 = *(v0 + 304);
  v159 = *(v0 + 296);
  v160 = *(v0 + 288);
  v162 = *(v0 + 280);
  v163 = *(v0 + 272);

  OUTLINED_FUNCTION_127();

  return v122();
}

{
  v1 = v0[75];
  v2 = v0[65];
  v3 = v0[56];
  v4 = v0[28];
  (*(v0[53] + 8))(v0[55], v0[52]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v4, v3, v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[75];
  v11 = v0[56];
  if (v9)
  {
    v12 = OUTLINED_FUNCTION_49_0();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v12 = 136315651;
    OUTLINED_FUNCTION_98_2();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_155_7(v14);
    OUTLINED_FUNCTION_164_4();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v11, v15);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v12 + 14) = v16;
    *(v12 + 22) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&dword_25D85C000, v7, v8, "%s Skipping. While retrieving this event: %{sensitive}s encountered error %@", v12, 0x20u);
    outlined destroy of IntentApplication?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_109_10();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v11, v19);
  }

  outlined destroy of IntentApplication?((v0 + 2), &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
  v20 = v0[64];
  v22 = v0[27];
  v21 = v0[28];
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v23, v24, v25);
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_60_9();
  v28 = v0[49];
  v29 = v0[48];
  v30 = v0[47];
  v31 = v0[46];
  v32 = v0[45];
  v33 = v0[44];
  v34 = v0[43];
  v35 = v0[42];
  v36 = v0[41];
  v37 = v0[40];
  v38 = v0[39];
  v39 = v0[38];
  v40 = v0[37];
  v41 = v0[36];
  v42 = v0[35];
  v43 = v0[34];

  OUTLINED_FUNCTION_127();

  return v26();
}

void static EventManager.buildEventAfterSMSHydration(for:mobileSMSDocument:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v179 = v27;
  object = v26;
  v29 = v28;
  v30 = type metadata accessor for Trip();
  v31 = OUTLINED_FUNCTION_14(v30);
  v176 = v32;
  v177 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_36();
  v175 = (v36 - v35);
  OUTLINED_FUNCTION_78_0();
  v37 = type metadata accessor for Party();
  v38 = OUTLINED_FUNCTION_14(v37);
  v173 = v39;
  v174 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36();
  v172 = v43 - v42;
  OUTLINED_FUNCTION_78_0();
  v44 = type metadata accessor for Appointment();
  v45 = OUTLINED_FUNCTION_14(v44);
  v170 = v46;
  v171 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_36();
  v169 = v50 - v49;
  OUTLINED_FUNCTION_78_0();
  v51 = type metadata accessor for RentalCarReservation();
  v52 = OUTLINED_FUNCTION_14(v51);
  v167 = v53;
  v168 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_36();
  v166 = v57 - v56;
  OUTLINED_FUNCTION_78_0();
  v58 = type metadata accessor for TicketedTransportation();
  v59 = OUTLINED_FUNCTION_14(v58);
  v164 = v60;
  v165 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_36();
  v163 = v64 - v63;
  OUTLINED_FUNCTION_78_0();
  v162 = type metadata accessor for TicketedShow();
  v65 = OUTLINED_FUNCTION_14(v162);
  v161 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_28_2(v70 - v69);
  v71 = type metadata accessor for RestaurantReservation();
  v72 = OUTLINED_FUNCTION_1_5(v71, &a16);
  v159 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_36();
  v78 = (v77 - v76);
  v79 = type metadata accessor for HotelReservation();
  v80 = OUTLINED_FUNCTION_14(v79);
  v157 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_36();
  v86 = (v85 - v84);
  v87 = type metadata accessor for FlightReservation();
  v88 = OUTLINED_FUNCTION_14(v87);
  v156 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_36();
  v94 = (v93 - v92);
  v95 = type metadata accessor for SearchResultItem(0);
  v96 = OUTLINED_FUNCTION_17(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v99);
  v101 = &v155 - v100;
  v102 = type metadata accessor for SearchResult(0);
  v103 = OUTLINED_FUNCTION_114(v102);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_0_49();
  v181 = v107;
  _s10OmniSearch0B6ResultVWOcTm_7(v29, v107, v108);
  v109.value._countAndFlagsBits = v25;
  v109.value._object = v23;
  v110 = MobileSMSDocument.llmConsumableDescription(locale:)(v109);
  object = v110._object;
  OUTLINED_FUNCTION_5_30();
  v111 = v29;
  _s10OmniSearch0B6ResultVWOcTm_7(v29, v101, v112);
  v178 = v95;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0xFu:
      v111 = v169;
      v113 = OUTLINED_FUNCTION_101_8();
      v114 = v171;
      v87(v113);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      goto LABEL_9;
    case 0x10u:
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      v120 = *&v101[*(v119 + 48)];
      v121 = *(v156 + 32);
      v121(v94, v101, v87);
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v122, v123);
      v124 = *(v119 + 48);
      v121(v29, v94, v87);
      *(v29 + v124) = v120;
      goto LABEL_10;
    case 0x11u:
      v115 = *(v157 + 32);
      v115(v86, v101, v79);
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v116, v117);
      v115(v29, v86, v79);
      goto LABEL_10;
    case 0x12u:
      v111 = v172;
      v127 = OUTLINED_FUNCTION_101_8();
      v114 = v174;
      v87(v127);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      goto LABEL_9;
    case 0x13u:
      v130 = *(v159 + 32);
      v131 = v160;
      v130(v78, v101, v160);
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v132, v133);
      v130(v29, v78, v131);
      goto LABEL_10;
    case 0x14u:
      v111 = v166;
      v118 = OUTLINED_FUNCTION_101_8();
      v114 = v168;
      v87(v118);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      goto LABEL_9;
    case 0x16u:
      v111 = v163;
      v125 = OUTLINED_FUNCTION_101_8();
      v114 = v165;
      v87(v125);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      goto LABEL_9;
    case 0x17u:
      v87 = *(v161 + 32);
      v126 = OUTLINED_FUNCTION_50_1(&a17);
      v114 = v162;
      (v87)(v126, v101, v162);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
LABEL_9:
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v128, v129);
      (v87)(v29, v111, v114);
      goto LABEL_10;
    case 0x18u:
      v134 = v175;
      v135 = *(v176 + 32);
      v136 = v177;
      v135(v175, v101, v177);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v137, v138);
      v135(v29, v134, v136);
LABEL_10:
      swift_storeEnumTagMultiPayload();
      outlined init with take of SearchResult(v29, v179);
      break;
    default:

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v139 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v139, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_0_49();
      v140 = v158;
      _s10OmniSearch0B6ResultVWOcTm_7(v29, v158, v141);
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_91_0(v143))
      {
        OUTLINED_FUNCTION_90_1();
        v182 = OUTLINED_FUNCTION_52_14();
        *v110._countAndFlagsBits = 136315395;
        OUTLINED_FUNCTION_98_2();
        v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_23_19(v144);
        OUTLINED_FUNCTION_5_30();
        _s10OmniSearch0B6ResultVWOcTm_7(v140, v155, v145);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v140, v146);
        v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v110._countAndFlagsBits + 14) = v147;
        OUTLINED_FUNCTION_78_13(&dword_25D85C000, v148, v143, "%s Returning event as-is. Unimplemented sub event type: %{sensitive}s");
        OUTLINED_FUNCTION_68_11();
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_64_10();
      }

      else
      {

        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v140, v149);
      }

      v150 = v181;
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v29, v151, v152);
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v101, v153);
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v150, v154);
      break;
  }

  OUTLINED_FUNCTION_148();
}

void $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)()
{
  OUTLINED_FUNCTION_155();
  v25 = v0;
  v1 = type metadata accessor for OSSignpostError();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = type metadata accessor for OSSignpostID();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v18 = v17 - v16;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v19 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v19, static Logging.searchSignposter);
  v20 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v21 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v9, v1) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v9, v1);
      v22 = "";
    }

    v23 = OUTLINED_FUNCTION_172();
    *v23 = 0;
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v20, v21, v24, v25, v22, v23, 2u);
    OUTLINED_FUNCTION_72_9();
  }

  (*(v13 + 8))(v18, v10);
  OUTLINED_FUNCTION_148();
}

void static EventManager.buildEventAfterHydration(for:locale:emailDocument:with:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v261 = v2;
  v263 = v3;
  v5 = v4;
  v7 = v6;
  v262 = v8;
  v9 = type metadata accessor for Trip();
  v10 = OUTLINED_FUNCTION_14(v9);
  v279 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_2();
  v283 = v15;
  OUTLINED_FUNCTION_78_0();
  v16 = type metadata accessor for Party();
  v17 = OUTLINED_FUNCTION_1_5(v16, v287);
  v278 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_2();
  v277 = v22;
  OUTLINED_FUNCTION_78_0();
  v23 = type metadata accessor for Appointment();
  v24 = OUTLINED_FUNCTION_1_5(v23, &v286);
  v276 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  v274 = v29;
  OUTLINED_FUNCTION_78_0();
  v30 = type metadata accessor for RentalCarReservation();
  v31 = OUTLINED_FUNCTION_1_5(v30, &v285);
  v273 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_2();
  v272 = v36;
  OUTLINED_FUNCTION_78_0();
  v37 = type metadata accessor for TicketedTransportation();
  v38 = OUTLINED_FUNCTION_1_5(v37, &v284);
  v271 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_14_2();
  v270 = v43;
  OUTLINED_FUNCTION_78_0();
  v44 = type metadata accessor for TicketedShow();
  v45 = OUTLINED_FUNCTION_1_5(v44, &v283);
  v269 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v50);
  v51 = type metadata accessor for ShippingOrder();
  v52 = OUTLINED_FUNCTION_1_5(v51, &v282);
  v267 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v57);
  v58 = type metadata accessor for RestaurantReservation();
  v59 = OUTLINED_FUNCTION_1_5(v58, &v281);
  v265 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v64);
  v65 = type metadata accessor for HotelReservation();
  v66 = OUTLINED_FUNCTION_1_5(v65, &v280);
  v264 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v71);
  v72 = type metadata accessor for FlightReservation();
  v73 = OUTLINED_FUNCTION_1_5(v72, &v279);
  v256 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_14_2();
  v79 = OUTLINED_FUNCTION_28_2(v78);
  v281 = type metadata accessor for SearchResultItem(v79);
  v80 = OUTLINED_FUNCTION_17(v281);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_39_0();
  v275 = v83;
  MEMORY[0x28223BE20](v84);
  v86 = v254 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v90);
  v92 = v254 - v91;
  v93 = type metadata accessor for SearchResult(0);
  v94 = OUTLINED_FUNCTION_17(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_39_0();
  v280 = v97;
  v99 = MEMORY[0x28223BE20](v98);
  v101 = v254 - v100;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_0_49();
  v282 = v102;
  _s10OmniSearch0B6ResultVWOcTm_7(v7, v102, v103);
  outlined init with copy of ResourceBundle?(v1, v92, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v92, 1, v93);
  if (v104)
  {
    outlined destroy of IntentApplication?(v92, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v105.value._countAndFlagsBits = v5;
    v105.value._object = v263;
    v111 = v261;
    v106 = EmailDocument.llmConsumableDescription(locale:)(v105);
    OUTLINED_FUNCTION_181_5(v106._countAndFlagsBits, v106._object);
  }

  else
  {
    OUTLINED_FUNCTION_5_30();
    _s10OmniSearch0B6ResultVWOcTm_7(v92, v86, v107);
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v92, v108);
    SearchResultItem.associatedValue.getter(&v284);
    v109 = v287[0];
    v110 = v287[1];
    v111 = __swift_project_boxed_opaque_existential_1(&v284, v287[0]);
    v112 = (*(v110 + 56))(v5, v263, v109, v110);
    OUTLINED_FUNCTION_181_5(v112, v113);
    OUTLINED_FUNCTION_0_50();
    _s10OmniSearch0B6ResultVWOhTm_5(v86, v114);
    __swift_destroy_boxed_opaque_existential_1Tm(&v284);
  }

  v259 = v9;
  v260 = v86;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v115 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v115, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_0_49();
  v116 = v7;
  _s10OmniSearch0B6ResultVWOcTm_7(v7, v101, v117);
  v263 = v111;
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = OUTLINED_FUNCTION_90_1();
    v284 = OUTLINED_FUNCTION_260();
    *v120 = 136315394;
    *(v120 + 4) = OUTLINED_FUNCTION_153_6();
    *(v120 + 12) = 2080;
    SearchResultItem.type.getter(&v289);
    v288 = v289;
    lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v101, v121);
    v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v120 + 14) = v122;
    _os_log_impl(&dword_25D85C000, v118, v119, "%s Build event for %s", v120, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v101, v123);
  }

  v125 = v282;
  v124 = v283;
  v126 = v279;
  v127 = v275;
  OUTLINED_FUNCTION_5_30();
  _s10OmniSearch0B6ResultVWOcTm_7(v116, v127, v128);
  v129 = v281;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v131 = v280;
  v132 = v278;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for MobileSMSDocument();
      goto LABEL_56;
    case 2:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for CalendarEvent();
      goto LABEL_56;
    case 3:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for Photo();
      goto LABEL_56;
    case 4:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for NoteDocument();
      goto LABEL_56;
    case 5:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for Reminder();
      goto LABEL_56;
    case 6:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for PhoneHistory();
      goto LABEL_56;
    case 7:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for VoicemailTranscript();
      goto LABEL_56;
    case 8:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for JournalEntry();
      goto LABEL_56;
    case 9:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for VoiceMemo();
      goto LABEL_56;
    case 10:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for Safari();
      goto LABEL_56;
    case 11:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for FileDocument();
      goto LABEL_56;
    case 12:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for WalletTransaction();
      goto LABEL_56;
    case 13:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for WalletPass();
      goto LABEL_56;
    case 14:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for Contact();
      goto LABEL_56;
    case 15:
      v166 = v276;
      v167 = *(v276 + 32);
      v168 = v274;
      OUTLINED_FUNCTION_110_8();
      v169();
      OUTLINED_FUNCTION_13_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v170);
      v171 = OUTLINED_FUNCTION_12_26();
      v131(v171);
      OUTLINED_FUNCTION_129_4();
      swift_storeEnumTagMultiPayload();
      v172 = OUTLINED_FUNCTION_126_9();
      v173 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v173))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v174 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v174);
      v175 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v175);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v176 = &v274;
      goto LABEL_51;
    case 16:
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      v135 = *(v127 + *(v134 + 48));
      OUTLINED_FUNCTION_65_14(&v278);
      v136 = v255;
      v137 = v257;
      v138(v255, v127, v257);
      OUTLINED_FUNCTION_15_21();
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v139);
      v140 = *(v134 + 48);
      v141 = v126[2];
      v142 = OUTLINED_FUNCTION_129_4();
      v141(v142);
      *(v125 + v140) = v135;
      swift_storeEnumTagMultiPayload();
      v143 = OUTLINED_FUNCTION_126_9();
      v144 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_91_0(v144))
      {
        OUTLINED_FUNCTION_90_1();
        v145 = OUTLINED_FUNCTION_52_14();
        v146 = v137;
        OUTLINED_FUNCTION_96_9(v145);
        *v136 = 136315395;
        v147 = OUTLINED_FUNCTION_33_17();
        OUTLINED_FUNCTION_14_19(v147);
        OUTLINED_FUNCTION_28_1();
        swift_beginAccess();
        v148 = OUTLINED_FUNCTION_226_1(&v267);
        (v141)(v148, v136, v137);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_191_6();
        OUTLINED_FUNCTION_151_3();
        *(v136 + 14) = v141;
        OUTLINED_FUNCTION_67_13(&dword_25D85C000, v149, v150, "%s Set eventSourceLLMConsumableDescription to %{sensitive}s");
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_64_10();
LABEL_21:

        v163 = v126[1];
        v164 = v136;
LABEL_22:
        v165 = v146;
      }

      else
      {

        v163 = v126[1];
        v164 = v136;
        v165 = v137;
      }

      v163(v164, v165);
LABEL_63:
      outlined init with take of SearchResult(v125, v262);
      break;
    case 17:
      v177 = *(v264 + 32);
      OUTLINED_FUNCTION_110_8();
      v166 = v178;
      v168 = v179;
      v180();
      OUTLINED_FUNCTION_13_14();
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v181);
      v182 = OUTLINED_FUNCTION_12_26();
      v131(v182);
      OUTLINED_FUNCTION_129_4();
      swift_storeEnumTagMultiPayload();
      v172 = OUTLINED_FUNCTION_126_9();
      v183 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v183))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v184 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v184);
      v185 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v185);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v176 = &v268;
      goto LABEL_51;
    case 18:
      v198 = *(v278 + 32);
      v199 = v277;
      OUTLINED_FUNCTION_110_8();
      v200();
      OUTLINED_FUNCTION_15_21();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v201);
      v202 = *(v132 + 16);
      v203 = OUTLINED_FUNCTION_118_0();
      v202(v203);
      OUTLINED_FUNCTION_129_4();
      swift_storeEnumTagMultiPayload();
      v204 = OUTLINED_FUNCTION_126_9();
      v205 = v132;
      v206 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_91_0(v206))
      {
        OUTLINED_FUNCTION_90_1();
        v207 = OUTLINED_FUNCTION_52_14();
        OUTLINED_FUNCTION_96_9(v207);
        v208 = OUTLINED_FUNCTION_17_24(4.8151e-34);
        OUTLINED_FUNCTION_14_19(v208);
        OUTLINED_FUNCTION_28_1();
        swift_beginAccess();
        v209 = OUTLINED_FUNCTION_226_1(&v275);
        (v202)(v209, v199, v126);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_191_6();
        OUTLINED_FUNCTION_151_3();
        *(v199 + 14) = v202;
        OUTLINED_FUNCTION_67_13(&dword_25D85C000, v210, v211, "%s Set eventSourceLLMConsumableDescription to %{sensitive}s");
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_64_10();
      }

      (*(v205 + 8))(v199, v126);
      goto LABEL_63;
    case 19:
      v220 = *(v265 + 32);
      OUTLINED_FUNCTION_110_8();
      v166 = v221;
      v168 = v222;
      v223();
      OUTLINED_FUNCTION_13_14();
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v224);
      v225 = OUTLINED_FUNCTION_12_26();
      v131(v225);
      OUTLINED_FUNCTION_129_4();
      swift_storeEnumTagMultiPayload();
      v172 = OUTLINED_FUNCTION_126_9();
      v226 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v226))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v227 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v227);
      v228 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v228);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v176 = &v269;
      goto LABEL_51;
    case 20:
      v166 = v273;
      v186 = *(v273 + 32);
      v168 = v272;
      OUTLINED_FUNCTION_110_8();
      v187();
      OUTLINED_FUNCTION_13_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v188);
      v189 = OUTLINED_FUNCTION_12_26();
      v131(v189);
      OUTLINED_FUNCTION_129_4();
      swift_storeEnumTagMultiPayload();
      v172 = OUTLINED_FUNCTION_126_9();
      v190 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v190))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v191 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v191);
      v192 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v192);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v176 = &v273;
      goto LABEL_51;
    case 21:
      v166 = v267;
      v126 = v258;
      v168 = v266;
      (*(v267 + 32))();
      OUTLINED_FUNCTION_13_14();
      ShippingOrder.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v193);
      v194 = OUTLINED_FUNCTION_12_26();
      v131(v194);
      OUTLINED_FUNCTION_129_4();
      swift_storeEnumTagMultiPayload();
      v172 = OUTLINED_FUNCTION_126_9();
      v195 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v195))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v196 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v196);
      v197 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v197);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v176 = &v270;
      goto LABEL_51;
    case 22:
      v212 = *(v271 + 32);
      v168 = v270;
      OUTLINED_FUNCTION_110_8();
      v166 = v213;
      v214();
      OUTLINED_FUNCTION_13_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v215);
      v216 = OUTLINED_FUNCTION_12_26();
      v131(v216);
      OUTLINED_FUNCTION_129_4();
      swift_storeEnumTagMultiPayload();
      v172 = OUTLINED_FUNCTION_126_9();
      v217 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v217))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v218 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v218);
      v219 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v219);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v176 = &v272;
      goto LABEL_51;
    case 23:
      v229 = *(v269 + 32);
      v168 = v268;
      OUTLINED_FUNCTION_110_8();
      v166 = v230;
      v231();
      OUTLINED_FUNCTION_13_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v232);
      v233 = OUTLINED_FUNCTION_12_26();
      v131(v233);
      OUTLINED_FUNCTION_129_4();
      swift_storeEnumTagMultiPayload();
      v172 = OUTLINED_FUNCTION_126_9();
      v234 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v234))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v235 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v235);
      v236 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v236);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v176 = &v271;
LABEL_51:
      v237 = OUTLINED_FUNCTION_226_1(v176);
      (v131)(v237, v168, v126);
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_191_6();
      OUTLINED_FUNCTION_151_3();
      *(v127 + 14) = v131;
      OUTLINED_FUNCTION_78_13(&dword_25D85C000, v238, v129, "%s Set eventSourceLLMConsumableDescription to %{sensitive}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_64_10();
LABEL_52:

      (*(v166 + 8))(v168, v126);
      goto LABEL_63;
    case 24:
      v153 = v126[4];
      v154 = OUTLINED_FUNCTION_94();
      v146 = v259;
      v155(v154);
      OUTLINED_FUNCTION_15_21();
      v156 = v124;
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v157);
      v158 = v126[2];
      v158(v125, v124, v146);
      OUTLINED_FUNCTION_129_4();
      swift_storeEnumTagMultiPayload();
      v136 = v124;
      v143 = OUTLINED_FUNCTION_126_9();
      v159 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_91_0(v159))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_90_1();
      v289 = OUTLINED_FUNCTION_52_14();
      *v156 = 136315395;
      v160 = OUTLINED_FUNCTION_33_17();
      OUTLINED_FUNCTION_14_19(v160);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v158(v254[10], v136, v146);
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_191_6();
      OUTLINED_FUNCTION_151_3();
      *(v156 + 14) = v158;
      OUTLINED_FUNCTION_67_13(&dword_25D85C000, v161, v162, "%s Set eventSourceLLMConsumableDescription to %{sensitive}s");
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_64_10();

      v163 = v126[1];
      v164 = v283;
      goto LABEL_22;
    case 25:
      OUTLINED_FUNCTION_114_8();
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5(v152);
      v133 = type metadata accessor for GlobalItem;
      goto LABEL_54;
    case 26:
    case 27:
      OUTLINED_FUNCTION_114_8();
      v133 = type metadata accessor for SearchResultItem;
      goto LABEL_54;
    case 28:
      OUTLINED_FUNCTION_114_8();
      v133 = type metadata accessor for Answer;
LABEL_54:
      _s10OmniSearch0B6ResultVWOhTm_5(v127, v133);
      goto LABEL_57;
    case 29:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for OnScreen();
      goto LABEL_56;
    case 30:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_56;
    default:
      OUTLINED_FUNCTION_114_8();
      v151 = type metadata accessor for EmailDocument();
LABEL_56:
      OUTLINED_FUNCTION_17(v151);
      (*(v239 + 8))(v127);
LABEL_57:
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v116, v131, v240);
      v241 = OUTLINED_FUNCTION_126_9();
      v242 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_91_0(v242))
      {
        OUTLINED_FUNCTION_90_1();
        v284 = OUTLINED_FUNCTION_52_14();
        *v127 = 136315395;
        v243 = OUTLINED_FUNCTION_153_6();
        OUTLINED_FUNCTION_23_19(v243);
        OUTLINED_FUNCTION_5_30();
        _s10OmniSearch0B6ResultVWOcTm_7(v131, v260, v244);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v245, v246);
        v247 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v127 + 14) = v247;
        OUTLINED_FUNCTION_67_13(&dword_25D85C000, v248, v249, "%s Returning event as-is. Unimplemented sub event type: %{sensitive}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_64_10();
      }

      else
      {

        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v131, v250);
      }

      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v116, v251, v252);
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v125, v253);
      break;
  }

  OUTLINED_FUNCTION_148();
}