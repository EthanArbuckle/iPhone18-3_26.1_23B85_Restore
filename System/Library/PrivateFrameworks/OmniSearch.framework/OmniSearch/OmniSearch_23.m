uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNQueryOutput?, @unowned NSError?) -> () with result type LNQueryOutput(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static NoteContentManager.parseLNQueryOutput(from:)(void *a1)
{
  v2 = &off_2799EF000;
  v3 = [a1 value];
  [v3 value];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
  v4 = "ptions";
  if (!OUTLINED_FUNCTION_24_18())
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v49, static Logging.answerSynthesis);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_51_0();
      v53 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_45_12(v53);
      *v52 = 136315138;
      *(v52 + 4) = OUTLINED_FUNCTION_8_27();
      _os_log_impl(&dword_25D85C000, v50, v51, "%s Unable to get LNValue(s)", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v1);
      OUTLINED_FUNCTION_13_18();
      OUTLINED_FUNCTION_42_0();
    }

    return 0;
  }

  v5 = v74;
  if (one-time initialization token for answerSynthesis != -1)
  {
    goto LABEL_61;
  }

LABEL_3:
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v6, static Logging.answerSynthesis);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_30_7();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_45_12(v10);
    *v9 = 136315395;
    *(v9 + 4) = OUTLINED_FUNCTION_8_27();
    *(v9 + 12) = 2085;
    v11 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNValue, 0x277D23958);
    MEMORY[0x25F89F8A0](v5, v11);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v9 + 14) = v12;
    OUTLINED_FUNCTION_67_13(&dword_25D85C000, v13, v14, "%s LNQueryOutput contained [LNValue]: %{sensitive}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_42_0();
  }

  v73 = specialized Array.count.getter(v5);
  if (v73)
  {
    v15 = 0;
    v72 = v5 & 0xC000000000000001;
    v65 = v5 + 32;
    v66 = v5 & 0xFFFFFFFFFFFFFF8;
    v64 = MEMORY[0x277D84F98];
    v63 = *(v4 + 368);
    v68 = v5;
    while (1)
    {
      if (v72)
      {
        v16 = MEMORY[0x25F89FFD0](v15, v5);
      }

      else
      {
        if (v15 >= *(v66 + 16))
        {
          goto LABEL_60;
        }

        v16 = *(v65 + 8 * v15);
      }

      v17 = v16;
      if (__OFADD__(v15++, 1))
      {
        goto LABEL_59;
      }

      v19 = [v16 v2[69]];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
      if (OUTLINED_FUNCTION_24_18())
      {
        break;
      }

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = v15;
        v33 = OUTLINED_FUNCTION_51_0();
        v34 = OUTLINED_FUNCTION_49_0();
        v4 = v17;
        OUTLINED_FUNCTION_45_12(v34);
        *v33 = v63;
        *(v33 + 4) = OUTLINED_FUNCTION_8_27();
        _os_log_impl(&dword_25D85C000, v30, v31, "%s Unable to get LNEntity", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        OUTLINED_FUNCTION_13_18();
        v15 = v32;
        OUTLINED_FUNCTION_42_0();
      }

LABEL_44:
      if (v15 == v73)
      {
        goto LABEL_53;
      }
    }

    v70 = v17;
    v71 = v15;
    v69 = v74;
    v20 = [v74 properties];
    v67 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v74 = MEMORY[0x277D84F90];
    v22 = specialized Array.count.getter(v21);
    v23 = 0;
    v5 = v21 & 0xC000000000000001;
    while (1)
    {
      if (v22 == v23)
      {

        if (specialized Array.count.getter(v74))
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v74 & 0xC000000000000001) == 0, v74);
          v2 = &off_2799EF000;
          v5 = v68;
          if ((v74 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x25F89FFD0](0, v74);
          }

          else
          {
            v35 = *(v74 + 32);
          }

          v36 = v35;

          v37 = [v36 value];

          if (v37)
          {
            v38 = [v37 value];

            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
            if (OUTLINED_FUNCTION_24_18())
            {
              v39 = [v69 identifier];
              v40 = [v39 instanceIdentifier];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v41 = [v74 string];
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v4 = v42;

              swift_isUniquelyReferenced_nonNull_native();
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

LABEL_43:
              v15 = v71;
              goto LABEL_44;
            }
          }
        }

        else
        {

          v2 = &off_2799EF000;
          v5 = v68;
        }

        v43 = v69;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v44, v45))
        {
          OUTLINED_FUNCTION_30_7();
          v46 = swift_slowAlloc();
          OUTLINED_FUNCTION_260();
          *v46 = 136315395;
          *(v46 + 4) = OUTLINED_FUNCTION_8_27();
          *(v46 + 12) = 2085;
          v47 = [v43 properties];
          v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          MEMORY[0x25F89F8A0](v48, v67);

          v4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          v5 = v68;
          v2 = &off_2799EF000;

          *(v46 + 14) = v4;
          _os_log_impl(&dword_25D85C000, v44, v45, "%s Not able extract 'contents' as AttributedString from properties: %{sensitive}s", v46, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
        }

        goto LABEL_43;
      }

      if (v5)
      {
        v24 = MEMORY[0x25F89FFD0](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        OUTLINED_FUNCTION_0_5();
        swift_once();
        goto LABEL_3;
      }

      v26 = [v24 identifier];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v2 == 0x73746E65746E6F63 && v28 == 0xE800000000000000)
      {
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v4 & 1) == 0)
        {

          goto LABEL_27;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = *(v74 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_27:
      ++v23;
    }
  }

  v64 = MEMORY[0x277D84F98];
LABEL_53:

  v54 = v64;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    OUTLINED_FUNCTION_30_7();
    v57 = swift_slowAlloc();
    v58 = OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_45_12(v58);
    *v57 = 136315395;
    *(v57 + 4) = OUTLINED_FUNCTION_8_27();
    *(v57 + 12) = 2085;
    Dictionary.description.getter();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v57 + 14) = v59;
    OUTLINED_FUNCTION_67_13(&dword_25D85C000, v60, v61, "%s Returning dict: %{sensitive}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_42_0();
  }

  return v54;
}

uint64_t static NoteContentManager.hydrateNoteFullContent(from:with:)(uint64_t a1, uint64_t a2)
{
  v200 = type metadata accessor for SpotlightRankingItem();
  v4 = OUTLINED_FUNCTION_14(v200);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v193 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  v198 = &v191 - v15;
  v197 = type metadata accessor for SearchResultItem(0);
  v16 = OUTLINED_FUNCTION_17(v197);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = OUTLINED_FUNCTION_114(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v25);
  v196 = &v191 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12NoteDocumentVSgMd, &_s15OmniSearchTypes12NoteDocumentVSgMR);
  v28 = OUTLINED_FUNCTION_114(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v191 - v31;
  v33 = type metadata accessor for NoteDocument();
  v34 = OUTLINED_FUNCTION_14(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  v228 = &v191 - v40;
  v220 = type metadata accessor for SearchResult(0);
  v41 = *(*(v220 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v220);
  v227 = &v191 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_20_15();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_19();
  v214 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_20_15();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_20_15();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_20_15();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_19();
  v221 = v54;
  v55 = *(a1 + 16);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v218 = v52;
    v209 = v20;
    v57 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v58 = a1 + v57;
    v224 = *(v51 + 72);
    v225 = v57;
    v215 = "parseLNQueryOutput(from:)";
    v217 = (v36 + 32);
    v194 = (v36 + 16);
    v192 = (v6 + 32);
    v216 = (v36 + 8);
    *&v53 = 136315138;
    v208 = v53;
    *&v53 = 136315394;
    v212 = v53;
    v219 = a2;
    v222 = v33;
    v59 = v221;
    v226 = v32;
    do
    {
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v58, v59, v60);
      v61 = v59;
      SearchResultItem.associatedValue.getter(&v230);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
      if (!swift_dynamicCast())
      {
        v92 = v56;
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v93, v94, v95, v33);
        outlined destroy of IntentApplication?(v32, &_s15OmniSearchTypes12NoteDocumentVSgMd, &_s15OmniSearchTypes12NoteDocumentVSgMR);
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v96 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v96, static Logging.answerSynthesis);
        OUTLINED_FUNCTION_0_49();
        v97 = v59;
        v98 = v218;
        _s10OmniSearch0B6ResultVWOcTm_3(v97, v218, v99);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v100, v101))
        {
          OUTLINED_FUNCTION_30_7();
          v102 = swift_slowAlloc();
          v32 = OUTLINED_FUNCTION_260();
          v229 = v32;
          *v102 = v212;
          *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          *(v102 + 12) = 2080;
          SearchResultItem.associatedValue.getter(&v230);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v98, v103);
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v102 + 14) = v61;
          _os_log_impl(&dword_25D85C000, v100, v101, "%s Expected item to be of type NoteDocument, but got -> %s. It's OK, will just preserve existing note", v102, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_18();
          v33 = v222;
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v98, v104);
        }

        OUTLINED_FUNCTION_0_49();
        v59 = v221;
        _s10OmniSearch0B6ResultVWOcTm_3(v221, v227, v105);
        v56 = v92;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a2 = v219;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v145 = *(v92 + 16);
          v146 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v146, v147, v148, v92);
          v56 = v149;
        }

        OUTLINED_FUNCTION_16_24();
        if (v108)
        {
          v150 = OUTLINED_FUNCTION_22_5(v107);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v150, v151, v152, v56);
          v56 = v153;
        }

        v109 = v227;
        goto LABEL_57;
      }

      v223 = v56;
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
      (*v217)(v228, v32, v33);
      v62 = *(v220 + 24);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v64 = CodableNSSecureCoding.wrappedValue.getter();
      CSSearchableItem.associatedAppEntityId.getter();
      v66 = v65;

      if (v66)
      {
        if (!*(a2 + 16) || (v67 = specialized __RawDictionaryStorage.find<A>(_:)(), (v68 & 1) == 0))
        {
          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v110 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v110, static Logging.answerSynthesis);

          v61 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v61, v32))
          {
            OUTLINED_FUNCTION_30_7();
            v111 = swift_slowAlloc();
            v230 = OUTLINED_FUNCTION_260();
            *v111 = v212;
            v112 = OUTLINED_FUNCTION_17_27();
            OUTLINED_FUNCTION_94_8(v112);
            v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v111 + 14) = v113;
            _os_log_impl(&dword_25D85C000, v61, v32, "%s Did not find %s in dict. It's OK, will just preserve existing note", v111, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_42_0();
          }

          else
          {
          }

          v33 = v222;
          OUTLINED_FUNCTION_0_49();
          _s10OmniSearch0B6ResultVWOcTm_3(v59, v214, v123);
          v56 = v223;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = *(v56 + 16);
            v155 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v155, v156, v157, v56);
            v56 = v158;
          }

          OUTLINED_FUNCTION_16_24();
          if (v108)
          {
            v159 = OUTLINED_FUNCTION_22_5(v124);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v159, v160, v161, v56);
            v56 = v162;
          }

          v125 = OUTLINED_FUNCTION_19_22();
          v126(v125);
          v109 = v214;
          goto LABEL_57;
        }

        v69 = v67;

        v70 = (*(a2 + 56) + 16 * v69);
        v32 = *v70;
        v71 = v70[1];
        v72 = HIBYTE(v71) & 0xF;
        if ((v71 & 0x2000000000000000) == 0)
        {
          v72 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (v72)
        {

          v206 = WalletPass.id.getter();
          v205 = v73;
          v204 = WalletPass.title.getter();
          v203 = v74;
          v202 = NoteDocument.folderName.getter();
          v201 = v75;
          NoteDocument.creationDate.getter();
          NoteDocument.lastUsedDate.getter();
          v76 = v211;
          NoteDocument.init(id:title:contentSnippet:folderName:creationDate:lastUsedDate:)();
          v77 = v209;
          (*v194)(v209, v76, v222);
          swift_storeEnumTagMultiPayload();
          v78 = v220;
          LODWORD(v206) = *(v59 + *(v220 + 32));
          v79 = CodableNSSecureCoding.wrappedValue.getter();
          v80 = v198;
          OUTLINED_FUNCTION_92();
          v81 = v200;
          __swift_storeEnumTagSinglePayload(v82, v83, v84, v200);
          v85 = v195;
          *(v195 + v78[7]) = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_9_29(v78[10]);
          _s10OmniSearch0B6ResultVWOcTm_3(v77, v85, v86);
          v87 = v78[6];
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
          v88 = v79;
          CodableNSSecureCoding.init(wrappedValue:)();
          v89 = v199;
          outlined init with copy of SpotlightRankingItem?(v80, v199);
          if (__swift_getEnumTagSinglePayload(v89, 1, v81) == 1)
          {
            outlined destroy of IntentApplication?(v89, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            v90 = v78[5];
            OUTLINED_FUNCTION_13_12();
            OUTLINED_FUNCTION_13_12();
            OUTLINED_FUNCTION_13_12();
            OUTLINED_FUNCTION_13_12();
            OUTLINED_FUNCTION_13_12();
            LOBYTE(v230) = 1;
            OUTLINED_FUNCTION_19_18();

            outlined destroy of IntentApplication?(v80, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_0_48();
            _s10OmniSearch0B6ResultVWOhTm_4(v209, v91);
          }

          else
          {

            outlined destroy of IntentApplication?(v80, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_0_48();
            _s10OmniSearch0B6ResultVWOhTm_4(v209, v135);
            v136 = *v192;
            v137 = v193;
            (*v192)(v193, v89, v81);
            v136((v85 + v78[5]), v137, v81);
          }

          *(v85 + v78[8]) = v206;
          *(v85 + v78[9]) = 1;
          outlined init with take of SearchResult(v85, v210);
          v138 = v223;
          v139 = swift_isUniquelyReferenced_nonNull_native();
          v140 = v219;
          v59 = v221;
          v33 = v222;
          if ((v139 & 1) == 0)
          {
            v172 = *(v138 + 16);
            v173 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v173, v174, v175, v138);
            v138 = v176;
          }

          v32 = *(v138 + 16);
          v141 = *(v138 + 24);
          v61 = (v32 + 1);
          if (v32 >= v141 >> 1)
          {
            v177 = OUTLINED_FUNCTION_22_5(v141);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v177, v178, v179, v138);
            v138 = v180;
          }

          v142 = *v216;
          (*v216)(v211, v33);
          v142(v228, v33);
          v109 = v210;
          v56 = v138;
          a2 = v140;
          goto LABEL_57;
        }

        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v127 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v127, static Logging.answerSynthesis);
        v61 = Logger.logObject.getter();
        v128 = static os_log_type_t.error.getter();
        v129 = OUTLINED_FUNCTION_77_5(v128);
        v33 = v222;
        if (v129)
        {
          v32 = OUTLINED_FUNCTION_51_0();
          v130 = OUTLINED_FUNCTION_49_0();
          v230 = v130;
          *v32 = v208;
          *(v32 + 4) = OUTLINED_FUNCTION_17_27();
          _os_log_impl(&dword_25D85C000, v61, v63, "%s Fetched empty Note content. It's OK, will just preserve existing note", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v130);
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_13_18();
        }

        v56 = v223;
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v59, v207, v131);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = *(v56 + 16);
          v182 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v182, v183, v184, v56);
          v56 = v185;
        }

        OUTLINED_FUNCTION_16_24();
        if (v108)
        {
          v186 = OUTLINED_FUNCTION_22_5(v132);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v186, v187, v188, v56);
          v56 = v189;
        }

        v133 = OUTLINED_FUNCTION_19_22();
        v134(v133);
        v122 = &v231;
      }

      else
      {
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v114, static Logging.answerSynthesis);
        v61 = Logger.logObject.getter();
        v115 = static os_log_type_t.error.getter();
        v116 = OUTLINED_FUNCTION_77_5(v115);
        v33 = v222;
        if (v116)
        {
          v32 = OUTLINED_FUNCTION_51_0();
          v117 = OUTLINED_FUNCTION_49_0();
          v230 = v117;
          *v32 = v208;
          *(v32 + 4) = OUTLINED_FUNCTION_17_27();
          _os_log_impl(&dword_25D85C000, v61, v63, "%s CSItem did not have _kMDItemAppEntityInstanceIdentifier. It's OK, will just preserve existing note", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v117);
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_13_18();
        }

        v56 = v223;
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v59, v213, v118);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = *(v56 + 16);
          v164 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v164, v165, v166, v56);
          v56 = v167;
        }

        OUTLINED_FUNCTION_16_24();
        if (v108)
        {
          v168 = OUTLINED_FUNCTION_22_5(v119);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v168, v169, v170, v56);
          v56 = v171;
        }

        v120 = OUTLINED_FUNCTION_19_22();
        v121(v120);
        v122 = &v232;
      }

      v109 = *(v122 - 32);
LABEL_57:
      OUTLINED_FUNCTION_4_30();
      _s10OmniSearch0B6ResultVWOhTm_4(v59, v143);
      *(v56 + 16) = v61;
      v144 = v224;
      outlined init with take of SearchResult(v109, v56 + v225 + v32 * v224);
      v58 += v144;
      --v55;
      v32 = v226;
    }

    while (v55);
  }

  return v56;
}

uint64_t static NoteContentManager.hydrateTextContent(from:)(uint64_t a1)
{
  v1[17] = a1;
  v2 = type metadata accessor for SpotlightRankingItem();
  v1[18] = v2;
  OUTLINED_FUNCTION_21(v2);
  v1[19] = v3;
  v5 = *(v4 + 64);
  v1[20] = OUTLINED_FUNCTION_199();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_160();
  v1[22] = swift_task_alloc();
  v9 = type metadata accessor for SearchResultItem(0);
  v1[23] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[24] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[25] = OUTLINED_FUNCTION_160();
  v1[26] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12NoteDocumentVSgMd, &_s15OmniSearchTypes12NoteDocumentVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[27] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for NoteDocument();
  v1[28] = v18;
  OUTLINED_FUNCTION_21(v18);
  v1[29] = v19;
  v21 = *(v20 + 64);
  v1[30] = OUTLINED_FUNCTION_160();
  v1[31] = swift_task_alloc();
  v22 = type metadata accessor for SearchResult(0);
  v1[32] = v22;
  OUTLINED_FUNCTION_21(v22);
  v1[33] = v23;
  v25 = *(v24 + 64);
  v1[34] = OUTLINED_FUNCTION_160();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t static NoteContentManager.hydrateTextContent(from:)()
{
  v1 = *(v0 + 264);
  v2 = *(*(v0 + 136) + 16);
  v3 = MEMORY[0x277D84F90];
  *(v0 + 312) = 0;
  *(v0 + 320) = v3;
  *(v0 + 304) = v2;
  if (v2)
  {
    v4 = *(v0 + 296);
    *(v0 + 360) = *(v1 + 80);
    *(v0 + 328) = *(v1 + 72);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v5 + v6, v7, v8);
    *(v0 + 40) = &type metadata for CSSearchableIndexDataProvider;
    *(v0 + 48) = &protocol witness table for CSSearchableIndexDataProvider;
    v9 = swift_task_alloc();
    *(v0 + 336) = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_7_26(v9);

    return GenericDataProviderManager.fetchTextContent(from:)(v10);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v12, static Logging.answerSynthesis);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_51_0();
      v19 = OUTLINED_FUNCTION_49_0();
      *v15 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v13, v14, "%s Successful in fetching text content via GenericDataProviderManager for ALL notes", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_42_0();
    }

    OUTLINED_FUNCTION_26_14();
    v18 = *(v0 + 160);

    OUTLINED_FUNCTION_62();
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

{
  if (!*(v0 + 352))
  {
    v33 = *(v0 + 320);
    v34 = *(v0 + 296);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v35, v36);

LABEL_23:
    v133 = 0;
LABEL_24:
    v88 = *(v0 + 288);
    v87 = *(v0 + 296);
    v90 = *(v0 + 272);
    v89 = *(v0 + 280);
    v92 = *(v0 + 240);
    v91 = *(v0 + 248);
    v94 = *(v0 + 208);
    v93 = *(v0 + 216);
    v95 = *(v0 + 192);
    v96 = *(v0 + 200);
    v126 = *(v0 + 176);
    v128 = *(v0 + 168);
    v130 = *(v0 + 160);

    OUTLINED_FUNCTION_62();

    return v97(v133);
  }

  v1 = *(v0 + 296);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  SearchResultItem.associatedValue.getter((v0 + 56));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = *(v0 + 352);
    v38 = *(v0 + 320);
    v40 = *(v0 + 216);
    v39 = *(v0 + 224);

    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v39);

    outlined destroy of IntentApplication?(v40, &_s15OmniSearchTypes12NoteDocumentVSgMd, &_s15OmniSearchTypes12NoteDocumentVSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v44 = *(v0 + 296);
    v45 = *(v0 + 272);
    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v44, v45, v47);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 296);
    v52 = *(v0 + 272);
    if (v50)
    {
      OUTLINED_FUNCTION_30_7();
      v53 = swift_slowAlloc();
      OUTLINED_FUNCTION_260();
      *v53 = 136315394;
      OUTLINED_FUNCTION_98_2();
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v53 + 12) = 2080;
      SearchResultItem.associatedValue.getter((v0 + 96));
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_11_28();
      _s10OmniSearch0B6ResultVWOhTm_4(v52, v54);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v53 + 14) = v55;
      _os_log_impl(&dword_25D85C000, v48, v49, "%s Expected item to be of type NoteDocument, but got -> %s. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices", v53, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_11_28();
      _s10OmniSearch0B6ResultVWOhTm_4(v52, v86);
    }

    _s10OmniSearch0B6ResultVWOhTm_4(v51, v4);
    goto LABEL_23;
  }

  v121 = *(v0 + 344);
  v122 = *(v0 + 352);
  v123 = *(v0 + 296);
  v127 = *(v0 + 280);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  v118 = *(v0 + 256);
  v119 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 200);
  v117 = *(v0 + 208);
  v120 = *(v0 + 192);
  v131 = *(v0 + 184);
  v124 = *(v0 + 176);
  v129 = *(v0 + 168);
  v125 = *(v0 + 144);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  (*(v6 + 32))(v5, v7, v8);
  WalletPass.id.getter();
  WalletPass.title.getter();
  NoteDocument.folderName.getter();
  NoteDocument.creationDate.getter();
  NoteDocument.lastUsedDate.getter();
  NoteDocument.init(id:title:contentSnippet:folderName:creationDate:lastUsedDate:)();
  (*(v6 + 16))(v120, v119, v8);
  swift_storeEnumTagMultiPayload();
  v132 = *(v123 + v118[8]);
  v10 = v118[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v11 = CodableNSSecureCoding.wrappedValue.getter();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v125);
  *(v127 + v118[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_9_29(v118[10]);
  _s10OmniSearch0B6ResultVWOcTm_3(v120, v127, v15);
  v16 = v118[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v17 = v11;
  CodableNSSecureCoding.init(wrappedValue:)();
  outlined init with copy of SpotlightRankingItem?(v124, v129);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v129, 1, v125);
  v19 = *(v0 + 280);
  v20 = *(v0 + 256);
  v21 = *(v0 + 192);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  if (EnumTagSinglePayload == 1)
  {
    v24 = *(v0 + 168);
    OUTLINED_FUNCTION_179_1();
    outlined destroy of IntentApplication?(v25, v26, v27);
    v28 = *(v20 + 20);
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_19_18();

    OUTLINED_FUNCTION_179_1();
    outlined destroy of IntentApplication?(v29, v30, v31);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v21, v32);
  }

  else
  {
    v57 = *(v0 + 152);
    v56 = *(v0 + 160);
    v58 = *(v0 + 144);

    outlined destroy of IntentApplication?(v22, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v21, v59);
    v60 = *(v57 + 32);
    v60(v56, v23, v58);
    v61 = *(v20 + 20);
    OUTLINED_FUNCTION_179_1();
    (v60)(v62, v63);
  }

  v64 = *(v0 + 320);
  v65 = *(v0 + 280);
  v66 = *(v0 + 288);
  v67 = *(v0 + 256);
  *(v65 + *(v67 + 32)) = v132;
  *(v65 + *(v67 + 36)) = 1;
  outlined init with take of SearchResult(v65, v66);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(v0 + 320);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v110 = *(v69 + 16);
    v111 = OUTLINED_FUNCTION_44();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v111, v112, v113, v114);
    v69 = v115;
  }

  v71 = *(v69 + 16);
  v70 = *(v69 + 24);
  if (v71 >= v70 >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1, v69);
    v133 = v116;
  }

  else
  {
    v133 = v69;
  }

  v72 = *(v0 + 328);
  v74 = *(v0 + 288);
  v73 = *(v0 + 296);
  v75 = *(v0 + 248);
  v76 = *(v0 + 224);
  v77 = (*(v0 + 360) + 32) & ~*(v0 + 360);
  v78 = *(*(v0 + 232) + 8);
  v78(*(v0 + 240), v76);
  v78(v75, v76);
  OUTLINED_FUNCTION_4_30();
  _s10OmniSearch0B6ResultVWOhTm_4(v73, v79);
  *(v133 + 16) = v71 + 1;
  outlined init with take of SearchResult(v74, v133 + v77 + v72 * v71);
  v80 = *(v0 + 304);
  v81 = *(v0 + 312) + 1;
  *(v0 + 312) = v81;
  *(v0 + 320) = v133;
  if (v81 == v80)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v82, static Logging.answerSynthesis);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v84))
    {
      v85 = OUTLINED_FUNCTION_51_0();
      v134 = OUTLINED_FUNCTION_49_0();
      *v85 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v83, v73, "%s Successful in fetching text content via GenericDataProviderManager for ALL notes", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v134);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }

    goto LABEL_24;
  }

  v99 = *(v0 + 296);
  v100 = *(v0 + 264);
  v101 = *(v0 + 136);
  *(v0 + 360) = *(v100 + 80);
  *(v0 + 328) = *(v100 + 72);
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_3(v102, v103, v104);
  *(v0 + 40) = &type metadata for CSSearchableIndexDataProvider;
  *(v0 + 48) = &protocol witness table for CSSearchableIndexDataProvider;
  v105 = swift_task_alloc();
  *(v0 + 336) = v105;
  *v105 = v0;
  v109 = OUTLINED_FUNCTION_7_26(v105, v106, v107, v108);

  return GenericDataProviderManager.fetchTextContent(from:)(v109);
}

