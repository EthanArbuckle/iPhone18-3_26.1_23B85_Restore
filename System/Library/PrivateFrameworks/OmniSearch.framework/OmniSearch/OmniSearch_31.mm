uint64_t static SPQUParse.containsTypeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 158;
  switch(v1)
  {
    case 1:
      result = 159;
      break;
    case 2:
      result = 160;
      break;
    case 3:
      result = 161;
      break;
    case 4:
      v3 = 0xD00000000000002ALL;
      v4 = 0x800000025DBF7D30;
      goto LABEL_38;
    case 5:
      result = 162;
      break;
    case 6:
      result = 163;
      break;
    case 7:
      result = 164;
      break;
    case 8:
      result = 165;
      break;
    case 9:
      result = 166;
      break;
    case 10:
      result = 167;
      break;
    case 11:
      result = 168;
      break;
    case 12:
      result = 169;
      break;
    case 13:
      result = 170;
      break;
    case 14:
      result = 172;
      break;
    case 15:
      result = 173;
      break;
    case 16:
      result = 181;
      break;
    case 17:
      result = 178;
      break;
    case 18:
      result = 182;
      break;
    case 19:
      result = 179;
      break;
    case 20:
      result = 183;
      break;
    case 21:
      result = 180;
      break;
    case 22:
      result = 80;
      break;
    case 23:
      result = 74;
      break;
    case 24:
      result = 14;
      break;
    case 25:
      result = 15;
      break;
    case 26:
      result = 16;
      break;
    case 27:
      result = 81;
      break;
    case 28:
      result = 17;
      break;
    case 29:
      OUTLINED_FUNCTION_98_2();
      v3 = 0xD000000000000022;
LABEL_38:
      v5 = MEMORY[0x25F89F4C0](v3, v4);
      EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

      result = EnumValueFromIntentArgString;
      break;
    case 30:
      result = 90;
      break;
    case 31:
      result = 82;
      break;
    case 32:
      result = 83;
      break;
    case 33:
      result = 171;
      break;
    case 34:
      result = 174;
      break;
    case 35:
      result = 175;
      break;
    case 36:
      result = 176;
      break;
    case 37:
      result = 177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static SPQUParse.temporalReferenceToQUPPArg(_:)(char *a1)
{
  v1 = *a1;
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return qword_25DBE3CC0[v1];
  }
}

uint64_t static SPQUParse.orderByTimeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 130;
  if (v1)
  {
    v2 = 131;
  }

  if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t static SPQUParse.appEntityStatusToQUPPArg(_:)(char *a1)
{
  v1 = *a1;
  if (v1 == 24)
  {
    return 0;
  }

  else
  {
    return qword_25DBE3CD8[v1];
  }
}

uint64_t static SPQUParse.sortOrderToQUPPArg(_:)(char *a1)
{
  v1 = *a1;
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return qword_25DBE3D98[v1];
  }
}

id @nonobjc SPQUParseTokenArgument.init(label:token:tokenRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x25F89F4C0]();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = MEMORY[0x25F89F4C0](a3, a4);

LABEL_6:
  v11 = [v5 initWithLabel:v9 token:v10 tokenRange:a5];

  return v11;
}

uint64_t _s10OmniSearch19LocationQueryEntityVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t type metadata accessor for SPQUParseTokenArgument()
{
  result = lazy cache variable for type metadata for SPQUParseTokenArgument;
  if (!lazy cache variable for type metadata for SPQUParseTokenArgument)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SPQUParseTokenArgument);
  }

  return result;
}

uint64_t _s10OmniSearch19LocationQueryEntityVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_32_29()
{

  return outlined consume of Person?(v0);
}

__n128 OUTLINED_FUNCTION_34_28(__n128 *a1)
{
  result = v1[8];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_22@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

void OUTLINED_FUNCTION_37_18(uint64_t a1, uint64_t a2)
{

  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(a1, a2, 1);
}

void OUTLINED_FUNCTION_38_24(uint64_t a1)
{
  v4 = *(v1 + 128);

  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(a1, v2, 0);
}

void OUTLINED_FUNCTION_39_22(uint64_t a1, uint64_t a2)
{

  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(a1, a2, 1);
}

void OUTLINED_FUNCTION_52_20(uint64_t a1, uint64_t a2)
{

  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(a1, a2, 1);
}

uint64_t OUTLINED_FUNCTION_53_17()
{

  return outlined consume of Person?(0);
}

uint64_t OUTLINED_FUNCTION_54_23@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t UCGCandidateContact.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UCGCandidateContact.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

OmniSearch::UCGCandidateContact __swiftcall UCGCandidateContact.init(id:displayName:)(Swift::String id, Swift::String displayName)
{
  *v2 = id;
  v2[1] = displayName;
  result.displayName = displayName;
  result.id = id;
  return result;
}

uint64_t *ContactStoreHelper.__allocating_init(contactStore:)(uint64_t *a1)
{
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_35();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t *ContactStoreHelper.init(contactStore:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_35();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t ContactStoreHelper.extractLabel(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  v13 = OUTLINED_FUNCTION_14(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v26 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd, &_sSs_SstMR);
  Regex.init(_regexString:version:)();
  Regex.firstMatch(in:)();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of IntentApplication?(v3, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logging.search);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_172();
      *v23 = 0;
      _os_log_impl(&dword_25D85C000, v21, v22, "ContactStoreHelper Failed to extract label with regex", v23, 2u);
      MEMORY[0x25F8A1050](v23, -1, -1);
    }

    (*(v15 + 8))(v19, v12);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v11, v3, v4);
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v24 = MEMORY[0x25F89F5B0](v26[1], v26[2], v26[3], v26[4]);

    (*(v7 + 8))(v11, v4);
    (*(v15 + 8))(v19, v12);
  }

  return v24;
}

uint64_t ContactStoreHelper.candidateToSearchResult(candidate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v256 = a2;
  v237 = *v2;
  v4 = type metadata accessor for SpotlightRankingItem();
  v5 = OUTLINED_FUNCTION_14(v4);
  v239 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v238 = v9;
  v10 = OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for SearchResult(v10);
  v12 = OUTLINED_FUNCTION_17(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_3();
  v248 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_39_0();
  v246 = v18;
  MEMORY[0x28223BE20](v19);
  v247 = &v230 - v20;
  v21 = OUTLINED_FUNCTION_78_0();
  v244 = type metadata accessor for SearchResultItem(v21);
  v22 = OUTLINED_FUNCTION_17(v244);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_3();
  v254 = v25;
  OUTLINED_FUNCTION_78_0();
  v242 = type metadata accessor for DateComponents();
  v26 = OUTLINED_FUNCTION_14(v242);
  v241 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  v257 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  OUTLINED_FUNCTION_39_0();
  v260 = v33;
  MEMORY[0x28223BE20](v34);
  v250 = &v230 - v35;
  OUTLINED_FUNCTION_78_0();
  v253 = type metadata accessor for Contact();
  v36 = OUTLINED_FUNCTION_14(v253);
  v245 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_3();
  v252 = v40;
  v41 = a1[1];
  v255 = *a1;
  v42 = a1[3];
  v243 = a1[2];
  v251 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_25DBDEBD0;
  v44 = *MEMORY[0x277CBD098];
  v45 = *MEMORY[0x277CBCFC0];
  *(v43 + 32) = *MEMORY[0x277CBD098];
  *(v43 + 40) = v45;
  v46 = *MEMORY[0x277CBD0C8];
  v47 = *MEMORY[0x277CBCFB0];
  *(v43 + 48) = *MEMORY[0x277CBD0C8];
  *(v43 + 56) = v47;
  v48 = *MEMORY[0x277CBCF90];
  *(v43 + 64) = *MEMORY[0x277CBCF90];
  if (!v41)
  {
    v66 = v44;
    v67 = v45;
    v68 = v46;
    v69 = v47;
    v70 = v48;

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logging.search);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v73))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v74, v75, "ContactStoreHelper returning nil for nil candidate");
      OUTLINED_FUNCTION_2_8();
    }

    OUTLINED_FUNCTION_92();
    v65 = v11;
    goto LABEL_11;
  }

  v235 = v4;
  v249 = v11;
  v49 = v2[6];
  v259 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v259);
  v258 = *(v49 + 8);
  swift_bridgeObjectRetain_n();
  v50 = v44;
  v51 = v45;
  v52 = v46;
  v53 = v47;
  v54 = v48;
  v77 = v258(v255, v41, v43, v259, v49);
  v234 = v41;

  v78 = [v77 phoneNumbers];
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = specialized Array.count.getter(v79);
  v81 = MEMORY[0x277D84F90];
  v240 = v77;
  v231 = 0;
  if (v80)
  {
    v82 = v80;
    OUTLINED_FUNCTION_4_48(v80);
    if ((v82 & 0x8000000000000000) == 0)
    {
      v83 = 0;
      v84 = v263;
      v258 = (v79 & 0xFFFFFFFFFFFFFF8);
      v259 = v79 & 0xC000000000000001;
      while (1)
      {
        v85 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v259)
        {
          v86 = MEMORY[0x25F89FFD0](v83, v79);
        }

        else
        {
          OUTLINED_FUNCTION_16_34();
          if (v83 >= v87)
          {
            goto LABEL_113;
          }

          v86 = *(v79 + 8 * v83 + 32);
        }

        v88 = v86;
        v89 = [v86 label];
        if (v89)
        {
          v90 = v89;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v91 = ContactStoreHelper.extractLabel(from:)();
        v93 = v92;

        if (v93)
        {
          v261 = v91;
          v262 = v93;
          OUTLINED_FUNCTION_8_42();
          v94 = [v88 value];
          v95 = [v94 stringValue];

          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;

          MEMORY[0x25F89F6C0](v96, v98);

          v78 = v261;
          v99 = v262;
        }

        else
        {
          v100 = [v88 value];
          v101 = [v100 stringValue];

          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v99 = v102;
        }

        v263 = v84;
        v104 = *(v84 + 16);
        v103 = *(v84 + 24);
        if (v104 >= v103 >> 1)
        {
          v107 = OUTLINED_FUNCTION_9_41(v103);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v107, v104 + 1, 1);
          v84 = v263;
        }

        *(v84 + 16) = v104 + 1;
        v105 = v84 + 16 * v104;
        *(v105 + 32) = v78;
        *(v105 + 40) = v99;
        ++v83;
        v106 = v260;
        if (v85 == v82)
        {
          v233 = v84;

          v77 = v240;
          v81 = MEMORY[0x277D84F90];
          goto LABEL_32;
        }
      }

LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      OUTLINED_FUNCTION_35_0();
      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logging.search);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      v58 = OUTLINED_FUNCTION_105_6(v57);
      v59 = v249;
      if (v58)
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_84_5(&dword_25D85C000, v60, v61, "ContactStoreHelper returning nil for as we did not receive a contact result from CNContactStore");
        OUTLINED_FUNCTION_2_8();
      }

      OUTLINED_FUNCTION_92();
      v65 = v59;
LABEL_11:

      return __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    }

    __break(1u);
    goto LABEL_117;
  }

  v233 = MEMORY[0x277D84F90];
  v106 = v260;
LABEL_32:
  v108 = [v77 emailAddresses];
  v109 = OUTLINED_FUNCTION_13_30();

  v110 = specialized Array.count.getter(v109);
  v46 = v257;
  if (v110)
  {
    v111 = v110;
    OUTLINED_FUNCTION_4_48(v110);
    if (v111 < 0)
    {
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      result = (*(v77 + 1))(v46, v78);
      __break(1u);
      return result;
    }

    v112 = 0;
    v113 = v263;
    v258 = (v109 & 0xFFFFFFFFFFFFFF8);
    v259 = v109 & 0xC000000000000001;
    do
    {
      v114 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        goto LABEL_111;
      }

      if (v259)
      {
        v115 = MEMORY[0x25F89FFD0](v112, v109);
      }

      else
      {
        OUTLINED_FUNCTION_16_34();
        if (v112 >= v116)
        {
          goto LABEL_114;
        }

        v115 = *(v109 + 8 * v112 + 32);
      }

      v117 = v115;
      v118 = [v115 label];
      if (v118)
      {
        v119 = v118;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v120 = ContactStoreHelper.extractLabel(from:)();
      v122 = v121;

      if (v122)
      {
        v261 = v120;
        v262 = v122;
        OUTLINED_FUNCTION_8_42();
        v123 = [v117 value];
        v124 = [v123 description];
        v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v127 = v126;

        MEMORY[0x25F89F6C0](v125, v127);

        v78 = v261;
        v128 = v262;
      }

      else
      {
        v129 = [v117 value];
        v130 = [v129 description];
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v128 = v131;
      }

      v263 = v113;
      v133 = *(v113 + 16);
      v132 = *(v113 + 24);
      if (v133 >= v132 >> 1)
      {
        v135 = OUTLINED_FUNCTION_9_41(v132);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v135, v133 + 1, 1);
        v113 = v263;
      }

      *(v113 + 16) = v133 + 1;
      v134 = v113 + 16 * v133;
      *(v134 + 32) = v78;
      *(v134 + 40) = v128;
      ++v112;
    }

    while (v114 != v111);
    v232 = v113;

    v77 = v240;
    v46 = v257;
    v106 = v260;
    v81 = MEMORY[0x277D84F90];
  }

  else
  {

    v232 = MEMORY[0x277D84F90];
  }

  v136 = [v77 postalAddresses];
  v137 = OUTLINED_FUNCTION_13_30();

  v138 = specialized Array.count.getter(v137);
  if (v138)
  {
    v78 = v138;
    OUTLINED_FUNCTION_4_48(v138);
    if (v78 < 0)
    {
      goto LABEL_118;
    }

    v139 = 0;
    v81 = v263;
    v258 = (v137 & 0xFFFFFFFFFFFFFF8);
    v259 = v137 & 0xC000000000000001;
    v140 = v78;
    do
    {
      v141 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        goto LABEL_112;
      }

      if (v259)
      {
        v142 = MEMORY[0x25F89FFD0](v139, v137);
      }

      else
      {
        OUTLINED_FUNCTION_16_34();
        if (v139 >= v143)
        {
          goto LABEL_115;
        }

        v142 = *(v137 + 8 * v139 + 32);
      }

      v144 = v142;
      v145 = [v142 label];
      if (v145)
      {
        v146 = v145;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v147 = ContactStoreHelper.extractLabel(from:)();
      v149 = v148;

      if (v149)
      {
        v261 = v147;
        v262 = v149;
        OUTLINED_FUNCTION_8_42();
        if (one-time initialization token for addressFormatter != -1)
        {
          OUTLINED_FUNCTION_3_53();
          swift_once();
        }

        v150 = static ContactStoreHelper.addressFormatter;
        v151 = [v144 value];
        v152 = [v150 stringFromPostalAddress_];

        v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v155 = v154;

        MEMORY[0x25F89F6C0](v153, v155);

        v78 = v261;
        v156 = v262;
      }

      else
      {
        if (one-time initialization token for addressFormatter != -1)
        {
          OUTLINED_FUNCTION_3_53();
          swift_once();
        }

        v157 = static ContactStoreHelper.addressFormatter;
        v158 = [v144 value];
        v159 = [v157 stringFromPostalAddress_];

        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v156 = v160;
      }

      v263 = v81;
      v162 = *(v81 + 16);
      v161 = *(v81 + 24);
      if (v162 >= v161 >> 1)
      {
        v164 = OUTLINED_FUNCTION_9_41(v161);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v164, v162 + 1, 1);
        v81 = v263;
      }

      *(v81 + 16) = v162 + 1;
      v163 = v81 + 16 * v162;
      *(v163 + 32) = v78;
      *(v163 + 40) = v156;
      ++v139;
    }

    while (v141 != v140);

    v46 = v257;
    v106 = v260;
  }

  else
  {
  }

  v165 = [v240 dates];
  v166 = OUTLINED_FUNCTION_13_30();

  v167 = specialized Array.count.getter(v166);
  v168 = 0;
  v258 = (v166 & 0xFFFFFFFFFFFFFF8);
  v259 = v166 & 0xC000000000000001;
  v236 = MEMORY[0x277D84F90];
  while (v167 != v168)
  {
    if (v259)
    {
      v170 = MEMORY[0x25F89FFD0](v168, v166);
    }

    else
    {
      OUTLINED_FUNCTION_16_34();
      if (v168 >= v169)
      {
        goto LABEL_109;
      }

      v170 = *(v166 + 8 * v168 + 32);
    }

    v171 = v170;
    v172 = v168 + 1;
    if (__OFADD__(v168, 1))
    {
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v173 = [v170 label];
    if (v173)
    {
      v174 = v173;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v175 = ContactStoreHelper.extractLabel(from:)();
    v177 = v176;

    if (v177)
    {
      if (one-time initialization token for dateFormatter != -1)
      {
        swift_once();
      }

      v178 = static ContactStoreHelper.dateFormatter;
      v179 = [v171 value];
      v180 = [v178 stringFromDateComponents_];

      if (!v180)
      {

        v46 = v257;
        goto LABEL_86;
      }

      v230 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v182 = v181;

      v261 = v175;
      v262 = v177;
      OUTLINED_FUNCTION_8_42();
      MEMORY[0x25F89F6C0](v230, v182);

      v183 = v261;
      v184 = v262;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v188 = *(v236 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v236 = v189;
      }

      v185 = *(v236 + 16);
      v46 = v257;
      if (v185 >= *(v236 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v236 = v190;
      }

      v186 = v236;
      *(v236 + 16) = v185 + 1;
      v187 = v186 + 16 * v185;
      *(v187 + 32) = v183;
      *(v187 + 40) = v184;
      v168 = v172;
      v106 = v260;
    }

    else
    {

LABEL_86:
      ++v168;
      v106 = v260;
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v191 = type metadata accessor for Logger();
  __swift_project_value_buffer(v191, static Logging.search);
  v192 = Logger.logObject.getter();
  v193 = static os_log_type_t.debug.getter();
  v194 = OUTLINED_FUNCTION_105_6(v193);
  v195 = v254;
  v196 = v252;
  if (v194)
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_84_5(&dword_25D85C000, v197, v198, "ContactStoreHelper Finished fetching missing contact attributes from CNContactStore");
    OUTLINED_FUNCTION_2_8();
  }

  v199 = [v240 birthday];
  if (v199)
  {
    v200 = v199;
    v201 = v250;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v202 = 0;
    v77 = v241;
  }

  else
  {
    v202 = 1;
    v77 = v241;
    v201 = v250;
  }

  v78 = v242;
  __swift_storeEnumTagSinglePayload(v201, v202, 1, v242);
  outlined init with copy of Date?(v201, v106, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if (__swift_getEnumTagSinglePayload(v106, 1, v78) == 1)
  {
    outlined destroy of IntentApplication?(v201, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

  else
  {
    (*(v77 + 4))(v46, v106, v78);
    v203 = v231;
    closure #5 in ContactStoreHelper.candidateToSearchResult(candidate:)(&v261);
    if (v203)
    {
      goto LABEL_119;
    }

    (*(v77 + 1))(v46, v78);
    outlined destroy of IntentApplication?(v250, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

  v204 = v232;

  v205 = v233;

  v206 = v255;
  v207 = v234;
  v208 = v243;
  v209 = v251;
  Contact.init(id:name:phoneNumbers:emailAddresses:physicalAddresses:dates:birthday:)();
  v210 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.identifier.setter(v206, v207, v210);
  outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.displayName.setter(v208, v209, v210);
  outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v205, v210, &selRef_setPhoneNumbers_);
  outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v204, v210, &selRef_setEmailAddresses_);
  outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v81, v210, &selRef_setAuthorAddresses_);
  v211 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v260 = v210;
  v212 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v206, v207, 0xD00000000000001BLL, 0x800000025DBF1CD0, v260);
  v213 = MEMORY[0x25F89F4C0](0xD00000000000001BLL, 0x800000025DBF1CD0);
  [v212 setBundleID_];

  v214 = v245;
  (*(v245 + 16))(v195, v196, v253);
  swift_storeEnumTagMultiPayload();
  v215 = v247;
  OUTLINED_FUNCTION_92();
  v216 = v235;
  __swift_storeEnumTagSinglePayload(v217, v218, v219, v235);
  v220 = v248;
  v221 = v249;
  *(v248 + v249[7]) = MEMORY[0x277D84F90];
  v222 = (v220 + v221[10]);
  *v222 = 0;
  v222[1] = 0;
  outlined init with copy of SearchResultItem(v195, v220);
  v223 = v221[6];
  type metadata accessor for CSSearchableItem();
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v224 = v212;
  CodableNSSecureCoding.init(wrappedValue:)();
  v225 = v246;
  outlined init with copy of Date?(v215, v246, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  if (__swift_getEnumTagSinglePayload(v225, 1, v216) == 1)
  {
    outlined destroy of IntentApplication?(v225, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v226 = v221[5];
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_11_41();
    LOBYTE(v261) = 1;
    SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

    outlined destroy of IntentApplication?(v215, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    outlined destroy of SearchResultItem(v254);
    (*(v214 + 8))(v252, v253);
  }

  else
  {

    outlined destroy of IntentApplication?(v215, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    outlined destroy of SearchResultItem(v254);
    (*(v214 + 8))(v252, v253);
    v227 = *(v239 + 32);
    v228 = v238;
    v227(v238, v225, v216);
    v227(v220 + v221[5], v228, v216);
  }

  *(v220 + v221[8]) = 3;
  *(v220 + v221[9]) = 1;
  v229 = v256;
  outlined init with take of SearchResult(v220, v256);
  return __swift_storeEnumTagSinglePayload(v229, 0, 1, v221);
}

void closure #5 in ContactStoreHelper.candidateToSearchResult(candidate:)(uint64_t *a1@<X8>)
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v2 = static ContactStoreHelper.dateFormatter;
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

uint64_t ContactStoreHelper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.identifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  [a3 setIdentifier_];
}

void outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(uint64_t a1, void *a2, SEL *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a3];
}

void outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.displayName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  [a3 setDisplayName_];
}

uint64_t OUTLINED_FUNCTION_4_48(uint64_t a1)
{
  *(v2 - 104) = v1;

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_8_42()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_13_30()
{
  v2 = *(v0 - 320);

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t *OUTLINED_FUNCTION_19_35()
{

  return specialized ContactContentManager.init(contactStore:)(v3, v0, v1, v2);
}

uint64_t UCGSearchService.maxItemCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t UCGSearchService.init(maxItemCount:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = 3;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  type metadata accessor for FeatureFlagService();
  result = swift_allocObject();
  *(a3 + 32) = result;
  return result;
}

uint64_t UCGSearchService.init(maxItemCount:featureFlagService:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 1;
  *(a4 + 8) = 3;
  *(a4 + 16) = result;
  *(a4 + 24) = a2 & 1;
  *(a4 + 32) = a3;
  return result;
}

uint64_t UCGSearchService.shouldRunUCGSearch(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (!FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_ucgSearch))
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logging.search);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "UCGSearchService skipping UCG search as the feature flag is disabled.";
LABEL_27:
      _os_log_impl(&dword_25D85C000, v12, v13, v15, v14, 2u);
      v26 = 0;
      goto LABEL_28;
    }

LABEL_29:
    v26 = 0;
    goto LABEL_30;
  }

  v9 = *(type metadata accessor for UserQuery() + 28);
  outlined init with copy of Date?(a1 + v9, v8, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, Entity) == 1)
  {
    outlined destroy of IntentApplication?(v8, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    goto LABEL_14;
  }

  v16 = *&v8[*(Entity + 24)];
  EntityProperty.wrappedValue.getter();
  v17 = v30;
  outlined destroy of StructuredQueryEntity(v8);
  if (!v17 || (v18 = specialized Sequence<>.contains(_:)(3, v17), , !v18))
  {
LABEL_14:
    outlined init with copy of Date?(a1 + v9, v5, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    if (__swift_getEnumTagSinglePayload(v5, 1, Entity) == 1)
    {
      outlined destroy of IntentApplication?(v5, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
      goto LABEL_23;
    }

    v22 = *&v5[*(Entity + 28)];
    EntityProperty.wrappedValue.getter();
    v23 = v30;
    outlined destroy of StructuredQueryEntity(v5);
    if (!v23 || (v24 = specialized Sequence<>.contains(_:)(2, v23), , !v24))
    {
LABEL_23:
      if (one-time initialization token for search != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logging.search);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "UCGSearchService skipping UCG search as this request doesn't meet the conditions to run UCG. No contacts queries returned.";
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logging.search);
    v12 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v20))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v21 = "Running UCG search -- preferredType contains contact";
      goto LABEL_22;
    }

LABEL_31:
    v26 = 1;
    goto LABEL_30;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logging.search);
  v12 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v12, v20))
  {
    goto LABEL_31;
  }

  v14 = swift_slowAlloc();
  *v14 = 0;
  v21 = "Running UCG search -- filterType contains contact";
LABEL_22:
  _os_log_impl(&dword_25D85C000, v12, v20, v21, v14, 2u);
  v26 = 1;
LABEL_28:
  MEMORY[0x25F8A1050](v14, -1, -1);
LABEL_30:

  return v26;
}