{
  v1 = v0[40];
  v2 = v0[37];
  OUTLINED_FUNCTION_4_30();
  _s10OmniSearch0B6ResultVWOhTm_4(v3, v4);

  OUTLINED_FUNCTION_26_14();
  v7 = v0[20];

  OUTLINED_FUNCTION_62();

  return v5(0);
}

uint64_t static NoteContentManager.hydrateTextContent(from:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 336);
  v6 = *v3;
  *(v4 + 344) = a1;
  *(v4 + 352) = a2;

  if (v2)
  {
  }

  outlined destroy of GenericDataProviderManager(v4 + 16);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

id @nonobjc LNEntityIdentifier.init(typeIdentifier:instanceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x25F89F4C0]();

  v8 = MEMORY[0x25F89F4C0](a3, a4);

  v9 = [v4 initWithTypeIdentifier:v7 instanceIdentifier:v8];

  return v9;
}

uint64_t OUTLINED_FUNCTION_8_27()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_9_29(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_13_18()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_17_27()
{
  v2 = *(v0 - 248) | 0x8000000000000000;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_24_18()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_14()
{
  v2 = v0[36];
  result = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[21];
  v12 = v0[22];
  return result;
}

void OUTLINED_FUNCTION_30_18()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[24];
}

unint64_t specialized Array.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.subscript.getter(a1, a2, a3, type metadata accessor for SearchPropertyRequest);
}

{
  return specialized Array.subscript.getter(a1, a2, a3, MEMORY[0x277CB9DA8]);
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    OUTLINED_FUNCTION_114(v6);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSayAKGG_Si_AKts5NeverOTg506_sSi10g9Search0B6i48VACSiACIgynndr_Si6offset_AC7elementt_ACtSi_ACts5k195OIegnrzr_TR04_s10a8Search14c151HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27IntelligencePlatformLibrary0n4FlowB13ToolTelemetryV0br6Answerks30VztYaKFSayr64_AI7elementQ114AN0T23SythesisHydrationMetricVG7metricstGScgyAWs5c35_pGzYaKXEfU0_AWyYaKcfU_AWyYaYbKcfU_u4_AItU27AQ_AiRt_AItXEfU0_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = (&v61 - v8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v78 = *(v74 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v74);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v73 = (&v61 - v13);
  MEMORY[0x28223BE20](v14);
  v72 = (&v61 - v15);
  MEMORY[0x28223BE20](v16);
  v68 = &v61 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMR);
  v18 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v65 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v63 = &v61 - v21;
  MEMORY[0x28223BE20](v22);
  v62 = (&v61 - v23);
  v79 = a1;
  v24 = *(a1 + 16);
  v77 = a2;
  v25 = *(a2 + 16);
  if (v25 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v82 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v81 = v82;
  v69 = v25;
  v70 = v24;
  if (!v26)
  {
    goto LABEL_19;
  }

  v27 = 0;
  v80 = v26;
  v64 = v11;
  do
  {
    if (v24 == v27)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    outlined init with copy of SpotlightRankingItem?(v79 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v27, v11, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    if (v25 == v27)
    {
      goto LABEL_23;
    }

    v28 = *(type metadata accessor for SearchResult(0) - 8);
    v29 = v77 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27;
    v30 = *(v71 + 48);
    v31 = v65;
    outlined init with take of SearchResultItem?(v11, v65, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    _s10OmniSearch0B6ResultVWOcTm_7(v29, v31 + v30, type metadata accessor for SearchResult);
    v32 = v74;
    v33 = *(v74 + 48);
    v34 = *(v76 + 48);
    v35 = v72;
    *v72 = *v31;
    _s10OmniSearch0B6ResultVWOcTm_7(v31 + v33, v35 + v33, type metadata accessor for SearchResult);
    v36 = v73;
    outlined init with take of SearchResultItem?(v35, v73, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v37 = *v36;
    v38 = *(v32 + 48);
    v39 = v66;
    _s10OmniSearch0B6ResultVWOcTm_7(v31 + v30, &v66[v34], type metadata accessor for SearchResult);
    _s10OmniSearch0B6ResultVWOhTm_6(v36 + v38, type metadata accessor for SearchResult);
    *v39 = v37;
    outlined destroy of IntentApplication?(v31, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMR);
    v82 = v81;
    v40 = *(v81 + 16);
    if (v40 >= *(v81 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v81 = v82;
    }

    ++v27;
    v41 = v81;
    *(v81 + 16) = v40 + 1;
    outlined init with take of SearchResultItem?(v39, v41 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v40, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
    v26 = v80;
    v25 = v69;
    v24 = v70;
    v11 = v64;
  }

  while (v80 != v27);
LABEL_19:
  while (v24 != v26)
  {
    if (v26 >= v24)
    {
      goto LABEL_24;
    }

    outlined init with copy of SpotlightRankingItem?(v79 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v26, v68, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    if (__OFADD__(v26, 1))
    {
      goto LABEL_25;
    }

    if (v25 == v26)
    {
      outlined destroy of IntentApplication?(v68, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      return;
    }

    if (v26 >= v25)
    {
      goto LABEL_26;
    }

    v42 = *(type metadata accessor for SearchResult(0) - 8);
    v43 = v77 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v26;
    v44 = v71;
    v45 = *(v71 + 48);
    v46 = v63;
    outlined init with take of SearchResultItem?(v68, v63, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    _s10OmniSearch0B6ResultVWOcTm_7(v43, v46 + v45, type metadata accessor for SearchResult);
    v80 = v26;
    v47 = v62;
    outlined init with take of SearchResultItem?(v46, v62, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMR);
    v48 = *v47;
    v49 = v74;
    v50 = *(v74 + 48);
    v66 = *(v44 + 48);
    v51 = *(v76 + 48);
    v52 = v72;
    *v72 = v48;
    _s10OmniSearch0B6ResultVWOcTm_7(v47 + v50, v52 + v50, type metadata accessor for SearchResult);
    v53 = v52;
    v54 = v73;
    outlined init with take of SearchResultItem?(v53, v73, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v55 = v67;
    v56 = *v54;
    v57 = *(v49 + 48);
    _s10OmniSearch0B6ResultVWOcTm_7(&v66[v47], v67 + v51, type metadata accessor for SearchResult);
    _s10OmniSearch0B6ResultVWOhTm_6(v54 + v57, type metadata accessor for SearchResult);
    *v55 = v56;
    v58 = v81;
    outlined destroy of IntentApplication?(v47, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMR);
    v82 = v58;
    v59 = *(v58 + 16);
    if (v59 >= *(v58 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v81 = v82;
    }

    v60 = v81;
    *(v81 + 16) = v59 + 1;
    outlined init with take of SearchResultItem?(v67, v60 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v59, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
    v26 = v80 + 1;
    v25 = v69;
    v24 = v70;
  }
}

size_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSay27IntelligencePlatformLibrary0k4FlowH13ToolTelemetryV29AnswerSythesisHydrationMetricVGG_SiAH_AklS7metricsts5NeverOTg506_sSi10g9Search0B6i3V27kl10Library0d4n3B13op3V29qrst65VSiACSayAHGIgynndro_Si6offset_AC7elementt_AHtSiAJ_AckI7metricsts5v220OIegnrzr_TR04_s10a8Search14c89HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27de10Library0n4g3B13hi53V0br6AnswerkC0VztYaKFSaySi6offset_AI7elementSayAN0T23klM78VG7metricstGScgyAWs5C63_pGzYaKXEfU0_AWyYaKcfU_SiAQ_AiruVtSiAQ_AiRt_ATtXEfU0_Tf3nnnpf_nTf1cn_nTm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for SearchResult(0);
  v13 = OUTLINED_FUNCTION_114(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v101 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
  v19 = OUTLINED_FUNCTION_14(v18);
  v99 = v20;
  v100 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  v121 = v23;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  v90 = v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v26 = OUTLINED_FUNCTION_14(v98);
  v103 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_2();
  v92 = v33;
  v119 = a5;
  v120 = a6;
  v34 = OUTLINED_FUNCTION_107();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  v36 = OUTLINED_FUNCTION_17(v95);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_2();
  v104 = a1;
  v41 = *(a1 + 16);
  v102 = a2;
  v42 = *(a2 + 16);
  if (v42 >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = *(a2 + 16);
  }

  v124 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
  v45 = v124;
  v46 = "ptions";
  v122 = a3;
  v123 = a4;
  v94 = v41;
  v93 = v42;
  if (v43)
  {
    v47 = 0;
    v117 = v43;
    while (v41 != v47)
    {
      v48 = *(v103 + 80);
      OUTLINED_FUNCTION_79();
      v50 = *(v49 + 72);
      OUTLINED_FUNCTION_113_10(&v125);
      result = outlined init with copy of SpotlightRankingItem?(v51, v52, a3, v123);
      if (v42 == v47)
      {
        goto LABEL_23;
      }

      v110 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric();
      OUTLINED_FUNCTION_19_14();
      v54 = v53;
      v113 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v56 = v102 + v113 + *(v55 + 72) * v47;
      v57 = *(v95 + 48);
      outlined init with take of SearchResultItem?(v41, v91, v122, v123);
      v58 = *(v54 + 16);
      v58(&v91[v57], v56, v110);
      v59 = *(v98 + 48);
      v105 = *(v100 + 48);
      v115 = *(v100 + 64);
      *v96 = *v91;
      _s10OmniSearch0B6ResultVWOcTm_7(&v91[v59], v96 + v59, type metadata accessor for SearchResult);
      outlined init with copy of SpotlightRankingItem?(v96, v97, v122, v123);
      v107 = *v97;
      outlined init with take of SearchResult(v97 + *(v98 + 48), v101);
      _s10OmniSearch0B6ResultVWOcTm_7(v101, v121 + v105, type metadata accessor for SearchResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV29AnswerSythesisHydrationMetricVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV29AnswerSythesisHydrationMetricVGMR);
      a3 = v122;
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_25DBC8180;
      v61 = v121;
      v58((v60 + v113), &v91[v57], v110);
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v101, v62);
      outlined destroy of IntentApplication?(v96, a3, v123);
      *v121 = v107;
      *(v61 + v115) = v60;
      outlined destroy of IntentApplication?(v91, v119, v120);
      v124 = v45;
      v64 = v45[2];
      v63 = v45[3];
      if (v64 >= v63 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63 > 1, v64 + 1, 1);
        v45 = v124;
      }

      ++v47;
      v45[2] = v64 + 1;
      v65 = *(v99 + 80);
      OUTLINED_FUNCTION_79();
      result = outlined init with take of SearchResultItem?(v121, v45 + v66 + *(v67 + 72) * v64, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v43 = v117;
      v41 = v94;
      v42 = v93;
      v46 = "NNSStringCompareOptions" + 17;
      if (v117 == v47)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_11:
    v106 = *(v46 + 24);
    while (v41 != v43)
    {
      if (v43 >= v41)
      {
        goto LABEL_24;
      }

      v68 = *(v103 + 80);
      OUTLINED_FUNCTION_79();
      result = outlined init with copy of SpotlightRankingItem?(v104 + v69 + *(v70 + 72) * v43, v92, a3, v123);
      if (__OFADD__(v43, 1))
      {
        goto LABEL_25;
      }

      if (v42 == v43)
      {
        outlined destroy of IntentApplication?(v92, a3, v123);
        return v45;
      }

      if (v43 >= v42)
      {
        goto LABEL_26;
      }

      v112 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric();
      OUTLINED_FUNCTION_19_14();
      v72 = v71;
      v116 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v118 = v43;
      v74 = v102 + v116 + *(v73 + 72) * v43;
      v121 = v45;
      v75 = *(v95 + 48);
      v76 = v123;
      outlined init with take of SearchResultItem?(v92, v89, a3, v123);
      v111 = *(v72 + 16);
      v111(v89 + v75, v74, v112);
      OUTLINED_FUNCTION_113_10(&v120);
      outlined init with take of SearchResultItem?(v77, v78, v119, v120);
      v79 = *(v98 + 48);
      v109 = *(v95 + 48);
      v80 = *(v100 + 48);
      v114 = *(v100 + 64);
      *v96 = *v112;
      _s10OmniSearch0B6ResultVWOcTm_7(v112 + v79, v96 + v79, type metadata accessor for SearchResult);
      outlined init with copy of SpotlightRankingItem?(v96, v97, v122, v76);
      v108 = *v97;
      outlined init with take of SearchResult(v97 + *(v98 + 48), v101);
      v81 = v90 + v80;
      v45 = v121;
      _s10OmniSearch0B6ResultVWOcTm_7(v101, v81, type metadata accessor for SearchResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV29AnswerSythesisHydrationMetricVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV29AnswerSythesisHydrationMetricVGMR);
      v82 = swift_allocObject();
      *(v82 + 16) = v106;
      v111(v82 + v116, v112 + v109, v112);
      a3 = v122;
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v101, v83);
      outlined destroy of IntentApplication?(v96, a3, v123);
      *v90 = v108;
      *(v90 + v114) = v82;
      outlined destroy of IntentApplication?(v112, v119, v120);
      v124 = v45;
      v85 = v45[2];
      v84 = v45[3];
      if (v85 >= v84 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v84 > 1, v85 + 1, 1);
        v45 = v124;
      }

      v45[2] = v85 + 1;
      v86 = *(v99 + 80);
      OUTLINED_FUNCTION_79();
      result = outlined init with take of SearchResultItem?(v90, v45 + v87 + *(v88 + 72) * v85, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v43 = v118 + 1;
      v41 = v94;
      v42 = v93;
    }

    return v45;
  }

  return result;
}

uint64_t ResultHydrator.__allocating_init()()
{
  v1 = v0;
  type metadata accessor for EmailContentManager();
  v2 = swift_allocObject();
  EmailContentManager.init()(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18[0], v18[1], v18[2], v19, v20, v21, v22, v23, v24, v25, v26);
  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for ContactContentManager();
  v13 = swift_allocObject();
  v13[5] = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v13[6] = &protocol witness table for CNContactStore;
  v13[2] = v12;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v14 = static NSUserDefaults.answerSynthesisLimit.getter();
  type metadata accessor for FeatureFlagService();
  v15 = swift_allocObject();
  v19 = type metadata accessor for ItemFetcher();
  v20 = &protocol witness table for ItemFetcher;
  v18[0] = swift_allocObject();
  return (*(v1 + 192))(v11, v13, v14, v15, v18);
}

uint64_t one-time initialization function for perSourceTimeout()
{
  result = AFIsInternalInstall();
  v1 = 5.0;
  if (result)
  {
    v1 = 30.0;
  }

  static ResultHydrator.perSourceTimeout = *&v1;
  return result;
}

uint64_t one-time initialization function for eventTimeout()
{
  result = AFIsInternalInstall();
  v1 = 2.0;
  if (result)
  {
    v1 = 30.0;
  }

  static ResultHydrator.eventTimeout = *&v1;
  return result;
}

uint64_t ResultHydrator.messageBodyManager.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = outlined init with copy of SpotlightRankingItem?(v1 + 40, &v5, &_s10OmniSearch18MessageBodyManagerVSgMd, &_s10OmniSearch18MessageBodyManagerVSgMR);
  if (*(&v6 + 1))
  {
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  else
  {
    outlined destroy of IntentApplication?(&v5, &_s10OmniSearch18MessageBodyManagerVSgMd, &_s10OmniSearch18MessageBodyManagerVSgMR);
    *(a1 + 24) = &type metadata for IMSPIMessageQueryHelper;
    *(a1 + 32) = &protocol witness table for IMSPIMessageQueryHelper;
    outlined init with copy of MessageBodyManager(a1, &v5);
    OUTLINED_FUNCTION_124_10();
    outlined assign with take of MessageBodyManager?(&v5, v1 + 40);
    return swift_endAccess();
  }

  return result;
}

uint64_t ResultHydrator.messageBodyManager.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_124_10();
  outlined assign with take of MessageBodyManager?(v4, v1 + 40);
  return swift_endAccess();
}

void (*ResultHydrator.messageBodyManager.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  ResultHydrator.messageBodyManager.getter(v3);
  return ResultHydrator.messageBodyManager.modify;
}

void ResultHydrator.messageBodyManager.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    outlined init with copy of MessageBodyManager(*a1, v2 + 40);
    ResultHydrator.messageBodyManager.setter(v2 + 40);
    outlined destroy of MessageBodyManager(v2);
  }

  else
  {
    ResultHydrator.messageBodyManager.setter(*a1);
  }

  free(v2);
}

id ResultHydrator.calendarManager.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t ResultHydrator.calendarManager.setter(uint64_t a1)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*ResultHydrator.calendarManager.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ResultHydrator.calendarManager.getter();
  return ResultHydrator.calendarManager.modify;
}

void ResultHydrator.calendarManager.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
}

uint64_t ResultHydrator.__allocating_init(emailContentManager:contactContentManager:hydratedResultLimit:featureFlagService:itemFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  ResultHydrator.init(emailContentManager:contactContentManager:hydratedResultLimit:featureFlagService:itemFetcher:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ResultHydrator.init(emailContentManager:contactContentManager:hydratedResultLimit:featureFlagService:itemFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(v5 + 136) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = a3;
  *(v5 + 88) = a4;
  outlined init with take of ResponseOverrideMatcherProtocol(a5, v5 + 96);
  return v5;
}

uint64_t key path setter for ResultHydrator.hydrationFunctions : ResultHydrator(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);

  return v3(v4);
}

uint64_t ResultHydrator.hydrationFunctions.getter()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E9ResultKeyO_SayAC0eF0VGAH_SSSgtYaKctGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E9ResultKeyO_SayAC0eF0VGAH_SSSgtYaKctGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBDF2A0;
    OUTLINED_FUNCTION_131();
    v3 = swift_allocObject();
    *(v3 + 16) = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;
    *(v3 + 24) = v0;
    *(inited + 32) = 0;
    *(inited + 40) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error);
    *(inited + 48) = v3;
    OUTLINED_FUNCTION_131();
    v4 = swift_allocObject();
    *(v4 + 16) = &async function pointer to partial apply for implicit closure #4 in implicit closure #3 in ResultHydrator.hydrationFunctions.getter;
    *(v4 + 24) = v0;
    *(inited + 56) = 3;
    *(inited + 64) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 72) = v4;
    OUTLINED_FUNCTION_131();
    v5 = swift_allocObject();
    *(v5 + 16) = &async function pointer to partial apply for implicit closure #6 in implicit closure #5 in ResultHydrator.hydrationFunctions.getter;
    *(v5 + 24) = v0;
    *(inited + 80) = 1;
    *(inited + 88) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 96) = v5;
    OUTLINED_FUNCTION_131();
    v6 = swift_allocObject();
    *(v6 + 16) = &async function pointer to partial apply for implicit closure #8 in implicit closure #7 in ResultHydrator.hydrationFunctions.getter;
    *(v6 + 24) = v0;
    *(inited + 104) = 5;
    *(inited + 112) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 120) = v6;
    OUTLINED_FUNCTION_131();
    v7 = swift_allocObject();
    *(v7 + 16) = &async function pointer to partial apply for implicit closure #10 in implicit closure #9 in ResultHydrator.hydrationFunctions.getter;
    *(v7 + 24) = v0;
    *(inited + 128) = 15;
    *(inited + 136) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 144) = v7;
    OUTLINED_FUNCTION_131();
    v8 = swift_allocObject();
    *(v8 + 16) = &async function pointer to partial apply for implicit closure #12 in implicit closure #11 in ResultHydrator.hydrationFunctions.getter;
    *(v8 + 24) = v0;
    *(inited + 152) = 12;
    *(inited + 160) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 168) = v8;
    OUTLINED_FUNCTION_131();
    v9 = swift_allocObject();
    *(v9 + 16) = &async function pointer to partial apply for implicit closure #14 in implicit closure #13 in ResultHydrator.hydrationFunctions.getter;
    *(v9 + 24) = v0;
    *(inited + 176) = 22;
    *(inited + 184) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 192) = v9;
    OUTLINED_FUNCTION_131();
    v10 = swift_allocObject();
    *(v10 + 16) = &async function pointer to partial apply for implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter;
    *(v10 + 24) = v0;
    *(inited + 200) = 17;
    *(inited + 208) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 216) = v10;
    OUTLINED_FUNCTION_131();
    v11 = swift_allocObject();
    *(v11 + 16) = &async function pointer to partial apply for implicit closure #18 in implicit closure #17 in ResultHydrator.hydrationFunctions.getter;
    *(v11 + 24) = v0;
    *(inited + 224) = 16;
    *(inited + 232) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 240) = v11;
    OUTLINED_FUNCTION_131();
    v12 = swift_allocObject();
    *(v12 + 16) = &async function pointer to partial apply for implicit closure #20 in implicit closure #19 in ResultHydrator.hydrationFunctions.getter;
    *(v12 + 24) = v0;
    *(inited + 248) = 18;
    *(inited + 256) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 264) = v12;
    OUTLINED_FUNCTION_131();
    v13 = swift_allocObject();
    *(v13 + 16) = &async function pointer to partial apply for implicit closure #22 in implicit closure #21 in ResultHydrator.hydrationFunctions.getter;
    *(v13 + 24) = v0;
    *(inited + 272) = 28;
    *(inited + 280) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 288) = v13;
    OUTLINED_FUNCTION_131();
    v14 = swift_allocObject();
    *(v14 + 16) = &async function pointer to partial apply for implicit closure #24 in implicit closure #23 in ResultHydrator.hydrationFunctions.getter;
    *(v14 + 24) = v0;
    *(inited + 296) = 25;
    *(inited + 304) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 312) = v14;
    OUTLINED_FUNCTION_131();
    v15 = swift_allocObject();
    *(v15 + 16) = &async function pointer to partial apply for implicit closure #26 in implicit closure #25 in ResultHydrator.hydrationFunctions.getter;
    *(v15 + 24) = v0;
    *(inited + 320) = 24;
    *(inited + 328) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 336) = v15;
    OUTLINED_FUNCTION_131();
    v16 = swift_allocObject();
    *(v16 + 16) = &async function pointer to partial apply for implicit closure #28 in implicit closure #27 in ResultHydrator.hydrationFunctions.getter;
    *(v16 + 24) = v0;
    *(inited + 344) = 26;
    *(inited + 352) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 360) = v16;
    OUTLINED_FUNCTION_131();
    v17 = swift_allocObject();
    *(v17 + 16) = &async function pointer to partial apply for implicit closure #30 in implicit closure #29 in ResultHydrator.hydrationFunctions.getter;
    *(v17 + 24) = v0;
    *(inited + 368) = 27;
    *(inited + 376) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 384) = v17;
    OUTLINED_FUNCTION_131();
    v18 = swift_allocObject();
    *(v18 + 16) = &async function pointer to partial apply for implicit closure #32 in implicit closure #31 in ResultHydrator.hydrationFunctions.getter;
    *(v18 + 24) = v0;
    *(inited + 392) = 2;
    *(inited + 400) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 408) = v18;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGAD_SSSgtYaKcMd, &_sSay10OmniSearch0B6ResultVGAD_SSSgtYaKcMR);
    lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
    v1 = Dictionary.init(dictionaryLiteral:)();
    v19 = *(v0 + 136);
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForMailResults(_:locale:)();
}