uint64_t UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  *(v1 + 72) = v4;
  *(v1 + 80) = v0;
  *(v1 + 64) = v5;
  v6 = type metadata accessor for OSSignpostID();
  *(v1 + 88) = v6;
  OUTLINED_FUNCTION_21(v6);
  *(v1 + 96) = v7;
  v9 = *(v8 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *(v3 + 64);
  v12 = *(v3 + 72);
  *(v1 + 112) = v10;
  *(v1 + 120) = v11;
  *(v1 + 128) = v12;
  v13 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v13;
  *(v1 + 48) = *(v0 + 32);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  v1 = MEMORY[0x277D84F90];
  v0[7] = MEMORY[0x277D84F90];
  v2 = v0[10];
  v47 = *v2;
  v48 = v2[1];
  v49 = *(v2 + 4);
  if (UCGSearchService.shouldRunUCGSearch(for:)(v0[9]))
  {
    if (one-time initialization token for searchComponentSignposter != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v3, static Logging.searchComponentSignposter);
    if (one-time initialization token for searchSignposter != -1)
    {
      swift_once();
    }

    v4 = v0[14];
    __swift_project_value_buffer(v3, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v5 = OSSignposter.logHandle.getter();
    v6 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v7 = v0[14];
      v8 = OUTLINED_FUNCTION_172();
      *v8 = 0;
      v9 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_25D85C000, v5, v6, v9, "SearchTool.UCGSearch", "", v8, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[11];
    v13 = v0[12];

    v14 = *(v13 + 16);
    v15 = OUTLINED_FUNCTION_88();
    v16(v15);
    v17 = type metadata accessor for OSSignpostIntervalState();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v0[17] = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v13 + 8))(v11, v12);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static MetricsLogger.shared + 168))(v0[15], v0[16]);
    type metadata accessor for LatencyProfiler();
    swift_allocObject();
    v20 = LatencyProfiler.init(_:)(0xD000000000000028, 0x800000025DBF7DD0);
    v0[18] = v20;
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logging.search);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_172();
      *v24 = 0;
      _os_log_impl(&dword_25D85C000, v22, v23, "UCGSearchService searching UCG for any contact queries", v24, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v25 = v0[9];

    v26 = UserQuery.toContactQueries.getter();
    v0[19] = v26;
    if (v26)
    {
      v27 = v26;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
      v29 = swift_task_alloc();
      v0[20] = v29;
      v29[2] = v27;
      v29[3] = v0 + 2;
      v29[4] = v0 + 7;
      v30 = *(MEMORY[0x277D859B8] + 4);
      v31 = swift_task_alloc();
      v0[21] = v31;
      *v31 = v0;
      v31[1] = UCGSearchService.search(query:sources:allowedTypes:searchOptions:);
      v32 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200740](v31, v28, v32, 0, 0, &async function pointer to partial apply for closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:), v29, v28);
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_172();
      *v36 = 0;
      _os_log_impl(&dword_25D85C000, v34, v35, "UCGSearchService skipping UCG search, no contacts queries returned", v36, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v37 = v0[8];

    *v37 = v1;
    v37[1] = 0;
    (*(*v20 + 152))(v38, v39, v40, v41, v42);

    $defer #1 () in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)();
  }

  else
  {
    v33 = v0[8];
    *v33 = v1;
    v33[1] = 0;
  }

  v44 = v0[13];
  v43 = v0[14];

  OUTLINED_FUNCTION_127();

  return v45();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  v4 = v2[21];
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v3[22] = v0;

  if (!v0)
  {
    v7 = v3[19];
    v8 = v3[20];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[8];
  *v3 = v0[7];
  v3[1] = 0;
  v4 = *(*v2 + 152);

  v4(v5);

  $defer #1 () in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)();

  v7 = v0[13];
  v6 = v0[14];

  OUTLINED_FUNCTION_127();

  return v8();
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];

  (*(*v3 + 152))(v7);

  $defer #1 () in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)();

  v8 = v0[7];

  OUTLINED_FUNCTION_127();
  v10 = v0[22];

  return v9();
}

uint64_t $defer #1 () in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
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
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchComponentSignposter);
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "SearchTool.UCGSearch", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySay10OmniSearch0C6ResultVGs5Error_p_GMd, &_sScg8IteratorVySay10OmniSearch0C6ResultVGs5Error_p_GMR);
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  v9 = type metadata accessor for ContactQuery();
  v5[28] = v9;
  v10 = *(v9 - 8);
  v5[29] = v10;
  v5[30] = *(v10 + 64);
  v5[31] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:), 0, 0);
}

uint64_t closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 232);
    v43 = *(v0 + 240);
    v42 = **(v0 + 168);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v40 = (v3 + 16);
    v41 = *(v3 + 72);
    v39 = (v4 + 72) & ~v4;
    v38 = (v3 + 32);
    v6 = type metadata accessor for TaskPriority();
    v7 = &_sScPSgMd;
    do
    {
      v45 = v2;
      v9 = *(v0 + 256);
      v8 = *(v0 + 264);
      v10 = *(v0 + 248);
      v11 = *(v0 + 224);
      v12 = v7;
      v13 = *(v0 + 184);
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v6);
      (*v40)(v10, v5, v11);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v44 = (v14 + 16);
      *(v14 + 24) = 0;
      v16 = *v13;
      v15 = v13[1];
      v17 = *(v13 + 4);
      v7 = v12;
      *(v14 + 64) = v17;
      *(v14 + 32) = v16;
      *(v14 + 48) = v15;
      (*v38)(v14 + v39, v10, v11);
      outlined init with copy of Date?(v8, v9, v12, &_sScPSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v6);
      v19 = *(v0 + 256);
      v20 = *(v0 + 184);
      if (EnumTagSinglePayload == 1)
      {
        outlined init with copy of UCGSearchService(v20, v0 + 16);
        v21 = OUTLINED_FUNCTION_88();
        outlined destroy of IntentApplication?(v21, v22, &_sScPSgMR);
      }

      else
      {
        outlined init with copy of UCGSearchService(v20, v0 + 56);
        TaskPriority.rawValue.getter();
        (*(*(v6 - 8) + 8))(v19, v6);
      }

      if (*v44)
      {
        v23 = *(v14 + 24);
        v24 = *v44;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v25 = dispatch thunk of Actor.unownedExecutor.getter();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
      v28 = v27 | v25;
      if (v27 | v25)
      {
        v28 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v25;
        *(v0 + 120) = v27;
      }

      v29 = *(v0 + 264);
      *(v0 + 128) = 1;
      *(v0 + 136) = v28;
      *(v0 + 144) = v42;
      swift_task_create();

      v30 = OUTLINED_FUNCTION_88();
      outlined destroy of IntentApplication?(v30, v31, &_sScPSgMR);
      v5 += v41;
      v2 = v45 - 1;
    }

    while (v45 != 1);
  }

  v32 = *(v0 + 216);
  v33 = **(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  ThrowingTaskGroup.makeAsyncIterator()();
  v34 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 272) = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_4_49(v35);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822004E8]();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 272);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[24];
    v3 = *(v1 + 16);
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = v5 + v3;
    if (__OFADD__(v5, v3))
    {
      __break(1u);
    }

    else
    {
      v7 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v4;
      if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 24) >> 1, v9 < v6))
      {
        v10 = v0[24];
        if (*(v4 + 16) <= v6)
        {
          v11 = v6;
        }

        else
        {
          v11 = *(v4 + 16);
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
        v4 = v12;
        *v10 = v12;
        v9 = *(v12 + 24) >> 1;
      }

      if (*(v1 + 16))
      {
        v13 = v9 - *(v4 + 16);
        v14 = *(type metadata accessor for SearchResult(0) - 8);
        if (v13 >= v3)
        {
          v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
          v16 = *(v14 + 72);
          swift_arrayInitWithCopy();

          if (!v3)
          {
            goto LABEL_18;
          }

          v17 = *(v4 + 16);
          v18 = __OFADD__(v17, v3);
          v19 = v17 + v3;
          if (!v18)
          {
            *(v4 + 16) = v19;
            goto LABEL_18;
          }

LABEL_24:
          __break(1u);
          return MEMORY[0x2822004E8]();
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (!v3)
      {
LABEL_18:
        *v0[24] = v4;
        v26 = *(MEMORY[0x277D85828] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_53();
        v0[34] = v27;
        *v27 = v28;
        OUTLINED_FUNCTION_4_49();
        OUTLINED_FUNCTION_69();

        return MEMORY[0x2822004E8]();
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v20 = v0[32];
  v21 = v0[33];
  v22 = OUTLINED_FUNCTION_16_35();
  v23(v22);

  OUTLINED_FUNCTION_127();

  return v24();
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[32];
  v2 = v0[33];
  v3 = OUTLINED_FUNCTION_16_35();
  v4(v3);
  v5 = v0[20];

  OUTLINED_FUNCTION_127();

  return v6();
}

uint64_t closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:), 0, 0);
}

uint64_t closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_17(v6);
  (*(v7 + 16))(v2, v1, v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:);
  v9 = *(v0 + 80);

  return UCGSearchService.contactResults(contactQuery:)();
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  v6 = v4[11];
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  v5[12] = v0;

  if (v0)
  {
    outlined destroy of IntentApplication?(v5[10], &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  }

  else
  {
    v9 = v5[10];
    v5[13] = v3;
    outlined destroy of IntentApplication?(v9, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 80);
  **(v0 + 56) = *(v0 + 104);

  OUTLINED_FUNCTION_127();

  return v2();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_127();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t UCGSearchService.contactResults(contactQuery:)()
{
  OUTLINED_FUNCTION_48();
  v0[9] = v1;
  v2 = type metadata accessor for Contact();
  v0[10] = v2;
  OUTLINED_FUNCTION_21(v2);
  v0[11] = v3;
  v5 = *(v4 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  v0[14] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v0[15] = v9;
  OUTLINED_FUNCTION_21(v9);
  v0[16] = v10;
  v12 = *(v11 + 64);
  v0[17] = OUTLINED_FUNCTION_199();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference5MatchVyAA7ContactVAA0D8ResolverC9SignalSetVGMd, &_s13SiriInference5MatchVyAA7ContactVAA0D8ResolverC9SignalSetVGMR);
  v0[18] = v13;
  OUTLINED_FUNCTION_21(v13);
  v0[19] = v14;
  v16 = *(v15 + 64);
  v0[20] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for ContactSearcher.Query();
  v0[21] = v17;
  OUTLINED_FUNCTION_21(v17);
  v0[22] = v18;
  v20 = *(v19 + 64);
  v0[23] = OUTLINED_FUNCTION_199();
  v21 = type metadata accessor for ContactSearcher();
  v0[24] = v21;
  OUTLINED_FUNCTION_21(v21);
  v0[25] = v22;
  v24 = *(v23 + 64);
  v0[26] = OUTLINED_FUNCTION_199();
  v25 = type metadata accessor for RecommenderType();
  v0[27] = v25;
  OUTLINED_FUNCTION_21(v25);
  v0[28] = v26;
  v28 = *(v27 + 64);
  v0[29] = OUTLINED_FUNCTION_199();
  v29 = type metadata accessor for SearchSuggestedContacts();
  v0[30] = v29;
  OUTLINED_FUNCTION_21(v29);
  v0[31] = v30;
  v32 = *(v31 + 64);
  v0[32] = OUTLINED_FUNCTION_199();
  v33 = type metadata accessor for ContactResolverDomain();
  OUTLINED_FUNCTION_114(v33);
  v35 = *(v34 + 64);
  v0[33] = OUTLINED_FUNCTION_199();
  v36 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_114(v36);
  v38 = *(v37 + 64);
  v0[34] = OUTLINED_FUNCTION_199();
  v39 = type metadata accessor for ContactResolverConfig();
  v0[35] = v39;
  OUTLINED_FUNCTION_21(v39);
  v0[36] = v40;
  v42 = *(v41 + 64) + 15;
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  OUTLINED_FUNCTION_114(v43);
  v45 = *(v44 + 64);
  v0[39] = OUTLINED_FUNCTION_199();
  v46 = type metadata accessor for ContactQuery();
  v0[40] = v46;
  OUTLINED_FUNCTION_21(v46);
  v0[41] = v47;
  v49 = *(v48 + 64) + 15;
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v50, v51, v52);
}

{
  v1 = v0[39];
  v2 = v0[40];
  outlined init with copy of Date?(v0[9], v1, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(v0[39], &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logging.search);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v5))
    {
      v6 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v6);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v13 = v0[42];
    v12 = v0[43];
    v15 = v0[38];
    v14 = v0[39];
    v16 = v0[37];
    v18 = v0[33];
    v17 = v0[34];
    v19 = v0[32];
    v20 = v0[29];
    v21 = v0[26];
    v55 = v0[23];
    v56 = v0[20];
    v57 = v0[17];
    v59 = v0[14];
    v61 = v0[13];
    v63 = v0[12];

    v22 = v0[1];
    OUTLINED_FUNCTION_191();

    __asm { BRAA            X2, X16 }
  }

  v26 = v0[36];
  v25 = v0[37];
  v27 = v0[34];
  v62 = v25;
  v64 = v0[35];
  v29 = v0[32];
  v28 = v0[33];
  v31 = v0[30];
  v30 = v0[31];
  v32 = v0[28];
  v33 = v0[29];
  v34 = v0[27];
  v58 = v0[38];
  v60 = v0[26];
  (*(v0[41] + 32))(v0[43], v0[39], v0[40]);
  static Locale.current.getter();
  static ContactResolverDomain.all.getter();
  (*(v30 + 104))(v29, *MEMORY[0x277D56148], v31);
  (*(v32 + 104))(v33, *MEMORY[0x277D560D0], v34);
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:)();
  (*(v26 + 16))(v62, v58, v64);
  ContactSearcher.init(config:)();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v35 = type metadata accessor for Logger();
  v0[44] = __swift_project_value_buffer(v35, static Logging.search);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v37))
  {
    v38 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v38);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  v45 = v0[42];
  v44 = v0[43];
  v46 = v0[40];
  v47 = v0[41];
  v48 = v0[23];

  (*(v47 + 16))(v45, v44, v46);
  ContactSearcher.Query.init(contactQuery:speechPackage:)();
  v49 = *(MEMORY[0x277D560A0] + 4);
  v50 = swift_task_alloc();
  v0[45] = v50;
  *v50 = v0;
  v50[1] = UCGSearchService.contactResults(contactQuery:);
  v51 = v0[26];
  v52 = v0[23];
  OUTLINED_FUNCTION_191();

  return MEMORY[0x2821B89B8]();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2[45];
  v4 = v2[23];
  v5 = v2[22];
  v6 = v2[21];
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v10 + 368) = v9;
  *(v10 + 376) = v0;

  (*(v5 + 8))(v4, v6);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v135 = v0;
  v1 = *(v0[46] + 16);
  v2 = v0[44];
  if (!v1)
  {
    v60 = v0[46];

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v62))
    {
      v63 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v63);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v129 = v0[43];
    v70 = v0[40];
    v69 = v0[41];
    v71 = v0[38];
    v72 = v0[35];
    v73 = v0[36];
    v75 = v0[25];
    v74 = v0[26];
    v76 = v0[24];

    (*(v75 + 8))(v74, v76);
    (*(v73 + 8))(v71, v72);
    (*(v69 + 8))(v129, v70);
    goto LABEL_22;
  }

  v3 = v0[46];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[46];
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v131 = v9;
    *v8 = 136315138;
    MEMORY[0x25F89F8A0](v6, v7);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v8 + 4) = v10;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_2_8();
  }

  v16 = v0[46];
  v17 = v0[19];
  v106 = v0[16];
  v18 = v0[11];
  v19 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for ContactStoreHelper();
  inited = swift_initStackObject();
  v21 = type metadata accessor for CNContactStore();
  inited[2] = v19;
  v105 = inited + 2;
  inited[5] = v21;
  inited[6] = &protocol witness table for CNContactStore;
  v23 = *(v17 + 16);
  v22 = v17 + 16;
  v24 = v16 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
  v109 = *(v22 + 56);
  v110 = v23;
  v108 = (v18 + 8);
  v25 = MEMORY[0x277D84F90];
  v107 = v0;
  do
  {
    v124 = v1;
    v127 = v25;
    v26 = v0[20];
    v27 = v0[18];
    v115 = v0[14];
    v118 = v0[15];
    v28 = v0[12];
    v29 = v0[13];
    v30 = v0[10];
    v121 = v24;
    v110(v26);
    Match.value.getter();
    v31 = Contact.id.getter();
    v33 = v32;
    v34 = *v108;
    (*v108)(v29, v30);
    Match.value.getter();
    v35 = Contact.displayName.getter();
    v37 = v36;
    v34(v28, v30);
    v131 = v31;
    v132 = v33;
    v133 = v35;
    v134 = v37;
    ContactStoreHelper.candidateToSearchResult(candidate:)(&v131, v115);
    outlined consume of UCGCandidateContact?(v131, v132);
    (*(v22 - 8))(v26, v27);
    if (__swift_getEnumTagSinglePayload(v115, 1, v118) == 1)
    {
      v0 = v107;
      outlined destroy of IntentApplication?(v107[14], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      v38 = v124;
      v25 = v127;
    }

    else
    {
      v0 = v107;
      outlined init with take of SearchResult(v107[14], v107[17]);
      v25 = v127;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v127 + 16) + 1, 1, v127);
        v25 = v42;
      }

      v38 = v124;
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v25);
        v25 = v43;
      }

      v41 = v107[17];
      *(v25 + 16) = v40 + 1;
      outlined init with take of SearchResult(v41, v25 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v40);
    }

    v24 = v121 + v109;
    v1 = v38 - 1;
  }

  while (v1);
  v44 = v0[46];

  v45 = v0[44];
  if (!*(v25 + 16))
  {

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v78))
    {
      v79 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v79);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v80, v81, v82, v83, v84, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v130 = v0[43];
    v85 = v0[40];
    v86 = v0[41];
    v87 = v0[38];
    v88 = v0[35];
    v89 = v0[36];
    v91 = v0[25];
    v90 = v0[26];
    v92 = v0[24];

    (*(v91 + 8))(v90, v92);
    (*(v89 + 8))(v87, v88);
    (*(v86 + 8))(v130, v85);