uint64_t thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  *(v4 + 16) = a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error);

  return v11(v5, v6, v7);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t implicit closure #4 in implicit closure #3 in ResultHydrator.hydrationFunctions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForPhotosResults(_:locale:)();
}

uint64_t implicit closure #6 in implicit closure #5 in ResultHydrator.hydrationFunctions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForMessagesResults(_:locale:)();
}

uint64_t implicit closure #8 in implicit closure #7 in ResultHydrator.hydrationFunctions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForNotesResults(_:locale:)();
}

uint64_t implicit closure #10 in implicit closure #9 in ResultHydrator.hydrationFunctions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForContactsResults(_:locale:)();
}

uint64_t implicit closure #12 in implicit closure #11 in ResultHydrator.hydrationFunctions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForFileResults(_:locale:)();
}

uint64_t implicit closure #14 in implicit closure #13 in ResultHydrator.hydrationFunctions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerResolvable.extractInfo(query:results:assistantLocale:) in conformance AnswerResolver;

  return ResultHydrator.fetchFullContentForEventsResults(_:locale:)();
}

uint64_t implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForEventsResults(_:locale:)();
}

uint64_t implicit closure #32 in implicit closure #31 in ResultHydrator.hydrationFunctions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForCalendarResults(_:locale:)();
}

uint64_t ResultHydrator.hydrationFunctions.setter(uint64_t a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t (*ResultHydrator.hydrationFunctions.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ResultHydrator.hydrationFunctions.getter();
  return ResultHydrator.hydrationFunctions.modify;
}

uint64_t ResultHydrator.hydrationFunctions.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 136);
  *(v1 + 136) = v2;
}

uint64_t ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_48();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[26] = v5;
  v1[31] = *v0;
  v6 = type metadata accessor for TimeoutError();
  v1[32] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[33] = v7;
  v9 = *(v8 + 64);
  v1[34] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v10);
  v1[35] = v11;
  v13 = *(v12 + 64);
  v1[36] = OUTLINED_FUNCTION_199();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
  v1[37] = v14;
  OUTLINED_FUNCTION_21(v14);
  v1[38] = v15;
  v17 = *(v16 + 64);
  v1[39] = OUTLINED_FUNCTION_160();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v1[43] = v18;
  OUTLINED_FUNCTION_21(v18);
  v1[44] = v19;
  v21 = *(v20 + 64);
  v1[45] = OUTLINED_FUNCTION_160();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v22 = type metadata accessor for OSSignpostID();
  v1[48] = v22;
  OUTLINED_FUNCTION_21(v22);
  v1[49] = v23;
  v25 = *(v24 + 64);
  v1[50] = OUTLINED_FUNCTION_160();
  v1[51] = swift_task_alloc();
  v26 = type metadata accessor for Date();
  v1[52] = v26;
  OUTLINED_FUNCTION_21(v26);
  v1[53] = v27;
  v29 = *(v28 + 64);
  v1[54] = OUTLINED_FUNCTION_199();
  v30 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

{
  v1 = *(v0 + 432);
  Date.init()();
  static Task<>.checkCancellation()();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v2 = *(v0 + 408);
  v3 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v3, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 408);
    v7 = OUTLINED_FUNCTION_172();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v4, v5, v8, "ResultHydrator.fetchFullContent", "", v7, 2u);
    OUTLINED_FUNCTION_72_9();
  }

  v9 = *(v0 + 400);
  v10 = *(v0 + 408);
  v11 = *(v0 + 384);
  v12 = *(v0 + 392);

  v13 = OUTLINED_FUNCTION_59_12(v12);
  v14(v13, v10, v11);
  v15 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v15);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 440) = OSSignpostIntervalState.init(id:isOpen:)();
  v16 = *(v12 + 8);
  v17 = OUTLINED_FUNCTION_64_0();
  v18(v17);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v19 = *(v0 + 240);
  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logging.answerSynthesis);
  *(v0 + 448) = v21;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = OUTLINED_FUNCTION_16_11(v23);
  v25 = *(v0 + 240);
  if (v24)
  {
    v26 = OUTLINED_FUNCTION_51_0();
    *v26 = 134217984;
    *(v26 + 4) = *(v25 + 16);

    _os_log_impl(&dword_25D85C000, v22, v21, "ResultHydrator: Fetching full content for first %ld personal results...", v26, 0xCu);
    OUTLINED_FUNCTION_72_9();
  }

  else
  {
    v27 = *(v0 + 240);
  }

  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v43 = *(v0 + 216);
  v30 = *(v0 + 208);
  OUTLINED_FUNCTION_133();
  (*(v31 + 248))(v0 + 16, v0 + 56);
  v32 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_19_14();
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_199();
  (*(v34 + 16))();
  lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
  v37 = Dictionary.init<A>(grouping:by:)();
  *(v0 + 456) = v37;

  *(v0 + 160) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMR);
  v38 = swift_task_alloc();
  *(v0 + 464) = v38;
  *(v38 + 16) = v37;
  *(v38 + 24) = v28;
  *(v38 + 32) = v43;
  *(v38 + 48) = v29;
  v39 = *(MEMORY[0x277D859B8] + 4);
  v40 = swift_task_alloc();
  *(v0 + 472) = v40;
  *v40 = v0;
  v40[1] = ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);
  OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_15_6();

  return MEMORY[0x282200740]();
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v2 + 472);
  *v4 = *v1;
  *(v3 + 480) = v0;

  v6 = *(v2 + 464);
  if (v0)
  {
    v7 = *(v3 + 456);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v103 = v0;
  v1 = v0[21];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v91 = v1;
  if (v2)
  {
    v94 = v0[43];
    v95 = v0[44];
    v4 = v0[38];
    v93 = v0[37];
    v102 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = v102;
    v5 = *(v4 + 80);
    OUTLINED_FUNCTION_79();
    v7 = v1 + v6;
    v92 = *(v4 + 72);
    do
    {
      v98 = v2;
      v8 = v0[47];
      v9 = v0[41];
      v10 = v0[42];
      v11 = v0[40];
      outlined init with copy of SpotlightRankingItem?(v7, v10, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v97 = *(v94 + 48);
      v12 = OUTLINED_FUNCTION_107();
      outlined init with copy of SpotlightRankingItem?(v12, v13, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v14 = *v9;
      v15 = *(v93 + 48);
      v16 = *(v9 + *(v93 + 64));

      *v8 = v14;
      outlined init with take of SearchResultItem?(v10, v11, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v17 = *(v93 + 48);
      v18 = *(v11 + *(v93 + 64));

      outlined init with take of SearchResult(v11 + v17, v8 + v97);
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v9 + v15, v19);
      v102 = v3;
      v21 = *(v3 + 16);
      v20 = *(v3 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v20);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v102;
      }

      v0 = v96;
      v22 = v96[47];
      *(v3 + 16) = v21 + 1;
      v23 = *(v95 + 80);
      OUTLINED_FUNCTION_79();
      outlined init with take of SearchResultItem?(v26, v3 + v24 + *(v25 + 72) * v21, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v7 += v92;
      --v2;
    }

    while (v98 != 1);
  }

  v27 = v0[60];
  v28 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v29 = OUTLINED_FUNCTION_179_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  v0[23] = v3;
  lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: SearchResult)] and conformance [A], &_sSaySi6offset_10OmniSearch0C6ResultV7elementtGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementtGMR);
  static RangeReplaceableCollection.+ infix<A>(_:_:)();
  v102 = v0[22];

  specialized MutableCollection<>.sort(by:)(&v102);
  if (v27)
  {
  }

  v32 = v0[57];

  v33 = v102;
  v34 = *(v102 + 16);
  if (v34)
  {
    v35 = v96[44];
    v100 = v96[43];
    v36 = v96[35];
    v102 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v37 = v102;
    v38 = *(v35 + 80);
    OUTLINED_FUNCTION_79();
    v40 = v33 + v39;
    v99 = *(v35 + 72);
    v0 = v96;
    do
    {
      v41 = v96[45];
      v42 = v96[36];
      outlined init with copy of SpotlightRankingItem?(v40, v96[46], &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v43 = OUTLINED_FUNCTION_107();
      outlined init with take of SearchResultItem?(v43, v44, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      outlined init with take of SearchResult(v41 + *(v100 + 48), v42);
      v102 = v37;
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v45);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v37 = v102;
      }

      v47 = v96[36];
      *(v37 + 16) = v46 + 1;
      v48 = *(v36 + 80);
      OUTLINED_FUNCTION_79();
      outlined init with take of SearchResult(v50, v37 + v49 + *(v36 + 72) * v46);
      v40 += v99;
      --v34;
    }

    while (v34);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v0[61] = v37;
  v51 = *(v91 + 16);
  if (v51)
  {
    v53 = v0[37];
    v52 = v0[38];
    v54 = v91 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v101 = *(v52 + 72);
    v55 = MEMORY[0x277D84F90];
    while (1)
    {
      v56 = v0[42];
      v57 = v0[39];
      outlined init with copy of SpotlightRankingItem?(v54, v57, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      outlined init with take of SearchResultItem?(v57, v56, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v58 = *(v53 + 48);
      v59 = *(v56 + *(v53 + 64));
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v56 + v60, v61);
      v62 = *(v59 + 16);
      v63 = *(v55 + 16);
      v64 = v63 + v62;
      if (__OFADD__(v63, v62))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v64 > *(v55 + 24) >> 1)
      {
        if (v63 <= v64)
        {
          v66 = v63 + v62;
        }

        else
        {
          v66 = v63;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v66, 1, v55);
        v55 = v67;
      }

      if (*(v59 + 16))
      {
        v0 = ((*(v55 + 24) >> 1) - *(v55 + 16));
        v68 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric() - 8);
        if (v0 < v62)
        {
          goto LABEL_44;
        }

        v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v70 = *(v68 + 72);
        swift_arrayInitWithCopy();

        v0 = v96;
        if (v62)
        {
          v71 = *(v55 + 16);
          v72 = __OFADD__(v71, v62);
          v73 = v71 + v62;
          if (v72)
          {
            goto LABEL_45;
          }

          *(v55 + 16) = v73;
        }
      }

      else
      {

        if (v62)
        {
          goto LABEL_43;
        }
      }

      v54 += v101;
      if (!--v51)
      {

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
LABEL_35:
    v74 = v0[29];
    specialized Array.append<A>(contentsOf:)(v55);
    v75 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
    type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
    v76 = OUTLINED_FUNCTION_45_4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, v77, v78);
    v80 = v0[20];
    if (EnumTagSinglePayload)
    {
    }

    else
    {
      IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.answerSynthesisHydrationMetrics.setter();
    }

    v75(v0 + 12, 0);
    if (one-time initialization token for eventTimeout == -1)
    {
      goto LABEL_39;
    }
  }

  swift_once();
LABEL_39:
  v81 = v0;
  v84 = v0 + 27;
  v83 = v0[27];
  v82 = v84[1];
  v85 = static ResultHydrator.eventTimeout;
  v86 = swift_allocObject();
  v81[62] = v86;
  v86[2] = v37;
  v86[3] = v83;
  v86[4] = v82;
  v87 = *(MEMORY[0x277D61CC0] + 4);

  v88 = swift_task_alloc();
  v81[63] = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  *v88 = v81;
  v88[1] = ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);
  v90.n128_u64[0] = v85;

  return MEMORY[0x2821C8618](v81 + 24, &async function pointer to partial apply for closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:), v86, v89, v90);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 504);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  v3[64] = v0;

  if (!v0)
  {
    v9 = v3[61];
    v10 = v3[62];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v1 = *(v0 + 240);
  v2 = ResultHydrator.runDataDetectorsOnResults(_:locale:)(*(v0 + 192), *(v0 + 216), *(v0 + 224));

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v3 = *(v0 + 432);
  v4 = *(v0 + 232);
  OUTLINED_FUNCTION_133();
  v6 = (*(v5 + 312))();
  v7 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  v8 = OUTLINED_FUNCTION_45_4();
  result = __swift_getEnumTagSinglePayload(v8, v9, v10);
  if (!result)
  {
    if ((v6 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    MEMORY[0x25F89E5F0](v6);
  }

  v7(v0 + 128, 0);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v15 = *(v0 + 416);
  v14 = *(v0 + 424);
  v28 = v2;
  v17 = *(v0 + 400);
  v16 = *(v0 + 408);
  v19 = *(v0 + 368);
  v18 = *(v0 + 376);
  v20 = *(v0 + 360);
  v22 = *(v0 + 336);
  v23 = *(v0 + 328);
  v24 = *(v0 + 320);
  v25 = *(v0 + 312);
  v26 = *(v0 + 288);
  v27 = *(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v12, "ResultHydrator.fetchFullContent");

  (*(v14 + 8))(v13, v15);

  OUTLINED_FUNCTION_62();

  return v21(v28);
}

{
  v1 = *(v0 + 512);
  v2 = *(v0 + 496);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);

  *(v0 + 200) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 448);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v8))
    {
      v9 = OUTLINED_FUNCTION_51_0();
      v48 = OUTLINED_FUNCTION_49_0();
      *v9 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_115_8();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_52_16();
    }

    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    v15 = *(v0 + 240);
    v46 = ResultHydrator.runDataDetectorsOnResults(_:locale:)(*(v0 + 488), *(v0 + 216), *(v0 + 224));

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v16 = *(v0 + 432);
    v17 = *(v0 + 232);
    OUTLINED_FUNCTION_133();
    v19 = (*(v18 + 312))();
    v20 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
    type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
    v21 = OUTLINED_FUNCTION_45_4();
    result = __swift_getEnumTagSinglePayload(v21, v22, v23);
    if (!result)
    {
      if ((v19 & 0x80000000) != 0)
      {
        __break(1u);
        return result;
      }

      MEMORY[0x25F89E5F0](v19);
    }

    v20(v0 + 128, 0);
    v25 = *(v0 + 432);
    v26 = *(v0 + 440);
    v27 = *(v0 + 416);
    v28 = *(v0 + 424);
    v29 = *(v0 + 400);
    v30 = *(v0 + 408);
    v32 = *(v0 + 368);
    v31 = *(v0 + 376);
    v33 = *(v0 + 360);
    v40 = *(v0 + 336);
    v41 = *(v0 + 328);
    v42 = *(v0 + 320);
    v43 = *(v0 + 312);
    v44 = *(v0 + 288);
    v45 = *(v0 + 272);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v26, "ResultHydrator.fetchFullContent");

    (*(v28 + 8))(v25, v27);

    OUTLINED_FUNCTION_62();

    return v34(v46);
  }

  else
  {
    v35 = *(v0 + 488);
    v36 = *(v0 + 440);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v36, "ResultHydrator.fetchFullContent");

    v37 = *(v0 + 512);
    OUTLINED_FUNCTION_62_12();
    v47 = *(v0 + 272);
    (*(v38 + 8))(v0 + 16);

    OUTLINED_FUNCTION_127();

    return v39();
  }
}

void ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  v2 = v1[55];
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v2, "ResultHydrator.fetchFullContent");

  v3 = v1[60];
  OUTLINED_FUNCTION_62_12();
  v7 = v1[34];
  (*(v4 + 8))(v0);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_115();

  __asm { BRAA            X1, X16 }
}

uint64_t closure #1 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  outlined init with copy of SpotlightRankingItem?(a1, v11 - v7, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v9 = *(v5 + 56);
  SearchResultItem.type.getter(a2);
  return _s10OmniSearch0B6ResultVWOhTm_6(&v8[v9], type metadata accessor for SearchResult);
}

uint64_t closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMd, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMR);
  v7[19] = v9;
  v10 = *(v9 - 8);
  v7[20] = v10;
  v11 = *(v10 + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:), 0, 0);
}

uint64_t closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  v55 = (v0 + 16);
  v59 = *(v0 + 120);
  v1 = *(v0 + 96);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;

  v15 = 0;
  v62 = v0;
  v57 = v1 + 64;
  v58 = v1;
  v56 = v6;
  while (v5)
  {
LABEL_9:
    v17 = *(*(v1 + 48) + (__clz(__rbit64(v5)) | (v15 << 6)));
    if (*(v1 + 16) && (v18 = *(v0 + 96), v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v20 & 1) != 0))
    {
      v21 = *(*(v1 + 56) + 8 * v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v5 &= v5 - 1;
    if (*(v21 + 16))
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v22, static Logging.answerSynthesis);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      v61 = v21;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        swift_slowAlloc();
        *v25 = 136315907;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v25 + 12) = 2048;
        *(v25 + 14) = *(v21 + 16);

        *(v25 + 22) = 2080;
        *(v0 + 200) = v17;
        lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
        dispatch thunk of CustomStringConvertible.description.getter();
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v25 + 24) = v26;
        *(v25 + 32) = 2085;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        MEMORY[0x25F89F8A0](v21, v27);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v25 + 34) = v28;
        v0 = v62;
        _os_log_impl(&dword_25D85C000, v23, v24, "%s calling hydrator for %ld %s result(s): %{sensitive}s", v25, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37_0();
      }

      else
      {
      }

      v30 = *(v0 + 136);
      v29 = *(v0 + 144);
      v31 = *(v0 + 128);
      v60 = *(v0 + 112);
      v32 = *(v62 + 104);
      v33 = type metadata accessor for TaskPriority();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = v32;
      *(v37 + 40) = v17;
      *(v37 + 48) = v61;
      *(v37 + 56) = v60;
      *(v37 + 72) = v31;
      outlined init with copy of SpotlightRankingItem?(v29, v30, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v31) = __swift_getEnumTagSinglePayload(v30, 1, v33);
      v0 = v62;

      if (v31 == 1)
      {
        outlined destroy of IntentApplication?(*(v62 + 136), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        v38 = *(*(v33 - 8) + 8);
        v39 = OUTLINED_FUNCTION_107();
        v40(v39);
      }

      v1 = v58;
      v41 = *(v37 + 16);
      if (v41)
      {
        v42 = *(v37 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v43 = v41;
        dispatch thunk of Actor.unownedExecutor.getter();
        OUTLINED_FUNCTION_102_5();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0;
        v42 = 0;
      }

      v44 = **(v62 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMR);
      v45 = (v42 | v43);
      if (v42 | v43)
      {
        v45 = v55;
        *v55 = 0;
        v55[1] = 0;
        *(v62 + 32) = v43;
        *(v62 + 40) = v42;
      }

      v2 = v57;
      v46 = *(v62 + 144);
      *(v62 + 48) = 1;
      *(v62 + 56) = v45;
      *(v62 + 64) = v44;
      swift_task_create();

      v7 = outlined destroy of IntentApplication?(v46, &_sScPSgMd, &_sScPSgMR);
      v6 = v56;
    }

    else
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return MEMORY[0x282200308](v7, v8, v9, v10, v11, v12, v13, v14);
    }

    if (v16 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v16);
    ++v15;
    if (v5)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  v47 = *(v0 + 168);
  v49 = *(v0 + 88);
  v48 = *(v0 + 96);

  v50 = *v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v0 + 176) = MEMORY[0x277D84F90];
  v51 = OUTLINED_FUNCTION_58_8(&lazy protocol witness table cache variable for type ThrowingTaskGroup<[(offset: Int, element: SearchResult, metrics: [IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric])], Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMd, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMR);
  v52 = *(MEMORY[0x277D856D0] + 4);
  v53 = swift_task_alloc();
  *(v0 + 184) = v53;
  *v53 = v0;
  OUTLINED_FUNCTION_44_18(v53);
  v7 = v0 + 72;
  v9 = v51;

  return MEMORY[0x282200308](v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = v3[22];
    (*(v3[20] + 8))(v3[21], v3[19]);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v9 = v0[9];
  v10 = v0[22];
  if (v9)
  {
    v11 = *(v9 + 16);
    v12 = *(v10 + 16);
    if (__OFADD__(v12, v11))
    {
      __break(1u);
    }

    else
    {
      v13 = v0[22];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v0[22];
      if (!isUniquelyReferenced_nonNull_native || v12 + v11 > *(v15 + 24) >> 1)
      {
        v16 = v0[22];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v17;
      }

      if (*(v9 + 16))
      {
        v18 = (*(v15 + 24) >> 1) - *(v15 + 16);
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
        v19 = *(v1 - 8);
        if (v18 >= v11)
        {
          v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
          v21 = *(v19 + 72);
          swift_arrayInitWithCopy();

          if (!v11)
          {
            goto LABEL_15;
          }

          v22 = *(v15 + 16);
          v23 = __OFADD__(v22, v11);
          v24 = v22 + v11;
          if (!v23)
          {
            *(v15 + 16) = v24;
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return MEMORY[0x282200308](v1, v2, v3, v4, v5, v6, v7, v8);
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (!v11)
      {
LABEL_15:
        v0[22] = v15;
        OUTLINED_FUNCTION_58_8(&lazy protocol witness table cache variable for type ThrowingTaskGroup<[(offset: Int, element: SearchResult, metrics: [IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric])], Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMd, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMR);
        v37 = *(MEMORY[0x277D856D0] + 4);
        v38 = swift_task_alloc();
        v0[23] = v38;
        *v38 = v0;
        OUTLINED_FUNCTION_44_18();
        OUTLINED_FUNCTION_204();

        return MEMORY[0x282200308](v1, v2, v3, v4, v5, v6, v7, v8);
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v25 = v0[18];
  v26 = v0[17];
  v27 = v0[10];
  (*(v0[20] + 8))(v0[21], v0[19]);
  *v27 = v10;

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];

  OUTLINED_FUNCTION_127();
  v5 = v0[24];

  return v4();
}

uint64_t closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  *(v8 + 113) = a5;
  *(v8 + 24) = a1;
  v9 = type metadata accessor for TimeoutError();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:), 0, 0);
}

uint64_t closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for perSourceTimeout != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 113);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = static ResultHydrator.perSourceTimeout;
  v7 = swift_allocObject();
  *(v0 + 88) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = *(MEMORY[0x277D61CC0] + 4);

  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMR);
  *v9 = v0;
  v9[1] = closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);
  v11 = *(v0 + 24);
  v12.n128_u64[0] = v6;

  return MEMORY[0x2821C8618](v11, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:), v7, v10, v12);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[11];

    v13 = v3[10];

    OUTLINED_FUNCTION_127();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);

  *(v0 + 16) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v6, static Logging.answerSynthesis);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 113);
      v10 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v10 = 136315394;
      OUTLINED_FUNCTION_98_2();
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v10 + 12) = 2080;
      *(v0 + 112) = v9;
      lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
      dispatch thunk of CustomStringConvertible.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v10 + 14) = v11;
      _os_log_impl(&dword_25D85C000, v7, v8, "%s Timeout while attempting to hydrate results with type: %s", v10, 0x16u);
      OUTLINED_FUNCTION_109_10();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = *(v0 + 40);
    v16 = *(v0 + 24);

    v18 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSay27IntelligencePlatformLibrary0k4FlowH13ToolTelemetryV29AnswerSythesisHydrationMetricVGG_SiAH_AklS7metricsts5NeverOTg506_sSi10g9Search0B6i3V27kl10Library0d4n3B13op3V29qrst65VSiACSayAHGIgynndro_Si6offset_AC7elementt_AHtSiAJ_AckI7metricsts5v220OIegnrzr_TR04_s10a8Search14c89HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27de10Library0n4g3B13hi53V0br6AnswerkC0VztYaKFSaySi6offset_AI7elementSayAN0T23klM78VG7metricstGScgyAWs5C63_pGzYaKXEfU0_AWyYaKcfU_SiAQ_AiruVtSiAQ_AiRt_ATtXEfU0_Tf3nnnpf_nTf1cn_nTm(v17, MEMORY[0x277D84F90], &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR, &_sSi6offset_10OmniSearch0C6ResultV7elementt_27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVtMR);

    *v16 = v18;
    v19 = *(v13 + 8);
    v20 = OUTLINED_FUNCTION_107();
    v21(v20);

    v22 = *(v0 + 80);

    OUTLINED_FUNCTION_127();
  }

  else
  {
    v24 = *(v0 + 80);

    OUTLINED_FUNCTION_127();
    v25 = *(v0 + 104);
  }

  return v23();
}