LABEL_22:
    v128 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[43];
  v50 = v0[40];
  v51 = v0[41];
  v52 = v0[36];
  v122 = v0[35];
  v125 = v0[38];
  v53 = v0[25];
  v54 = v0[24];
  v116 = v54;
  v119 = v0[26];
  v128 = v25;
  if (v48)
  {
    v55 = v0[15];
    v112 = v0[40];
    v56 = swift_slowAlloc();
    v111 = v49;
    v57 = swift_slowAlloc();
    v131 = v57;
    *v56 = 136315138;
    v58 = OUTLINED_FUNCTION_88();
    MEMORY[0x25F89F8A0](v58);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v56 + 4) = v59;
    _os_log_impl(&dword_25D85C000, v46, v47, "UCGSearchService results: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm(v105);

    (*(v53 + 8))(v119, v116);
    (*(v52 + 8))(v125, v122);
    (*(v51 + 8))(v111, v112);
  }

  else
  {

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    (*(v53 + 8))(v119, v116);
    (*(v52 + 8))(v125, v122);
    (*(v51 + 8))(v49, v50);
  }

LABEL_24:
  v94 = v0[42];
  v93 = v0[43];
  v96 = v0[38];
  v95 = v0[39];
  v97 = v0[37];
  v99 = v0[33];
  v98 = v0[34];
  v100 = v0[32];
  v101 = v0[29];
  v102 = v0[26];
  v113 = v0[23];
  v114 = v0[20];
  v117 = v0[17];
  v120 = v0[14];
  v123 = v0[13];
  v126 = v0[12];

  v103 = v0[1];

  return v103(v128);
}

void UCGSearchService.contactResults(contactQuery:)()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[36];
  v8 = v0[35];
  v15 = v0[37];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[29];
  v20 = v0[23];
  v21 = v0[20];
  v22 = v0[17];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[12];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_88();
  v11(v10);

  OUTLINED_FUNCTION_127();
  v12 = v0[47];
  OUTLINED_FUNCTION_191();

  __asm { BRAA            X1, X16 }
}

uint64_t protocol witness for SearchService.search(query:sources:allowedTypes:searchOptions:) in conformance UCGSearchService()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return UCGSearchService.search(query:sources:allowedTypes:searchOptions:)();
}

uint64_t partial apply for closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(v5, v3, v6, v7, v8);
}

unint64_t type metadata accessor for CNContactStore()
{
  result = lazy cache variable for type metadata for CNContactStore;
  if (!lazy cache variable for type metadata for CNContactStore)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContactStore);
  }

  return result;
}

uint64_t outlined consume of UCGCandidateContact?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UCGSearchService(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for UCGSearchService(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_114(v4);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #1 in closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:)(v3, v7, v8, v0 + 32, v0 + v6);
}

uint64_t outlined destroy of StructuredQueryEntity(uint64_t a1)
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  (*(*(Entity - 8) + 8))(a1, Entity);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_49(uint64_t result)
{
  *(result + 8) = closure #1 in UCGSearchService.search(query:sources:allowedTypes:searchOptions:);
  v2 = *(v1 + 216);
  v3 = *(v1 + 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_35()
{
  v1 = v0[31];
  v2 = v0[25];
  v3 = *(v0[26] + 8);
  return v0[27];
}

uint64_t SearchRouter.structuredQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchRouter() + 24);

  return outlined init with copy of StructuredQueryEntity?(v3, a1);
}

uint64_t type metadata accessor for SearchRouter()
{
  result = type metadata singleton initialization cache for SearchRouter;
  if (!type metadata singleton initialization cache for SearchRouter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchRouter.isPersonal.getter()
{
  Entity = type metadata accessor for PersonQueryEntity(0);
  v2 = *(Entity - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](Entity);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v100 - v8;
  v104 = 0;
  v10 = type metadata accessor for StructuredQueryEntity(0);
  v11 = OUTLINED_FUNCTION_17(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v103 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0[1];
  if (v15 != 2 && (*v0 & 1) == 0)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logging.search);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      v17 = v15 ^ 1;
      *(v46 + 4) = v17 & 1;
      _os_log_impl(&dword_25D85C000, v44, v45, "SearchRouter - Using PSC signal, isPersonal: %{BOOL}d", v46, 8u);
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      v17 = v15 ^ 1;
    }

    return v17 & 1;
  }

  v16 = type metadata accessor for SearchRouter();
  outlined init with copy of StructuredQueryEntity?(&v0[*(v16 + 24)], v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v9);
    goto LABEL_5;
  }

  v18 = v103;
  _s10OmniSearch21StructuredQueryEntityVWObTm_0(v9, v103, type metadata accessor for StructuredQueryEntity);
  v101 = v10;
  v19 = *(v18 + *(v10 + 64));
  EntityProperty.wrappedValue.getter();
  v20 = 0;
  if (v109)
  {
    v21 = v109;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);
  v23 = &one-time initialization token for typeDisplayRepresentation;
  v24 = static HydrationContext.typeDisplayRepresentation;
  v102 = v2;
  while (v20 != v22)
  {
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    outlined init with copy of PersonQueryEntity(v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20, v5);
    v25 = *&v5[Entity[5]];
    EntityProperty.wrappedValue.getter();
    v26 = v107;
    if (v107)
    {
      v27 = v108;
LABEL_16:
      v109 = v26;
      v110 = v27;
LABEL_17:
      EntityProperty.wrappedValue.getter();
      outlined consume of Person?(v26);
      v29 = v107;
      goto LABEL_18;
    }

    v28 = *&v5[Entity[6]];
    EntityProperty.wrappedValue.getter();
    v26 = v105;
    if (v105)
    {
      v27 = v106;
      goto LABEL_16;
    }

    v38 = *&v5[Entity[7]];
    EntityProperty.wrappedValue.getter();
    v26 = v109;
    if (v109)
    {
      goto LABEL_17;
    }

    v29 = 0;
LABEL_18:
    if (v23[48] != -1)
    {
      swift_once();
    }

    v30 = v24[347];
    EntityProperty.wrappedValue.getter();
    v31 = v109;
    if (v29)
    {
      if (v109)
      {
        v32 = *(v29 + 16);
        if (v32 == *(v109 + 16))
        {
          if (!v32 || v29 == v109)
          {
LABEL_43:

LABEL_44:
            OUTLINED_FUNCTION_1_67();

            if (one-time initialization token for search == -1)
            {
LABEL_45:
              v39 = type metadata accessor for Logger();
              __swift_project_value_buffer(v39, static Logging.search);
              v40 = Logger.logObject.getter();
              v41 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                *v42 = 0;
                _os_log_impl(&dword_25D85C000, v40, v41, "SearchRouter - Skipping global search, found 'my' reference", v42, 2u);
                goto LABEL_47;
              }

              goto LABEL_48;
            }

LABEL_140:
            OUTLINED_FUNCTION_35_0();
            goto LABEL_45;
          }

          v33 = Entity;
          v34 = v23;
          v35 = v22;
          v36 = 0;
          while (1)
          {
            v37 = *(v29 + v36 + 32) == *(v31 + v36 + 32) && *(v29 + v36 + 40) == *(v31 + v36 + 40);
            if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }

            v36 += 16;
            if (!--v32)
            {
              goto LABEL_43;
            }
          }

          v22 = v35;
          v23 = v34;
          Entity = v33;
          v2 = v102;
        }

        else
        {
        }

        v24 = static HydrationContext.typeDisplayRepresentation;
      }
    }

    else if (!v109)
    {
      goto LABEL_44;
    }

    ++v20;

    OUTLINED_FUNCTION_1_67();
  }

  v48 = v101;
  v49 = *(v103 + *(v101 + 24));
  EntityProperty.wrappedValue.getter();
  v50 = MEMORY[0x277D84F90];
  if (v109)
  {
    v51 = v109;
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v52 = *(v51 + 16);
  if (v52)
  {
    OUTLINED_FUNCTION_4_50();
    OUTLINED_FUNCTION_5_45();
    v55 = 32;
    v56 = v109;
    v57 = 0x6D72616C61;
    do
    {
      v58 = 0xE500000000000000;
      v59 = v57;
      switch(*(v51 + v55))
      {
        case 1:
          v58 = 0xE400000000000000;
          v59 = 1802465122;
          break;
        case 2:
          v58 = 0xE800000000000000;
          goto LABEL_78;
        case 3:
          v58 = 0xE700000000000000;
          v59 = 0x746361746E6F63;
          break;
        case 4:
          v58 = 0xEC0000006E6F6974;
          v59 = 0x61737265766E6F63;
          break;
        case 5:
          v58 = 0xED0000656C694673;
          goto LABEL_91;
        case 6:
          v58 = 0xEF7265646C6F4673;
LABEL_91:
          v59 = 0x746E656D75636F64;
          break;
        case 7:
          v58 = 0xE800000000000000;
          v59 = 0x6D726F6665657266;
          break;
        case 8:
          v58 = 0xE700000000000000;
          v59 = 0x6C616E72756F6ALL;
          break;
        case 9:
          v58 = 0xE700000000000000;
          v61 = 0x746F6E79656BLL;
          goto LABEL_102;
        case 0xA:
          v58 = 0xE400000000000000;
          v59 = 1818845549;
          break;
        case 0xB:
          v58 = 0xE600000000000000;
          v59 = 0x79726F6D656DLL;
          break;
        case 0xC:
          v58 = 0xE700000000000000;
          v61 = 0x67617373656DLL;
          goto LABEL_102;
        case 0xD:
          v58 = 0xE400000000000000;
          v59 = 1702129518;
          break;
        case 0xE:
          v58 = v53 + 1264;
          v59 = 0x646C6F4665746F6ELL;
          break;
        case 0xF:
          v58 = 0xEB00000000656C69;
          v59 = 0x46737265626D756ELL;
          break;
        case 0x10:
          v59 = 0x6C69467365676170;
          v58 = 0xE900000000000065;
          break;
        case 0x11:
          v60 = 1852794992;
          goto LABEL_84;
        case 0x12:
          v62 = 1953458288;
          goto LABEL_97;
        case 0x13:
          v59 = 0x626C416F746F6870;
          v58 = 0xEA00000000006D75;
          break;
        case 0x14:
          v58 = 0xE800000000000000;
          goto LABEL_88;
        case 0x15:
          v58 = 0xEC0000007473694CLL;
LABEL_88:
          v59 = 0x7265646E696D6572;
          break;
        case 0x16:
          v58 = 0xE300000000000000;
          v59 = 6447476;
          break;
        case 0x17:
          v59 = 0x72656D6974;
          break;
        case 0x18:
          v62 = 1701079414;
          goto LABEL_97;
        case 0x19:
          v58 = v54 + 7;
          v59 = 0x69616D6563696F76;
          break;
        case 0x1A:
          v58 = v54 + 10;
          goto LABEL_106;
        case 0x1B:
          v58 = 0xE600000000000000;
          v59 = 0x74656C6C6177;
          break;
        case 0x1C:
          v58 = 0xE700000000000000;
          v61 = 0x746973626577;
LABEL_102:
          v59 = v61 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 0x1D:
          v58 = 0xE800000000000000;
          v59 = 0x616D61726F6E6170;
          break;
        case 0x1E:
          v58 = v53 + 1786;
          v59 = 0x68736E6565726373;
          break;
        case 0x1F:
          v58 = 0xE600000000000000;
          v59 = 0x6569666C6573;
          break;
        case 0x20:
          v62 = 1836018803;
LABEL_97:
          v59 = v62 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 0x21:
          v58 = 0xEC0000006F656469;
          v59 = 0x566C616974617073;
          break;
        case 0x22:
          v58 = 0xED0000746E657645;
LABEL_78:
          v59 = 0x7261646E656C6163;
          break;
        case 0x23:
          v58 = 0xE400000000000000;
          v59 = 1802398060;
          break;
        case 0x24:
          v60 = 1769369453;
LABEL_84:
          v59 = v60 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          break;
        case 0x25:
          v58 = 0xE600000000000000;
          v59 = 0x697261666173;
          break;
        case 0x26:
          v58 = v53 + 1530;
LABEL_106:
          v59 = 0x6D654D6563696F76;
          break;
        default:
          break;
      }

      v109 = v56;
      v64 = *(v56 + 16);
      v63 = *(v56 + 24);
      if (v64 >= v63 >> 1)
      {
        v66 = OUTLINED_FUNCTION_26_3(v63);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v66, v64 + 1, 1);
        OUTLINED_FUNCTION_5_45();
        v56 = v109;
      }

      *(v56 + 16) = v64 + 1;
      v65 = v56 + 16 * v64;
      *(v65 + 32) = v59;
      *(v65 + 40) = v58;
      ++v55;
      --v52;
    }

    while (v52);
    v100 = v56;

    v48 = v101;
  }

  else
  {

    v100 = MEMORY[0x277D84F90];
  }

  v67 = *(v103 + *(v48 + 28));
  EntityProperty.wrappedValue.getter();
  if (v109)
  {
    v68 = v109;
  }

  else
  {
    v68 = v50;
  }

  v69 = *(v68 + 16);
  if (v69)
  {
    OUTLINED_FUNCTION_4_50();
    v70 = 32;
    v71 = v109;
    do
    {
      LOBYTE(v107) = *(v68 + v70);
      v72 = PreferredType.rawValue.getter();
      v74 = v73;
      v109 = v71;
      v76 = *(v71 + 16);
      v75 = *(v71 + 24);
      if (v76 >= v75 >> 1)
      {
        v78 = OUTLINED_FUNCTION_26_3(v75);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v78, v76 + 1, 1);
        v71 = v109;
      }

      *(v71 + 16) = v76 + 1;
      v77 = v71 + 16 * v76;
      *(v77 + 32) = v72;
      *(v77 + 40) = v74;
      ++v70;
      --v69;
    }

    while (v69);
  }

  v109 = v100;

  specialized Array.append<A>(contentsOf:)(v79);
  v80 = v109;
  v81 = static SearchRouter.personalTypes.getter();
  v82 = *(v80 + 16);
  v104 = v81;

  v84 = 0;
  v85 = v80 + 40;
  v101 = v80 + 40;
  v102 = MEMORY[0x277D84F90];
LABEL_121:
  v86 = (v85 + 16 * v84);
  while (v82 != v84)
  {
    if (v84 >= *(v80 + 16))
    {
      goto LABEL_139;
    }

    v87 = *(v86 - 1);
    v88 = *v86;
    v109 = v87;
    v110 = v88;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    *(&v100 - 2) = &v109;

    if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v100 - 4), v104))
    {
      v89 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v89;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 16) + 1, 1);
        v89 = v107;
      }

      v91 = *(v89 + 16);
      v90 = *(v89 + 24);
      if (v91 >= v90 >> 1)
      {
        v93 = OUTLINED_FUNCTION_26_3(v90);
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v93, v91 + 1, 1);
        v89 = v107;
      }

      ++v84;
      *(v89 + 16) = v91 + 1;
      v102 = v89;
      v92 = v89 + 16 * v91;
      *(v92 + 32) = v87;
      *(v92 + 40) = v88;
      v85 = v101;
      goto LABEL_121;
    }

    v86 += 2;
    ++v84;
  }

  swift_bridgeObjectRelease_n();
  v94 = v102;
  if (*(v102 + 16))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v95 = type metadata accessor for Logger();
    __swift_project_value_buffer(v95, static Logging.search);

    v40 = Logger.logObject.getter();
    v96 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v109 = v98;
      *v97 = 136315138;
      MEMORY[0x25F89F8A0](v94, MEMORY[0x277D837D0]);

      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v97 + 4) = v99;
      _os_log_impl(&dword_25D85C000, v40, v96, "SearchRouter - Skipping global search, found personal requested types %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      OUTLINED_FUNCTION_42_0();
LABEL_47:
      OUTLINED_FUNCTION_42_0();
LABEL_48:
    }

    else
    {
    }

    OUTLINED_FUNCTION_2_54();
    v17 = 1;
    return v17 & 1;
  }

  OUTLINED_FUNCTION_2_54();

LABEL_5:
  v17 = 0;
  return v17 & 1;
}

uint64_t static SearchRouter.personalTypes.getter()
{
  v11 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 21, 0);
  v0 = 0;
  result = v11;
  do
  {
    v2 = 0xE500000000000000;
    v3 = 0x6D72616C61;
    switch(outlined read-only object #0 of static SearchRouter.personalTypes.getter[v0 + 32])
    {
      case 1:
        v2 = 0xE400000000000000;
        v3 = 1802465122;
        break;
      case 2:
        v2 = 0xE800000000000000;
        goto LABEL_19;
      case 3:
        v2 = 0xE700000000000000;
        v3 = 0x746361746E6F63;
        break;
      case 4:
        v2 = 0xEC0000006E6F6974;
        v3 = 0x61737265766E6F63;
        break;
      case 5:
        v2 = 0xED0000656C694673;
        goto LABEL_32;
      case 6:
        v2 = 0xEF7265646C6F4673;
LABEL_32:
        v3 = 0x746E656D75636F64;
        break;
      case 7:
        v2 = 0xE800000000000000;
        v3 = 0x6D726F6665657266;
        break;
      case 8:
        v2 = 0xE700000000000000;
        v3 = 0x6C616E72756F6ALL;
        break;
      case 9:
        v2 = 0xE700000000000000;
        v5 = 0x746F6E79656BLL;
        goto LABEL_43;
      case 0xA:
        v2 = 0xE400000000000000;
        v3 = 1818845549;
        break;
      case 0xB:
        v2 = 0xE600000000000000;
        v3 = 0x79726F6D656DLL;
        break;
      case 0xC:
        v2 = 0xE700000000000000;
        v5 = 0x67617373656DLL;
        goto LABEL_43;
      case 0xD:
        v2 = 0xE400000000000000;
        v3 = 1702129518;
        break;
      case 0xE:
        v2 = 0xEA00000000007265;
        v3 = 0x646C6F4665746F6ELL;
        break;
      case 0xF:
        v2 = 0xEB00000000656C69;
        v3 = 0x46737265626D756ELL;
        break;
      case 0x10:
        v3 = 0x6C69467365676170;
        v2 = 0xE900000000000065;
        break;
      case 0x11:
        v4 = 1852794992;
        goto LABEL_25;
      case 0x12:
        v6 = 1953458288;
        goto LABEL_38;
      case 0x13:
        v3 = 0x626C416F746F6870;
        v2 = 0xEA00000000006D75;
        break;
      case 0x14:
        v2 = 0xE800000000000000;
        goto LABEL_29;
      case 0x15:
        v2 = 0xEC0000007473694CLL;
LABEL_29:
        v3 = 0x7265646E696D6572;
        break;
      case 0x16:
        v2 = 0xE300000000000000;
        v3 = 6447476;
        break;
      case 0x17:
        v3 = 0x72656D6974;
        break;
      case 0x18:
        v6 = 1701079414;
        goto LABEL_38;
      case 0x19:
        v2 = 0xE90000000000006CLL;
        v3 = 0x69616D6563696F76;
        break;
      case 0x1A:
        v2 = 0xE90000000000006FLL;
        goto LABEL_47;
      case 0x1B:
        v2 = 0xE600000000000000;
        v3 = 0x74656C6C6177;
        break;
      case 0x1C:
        v2 = 0xE700000000000000;
        v5 = 0x746973626577;
LABEL_43:
        v3 = v5 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 0x1D:
        v2 = 0xE800000000000000;
        v3 = 0x616D61726F6E6170;
        break;
      case 0x1E:
        v2 = 0xEA0000000000746FLL;
        v3 = 0x68736E6565726373;
        break;
      case 0x1F:
        v2 = 0xE600000000000000;
        v3 = 0x6569666C6573;
        break;
      case 0x20:
        v6 = 1836018803;
LABEL_38:
        v3 = v6 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 0x21:
        v2 = 0xEC0000006F656469;
        v3 = 0x566C616974617073;
        break;
      case 0x22:
        v2 = 0xED0000746E657645;
LABEL_19:
        v3 = 0x7261646E656C6163;
        break;
      case 0x23:
        v2 = 0xE400000000000000;
        v3 = 1802398060;
        break;
      case 0x24:
        v4 = 1769369453;
LABEL_25:
        v3 = v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
        break;
      case 0x25:
        v2 = 0xE600000000000000;
        v3 = 0x697261666173;
        break;
      case 0x26:
        v2 = 0xEA0000000000736FLL;
LABEL_47:
        v3 = 0x6D654D6563696F76;
        break;
      default:
        break;
    }

    v12 = result;
    v8 = *(result + 16);
    v7 = *(result + 24);
    if (v8 >= v7 >> 1)
    {
      v10 = OUTLINED_FUNCTION_26_3(v7);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v8 + 1, 1);
      result = v12;
    }

    ++v0;
    *(result + 16) = v8 + 1;
    v9 = result + 16 * v8;
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;
  }

  while (v0 != 21);
  return result;
}

uint64_t SearchRouter.init(isComposite:didPSCFire:structuredQuery:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = &a4[*(type metadata accessor for SearchRouter() + 24)];

  return outlined init with take of StructuredQueryEntity?(a3, v5);
}

uint64_t SearchRouter.init(request:)@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36[-v6];
  v8 = type metadata accessor for UserQuery();
  v9 = OUTLINED_FUNCTION_17(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v36[-v15];
  v17 = type metadata accessor for SearchToolIntentRequest(0);
  memcpy(__dst, a1 + v17[9], 0xA0uLL);
  if (_s10OmniSearch0B7ContextVSgWOg(__dst) == 1)
  {
    v18 = 0;
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    v18 = v36[7];
  }

  a2[1] = v18 & 1;
  v19 = v17[7];
  v20 = type metadata accessor for SearchRouter();
  outlined init with copy of StructuredQueryEntity?(a1 + v19, &a2[*(v20 + 24)]);
  v21 = *(a1 + v17[13]);
  if (v21 == 2)
  {
    v23 = *a1;
    v22 = a1[1];
    v25 = a1[2];
    v24 = a1[3];
    Entity = type metadata accessor for StructuredQueryEntity(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, Entity);
    *v14 = v23;
    v14[1] = v22;
    if (!v24)
    {
      goto LABEL_10;
    }

    v27 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v14[2] = v25;
      v14[3] = v24;
    }

    else
    {
LABEL_10:
      v14[2] = v23;
      v14[3] = v22;
    }

    v14[4] = 0;
    v14[5] = 0;
    outlined init with copy of StructuredQueryEntity?(v7, v14 + v8[7]);
    v28 = (v14 + v8[8]);
    *v28 = 0;
    v28[1] = 0;
    v29 = v8[9];

    UtteranceNormalizer.init(locale:)();
    outlined destroy of StructuredQueryEntity?(v7);
    _s10OmniSearch21StructuredQueryEntityVWObTm_0(v14, v16, type metadata accessor for UserQuery);
    if (*v16 == v16[2] && v16[1] == v16[3])
    {
      LOBYTE(v21) = 1;
    }

    else
    {
      LOBYTE(v21) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    outlined destroy of PersonQueryEntity(v16, type metadata accessor for UserQuery);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logging.search);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = (v21 & 1) == 0;
      OUTLINED_FUNCTION_42_0();
    }
  }

  result = outlined destroy of PersonQueryEntity(a1, type metadata accessor for SearchToolIntentRequest);
  *a2 = (v21 & 1) == 0;
  return result;
}

uint64_t outlined init with copy of PersonQueryEntity(uint64_t a1, uint64_t a2)
{
  Entity = type metadata accessor for PersonQueryEntity(0);
  (*(*(Entity - 8) + 16))(a2, a1, Entity);
  return a2;
}

uint64_t outlined init with take of StructuredQueryEntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10OmniSearch21StructuredQueryEntityVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of PersonQueryEntity(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void type metadata completion function for SearchRouter()
{
  type metadata accessor for Bool?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StructuredQueryEntity?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Bool?()
{
  if (!lazy cache variable for type metadata for Bool?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bool?);
    }
  }
}

void type metadata accessor for StructuredQueryEntity?()
{
  if (!lazy cache variable for type metadata for StructuredQueryEntity?)
  {
    type metadata accessor for StructuredQueryEntity(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StructuredQueryEntity?);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_67()
{

  return outlined destroy of PersonQueryEntity(v0, type metadata accessor for PersonQueryEntity);
}

uint64_t OUTLINED_FUNCTION_2_54()
{
  v2 = *(v0 - 152);

  return outlined destroy of PersonQueryEntity(v2, type metadata accessor for StructuredQueryEntity);
}

uint64_t OUTLINED_FUNCTION_4_50()
{
  *(v2 - 96) = v0;

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
}

uint64_t TrialManager.__allocating_init(trialClient:namespace:)(uint64_t *a1)
{
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_19_14();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_0_70(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_2_55();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

void *TrialManager.getFactorValue(factorName:)()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
    v5 = v4;
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4;
}

BOOL TrialManager.Namespace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrialManager.Namespace.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance TrialManager.Namespace@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = TrialManager.Namespace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TrialManager.Namespace@<X0>(void *a1@<X8>)
{
  result = TrialManager.Namespace.rawValue.getter();
  *a1 = 0xD00000000000001CLL;
  a1[1] = v3;
  return result;
}

uint64_t TrialManager.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t TrialManager.init(trialClient:namespace:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_19_14();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_0_70(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_2_55();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t TrialManager.loadFactorsAndExperiment()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_19_14();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v13, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = swift_slowAlloc();
    v33 = v2;
    v17 = v16;
    *v16 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v14, v15, v18, "RefreshTrialManager", "", v17, 2u);
    v19 = v17;
    v2 = v33;
    MEMORY[0x25F8A1050](v19, -1, -1);
  }

  (*(v4 + 16))(v10, v12, v2);
  v20 = type metadata accessor for OSSignpostIntervalState();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v4 + 8))(v12, v2);
  v23 = TrialManager.fetchFactorValues()();
  swift_beginAccess();
  v24 = *(v1 + 72);
  *(v1 + 72) = v23;

  TrialManager.fetchEnrolledExperiment()(v35);
  v25 = *(v1 + 96);
  v36[0] = *(v1 + 80);
  v36[1] = v25;
  v26 = *(v1 + 128);
  v36[2] = *(v1 + 112);
  v36[3] = v26;
  v27 = v35[1];
  *(v1 + 80) = v35[0];
  *(v1 + 96) = v27;
  v28 = v35[3];
  *(v1 + 112) = v35[2];
  *(v1 + 128) = v28;
  outlined destroy of TrialEnrollment?(v36);
  v29 = *(v1 + 96);
  v37[0] = *(v1 + 80);
  v37[1] = v29;
  v30 = *(v1 + 128);
  v37[2] = *(v1 + 112);
  v37[3] = v30;
  v31 = *(v1 + 72);
  outlined init with copy of TrialEnrollment?(v37, &v34);

  TrialManager.logState(enrollment:factors:)(v37, v31);

  outlined destroy of TrialEnrollment?(v37);
  $defer #1 () in TrialManager.loadFactorsAndExperiment()();
}

uint64_t closure #1 in TrialManager.init(trialClient:namespace:)()
{
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logging.search);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v1, v2, "Updating TrialManager because of a notification: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x25F8A1050](v4, -1, -1);
    MEMORY[0x25F8A1050](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    outlined init with copy of ChatMessageRecord(Strong + 32, v9);

    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v7 + 16))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TrialManager.loadFactorsAndExperiment()();
  }

  return result;
}

void TrialManager.fetchEnrolledExperiment()(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  v6 = v1[2];
  v7 = v1[3];
  v8 = (*(v5 + 24))(v2[2], v2[3], v4, v5);
  v9 = v1[7];
  v10 = v1[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v11 = (*(v10 + 32))(v6, v7, v9, v10);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 rolloutId];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v8)
  {
    v16 = [v8 experimentId];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v8 treatmentId];
    v20 = v8;
    v21 = v6;
    v22 = v15;
    v23 = v12;
    v24 = v19;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v12 = v23;
    v15 = v22;
    v6 = v21;

    v28 = v29;
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v18 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2] = v28;
  a1[3] = v18;
  a1[4] = v25;
  a1[5] = v27;
  a1[6] = v12;
  a1[7] = v15;
}

void __swiftcall TrialEnrollment.init(experimentNamespace:experimentId:treatmentId:rolloutId:)(OmniSearch::TrialEnrollment *__return_ptr retstr, Swift::String_optional experimentNamespace, Swift::String_optional experimentId, Swift::String_optional treatmentId, Swift::String_optional rolloutId)
{
  retstr->experimentNamespace = experimentNamespace;
  retstr->experimentId = experimentId;
  retstr->treatmentId = treatmentId;
  retstr->rolloutId = rolloutId;
}

uint64_t $defer #1 () in TrialManager.loadFactorsAndExperiment()()
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "RefreshTrialManager", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TrialManager.fetchFactorValues()()
{
  v2 = v0[7];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v2);
  v4 = (*(v3 + 40))(v0[2], v0[3], v2, v3);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRILevel, 0x277D73B18);
  v10 = Dictionary.init(dictionaryLiteral:)();
  v5 = specialized Array.count.getter(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v10;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F89FFD0](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v1 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = v7;
    closure #1 in TrialManager.fetchFactorValues()(&v10, &v9);
  }

  __break(1u);
LABEL_11:
  __break(1u);

  __break(1u);
  return result;
}

void TrialManager.logState(enrollment:factors:)(uint64_t *a1, uint64_t a2)
{
  _StringGuts.grow(_:)(111);
  MEMORY[0x25F89F6C0](0xD00000000000002CLL, 0x800000025DBF7EF0);
  v4 = a1[1];
  if (v4 >= 2)
  {
    v6 = *a1;
    v7 = a1[1];

    v5 = v4;
  }

  else
  {

    v5 = 0xE100000000000000;
    v6 = 45;
  }

  MEMORY[0x25F89F6C0](v6, v5);

  MEMORY[0x25F89F6C0](0xD000000000000010, 0x800000025DBF7F20);
  if (v4 == 1 || (v8 = a1[5]) == 0)
  {

    v8 = 0xE100000000000000;
    v9 = 45;
  }

  else
  {
    v9 = a1[4];
    v10 = a1[5];
  }

  MEMORY[0x25F89F6C0](v9, v8);

  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF7F40);
  if (v4 == 1 || (v11 = a1[3]) == 0)
  {

    v11 = 0xE100000000000000;
    v12 = 45;
  }

  else
  {
    v12 = a1[2];
    v13 = a1[3];
  }

  MEMORY[0x25F89F6C0](v12, v11);

  MEMORY[0x25F89F6C0](0x6F6C6C6F7220200ALL, 0xEE00203A64497475);
  if (v4 == 1 || (v14 = a1[7]) == 0)
  {

    v14 = 0xE100000000000000;
    v15 = 45;
  }

  else
  {
    v15 = a1[6];
  }

  MEMORY[0x25F89F6C0](v15, v14);

  MEMORY[0x25F89F6C0](0x6F7463616620200ALL, 0xEC0000000A3A7372);
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_24:
      v22 = __clz(__rbit64(v18)) | (v21 << 6);
      v23 = (*(a2 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(a2 + 56) + 8 * v22);
      v18 &= v18 - 1;

      v27 = v26;
      MEMORY[0x25F89F6C0](v24, v25);

      MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
      v28 = [v27 description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      MEMORY[0x25F89F6C0](v29, v31);

      MEMORY[0x25F89F6C0](10, 0xE100000000000000);
      MEMORY[0x25F89F6C0](538976288, 0xE400000000000000);

      if (!v18)
      {
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
LABEL_20:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(a2 + 64 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_24;
    }
  }

  if (one-time initialization token for search == -1)
  {
    goto LABEL_27;
  }

LABEL_34:
  swift_once();
LABEL_27:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logging.search);

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v33))
  {
    v34 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v34 = 136315138;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v34 + 4) = v35;
    _os_log_impl(&dword_25D85C000, oslog, v33, "%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x25F8A1050](v37, -1, -1);
    MEMORY[0x25F8A1050](v34, -1, -1);
  }

  else
  {
  }
}

void closure #1 in TrialManager.fetchFactorValues()(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 factor];
  if (v4)
  {
    outlined bridged method (ob) of @objc TRIFactor.name.getter(v4);
    if (v5)
    {
      v6 = [v3 level];
      if (v6)
      {
        v7 = v6;
        if ([v6 levelOneOfCase])
        {
          v8 = v7;
          v9 = *a1;
          swift_isUniquelyReferenced_nonNull_native();
          v18 = *a1;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

          *a1 = v18;
          return;
        }
      }

      else
      {
      }
    }

    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logging.search);
    v11 = v3;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v14 = 136315138;
      v15 = v11;
      v16 = [v15 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v14 + 4) = v17;
      _os_log_impl(&dword_25D85C000, v12, v13, "Skipping becaues %s has no value", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x25F8A1050](v19, -1, -1);
      MEMORY[0x25F8A1050](v14, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall TrialManager.getEnrolledExperiment()(OmniSearch::TrialEnrollment_optional *__return_ptr retstr)
{
  v3 = v1[6];
  v8 = v1[5];
  v9 = v3;
  v4 = v1[8];
  v10 = v1[7];
  v11 = v4;
  outlined init with copy of TrialEnrollment?(&v8, &v7);
  v5 = v9;
  retstr->value.experimentNamespace = v8;
  retstr->value.experimentId = v5;
  v6 = v11;
  retstr->value.treatmentId = v10;
  retstr->value.rolloutId = v6;
}

void *TrialManager.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[17];
  outlined consume of TrialEnrollment?(v0[10], v0[11]);
  v9 = v0[18];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TrialManager.__deallocating_deinit()
{
  TrialManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t TrialEnrollment.experimentNamespace.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t TrialEnrollment.experimentId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t TrialEnrollment.treatmentId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t TrialEnrollment.rolloutId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

id @nonobjc TRIClient.addUpdateHandler(forNamespaceName:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x25F89F4C0]();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed TRINamespaceUpdateProtocol) -> ();
  v11[3] = &block_descriptor_8;
  v8 = _Block_copy(v11);

  v9 = [v4 addUpdateHandlerForNamespaceName:v7 usingBlock:v8];

  _Block_release(v8);

  return v9;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed TRINamespaceUpdateProtocol) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id @nonobjc TRIClient.experimentIdentifiers(withNamespaceName:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = MEMORY[0x25F89F4C0]();
  v6 = [v3 *a3];

  return v6;
}