uint64_t closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 225) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric();
  *(v6 + 64) = v8;
  v9 = *(v8 - 8);
  *(v6 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  *(v6 + 96) = v11;
  v12 = *(v11 - 8);
  *(v6 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v14 = type metadata accessor for SearchResult(0);
  *(v6 + 128) = v14;
  v15 = *(v14 - 8);
  *(v6 + 136) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v17 = type metadata accessor for Date();
  *(v6 + 152) = v17;
  v18 = *(v17 - 8);
  *(v6 + 160) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_133();
  v4 = *(v0 + 225);
  v5 = (*(v3 + 200))();
  v6 = specialized Dictionary.subscript.getter(v4, v5);
  v8 = v7;

  if (v6)
  {
    OUTLINED_FUNCTION_131();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    v10 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *(v0 + 176) = v10;
  *(v0 + 184) = v9;
  v11 = *(**(v0 + 24) + 232);
  v12 = OUTLINED_FUNCTION_99_11();
  if ((v13(v12) & 1) == 0)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v33, static Logging.answerSynthesis);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 225);
      OUTLINED_FUNCTION_51_0();
      v59 = OUTLINED_FUNCTION_163();
      *v1 = 136315138;
      *(v0 + 224) = v36;
      lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
      dispatch thunk of CustomStringConvertible.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v1 + 4) = v37;
      OUTLINED_FUNCTION_126_10(&dword_25D85C000, v34, v35, "We did not get a valid hydration functions for type: %s and return an empty array.");
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_33_0();
    }

    v38 = OUTLINED_FUNCTION_99_11();
    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v38);
    v39 = *(v0 + 168);
    v40 = *(v0 + 144);
    v42 = *(v0 + 112);
    v41 = *(v0 + 120);
    v44 = *(v0 + 80);
    v43 = *(v0 + 88);
    v45 = *(v0 + 56);
    **(v0 + 16) = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v0 + 168);
  result = Date.init()();
  if (v6)
  {
    v16 = *(v0 + 32);
    v17 = *(v16 + 16);
    if (v17)
    {
      v54 = v10;
      v18 = *(v0 + 136);
      v19 = *(v0 + 104);
      v56 = *(v0 + 96);
      v58 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v58;
      v21 = *(v19 + 80);
      OUTLINED_FUNCTION_79();
      v23 = v16 + v22;
      v55 = *(v19 + 72);
      do
      {
        v24 = *(v0 + 144);
        v25 = *(v0 + 112);
        v26 = *(v0 + 120);
        outlined init with copy of SpotlightRankingItem?(v23, v26, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        outlined init with take of SearchResultItem?(v26, v25, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        outlined init with take of SearchResult(v25 + *(v56 + 48), v24);
        v28 = *(v58 + 16);
        v27 = *(v58 + 24);
        if (v28 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v27);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v29 = *(v0 + 144);
        *(v58 + 16) = v28 + 1;
        v30 = *(v18 + 80);
        OUTLINED_FUNCTION_79();
        outlined init with take of SearchResult(v32, v58 + v31 + *(v18 + 72) * v28);
        v23 += v55;
        --v17;
      }

      while (v17);
      v10 = v54;
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    *(v0 + 192) = v20;
    v57 = v10 + *v10;
    v48 = v10[1];
    v49 = swift_task_alloc();
    *(v0 + 200) = v49;
    *v49 = v0;
    v49[1] = closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);
    v50 = *(v0 + 40);
    v51 = *(v0 + 48);
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = v2[25];
  v6 = *v1;
  OUTLINED_FUNCTION_47();
  *v7 = v6;
  *(v9 + 208) = v8;
  *(v9 + 216) = v0;

  v10 = v2[24];
  v11 = v2[23];
  v12 = v2[22];
  if (v0)
  {

    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v12);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v12);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  v68 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_133();
  v4 = (*(v3 + 312))();
  result = IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.init()();
  if ((v4 & 0x80000000) == 0)
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    v8 = *(v0 + 225);
    v9 = *(v0 + 24);
    IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.asHydrationPerContentTypeTime.setter();
    v67[0] = v8;
    (*(*v9 + 240))(v7, v67);
    v10 = *(v6 + 16);
    if (v10)
    {
      v11 = *(v0 + 136);
      v12 = *(v0 + 72);
      v13 = *(v0 + 208) + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v65 = *(v11 + 72);
      v14 = MEMORY[0x277D84F90];
      do
      {
        v15 = *(v0 + 128);
        v17 = *(v0 + 80);
        v16 = *(v0 + 88);
        v19 = *(v0 + 56);
        v18 = *(v0 + 64);
        OUTLINED_FUNCTION_0_49();
        v20 = OUTLINED_FUNCTION_99_11();
        _s10OmniSearch0B6ResultVWOcTm_7(v20, v21, v22);
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v15);
        outlined destroy of IntentApplication?(v19, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        (*(v12 + 16))(v17, v16, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v14 + 16);
          v30 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30, v31, v32, v14);
          v14 = v33;
        }

        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          v34 = OUTLINED_FUNCTION_26_3(v23);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34, v24 + 1, 1, v14);
          v14 = v35;
        }

        v25 = *(v0 + 80);
        v26 = *(v0 + 64);
        *(v14 + 16) = v24 + 1;
        v27 = *(v12 + 80);
        OUTLINED_FUNCTION_79();
        (*(v12 + 32))(v14 + v28 + *(v12 + 72) * v24);
        v13 += v65;
        --v10;
      }

      while (v10);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v37 = *(v0 + 208);
    v36 = *(v0 + 216);
    v38 = *(v0 + 176);
    v39 = *(v0 + 160);
    v66 = *(v0 + 168);
    v63 = *(v0 + 184);
    v64 = *(v0 + 152);
    v40 = *(v0 + 128);
    v62 = *(v0 + 88);
    v42 = *(v0 + 64);
    v41 = *(v0 + 72);
    v43 = *(v0 + 56);
    v44 = *(v0 + 32);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);

    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSayAKGG_Si_AKts5NeverOTg506_sSi10g9Search0B6i48VACSiACIgynndr_Si6offset_AC7elementt_ACtSi_ACts5k195OIegnrzr_TR04_s10a8Search14c151HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27IntelligencePlatformLibrary0n4FlowB13ToolTelemetryV0br6Answerks30VztYaKFSayr64_AI7elementQ114AN0T23SythesisHydrationMetricVG7metricstGScgyAWs5c35_pGzYaKXEfU0_AWyYaKcfU_AWyYaYbKcfU_u4_AItU27AQ_AiRt_AItXEfU0_Tf3nnnpf_nTf1cn_n(v49, v37);
    v51 = v50;

    v52 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSay27IntelligencePlatformLibrary0k4FlowH13ToolTelemetryV29AnswerSythesisHydrationMetricVGG_SiAH_AklS7metricsts5NeverOTg506_sSi10g9Search0B6i3V27kl10Library0d4n3B13op3V29qrst65VSiACSayAHGIgynndro_Si6offset_AC7elementt_AHtSiAJ_AckI7metricsts5v220OIegnrzr_TR04_s10a8Search14c89HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27de10Library0n4g3B13hi53V0br6AnswerkC0VztYaKFSaySi6offset_AI7elementSayAN0T23klM78VG7metricstGScgyAWs5C63_pGzYaKXEfU0_AWyYaKcfU_SiAQ_AiruVtSiAQ_AiRt_ATtXEfU0_Tf3nnnpf_nTf1cn_nTm(v51, v14, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR, &_sSi_10OmniSearch0B6ResultVt_27IntelligencePlatformLibrary0d4FlowB13ToolTelemetryV29AnswerSythesisHydrationMetricVtMd, &_sSi_10OmniSearch0B6ResultVt_27IntelligencePlatformLibrary0d4FlowB13ToolTelemetryV29AnswerSythesisHydrationMetricVtMR);

    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v38);
    (*(v41 + 8))(v62, v42);
    (*(v39 + 8))(v66, v64);

    v53 = *(v0 + 168);
    v54 = *(v0 + 144);
    v56 = *(v0 + 112);
    v55 = *(v0 + 120);
    v58 = *(v0 + 80);
    v57 = *(v0 + 88);
    v59 = *(v0 + 56);
    **(v0 + 16) = v52;

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_15_6();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v13 = v12[23];
  v15 = v12[20];
  v14 = v12[21];
  v17 = v12[18];
  v16 = v12[19];
  v19 = v12[14];
  v18 = v12[15];
  v21 = v12[10];
  v20 = v12[11];
  v22 = v12[7];
  outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v12[22]);
  v23 = *(v15 + 8);
  v24 = OUTLINED_FUNCTION_107();
  v25(v24);

  OUTLINED_FUNCTION_127();
  v26 = v12[27];
  OUTLINED_FUNCTION_63_14();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[4] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error);

  return (v8)(v4 + 5, v4 + 4, v4 + 2);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 40);
    v12 = *(v7 + 8);

    return v12(v11);
  }
}

uint64_t closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);

  return static EventManager.hydrateWithEvents(for:locale:)();
}

uint64_t closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_127();
  return v1();
}

uint64_t ResultHydrator.setASHydrationType(answerSynthesisMetric:resultType:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF35AnswerSynthesisHydrationContentTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF35AnswerSynthesisHydrationContentTypeOSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v15 - v7);
  v9 = *a2;
  if (v9 < 0x1D && ((0x1F47902Fu >> v9) & 1) != 0)
  {
    v10 = qword_2799EE108[*a2];
  }

  else
  {
    *v8 = 0;
    v10 = MEMORY[0x277D1FCD0];
  }

  v11 = *v10;
  v12 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType();
  OUTLINED_FUNCTION_17(v12);
  (*(v13 + 104))(v8, v11, v12);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  return MEMORY[0x25F89EA30](v8);
}

void ResultHydrator.segmentResultsForHydration(_:)(void *a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v8 = OUTLINED_FUNCTION_14(v7);
  v161 = v9;
  v162 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39_0();
  v156 = v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_4();
  v160 = v20;
  OUTLINED_FUNCTION_174();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v146 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_2();
  v159 = v25;
  v26 = specialized _copySequenceToContiguousArray<A>(_:)(a3);
  v27 = v26;
  v154 = v3;
  v28 = *(v3 + 16);
  v29 = *(v26 + 16);
  if (v29 >= v28)
  {
    v30 = *(v3 + 16);
  }

  else
  {
    v30 = *(v26 + 16);
  }

  v163 = specialized Array.subscript.getter(v30, v29, v26);
  v171 = v163;
  v172 = v31;
  v173 = v32;
  v174 = v33;
  if (v28 < 0)
  {
    goto LABEL_114;
  }

  v34 = v31;
  v35 = v32;
  v36 = v33;
  v166 = v24;
  v37 = specialized Array.subscript.getter(0, v30, v27);
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v45 = v43 >> 1;
  v155 = v34;
  if (v43 >> 1 == v41)
  {
    swift_unknownObjectRelease();
    v46 = MEMORY[0x277D84F90];
LABEL_97:
    v140 = OUTLINED_FUNCTION_94();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v140, v141);
    a1[4] = lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: SearchResult)] and conformance [A], &_sSaySi6offset_10OmniSearch0C6ResultV7elementtGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementtGMR);
    *a1 = v46;
    v142 = OUTLINED_FUNCTION_94();
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v142, v143);
    a2[4] = lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type ArraySlice<(offset: Int, element: SearchResult)> and conformance ArraySlice<A>, &_ss10ArraySliceVySi6offset_10OmniSearch0E6ResultV7elementtGMd, &_ss10ArraySliceVySi6offset_10OmniSearch0E6ResultV7elementtGMR);
    v144 = swift_allocObject();
    *a2 = v144;
    v145 = v155;
    v144[2] = v163;
    v144[3] = v145;
    v144[4] = v35;
    v144[5] = v36;
    return;
  }

  v47 = v45 - v41;
  if (v45 <= v41)
  {
    goto LABEL_115;
  }

  v146 = a1;
  v147 = a2;
  v48 = *(v161 + 72);
  v150 = "ResultHydrator.fetchFullContent";
  v49 = v39 + v41 * v48;
  v50 = v162;
  v158 = *(v162 + 48);
  *&v44 = 136315394;
  v149 = v44;
  v152 = MEMORY[0x277D84F90];
  v51 = v166;
  v157 = v37;
  v165 = v48;
  while (1)
  {
    v167 = v47;
    v52 = v159;
    outlined init with copy of SpotlightRankingItem?(v49, v159, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v53 = *(v50 + 48);
    *v51 = *v52;
    outlined init with take of SearchResult(v52 + v158, v51 + v53);
    v54 = v160;
    outlined init with copy of SpotlightRankingItem?(v51, v160, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v55 = v54 + *(v50 + 48);
    LODWORD(v54) = *(type metadata accessor for SearchResult(0) + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v56 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_3_37();
    _s10OmniSearch0B6ResultVWOhTm_6(v55, v57);
    v58 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v56);
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xE000000000000000;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logging.answerSynthesis);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    v65 = OUTLINED_FUNCTION_42_15();
    v164 = v35;
    if (v65)
    {
      v66 = OUTLINED_FUNCTION_90_1();
      a2 = OUTLINED_FUNCTION_260();
      v170[0] = a2;
      *v66 = v149;
      *(v66 + 4) = OUTLINED_FUNCTION_86_12();
      *(v66 + 12) = 2080;
      *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v63, v64, "%s bundleId: %s", v66, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_52_16();
    }

    v67 = HIBYTE(v61) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v67 = v60 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v36 >> 1;
    if (!v67)
    {
      break;
    }

    v170[0] = v60;
    v170[1] = v61;
    v168 = 0x6C7070612E6D6F63;
    v169 = 0xEA00000000002E65;
    v68 = lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    if (BidirectionalCollection<>.starts<A>(with:)())
    {
      break;
    }

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();

    if (OUTLINED_FUNCTION_42_15())
    {
      v88 = OUTLINED_FUNCTION_90_1();
      v68 = OUTLINED_FUNCTION_260();
      v170[0] = v68;
      *v88 = v149;
      *(v88 + 4) = OUTLINED_FUNCTION_86_12();
      *(v88 + 12) = 2080;
      a2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v88 + 14) = a2;
      _os_log_impl(&dword_25D85C000, v86, v87, "%s Skip hydration for this 3p bundleId: %s", v88, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_52_16();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v113 = v163;
    OUTLINED_FUNCTION_113_10(v175);
    outlined init with copy of SpotlightRankingItem?(v114, v115, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v50 = v162;
    v116 = *(v162 + 48);
    OUTLINED_FUNCTION_106_9(*v68);
    if ((v36 & 1) == 0 || (isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), v171 = v113, (isUniquelyReferenced_nonNull & 1) == 0))
    {
      if (__OFSUB__(v35, v164))
      {
        goto LABEL_108;
      }

      specialized ArraySlice._copyToNewBuffer(oldCount:)(v35 - v164);
    }

    OUTLINED_FUNCTION_112_12();
    v118 = a2 - v35;
    v119 = __OFSUB__(a2, v35);
    if (__OFSUB__(a2, v35))
    {
      goto LABEL_102;
    }

    v120 = a2 - v35;
    if (v36)
    {
      v121 = v171;
      type metadata accessor for __ContiguousArrayStorageBase();
      OUTLINED_FUNCTION_112_2();
      swift_unknownObjectRetain();
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }

      v122 = *(v161 + 80);
      OUTLINED_FUNCTION_79();
      v124 = OUTLINED_FUNCTION_67_14(v123);
      if (v101)
      {
        v125 = *(v124 + 24);

        v126 = (v125 >> 1) - v121;
        v104 = __OFADD__(v118, v126);
        v120 = &v118[v126];
        if (v104)
        {
          goto LABEL_113;
        }
      }

      else
      {

        v120 = a2 - v35;
      }
    }

    v127 = v118 + 1;
    if (v120 < (v118 + 1))
    {
      specialized ArraySlice._copyToNewBuffer(oldCount:)(a2 - v35);
      OUTLINED_FUNCTION_112_12();
      v128 = a2 - v35;
      if (__OFSUB__(a2, v35))
      {
        goto LABEL_103;
      }
    }

    else
    {
      v128 = a2 - v35;
      if (v119)
      {
        goto LABEL_103;
      }
    }

    v85 = v127 - v128;
    if (__OFSUB__(v127, v128))
    {
      goto LABEL_104;
    }

    v163 = v171;
    if (v85)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      v129 = swift_dynamicCastClass();
      if (!v129)
      {
        swift_unknownObjectRelease();
        v129 = MEMORY[0x277D84F90];
      }

      v130 = *(v129 + 16);
      v104 = __OFADD__(v130, v85);
      v131 = v130 + v85;
      if (v104)
      {
        goto LABEL_109;
      }

      *(v129 + 16) = v131;

      v132 = a2 + v85;
      if (__OFADD__(a2, v85))
      {
        goto LABEL_110;
      }

      if ((v132 & 0x8000000000000000) != 0)
      {
        goto LABEL_111;
      }

      v36 = v36 & 1 | (2 * v132);
      v174 = v36;
    }

    OUTLINED_FUNCTION_92_9();
    v112 = v151;
LABEL_84:
    outlined init with take of SearchResultItem?(v112, v111, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v51 = v166;
    v133 = OUTLINED_FUNCTION_64_0();
    outlined destroy of IntentApplication?(v133, v134, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
LABEL_85:
    v49 += v85;
    v47 = v167 - 1;
    if (v167 == 1)
    {
      swift_unknownObjectRelease();
      a2 = v147;
      a1 = v146;
      v46 = v152;
      goto LABEL_97;
    }
  }

  v51 = v166;
  a2 = v153;
  outlined init with copy of SpotlightRankingItem?(v166, v153, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v50 = v162;
  v69 = *(v162 + 48);
  SearchResultItem.type.getter(v170);
  v70 = v170[0];
  OUTLINED_FUNCTION_3_37();
  _s10OmniSearch0B6ResultVWOhTm_6(v69 + a2, v71);
  OUTLINED_FUNCTION_133();
  if (*((*(v72 + 200))() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v70);
    v69 = v73;

    if (v69)
    {
      OUTLINED_FUNCTION_113_10(&v174);
      outlined init with copy of SpotlightRankingItem?(v74, v75, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v76 = *(v50 + 48);
      OUTLINED_FUNCTION_106_9(*v69);
      v77 = v152;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = *(v77 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v77 = v138;
      }

      v35 = v164;
      v152 = v77;
      v79 = *(v77 + 16);
      v78 = *(v77 + 24);
      if (v79 >= v78 >> 1)
      {
        OUTLINED_FUNCTION_22_5(v78);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v152 = v139;
      }

      v80 = OUTLINED_FUNCTION_64_0();
      a2 = &_sSi6offset_10OmniSearch0C6ResultV7elementtMR;
      outlined destroy of IntentApplication?(v80, v81, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      *(v152 + 16) = v79 + 1;
      v82 = *(v161 + 80);
      OUTLINED_FUNCTION_79();
      v85 = v165;
      outlined init with take of SearchResultItem?(v148, v84 + v83 + v79 * v165, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      goto LABEL_85;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_113_10(&v176);
  outlined init with copy of SpotlightRankingItem?(v89, v90, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v91 = *(v50 + 48);
  OUTLINED_FUNCTION_106_9(*v69);
  if ((v36 & 1) == 0 || (v92 = v163, v93 = swift_isUniquelyReferenced_nonNull(), v171 = v92, (v93 & 1) == 0))
  {
    if (__OFSUB__(v35, v164))
    {
      goto LABEL_101;
    }

    specialized ArraySlice._copyToNewBuffer(oldCount:)(v35 - v164);
  }

  OUTLINED_FUNCTION_112_12();
  v94 = a2 - v35;
  v95 = __OFSUB__(a2, v35);
  if (!__OFSUB__(a2, v35))
  {
    v96 = a2 - v35;
    if (v36)
    {
      v97 = v171;
      type metadata accessor for __ContiguousArrayStorageBase();
      OUTLINED_FUNCTION_112_2();
      swift_unknownObjectRetain();
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }

      v98 = *(v161 + 80);
      OUTLINED_FUNCTION_79();
      v100 = OUTLINED_FUNCTION_67_14(v99);
      if (v101)
      {
        v102 = *(v100 + 24);

        v103 = (v102 >> 1) - v97;
        v104 = __OFADD__(v94, v103);
        v96 = &v94[v103];
        if (v104)
        {
          goto LABEL_112;
        }
      }

      else
      {

        v96 = a2 - v35;
      }
    }

    v105 = v94 + 1;
    if (v96 < (v94 + 1))
    {
      specialized ArraySlice._copyToNewBuffer(oldCount:)(a2 - v35);
      OUTLINED_FUNCTION_112_12();
      v106 = a2 - v35;
      if (__OFSUB__(a2, v35))
      {
        goto LABEL_99;
      }
    }

    else
    {
      v106 = a2 - v35;
      if (v95)
      {
        goto LABEL_99;
      }
    }

    v85 = v105 - v106;
    if (__OFSUB__(v105, v106))
    {
      goto LABEL_100;
    }

    v163 = v171;
    if (v85)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      v107 = swift_dynamicCastClass();
      if (!v107)
      {
        swift_unknownObjectRelease();
        v107 = MEMORY[0x277D84F90];
      }

      v108 = *(v107 + 16);
      v104 = __OFADD__(v108, v85);
      v109 = v108 + v85;
      if (v104)
      {
        goto LABEL_105;
      }

      *(v107 + 16) = v109;

      v110 = a2 + v85;
      if (__OFADD__(a2, v85))
      {
        goto LABEL_106;
      }

      if ((v110 & 0x8000000000000000) != 0)
      {
        goto LABEL_107;
      }

      v36 = v36 & 1 | (2 * v110);
      v174 = v36;
    }

    OUTLINED_FUNCTION_92_9();
    v112 = v156;
    goto LABEL_84;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
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
}

uint64_t ResultHydrator.runDataDetectorsOnResults(_:locale:)(uint64_t a1, uint64_t a2, void *a3)
{
  v232 = a3;
  v243 = type metadata accessor for MobileSMSDocument();
  v6 = OUTLINED_FUNCTION_14(v243);
  v230 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v242 = (v11 - v10);
  OUTLINED_FUNCTION_78_0();
  v241 = type metadata accessor for EmailDocument();
  v12 = OUTLINED_FUNCTION_14(v241);
  v229 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v240 = (v17 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v19 = OUTLINED_FUNCTION_114(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v239 = &v213 - v22;
  OUTLINED_FUNCTION_78_0();
  v247 = type metadata accessor for DataDetectorResults();
  v23 = OUTLINED_FUNCTION_14(v247);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v30 = &v213 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v213 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v213 - v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  v246 = v40;
  OUTLINED_FUNCTION_78_0();
  v245 = type metadata accessor for CalendarEvent();
  v41 = OUTLINED_FUNCTION_14(v245);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_36();
  v244 = (v47 - v46);
  v48 = OUTLINED_FUNCTION_78_0();
  v253 = type metadata accessor for SearchResultItem(v48);
  v49 = OUTLINED_FUNCTION_17(v253);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_14_2();
  v248 = v53;
  v54 = OUTLINED_FUNCTION_78_0();
  v55 = type metadata accessor for SearchResult(v54);
  v56 = OUTLINED_FUNCTION_21(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39_0();
  v254 = v61;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  v66 = MEMORY[0x28223BE20](v65);
  v68 = &v213 - v67;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_14_2();
  v251 = v69;
  v70 = *(v3 + 88);
  OUTLINED_FUNCTION_133();
  if ((*(v71 + 80))(2))
  {
    v226 = v36;
    type metadata accessor for DataDetectorsController();
    swift_allocObject();
    v72 = DataDetectorsController.init()();
    v73 = *(a1 + 16);
    if (v73)
    {
      v233 = v72;
      v227 = v33;
      v218 = v30;
      v225 = a2;
      v74 = *(v58 + 80);
      OUTLINED_FUNCTION_79();
      v250 = v75;
      v76 = a1 + v75;
      v249 = *(v58 + 72);
      v224 = v43 + 32;
      v228 = (v25 + 16);
      v252 = (v25 + 8);
      v223 = v43 + 16;
      v222 = v43 + 8;
      v221 = v230 + 32;
      v217 = v230 + 16;
      v220 = v230 + 8;
      v219 = v229 + 32;
      v216 = v229 + 16;
      v229 += 8;
      a1 = MEMORY[0x277D84F90];
      v77 = v248;
      v78 = v251;
      do
      {
        _s10OmniSearch0B6ResultVWOcTm_7(v76, v78, type metadata accessor for SearchResult);
        _s10OmniSearch0B6ResultVWOcTm_7(v78, v68, type metadata accessor for SearchResult);
        swift_beginAccess();
        OUTLINED_FUNCTION_5_30();
        _s10OmniSearch0B6ResultVWOcTm_7(v68, v77, v79);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v81 = &loc_25DBC7000;
        v78 = v252 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            OUTLINED_FUNCTION_57_11(&v252);
            v107 = v242;
            v128(v242, v77, v243);
            NoteDocument.folderName.getter();
            if (v129)
            {
              v130 = v129;
              OUTLINED_FUNCTION_133();
              (*(v131 + 96))();

              OUTLINED_FUNCTION_109_11();
              if (!v91)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v132 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v132, static Logging.answerSynthesis);
              v133 = *v228;
              v134 = v218;
              OUTLINED_FUNCTION_116_6();
              v230 = v135;
              v135();
              v136 = Logger.logObject.getter();
              v137 = static os_log_type_t.info.getter();
              if (OUTLINED_FUNCTION_75_11(v137))
              {
                v214 = OUTLINED_FUNCTION_51_0();
                v215 = OUTLINED_FUNCTION_49_0();
                v257 = v215;
                OUTLINED_FUNCTION_54_16(4.9654e-34);
                OUTLINED_FUNCTION_213_0();
                v138();
                v213 = String.init<A>(describing:)();
                v81 = *v252;
                (*v252)(v134, v247);
                v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                v140 = v214;
                *(v214 + 4) = v139;
                OUTLINED_FUNCTION_55_13();
                _os_log_impl(v141, v142, v143, v144, v140, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v215);
                OUTLINED_FUNCTION_42_0();
                v130 = v247;
                OUTLINED_FUNCTION_42_0();
              }

              else
              {

                v81 = *v252;
                (*v252)(v134, v130);
              }

              v77 = v248;
              v169 = v227;
              OUTLINED_FUNCTION_213_0();
              v170();
              OUTLINED_FUNCTION_73_10();
              v107 = v242;
              MobileSMSDocument.dataDetectorResults.setter();
              (v81)(v169, v130);
              OUTLINED_FUNCTION_57_11(&v248);
              v171 = OUTLINED_FUNCTION_119_6();
              v172(v171);
              swift_storeEnumTagMultiPayload();
              outlined assign with take of SearchResultItem(v130, v68);
            }

            OUTLINED_FUNCTION_0_49();
            _s10OmniSearch0B6ResultVWOcTm_7(v68, v237, v173);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v203 = *(a1 + 16);
              v204 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v204, v205, v206, a1);
              a1 = v207;
            }

            OUTLINED_FUNCTION_56_12();
            if (v159)
            {
              v208 = OUTLINED_FUNCTION_22_5(v174);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v208, v209, v210, a1);
              a1 = v211;
            }

            OUTLINED_FUNCTION_57_11(&v251);
            v175(v242, v243);
            v161 = &v261;
            goto LABEL_79;
          case 2:
            OUTLINED_FUNCTION_57_11(v255);
            v86(v244, v77, v245);
            v87.value._countAndFlagsBits = v225;
            v87.value._object = v232;
            object = CalendarEvent.llmConsumableDescription(locale:)(v87)._object;
            OUTLINED_FUNCTION_133();
            v90 = v246;
            (*(v89 + 96))();

            OUTLINED_FUNCTION_109_11();
            if (!v91)
            {
              OUTLINED_FUNCTION_0_5();
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v92, static Logging.answerSynthesis);
            v93 = *v228;
            v94 = v231;
            OUTLINED_FUNCTION_116_6();
            v95();
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_75_11(v97))
            {
              v98 = OUTLINED_FUNCTION_51_0();
              v214 = OUTLINED_FUNCTION_49_0();
              v257 = v214;
              v99 = OUTLINED_FUNCTION_54_16(4.9654e-34);
              (v90)(v99, v94, v247);
              String.init<A>(describing:)();
              v215 = v90;
              v81 = v100;
              v230 = *v252;
              (v230)(v94, v247);
              v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v98 + 4) = v101;
              OUTLINED_FUNCTION_55_13();
              _os_log_impl(v102, v103, v104, v105, v98, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v214);
              OUTLINED_FUNCTION_37_0();
              object = v247;
              OUTLINED_FUNCTION_42_0();

              v106 = v215;
            }

            else
            {

              v230 = *v252;
              (v230)(v94, object);
              v106 = v90;
            }

            v77 = v248;
            (v106)(v239, v246, object);
            OUTLINED_FUNCTION_73_10();
            v107 = v244;
            CalendarEvent.dataDetectorResults.setter();
            OUTLINED_FUNCTION_57_11(&v254);
            v78 = v238;
            v156(v238, v107, v245);
            swift_storeEnumTagMultiPayload();
            outlined assign with take of SearchResultItem(v78, v68);
            OUTLINED_FUNCTION_0_49();
            _s10OmniSearch0B6ResultVWOcTm_7(v68, v235, v157);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v185 = *(a1 + 16);
              v186 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v186, v187, v188, a1);
              a1 = v189;
            }

            OUTLINED_FUNCTION_56_12();
            if (v159)
            {
              v190 = OUTLINED_FUNCTION_22_5(v158);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v190, v191, v192, a1);
              a1 = v193;
            }

            (v230)(v246, object);
            OUTLINED_FUNCTION_57_11(&v253);
            v160(v244, v245);
            v161 = &v259;
            goto LABEL_79;
          case 3:
            v84 = type metadata accessor for Photo();
            goto LABEL_47;
          case 4:
            v84 = type metadata accessor for NoteDocument();
            goto LABEL_47;
          case 5:
            v84 = type metadata accessor for Reminder();
            goto LABEL_47;
          case 6:
            v84 = type metadata accessor for PhoneHistory();
            goto LABEL_47;
          case 7:
            v84 = type metadata accessor for VoicemailTranscript();
            goto LABEL_47;
          case 8:
            v84 = type metadata accessor for JournalEntry();
            goto LABEL_47;
          case 9:
            v84 = type metadata accessor for VoiceMemo();
            goto LABEL_47;
          case 10:
            v84 = type metadata accessor for Safari();
            goto LABEL_47;
          case 11:
            v84 = type metadata accessor for FileDocument();
            goto LABEL_47;
          case 12:
            v84 = type metadata accessor for WalletTransaction();
            goto LABEL_47;
          case 13:
            v84 = type metadata accessor for WalletPass();
            goto LABEL_47;
          case 14:
            v84 = type metadata accessor for Contact();
            goto LABEL_47;
          case 15:
            v84 = type metadata accessor for Appointment();
            goto LABEL_47;
          case 16:
            v83 = *(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48));

            v84 = type metadata accessor for FlightReservation();
            goto LABEL_47;
          case 17:
            v84 = type metadata accessor for HotelReservation();
            goto LABEL_47;
          case 18:
            v84 = type metadata accessor for Party();
            goto LABEL_47;
          case 19:
            v84 = type metadata accessor for RestaurantReservation();
            goto LABEL_47;
          case 20:
            v84 = type metadata accessor for RentalCarReservation();
            goto LABEL_47;
          case 21:
            v84 = type metadata accessor for ShippingOrder();
            goto LABEL_47;
          case 22:
            v84 = type metadata accessor for TicketedTransportation();
            goto LABEL_47;
          case 23:
            v84 = type metadata accessor for TicketedShow();
            goto LABEL_47;
          case 24:
            v84 = type metadata accessor for Trip();
            goto LABEL_47;
          case 25:
            v85 = *(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48));

            v82 = type metadata accessor for GlobalItem;
            goto LABEL_45;
          case 26:
          case 27:
            v82 = type metadata accessor for SearchResultItem;
            goto LABEL_45;
          case 28:
            v82 = type metadata accessor for Answer;
LABEL_45:
            _s10OmniSearch0B6ResultVWOhTm_6(v77, v82);
            goto LABEL_48;
          case 29:
            v84 = type metadata accessor for OnScreen();
            goto LABEL_47;
          case 30:
            v84 = type metadata accessor for GenericSpotlightItem();
LABEL_47:
            OUTLINED_FUNCTION_17(v84);
            (*(v145 + 8))(v77);
LABEL_48:
            OUTLINED_FUNCTION_109_11();
            if (!v91)
            {
              OUTLINED_FUNCTION_0_5();
              swift_once();
            }

            v146 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v146, static Logging.answerSynthesis);
            v147 = Logger.logObject.getter();
            v148 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v147, v148))
            {
              v149 = OUTLINED_FUNCTION_51_0();
              v150 = OUTLINED_FUNCTION_49_0();
              v257 = v150;
              *v149 = 136315138;
              SearchResultItem.type.getter(&v256);
              v255[6] = v256;
              lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
              dispatch thunk of CustomStringConvertible.description.getter();
              v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v149 + 4) = v151;
              _os_log_impl(&dword_25D85C000, v147, v148, "Skip running dd on %s", v149, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v150);
              OUTLINED_FUNCTION_42_0();
              v77 = v248;
              OUTLINED_FUNCTION_42_0();
            }

            v78 = v251;
            OUTLINED_FUNCTION_0_49();
            _s10OmniSearch0B6ResultVWOcTm_7(v78, v254, v152);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v176 = *(a1 + 16);
              v177 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v177, v178, v179, a1);
              a1 = v180;
            }

            v81 = *(a1 + 16);
            v153 = *(a1 + 24);
            v107 = (v81 + 1);
            if (v81 >= v153 >> 1)
            {
              v181 = OUTLINED_FUNCTION_22_5(v153);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v181, v182, v183, a1);
              a1 = v184;
            }

            v154 = v254;
            break;
          default:
            OUTLINED_FUNCTION_57_11(&v250);
            v107 = v240;
            v108(v240, v77, v241);
            NoteDocument.folderName.getter();
            if (v109)
            {
              OUTLINED_FUNCTION_133();
              v111 = v234;
              (*(v110 + 96))();

              OUTLINED_FUNCTION_109_11();
              v112 = v111;
              if (!v91)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v113 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v113, static Logging.answerSynthesis);
              v114 = v226;
              v115 = v112;
              v116 = v247;
              v230 = *v228;
              (v230)(v226, v115, v247);
              v117 = Logger.logObject.getter();
              v118 = static os_log_type_t.info.getter();
              if (OUTLINED_FUNCTION_75_11(v118))
              {
                v214 = OUTLINED_FUNCTION_51_0();
                v215 = OUTLINED_FUNCTION_49_0();
                v257 = v215;
                OUTLINED_FUNCTION_54_16(4.9654e-34);
                OUTLINED_FUNCTION_213_0();
                v119();
                v213 = String.init<A>(describing:)();
                v120 = *v252;
                (*v252)(v114, v247);
                v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                *(v214 + 4) = v121;
                v122 = v120;
                OUTLINED_FUNCTION_55_13();
                _os_log_impl(v123, v124, v125, v126, v127, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v215);
                OUTLINED_FUNCTION_42_0();
                v116 = v247;
                OUTLINED_FUNCTION_42_0();
              }

              else
              {

                v162 = v114;
                v122 = *v252;
                (*v252)(v162, v116);
              }

              v81 = v234;
              OUTLINED_FUNCTION_213_0();
              v163();
              OUTLINED_FUNCTION_73_10();
              v107 = v240;
              EmailDocument.dataDetectorResults.setter();
              v122(v81, v116);
              OUTLINED_FUNCTION_57_11(&v247);
              v164 = OUTLINED_FUNCTION_119_6();
              v165(v164);
              swift_storeEnumTagMultiPayload();
              outlined assign with take of SearchResultItem(v116, v68);
              v77 = v248;
            }

            OUTLINED_FUNCTION_0_49();
            _s10OmniSearch0B6ResultVWOcTm_7(v68, v236, v166);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v194 = *(a1 + 16);
              v195 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v195, v196, v197, a1);
              a1 = v198;
            }

            OUTLINED_FUNCTION_56_12();
            if (v159)
            {
              v199 = OUTLINED_FUNCTION_22_5(v167);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v199, v200, v201, a1);
              a1 = v202;
            }

            OUTLINED_FUNCTION_57_11(v258);
            v168(v240, v241);
            v161 = &v260;