uint64_t @nonobjc TRIClient.factorLevels(withNamespaceName:)()
{
  v1 = MEMORY[0x25F89F4C0]();
  v2 = [v0 factorLevelsWithNamespaceName_];

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRIFactorLevel, 0x277D73B08);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc TRIFactor.name.getter(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized TrialManager.init(trialClient:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[3] = a5;
  v21[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRILevel, 0x277D73B18);
  *(a4 + 72) = Dictionary.init(dictionaryLiteral:)();
  *(a4 + 80) = xmmword_25DBC9A70;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  outlined init with copy of ChatMessageRecord(v21, a4 + 32);

  TrialManager.loadFactorsAndExperiment()();
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v15;
  v17 = *(a6 + 8);

  v18 = v17(v13, v14, partial apply for closure #1 in TrialManager.init(trialClient:namespace:), v16, a5, a6);

  v19 = *(a4 + 144);
  *(a4 + 144) = v18;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return a4;
}

uint64_t outlined init with copy of TrialEnrollment?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15TrialEnrollmentVSgMd, &_s10OmniSearch15TrialEnrollmentVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of TrialEnrollment?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrialManager.Namespace and conformance TrialManager.Namespace()
{
  result = lazy protocol witness table cache variable for type TrialManager.Namespace and conformance TrialManager.Namespace;
  if (!lazy protocol witness table cache variable for type TrialManager.Namespace and conformance TrialManager.Namespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialManager.Namespace and conformance TrialManager.Namespace);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialManager.Namespace(_BYTE *result, int a2, int a3)
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of TrialEnrollment?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15TrialEnrollmentVSgMd, &_s10OmniSearch15TrialEnrollmentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_55()
{

  return specialized TrialManager.init(trialClient:namespace:)(v5, v2, v0, v1, v3, v4);
}

uint64_t key path setter for AnswerSynthesisAllowedAppsChecker.allowedTypesConfig : AnswerSynthesisAllowedAppsChecker(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4) | (*(a1 + 10) << 16);
  v4 = *(**a2 + 96);

  return v4(v5, v3);
}

uint64_t AnswerSynthesisAllowedAppsChecker.allowedTypesConfig.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 26) << 16);
}

uint64_t AnswerSynthesisAllowedAppsChecker.allowedTypesConfig.setter(uint64_t a1, int a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 26) = BYTE2(a2);
  *(v2 + 24) = a2;
}

uint64_t AnswerSynthesisAllowedAppsChecker.__allocating_init(locale:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_36();
  v4 = swift_allocObject();
  AnswerSynthesisAllowedAppsChecker.init(locale:)(a1, a2);
  return v4;
}

uint64_t AnswerSynthesisAllowedAppsChecker.init(locale:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  OUTLINED_FUNCTION_133();
  v29 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v27 - v8;
  v9 = type metadata accessor for Locale();
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  *(v2 + 16) = 0;
  *(v2 + 26) = 0;
  *(v2 + 24) = 0;
  v19 = [objc_opt_self() processInfo];
  v20 = NSProcessInfo.isRunningUnitTests.getter();

  if (v20)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v21 = Dictionary.init(dictionaryLiteral:)();
    swift_beginAccess();
    v22 = *(v3 + 16);
    *(v3 + 16) = v21;
    *(v3 + 26) = 1;
    *(v3 + 24) = 1;
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
      static NSUserDefaults.fallbackLocale.getter();
    }

    Locale.init(identifier:)();
    v23 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v23);
    (*(v12 + 16))(v15, v18, v9);
    v24 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    *(v25 + 4) = v3;
    (*(v12 + 32))(&v25[v24], v15, v9);
    *&v25[(v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v29;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    (*(v12 + 8))(v18, v9);
  }

  return v3;
}

OmniSearch::AnswerSynthesisAllowedAppsConfig __swiftcall AnswerSynthesisAllowedAppsConfig.init(allowedTypes:allowMultiSources:disallowAllModelDialogs:voiceModes:)(OmniSearch::AnswerSynthesisAllowedAppsConfig allowedTypes, Swift::Bool allowMultiSources, Swift::Bool disallowAllModelDialogs, Swift::Bool voiceModes)
{
  if (disallowAllModelDialogs)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | allowMultiSources;
  if (voiceModes)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 | v6;
  allowedTypes.allowMultiSources = v7;
  allowedTypes.disallowAllModelDialogs = BYTE1(v7);
  allowedTypes.voiceModes = BYTE2(v7);
  return allowedTypes;
}

uint64_t closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:), 0, 0);
}

uint64_t closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = static AnswerSynthesisAllowedAppsChecker.loadDefaultConfig(locale:)();
  (*(*v3 + 96))(v4, v5 & 0xFFFFFF);
  v6 = v0[1];

  return v6();
}

uint64_t partial apply for closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Locale() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return closure #1 in AnswerSynthesisAllowedAppsChecker.init(locale:)(a1, v6, v7, v8, v1 + v5, v9);
}

unint64_t static AnswerSynthesisAllowedAppsChecker.loadDefaultConfig(locale:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  static AnswerSynthesisAllowedAppsChecker.uafDirectory(locale:)(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    URL.appendingPathComponent(_:)();
    v12 = static AnswerSynthesisAllowedAppsChecker.configFromDirectory(_:)(v8);
    v13 = *(v5 + 8);
    v13(v8, v4);
    if (v12)
    {
      if (one-time initialization token for utilities != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logging.utilities);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_25D85C000, v15, v16, "Using UAF config for Answer Synthesis allowed types", v17, 2u);
        MEMORY[0x25F8A1050](v17, -1, -1);
      }

      v13(v11, v4);
      return v12;
    }

    v13(v11, v4);
  }

  type metadata accessor for OmniSearchService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = MEMORY[0x25F89F4C0](0xD00000000000001FLL, 0x800000025DBF8000);
  outlined bridged method (mnbnb) of @objc NSBundle.path(forResource:ofType:)(v20, 0x7473696C70, 0xE500000000000000, v19);
  v22 = v21;

  if (v22)
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    URL.init(fileURLWithPath:)();

    v23 = NSDictionary.__allocating_init(contentsOf:)(v8);
    if (v23)
    {
      v24 = v23;
      v25 = AnswerSynthesisAllowedAppsConfig.init(from:)(v24);
      if (v25)
      {
        v12 = v25;
        if (one-time initialization token for utilities != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static Logging.utilities);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_25D85C000, v27, v28, "Using default config from build for Answer Synthesis allowed types", v29, 2u);
          MEMORY[0x25F8A1050](v29, -1, -1);
        }

        return v12;
      }
    }
  }

  if (one-time initialization token for utilities != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logging.utilities);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_25D85C000, v31, v32, "Unable to initialize configs for Answer Synthesis allowed types", v33, 2u);
    MEMORY[0x25F8A1050](v33, -1, -1);
  }

  return 0;
}

uint64_t AnswerSynthesisAllowedAppsChecker.__allocating_init(config:)(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_6_36();
  v4 = swift_allocObject();
  AnswerSynthesisAllowedAppsChecker.init(config:)(a1, a2 & 0xFFFFFF);
  return v4;
}

uint64_t AnswerSynthesisAllowedAppsChecker.init(config:)(uint64_t a1, int a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 26) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 26) = BYTE2(a2);
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AnswerSynthesisAllowedAppsChecker.allResultsAllowed(searchResults:options:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResult(0);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - v13;
  v15 = *(a2 + 40);
  OUTLINED_FUNCTION_133();
  v17 = (*(v16 + 88))();
  if (!v17)
  {
    if (one-time initialization token for utilities != -1)
    {
      OUTLINED_FUNCTION_0_71();
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v28, static Logging.utilities);
    v22 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_105_6(v29))
    {
      goto LABEL_20;
    }

    v30 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v30);
    v27 = "Allowed types config not initialized, rejecting.";
    goto LABEL_19;
  }

  v19 = v17;
  v20 = v18;
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_disallowAllModelDialogs) || (v20 & 0x100) != 0)
  {

    if (one-time initialization token for utilities != -1)
    {
      OUTLINED_FUNCTION_0_71();
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v31, static Logging.utilities);
    v22 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_105_6(v32))
    {
      goto LABEL_20;
    }

    v33 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v33);
    v27 = "Rejecting all model-generated dialogs per config value";
    goto LABEL_19;
  }

  if (*(v19 + 16))
  {
    if ((v20 & 1) != 0 || *(a1 + 16) < 2uLL)
    {
      if ((v20 & 0x10000) != 0 || (v15 & 0xFE) != 2)
      {
        if (one-time initialization token for utilities != -1)
        {
          OUTLINED_FUNCTION_0_71();
        }

        v44 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v44, static Logging.utilities);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        v47 = os_log_type_enabled(v45, v46);
        v77 = v7;
        if (v47)
        {
          v76 = v46;
          v48 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v81 = v74;
          v75 = v48;
          *v48 = 136315138;
          v49 = *(a1 + 16);
          v50 = MEMORY[0x277D84F90];
          if (v49)
          {
            v71 = v45;
            v72 = v4;
            v80 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v50 = v80;
            v51 = *(v77 + 80);
            v73 = a1;
            v52 = a1 + ((v51 + 32) & ~v51);
            v78 = *(v77 + 72);
            do
            {
              outlined init with copy of SearchResult(v52, v14);
              SearchResultItem.type.getter(&v79);
              outlined destroy of SearchResult(v14);
              v53 = v79;
              v80 = v50;
              v54 = *(v50 + 16);
              if (v54 >= *(v50 + 24) >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v50 = v80;
              }

              *(v50 + 16) = v54 + 1;
              *(v50 + v54 + 32) = v53;
              v52 += v78;
              --v49;
            }

            while (v49);
            v4 = v72;
            a1 = v73;
            v45 = v71;
          }

          MEMORY[0x25F89F8A0](v50, &type metadata for SearchResultKey);

          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          v56 = v75;
          *(v75 + 1) = v55;
          _os_log_impl(&dword_25D85C000, v45, v76, "Checking dialog allowlist with result types: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();

          v7 = v77;
        }

        else
        {
        }

        v57 = 0;
        v58 = *(a1 + 16);
        while (1)
        {
          if (v58 == v57)
          {

            return 1;
          }

          outlined init with copy of SearchResult(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v57, v11);
          SearchResultItem.type.getter(&v81);
          SearchResultKey.rawValue.getter();
          if (!*(v19 + 16))
          {
            break;
          }

          v59 = specialized __RawDictionaryStorage.find<A>(_:)();
          v61 = v60;

          if ((v61 & 1) == 0)
          {
            goto LABEL_59;
          }

          v62 = *(*(v19 + 56) + 8 * v59);
          if (*(v62 + 16))
          {
            v63 = *(v4 + 24);
            v64 = *(*(v19 + 56) + 8 * v59);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
            v65 = CodableNSSecureCoding.wrappedValue.getter();
            v66 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v65);
            if (v67)
            {
              v68 = v67;
            }

            else
            {
              v66 = 0;
              v68 = 0xE000000000000000;
            }

            v69 = specialized Set.contains(_:)(v66, v68, v62);

            outlined destroy of SearchResult(v11);
            v7 = v77;
            if (!v69)
            {

              return 0;
            }
          }

          else
          {
            outlined destroy of SearchResult(v11);
            v7 = v77;
          }

          ++v57;
        }

LABEL_59:

        outlined destroy of SearchResult(v11);
        return 0;
      }

      if (one-time initialization token for utilities != -1)
      {
        OUTLINED_FUNCTION_0_71();
      }

      v35 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v35, static Logging.utilities);
      v22 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_105_6(v36))
      {
LABEL_20:

        return 0;
      }

      v37 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v37);
      v27 = "Interaction mode is voice but voice mode is disabled in config, rejecting";
    }

    else
    {

      if (one-time initialization token for utilities != -1)
      {
        OUTLINED_FUNCTION_0_71();
      }

      v21 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v21, static Logging.utilities);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_105_6(v23))
      {
        goto LABEL_20;
      }

      v24 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v24);
      v27 = "Multi-source answer dialog is disabled, rejecting.";
    }

LABEL_19:
    OUTLINED_FUNCTION_84_5(&dword_25D85C000, v25, v26, v27);
    OUTLINED_FUNCTION_42_0();
    goto LABEL_20;
  }

  if (one-time initialization token for utilities != -1)
  {
    OUTLINED_FUNCTION_0_71();
  }

  v38 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v38, static Logging.utilities);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_105_6(v40))
  {
    v41 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v41);
    OUTLINED_FUNCTION_84_5(&dword_25D85C000, v42, v43, "Empty allowed types in config and not rejecting all dialogs, allowing.");
    OUTLINED_FUNCTION_42_0();
  }

  return 1;
}

uint64_t static AnswerSynthesisAllowedAppsChecker.uafDirectory(locale:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for Locale.IdentifierType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *MEMORY[0x277CC9668], v6, v9);
  Locale.identifier.getter();
  v12 = static Locale.identifier(_:from:)();
  v14 = v13;

  (*(v7 + 8))(v11, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0x75676E616C2E6772;
  *(inited + 40) = 0xEB00000000656761;
  *(inited + 48) = v12;
  *(inited + 56) = v14;

  v16 = Dictionary.init(dictionaryLiteral:)();
  v17 = [objc_opt_self() sharedManager];
  v18 = MEMORY[0x25F89F4C0](0xD00000000000001ELL, 0x800000025DBF8050);
  v19 = outlined bridged method (mnbnn) of @objc UAFAssetSetManager.retrieveAssetSet(_:usages:)(v18, v16, v17);

  if (!v19)
  {

LABEL_7:
    v26 = type metadata accessor for URL();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v26);
  }

  v29 = 0xD000000000000033;
  v30 = 0x800000025DBF8070;
  v20 = v19;
  MEMORY[0x25F89F6C0](v12, v14);

  v21 = MEMORY[0x25F89F4C0](v29, v30);

  v22 = [v20 assetNamed_];

  if (!v22)
  {

    goto LABEL_7;
  }

  v23 = [v22 location];
  if (v23)
  {
    v24 = v23;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v28 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v5, v25, 1, v28);
  return outlined init with take of URL?(v5, a1);
}

unint64_t static AnswerSynthesisAllowedAppsChecker.configFromDirectory(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  if (one-time initialization token for utilities != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Logging.utilities);
  v46 = v3[2];
  v46(v11, a1, v2);
  v44 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v16 = os_log_type_enabled(v14, v15);
  v45 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v41 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = v6;
    v20 = v19;
    v47 = v19;
    *v18 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL();
    dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v11;
    v22 = v3[1];
    v22(v21, v2);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v18 + 4) = v23;
    _os_log_impl(&dword_25D85C000, v14, v15, "Loading overrides from: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v24 = v20;
    v6 = v42;
    MEMORY[0x25F8A1050](v24, -1, -1);
    v25 = v18;
    a1 = v41;
    MEMORY[0x25F8A1050](v25, -1, -1);
  }

  else
  {

    v26 = v11;
    v22 = v3[1];
    v22(v26, v2);
  }

  v27 = [objc_opt_self() defaultManager];
  v28 = URL.path.getter();
  v29 = MEMORY[0x25F89F4C0](v28);

  v30 = [v27 fileExistsAtPath_];

  v31 = v46;
  if (!v30 || (type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0), v32 = v43, v31(v43, a1, v2), (v33 = NSDictionary.__allocating_init(contentsOf:)(v32)) == 0) || (result = AnswerSynthesisAllowedAppsConfig.init(from:)(v33)) == 0)
  {
    v31(v6, a1, v2);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v38;
      *v37 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      dispatch thunk of CustomStringConvertible.description.getter();
      v22(v6, v2);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v37 + 4) = v39;
      _os_log_impl(&dword_25D85C000, v35, v36, "Cannot load config from path %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x25F8A1050](v38, -1, -1);
      MEMORY[0x25F8A1050](v37, -1, -1);
    }

    else
    {

      v22(v6, v2);
    }

    return 0;
  }

  return result;
}

id NSDictionary.__allocating_init(contentsOf:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithContentsOfURL_];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