LABEL_79:
            v154 = *(v161 - 32);
            break;
        }

        _s10OmniSearch0B6ResultVWOhTm_6(v78, type metadata accessor for SearchResult);
        *(a1 + 16) = v107;
        v155 = v249;
        outlined init with take of SearchResult(v154, a1 + v250 + v81 * v249);
        _s10OmniSearch0B6ResultVWOhTm_6(v68, type metadata accessor for SearchResult);
        v76 += v155;
        --v73;
      }

      while (v73);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
  }

  return a1;
}

uint64_t ResultHydrator.fetchFullContentForMailResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v2 = type metadata accessor for OSSignpostID();
  v0[3] = v2;
  OUTLINED_FUNCTION_21(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_160();
  v0[6] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v5[10] = v0;

  if (!v0)
  {
    v11 = v5[8];

    v5[11] = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[6];
  v2 = v0[5];
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v0[7], "ResultHydrator.fetchFullContentForMailResults");

  OUTLINED_FUNCTION_62();
  v4 = v0[11];

  return v3(v4);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v2, "ResultHydrator.fetchFullContentForMailResults");

  OUTLINED_FUNCTION_127();
  v6 = v0[10];

  return v5();
}

uint64_t ResultHydrator.fetchFullContentForPhotosResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v55 = *MEMORY[0x277D85DE8];
  v1[26] = v2;
  v1[27] = v0;
  v3 = type metadata accessor for SpotlightRankingItem();
  v1[28] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[29] = v4;
  v6 = *(v5 + 64);
  v1[30] = OUTLINED_FUNCTION_199();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  v1[31] = OUTLINED_FUNCTION_160();
  v1[32] = swift_task_alloc();
  v10 = type metadata accessor for SearchResultItem(0);
  v1[33] = v10;
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  v1[34] = OUTLINED_FUNCTION_160();
  v1[35] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  v1[36] = OUTLINED_FUNCTION_199();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v16);
  v18 = *(v17 + 64);
  v1[37] = OUTLINED_FUNCTION_199();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v19);
  v21 = *(v20 + 64);
  v1[38] = OUTLINED_FUNCTION_199();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v22);
  v24 = *(v23 + 64);
  v1[39] = OUTLINED_FUNCTION_199();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v25);
  v27 = *(v26 + 64);
  v1[40] = OUTLINED_FUNCTION_160();
  v1[41] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v28);
  v30 = *(v29 + 64);
  v1[42] = OUTLINED_FUNCTION_160();
  v1[43] = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PhotoVSgMd, &_s15OmniSearchTypes5PhotoVSgMR);
  OUTLINED_FUNCTION_114(v31);
  v33 = *(v32 + 64);
  v1[44] = OUTLINED_FUNCTION_199();
  v34 = type metadata accessor for Photo();
  v1[45] = v34;
  OUTLINED_FUNCTION_21(v34);
  v1[46] = v35;
  v37 = *(v36 + 64);
  v1[47] = OUTLINED_FUNCTION_160();
  v1[48] = swift_task_alloc();
  v38 = type metadata accessor for IndexSet();
  v1[49] = v38;
  OUTLINED_FUNCTION_21(v38);
  v1[50] = v39;
  v41 = *(v40 + 64);
  v1[51] = OUTLINED_FUNCTION_199();
  v42 = type metadata accessor for SearchResult(0);
  v1[52] = v42;
  OUTLINED_FUNCTION_21(v42);
  v1[53] = v43;
  v45 = *(v44 + 64);
  v1[54] = OUTLINED_FUNCTION_160();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v46 = type metadata accessor for OSSignpostID();
  v1[59] = v46;
  OUTLINED_FUNCTION_21(v46);
  v1[60] = v47;
  v49 = *(v48 + 64);
  v1[61] = OUTLINED_FUNCTION_160();
  v1[62] = swift_task_alloc();
  v50 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v51, v52, v53);
}

uint64_t ResultHydrator.fetchFullContentForPhotosResults(_:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v514 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for searchSignposter != -1)
  {
    goto LABEL_124;
  }

  while (1)
  {
    v13 = *(v12 + 496);
    v14 = type metadata accessor for OSSignposter();
    OUTLINED_FUNCTION_200(v14, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v15 = OSSignposter.logHandle.getter();
    static os_signpost_type_t.begin.getter();
    if (OUTLINED_FUNCTION_190_6())
    {
      v16 = *(v12 + 496);
      v17 = OUTLINED_FUNCTION_172();
      v18 = OUTLINED_FUNCTION_159_5(v17);
      OUTLINED_FUNCTION_193(&dword_25D85C000, v19, v20, v18, "ResultHydrator.fetchFullContentForPhotosResults", "");
      OUTLINED_FUNCTION_37_0();
    }

    v21 = *(v12 + 488);
    v22 = *(v12 + 496);
    v23 = *(v12 + 472);
    v24 = *(v12 + 480);
    v25 = v12;
    v26 = *(v12 + 208);

    v27 = OUTLINED_FUNCTION_59_12(v24);
    v28(v27, v22, v23);
    v29 = type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_170(v29);
    OUTLINED_FUNCTION_45_4();
    v471 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v24 + 8))(v22, v23);
    v30 = *(v26 + 16);
    v31 = MEMORY[0x277D84F90];
    v505 = v12;
    v494 = v30;
    if (v30)
    {
      v32 = *(v12 + 424);
      v33 = *(v25 + 208);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v34 = v31;
      v35 = *(v32 + 80);
      OUTLINED_FUNCTION_79();
      v37 = v33 + v36;
      v38 = *(v32 + 72);
      do
      {
        v39 = v505[58];
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_7(v37, v39, v40);
        SearchResultItem.associatedValue.getter(v505 + 2);
        v41 = v505[6];
        __swift_project_boxed_opaque_existential_1(v505 + 2, v505[5]);
        v42 = *(v41 + 32);
        v43 = OUTLINED_FUNCTION_54_0();
        v45 = v44(v43);
        v47 = v46;
        OUTLINED_FUNCTION_3_37();
        _s10OmniSearch0B6ResultVWOhTm_6(v39, v48);
        __swift_destroy_boxed_opaque_existential_1Tm(v505 + 2);
        v50 = *(v31 + 16);
        v49 = *(v31 + 24);
        if (v50 >= v49 >> 1)
        {
          v52 = OUTLINED_FUNCTION_26_3(v49);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52, v50 + 1, 1);
        }

        *(v31 + 16) = v50 + 1;
        v51 = v31 + 16 * v50;
        *(v51 + 32) = v45;
        *(v51 + 40) = v47;
        v37 += v38;
        --v30;
      }

      while (v30);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    v53 = [objc_allocWithZone(MEMORY[0x277CD9880]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_25DBC8180;
    v55 = *MEMORY[0x277CD9A68];
    *(v54 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v54 + 40) = v56;
    v57 = OUTLINED_FUNCTION_107();
    outlined bridged method (mbnn) of @objc PHFetchOptions.addFetchPropertySets(_:)(v57, v58);
    v59 = objc_opt_self();
    v60 = &off_2799EF000;
    v499 = v34;
    v472 = v53;
    if ([v59 isMultiLibraryModeEnabled])
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Logging.answerSynthesis);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_11(v63))
      {
        v64 = OUTLINED_FUNCTION_51_0();
        v507 = OUTLINED_FUNCTION_49_0();
        *v64 = 136315138;
        *(v64 + 4) = OUTLINED_FUNCTION_81_13();
        OUTLINED_FUNCTION_76_11(&dword_25D85C000, v65, v66, "%s Multi Library mode enabled");
        __swift_destroy_boxed_opaque_existential_1Tm(v507);
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_42_0();
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_11(v68))
      {
        v69 = OUTLINED_FUNCTION_51_0();
        v508 = OUTLINED_FUNCTION_49_0();
        *v69 = 136315138;
        OUTLINED_FUNCTION_98_2();
        *(v69 + 4) = OUTLINED_FUNCTION_81_13();
        OUTLINED_FUNCTION_76_11(&dword_25D85C000, v70, v71, "%s Fetching from system library");
        __swift_destroy_boxed_opaque_existential_1Tm(v508);
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_42_0();
      }

      v505[24] = 0;
      v72 = [v59 openPhotoLibraryWithWellKnownIdentifier:1 error:v505 + 24];
      v73 = v505[24];
      if (!v72)
      {
        v124 = v73;
        v125 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v110 = MEMORY[0x277D84F90];
LABEL_29:
        v127 = v125;
        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = OUTLINED_FUNCTION_90_1();
          swift_slowAlloc();
          v510 = OUTLINED_FUNCTION_163();
          *v130 = 136315394;
          OUTLINED_FUNCTION_98_2();
          *(v130 + 4) = OUTLINED_FUNCTION_81_13();
          *(v130 + 12) = 2112;
          v131 = v125;
          v132 = _swift_stdlib_bridgeErrorToNSError();
          *(v130 + 14) = v132;
          *v60 = v132;
          OUTLINED_FUNCTION_115_8();
          _os_log_impl(v133, v134, v135, v136, v137, 0x16u);
          outlined destroy of IntentApplication?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_33_0();
          __swift_destroy_boxed_opaque_existential_1Tm(v510);
          OUTLINED_FUNCTION_72_9();
          OUTLINED_FUNCTION_52_16();
        }

        else
        {
        }

        v109 = v505;
        goto LABEL_33;
      }

      v74 = v72;
      v75 = v73;
      [v53 setPhotoLibrary_];

      v76 = objc_opt_self();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v78 = v53;
      v79 = [v76 fetchAssetsWithLocalIdentifiers:isa options:v78];

      if (([v79 &selRef_visibleForUse_] & 0x8000000000000000) != 0)
      {
        goto LABEL_126;
      }

      v81 = v505[50];
      v80 = v505[51];
      v82 = v505[49];
      IndexSet.init(integersIn:)();
      IndexSet._bridgeToObjectiveC()(v83);
      v85 = v84;
      v86 = *(v81 + 8);
      v87 = OUTLINED_FUNCTION_100_4();
      v86(v87);
      v88 = [v79 objectsAtIndexes_];

      v60 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for PHAsset, 0x277CD97A8);
      v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v506 = v89;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.debug.getter();
      v479 = v89;
      if (OUTLINED_FUNCTION_16_11(v91))
      {
        v92 = OUTLINED_FUNCTION_51_0();
        v509 = OUTLINED_FUNCTION_49_0();
        *v92 = 136315138;
        OUTLINED_FUNCTION_98_2();
        *(v92 + 4) = OUTLINED_FUNCTION_81_13();
        OUTLINED_FUNCTION_76_11(&dword_25D85C000, v93, v94, "%s Fetching from syndication library");
        __swift_destroy_boxed_opaque_existential_1Tm(v509);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      v505[25] = 0;
      v95 = [v59 openPhotoLibraryWithWellKnownIdentifier:3 error:v505 + 25];
      v96 = v505[25];
      if (!v95)
      {
        v126 = v96;

        v125 = _convertNSErrorToError(_:)();
        swift_willThrow();

        v34 = v499;
        v110 = v479;
        goto LABEL_29;
      }

      v97 = v95;
      v98 = v96;
      [v78 setPhotoLibrary_];

      v99 = Array._bridgeToObjectiveC()().super.isa;
      v100 = [v76 fetchAssetsWithLocalIdentifiers:v99 options:v78];

      if (([v100 count] & 0x8000000000000000) != 0)
      {
        goto LABEL_129;
      }

      v101 = v505[51];
      v102 = v505[49];
      IndexSet.init(integersIn:)();
      IndexSet._bridgeToObjectiveC()(v103);
      v105 = v104;
      v106 = OUTLINED_FUNCTION_100_4();
      v86(v106);
      v107 = [v100 objectsAtIndexes_];

      v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      specialized Array.append<A>(contentsOf:)(v108);

      v109 = v505;
      v110 = v506;
      v34 = v499;
    }

    else
    {
      v111 = objc_opt_self();
      v112 = Array._bridgeToObjectiveC()().super.isa;
      v113 = [v111 fetchAssetsWithLocalIdentifiers:v112 options:v53];

      if (([v113 count] & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
      }

      v109 = v505;
      v115 = v505[50];
      v114 = v505[51];
      v116 = v505[49];
      IndexSet.init(integersIn:)();
      IndexSet._bridgeToObjectiveC()(v117);
      v119 = v118;
      v120 = *(v115 + 8);
      v121 = OUTLINED_FUNCTION_100_4();
      v122(v121);
      v123 = [v113 objectsAtIndexes_];

      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for PHAsset, 0x277CD97A8);
      v110 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

LABEL_33:
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for PHAsset, 0x277CD97A8);
    v500 = Dictionary.init(dictionaryLiteral:)();
    v138 = v494;
    v497 = specialized Array.count.getter(v110);
    v480 = v110;
    if (!v497)
    {
      break;
    }

    v139 = v110;
    v12 = 0;
    v483 = v109 + 22;
    v487 = (v139 & 0xC000000000000001);
    v473 = v139 + 32;
    v475 = v139 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v487)
      {
        v140 = MEMORY[0x25F89FFD0](v12, v480);
      }

      else
      {
        if (v12 >= *(v475 + 16))
        {
          goto LABEL_123;
        }

        v140 = *(v473 + 8 * v12);
      }

      v141 = v140;
      v142 = __OFADD__(v12++, 1);
      if (v142)
      {
        goto LABEL_118;
      }

      v143 = [v140 localIdentifier];
      v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v146 = v145;

      v109[22] = 47;
      v109[23] = 0xE100000000000000;
      v147 = swift_task_alloc();
      *(v147 + 16) = v483;
      v148 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(1, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), v147, v144, v146);

      v149 = v148[2];
      if (v149)
      {
        v501 = v141;
        v511 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v149, 0);
        v150 = 0;
        v151 = v511;
        v152 = v148 + 7;
        while (v150 < v148[2])
        {
          v153 = *(v152 - 3);
          v154 = *(v152 - 2);
          v155 = *(v152 - 1);
          v156 = *v152;

          v157 = MEMORY[0x25F89F5B0](v153, v154, v155, v156);
          v159 = v158;

          v161 = v511[2];
          v160 = v511[3];
          if (v161 >= v160 >> 1)
          {
            v163 = OUTLINED_FUNCTION_26_3(v160);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v163, v161 + 1, 1);
          }

          ++v150;
          v511[2] = v161 + 1;
          v162 = &v511[2 * v161];
          v162[4] = v157;
          v162[5] = v159;
          v152 += 4;
          if (v149 == v150)
          {

            v141 = v501;
            goto LABEL_48;
          }
        }

        __break(1u);
        v408 = v148[61];
        v407 = v148[62];
        v409 = v505[58];
        v410 = v505[57];
        v411 = v505[56];
        v412 = v505[55];
        v413 = v505[54];
        v414 = v505[51];
        v448 = v505[48];
        v450 = v505[47];
        v453 = v505[44];
        v455 = v505[43];
        v458 = v505[42];
        v461 = v505[41];
        v464 = v505[40];
        v467 = v505[39];
        v470 = v505[38];
        v478 = v505[37];
        v482 = v505[36];
        v486 = v505[35];
        v493 = v505[34];
        v496 = v505[32];
        OUTLINED_FUNCTION_93_11();

        $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v471, "ResultHydrator.fetchFullContentForPhotosResults");

        OUTLINED_FUNCTION_127();
        v415 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_63_14();

        return v417(v416, v417, v418, v419, v420, v421, v422, v423, a9, a10, a11, a12);
      }

      v151 = MEMORY[0x277D84F90];