OmniSearch::AnswerSynthesisAllowedAppsConfig_optional __swiftcall AnswerSynthesisAllowedAppsConfig.init(from:)(NSDictionary from)
{
  isa = from.super.isa;
  *&v101 = 0x6E6F6973726576;
  *(&v101 + 1) = 0xE700000000000000;
  v2 = [(objc_class *)from.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  v3 = swift_unknownObjectRelease();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  OUTLINED_FUNCTION_7_45(v3, v4, v5, v6, v7, v8, v9, v10, v87, v90, v93, v97, v101, *(&v101 + 1), v102);
  if (!v11)
  {
    outlined destroy of (offset: Int, element: SearchResult)(&v103, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  if ((OUTLINED_FUNCTION_13_31() & 1) == 0 || v98 < 1)
  {
LABEL_10:
    if (one-time initialization token for utilities == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_83;
  }

  strcpy(&v101, "allowedTypes");
  BYTE13(v101) = 0;
  HIWORD(v101) = -5120;
  v12 = [isa __swift_objectForKeyedSubscript_];
  v13 = swift_unknownObjectRelease();
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    v13 = swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  OUTLINED_FUNCTION_7_45(v13, v14, v15, v16, v17, v18, v19, v20, v88, v91, v94, v98, v101, *(&v101 + 1), v102);
  if (!v29)
  {
    outlined destroy of (offset: Int, element: SearchResult)(&v103, &_sypSgMd, &_sypSgMR);
LABEL_32:
    if (one-time initialization token for utilities == -1)
    {
LABEL_33:
      v50 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v50, static Logging.utilities);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_88_0(v23))
      {
        goto LABEL_14;
      }

      v24 = OUTLINED_FUNCTION_172();
      *v24 = 0;
      v25 = "Unable to parse allowed types from config.";
      goto LABEL_13;
    }

LABEL_85:
    OUTLINED_FUNCTION_0_71();
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  if ((OUTLINED_FUNCTION_13_31() & 1) == 0)
  {
    goto LABEL_32;
  }

  v92 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
  v30 = static _DictionaryStorage.copy(original:)();
  v27 = v30;
  v31 = 0;
  v32 = 1 << *(v99 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  isa = v33 & *(v99 + 64);
  v34 = (v32 + 63) >> 6;
  v35 = v30 + 64;
  v95 = v30;
  if (isa)
  {
    while (1)
    {
      v36 = __clz(__rbit64(isa));
      isa &= isa - 1;
LABEL_28:
      v39 = v36 | (v31 << 6);
      v40 = (*(v99 + 48) + 16 * v39);
      v42 = *v40;
      v41 = v40[1];
      v43 = *(*(v99 + 56) + 8 * v39);

      v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v44);
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v27 = v95;
      v46 = (v95[6] + 16 * v39);
      *v46 = v42;
      v46[1] = v41;
      *(v95[7] + 8 * v39) = v45;
      v47 = v95[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        break;
      }

      v95[2] = v49;
      if (!isa)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

LABEL_23:
  v37 = v31;
  while (1)
  {
    v31 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v31 >= v34)
    {

      *&v101 = 0x6769666E6F63;
      *(&v101 + 1) = 0xE600000000000000;
      v51 = v92;
      v52 = [v92 __swift_objectForKeyedSubscript_];
      v53 = swift_unknownObjectRelease();
      if (v52)
      {
        _bridgeAnyObjectToAny(_:)();
        v53 = swift_unknownObjectRelease();
      }

      else
      {
        v101 = 0u;
        v102 = 0u;
      }

      OUTLINED_FUNCTION_7_45(v53, v54, v55, v56, v57, v58, v59, v60, v89, v92, v95, v99, v101, *(&v101 + 1), v102);
      if (v61)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        if (swift_dynamicCast())
        {
          specialized Dictionary.subscript.getter(v100, &v103);
          if (v104)
          {
            if (OUTLINED_FUNCTION_3_54())
            {
              v62 = v101;
              goto LABEL_57;
            }
          }

          else
          {
            outlined destroy of (offset: Int, element: SearchResult)(&v103, &_sypSgMd, &_sypSgMR);
          }

          OUTLINED_FUNCTION_12_37();
          if (!v63)
          {
            OUTLINED_FUNCTION_0_71();
          }

          v71 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v71, static Logging.utilities);
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_88_0(v73))
          {
            *OUTLINED_FUNCTION_172() = 0;
            OUTLINED_FUNCTION_4_14(&dword_25D85C000, v74, v75, "Unable to parse multi-source setting. Defaulting to false.");
            OUTLINED_FUNCTION_42_0();
          }

          v62 = 0;
          v27 = v96;
LABEL_57:
          specialized Dictionary.subscript.getter(v100, &v103);
          if (v104)
          {
            if (OUTLINED_FUNCTION_3_54())
            {
              v76 = v101;
              goto LABEL_66;
            }
          }

          else
          {
            outlined destroy of (offset: Int, element: SearchResult)(&v103, &_sypSgMd, &_sypSgMR);
          }

          OUTLINED_FUNCTION_12_37();
          if (!v63)
          {
            OUTLINED_FUNCTION_0_71();
          }

          v77 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v77, static Logging.utilities);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_88_0(v79))
          {
            *OUTLINED_FUNCTION_172() = 0;
            OUTLINED_FUNCTION_4_14(&dword_25D85C000, v80, v81, "Unable to parse disallowAllModelDialogs setting. Defaulting to true.");
            OUTLINED_FUNCTION_42_0();
          }

          v76 = 1;
          v27 = v96;
LABEL_66:
          specialized Dictionary.subscript.getter(v100, &v103);

          if (v104)
          {
            if (OUTLINED_FUNCTION_3_54())
            {

              if (v101)
              {
                v69 = 0x10000;
              }

              else
              {
                v69 = 0;
              }

              if ((v76 & 1) == 0)
              {
LABEL_80:
                v70 = 0;
                goto LABEL_50;
              }

LABEL_49:
              v70 = 256;
LABEL_50:
              v28 = v69 | v62 | v70;
              goto LABEL_15;
            }
          }

          else
          {
            outlined destroy of (offset: Int, element: SearchResult)(&v103, &_sypSgMd, &_sypSgMR);
          }

          OUTLINED_FUNCTION_12_37();
          if (!v63)
          {
            OUTLINED_FUNCTION_0_71();
          }

          v82 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v82, static Logging.utilities);
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_88_0(v84))
          {
            *OUTLINED_FUNCTION_172() = 0;
            OUTLINED_FUNCTION_8_11(&dword_25D85C000, v85, v86, "Unable to parse voice-mode setting. Defaulting to true.");
            OUTLINED_FUNCTION_42_0();

            v69 = 0x10000;
            if ((v76 & 1) == 0)
            {
              v70 = 0;
              v27 = v96;
              goto LABEL_50;
            }

            v27 = v96;
          }

          else
          {

            v69 = 0x10000;
            if ((v76 & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        outlined destroy of (offset: Int, element: SearchResult)(&v103, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_12_37();
      if (!v63)
      {
        OUTLINED_FUNCTION_0_71();
      }

      v64 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v64, static Logging.utilities);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_88_0(v66))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_8_11(&dword_25D85C000, v67, v68, "Unable to parse config setting, using default values.");
        v27 = v96;
        OUTLINED_FUNCTION_42_0();
      }

      v62 = 0;
      v69 = 0x10000;
      goto LABEL_49;
    }

    v38 = *(v99 + 64 + 8 * v31);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      isa = (v38 - 1) & v38;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_83:
  OUTLINED_FUNCTION_0_71();
LABEL_11:
  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v21, static Logging.utilities);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_88_0(v23))
  {
    v24 = OUTLINED_FUNCTION_172();
    *v24 = 0;
    v25 = "Asset version is below minimum required";
LABEL_13:
    _os_log_impl(&dword_25D85C000, v22, v23, v25, v24, 2u);
    OUTLINED_FUNCTION_42_0();
  }

LABEL_14:

  v27 = 0;
  v28 = 0;
LABEL_15:
  result.value.allowedTypes._rawValue = v27;
  *&result.value.allowMultiSources = v28;
  result.value.voiceModes = BYTE2(v28);
  result.is_nil = v26;
  return result;
}

uint64_t AnswerSynthesisAllowedAppsChecker.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AnswerSynthesisAllowedAppsChecker.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_6_36();

  return swift_deallocClassInstance();
}

uint64_t AnswerSynthesisAllowedAppsConfig.allowedTypes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AnswerSynthesisAllowedAppsConfig(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 11))
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

uint64_t storeEnumTagSinglePayload for AnswerSynthesisAllowedAppsConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id outlined bridged method (mnbnn) of @objc UAFAssetSetManager.retrieveAssetSet(_:usages:)(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 retrieveAssetSet:a1 usages:isa];

  return v6;
}

uint64_t outlined bridged method (mnbnb) of @objc NSBundle.path(forResource:ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x25F89F4C0](a2, a3);

  v7 = [a4 pathForResource:a1 ofType:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
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

uint64_t OUTLINED_FUNCTION_0_71()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_54()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_31()
{

  return swift_dynamicCast();
}

uint64_t Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 40) = a2;
  *(v6 + 104) = a1;
  v7 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  OUTLINED_FUNCTION_15_35();
  swift_getTupleTypeMetadata2();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
  *(v0 + 88) = type metadata accessor for Array();
  v6 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 96) = v7;
  *v7 = v8;
  v7[1] = Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_15_35();

  return MEMORY[0x282200600](v9);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 96);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = *(v0 + 16);
  if ((*(v0 + 104) & 1) == 0)
  {
    *(v0 + 24) = v1;
    v2 = *(v0 + 88);
    *(swift_task_alloc() + 16) = *(v0 + 64);

    OUTLINED_FUNCTION_1_68();
    swift_getWitnessTable();
    v3 = Sequence.sorted(by:)();
    swift_bridgeObjectRelease_n();

    *(v0 + 16) = v3;
    v1 = v3;
  }

  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  *(v0 + 32) = v1;
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  OUTLINED_FUNCTION_2_56();
  WitnessTable = swift_getWitnessTable();
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), v7, v4, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);
  swift_bridgeObjectRelease_n();

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.asyncReduce<A>(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v0[9] = v1;
  v0[10] = v3;
  v0[7] = v4;
  v0[8] = v5;
  v0[5] = v6;
  v0[6] = v7;
  v0[4] = v8;
  v9 = *(v3 - 8);
  v0[11] = v9;
  v10 = *(v9 + 64) + 15;
  v0[12] = swift_task_alloc();
  v11 = *(v2 - 8);
  v0[13] = v11;
  v0[14] = *(v11 + 64);
  v0[15] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  v3 = v0[8];
  v2 = v0[9];
  (*(v0[11] + 16))(v0[4], v0[5], v0[10]);
  OUTLINED_FUNCTION_116_1();
  v4 = Array.startIndex.getter();
  v0[2] = v4;
  v5 = OUTLINED_FUNCTION_116_1();
  if (v4 == MEMORY[0x25F89F930](v5))
  {
    v6 = v0[15];
    v7 = v0[12];

    OUTLINED_FUNCTION_127();

    return v8();
  }

  else
  {
    v11 = v0[8];
    v10 = v0[9];
    OUTLINED_FUNCTION_116_1();
    Array._hoistableIsNativeTypeChecked()();
    OUTLINED_FUNCTION_17_36();
    if (v1)
    {
      (*(v0[13] + 16))(v0[15], v0[8] + ((*(v0[13] + 80) + 32) & ~*(v0[13] + 80)) + *(v0[13] + 72) * v4, v0[9]);
    }

    else
    {
      v20 = v0[14];
      v21 = v0[8];
      v22 = v0[9];
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v20 != 8)
      {
        __break(1u);
        return result;
      }

      v23 = OUTLINED_FUNCTION_11_42(result);
      v24(v23);
      swift_unknownObjectRelease();
    }

    v12 = v0[8];
    v13 = v0[9];
    v14 = v0[6];
    Array.formIndex(after:)(v0 + 2);
    OUTLINED_FUNCTION_5_46();
    v25 = v15;
    v16 = *(v14 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[16] = v17;
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_6_37(v17);

    return v25(v19);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[4];
  (*(v0[13] + 8))(v0[15], v0[9]);
  (*(v3 + 8))(v5, v2);
  (*(v3 + 32))(v5, v1, v2);
  v6 = OUTLINED_FUNCTION_116_1();
  v7 = MEMORY[0x25F89F930](v6);
  v8 = v0[2];
  if (v8 == v7)
  {
    v9 = v0[15];
    v10 = v0[12];

    OUTLINED_FUNCTION_127();

    return v11();
  }

  else
  {
    v14 = v0[8];
    v13 = v0[9];
    OUTLINED_FUNCTION_116_1();
    Array._hoistableIsNativeTypeChecked()();
    OUTLINED_FUNCTION_17_36();
    if (v5)
    {
      (*(v0[13] + 16))(v0[15], v0[8] + ((*(v0[13] + 80) + 32) & ~*(v0[13] + 80)) + *(v0[13] + 72) * v8, v0[9]);
    }

    else
    {
      v23 = v0[14];
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v23 != 8)
      {
        __break(1u);
        return result;
      }

      v24 = OUTLINED_FUNCTION_11_42(result);
      v25(v24);
      swift_unknownObjectRelease();
    }

    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[6];
    Array.formIndex(after:)(v0 + 2);
    OUTLINED_FUNCTION_5_46();
    v26 = v18;
    v19 = *(v17 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[16] = v20;
    *v20 = v21;
    v22 = OUTLINED_FUNCTION_6_37();

    return v26(v22);
  }
}

void Array<A>.argminN(_:)()
{
  OUTLINED_FUNCTION_155();
  if (v0 >= 1)
  {
    v4 = v3;
    v5 = v2;
    v6 = v0;
    if (MEMORY[0x25F89F910](v1, v2) >= v0)
    {
      v7 = type metadata accessor for Array();
      OUTLINED_FUNCTION_1_68();
      WitnessTable = swift_getWitnessTable();
      v9 = MEMORY[0x25F89F7C0](v20, v7, WitnessTable);
      *&v18 = *&v20[0];
      MEMORY[0x28223BE20](v9);
      type metadata accessor for EnumeratedSequence();
      swift_getWitnessTable();
      v10 = Sequence.sorted(by:)();

      *&v18 = v10;
      v11 = MEMORY[0x277D83B88];
      swift_getTupleTypeMetadata2();
      type metadata accessor for Array();
      OUTLINED_FUNCTION_2_56();
      swift_getWitnessTable();
      v12 = Collection.prefix(_:)();
      v17 = v20[0];
      v18 = v20[0];
      v19 = v20[1];
      MEMORY[0x28223BE20](v12);
      v16[2] = v5;
      v16[3] = v4;
      v13 = type metadata accessor for ArraySlice();
      v14 = swift_getWitnessTable();
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in Array<A>.argminN(_:), v16, v13, v11, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
      swift_unknownObjectRelease();
    }

    else
    {
      _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SnySiGTt0g5(0, v6);
    }
  }

  OUTLINED_FUNCTION_148();
}

uint64_t Array.elements(at:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  return Sequence.compactMap<A>(_:)();
}

void Array<A>.isEffectivelyEmptySearchResult.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for SearchResultType();
  OUTLINED_FUNCTION_19_14();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ResultTypeOSg_ADtMd, &_s15OmniSearchTypes0B10ResultTypeOSg_ADtMR);
  v34 = OUTLINED_FUNCTION_17(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &a9 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &a9 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_14_30();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &a9 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &a9 - v49;
  if (*(v24 + 16) == 1)
  {
    specialized Collection.first.getter(v24, v42);
    v51 = type metadata accessor for SearchEntity(0);
    if (__swift_getEnumTagSinglePayload(v42, 1, v51) == 1)
    {
      outlined destroy of IntentApplication?(v42, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
      v52 = 1;
    }

    else
    {
      v53 = *(v42 + 1);
      EntityProperty.wrappedValue.getter();
      _s10OmniSearch0B6EntityVWOhTm_2(v42, type metadata accessor for SearchEntity);
      v52 = 0;
    }

    __swift_storeEnumTagSinglePayload(v50, v52, 1, v25);
    (*(v27 + 104))(v48, *MEMORY[0x277D37048], v25);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v25);
    v54 = *(v33 + 48);
    outlined init with copy of Date?(v50, v38, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
    outlined init with copy of Date?(v48, &v38[v54], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
    OUTLINED_FUNCTION_71_10(v38);
    if (!v55)
    {
      outlined init with copy of Date?(v38, v20, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
      OUTLINED_FUNCTION_71_10(&v38[v54]);
      if (!v55)
      {
        (*(v27 + 32))(v32, &v38[v54], v25);
        lazy protocol witness table accessor for type SearchResultType and conformance SearchResultType();
        dispatch thunk of static Equatable.== infix(_:_:)();
        v56 = *(v27 + 8);
        v56(v32, v25);
        outlined destroy of IntentApplication?(v48, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        outlined destroy of IntentApplication?(v50, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        v56(v20, v25);
        outlined destroy of IntentApplication?(v38, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_21_30(v48);
      OUTLINED_FUNCTION_21_30(v50);
      (*(v27 + 8))(v20, v25);
LABEL_13:
      outlined destroy of IntentApplication?(v38, &_s15OmniSearchTypes0B10ResultTypeOSg_ADtMd, &_s15OmniSearchTypes0B10ResultTypeOSg_ADtMR);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_21_30(v48);
    OUTLINED_FUNCTION_21_30(v50);
    OUTLINED_FUNCTION_71_10(&v38[v54]);
    if (!v55)
    {
      goto LABEL_13;
    }

    outlined destroy of IntentApplication?(v38, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
  }

LABEL_14:
  OUTLINED_FUNCTION_148();
}

void Array<A>.isHomogenousResults.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_19_14();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_30();
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9CATEntityVSgMd, &_s10OmniSearch0B9CATEntityVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = *(v2 + 16);
  if (v19 != 1)
  {
    specialized Collection.first.getter(v2, &v44 - v17);
    if (__swift_getEnumTagSinglePayload(v18, 1, v3) == 1)
    {
      outlined destroy of IntentApplication?(v18, &_s10OmniSearch0B9CATEntityVSgMd, &_s10OmniSearch0B9CATEntityVSgMR);
      specialized Collection.first.getter(v2, v16);
      if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
      {
        outlined destroy of IntentApplication?(v16, &_s10OmniSearch0B9CATEntityVSgMd, &_s10OmniSearch0B9CATEntityVSgMR);
        goto LABEL_34;
      }

      v31 = *&v16[*(v3 + 20)];
      EntityProperty.wrappedValue.getter();
      v33 = v44;
      v32 = v45;
      OUTLINED_FUNCTION_0_72();
      _s10OmniSearch0B6EntityVWOhTm_2(v16, v34);
      if (!v32)
      {
        goto LABEL_34;
      }

      if (v19)
      {
        v35 = *(v3 + 20);
        v36 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v37 = *(v5 + 72);
        while (1)
        {
          outlined init with copy of SearchCATEntity(v36, v0);
          v38 = *(v0 + v35);
          EntityProperty.wrappedValue.getter();
          if (!v45)
          {
            break;
          }

          if (v44 == v33 && v45 == v32)
          {

            OUTLINED_FUNCTION_0_72();
            _s10OmniSearch0B6EntityVWOhTm_2(v0, v42);
          }

          else
          {
            v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

            OUTLINED_FUNCTION_0_72();
            _s10OmniSearch0B6EntityVWOhTm_2(v0, v41);
            if ((v40 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v36 += v37;
          if (!--v19)
          {
            goto LABEL_33;
          }
        }

        OUTLINED_FUNCTION_0_72();
        _s10OmniSearch0B6EntityVWOhTm_2(v0, v43);
      }
    }

    else
    {
      v20 = *&v18[*(v3 + 48)];
      EntityProperty.wrappedValue.getter();
      v22 = v44;
      v21 = v45;
      OUTLINED_FUNCTION_0_72();
      _s10OmniSearch0B6EntityVWOhTm_2(v18, v23);
      v24 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        for (i = 0; v19 != i; ++i)
        {
          outlined init with copy of SearchCATEntity(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, v11);
          v26 = *&v11[*(v3 + 48)];
          EntityProperty.wrappedValue.getter();
          if (v44 == v22 && v45 == v21)
          {

            OUTLINED_FUNCTION_0_72();
            _s10OmniSearch0B6EntityVWOhTm_2(v11, v30);
          }

          else
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            OUTLINED_FUNCTION_0_72();
            _s10OmniSearch0B6EntityVWOhTm_2(v11, v29);
            if ((v28 & 1) == 0)
            {
              break;
            }
          }
        }
      }
    }

LABEL_33:
  }

LABEL_34:
  OUTLINED_FUNCTION_148();
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v24 - v12;
  outlined init with copy of Date?(a1, v24 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    outlined destroy of IntentApplication?(v13, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  if (*(a3 + 16))
  {
    v15 = *(a3 + 24);
    v16 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = *v5;
  v21 = swift_allocObject();
  v21[2] = *(a4 + 16);
  v21[3] = a2;
  v21[4] = a3;
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

void Array<A>.argmin()()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_19_14();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  OUTLINED_FUNCTION_19_14();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[2] = v5;
  type metadata accessor for Array();
  OUTLINED_FUNCTION_1_68();
  swift_getWitnessTable();
  Sequence<>.min()();
  OUTLINED_FUNCTION_71_10(v13);
  if (v21)
  {
    (*(v8 + 8))(v13, v6);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v3);
    v23[1] = v5;
    OUTLINED_FUNCTION_2_56();
    swift_getWitnessTable();
    v22 = *(v1 + 8);
    Collection<>.firstIndex(of:)();
    (*(v15 + 8))(v20, v3);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in Array<A>.argminN(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, TupleTypeMetadata2, v8);
  v12 = *(TupleTypeMetadata2 + 48);
  *a3 = *v10;
  return (*(*(a2 - 8) + 8))(&v10[v12], a2);
}

uint64_t closure #1 in Array.elements(at:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, a2);
}

uint64_t closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v8 = *(a6 - 8);
  v7[15] = v8;
  v7[16] = *(v8 + 64);
  v7[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  v7[20] = v10;
  v11 = *(v10 - 8);
  v7[21] = v11;
  v12 = *(v11 + 64) + 15;
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), 0, 0);
}

uint64_t closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  v1 = v0[21];
  v32 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v0[6] = v0[10];
  v5 = type metadata accessor for Array();
  OUTLINED_FUNCTION_1_68();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F89F7C0](v5, WitnessTable);
  v0[7] = v0[5];
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v31 = v2;
  v30 = v3 + 7;
  type metadata accessor for EnumeratedSequence.Iterator();
  while (1)
  {
    v8 = v0[22];
    v7 = v0[23];
    v10 = v0[19];
    v9 = v0[20];
    EnumeratedSequence.Iterator.next()();
    (*(v1 + 32))(v7, v8, v9);
    if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
    {
      break;
    }

    v11 = v0[23];
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[13];
    v15 = v0[14];
    v16 = v0[12];
    v35 = v12;
    v36 = v0[9];
    v33 = v0[11];
    v34 = *v11;
    v17 = *(v32 + 48);
    v18 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
    v19 = *(v31 + 32);
    v19(v13, &v11[v17], v14);
    v20 = (*(v31 + 80) + 64) & ~*(v31 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = v14;
    *(v21 + 5) = v15;
    *(v21 + 6) = v33;
    *(v21 + 7) = v16;
    v19(&v21[v20], v13, v14);
    *&v21[(v30 + v20) & 0xFFFFFFFFFFFFFFF8] = v34;

    swift_getTupleTypeMetadata2();
    v22 = type metadata accessor for TaskGroup();
    _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(v35, &async function pointer to partial apply for closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), v21, v22);
    outlined destroy of IntentApplication?(v35, &_sScPSgMd, &_sScPSgMR);
  }

  v23 = v0[14];
  v24 = v0[9];
  v25 = v0[2];

  v26 = *v24;
  v27 = swift_task_alloc();
  v0[24] = v27;
  OUTLINED_FUNCTION_15_35();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v27 = v0;
  v27[1] = closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return TaskGroup.oms_results.getter(v26, TupleTypeMetadata2);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = v1;
  v3 = *(v1 + 192);
  v9 = *v0;
  *(v2 + 200) = v4;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  **(v0 + 64) = *(v0 + 200);

  OUTLINED_FUNCTION_127();

  return v5();
}

uint64_t partial apply for closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v3 + 16) = v11;
  *v11 = v12;
  v11[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a7;
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v7[4] = v13;
  *v13 = v7;
  v13[1] = specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v15(a1 + v11, a6);
}

uint64_t closure #3 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, TupleTypeMetadata2, v8);
  return (*(*(a2 - 8) + 32))(a3, &v10[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTQ0_()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_127();

  return v5();
}

uint64_t partial apply for closure #1 in Array<A>.argminN(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in Array<A>.argminN(_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultType and conformance SearchResultType()
{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    type metadata accessor for SearchResultType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

uint64_t _s10OmniSearch0B6EntityVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of SearchCATEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCATEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  OUTLINED_FUNCTION_19_14();
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = v1[7];
  v12 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v2 + 16) = v13;
  *v13 = v14;
  v13[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a1, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR(a1, v5);
}

uint64_t OUTLINED_FUNCTION_6_37(uint64_t a1)
{
  *(a1 + 8) = Array.asyncReduce<A>(_:_:);
  v2 = v1[15];
  result = v1[12];
  v4 = v1[7];
  v5 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_42(uint64_t a1)
{
  result = v1[15];
  v4 = v1[13];
  v5 = v1[9];
  v1[3] = a1;
  v6 = *(v4 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_36()
{

  return Array._checkSubscript(_:wasNativeTypeChecked:)();
}

uint64_t OUTLINED_FUNCTION_21_30(uint64_t a1)
{

  return outlined destroy of IntentApplication?(a1, v1, v2);
}

uint64_t SearchToolBiomeEvent.donate(timestamp:requestId:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = AFIsInternalInstall();
  if (result)
  {
    result = #_hasSymbol query for SearchToolTranscript();
    if (result)
    {
      v12 = type metadata accessor for JSONEncoder();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      v15 = *(a7 + 8);
      OUTLINED_FUNCTION_10_16();
      v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v52 = v17;
      v53 = v16;

      v55 = type metadata accessor for SearchToolTranscript();
      v56 = v50;
      v18 = OUTLINED_FUNCTION_14(v55);
      v54 = v19;
      v21 = *(v20 + 64);
      MEMORY[0x28223BE20](v18);
      v51 = 0;
      v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      SearchToolTranscript.init()();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v50[1] = v50;
      v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v24 - 8);
      v27 = v50 - v26;
      v28 = type metadata accessor for Date();
      v50[0] = a4;
      v29 = v28;
      (*(*(v28 - 8) + 16))(v27, a1, v28);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v29);
      SearchToolTranscript.absoluteTimestamp.setter();

      SearchToolTranscript.requestId.setter();

      v30 = v23;
      SearchToolTranscript.query.setter();
      OUTLINED_FUNCTION_10_16();
      swift_getDynamicType();
      (*(a7 + 16))(a6, a7);
      SearchToolTranscript.eventType.setter();
      v31 = OUTLINED_FUNCTION_10_16();
      outlined copy of Data._Representation(v31, v32);
      OUTLINED_FUNCTION_10_16();
      SearchToolTranscript.data.setter();
      type metadata accessor for InternalLibrary.Streams.SearchTool.Transcript();
      lazy protocol witness table accessor for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript();
      v33 = v51;
      static StreamResource.source()();
      if (v33)
      {
        v35 = v54;
        v34 = v55;
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logging.search);
        v37 = v33;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          v42 = v33;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          _os_log_impl(&dword_25D85C000, v38, v39, "Failed to send transcript event: %@", v40, 0xCu);
          outlined destroy of NSObject?(v41);
          MEMORY[0x25F8A1050](v41, -1, -1);
          MEMORY[0x25F8A1050](v40, -1, -1);

          v44 = OUTLINED_FUNCTION_10_16();
          outlined consume of Data._Representation(v44, v45);
        }

        else
        {
          v48 = OUTLINED_FUNCTION_10_16();
          outlined consume of Data._Representation(v48, v49);
        }

        return (*(v35 + 8))(v30, v34);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v57, v57[3]);
        dispatch thunk of Source.sendEvent(_:)();
        v46 = OUTLINED_FUNCTION_10_16();
        outlined consume of Data._Representation(v46, v47);
        (*(v54 + 8))(v30, v55);
        return __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }
    }
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VerificationModelExecution.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VerificationModelExecution.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VerificationModelExecution.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VerificationModelExecution.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisModelExecution.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisModelExecution.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VerificationModelExecution.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v24[2] = a3;
  v24[0] = a4;
  v24[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v24 - v16;
  v18 = a1[4];
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v19, v20, v21);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = 0;
  v22 = v24[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v22)
  {
    v25 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v13 + 8))(v17, v10);
}

unint64_t lazy protocol witness table accessor for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution.CodingKeys and conformance VerificationModelExecution.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution.CodingKeys and conformance AnswerSynthesisModelExecution.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for VerificationModelExecution(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VerificationModelExecution and conformance VerificationModelExecution();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnswerSynthesisModelExecution(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisModelExecution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

Swift::String __swiftcall Encodable.oms_jsonPrettyPrinted()()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_36();
  if (one-time initialization token for iso8601PrettyPrinted != -1)
  {
    OUTLINED_FUNCTION_2_57();
  }

  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  static String.Encoding.utf8.getter();
  v5 = String.init(data:encoding:)();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    outlined consume of Data._Representation(v2, v4);
  }

  else
  {
    outlined consume of Data._Representation(v2, v4);
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = v7;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t *JSONEncoder.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static JSONEncoder.shared;
}

uint64_t one-time initialization function for iso8601()
{
  v0 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONEncoder.OutputFormatting();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  (*(v10 + 104))(v13, *MEMORY[0x277CC8778], v9);
  v15[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277CC8740], v0);
  result = JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)(v13, v8, v4);
  static JSONEncoder.iso8601 = result;
  return result;
}

uint64_t JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v4 = OUTLINED_FUNCTION_14(v31);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  v28 = type metadata accessor for JSONEncoder.OutputFormatting();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  v16 = v15 - v14;
  v17 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v25 = v24 - v23;
  v26 = dispatch thunk of JSONEncoder.__allocating_init()();
  (*(v20 + 16))(v25, a1, v17);

  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  (*(v12 + 16))(v16, a2, v28);
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v6 + 16))(v11, a3, v31);
  dispatch thunk of JSONEncoder.keyEncodingStrategy.setter();

  (*(v6 + 8))(a3, v31);
  (*(v12 + 8))(a2, v28);
  (*(v20 + 8))(a1, v17);
  return v26;
}

uint64_t *JSONEncoder.iso8601.unsafeMutableAddressor()
{
  if (one-time initialization token for iso8601 != -1)
  {
    swift_once();
  }

  return &static JSONEncoder.iso8601;
}

uint64_t one-time initialization function for iso8601PrettyPrinted()
{
  v0 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  v14 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v22 = v21 - v20;
  type metadata accessor for JSONEncoder();
  (*(v17 + 104))(v22, *MEMORY[0x277CC8778], v14);
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  (*(v3 + 104))(v8, *MEMORY[0x277CC8740], v0);
  result = JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)(v22, v13, v8);
  static JSONEncoder.iso8601PrettyPrinted = result;
  return result;
}