LABEL_48:
      v138 = v494;
      if (!v151[2])
      {
        goto LABEL_119;
      }

      v164 = v151[4];
      v165 = v151[5];

      v166 = v141;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = specialized __RawDictionaryStorage.find<A>(_:)();
      v170 = v500[2];
      v171 = (v169 & 1) == 0;
      v172 = v170 + v171;
      if (__OFADD__(v170, v171))
      {
        break;
      }

      v173 = v168;
      v174 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo7PHAssetCGMd, &_ss17_NativeDictionaryVySSSo7PHAssetCGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v172))
      {
        v175 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v174 & 1) != (v176 & 1))
        {
          v405 = *MEMORY[0x277D85DE8];
          OUTLINED_FUNCTION_63_14();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v173 = v175;
      }

      if (v174)
      {
        v177 = v500[7];
        v178 = *(v177 + 8 * v173);
        *(v177 + 8 * v173) = v166;

        v166 = v178;
      }

      else
      {
        OUTLINED_FUNCTION_84_9(&v500[v173 >> 6]);
        v179 = (v500[6] + 16 * v173);
        *v179 = v164;
        v179[1] = v165;
        *(v500[7] + 8 * v173) = v166;
        v180 = v500[2];
        v142 = __OFADD__(v180, 1);
        v181 = v180 + 1;
        if (v142)
        {
          goto LABEL_122;
        }

        v500[2] = v181;
      }

      v34 = v499;
      v109 = v505;
      if (v12 == v497)
      {
        goto LABEL_58;
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
    OUTLINED_FUNCTION_22();
  }

LABEL_58:
  v498 = v109[53];
  v468 = v109[52];
  v182 = v109[46];
  v12 = v109[29];

  v183 = 0;
  v465 = (v182 + 32);
  v184 = *(v34 + 16);
  v456 = (v12 + 32);
  v459 = (v182 + 8);
  v462 = (v182 + 16);
  v185 = v34 + 40;
  v186 = MEMORY[0x277D84F90];
  v484 = v184;
  v476 = v34 + 40;
LABEL_59:
  v502 = (v185 + 16 * v183);
  while (v184 != v183)
  {
    if (v183 >= *(v499 + 16))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    if (v500[2])
    {
      v187 = *(v502 - 1);
      v188 = *v502;

      v189 = specialized __RawDictionaryStorage.find<A>(_:)();
      LOBYTE(v187) = v190;

      if (v187)
      {
        v488 = *(v500[7] + 8 * v189);
        v229 = ResultHydrator.ocrOutput(for:)(v488);
        v490 = v183;
        v231 = v183 + 1;
        if (v230)
        {
          v449 = v229;
          v503 = v230;
          if (v490 >= v494)
          {
            goto LABEL_128;
          }

          v232 = v109[44];
          v233 = v109[45];
          v234 = v109[26];
          OUTLINED_FUNCTION_42_16();
          v237 = v236 & ~v235;
          v447 = *(v238 + 72);
          SearchResultItem.associatedValue.getter(v109 + 17);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
          if (swift_dynamicCast())
          {
            v491 = v237;
            v239 = v109[58];
            v240 = v109;
            v241 = v109[48];
            v242 = v240[43];
            v243 = v240[41];
            __swift_storeEnumTagSinglePayload(v240[44], 0, 1, v240[45]);
            v244 = *v465;
            v245 = OUTLINED_FUNCTION_63_0();
            v246(v245);
            OUTLINED_FUNCTION_0_49();
            v247 = OUTLINED_FUNCTION_100_4();
            _s10OmniSearch0B6ResultVWOcTm_7(v247, v248, v249);
            v250 = v468[6];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
            v251 = CodableNSSecureCoding.wrappedValue.getter();
            OUTLINED_FUNCTION_3_37();
            _s10OmniSearch0B6ResultVWOhTm_6(v239, v252);
            WalletPass.id.getter();
            v253 = WalletPass.title.getter();
            MEMORY[0x25F89D070](v253, v254, v255, v256, v257, v258, v259, v260, v424, v425, v426, v427, v428, v429, v430);
            MEMORY[0x25F89D150]();
            MEMORY[0x25F89D0F0]();
            Photo.snippet.getter();
            v446 = v261;
            Photo.date.getter();
            v445 = Photo.businessNames.getter();
            v444 = Photo.peopleNames.getter();
            v443 = Photo.peopleContactIdentifiers.getter();
            Photo.peoplePersonIdentifiers.getter();
            type metadata accessor for PartialExtractedAttributes();
            OUTLINED_FUNCTION_92();
            __swift_storeEnumTagSinglePayload(v262, v263, v264, v265);
            type metadata accessor for FeatureFlagService();
            v442 = swift_allocObject();
            v266 = one-time initialization token for search;
            v267 = v251;
            if (v266 != -1)
            {
              swift_once();
            }

            v268 = type metadata accessor for Logger();
            __swift_project_value_buffer(v268, static Logging.search);
            v269 = v267;
            v270 = Logger.logObject.getter();
            v271 = static os_log_type_t.info.getter();

            v451 = v231;
            if (os_log_type_enabled(v270, v271))
            {
              OUTLINED_FUNCTION_51_0();
              v512 = OUTLINED_FUNCTION_163();
              *v251 = 136315138;
              v272 = [v269 attributeSet];
              CSSearchableItemAttributeSet.keyStrings.getter();
              v274 = v273;

              MEMORY[0x25F89F8A0](v274, MEMORY[0x277D837D0]);
              OUTLINED_FUNCTION_102_5();

              OUTLINED_FUNCTION_26_2();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
              OUTLINED_FUNCTION_37_3();

              *(v251 + 1) = v272;
              OUTLINED_FUNCTION_126_10(&dword_25D85C000, v270, v271, "Photo: parsing attribute keys: %s");
              __swift_destroy_boxed_opaque_existential_1Tm(v512);
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_33_0();
            }

            v275 = v269;
            v276 = Logger.logObject.getter();
            v277 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v276, v277))
            {
              OUTLINED_FUNCTION_51_0();
              v513 = OUTLINED_FUNCTION_163();
              *v251 = 136642819;
              v278 = [v275 attributeSet];
              CSSearchableItemAttributeSet.kvStrings.getter();
              v280 = v279;

              v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
              MEMORY[0x25F89F8A0](v280, v281);
              OUTLINED_FUNCTION_102_5();

              OUTLINED_FUNCTION_26_2();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
              OUTLINED_FUNCTION_37_3();

              *(v251 + 1) = v278;
              OUTLINED_FUNCTION_126_10(&dword_25D85C000, v276, v277, "Photo: parsing attributes: %{sensitive}s");
              __swift_destroy_boxed_opaque_existential_1Tm(v513);
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_33_0();
            }

            else
            {
            }

            v439 = v505[45];
            v440 = v505[56];
            v433 = v505[47];
            v434 = v505[43];
            v320 = v505[40];
            v321 = v505[41];
            v431 = v505[42];
            v432 = v321;
            v322 = v505[38];
            v323 = v505[39];
            v325 = v505[36];
            v324 = v505[37];
            v435 = v505[35];
            v436 = v505[33];
            v441 = v505[31];
            v437 = v505[32];
            v438 = v505[28];
            outlined init with copy of SpotlightRankingItem?(v434, v431, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined init with copy of SpotlightRankingItem?(v321, v320, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
            v326 = v275;

            PreExtractedCard.init(item:featureFlagService:)(v326, v442, v323);
            v327 = v326;

            PreExtractedContact.init(item:featureFlagService:)(v327, v442, v322);
            v328 = v327;
            PreExtractedSharedLink.init(item:)(v328, v324);
            v329 = v328;

            PreExtractedBreadcrumb.init(item:featureFlagService:)(v329, v442);
            v430 = v443;
            v428 = v445;
            v429 = v444;
            v427 = v431;
            v425 = v449;
            v426 = v503;
            v424 = v446;
            Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

            outlined destroy of IntentApplication?(v432, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
            outlined destroy of IntentApplication?(v434, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v330 = *v462;
            v331 = OUTLINED_FUNCTION_100_4();
            v332(v331);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_92();
            __swift_storeEnumTagSinglePayload(v333, v334, v335, v438);
            *(v440 + v468[7]) = MEMORY[0x277D84F90];
            v336 = (v440 + v468[10]);
            *v336 = 0;
            v336[1] = 0;
            OUTLINED_FUNCTION_5_30();
            _s10OmniSearch0B6ResultVWOcTm_7(v435, v440, v337);
            v338 = v468[6];
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
            lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
            v339 = v329;
            v340 = v505;
            v504 = v339;
            CodableNSSecureCoding.init(wrappedValue:)();
            outlined init with copy of SpotlightRankingItem?(v437, v441, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v441, 1, v438);
            v342 = v505[56];
            v343 = v505[35];
            v345 = v505[31];
            v344 = v505[32];
            if (EnumTagSinglePayload == 1)
            {
              outlined destroy of IntentApplication?(v345, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              v346 = v468[5];
              OUTLINED_FUNCTION_97_7();
              OUTLINED_FUNCTION_97_7();
              OUTLINED_FUNCTION_97_7();
              OUTLINED_FUNCTION_97_7();
              OUTLINED_FUNCTION_97_7();
              v426 = 0x100000000;
              v427 = 0x100000000;
              v424 = v347 << 32;
              v425 = 0x100000000;
              SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
              v348 = OUTLINED_FUNCTION_99_11();
              outlined destroy of IntentApplication?(v348, v349, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_7_27();
              _s10OmniSearch0B6ResultVWOhTm_6(v343, v350);
            }

            else
            {
              v351 = v505[30];
              v352 = v505[28];
              v353 = OUTLINED_FUNCTION_99_11();
              outlined destroy of IntentApplication?(v353, v354, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_7_27();
              _s10OmniSearch0B6ResultVWOhTm_6(v343, v355);
              v356 = *v456;
              (*v456)(v351, v345, v352);
              v357 = v352;
              v340 = v505;
              v356(v342 + v468[5], v351, v357);
            }

            v358 = v340[56];
            v359 = v340[57];
            *(v358 + v468[8]) = 1;
            *(v358 + v468[9]) = 1;
            outlined init with take of SearchResult(v358, v359);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v377 = *(v186 + 16);
              v378 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v378, v379, v380, v186);
              v186 = v381;
            }

            v361 = *(v186 + 16);
            v360 = *(v186 + 24);
            if (v361 >= v360 >> 1)
            {
              v382 = OUTLINED_FUNCTION_22_5(v360);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v382, v383, v384, v186);
              v186 = v385;
            }

            v12 = v340[57];
            v363 = v340[47];
            v362 = v340[48];
            v364 = v505[45];

            v365 = *v459;
            v366 = OUTLINED_FUNCTION_64_0();
            v365(v366);
            v367 = v364;
            v109 = v505;
            (v365)(v362, v367);
            *(v186 + 16) = v361 + 1;
            outlined init with take of SearchResult(v12, v186 + v491 + v361 * v447);
            v138 = v494;
            v184 = v484;
            v185 = v476;
            v183 = v451;
            goto LABEL_59;
          }

          v283 = v109[44];
          v282 = v109[45];

          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v284, v285, v286, v282);
          outlined destroy of IntentApplication?(v283, &_s15OmniSearchTypes5PhotoVSgMd, &_s15OmniSearchTypes5PhotoVSgMR);
        }

        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v287 = v109[26];
        v288 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v288, static Logging.answerSynthesis);

        v289 = Logger.logObject.getter();
        v290 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v289, v290))
        {
          v452 = v231;
          v291 = OUTLINED_FUNCTION_51_0();
          v292 = OUTLINED_FUNCTION_49_0();
          *v291 = 136315138;
          v293 = v490;
          if (v490 >= v494)
          {
            goto LABEL_130;
          }

          v294 = v292;
          v295 = v505[34];
          v296 = v505[26];
          OUTLINED_FUNCTION_42_16();
          v298 = *(v297 + 72);
          OUTLINED_FUNCTION_5_30();
          _s10OmniSearch0B6ResultVWOcTm_7(v299, v295, v300);
          SearchResultItem.associatedValue.getter(v505 + 12);
          v301 = v505[16];
          __swift_project_boxed_opaque_existential_1(v505 + 12, v505[15]);
          v302 = *(v301 + 32);
          v303 = OUTLINED_FUNCTION_112_2();
          v305 = v304(v303, v301);
          OUTLINED_FUNCTION_7_27();
          _s10OmniSearch0B6ResultVWOhTm_6(v295, v306);
          __swift_destroy_boxed_opaque_existential_1Tm(v505 + 12);
          OUTLINED_FUNCTION_107();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_112_2();

          *(v291 + 4) = v305;
          _os_log_impl(&dword_25D85C000, v289, v290, "Could not populate ocr string for photo with id: %s", v291, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v294);
          OUTLINED_FUNCTION_33_0();
          OUTLINED_FUNCTION_42_0();

          v184 = v484;
          v307 = v452;
        }

        else
        {
          v307 = v231;

          v293 = v490;
        }

        if (v293 >= v494)
        {
          goto LABEL_127;
        }

        v109 = v505;
        v308 = v505[55];
        v309 = v505[26];
        OUTLINED_FUNCTION_42_16();
        v312 = v311 & ~v310;
        v314 = *(v313 + 72);
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_7(v315, v316, v317);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v368 = *(v186 + 16);
          v369 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v369, v370, v371, v186);
          v186 = v372;
        }

        v183 = v307;
        v319 = *(v186 + 16);
        v318 = *(v186 + 24);
        if (v319 >= v318 >> 1)
        {
          v373 = OUTLINED_FUNCTION_22_5(v318);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v373, v374, v375, v186);
          v186 = v376;
        }

        v12 = v505[55];

        *(v186 + 16) = v319 + 1;
        outlined init with take of SearchResult(v12, v186 + v312 + v319 * v314);
        v138 = v494;
        v185 = v476;
        goto LABEL_59;
      }
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v12 = v109[26];
    v191 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v191, static Logging.answerSynthesis);

    v192 = Logger.logObject.getter();
    v193 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v192, v193))
    {
      OUTLINED_FUNCTION_51_0();
      v194 = OUTLINED_FUNCTION_163();
      *v184 = 136315138;
      if (v183 >= v138)
      {
        goto LABEL_121;
      }

      v195 = v194;
      v12 = v505[34];
      v196 = v505[26];
      OUTLINED_FUNCTION_42_16();
      v198 = *(v197 + 72);
      OUTLINED_FUNCTION_5_30();
      _s10OmniSearch0B6ResultVWOcTm_7(v199, v12, v200);
      SearchResultItem.associatedValue.getter(v505 + 7);
      v201 = v186;
      v202 = v505[11];
      __swift_project_boxed_opaque_existential_1(v505 + 7, v505[10]);
      v203 = *(v202 + 32);
      v204 = OUTLINED_FUNCTION_37_3();
      v205 = v202;
      v186 = v201;
      v206(v204, v205);
      OUTLINED_FUNCTION_102_5();
      OUTLINED_FUNCTION_7_27();
      _s10OmniSearch0B6ResultVWOhTm_6(v12, v207);
      v138 = v494;
      __swift_destroy_boxed_opaque_existential_1Tm(v505 + 7);
      OUTLINED_FUNCTION_26_2();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_37_3();

      *(v184 + 4) = v12;
      OUTLINED_FUNCTION_126_10(&dword_25D85C000, v192, v193, "Could not fetch photo asset with id: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v195);
      OUTLINED_FUNCTION_52_16();
      OUTLINED_FUNCTION_33_0();

      v184 = v484;
    }

    else
    {
    }

    if (v183 >= v138)
    {
      goto LABEL_117;
    }

    v109 = v505;
    v208 = v505[54];
    v209 = v505[26];
    OUTLINED_FUNCTION_42_16();
    v12 = v211 & ~v210;
    v213 = *(v212 + 72);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v214, v215, v216);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v220 = *(v186 + 16);
      v221 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v221, v222, v223, v186);
      v186 = v224;
    }

    v218 = *(v186 + 16);
    v217 = *(v186 + 24);
    if (v218 >= v217 >> 1)
    {
      v225 = OUTLINED_FUNCTION_22_5(v217);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v225, v226, v227, v186);
      v186 = v228;
    }

    v219 = v505[54];
    *(v186 + 16) = v218 + 1;
    outlined init with take of SearchResult(v219, v186 + v12 + v218 * v213);
    v502 += 2;
    ++v183;
  }

  v387 = v109[61];
  v386 = v109[62];
  v389 = v109[57];
  v388 = v109[58];
  v390 = v109[55];
  v391 = v109[56];
  v392 = v109[54];
  v393 = v109[51];
  v394 = v505[48];
  v454 = v505[47];
  v457 = v505[44];
  v460 = v505[43];
  v463 = v505[42];
  v466 = v505[41];
  v469 = v505[40];
  v474 = v505[39];
  v477 = v505[38];
  v481 = v505[37];
  v485 = v505[36];
  v489 = v505[35];
  v492 = v505[34];
  v495 = v505[32];
  OUTLINED_FUNCTION_93_11();

  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v471, "ResultHydrator.fetchFullContentForPhotosResults");

  OUTLINED_FUNCTION_62();
  v395 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_63_14();

  return v398(v396, v397, v398, v399, v400, v401, v402, v403, a9, a10, a11, a12);
}

uint64_t ResultHydrator.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:)()
{
  OUTLINED_FUNCTION_48();
  v1[42] = v2;
  v1[43] = v0;
  v1[41] = v3;
  v4 = type metadata accessor for OSSignpostID();
  v1[44] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[45] = v5;
  v7 = *(v6 + 64);
  v1[46] = OUTLINED_FUNCTION_160();
  v1[47] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[47];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[47];
    *OUTLINED_FUNCTION_172() = 0;
    v5 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_77_11(&dword_25D85C000, v6, v7, v5, "ResultHydrator.fetchFullContentForMessagesResultAndIdentifier", "");
    OUTLINED_FUNCTION_2_8();
  }

  v8 = v0[46];
  v9 = v0[47];
  v10 = v0[44];
  v11 = v0[45];
  v12 = v0[42];
  v13 = v0[43];

  v14 = OUTLINED_FUNCTION_59_12(v11);
  v15(v14, v9, v10);
  v16 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v16);
  OUTLINED_FUNCTION_45_4();
  v0[48] = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = *(v11 + 8);
  v18 = OUTLINED_FUNCTION_63_0();
  v19(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
  v0[49] = Dictionary.init(dictionaryLiteral:)();
  (*(*v13 + 144))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch17MessageIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch17MessageIdentifier_pGMR);
  inited = swift_initStackObject();
  v0[50] = inited;
  *(inited + 16) = xmmword_25DBC8180;
  outlined init with copy of ChatMessageRecord(v12, inited + 32);
  v21 = swift_task_alloc();
  v0[51] = v21;
  *v21 = v0;
  v21[1] = ResultHydrator.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:);

  return MessageBodyManager.retrieveMessages(for:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = v1;
  OUTLINED_FUNCTION_19_0();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v2 + 416) = v9;

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  outlined destroy of MessageBodyManager(v2 + 88);
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 416);
  v48 = *(v1 + 16);
  if (!v48)
  {
    v28 = *(v0 + 392);
LABEL_17:

    specialized Collection.first.getter(v1, v0 + 168);

    if (*(v0 + 192))
    {
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 168), *(v0 + 328));
      goto LABEL_24;
    }

    outlined destroy of IntentApplication?(v0 + 168, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
    if (one-time initialization token for answerSynthesis == -1)
    {
LABEL_20:
      v29 = *(v0 + 336);
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logging.answerSynthesis);
      outlined init with copy of ChatMessageRecord(v29, v0 + 208);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_88_0(v32))
      {
        v33 = OUTLINED_FUNCTION_90_1();
        OUTLINED_FUNCTION_260();
        *v33 = 136315394;
        OUTLINED_FUNCTION_98_2();
        *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v33 + 12) = 2080;
        outlined init with copy of ChatMessageRecord(v0 + 208, v0 + 248);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17MessageIdentifier_pMd, &_s10OmniSearch17MessageIdentifier_pMR);
        String.init<A>(describing:)();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
        OUTLINED_FUNCTION_63_0();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v33 + 14) = v34;
        OUTLINED_FUNCTION_115_8();
        _os_log_impl(v35, v36, v37, v38, v39, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_52_16();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      }

      v40 = *(v0 + 328);
      *(v40 + 32) = 0;
      *v40 = 0u;
      *(v40 + 16) = 0u;