uint64_t *JSONEncoder.iso8601PrettyPrinted.unsafeMutableAddressor()
{
  if (one-time initialization token for iso8601PrettyPrinted != -1)
  {
    OUTLINED_FUNCTION_2_57();
  }

  return &static JSONEncoder.iso8601PrettyPrinted;
}

uint64_t static JSONEncoder.shared.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

unint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting()
{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    type metadata accessor for JSONEncoder.OutputFormatting();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_57()
{

  return swift_once();
}

uint64_t Collection.at(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v21[-v7];
  dispatch thunk of Collection.indices.getter();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  LOBYTE(v9) = Sequence<>.contains(_:)();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v11 = dispatch thunk of Collection.subscript.read();
    v13 = v12;
    v14 = *(a1 + 8);
    v15 = swift_getAssociatedTypeWitness();
    (*(*(v15 - 8) + 16))(a2, v13, v15);
    v11(v21, 0);
    v16 = a2;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v19 = *(a1 + 8);
    v18 = swift_getAssociatedTypeWitness();
    v16 = a2;
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
}

uint64_t *ContextManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  return &static ContextManager.shared;
}

BOOL _sSLsE2leoiySbx_xtFZ10OmniSearch26MessageAccumulationContextV0D0V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAccumulationContext.Message(0);
  v5 = *(v4 + 20);
  v6 = *(a2 + v5);
  v7 = *(a1 + v5);
  if (v6 == v7)
  {
    v8 = *(v4 + 24);
    v9 = *(a2 + v8);
    v10 = *(a1 + v8);
    if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
    {
      v11 = 0;
    }

    else
    {
      v11 = static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
    }
  }

  else
  {
    v11 = v6 < v7;
  }

  return (v11 & 1) == 0;
}

uint64_t _sSLsE2leoiySbx_xtFZ10OmniSearch26MessageAccumulationContextV12SubcomponentO_Tt1gq5(char a1, char a2)
{
  v3 = 0xE900000000000074;
  v4 = 0x6867696C746F7073;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x73757361676570;
    }

    else
    {
      v5 = 0x7953726577736E61;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF7369736568746ELL;
    }
  }

  else
  {
    v5 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x73757361676570;
    }

    else
    {
      v4 = 0x7953726577736E61;
    }

    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xEF7369736568746ELL;
    }
  }

  if (v5 == v4 && v6 == v3)
  {

    v9 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

Swift::Int MessageAccumulationContext.Severity.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageAccumulationContext.Severity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MessageAccumulationContext.Severity.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

BOOL _sSLsE2geoiySbx_xtFZ10OmniSearch26MessageAccumulationContextV0D0V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAccumulationContext.Message(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == v7)
  {
    v8 = *(v4 + 24);
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);
    if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
    {
      v11 = 0;
    }

    else
    {
      v11 = static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
    }
  }

  else
  {
    v11 = v6 < v7;
  }

  return (v11 & 1) == 0;
}

uint64_t _sSLsE2geoiySbx_xtFZ10OmniSearch26MessageAccumulationContextV12SubcomponentO_Tt1gq5(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6867696C746F7073;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x73757361676570;
    }

    else
    {
      v5 = 0x7953726577736E61;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF7369736568746ELL;
    }
  }

  else
  {
    v5 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x73757361676570;
    }

    else
    {
      v3 = 0x7953726577736E61;
    }

    if (a2 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xEF7369736568746ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {

    v9 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t _sSLsE1goiySbx_xtFZ10OmniSearch26MessageAccumulationContextV12SubcomponentO_Tt1gq5(char a1, char a2)
{
  v3 = 0xE900000000000074;
  v4 = 0x6867696C746F7073;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x73757361676570;
    }

    else
    {
      v5 = 0x7953726577736E61;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF7369736568746ELL;
    }
  }

  else
  {
    v5 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x73757361676570;
    }

    else
    {
      v4 = 0x7953726577736E61;
    }

    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xEF7369736568746ELL;
    }
  }

  if (v5 == v4 && v6 == v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t _sSLsE1goiySbx_xtFZ10OmniSearch26MessageAccumulationContextV0C0V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAccumulationContext.Message(0);
  v5 = *(v4 + 20);
  v6 = *(a2 + v5);
  v7 = *(a1 + v5);
  if (v6 != v7)
  {
    return v6 < v7;
  }

  v8 = *(v4 + 24);
  v9 = *(a2 + v8);
  v10 = *(a1 + v8);
  if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
  {
    return 0;
  }

  return static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
}

uint64_t static MessageAccumulationContext.Subcomponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_2_58();
  if (v6)
  {
    v4 = v2;
    v5 = 0xE900000000000074;
  }

  else
  {
    if (v3 == 1)
    {
      v4 = 0x73757361676570;
    }

    else
    {
      v4 = 0x7953726577736E61;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEF7369736568746ELL;
    }
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x73757361676570;
    }

    else
    {
      v2 = 0x7953726577736E61;
    }

    if (v1 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xEF7369736568746ELL;
    }
  }

  v6 = v4 == v2 && v5 == v0;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t MessageAccumulationContext.Subcomponent.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6867696C746F7073;
  }

  if (a1 == 1)
  {
    return 0x73757361676570;
  }

  return 0x7953726577736E61;
}

uint64_t static MessageAccumulationContext.Subcomponent.< infix(_:_:)()
{
  OUTLINED_FUNCTION_2_58();
  if (v6)
  {
    v4 = v2;
    v5 = 0xE900000000000074;
  }

  else
  {
    if (v3 == 1)
    {
      v4 = 0x73757361676570;
    }

    else
    {
      v4 = 0x7953726577736E61;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEF7369736568746ELL;
    }
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x73757361676570;
    }

    else
    {
      v2 = 0x7953726577736E61;
    }

    if (v1 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xEF7369736568746ELL;
    }
  }

  v6 = v4 == v2 && v5 == v0;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

OmniSearch::MessageAccumulationContext::Subcomponent_optional __swiftcall MessageAccumulationContext.Subcomponent.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MessageAccumulationContext.Subcomponent.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

OmniSearch::MessageAccumulationContext::Subcomponent_optional protocol witness for RawRepresentable.init(rawValue:) in conformance MessageAccumulationContext.Subcomponent@<W0>(Swift::String *a1@<X0>, OmniSearch::MessageAccumulationContext::Subcomponent_optional *a2@<X8>)
{
  result.value = MessageAccumulationContext.Subcomponent.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MessageAccumulationContext.Subcomponent@<X0>(uint64_t *a1@<X8>)
{
  result = MessageAccumulationContext.Subcomponent.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MessageAccumulationContext.Subcomponent(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return static MessageAccumulationContext.Subcomponent.== infix(_:_:)();
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance MessageAccumulationContext.Subcomponent(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
}

uint64_t static MessageAccumulationContext.Message.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAccumulationContext.Message(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != v7)
  {
    return v6 < v7;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
  {
    return 0;
  }

  return static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
}

uint64_t MessageAccumulationContext.Message.init(value:severity:subcomponent:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  outlined init with take of MessageAccumulationContext.MessageValue(a1, a4, type metadata accessor for MessageAccumulationContext.MessageValue);
  result = type metadata accessor for MessageAccumulationContext.Message(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t MessageAccumulationContext.record(_:from:)(void *a1, char a2)
{
  v5 = type metadata accessor for MessageAccumulationContext.Message(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  *(v10 - v9) = a1;
  type metadata accessor for MessageAccumulationContext.MessageValue(0);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v6 + 28)) = 0;
  *(v11 + *(v6 + 32)) = a2;
  v12 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v13 = *(*v2 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v13);
  v14 = *v2;
  *(v14 + 16) = v13 + 1;
  v15 = v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v7 + 72);
  OUTLINED_FUNCTION_0_73();
  result = outlined init with take of MessageAccumulationContext.MessageValue(v11, v17, v18);
  *v2 = v14;
  return result;
}

uint64_t MessageAccumulationContext.record(_:severity:from:)(uint64_t a1, char a2, char a3)
{
  v7 = type metadata accessor for MessageAccumulationContext.Message(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = v9;
  v11 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  v15 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_23_5(v15);
  (*(v16 + 16))(v14, a1);
  type metadata accessor for MessageAccumulationContext.MessageValue(0);
  swift_storeEnumTagMultiPayload();
  *(v14 + *(v8 + 28)) = a2;
  *(v14 + *(v8 + 32)) = a3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v17 = *(*v3 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v17);
  v18 = v9;
  v19 = *v3;
  *(v19 + 16) = v17 + 1;
  v20 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v21 = *(v18 + 72);
  OUTLINED_FUNCTION_0_73();
  result = outlined init with take of MessageAccumulationContext.MessageValue(v14, v22, v23);
  *v3 = v19;
  return result;
}

uint64_t outlined init with copy of MessageAccumulationContext.MessageValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAccumulationContext.MessageValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ContextManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }
}

uint64_t ContextManager.().init()()
{
  swift_defaultActor_initialize();
  _s10OmniSearch0B7ContextVSgWOi0_(v2);
  memcpy((v0 + 112), v2, 0xA0uLL);
  *(v0 + 272) = MEMORY[0x277D84F90];
  *(v0 + 280) = 0;
  *(v0 + 288) = xmmword_25DBE45A0;
  return v0;
}

Swift::Void __swiftcall ContextManager.clear()()
{
  _s10OmniSearch0B7ContextVSgWOi0_(__src);
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_8_43(v6);
  memcpy(v0 + 14, __src, 0xA0uLL);
  outlined destroy of SearchContext?(v6);
  OUTLINED_FUNCTION_115_9();
  v1 = v0[34];
  v0[34] = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_115_9();
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[37];
  *(v0 + 35) = xmmword_25DBC9A70;
  v0[37] = 0;
  outlined consume of IndexContext?(v2, v3, v4);
}

uint64_t key path getter for ContextManager.searchContext : ContextManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  memcpy(__dst, (v3 + 112), sizeof(__dst));
  memcpy(a2, (v3 + 112), 0xA0uLL);
  return outlined init with copy of SearchContext?(__dst, v5);
}

uint64_t key path setter for ContextManager.searchContext : ContextManager(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  swift_beginAccess();
  memcpy(v7, (v3 + 112), sizeof(v7));
  memcpy((v3 + 112), __dst, 0xA0uLL);
  outlined init with copy of SearchContext?(__dst, v5);
  return outlined destroy of SearchContext?(v7);
}

uint64_t ContextManager.searchContext.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_8_43(v5);
  memcpy(a1, (v1 + 112), 0xA0uLL);
  return outlined init with copy of SearchContext?(v5, &v4);
}