LABEL_24:
      v41 = *(v0 + 376);
      v42 = *(v0 + 368);
      $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(*(v0 + 384), "ResultHydrator.fetchFullContentForMessagesResultAndIdentifier");

      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_83_0();

      __asm { BRAA            X1, X16 }
    }

LABEL_33:
    OUTLINED_FUNCTION_0_5();
    swift_once();
    goto LABEL_20;
  }

  v2 = 0;
  v3 = v1 + 32;
  v4 = *(v0 + 392);
  v47 = *(v0 + 416);
  while (1)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    outlined init with copy of ChatMessageRecord(v3, v0 + 128);
    v5 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
    v6 = OUTLINED_FUNCTION_26_2();
    v8 = ChatMessageRecord.guid.getter(v6, v7);
    if (v9)
    {
      break;
    }

LABEL_14:
    ++v2;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
    v3 += 40;
    if (v48 == v2)
    {
      v1 = *(v0 + 416);
      goto LABEL_17;
    }
  }

  v10 = v8;
  v11 = v9;
  v12 = v0;
  outlined init with copy of ChatMessageRecord(v0 + 128, v0 + 288);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v4;
  v0 = v10;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)();
  v16 = v4[2];
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    goto LABEL_31;
  }

  v19 = v14;
  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMd, &_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18))
  {
    goto LABEL_9;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v20 & 1) == (v22 & 1))
  {
    v19 = v21;
LABEL_9:
    if (v20)
    {

      v4 = v49;
      v23 = (v49[7] + 40 * v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v0 = v12;
      outlined init with take of ResponseOverrideMatcherProtocol((v12 + 288), v23);
    }

    else
    {
      v4 = v49;
      OUTLINED_FUNCTION_84_9(&v49[v19 >> 6]);
      v24 = (v49[6] + 16 * v19);
      *v24 = v10;
      v24[1] = v11;
      v0 = v12;
      outlined init with take of ResponseOverrideMatcherProtocol((v12 + 288), v49[7] + 40 * v19);
      v25 = v49[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_32;
      }

      v49[2] = v27;
    }

    v1 = v47;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_83_0();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t ResultHydrator.fetchFullContentForCalendarResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for OSSignpostID();
  v1[4] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_160();
  v1[7] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[7];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[7];
    *OUTLINED_FUNCTION_172() = 0;
    v5 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_77_11(&dword_25D85C000, v6, v7, v5, "ResultHydrator.fetchFullContentForCalendarResults", "");
    OUTLINED_FUNCTION_2_8();
  }

  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  v14 = OUTLINED_FUNCTION_114_9(v11);
  v15(v14);
  v16 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v16);
  OUTLINED_FUNCTION_112_2();
  v17 = OSSignpostIntervalState.init(id:isOpen:)();
  v18 = (*(v11 + 8))(v9, v10);
  v19 = (*(*v12 + 168))(v18);
  v20 = CalendarManager.fetchEventsAndHydrate(calendarResults:)(v13, v19);

  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v17, "ResultHydrator.fetchFullContentForCalendarResults");

  OUTLINED_FUNCTION_62();

  return v21(v20);
}

uint64_t ResultHydrator.fetchFullContentForMessagesResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[47] = v2;
  v1[48] = v0;
  v3 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v3);
  v1[49] = v4;
  v6 = *(v5 + 64);
  v1[50] = OUTLINED_FUNCTION_199();
  v7 = type metadata accessor for OSSignpostID();
  v1[51] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[52] = v8;
  v10 = *(v9 + 64);
  v1[53] = OUTLINED_FUNCTION_160();
  v1[54] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = *(v0 + 432);
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v4 = *(v0 + 432);
    v5 = OUTLINED_FUNCTION_172();
    v6 = OUTLINED_FUNCTION_159_5(v5);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v7, v8, v6, "ResultHydrator.fetchFullContentForMessagesResults", "");
    OUTLINED_FUNCTION_37_0();
  }

  v9 = *(v0 + 424);
  v10 = *(v0 + 432);
  v11 = *(v0 + 408);
  v12 = *(v0 + 416);
  v13 = *(v0 + 376);

  v14 = OUTLINED_FUNCTION_30_16(v12);
  v15(v14);
  v16 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v16);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 440) = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = *(v12 + 8);
  v18 = OUTLINED_FUNCTION_54_0();
  v19(v18);
  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = *(v0 + 392);
    v22 = MEMORY[0x277D84F90];
    v23 = *(v0 + 376) + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v24 = *(v21 + 72);
    while (1)
    {
      v25 = *(v0 + 400);
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v23, v25, v26);
      SearchResultItem.associatedValue.getter((v0 + 96));
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v25, v27);
      v28 = OUTLINED_FUNCTION_54_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
      v30 = OUTLINED_FUNCTION_179_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
      if (swift_dynamicCast())
      {
        if (*(v0 + 80))
        {
          outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v0 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = *(v22 + 16);
            OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v22 = v35;
          }

          v33 = *(v22 + 16);
          v32 = *(v22 + 24);
          if (v33 >= v32 >> 1)
          {
            OUTLINED_FUNCTION_22_5(v32);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v22 = v36;
          }

          *(v22 + 16) = v33 + 1;
          outlined init with take of ResponseOverrideMatcherProtocol((v0 + 16), v22 + 40 * v33 + 32);
          goto LABEL_16;
        }
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      outlined destroy of IntentApplication?(v0 + 56, &_s10OmniSearch17MessageIdentifier_pSgMd, &_s10OmniSearch17MessageIdentifier_pSgMR);
LABEL_16:
      v23 += v24;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_19:
  *(v0 + 448) = v22;
  v37 = *(v22 + 16);
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v64 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v38 = v64;
    v39 = v22 + 32;
    do
    {
      outlined init with copy of ChatMessageRecord(v39, v0 + 136);
      v40 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      v41 = *(v40 + 8);
      v42 = OUTLINED_FUNCTION_179_0();
      v44 = v43(v42);
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      v48 = *(v64 + 16);
      v47 = *(v64 + 24);
      if (v48 >= v47 >> 1)
      {
        v50 = OUTLINED_FUNCTION_26_3(v47);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50, v48 + 1, 1);
      }

      *(v64 + 16) = v48 + 1;
      v49 = v64 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v39 += 40;
      --v37;
    }

    while (v37);
  }

  *(v0 + 456) = v38;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  *(v0 + 464) = OUTLINED_FUNCTION_200(v51, static Logging.answerSynthesis);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_260();
    *v54 = 136315394;
    OUTLINED_FUNCTION_98_2();
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v54 + 12) = 2080;
    MEMORY[0x25F89F8A0](v38, MEMORY[0x277D837D0]);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v54 + 14) = v55;
    OUTLINED_FUNCTION_125_7(&dword_25D85C000, v56, v57, "%s Message ranked identifiers: %s");
    OUTLINED_FUNCTION_109_10();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  v58 = *(v0 + 384);
  *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
  *(v0 + 480) = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_133();
  v60 = *(v59 + 144);
  *(v0 + 488) = v60;
  *(v0 + 496) = (v59 + 144) & 0xFFFFFFFFFFFFLL | 0x27D7000000000000;
  v60();
  v61 = swift_task_alloc();
  *(v0 + 504) = v61;
  *v61 = v0;
  v61[1] = ResultHydrator.fetchFullContentForMessagesResults(_:locale:);
  OUTLINED_FUNCTION_63_14();

  return MessageBodyManager.retrieveMessages(for:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = v1;
  OUTLINED_FUNCTION_19_0();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *(v4 + 448);
  v7 = *v0;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v2 + 512) = v9;

  outlined destroy of MessageBodyManager(v2 + 176);
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 512);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v4 = *(v0 + 480);
LABEL_18:
    v41 = *(v0 + 464);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v43))
    {
      v44 = *(v0 + 472);
      v45 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_260();
      *v45 = 136315650;
      OUTLINED_FUNCTION_98_2();
      *(v45 + 4) = OUTLINED_FUNCTION_103_11();
      *(v45 + 12) = 2048;
      *(v45 + 14) = v4[2];
      *(v45 + 22) = 2080;

      Dictionary.Keys.description.getter();

      OUTLINED_FUNCTION_179_0();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v45 + 24) = v46;
      _os_log_impl(&dword_25D85C000, v42, v43, "%s Original spiMessageDict size %ld, GUIDs: %s", v45, 0x20u);
      OUTLINED_FUNCTION_105_9();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }

    v48 = *(v0 + 456);
    v47 = *(v0 + 464);

    static MessageBodyManager.dedupMessageDict(_:basedOn:)();
    v50 = v49;

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v52))
    {
      v53 = *(v0 + 472);
      v54 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_260();
      *v54 = 136315650;
      OUTLINED_FUNCTION_98_2();
      *(v54 + 4) = OUTLINED_FUNCTION_103_11();
      *(v54 + 12) = 2048;
      *(v54 + 14) = *(v50 + 16);

      *(v54 + 22) = 2080;
      Dictionary.Keys.description.getter();

      OUTLINED_FUNCTION_179_0();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v54 + 24) = v55;
      OUTLINED_FUNCTION_115_8();
      _os_log_impl(v56, v57, v58, v59, v60, 0x20u);
      OUTLINED_FUNCTION_105_9();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_52_16();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v61 = *(v0 + 496);
    v63 = *(v0 + 432);
    v62 = *(v0 + 440);
    v64 = *(v0 + 424);
    v65 = *(v0 + 400);
    v67 = *(v0 + 376);
    v66 = *(v0 + 384);
    (*(v0 + 488))();

    MessageBodyManager.hydrateMessageBody(origMessages:enrichedMessages:)();

    outlined destroy of MessageBodyManager(v0 + 256);

    $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v62, "ResultHydrator.fetchFullContentForMessagesResults");

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_15_6();

    __asm { BRAA            X2, X16 }
  }

  v3 = v1 + 32;
  v4 = *(v0 + 480);
  while (1)
  {
    outlined init with copy of ChatMessageRecord(v3, v0 + 216);
    v5 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    v6 = OUTLINED_FUNCTION_26_2();
    v8 = ChatMessageRecord.guid.getter(v6, v7);
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v8;
    v11 = v9;
    outlined init with copy of ChatMessageRecord(v0 + 216, v0 + 296);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v4;
    result = specialized __RawDictionaryStorage.find<A>(_:)();
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = result;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMd, &_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMR);
    v20 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17);
    v4 = v73;
    if (v20)
    {
      v21 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v19 & 1) != (v22 & 1))
      {
        OUTLINED_FUNCTION_15_6();

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v18 = v21;
    }

    if (v19)
    {
      v23 = (v73[7] + 40 * v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 296), v23);
    }

    else
    {
      OUTLINED_FUNCTION_84_9(&v73[v18 >> 6]);
      v24 = (v73[6] + 16 * v18);
      *v24 = v10;
      v24[1] = v11;
      result = outlined init with take of ResponseOverrideMatcherProtocol((v0 + 296), v73[7] + 40 * v18);
      v25 = v73[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_30;
      }

      v73[2] = v27;
    }

    v28 = *(v0 + 464);
    outlined init with copy of ChatMessageRecord(v0 + 216, v0 + 336);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_42_15())
    {
      v31 = OUTLINED_FUNCTION_49_0();
      swift_slowAlloc();
      *v31 = 136315650;
      *(v31 + 4) = OUTLINED_FUNCTION_103_11();
      v71 = v30;
      *(v31 + 12) = 2080;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v31 + 14) = v32;
      *(v31 + 22) = 2080;
      v33 = *(v0 + 368);
      __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
      OUTLINED_FUNCTION_19_14();
      v35 = v34;
      v37 = *(v36 + 64);
      OUTLINED_FUNCTION_199();
      v72 = v2;
      (*(v35 + 16))();
      v4 = v73;
      v38 = *(v33 + 16);
      String.init<A>(describing:)();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v31 + 24) = v39;
      v2 = v72;
      _os_log_impl(&dword_25D85C000, v29, v71, "%s Added this into spiMessageDict guid=%s -> %s", v31, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_33_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    }

LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    v3 += 40;
    if (!--v2)
    {
      v40 = *(v0 + 512);

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t ResultHydrator.fetchFullContentForContactsResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for OSSignpostID();
  v1[4] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_160();
  v1[7] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[7];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[7];
    *OUTLINED_FUNCTION_172() = 0;
    v5 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_77_11(&dword_25D85C000, v6, v7, v5, "ResultHydrator.fetchFullContentForContactsResults", "");
    OUTLINED_FUNCTION_2_8();
  }

  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  v14 = OUTLINED_FUNCTION_114_9(v11);
  v15(v14);
  v16 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v16);
  OUTLINED_FUNCTION_112_2();
  v17 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v18 = *(v13 + 32);
  OUTLINED_FUNCTION_133();
  v20 = (*(v19 + 112))(v12);
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v17, "ResultHydrator.fetchFullContentForContactsResults");

  OUTLINED_FUNCTION_62();

  return v21(v20);
}

uint64_t ResultHydrator.fetchFullContentForEventsResults(_:locale:)()
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
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v4 = v0[9];
    v5 = OUTLINED_FUNCTION_172();
    v6 = OUTLINED_FUNCTION_159_5(v5);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v7, v8, v6, "ResultHydrator.fetchFullContentForEventsResults", "");
    OUTLINED_FUNCTION_37_0();
  }

  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];

  v14 = OUTLINED_FUNCTION_30_16(v12);
  v15(v14);
  v16 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v16);
  OUTLINED_FUNCTION_45_4();
  v0[10] = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = *(v12 + 8);
  v18 = OUTLINED_FUNCTION_54_0();
  v19(v18);
  type metadata accessor for ResultHydrator();
  v20 = ResultHydrator.__allocating_init()();
  v0[11] = v20;
  v21 = swift_task_alloc();
  v0[12] = v21;
  *v21 = v0;
  v21[1] = ResultHydrator.fetchFullContentForEventsResults(_:locale:);
  v22 = v0[3];
  v23 = v0[4];
  v24 = v0[2];

  return (_s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5)(v24, v13 + 96, v20, v22, v23);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 96);
  v5 = *(v3 + 88);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 104) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[9];
  v2 = v0[8];
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v0[10], "ResultHydrator.fetchFullContentForEventsResults");

  OUTLINED_FUNCTION_62();
  v4 = v0[13];

  return v3(v4);
}

uint64_t ResultHydrator.fetchFullContentForFileResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v2 = type metadata accessor for OSSignpostID();
  v0[3] = v2;
  OUTLINED_FUNCTION_21(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_160();
  v0[6] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[6];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v4 = v0[6];
    v5 = OUTLINED_FUNCTION_172();
    v6 = OUTLINED_FUNCTION_159_5(v5);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v7, v8, v6, "ResultHydrator.fetchFullContentForFileResults", "");
    OUTLINED_FUNCTION_37_0();
  }

  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];
  v12 = v0[4];

  v13 = OUTLINED_FUNCTION_30_16(v12);
  v14(v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v15);
  OUTLINED_FUNCTION_45_4();
  v0[7] = OSSignpostIntervalState.init(id:isOpen:)();
  v16 = *(v12 + 8);
  v17 = OUTLINED_FUNCTION_54_0();
  v18(v17);
  v19 = swift_task_alloc();
  v0[8] = v19;
  *v19 = v0;
  v20 = OUTLINED_FUNCTION_110_9(v19);

  return static FileContentManager.hydrateFileContent(from:)(v20);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[6];
  v2 = v0[5];
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v0[7], "ResultHydrator.fetchFullContentForFileResults");

  OUTLINED_FUNCTION_62();
  v4 = v0[10];

  return v3(v4);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[6];
  v2 = v0[5];
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v0[7], "ResultHydrator.fetchFullContentForFileResults");

  OUTLINED_FUNCTION_127();
  v4 = v0[9];

  return v3();
}

uint64_t ResultHydrator.fetchFullContentForNotesResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v2 = type metadata accessor for SearchResult(0);
  v0[3] = v2;
  OUTLINED_FUNCTION_21(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for OSSignpostID();
  v0[6] = v6;
  OUTLINED_FUNCTION_21(v6);
  v0[7] = v7;
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_160();
  v0[9] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[9];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v4 = v0[9];
    v5 = OUTLINED_FUNCTION_172();
    v6 = OUTLINED_FUNCTION_159_5(v5);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v7, v8, v6, "ResultHydrator.fetchFullContentForNotesResults", "");
    OUTLINED_FUNCTION_37_0();
  }

  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[2];

  v14 = OUTLINED_FUNCTION_30_16(v12);
  v15(v14);
  v16 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v16);
  OUTLINED_FUNCTION_45_4();
  v0[10] = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = *(v12 + 8);
  v18 = OUTLINED_FUNCTION_54_0();
  v19(v18);
  v20 = MEMORY[0x277D84F90];
  v56 = v0;
  v57 = MEMORY[0x277D84F90];
  v21 = *(v13 + 16);
  if (v21)
  {
    v22 = v0[4];
    v23 = v0[5];
    v24 = *(v0[3] + 24);
    v25 = v0[2] + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v26 = *(v22 + 72);
    do
    {
      v27 = v0[5];
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v25, v27, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      CodableNSSecureCoding.wrappedValue.getter();
      OUTLINED_FUNCTION_3_37();
      v30 = _s10OmniSearch0B6ResultVWOhTm_6(v27, v29);
      MEMORY[0x25F89F850](v30);
      v31 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v31);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v25 += v26;
      --v21;
      v0 = v56;
    }

    while (v21);
    v20 = v57;
  }

  v32 = specialized Array.count.getter(v20);
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
LABEL_11:
  v0[11] = v34;
  while (v32 != v33)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x25F89FFD0](v33, v20);
    }

    else
    {
      if (v33 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v35 = *(v20 + 8 * v33 + 32);
    }

    v36 = v35;
    v0 = (v33 + 1);
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v37 = CSSearchableItem.associatedAppEntityId.getter();
    v39 = v38;

    ++v33;
    if (v39)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = *(v34 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v44;
      }

      v41 = *(v34 + 16);
      if (v41 >= *(v34 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v45;
      }

      *(v34 + 16) = v41 + 1;
      v42 = v34 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v33 = v0;
      v0 = v56;
      goto LABEL_11;
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  v47 = v56;
  v56[12] = OUTLINED_FUNCTION_200(v46, static Logging.answerSynthesis);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_42_15())
  {
    v50 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_260();
    *v50 = 136315394;
    OUTLINED_FUNCTION_98_2();
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v50 + 12) = 2080;
    MEMORY[0x25F89F8A0](v34, MEMORY[0x277D837D0]);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v47 = v56;

    *(v50 + 14) = v51;
    _os_log_impl(&dword_25D85C000, v48, v49, "%s MDItemAppEntityInstanceIdentifier: %s", v50, 0x16u);
    OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_2_8();
  }

  v52 = swift_task_alloc();
  v47[13] = v52;
  *v52 = v47;
  v52[1] = ResultHydrator.fetchFullContentForNotesResults(_:locale:);
  OUTLINED_FUNCTION_83_0();

  return static NoteContentManager.retrieveNotesViaLinkServices(for:)(v53);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v0;

  if (!v0)
  {
    v8 = v3[11];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_159();
  v1 = *(v0 + 112);
  if (!v1)
  {
    v12 = *(v0 + 96);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v14))
    {
      v15 = OUTLINED_FUNCTION_51_0();
      v23 = OUTLINED_FUNCTION_49_0();
      *v15 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v15 + 4) = OUTLINED_FUNCTION_108_7();
      _os_log_impl(&dword_25D85C000, v13, OS_LOG_TYPE_DEFAULT, "%s Unable to get notes via LinkServices. It's OK, will just return original notesResults", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    goto LABEL_11;
  }

  v2 = static NoteContentManager.parseLNQueryOutput(from:)(*(v0 + 112));
  v3 = *(v0 + 96);
  if (!v2)
  {
    v13 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v16))
    {
      v17 = OUTLINED_FUNCTION_51_0();
      v24 = OUTLINED_FUNCTION_49_0();
      *v17 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v17 + 4) = OUTLINED_FUNCTION_108_7();
      _os_log_impl(&dword_25D85C000, v13, v16, "%s Unable to parse LNQueryOutput. It's OK, will just return original notesResults", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_37_0();
    }

LABEL_11:
    v4 = *(v0 + 16);

    goto LABEL_12;
  }

  v4 = static NoteContentManager.hydrateNoteFullContent(from:with:)(*(v0 + 16), v2);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 24);
    v8 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_260();
    *v8 = 136315395;
    OUTLINED_FUNCTION_98_2();
    *(v8 + 4) = OUTLINED_FUNCTION_108_7();
    *(v8 + 12) = 2085;
    MEMORY[0x25F89F8A0](v4, v7);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v8 + 14) = v9;
    OUTLINED_FUNCTION_125_7(&dword_25D85C000, v10, v11, "%s hydratedResults: %{sensitive}s");
    OUTLINED_FUNCTION_109_10();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

LABEL_12:
  v18 = *(v0 + 72);
  v19 = *(v0 + 64);
  v20 = *(v0 + 40);
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(*(v0 + 80), "ResultHydrator.fetchFullContentForNotesResults");

  OUTLINED_FUNCTION_62();

  return v21(v4);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v2, "ResultHydrator.fetchFullContentForNotesResults");

  OUTLINED_FUNCTION_127();
  v7 = v0[15];

  return v6();
}

uint64_t $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, const char *a2)
{
  v2 = type metadata accessor for OSSignpostError();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  v11 = type metadata accessor for OSSignpostID();
  v12 = OUTLINED_FUNCTION_14(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v19 = v18 - v17;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v20 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v20, static Logging.searchSignposter);
  v21 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v22 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v10, v2) == *MEMORY[0x277D85B00])
    {
      v23 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v10, v2);
      v23 = "";
    }

    v24 = OUTLINED_FUNCTION_172();
    *v24 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v21, v22, v25, a2, v23, v24, 2u);
    OUTLINED_FUNCTION_72_9();
  }

  return (*(v14 + 8))(v19, v11);
}

id ResultHydrator.ocrOutput(for:)(void *a1)
{
  result = [a1 characterRecognitionProperties];
  if (result)
  {
    outlined bridged method (ob) of @objc PHAssetCharacterRecognitionProperties.characterRecognitionData.getter(result);
    if (v3 >> 60 != 15)
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for VNDocumentObservation, 0x277CE2CC8);
      v4 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v1 || (v5 = v4) == 0)
      {
        OUTLINED_FUNCTION_127_10();
      }

      else
      {
        v6 = [v4 getTranscript];
        if (v6)
        {
          v7 = v6;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_127_10();
        }

        else
        {
          OUTLINED_FUNCTION_127_10();
        }
      }
    }

    return OUTLINED_FUNCTION_63_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ResultHydrator.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  outlined destroy of IntentApplication?(v0 + 40, &_s10OmniSearch18MessageBodyManagerVSgMd, &_s10OmniSearch18MessageBodyManagerVSgMR);

  v3 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v4 = *(v0 + 136);

  return v0;
}

uint64_t ResultHydrator.__deallocating_deinit()
{
  ResultHydrator.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ResultHydration.fetchFullContent(for:locale:answerSynthesisResultForMetrics:) in conformance ResultHydrator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 224);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for ResultHydration.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:) in conformance ResultHydrator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 280);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v12(a1, a2, a3);
}

uint64_t outlined assign with take of MessageBodyManager?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18MessageBodyManagerVSgMd, &_s10OmniSearch18MessageBodyManagerVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_6_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_204();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #4 in implicit closure #3 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #6 in implicit closure #5 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #6 in implicit closure #5 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #8 in implicit closure #7 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #8 in implicit closure #7 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #10 in implicit closure #9 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #10 in implicit closure #9 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #12 in implicit closure #11 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #12 in implicit closure #11 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #14 in implicit closure #13 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #14 in implicit closure #13 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #18 in implicit closure #17 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #20 in implicit closure #19 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #22 in implicit closure #21 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #24 in implicit closure #23 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #26 in implicit closure #25 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #28 in implicit closure #27 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #30 in implicit closure #29 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter();
}