uint64_t ContextManager.set(searchContext:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_8_43(v5);
  memcpy((v1 + 112), __dst, 0xA0uLL);
  outlined init with copy of SearchContext?(__dst, v3);
  return outlined destroy of SearchContext?(v5);
}

uint64_t key path getter for ContextManager.messageAccumulationContext : ContextManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 272);
}

uint64_t key path setter for ContextManager.messageAccumulationContext : ContextManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 272);
  *(v3 + 272) = v2;
}

uint64_t ContextManager.messageAccumulationContext.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 272);
}

uint64_t ContextManager.append(_:from:)(void *a1, char a2)
{
  OUTLINED_FUNCTION_7_46();
  MessageAccumulationContext.record(_:from:)(a1, a2);
  return swift_endAccess();
}

uint64_t ContextManager.append(_:severity:from:)(uint64_t a1, char a2, char a3)
{
  OUTLINED_FUNCTION_7_46();
  MessageAccumulationContext.record(_:severity:from:)(a1, a2, a3);
  return swift_endAccess();
}

id key path getter for ContextManager.indexContext : ContextManager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[35];
  v5 = v3[36];
  v6 = v3[37];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return outlined copy of IndexContext?(v4, v5, v6);
}

void key path setter for ContextManager.indexContext : ContextManager(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[35];
  v7 = v5[36];
  v8 = v5[37];
  v5[35] = v2;
  v5[36] = v3;
  v5[37] = v4;
  outlined copy of IndexContext?(v2, v3, v4);
  outlined consume of IndexContext?(v6, v7, v8);
}

uint64_t ContextManager.indexContext.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
  outlined copy of IndexContext?(v1, *(v0 + 288), *(v0 + 296));
  return v1;
}

void ContextManager.set(indexContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_115_9();
  v13 = *(v3 + 35);
  v14 = *(v3 + 36);
  v15 = *(v3 + 37);
  v3[35] = *&a1;
  *(v3 + 36) = a2;
  *(v3 + 37) = a3;
  outlined copy of IndexContext?(a1, a2, a3);
  outlined consume of IndexContext?(v13, v14, v15);
  if (a3 != 1)
  {
    if (a2)
    {
      if (a3)
      {
        OUTLINED_FUNCTION_6_38();
        v16 = a3;
        MessageAccumulationContext.record(_:from:)(a3, 0);
        swift_endAccess();
        outlined consume of IndexContext?(a1, a2, a3);
      }
    }

    else
    {
      if (*&a1 < 0.75)
      {
        LocalizedStringResource.init(stringLiteral:)();
        OUTLINED_FUNCTION_6_38();
        MessageAccumulationContext.record(_:severity:from:)(v12, 2, 0);
        swift_endAccess();
        (*(v8 + 8))(v12, v7);
      }

      static CALogging.logEmbeddingCompleteness(completeness:)(*&a1);
    }
  }
}

uint64_t ContextManager.deinit()
{
  OUTLINED_FUNCTION_8_43(v3);
  outlined destroy of SearchContext?(v3);
  v1 = *(v0 + 272);

  outlined consume of IndexContext?(*(v0 + 280), *(v0 + 288), *(v0 + 296));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ContextManager.__deallocating_deinit()
{
  ContextManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t outlined init with take of MessageAccumulationContext.MessageValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_23_5(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of SearchContext?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SearchContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationContext.Severity and conformance MessageAccumulationContext.Severity()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationContext.Severity and conformance MessageAccumulationContext.Severity;
  if (!lazy protocol witness table cache variable for type MessageAccumulationContext.Severity and conformance MessageAccumulationContext.Severity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationContext.Severity and conformance MessageAccumulationContext.Severity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MessageAccumulationContext.Subcomponent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MessageAccumulationContext.Subcomponent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MessageAccumulationContext.Subcomponent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch26MessageAccumulationContextV12SubcomponentOGMd, &_sSay10OmniSearch26MessageAccumulationContextV12SubcomponentOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MessageAccumulationContext.Subcomponent] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationContext.Subcomponent and conformance MessageAccumulationContext.Subcomponent()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationContext.Subcomponent and conformance MessageAccumulationContext.Subcomponent;
  if (!lazy protocol witness table cache variable for type MessageAccumulationContext.Subcomponent and conformance MessageAccumulationContext.Subcomponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationContext.Subcomponent and conformance MessageAccumulationContext.Subcomponent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationContext.Message and conformance MessageAccumulationContext.Message()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationContext.Message and conformance MessageAccumulationContext.Message;
  if (!lazy protocol witness table cache variable for type MessageAccumulationContext.Message and conformance MessageAccumulationContext.Message)
  {
    type metadata accessor for MessageAccumulationContext.Message(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationContext.Message and conformance MessageAccumulationContext.Message);
  }

  return result;
}

unint64_t type metadata completion function for MessageAccumulationContext.MessageValue()
{
  result = type metadata accessor for Error();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocalizedStringResource();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageAccumulationContext.Severity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata completion function for MessageAccumulationContext.Message()
{
  result = type metadata accessor for MessageAccumulationContext.MessageValue(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IndexContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IndexContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_38()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_46()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_8_43(void *a1)
{

  return memcpy(a1, (v1 + 112), 0xA0uLL);
}

uint64_t CSSearchableItem.associatedAppEntityId.getter()
{
  v1 = [v0 attributeSet];
  v2 = MEMORY[0x25F89F4C0](0xD000000000000023, 0x800000025DBF8160);
  v3 = [v1 attributeForKey_];

  if (v3)
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
    if (OUTLINED_FUNCTION_0_74())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v8);
    return 0;
  }
}

uint64_t CSSearchableItem.associatedAppEntityTypeId.getter()
{
  v1 = [v0 attributeSet];
  v2 = MEMORY[0x25F89F4C0](0xD00000000000001FLL, 0x800000025DBF8190);
  v3 = [v1 attributeForKey_];

  if (v3)
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
    if (OUTLINED_FUNCTION_0_74())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v8);
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return swift_dynamicCast();
}

uint64_t DateComponents.init(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Calendar();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = type metadata accessor for TimeZone();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  OUTLINED_FUNCTION_0_75(109);
  if ((v10 & 1) == 0)
  {
    DateComponents.minute.setter();
  }

  OUTLINED_FUNCTION_0_75(72);
  if ((v11 & 1) == 0)
  {
    DateComponents.hour.setter();
  }

  OUTLINED_FUNCTION_0_75(100);
  if ((v12 & 1) == 0)
  {
    DateComponents.day.setter();
  }

  OUTLINED_FUNCTION_0_75(77);
  if ((v13 & 1) == 0)
  {
    DateComponents.month.setter();
  }

  OUTLINED_FUNCTION_0_75(121);
  if ((v14 & 1) == 0)
  {
    DateComponents.year.setter();
  }

  OUTLINED_FUNCTION_0_75(69);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    return DateComponents.weekday.setter();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_75(uint64_t a1)
{

  return specialized Dictionary.subscript.getter(a1, 0xE100000000000000, v1);
}

uint64_t DeviceState.deviceClass.getter()
{
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76();
  }

  result = 0x646F50656D6F68;
  switch(static MobileGestalt.deviceClass)
  {
    case 0:
      result = 0x656E6F6870;
      break;
    case 1:
      result = 6578544;
      break;
    case 2:
      return result;
    case 3:
      result = 0x5654656C707061;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x6863746177;
      break;
    case 7:
      result = 0x6E6F69736976;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t DeviceState.description.getter()
{
  strcpy(v3, "deviceClass: ");
  HIWORD(v3[1]) = -4864;
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76();
  }

  v0 = 0xE700000000000000;
  v1 = 0x646F50656D6F68;
  switch(static MobileGestalt.deviceClass)
  {
    case 0:
      v0 = 0xE500000000000000;
      v1 = 0x656E6F6870;
      break;
    case 1:
      v0 = 0xE300000000000000;
      v1 = 6578544;
      break;
    case 2:
      break;
    case 3:
      v1 = 0x5654656C707061;
      break;
    case 4:
      v0 = 0xE300000000000000;
      v1 = 6513005;
      break;
    case 5:
      v0 = 0xE500000000000000;
      v1 = 0x6863746177;
      break;
    case 7:
      v0 = 0xE600000000000000;
      v1 = 0x6E6F69736976;
      break;
    default:
      v0 = 0xE700000000000000;
      v1 = 0x6E776F6E6B6E75;
      break;
  }

  MEMORY[0x25F89F6C0](v1, v0);

  return v3[0];
}

uint64_t OUTLINED_FUNCTION_0_76()
{

  return swift_once();
}

OmniSearch::EntityType_optional __swiftcall EntityType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EntityType.init(rawValue:), v3);

  v7 = 15;
  if (v5 < 0xF)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t EntityType.rawValue.getter()
{
  result = 0x6E6F697461636F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F73726570;
      break;
    case 2:
      result = 0x6D754E656E6F6870;
      break;
    case 3:
      result = 0x6464416C69616D65;
      break;
    case 4:
      result = 6910581;
      break;
    case 5:
      result = 0x7469746E45707061;
      break;
    case 6:
      result = 0x6563616C70;
      break;
    case 7:
      result = 0x72656D6974;
      break;
    case 8:
      result = 0x6D72616C61;
      break;
    case 9:
      result = 0x6163696669746F6ELL;
      break;
    case 0xA:
      result = 0x7261646E656C6163;
      break;
    case 0xB:
      result = 0x7265646E696D6572;
      break;
    case 0xC:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x656D695465746164;
      break;
    case 0xE:
      result = 0x657449616964656DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EntityType@<X0>(unint64_t *a1@<X8>)
{
  result = EntityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EntityMatch.entityId.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*EntityMatch.entityId.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t EntityMatch.entityType.getter()
{
  v1 = *(v0 + 8);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*EntityMatch.entityType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t EntityMatch.entityName.getter()
{
  v1 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*EntityMatch.entityName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t EntityMatch.matchedUserUtterance.getter()
{
  v1 = *(v0 + 24);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*EntityMatch.matchedUserUtterance.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

double EntityMatch.matchScore.getter()
{
  v1 = *(v0 + 40);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for EntityMatch.matchScore : EntityMatch(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, 0x69uLL);
  outlined init with copy of EntityMatch(v5, __dst);
  EntityMatch.matchScore.setter();
  memcpy(__dst, a2, 0x69uLL);
  return outlined destroy of EntityMatch(__dst);
}

uint64_t (*EntityMatch.matchScore.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t EntityMatch.originAppBundleId.getter()
{
  v1 = *(v0 + 48);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for EntityMatch.entityId : EntityMatch(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  memcpy(v10, a2, 0x69uLL);

  outlined init with copy of EntityMatch(v10, __dst);
  a5(v7, v8);
  memcpy(__dst, a2, 0x69uLL);
  return outlined destroy of EntityMatch(__dst);
}

uint64_t (*EntityMatch.originAppBundleId.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t EntityMatch.startIndex.getter()
{
  v1 = *(v0 + 56);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*EntityMatch.startIndex.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t EntityMatch.endIndex.getter()
{
  v1 = *(v0 + 64);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for EntityMatch.startIndex : EntityMatch(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  memcpy(v10, a2, 0x69uLL);
  outlined init with copy of EntityMatch(v10, __dst);
  a5(v7, v8);
  memcpy(__dst, a2, 0x69uLL);
  return outlined destroy of EntityMatch(__dst);
}

uint64_t (*EntityMatch.endIndex.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void EntityMatch.matchProperties.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 100);
  v6 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 28) = v5;
  *(a1 + 32) = v6;
}

uint64_t EntityMatch.matchProperties.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 28);
  v6 = *(result + 32);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 100) = v5;
  *(v1 + 104) = v6;
  return result;
}

uint64_t EntityMatch.init(entityId:startIndex:endIndex:entityType:entityName:userUtterance:matchScore:matchProperties:matcherType:originAppBundleId:)@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = OUTLINED_FUNCTION_114(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v27 = *a4;
  v26 = *(a4 + 8);
  v25 = a4[2];
  v23 = *(a4 + 7);
  v24 = *(a4 + 24);
  v21 = *a5;
  v22 = *(a4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_11_43();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdGMd, &_s10AppIntents14EntityPropertyCySdGMR);
  OUTLINED_FUNCTION_15_36();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 40) = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_14_31();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_19_36();
  LocalizedStringResource.init(stringLiteral:)();
  v10 = EntityProperty<>.init(title:)();
  *(a1 + 32) = v21;
  *(a1 + 64) = v10;
  *(a1 + 72) = v27;
  *(a1 + 80) = v26;
  *(a1 + 88) = v25;
  *(a1 + 96) = v24;
  *(a1 + 100) = v23;
  *(a1 + 104) = v22;
  EntityProperty.wrappedValue.setter();
  v11 = String.index(_:offsetBy:)();
  v12 = String.index(_:offsetBy:)();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  result = EntityProperty.wrappedValue.setter();
  if (v12 >> 14 < v11 >> 14)
  {
    __break(1u);
  }

  else
  {
    v14 = String.subscript.getter();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    MEMORY[0x25F89F5B0](v14, v16, v18, v20);

    EntityProperty.wrappedValue.setter();
    EntityProperty.wrappedValue.setter();
    return EntityProperty.wrappedValue.setter();
  }

  return result;
}

uint64_t EntityMatch.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_59();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_11_43();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdGMd, &_s10AppIntents14EntityPropertyCySdGMR);
  OUTLINED_FUNCTION_15_36();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 40) = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_14_31();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_19_36();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 64) = EntityProperty<>.init(title:)();
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 100) = 0;
  *(a1 + 104) = 1;
  *(a1 + 32) = 0;
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  return EntityProperty.wrappedValue.setter();
}

uint64_t MatchProperties.init(maxTokenCount:matchedTokenCount:matchedAliasTypes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, int *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 4);
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 28) = v6;
  *(a6 + 32) = v7;
  return result;
}

uint64_t EntityMatch.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  v3 = static EntityMatchFormatter.format(entityType:)();
  v5 = v4;

  MEMORY[0x25F89F6C0](v3, v5);

  v6 = OUTLINED_FUNCTION_20_25();
  MEMORY[0x25F89F6C0](v6, 0xE800000000000000);
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0]();

  MEMORY[0x25F89F6C0](34, 0xE100000000000000);
  return 8289;
}

uint64_t static EntityMatchFormatter.format(entityType:)()
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  swift_beginAccess();
  v0 = static EntityMatchFormatter.entityTypeMap;
  if (*(static EntityMatchFormatter.entityTypeMap + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) != 0))
  {
    v3 = (*(v0 + 56) + 16 * v1);
    countAndFlagsBits = *v3;
    v5 = v3[1];
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    String.splitByCapitalLetters()();
    countAndFlagsBits = String.lowercased()()._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t EntityMatch.debugString.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  v18 = v0[6];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[9];
  v16 = *(v0 + 80);
  v17 = *(v0 + 32);
  v15 = v0[11];
  v13 = *(v0 + 25);
  v14 = *(v0 + 96);
  v12 = *(v0 + 104);
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(235);
  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_55();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_55();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_55();
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_12_38();
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F89F6C0](v9);

  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_12_38();
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F89F6C0](v10);

  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_55();
  EntityProperty.wrappedValue.getter();
  Double.write<A>(to:)();
  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  v19 = v8;
  LOBYTE(v20) = v16;
  OUTLINED_FUNCTION_22_26();
  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  LOBYTE(v19) = v17;
  OUTLINED_FUNCTION_22_26();
  OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F89F6C0]();
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](v19, v20);

  MEMORY[0x25F89F6C0](32010, 0xE200000000000000);
  return 0;
}

uint64_t EntityMatch.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_70();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static EntityMatch.typeDisplayRepresentation);
}

uint64_t static EntityMatch.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_70();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static EntityMatch.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EntityMatch.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_70();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static EntityMatch.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EntityMatch.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_70();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static EntityMatch.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static EntityMatch.typeDisplayRepresentation : EntityMatch.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = EntityMatch.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static EntityMatch.typeDisplayRepresentation : EntityMatch.Type(uint64_t a1)
{
  v2 = EntityMatch.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t EntityMatch.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v15 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v16 = OUTLINED_FUNCTION_114(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v19 = *(v0 + 16);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  LocalizedStringResource.init(stringInterpolation:)();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v22 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v22);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance EntityMatch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance EntityMatch()
{
  lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance EntityMatch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance EntityMatch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();

  return MEMORY[0x28210C4B8](a1, v2);
}

OmniSearch::EntityMatcherType_optional __swiftcall EntityMatcherType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EntityMatcherType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t EntityMatcherType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EntityMatcherType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EntityMatcherType@<X0>(unint64_t *a1@<X8>)
{
  result = EntityMatcherType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MatchProperties.maxTokenCount.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MatchProperties.matchedTokenCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void MatchProperties.matchedAliasTypes.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 28);
  *(a1 + 4) = v2;
}

uint64_t MatchProperties.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F5478616DLL && a2 == 0xED0000746E756F43;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000025DBF8330 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x800000025DBF8350 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t MatchProperties.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E656B6F5478616DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MatchProperties.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MatchProperties.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MatchProperties.CodingKeys(uint64_t a1)
{
  matched = lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys();

  return MEMORY[0x2821FE718](a1, matched);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MatchProperties.CodingKeys(uint64_t a1)
{
  matched = lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys();

  return MEMORY[0x2821FE720](a1, matched);
}

uint64_t MatchProperties.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15MatchPropertiesV10CodingKeys33_60D76A05F93E995C404A66DB22E21B42LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15MatchPropertiesV10CodingKeys33_60D76A05F93E995C404A66DB22E21B42LLOGMR);
  OUTLINED_FUNCTION_16_36(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v23 = v1[2];
  v14 = *(v1 + 24);
  v21 = *(v1 + 7);
  v22 = v14;
  HIDWORD(v20) = *(v1 + 32);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = 0;
  v16 = v24;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v16)
  {
    v18 = BYTE4(v20);
    v17 = v21;
    v28 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v17;
    v26 = v18;
    v27 = 2;
    lazy protocol witness table accessor for type AliasTypes and conformance AliasTypes();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v11, v2);
}

uint64_t MatchProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15MatchPropertiesV10CodingKeys33_60D76A05F93E995C404A66DB22E21B42LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15MatchPropertiesV10CodingKeys33_60D76A05F93E995C404A66DB22E21B42LLOGMR);
  OUTLINED_FUNCTION_16_36(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v29 = 0;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    v28 = 1;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    HIDWORD(v23) = v19;
    v24 = v18;
    v27 = 2;
    lazy protocol witness table accessor for type AliasTypes and conformance AliasTypes();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v8 + 8))(v13, v3);
    v21 = v25;
    v22 = v26;
    *a2 = v15;
    *(a2 + 8) = v17 & 1;
    *(a2 + 16) = v24;
    *(a2 + 24) = BYTE4(v23) & 1;
    *(a2 + 28) = v21;
    *(a2 + 32) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}