uint64_t partial apply for implicit closure #32 in implicit closure #31 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #32 in implicit closure #31 in ResultHydrator.hydrationFunctions.getter();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v107 = a1;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v114 = *(v122 - 8);
  v7 = *(v114 + 64);
  v8 = MEMORY[0x28223BE20](v122);
  v111 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v121 = &v106 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v124 = (&v106 - v13);
  MEMORY[0x28223BE20](v12);
  v123 = (&v106 - v14);
  v15 = a3[1];
  v116 = a3;
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_101:
    v118 = v17;
    v17 = *v107;
    if (!*v107)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v117;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v99 = (v118 + 16);
      for (i = *(v118 + 2); i >= 2; *v99 = i)
      {
        if (!*v116)
        {
          goto LABEL_138;
        }

        v101 = &v118[16 * i];
        v102 = *v101;
        v103 = &v99[2 * i];
        v104 = *(v103 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v116 + *(v114 + 72) * *v101, *v116 + *(v114 + 72) * *v103, *v116 + *(v114 + 72) * v104, v17);
        if (v4)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v99)
        {
          goto LABEL_127;
        }

        *v101 = v102;
        *(v101 + 1) = v104;
        v105 = *v99 - i;
        if (*v99 < i)
        {
          goto LABEL_128;
        }

        i = *v99 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v103 + 16, v105, v103);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v118 = specialized _ArrayBuffer._consumeAndCreateNew()(v118);
    goto LABEL_103;
  }

  v106 = a4;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v108 = v16;
    if (v16 + 1 < v15)
    {
      v118 = v17;
      v119 = v16 + 1;
      v20 = *v116;
      v21 = *(v114 + 72);
      v17 = *v116 + v21 * v19;
      v22 = v123;
      outlined init with copy of SpotlightRankingItem?(v17, v123, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v23 = v124;
      outlined init with copy of SpotlightRankingItem?(v20 + v21 * v18, v124, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v24 = *v22;
      v112 = *v23;
      v113 = v24;
      outlined destroy of IntentApplication?(v23, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      outlined destroy of IntentApplication?(v22, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v25 = v18 + 2;
      v115 = v21;
      v26 = v20 + v21 * (v18 + 2);
      while (1)
      {
        v27 = v25;
        if (++v119 >= v15)
        {
          break;
        }

        LODWORD(v120) = v113 < v112;
        v28 = v123;
        outlined init with copy of SpotlightRankingItem?(v26, v123, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v29 = v15;
        v30 = v124;
        outlined init with copy of SpotlightRankingItem?(v17, v124, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v4 = *v28;
        v31 = *v30;
        v32 = v30;
        v15 = v29;
        outlined destroy of IntentApplication?(v32, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        outlined destroy of IntentApplication?(v28, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v26 += v115;
        v17 += v115;
        v25 = v27 + 1;
        if (((v120 ^ (v4 >= v31)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v119 = v15;
LABEL_9:
      if (v113 >= v112)
      {
        v17 = v118;
        v19 = v119;
        v18 = v108;
      }

      else
      {
        v19 = v119;
        if (v119 < v108)
        {
          goto LABEL_132;
        }

        if (v108 >= v119)
        {
          v17 = v118;
          v18 = v108;
        }

        else
        {
          if (v15 >= v27)
          {
            v33 = v27;
          }

          else
          {
            v33 = v15;
          }

          v34 = v115 * (v33 - 1);
          v35 = v115 * v33;
          v4 = v108 * v115;
          v36 = v108;
          v18 = v108;
          do
          {
            if (v36 != --v19)
            {
              v37 = *v116;
              if (!*v116)
              {
                goto LABEL_139;
              }

              outlined init with take of SearchResultItem?(v37 + v4, v111, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
              v38 = v4 < v34 || v37 + v4 >= v37 + v35;
              if (v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of SearchResultItem?(v111, v37 + v34, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
              v18 = v108;
            }

            ++v36;
            v34 -= v115;
            v35 -= v115;
            v4 += v115;
          }

          while (v36 < v19);
          v17 = v118;
          v19 = v119;
        }
      }
    }

    v39 = v116[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_131;
      }

      if (v19 - v18 < v106)
      {
        break;
      }
    }

LABEL_47:
    if (v19 < v18)
    {
      goto LABEL_130;
    }

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v19;
    if ((v51 & 1) == 0)
    {
      v95 = *(v17 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v96;
    }

    v52 = *(v17 + 16);
    v53 = v52 + 1;
    if (v52 >= *(v17 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v97;
    }

    *(v17 + 16) = v53;
    v54 = v17 + 32;
    v55 = (v17 + 32 + 16 * v52);
    v56 = v119;
    *v55 = v18;
    v55[1] = v56;
    v120 = *v107;
    if (!v120)
    {
      goto LABEL_140;
    }

    if (v52)
    {
      v118 = v17;
      while (1)
      {
        v57 = v53 - 1;
        v58 = (v54 + 16 * (v53 - 1));
        v59 = (v17 + 16 * v53);
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v60 = *(v17 + 32);
          v61 = *(v17 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_68:
          if (v63)
          {
            goto LABEL_117;
          }

          v75 = *v59;
          v74 = v59[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_120;
          }

          v79 = v58[1];
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_125;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v53 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v53 < 2)
        {
          goto LABEL_119;
        }

        v82 = *v59;
        v81 = v59[1];
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_83:
        if (v78)
        {
          goto LABEL_122;
        }

        v84 = *v58;
        v83 = v58[1];
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_124;
        }

        if (v85 < v77)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v57 - 1 >= v53)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
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
          __break(1u);
LABEL_127:
          __break(1u);
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

        if (!*v116)
        {
          goto LABEL_137;
        }

        v89 = (v54 + 16 * (v57 - 1));
        v90 = *v89;
        v91 = v54;
        v92 = v57;
        v17 = v54 + 16 * v57;
        v4 = *(v17 + 8);
        v93 = v117;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v116 + *(v114 + 72) * *v89, *v116 + *(v114 + 72) * *v17, *v116 + *(v114 + 72) * v4, v120);
        v117 = v93;
        if (v93)
        {
          goto LABEL_99;
        }

        if (v4 < v90)
        {
          goto LABEL_112;
        }

        v94 = *(v118 + 2);
        if (v92 > v94)
        {
          goto LABEL_113;
        }

        *v89 = v90;
        v89[1] = v4;
        if (v92 >= v94)
        {
          goto LABEL_114;
        }

        v53 = v94 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v17 + 16), v94 - 1 - v92, v17);
        v17 = v118;
        *(v118 + 2) = v94 - 1;
        v54 = v91;
        if (v94 <= 2)
        {
          goto LABEL_97;
        }
      }

      v64 = v54 + 16 * v53;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_115;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_116;
      }

      v71 = v59[1];
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_118;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_121;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = v58[1];
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_129;
        }

        if (v62 < v88)
        {
          v57 = v53 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v15 = v116[1];
    v16 = v119;
    if (v119 >= v15)
    {
      goto LABEL_101;
    }
  }

  v40 = v18 + v106;
  if (__OFADD__(v18, v106))
  {
    goto LABEL_133;
  }

  if (v40 >= v39)
  {
    v40 = v116[1];
  }

  if (v40 < v18)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v19 == v40)
  {
    goto LABEL_47;
  }

  v118 = v17;
  v41 = *(v114 + 72);
  v42 = *v116 + v41 * (v19 - 1);
  v4 = -v41;
  v43 = v18 - v19;
  v120 = *v116;
  v109 = v41;
  v110 = v40;
  v44 = v120 + v19 * v41;
LABEL_40:
  v119 = v19;
  v112 = v44;
  v113 = v43;
  v115 = v42;
  v45 = v42;
  while (1)
  {
    v46 = v123;
    outlined init with copy of SpotlightRankingItem?(v44, v123, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v47 = v124;
    outlined init with copy of SpotlightRankingItem?(v45, v124, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v48 = *v46;
    v49 = *v47;
    outlined destroy of IntentApplication?(v47, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    outlined destroy of IntentApplication?(v46, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    if (v48 >= v49)
    {
LABEL_45:
      v19 = v119 + 1;
      v42 = v115 + v109;
      v43 = v113 - 1;
      v44 = v112 + v109;
      if (v119 + 1 == v110)
      {
        v19 = v110;
        v17 = v118;
        v18 = v108;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v120)
    {
      break;
    }

    v50 = v121;
    outlined init with take of SearchResultItem?(v44, v121, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of SearchResultItem?(v50, v45, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v45 += v4;
    v44 += v4;
    v38 = __CFADD__(v43++, 1);
    if (v38)
    {
      goto LABEL_45;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v8 = *(*(v60 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v60);
  v61 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v9);
  v62 = (&v53 - v12);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v66 = a1;
  v65 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v17 / v14, a4);
    v35 = a4 + v20 * v14;
    v36 = -v14;
    v37 = v35;
    v56 = -v14;
    v57 = a4;
    v63 = a1;
LABEL_36:
    v38 = a2 + v36;
    v54 = v37;
    v58 = a2 + v36;
    while (1)
    {
      if (v35 <= a4)
      {
        v66 = a2;
        v64 = v37;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v55 = v37;
      v39 = a2;
      v40 = a3 + v36;
      v41 = v35 + v36;
      v42 = v62;
      v43 = v38;
      v44 = v35;
      outlined init with copy of SpotlightRankingItem?(v35 + v36, v62, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v45 = v43;
      v46 = v61;
      outlined init with copy of SpotlightRankingItem?(v45, v61, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v59 = *v42;
      v47 = v46;
      v48 = *v46;
      outlined destroy of IntentApplication?(v47, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      outlined destroy of IntentApplication?(v42, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      if (v59 < v48)
      {
        if (a3 < v39 || v40 >= v39)
        {
          a2 = v58;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v55;
          v36 = v56;
          a4 = v57;
          a3 = v40;
          a1 = v63;
          v35 = v44;
        }

        else
        {
          v36 = v56;
          v37 = v55;
          v16 = a3 == v39;
          a4 = v57;
          v51 = v58;
          a2 = v58;
          a3 = v40;
          a1 = v63;
          v35 = v44;
          if (!v16)
          {
            v52 = v55;
            swift_arrayInitWithTakeBackToFront();
            v35 = v44;
            a2 = v51;
            v37 = v52;
          }
        }

        goto LABEL_36;
      }

      v49 = a3 < v44 || v40 >= v44;
      a2 = v39;
      if (v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v36;
        v35 = v41;
        v37 = v41;
        v36 = v56;
        a4 = v57;
        a1 = v63;
        v38 = v58;
      }

      else
      {
        v37 = v41;
        v16 = v44 == a3;
        a3 += v36;
        v35 = v41;
        v36 = v56;
        a4 = v57;
        a1 = v63;
        v38 = v58;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v40;
          v35 = v41;
          v37 = v41;
        }
      }
    }

    v66 = a2;
    v64 = v54;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v15 / v14, a4);
    v58 = a3;
    v59 = a4 + v19 * v14;
    v64 = v59;
    v21 = a1;
    while (a4 < v59 && a2 < a3)
    {
      v63 = v21;
      v23 = v14;
      v24 = a2;
      v25 = a2;
      v26 = v62;
      outlined init with copy of SpotlightRankingItem?(v24, v62, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v27 = a4;
      v28 = a4;
      v29 = v61;
      outlined init with copy of SpotlightRankingItem?(v27, v61, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v30 = *v26;
      v31 = *v29;
      outlined destroy of IntentApplication?(v29, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      outlined destroy of IntentApplication?(v26, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      if (v30 >= v31)
      {
        v14 = v23;
        a4 = v28 + v23;
        v32 = v63;
        if (v63 < v28 || v63 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v25;
        }

        else
        {
          a2 = v25;
          if (v63 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v28 + v23;
      }

      else
      {
        v14 = v23;
        a2 = v25 + v23;
        v32 = v63;
        v33 = v63 < v25 || v63 >= a2;
        a4 = v28;
        if (v33)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v63 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v21 = v32 + v14;
      v66 = v21;
      a3 = v58;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v66, &v65, &v64);
  return 1;
}

{
  v8 = type metadata accessor for MessageAccumulationContext.Message(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v87 = &v80 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v80 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    return result;
  }

  v22 = a2 - a1;
  v23 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v23)
  {
    goto LABEL_136;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_137;
  }

  v83 = v17;
  v26 = v22 / v21;
  v92 = a1;
  v91 = a4;
  v85 = v8;
  v86 = v21;
  v27 = v24 / v21;
  if (v22 / v21 < v24 / v21)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v22 / v21, a4);
    v28 = v86;
    v88 = a4 + v26 * v86;
    v90 = v88;
    v84 = a3;
    while (1)
    {
      if (a4 >= v88 || a2 >= a3)
      {
        goto LABEL_134;
      }

      outlined init with copy of MessageAccumulationContext.Message(a2, v19, type metadata accessor for MessageAccumulationContext.Message);
      outlined init with copy of MessageAccumulationContext.Message(a4, v15, type metadata accessor for MessageAccumulationContext.Message);
      v30 = *(v8 + 20);
      v31 = v19[v30];
      v32 = v15[v30];
      if (v31 != v32)
      {
        v37 = v31 < v32;
        goto LABEL_21;
      }

      v89 = a2;
      v33 = *(v8 + 24);
      v34 = v19[v33];
      if (v19[v33])
      {
        if (v34 == 1)
        {
          v35 = 0xE700000000000000;
          v36 = 0x73757361676570;
        }

        else
        {
          v36 = 0x7953726577736E61;
          v35 = 0xEF7369736568746ELL;
        }
      }

      else
      {
        v36 = 0x6867696C746F7073;
        v35 = 0xE900000000000074;
      }

      v39 = v15[v33];
      if (v15[v33])
      {
        if (v39 == 1)
        {
          v40 = 0x73757361676570;
        }

        else
        {
          v40 = 0x7953726577736E61;
        }

        if (v39 == 1)
        {
          v41 = 0xE700000000000000;
        }

        else
        {
          v41 = 0xEF7369736568746ELL;
        }
      }

      else
      {
        v40 = 0x6867696C746F7073;
        v41 = 0xE900000000000074;
      }

      if (v36 == v40 && v35 == v41)
      {
LABEL_61:

LABEL_62:
        outlined destroy of MessageAccumulationContext.Message(v15);
        outlined destroy of MessageAccumulationContext.Message(v19);
        a3 = v84;
        v8 = v85;
        a2 = v89;
        v28 = v86;
        goto LABEL_63;
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v43)
      {
        goto LABEL_62;
      }

      if (v34)
      {
        if (v34 == 1)
        {
          v44 = 0xE700000000000000;
          v45 = 0x73757361676570;
          if (!v39)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v45 = 0x7953726577736E61;
          v44 = 0xEF7369736568746ELL;
          if (!v39)
          {
LABEL_54:
            v47 = 0x6867696C746F7073;
            v46 = 0xE900000000000074;
            goto LABEL_56;
          }
        }
      }

      else
      {
        v45 = 0x6867696C746F7073;
        v44 = 0xE900000000000074;
        if (!v39)
        {
          goto LABEL_54;
        }
      }

      if (v39 == 1)
      {
        v46 = 0xE700000000000000;
        v47 = 0x73757361676570;
      }

      else
      {
        v47 = 0x7953726577736E61;
        v46 = 0xEF7369736568746ELL;
      }

LABEL_56:
      v8 = v85;
      if (v45 == v47 && v44 == v46)
      {
        goto LABEL_61;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v89;
      a3 = v84;
      v28 = v86;
LABEL_21:
      outlined destroy of MessageAccumulationContext.Message(v15);
      outlined destroy of MessageAccumulationContext.Message(v19);
      if (v37)
      {
        if (a1 < a2 || a1 >= a2 + v28)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v28;
        goto LABEL_72;
      }

LABEL_63:
      if (a1 < a4 || a1 >= a4 + v28)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v91 = a4 + v28;
      a4 += v28;
LABEL_72:
      a1 += v28;
      v92 = a1;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v24 / v21, a4);
  v50 = a4 + v27 * v86;
  v51 = -v86;
  v52 = v50;
  v53 = v83;
  v86 = -v86;
LABEL_74:
  v82 = a2 + v51;
  v88 = a3;
  v89 = a2;
  v54 = v52;
  v84 = v52;
  while (1)
  {
    if (v50 <= a4)
    {
      v92 = a2;
      v90 = v54;
      goto LABEL_134;
    }

    if (a2 <= a1)
    {
      break;
    }

    v81 = v54;
    v55 = v50 + v51;
    v56 = v87;
    outlined init with copy of MessageAccumulationContext.Message(v50 + v51, v87, type metadata accessor for MessageAccumulationContext.Message);
    outlined init with copy of MessageAccumulationContext.Message(v82, v53, type metadata accessor for MessageAccumulationContext.Message);
    v57 = *(v8 + 20);
    v58 = *(v56 + v57);
    v59 = *(v53 + v57);
    if (v58 != v59)
    {
      v64 = v58 < v59;
      goto LABEL_103;
    }

    v60 = *(v8 + 24);
    v61 = *(v56 + v60);
    if (*(v56 + v60))
    {
      if (v61 == 1)
      {
        v62 = 0xE700000000000000;
        v63 = 0x73757361676570;
      }

      else
      {
        v63 = 0x7953726577736E61;
        v62 = 0xEF7369736568746ELL;
      }
    }

    else
    {
      v63 = 0x6867696C746F7073;
      v62 = 0xE900000000000074;
    }

    v65 = *(v53 + v60);
    if (*(v53 + v60))
    {
      if (v65 == 1)
      {
        v66 = 0x73757361676570;
      }

      else
      {
        v66 = 0x7953726577736E61;
      }

      if (v65 == 1)
      {
        v67 = 0xE700000000000000;
      }

      else
      {
        v67 = 0xEF7369736568746ELL;
      }
    }

    else
    {
      v66 = 0x6867696C746F7073;
      v67 = 0xE900000000000074;
    }

    if (v63 == v66 && v62 == v67)
    {
      goto LABEL_101;
    }

    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v64 = 0;
    v8 = v85;
    if (v69)
    {
      goto LABEL_103;
    }

    if (v61)
    {
      if (v61 == 1)
      {
        v70 = 0xE700000000000000;
        v71 = 0x73757361676570;
        if (v65)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v71 = 0x7953726577736E61;
        v70 = 0xEF7369736568746ELL;
        if (v65)
        {
LABEL_113:
          if (v65 == 1)
          {
            v75 = 0xE700000000000000;
            v76 = 0x73757361676570;
          }

          else
          {
            v76 = 0x7953726577736E61;
            v75 = 0xEF7369736568746ELL;
          }

          goto LABEL_118;
        }
      }
    }

    else
    {
      v71 = 0x6867696C746F7073;
      v70 = 0xE900000000000074;
      if (v65)
      {
        goto LABEL_113;
      }
    }

    v76 = 0x6867696C746F7073;
    v75 = 0xE900000000000074;
LABEL_118:
    if (v71 != v76 || v70 != v75)
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      goto LABEL_102;
    }

LABEL_101:

    v64 = 0;
LABEL_102:
    v8 = v85;
LABEL_103:
    v72 = v88;
    a3 = v88 + v86;
    v53 = v83;
    outlined destroy of MessageAccumulationContext.Message(v83);
    outlined destroy of MessageAccumulationContext.Message(v87);
    if (v64)
    {
      if (v72 < v89 || a3 >= v89)
      {
        a2 = v82;
        swift_arrayInitWithTakeFrontToBack();
        v52 = v81;
        v51 = v86;
      }

      else
      {
        v52 = v81;
        v79 = v82;
        v23 = v72 == v89;
        a2 = v82;
        v51 = v86;
        if (!v23)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v79;
          v52 = v81;
        }
      }

      goto LABEL_74;
    }

    v73 = v72 < v50 || a3 >= v50;
    v74 = v72;
    a2 = v89;
    if (v73)
    {
      swift_arrayInitWithTakeFrontToBack();
      v88 = a3;
      v50 = v55;
      v54 = v55;
      v51 = v86;
      v52 = v84;
    }

    else
    {
      v54 = v55;
      v23 = v50 == v74;
      v88 = a3;
      v50 = v55;
      v51 = v86;
      v52 = v84;
      if (!v23)
      {
        swift_arrayInitWithTakeBackToFront();
        v52 = v84;
        v88 = a3;
        v50 = v55;
        v54 = v55;
      }
    }
  }

  v92 = a2;
  v90 = v52;
LABEL_134:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v92, &v91, &v90);
  return 1;
}

uint64_t partial apply for closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_75();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  v11[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v4, v2, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_78();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_23(v4);
  *v5 = v6;
  v5[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_35_20();

  return closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v7);
}

uint64_t specialized ArraySlice._copyToNewBuffer(oldCount:)(uint64_t a1)
{
  specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v6 = v3;
  v4 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v6, a1, 0, v4);
}

void specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = a1;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
  v13 = *(v11 + 16);
  if (a4 + *(v12 + 72) * a5 + *(v12 + 72) * v8 == v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v13)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v13;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  v18 = v17;
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v18 = MEMORY[0x277D84F90];
    }

    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
    v20 = *(v18 + 16);
    if (a4 + *(v19 + 72) * a5 + *(v19 + 72) * v8 == v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v20)
    {
      v23 = *(v18 + 24);

      v24 = (v23 >> 1) - v20;
      v25 = __OFADD__(v8, v24);
      v8 += v24;
      if (v25)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v18 = MEMORY[0x277D84F90];
  }

  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
  v22 = *(v18 + 16);
  if (a4 + *(v21 + 72) * a5 + *(v21 + 72) * v8 == v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v22)
  {
    v26 = *(v18 + 24);

    v27 = (v26 >> 1) - v22;
    v25 = __OFADD__(v8, v27);
    v8 += v27;
    if (!v25)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v28 = v7;
  }

  else
  {
    v28 = v8;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi6offset_10OmniSearch0J6ResultV7elementt_Tt1g5(v6, v28);
}

uint64_t specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, uint64_t))
{
  v5 = v4;
  v6 = v4[2];
  v7 = v4[3] >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_26;
  }

  v10 = *result;
  v11 = *(*result + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v13 - a3;
  if (__OFSUB__(v13, a3))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v37 = v15;
  v40 = v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v18 = (*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80);
  v19 = v10 + v18;
  v20 = *(*(v42 - 8) + 72);
  v21 = v10 + v18 + v20 * a2;
  v38 = v8;
  result = specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(v8);
  v39 = v10;
  if (!result)
  {
    v27 = v5[2];
    v28 = v27 + a2;
    if (!__OFADD__(v27, a2))
    {
      if (v28 >= v27)
      {
        if (!__OFSUB__(v28, v27))
        {
          v29 = v5[1];
          swift_arrayInitWithCopy();
          result = a4(v19 + a2 * v20, a3);
          v30 = v28 + v40;
          if (!__OFADD__(v28, v40))
          {
            v31 = v5[3] >> 1;
            if (v31 >= v30)
            {
              if (!__OFSUB__(v31, v30))
              {
                swift_arrayInitWithCopy();
                goto LABEL_24;
              }

              goto LABEL_36;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = result;
  v36 = v5[2];
  v23 = v5[1] + v36 * v20;
  v24 = result + v18;
  if (v23 - v24 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_37;
  }

  swift_arrayDestroy();
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v23, a2, v19);
  swift_arrayDestroy();
  a4(v21, a3);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v23 + v20 * a2 + v20 * v40, v37, v21 + v20 * a3);
  result = v23 + v20 * v38;
  if (v24 + *(v22 + 16) * v20 - result != 0x8000000000000000 || v20 != -1)
  {
    swift_arrayDestroy();
    *(v22 + 16) = 0;

    v27 = v36;
LABEL_24:
    v32 = *v5;

    swift_unknownObjectRelease();
    result = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfCSi6offset_10OmniSearch0L6ResultV7elementt_Tt1g5(v39, v27);
    *v5 = result;
    v5[1] = v33;
    v5[2] = v34;
    v5[3] = v35;
    return result;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (ob) of @objc PHAssetCharacterRecognitionProperties.characterRecognitionData.getter(void *a1)
{
  v2 = [a1 characterRecognitionData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc PHFetchOptions.addFetchPropertySets(_:)(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 addFetchPropertySets_];
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10 * a3;
  if (!v14)
  {
    goto LABEL_7;
  }

  v16 = *(v7 + 16);
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_15;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)(v12 + v10 * a2, v16 - a2, v13 + v15);
  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v14);
  v19 = v17 + v14;
  if (v18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  *(v7 + 16) = v19;
LABEL_7:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_17;
  }

  return result;
}