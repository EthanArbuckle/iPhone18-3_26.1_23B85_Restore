uint64_t OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 416);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  *(v4 + 424) = v0;

  if (!v0)
  {
    *(v4 + 432) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v1 = v0[51];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_62();
  v7 = v0[54];
  OUTLINED_FUNCTION_204();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v1 = v0[51];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();
  v7 = v0[53];
  OUTLINED_FUNCTION_204();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v1[111] = v0;
  v1[110] = v6;
  v1[109] = v7;
  v1[108] = v8;
  v9 = type metadata accessor for UserQuery();
  v1[112] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[113] = v10;
  v1[114] = *(v11 + 64);
  v1[115] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[116] = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[117] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for IntentApplication();
  v1[118] = v18;
  OUTLINED_FUNCTION_21(v18);
  v1[119] = v19;
  v21 = *(v20 + 64);
  v1[120] = OUTLINED_FUNCTION_199();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v22);
  v24 = *(v23 + 64);
  v1[121] = OUTLINED_FUNCTION_199();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v25);
  v27 = *(v26 + 64);
  v1[122] = OUTLINED_FUNCTION_199();
  v1[123] = *v5;
  memcpy(v1 + 2, v3, 0x69uLL);
  v28 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

{
  OUTLINED_FUNCTION_230_4();
  v29 = v1;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v2, static Logging.search);
  outlined init with copy of OmniSearchOptions((v1 + 2), (v1 + 16));
  v3 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  outlined destroy of OmniSearchOptions((v1 + 2));
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    v4 = OUTLINED_FUNCTION_10_23();
    v28[0] = v4;
    *v0 = 136315138;
    OUTLINED_FUNCTION_204_8(v1 + 72);
    outlined init with copy of OmniSearchOptions((v1 + 2), (v1 + 86));
    String.init<A>(describing:)();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v0 + 4) = v5;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v11 = v1[12];
  v1[124] = v11;
  if (v11)
  {
    v12 = v1[13];
    v1[125] = v12;
    v1[126] = swift_getObjectType();
    v13 = *(v12 + 8);
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_219_5();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    v18 = v1[111];
    v19 = v1[110];
    OUTLINED_FUNCTION_204_8(v28);
    v20 = *v18;
    v21 = *MEMORY[0x277D85000];
    OUTLINED_FUNCTION_154_4();
    (*(v22 + 240))(v28, v19);
    OUTLINED_FUNCTION_204_8(v1 + 30);
    v23 = swift_task_alloc();
    v1[129] = v23;
    *v23 = v1;
    v23[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    v24 = v1[111];
    v25 = v1[109];
    OUTLINED_FUNCTION_49_4(v1[108]);
    OUTLINED_FUNCTION_219_5();

    return OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)();
  }
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  SearchToolProgressReporter.setupProgress()();
  v4 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 872);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v0 + 1016) = v4;
    if (!v2)
    {
      break;
    }

    v5 = *v3;
    EntityProperty.wrappedValue.getter();
    v6 = *(v0 + 832);
    v7 = *(v0 + 840);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(v4 + 16);
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v11;
    }

    v8 = *(v4 + 16);
    if (v8 >= *(v4 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v12;
    }

    *(v4 + 16) = v8 + 1;
    v9 = v4 + 16 * v8;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    v3 += 2;
    --v2;
  }

  v13 = *(v0 + 1000);
  v14 = *(v0 + 992);
  swift_getObjectType();
  v15 = *(v0 + 113);
  v16 = swift_task_alloc();
  *(v0 + 1024) = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_84(v16);
  OUTLINED_FUNCTION_218_6();

  return SearchToolProgressReporter.searchStarted(with:isOnScreenReference:)(v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 1024);
  v3 = *(v1 + 1016);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_230_4();
  v12 = v0;
  v1 = v0[111];
  v2 = v0[110];
  OUTLINED_FUNCTION_204_8(v11);
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  (*(v5 + 240))(v11, v2);
  OUTLINED_FUNCTION_204_8(v0 + 30);
  v6 = swift_task_alloc();
  v0[129] = v6;
  *v6 = v0;
  v6[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
  v7 = v0[111];
  v8 = v0[109];
  OUTLINED_FUNCTION_49_4(v0[108]);
  OUTLINED_FUNCTION_219_5();

  return OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)();
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 1032);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  v4[130] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_204();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else if (v1)
  {
    v14 = v4[122];
    v15 = v4[121];
    OUTLINED_FUNCTION_262_3();

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_204();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v24 = swift_task_alloc();
    v4[131] = v24;
    *v24 = v8;
    v24[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    v25 = v4[111];
    OUTLINED_FUNCTION_49_4(v4[110]);
    OUTLINED_FUNCTION_204();

    return OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:)();
  }
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 1048);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[122];
    v12 = v5[121];
    OUTLINED_FUNCTION_261_3();

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_204();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  else if (v3)
  {
    v22 = v5[122];
    v23 = v5[121];
    OUTLINED_FUNCTION_261_3();

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_204();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  else
  {
    v32 = swift_task_alloc();
    v5[132] = v32;
    *v32 = v9;
    v32[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    v33 = v5[109];
    OUTLINED_FUNCTION_49_4(v5[108]);
    OUTLINED_FUNCTION_204();

    return OmniSearchService.handleShortCircuitMusicSearch(for:typeIdentifiers:)(v34, v35);
  }
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 1056);
  *v4 = *v1;
  v3[133] = v7;

  if (v0)
  {
    v8 = v3[122];
    v9 = v3[121];
    OUTLINED_FUNCTION_262_3();

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_204();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_204();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 1088);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 1112) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 848);
  *(v0 + 1120) = v1;
  if (!v1)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_133();
  v3 = *(v2 + 128);

  v5 = *(v3(v4) + 16);

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = *(v1 + 24);
  if (*(v1 + 32) != 3)
  {
    v18 = OUTLINED_FUNCTION_32_0();
    outlined copy of OmniSearchResponseRenderOption(v18, v19);
    v20 = OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_246_3(v20, v21);

LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_246_3(*(v1 + 24), 3);
LABEL_5:

  if (*(v0 + 120))
  {
    v7 = 0;
LABEL_12:
    *(v0 + 121) = v7;
    v22 = *(MEMORY[0x277D857C8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 1128) = v23;
    *v23 = v24;
    v23[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    v25 = *(v0 + 1104);
    v26 = *(v0 + 1096);
    v27 = *(v0 + 1080);
    OUTLINED_FUNCTION_204();

    return MEMORY[0x282200430](v28, v29, v30, v31, v32, v33, v34, v35);
  }

  v8 = *(v0 + 1072);
  MEMORY[0x25F89FAA0](*(v0 + 1080), *(v0 + 1096), *(v0 + 1104), MEMORY[0x277D84950]);

  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_204();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 1128);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 1136) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 1040);
  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v1 = v0[135];
  v2 = v0[134];

  v3 = v0[139];
  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v1 = v0[140];
  v2 = v0[135];
  v3 = v0[134];

  v4 = v0[142];
  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  if (v20[133])
  {
    OUTLINED_FUNCTION_46_25();

    OUTLINED_FUNCTION_31_27();
    OUTLINED_FUNCTION_17_4();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v30 = v20[122];
  outlined init with copy of SpotlightRankingItem?(v20[108] + *(v20[112] + 28), v30, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, Entity);
  v33 = v20[122];
  if (EnumTagSinglePayload == 1)
  {
    v34 = v20[109];

    outlined destroy of EagerResolutionService?(v33, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    v35 = v20[121];
    v36 = v20[118];
    v37 = v20[109];
    v38 = *(v33 + *(Entity + 84));

    EntityProperty.wrappedValue.getter();
    v39 = OUTLINED_FUNCTION_93_6();
    v41 = __swift_getEnumTagSinglePayload(v39, v40, v36);
    v42 = v20[122];
    v43 = v20[121];
    if (!v41)
    {
      v88 = v20[120];
      v89 = v20[119];
      v90 = v20[118];
      v91 = v20[117];
      v118 = v20[109];
      v92 = *(v89 + 16);
      v93 = OUTLINED_FUNCTION_194_7();
      v94(v93);
      outlined destroy of EagerResolutionService?(v43, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
      OUTLINED_FUNCTION_5_55();
      v95 = outlined destroy of UserQuery();
      v96 = MEMORY[0x25F898B70](v95);
      v98 = v97;
      v99 = *(v89 + 8);
      v100 = OUTLINED_FUNCTION_179_0();
      v101(v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
      LocalizedStringResource.init(stringLiteral:)();
      v102 = EntityProperty<>.init(title:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
      LocalizedStringResource.init(stringLiteral:)();
      v103 = EntityProperty<>.init(title:)();
      v20[100] = v96;
      v20[101] = v98;
      EntityProperty.wrappedValue.setter();
      v20[102] = 0;
      v20[103] = 0;
      EntityProperty.wrappedValue.setter();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v20[109];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v109 = *(v105 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v105 = v110;
      }

      v107 = *(v105 + 16);
      v106 = *(v105 + 24);
      if (v107 >= v106 >> 1)
      {
        OUTLINED_FUNCTION_22_5(v106);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v105 = v111;
      }

      v115 = v105;
      *(v105 + 16) = v107 + 1;
      v108 = v105 + 16 * v107;
      *(v108 + 32) = v102;
      *(v108 + 40) = v103;
      goto LABEL_10;
    }

    outlined destroy of EagerResolutionService?(v20[121], &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    OUTLINED_FUNCTION_5_55();
    outlined destroy of UserQuery();
  }

  v115 = v20[109];
LABEL_10:
  v117 = v20[123];
  v44 = v20[116];
  v45 = v20[115];
  v46 = v20[114];
  v47 = v20[113];
  v48 = v20[111];
  v49 = v20[110];
  v50 = v20[108];
  type metadata accessor for RequestedPropertiesMapper();
  v113 = v50;
  v116 = static RequestedPropertiesMapper.resolve(_:query:)(v49, v50);
  static TaskPriority.userInitiated.getter();
  v114 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_16_44();
  v55 = OUTLINED_FUNCTION_51_4();
  outlined init with copy of UserQuery(v55, v56);
  v57 = *(v47 + 80);
  v58 = (v57 + 40) & ~v57;
  v112 = v46 + 7;
  v59 = (v58 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v61[2] = 0;
  v61[3] = 0;
  v61[4] = v48;
  OUTLINED_FUNCTION_7_53();
  outlined init with take of UserQuery(v45, v62 + v58);
  *(v61 + v59) = v115;
  *(v61 + v60) = v117;
  OUTLINED_FUNCTION_204_8(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8));
  *(v61 + ((v60 + 127) & 0xFFFFFFFFFFFFFFF8)) = v116;
  outlined init with copy of OmniSearchOptions((v20 + 2), (v20 + 44));
  v63 = v48;

  v64 = type metadata completion function for DataFilter.FilterResult();
  v20[134] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10OmniSearch0eF8ResponseCSg_Tt2g5(v64, v65, v44, v66, v61);
  static TaskPriority.userInitiated.getter();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v114);
  v70 = v45;
  outlined init with copy of UserQuery(v113, v45);
  v71 = (v57 + 48) & ~v57;
  v72 = (v71 + v112) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v73[2] = 0;
  v73[3] = 0;
  v73[4] = v115;
  v73[5] = v63;
  outlined init with take of UserQuery(v70, v73 + v71);
  *(v73 + v72) = v117;
  OUTLINED_FUNCTION_204_8(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8));
  outlined init with copy of OmniSearchOptions((v20 + 2), (v20 + 58));
  v74 = v63;
  v75 = type metadata completion function for DataFilter.FilterResult();
  v20[135] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10OmniSearch0eF8ResponseCSg_Tt2g5(v75, v76, v44, v77, v73);
  v78 = *(MEMORY[0x277D857C8] + 4);
  v79 = swift_task_alloc();
  v20[136] = v79;
  v20[137] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0aB8ResponseCSgMd, &_s10OmniSearch0aB8ResponseCSgMR);
  v20[138] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v79 = v20;
  v79[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x282200430](v80, v81, v82, v83, v84, v85, v86, v87);
}

uint64_t OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_259_5();
  OUTLINED_FUNCTION_159();
  if ((*(v11 + 121) & 1) != 0 || !*(v11 + 1120))
  {
    if (*(v11 + 856))
    {
      v14 = *(v11 + 1080);
      v15 = *(v11 + 1072);

      goto LABEL_11;
    }

    v16 = *(v11 + 864);
    a9 = xmmword_25DBC9A70;
    OUTLINED_FUNCTION_242_4();
    if (UserQuery.inAppSearchString(ecrResults:bundleId:)(v40, v17).value._object)
    {
      OUTLINED_FUNCTION_33_27();
    }

    else
    {
      v18 = *(v11 + 864);
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
    }

    v21 = *(v11 + 1120);
    v22 = *(v11 + 1080);
    v23 = *(v11 + 1072);
    v24 = Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_188_8();
    OUTLINED_FUNCTION_134_11();
    OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v25, v26, v27, v28, v29, v30, v24);
    OUTLINED_FUNCTION_37_3();
  }

  else
  {
    v12 = *(v11 + 1080);
    v13 = *(v11 + 1072);
  }

LABEL_11:
  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_198();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, *(&a9 + 1), a10, a11);
}

uint64_t specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__src)
{
  v8[17] = a1;
  v8[16] = a7;
  memcpy(v8 + 2, __src, 0x69uLL);
  v12 = *((*MEMORY[0x277D85000] & *a4) + 0xF8);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v8[18] = v14;
  *v14 = v8;
  v14[1] = specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);

  return (v16)(a5, a6, v8 + 16, v8 + 2);
}

uint64_t specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  *(v4 + 152) = v0;

  if (!v0)
  {
    *(v4 + 160) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  return OUTLINED_FUNCTION_100_10(*(v0 + 160));
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10OmniSearch0eF8ResponseCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  outlined init with copy of SpotlightRankingItem?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of EagerResolutionService?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0aB8ResponseCSgMd, &_s10OmniSearch0aB8ResponseCSgMR);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of EagerResolutionService?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of EagerResolutionService?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0aB8ResponseCSgMd, &_s10OmniSearch0aB8ResponseCSgMR);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a1;
  v8[18] = a4;
  return MEMORY[0x2822009F8](specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:), 0, 0);
}

uint64_t specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_72();
  if (*(*(v0 + 144) + 16))
  {
    **(v0 + 136) = 0;
    OUTLINED_FUNCTION_127();

    return v1();
  }

  else
  {
    static Task<>.checkCancellation()();
    v3 = *(v0 + 176);
    v4 = *(v0 + 152);
    *(v0 + 128) = *(v0 + 168);
    memcpy((v0 + 16), v3, 0x69uLL);
    v5 = *((*MEMORY[0x277D85000] & *v4) + 0x100);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    v8 = *(v0 + 152);
    v9 = OUTLINED_FUNCTION_49_4(*(v0 + 160));

    return v10(v9, v0 + 128);
  }
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 184);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  *(v4 + 192) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  return OUTLINED_FUNCTION_100_10(*(v0 + 200));
}

{
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_127();
  return v2();
}

void OmniSearchService.preflightChecks(options:requestedProperties:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPropertyRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (!v10)
  {
    return;
  }

  v11 = *a1;
  v31 = *(a1 + 8);
  v12 = *(a1 + 16);
  HIDWORD(v30) = *(a1 + 24);
  v13 = *(v6 + 24);
  v14 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v15 = *(v7 + 72);
  while (2)
  {
    OUTLINED_FUNCTION_49_24();
    v16 = OUTLINED_FUNCTION_116_0();
    outlined init with copy of UserQuery(v16, v17);
    v18 = *&v9[v13];
    EntityProperty.wrappedValue.getter();
    switch(v32)
    {
      case 7:

        OUTLINED_FUNCTION_2_75();
        outlined destroy of UserQuery();
        goto LABEL_8;
      default:
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        OUTLINED_FUNCTION_2_75();
        outlined destroy of UserQuery();
        if ((v19 & 1) == 0)
        {
          v14 += v15;
          if (!--v10)
          {
            return;
          }

          continue;
        }

LABEL_8:
        if ((v31 | HIDWORD(v30)))
        {
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          __swift_project_value_buffer(v20, static Logging.search);
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();
          v23 = OUTLINED_FUNCTION_32_9();
          if (os_log_type_enabled(v23, v24))
          {
            OUTLINED_FUNCTION_51_5();
            v25 = swift_slowAlloc();
            *v25 = 0;
            v26 = "Latitude and/or longitude are nil but request is navigation";
            goto LABEL_19;
          }

          goto LABEL_20;
        }

        if (v11 == 0.0 && v12 == 0.0)
        {
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          __swift_project_value_buffer(v27, static Logging.search);
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();
          v28 = OUTLINED_FUNCTION_32_9();
          if (os_log_type_enabled(v28, v29))
          {
            OUTLINED_FUNCTION_51_5();
            v25 = swift_slowAlloc();
            *v25 = 0;
            v26 = "Latitude and/or longitude are both 0 but request is navigation";
LABEL_19:
            _os_log_impl(&dword_25D85C000, v21, v22, v26, v25, 2u);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

LABEL_20:

          type metadata accessor for AppIntentError();
          lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type AppIntentError and conformance AppIntentError, MEMORY[0x277CB9BB0]);
          OUTLINED_FUNCTION_227_3();
          swift_allocError();
          static AppIntentError.PermissionRequired.location(precise:)();
          swift_willThrow();
        }

        return;
    }
  }
}

uint64_t OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v1[765] = v0;
  v1[764] = v6;
  v1[763] = v7;
  v1[762] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64) + 15;
  v1[766] = swift_task_alloc();
  v1[767] = swift_task_alloc();
  v1[768] = swift_task_alloc();
  v12 = type metadata accessor for UserQuery();
  v1[769] = v12;
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64) + 15;
  v1[770] = swift_task_alloc();
  v1[771] = swift_task_alloc();
  v1[772] = swift_task_alloc();
  v1[773] = swift_task_alloc();
  v1[774] = swift_task_alloc();
  v15 = type metadata accessor for Locale();
  v1[775] = v15;
  OUTLINED_FUNCTION_21(v15);
  v1[776] = v16;
  v18 = *(v17 + 64);
  v1[777] = OUTLINED_FUNCTION_199();
  v19 = type metadata accessor for OSSignpostID();
  v1[778] = v19;
  OUTLINED_FUNCTION_21(v19);
  v1[779] = v20;
  v22 = *(v21 + 64) + 15;
  v1[780] = swift_task_alloc();
  v1[781] = swift_task_alloc();
  v1[782] = *v5;
  memcpy(v1 + 719, v3, 0x69uLL);
  v23 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

{
  v232 = v0;
  v1 = v0;
  if (*(v0 + 5854))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v2, static Logging.search);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v4))
    {
      OUTLINED_FUNCTION_51_5();
      v5 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v5);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

LABEL_7:
    OUTLINED_FUNCTION_113_12();

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_161_5();

    __asm { BRAA            X2, X16 }
  }

  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v13 = *(v0 + 6248);
  v14 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v14, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v15 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v16 = *(v0 + 6248);
    OUTLINED_FUNCTION_51_5();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v17);
    v18 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v19, v20, v18, "OmniSearchService.localSearch", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v21 = *(v0 + 6248);
  v22 = *(v0 + 6240);
  v23 = *(v0 + 6232);
  v24 = *(v0 + 6224);

  v25 = OUTLINED_FUNCTION_9_27();
  v26(v25);
  v27 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v27);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 6264) = OSSignpostIntervalState.init(id:isOpen:)();
  v28 = OUTLINED_FUNCTION_67_19();
  v29(v28);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  *(v0 + 6272) = __swift_project_value_buffer(v30, static Logging.search);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_77_5(v32))
  {
    v33 = OUTLINED_FUNCTION_173_0();
    *v33 = 67109120;
    v33[1] = qos_class_self();
    OUTLINED_FUNCTION_200_5();
    _os_log_impl(v34, v35, v36, v37, v38, 8u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (*(v0 + 5808))
  {
    v39 = *(v0 + 5800);
    v40 = *(v0 + 5808);
  }

  else
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    static NSUserDefaults.fallbackLocale.getter();
  }

  v41 = *(v0 + 6216);
  v42 = *(v0 + 6120);

  OUTLINED_FUNCTION_88();
  Locale.init(identifier:)();
  v43 = (v42 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController);
  v44 = v1;
  v45 = v43[3];
  v46 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v45);
  (*(v46 + 32))(v41, v45, v46);
  v47 = v44;
  if ((*(v44 + 6256) & 1) == 0)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_77_5(v49))
    {
      OUTLINED_FUNCTION_51_5();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v50);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v56 = *(v44 + 6216);
    v57 = *(v44 + 6208);
    v58 = *(v47 + 6200);

    v59 = *(v57 + 8);
    v60 = OUTLINED_FUNCTION_54_0();
    v61(v60);
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();
    goto LABEL_25;
  }

  v62 = (v44 + 4096);
  v63 = *(v44 + 6192);
  v64 = *(v44 + 6096);
  OUTLINED_FUNCTION_16_44();
  outlined init with copy of UserQuery(v65, v66);
  memcpy((v44 + 5864), (v44 + 5752), 0x62uLL);
  v67 = *(v44 + 5850);
  *(v44 + 4177) = v67;
  *(v44 + 6376) = *(v44 + 5851);
  *(v44 + 6380) = *(v44 + 5855);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  outlined init with copy of OmniSearchOptions(v44 + 5752, v44 + 5640);
  v226 = (v44 + 4096);
  if (static NSUserDefaults.forceLLMQU.getter())
  {
    goto LABEL_28;
  }

  v68 = *(v44 + 6192);
  v69 = *(v44 + 6144);
  v70 = *(*(v44 + 6152) + 28);
  v71 = v67;
  OUTLINED_FUNCTION_47_11();
  outlined init with copy of SpotlightRankingItem?(v72, v73, v74, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  type metadata accessor for StructuredQueryEntity(0);
  v75 = OUTLINED_FUNCTION_45_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, v76, v77);
  v79 = OUTLINED_FUNCTION_88();
  outlined destroy of EagerResolutionService?(v79, v80, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  if (EnumTagSinglePayload == 1)
  {
LABEL_28:
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = OUTLINED_FUNCTION_173_0();
      *v83 = 67109120;
      *(v83 + 4) = static NSUserDefaults.forceLLMQU.getter() & 1;
      _os_log_impl(&dword_25D85C000, v81, v82, "forceLLMQU enabled (forceLLMQU: %{BOOL}d), or structured query is nil, calling LLMQU to generate structured query", v83, 8u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v84 = *(v47 + 6192);
    v85 = *(v47 + 6176);
    v86 = *(v47 + 6152);
    v87 = *(v47 + 6136);
    v223 = *(v47 + 6184);
    v224 = *(v47 + 6120);

    v229 = v47;
    v89 = *v84;
    v88 = v84[1];
    v90 = v84[2];
    v91 = v84[3];
    v92 = v84[4];
    v93 = v84[5];
    *(v229 + 6280) = type metadata accessor for StructuredQueryEntity(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
    *v85 = v89;
    v85[1] = v88;
    v98 = HIBYTE(v91) & 0xF;
    if ((v91 & 0x2000000000000000) == 0)
    {
      v98 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (v98)
    {
      v99 = v91;
    }

    else
    {
      v99 = v88;
    }

    if (v98)
    {
      v100 = v90;
    }

    else
    {
      v100 = v89;
    }

    v85[2] = v100;
    v85[3] = v99;

    v85[4] = v92;
    v85[5] = v93;
    outlined init with copy of SpotlightRankingItem?(v87, v85 + v86[7], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    v101 = (v85 + v86[8]);
    *v101 = 0;
    v101[1] = 0;
    v102 = v86[9];

    type metadata completion function for DataFilter.FilterResult();
    UtteranceNormalizer.init(locale:)();
    outlined destroy of EagerResolutionService?(v87, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    OUTLINED_FUNCTION_7_53();
    outlined init with take of UserQuery(v85, v223);
    outlined assign with take of UserQuery(v223, v84);
    outlined init with copy of SpotlightRankingItem?(v224 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_queryParser, v229 + 6048, &_s10OmniSearch12QueryParsing_pSgMd, &_s10OmniSearch12QueryParsing_pSgMR);
    if (*(v229 + 6072))
    {
      v103 = *(v229 + 5816);
      v104 = *(v229 + 5824);
      v105 = *(v229 + 6080);
      __swift_project_boxed_opaque_existential_1((v229 + 6048), *(v229 + 6072));
      v107 = v84[2];
      v106 = v84[3];
      v108 = *(v105 + 8);
      OUTLINED_FUNCTION_28_0();
      v227 = v109 + *v109;
      v111 = *(v110 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v229 + 6288) = v112;
      *v112 = v113;
      v112[1] = OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:);
      OUTLINED_FUNCTION_161_5();

      __asm { BRAA            X7, X16 }
    }

    outlined destroy of EagerResolutionService?(v229 + 6048, &_s10OmniSearch12QueryParsing_pSgMd, &_s10OmniSearch12QueryParsing_pSgMR);
    _s10OmniSearch18LLMQUModelResponseVSgWOi0_((v229 + 1888));
    memcpy((v229 + 1264), (v229 + 1888), 0x138uLL);
    v116 = *(v229 + 6272);
    outlined init with copy of SpotlightRankingItem?(v229 + 1264, v229 + 2200, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
    v117 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_179_1();
    outlined destroy of EagerResolutionService?(v118, v119, v120);
    if (OUTLINED_FUNCTION_143_8())
    {
      OUTLINED_FUNCTION_51_0();
      __dst[0] = OUTLINED_FUNCTION_10_23();
      _s10OmniSearch18LLMQUModelResponseVSgMd = 136315138;
      memcpy((v229 + 952), (v229 + 1264), 0x138uLL);
      outlined init with copy of SpotlightRankingItem?(v229 + 1264, v229 + 640, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
      v121 = OUTLINED_FUNCTION_63_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v121, v122);
      String.init<A>(describing:)();
      v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *algn_27FC71E74 = v123;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v124, v125, v126, v127, v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(__dst[0]);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v129 = *(v229 + 6192);
    v131 = *v129;
    v130 = v129[1];
    v133 = v129[2];
    v132 = v129[3];
    memcpy((v229 + 2512), (v229 + 1264), 0x138uLL);
    if (_s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v229 + 2512) == 1 || (v134 = *(v229 + 2696)) == 0)
    {
      v134 = *(*(v229 + 6192) + 40);
      v225 = *(*(v229 + 6192) + 32);
    }

    else
    {
      v225 = *(v229 + 2688);
    }

    memcpy((v229 + 2824), (v229 + 1264), 0x138uLL);
    v135 = _s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v229 + 2824);
    v136 = *(v229 + 6280);
    v137 = *(v229 + 6128);
    if (v135 == 1)
    {
      v138 = *(v229 + 6128);
      v139 = 1;
    }

    else
    {
      memcpy(__dst, (v229 + 2824), sizeof(__dst));
      memcpy((v229 + 3136), (v229 + 1264), 0x138uLL);
      outlined init with copy of LLMQUModelResponse(v229 + 3136, v229 + 1576);
      LLMQUModelResponse.toStructuredQuery()(v137);
      memcpy((v229 + 3448), __dst, 0x138uLL);
      outlined destroy of LLMQUModelResponse(v229 + 3448);
      v138 = v137;
      v139 = 0;
    }

    __swift_storeEnumTagSinglePayload(v138, v139, 1, v136);
    v140 = *(v229 + 6160);
    *v140 = v131;
    v140[1] = v130;
    v141 = HIBYTE(v132) & 0xF;
    if ((v132 & 0x2000000000000000) == 0)
    {
      v141 = v133 & 0xFFFFFFFFFFFFLL;
    }

    if (v141)
    {
      v131 = v133;
      v130 = v132;
    }

    else
    {
    }

    v142 = *(v229 + 6192);
    v143 = *(v229 + 6168);
    v144 = *(v229 + 6160);
    v145 = *(v229 + 6152);
    v146 = *(v229 + 6128);
    v144[2] = v131;
    v144[3] = v130;
    v147 = v226[1760];
    v144[4] = v225;
    v144[5] = v134;
    OUTLINED_FUNCTION_267_1(v145[7]);
    OUTLINED_FUNCTION_39_20(v145[8]);
    v148 = v144 + v145[9];
    type metadata completion function for DataFilter.FilterResult();
    UtteranceNormalizer.init(locale:)();
    outlined destroy of EagerResolutionService?(v146, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    OUTLINED_FUNCTION_7_53();
    outlined init with take of UserQuery(v144, v143);
    v149 = OUTLINED_FUNCTION_62_3();
    outlined assign with take of UserQuery(v149, v150);
    if (v147)
    {
      outlined destroy of EagerResolutionService?(v229 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
      v71 = v226[81];
      v47 = v229;
      v62 = v226;
    }

    else
    {
      v47 = v229;
      if (*(*(v229 + 6112) + 16))
      {
        outlined destroy of EagerResolutionService?(v229 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
        LOBYTE(v151) = 1;
        v62 = v226;
      }

      else
      {
        v62 = v226;
        if (v226[1753] == 1)
        {
          outlined destroy of EagerResolutionService?(v229 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
          LOBYTE(v151) = 1;
        }

        else
        {
          memcpy((v229 + 3760), (v229 + 1264), 0x138uLL);
          if (_s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v229 + 3760) == 1 || (outlined destroy of EagerResolutionService?(v229 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR), v151 = *(v229 + 3792), v151 == 2))
          {
            LOBYTE(v151) = 0;
          }
        }
      }

      v71 = v151 & 1;
    }
  }

  v230 = v71;
  v62[82] = v71;
  v152 = *(v47 + 6120);
  v153 = *(v152 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v154 = *(v153 + 16);
  if (v154)
  {
    v155 = v153 + 32;
    v156 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v155, v47 + 6008);
      v157 = *(v47 + 6032);
      v158 = *(v47 + 6040);
      OUTLINED_FUNCTION_70_15((v47 + 6008));
      v159 = OUTLINED_FUNCTION_63_21();
      v160(v159);
      v161 = __dst[0];
      v162 = *(v47 + 6032);
      v163 = *(v47 + 6040);
      OUTLINED_FUNCTION_70_15((v47 + 6008));
      v164 = OUTLINED_FUNCTION_63_21();
      v165(v164);
      if (v161 & __dst[0])
      {
        outlined init with copy of ChatMessageRecord(v47 + 6008, v47 + 5968);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = *(v156 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v156 = v170;
        }

        OUTLINED_FUNCTION_182_9();
        if (v167)
        {
          OUTLINED_FUNCTION_22_5(v166);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v156 = v171;
        }

        OUTLINED_FUNCTION_181_8();
        outlined init with take of ResponseOverrideMatcherProtocol((v47 + 5968), v168 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v47 + 6008));
      v155 += 40;
      --v154;
    }

    while (v154);
    v152 = *(v47 + 6120);
    v62 = v226;
  }

  else
  {
    v156 = MEMORY[0x277D84F90];
  }

  *(v47 + 6304) = v156;
  v172 = *(v47 + 6192);
  v173 = *v152;
  v174 = MEMORY[0x277D85000];
  v175 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v177 = (*(v176 + 368))();
  if (!v177)
  {
    v204 = v47;
    v205 = *(v47 + 6120);
    v204[761] = 1;
    memcpy(v204 + 691, v204 + 733, 0x62uLL);
    v62[1530] = v230;
    OUTLINED_FUNCTION_24_31(v204 + 5627);
    memcpy(v204 + 523, v204 + 691, 0x69uLL);
    v206 = *((*v174 & *v205) + 0x128);
    outlined init with copy of OmniSearchOptions((v204 + 691), (v204 + 537));
    v228 = v206 + *v206;
    v207 = v206[1];
    v208 = swift_task_alloc();
    v204[789] = v208;
    *v208 = v204;
    OUTLINED_FUNCTION_45_21(v208);
    v209 = v204[765];
    v210 = v204[763];
    OUTLINED_FUNCTION_49_4(v204[774]);
    OUTLINED_FUNCTION_161_5();

    __asm { BRAA            X5, X16 }
  }

  v178 = v177;
  v179 = *(v47 + 6272);

  v180 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_211_3();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    __dst[0] = OUTLINED_FUNCTION_11_26();
    *v174 = 136315138;
    type metadata accessor for SearchResult(0);
    v181 = OUTLINED_FUNCTION_227_3();
    MEMORY[0x25F89F8A0](v181);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_9();

    *(v174 + 4) = v47;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v182, v183, v184, v185, v186, 0xCu);
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v187 = *(v47 + 5784);

  v188 = *(v47 + 6272);
  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_77_5(v190))
  {
    OUTLINED_FUNCTION_51_5();
    v191 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v191);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v192, v193, v194, v195, v196, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  *(v47 + 6344) = 0;
  *(v47 + 6336) = v178;
  v197 = *(v178 + 16);

  if (v197)
  {
    v198 = *(v47 + 6304);

    goto LABEL_84;
  }

  v213 = *(v47 + 6304);
  if (!v187)
  {
    v218 = OUTLINED_FUNCTION_83_15();
    v219(v218);

    goto LABEL_94;
  }

  v214 = *(v187 + 16);
  v215 = *(v47 + 6304);

  if (!v214)
  {
    v216 = OUTLINED_FUNCTION_83_15();
    v217(v216);
LABEL_94:
    v220 = v62[82];
    v221 = *(v47 + 6264);
    v222 = *(v47 + 6192);

    OUTLINED_FUNCTION_213_5((v47 + 5416));
    v62[1418] = v220;
    OUTLINED_FUNCTION_24_31(v47 + 5515);
    outlined destroy of OmniSearchOptions(v47 + 5416);
    OUTLINED_FUNCTION_3_68();
    outlined destroy of UserQuery();
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();
LABEL_25:

    goto LABEL_7;
  }

LABEL_84:
  v199 = v62[82];
  OUTLINED_FUNCTION_213_5((v47 + 4632));
  v62[634] = v199;
  OUTLINED_FUNCTION_24_31(v47 + 4731);
  memcpy((v47 + 4744), (v47 + 4632), 0x69uLL);
  outlined init with copy of OmniSearchOptions(v47 + 4632, v47 + 4856);
  v200 = swift_task_alloc();
  *(v47 + 6352) = v200;
  *v200 = v47;
  OUTLINED_FUNCTION_15_44(v200);
  OUTLINED_FUNCTION_196_6();
  OUTLINED_FUNCTION_49_4(v201);
  OUTLINED_FUNCTION_161_5();

  return OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 6288);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 6296) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v116 = v0;
  memcpy((v0 + 16), (v0 + 328), 0x138uLL);
  _s10OmniSearch11GeoLocationVSgWOi_(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6048));
  memcpy((v0 + 1264), (v0 + 16), 0x138uLL);
  v1 = *(v0 + 6272);
  outlined init with copy of SpotlightRankingItem?(v0 + 1264, v0 + 2200, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v3, v4, v5);
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    __dst[0] = OUTLINED_FUNCTION_10_23();
    _s10OmniSearch18LLMQUModelResponseVSgMd = 136315138;
    OUTLINED_FUNCTION_222_5((v0 + 952));
    outlined init with copy of SpotlightRankingItem?(v0 + 1264, v0 + 640, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
    v6 = OUTLINED_FUNCTION_63_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *algn_27FC71E74 = v8;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(__dst[0]);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v14 = *(v0 + 6192);
  v16 = *v14;
  v15 = v14[1];
  v18 = v14[2];
  v17 = v14[3];
  OUTLINED_FUNCTION_222_5((v0 + 2512));
  if (_s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v0 + 2512) == 1 || (v19 = *(v0 + 2696)) == 0)
  {
    v22 = *(v0 + 6192);
    v20 = *(v22 + 32);
    v19 = *(v22 + 40);
  }

  else
  {
    v20 = *(v0 + 2688);
    v21 = *(v0 + 2696);
  }

  OUTLINED_FUNCTION_222_5((v0 + 2824));
  v23 = _s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v0 + 2824);
  v24 = *(v0 + 6280);
  v25 = *(v0 + 6128);
  v112 = v20;
  if (v23 == 1)
  {
    v26 = *(v0 + 6128);
    v27 = 1;
  }

  else
  {
    memcpy(__dst, (v0 + 2824), sizeof(__dst));
    OUTLINED_FUNCTION_222_5((v0 + 3136));
    outlined init with copy of LLMQUModelResponse(v0 + 3136, v0 + 1576);
    LLMQUModelResponse.toStructuredQuery()(v25);
    memcpy((v0 + 3448), __dst, 0x138uLL);
    outlined destroy of LLMQUModelResponse(v0 + 3448);
    v26 = v25;
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v26, v27, 1, v24);
  v28 = *(v0 + 6160);
  *v28 = v16;
  v28[1] = v15;
  v29 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v29 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v16 = v18;
    v15 = v17;
  }

  else
  {
  }

  v30 = *(v0 + 6192);
  v31 = *(v0 + 6168);
  v32 = *(v0 + 6160);
  v33 = *(v0 + 6152);
  v34 = *(v0 + 6128);
  v32[2] = v16;
  v32[3] = v15;
  v35 = v0 + 4096;
  v36 = *(v0 + 5856);
  v32[4] = v112;
  v32[5] = v19;
  OUTLINED_FUNCTION_267_1(v33[7]);
  OUTLINED_FUNCTION_39_20(v33[8]);
  v37 = v32 + v33[9];
  type metadata completion function for DataFilter.FilterResult();
  UtteranceNormalizer.init(locale:)();
  outlined destroy of EagerResolutionService?(v34, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_7_53();
  outlined init with take of UserQuery(v32, v31);
  v38 = OUTLINED_FUNCTION_62_3();
  outlined assign with take of UserQuery(v38, v39);
  if (v36)
  {
    outlined destroy of EagerResolutionService?(v0 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
    v40 = *(v0 + 4177);
    v41 = (v0 + 4096);
  }

  else
  {
    if (*(*(v0 + 6112) + 16))
    {
      outlined destroy of EagerResolutionService?(v0 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
      LOBYTE(v42) = 1;
      v41 = (v0 + 4096);
    }

    else
    {
      v41 = (v0 + 4096);
      if (*(v0 + 5849) == 1)
      {
        outlined destroy of EagerResolutionService?(v0 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
        LOBYTE(v42) = 1;
      }

      else
      {
        OUTLINED_FUNCTION_222_5((v0 + 3760));
        if (_s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v0 + 3760) == 1 || (outlined destroy of EagerResolutionService?(v0 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR), v42 = *(v0 + 3792), v42 == 2))
        {
          LOBYTE(v42) = 0;
        }
      }
    }

    v40 = v42 & 1;
  }

  v111 = v40;
  v41[82] = v40;
  v43 = *(v0 + 6120);
  v44 = *(v43 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v45 = *(v44 + 16);
  if (v45)
  {
    v35 = 5968;
    v46 = v44 + 32;
    v47 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v46, v0 + 6008);
      OUTLINED_FUNCTION_229_5();
      OUTLINED_FUNCTION_70_15((v0 + 6008));
      v48 = OUTLINED_FUNCTION_63_21();
      v49(v48);
      v34 = LODWORD(__dst[0]);
      OUTLINED_FUNCTION_229_5();
      OUTLINED_FUNCTION_70_15((v0 + 6008));
      v50 = OUTLINED_FUNCTION_63_21();
      v51(v50);
      if (v34 & __dst[0])
      {
        outlined init with copy of ChatMessageRecord(v0 + 6008, v0 + 5968);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = *(v47 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v47 = v56;
        }

        OUTLINED_FUNCTION_182_9();
        if (v53)
        {
          OUTLINED_FUNCTION_22_5(v52);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v47 = v57;
        }

        OUTLINED_FUNCTION_181_8();
        outlined init with take of ResponseOverrideMatcherProtocol((v0 + 5968), v54 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6008));
      v46 += 40;
      --v45;
    }

    while (v45);
    v43 = *(v0 + 6120);
    v41 = (v0 + 4096);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  *(v0 + 6304) = v47;
  v58 = *(v0 + 6192);
  v59 = *v43;
  v60 = MEMORY[0x277D85000];
  v61 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  if (!(*(v62 + 368))())
  {
    OUTLINED_FUNCTION_130_12();
    v41[1530] = v111;
    OUTLINED_FUNCTION_24_31(v0 + 5627);
    memcpy(&_s10OmniSearch21StructuredQueryEntityVSgMR + v0, (v0 + v34), 0x69uLL);
    v90 = *((*v60 & *v35) + 0x128);
    outlined init with copy of OmniSearchOptions(v0 + v34, v0);
    v113 = v90 + *v90;
    v91 = v90[1];
    v92 = swift_task_alloc();
    *(v0 + 6312) = v92;
    *v92 = v0;
    OUTLINED_FUNCTION_45_21(v92);
    OUTLINED_FUNCTION_233_5();
    v93 = *(v0 + 6104);
    OUTLINED_FUNCTION_49_4(v94);
    OUTLINED_FUNCTION_132_6();

    __asm { BRAA            X5, X16 }
  }

  v63 = *(v0 + 6272);

  v64 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_211_3();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    __dst[0] = OUTLINED_FUNCTION_11_26();
    _s10OmniSearch21StructuredQueryEntityVSgMR = 136315138;
    type metadata accessor for SearchResult(0);
    v65 = OUTLINED_FUNCTION_227_3();
    MEMORY[0x25F89F8A0](v65);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_9();

    unk_25DBD92C4 = 0;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v71 = *(v0 + 5784);

  v72 = *(v0 + 6272);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_77_5(v74))
  {
    OUTLINED_FUNCTION_51_5();
    v75 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v75);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v76, v77, v78, v79, v80, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_264_4();
  if (v73)
  {
    v81 = *(v0 + 6304);

    goto LABEL_43;
  }

  v97 = *(v0 + 6304);
  if (!v71)
  {
    v102 = OUTLINED_FUNCTION_57_19();
    (*(v103 + 8))(v102);

LABEL_53:
    OUTLINED_FUNCTION_208_4();

    OUTLINED_FUNCTION_122_10();
    v41[1418] = v71;
    OUTLINED_FUNCTION_24_31(v0 + 5515);
    outlined destroy of OmniSearchOptions(&_s10OmniSearch21StructuredQueryEntityVSgMR + v0);
    OUTLINED_FUNCTION_3_68();
    outlined destroy of UserQuery();
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

    v104 = *(v0 + 6248);
    v105 = *(v0 + 6240);
    v106 = *(v0 + 6216);
    v107 = *(v0 + 6192);
    OUTLINED_FUNCTION_101_10();
    v108 = *(v0 + 6136);
    v114 = *(v0 + 6128);

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_132_6();

    __asm { BRAA            X2, X16 }
  }

  v98 = *(v71 + 16);
  v99 = *(v0 + 6304);

  if (!v98)
  {
    v100 = OUTLINED_FUNCTION_57_19();
    (*(v101 + 8))(v100);
    goto LABEL_53;
  }

LABEL_43:
  v82 = v41[82];
  OUTLINED_FUNCTION_122_10();
  v41[634] = v82;
  OUTLINED_FUNCTION_24_31(v0 + 4731);
  memcpy((v0 + 4744), (v0 + 4632), 0x69uLL);
  outlined init with copy of OmniSearchOptions(v0 + 4632, v0 + 4856);
  v83 = swift_task_alloc();
  *(v0 + 6352) = v83;
  *v83 = v0;
  OUTLINED_FUNCTION_15_44(v83);
  v84 = *(v0 + 6216);
  OUTLINED_FUNCTION_233_5();
  v85 = *(v0 + 6112);
  v86 = *(v0 + 6104);
  OUTLINED_FUNCTION_49_4(v87);
  OUTLINED_FUNCTION_132_6();

  return OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 6312);
  *v4 = *v1;
  v3[790] = v7;
  v3[791] = v0;

  if (v0)
  {
    v8 = v3[788];
    memcpy(v3 + 509, v3 + 523, 0x69uLL);
    outlined destroy of OmniSearchOptions((v3 + 509));
  }

  else
  {
    memcpy(v3 + 565, v3 + 523, 0x69uLL);
    outlined destroy of OmniSearchOptions((v3 + 565));
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = v4[794];
  v8 = v4[793];
  *v6 = *v1;
  v5[795] = v0;

  v9 = v4[792];
  if (v0)
  {
    memcpy(v5 + 635, v5 + 593, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 635));
  }

  else
  {
    v5[796] = v3;
    memcpy(v5 + 663, v5 + 593, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 663));
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_218_6();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v113 = (v16 + 4096);
  v114 = v16;
  v17 = *(v16 + 6320);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = v16 + 6376;
  v22 = *(v16 + 6320);
  v112 = v21;
  v23 = -1;
  v24 = -1 << *(v22 + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & v18;
  v26 = (63 - v24) >> 6;

  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  if (v25)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
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
      return;
    }

    if (v29 >= v26)
    {
      break;
    }

    v25 = *(v19 + 8 * v29);
    ++v27;
    if (v25)
    {
      v27 = v29;
      do
      {
LABEL_8:
        v30 = (*(v22 + 56) + ((v27 << 10) | (16 * __clz(__rbit64(v25)))));
        v31 = *v30;
        v32 = v30[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = *(v28 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v28 = v36;
        }

        v33 = *(v28 + 16);
        if (v33 >= *(v28 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v28 = v37;
        }

        v25 &= v25 - 1;
        *(v28 + 16) = v33 + 1;
        v34 = v28 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v32;
      }

      while (v25);
    }
  }

  v38 = v114[790];

  v39 = 0;
  v40 = *(v28 + 16);
  v41 = MEMORY[0x277D84F90];
LABEL_15:
  v42 = 16 * v39 + 40;
  while (v40 != v39)
  {
    if (v39 >= *(v28 + 16))
    {
      goto LABEL_67;
    }

    v43 = *(v28 + v42);
    v42 += 16;
    ++v39;
    if (v43)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = v41[2];
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v41 = v47;
      }

      v45 = v41[2];
      v44 = v41[3];
      if (v45 >= v44 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v44);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v41 = v48;
      }

      v41[2] = v45 + 1;
      v41[v45 + 4] = v43;
      goto LABEL_15;
    }
  }

  if (v41[2])
  {
    v49 = v41[4];
  }

  else
  {
    v49 = 0;
  }

  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  v52 = 32;
  while (v40 != v50)
  {
    if (v50 >= *(v28 + 16))
    {
      goto LABEL_68;
    }

    v53 = *(v28 + v52);
    v54 = *(v53 + 16);
    v55 = *(v51 + 16);
    v56 = v55 + v54;
    if (__OFADD__(v55, v54))
    {
      goto LABEL_69;
    }

    v57 = *(v28 + v52);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v56 > *(v51 + 24) >> 1)
    {
      if (v55 <= v56)
      {
        v59 = v55 + v54;
      }

      else
      {
        v59 = v55;
      }

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v59, 1, v51);
      v51 = v60;
    }

    if (*(v53 + 16))
    {
      v61 = (*(v51 + 24) >> 1) - *(v51 + 16);
      v62 = *(type metadata accessor for SearchResult(0) - 8);
      if (v61 < v54)
      {
        goto LABEL_71;
      }

      v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v64 = *(v62 + 72);
      swift_arrayInitWithCopy();

      if (v54)
      {
        v65 = *(v51 + 16);
        v66 = __OFADD__(v65, v54);
        v67 = v65 + v54;
        if (v66)
        {
          goto LABEL_72;
        }

        *(v51 + 16) = v67;
      }
    }

    else
    {

      if (v54)
      {
        goto LABEL_70;
      }
    }

    v52 += 16;
    ++v50;
  }

  v68 = v114;
  v69 = v114[774];

  v70 = v114[695];
  v71 = OUTLINED_FUNCTION_116_1();
  v73 = Array<A>.dedupeLocalResults(query:)(v71, v72);

  v74 = Array<A>.rankLocalResults(query:)(v69, v73);

  if (v49)
  {
    v75 = *(v49 + 16);

    if (v75)
    {
      v76 = v114[784];

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v77, v78))
      {
        OUTLINED_FUNCTION_51_0();
        a13 = OUTLINED_FUNCTION_11_26();
        *v69 = 136642819;
        Dictionary.description.getter();

        OUTLINED_FUNCTION_158();
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v69 + 4) = v79;
        v68 = v114;
        OUTLINED_FUNCTION_165_6(&dword_25D85C000, v77, v78, "ECR results: %{sensitive}s");
        OUTLINED_FUNCTION_195_6();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        goto LABEL_51;
      }

      goto LABEL_53;
    }
  }

  else
  {
  }

  v80 = v114[784];
  v77 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v77, v81))
  {
    OUTLINED_FUNCTION_51_5();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_200_5();
    _os_log_impl(v82, v83, v84, v85, v86, 2u);
LABEL_51:
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

LABEL_53:
  v68[793] = v49;
  v68[792] = v74;
  v87 = *(v74 + 16);

  if (v87)
  {
    v88 = v68[788];

LABEL_55:
    v89 = v113[82];
    OUTLINED_FUNCTION_213_5(v68 + 579);
    v113[634] = v89;
    OUTLINED_FUNCTION_24_31(v68 + 4731);
    memcpy(v68 + 593, v68 + 579, 0x69uLL);
    outlined init with copy of OmniSearchOptions((v68 + 579), (v68 + 607));
    v90 = swift_task_alloc();
    v68[794] = v90;
    *v90 = v68;
    OUTLINED_FUNCTION_15_44(v90);
    OUTLINED_FUNCTION_196_6();
    OUTLINED_FUNCTION_49_4(v91);
    OUTLINED_FUNCTION_115();

    OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)();
    return;
  }

  v93 = v68[788];
  if (v70)
  {
    v94 = *(v70 + 16);
    v95 = v68[788];

    if (v94)
    {
      goto LABEL_55;
    }

    v96 = OUTLINED_FUNCTION_83_15();
    v97(v96);
  }

  else
  {
    v98 = OUTLINED_FUNCTION_83_15();
    v99(v98);
  }

  v100 = v113[82];
  v101 = v68[783];
  v102 = v68[774];

  memcpy(v68 + 677, v68 + 733, 0x62uLL);
  v113[1418] = v100;
  *(v68 + 5515) = *v112;
  *(v68 + 5519) = *(v112 + 4);
  outlined destroy of OmniSearchOptions((v68 + 677));
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_113_12();
  v115 = v103;

  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_115();

  v106(v104, v105, v106, v107, v108, v109, v110, v111, a9, v112, v113, v115, a13, a14, a15, a16);
}

uint64_t OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v15 = *(v14 + 4178);
  v16 = *(v14 + 6264);
  v17 = OUTLINED_FUNCTION_57_19();
  v18 = *(v14 + 6192);
  (*(v19 + 8))(v17);
  OUTLINED_FUNCTION_209_4();
  *(v14 + 5290) = v15;
  OUTLINED_FUNCTION_111_9(5291);
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  v20 = *(v14 + 6368);
  OUTLINED_FUNCTION_56_17();

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_83_0();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v15 = *(v14 + 4178);
  v16 = *(v14 + 6264);
  v17 = OUTLINED_FUNCTION_57_19();
  v18 = *(v14 + 6192);
  (*(v19 + 8))(v17);
  OUTLINED_FUNCTION_209_4();
  *(v14 + 4506) = v15;
  OUTLINED_FUNCTION_111_9(4507);
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  v20 = *(v14 + 6328);
  OUTLINED_FUNCTION_56_17();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_83_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v15 = *(v14 + 4178);
  v16 = *(v14 + 6264);
  v17 = OUTLINED_FUNCTION_57_19();
  v18 = *(v14 + 6192);
  (*(v19 + 8))(v17);
  OUTLINED_FUNCTION_209_4();
  *(v14 + 5066) = v15;
  OUTLINED_FUNCTION_111_9(5067);
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  v20 = *(v14 + 6360);
  OUTLINED_FUNCTION_56_17();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_83_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v19 = (v16 + 4096);
  v20 = 6376;
  v21 = *(v16 + 6296);
  v22 = *(v16 + 6272);
  __swift_destroy_boxed_opaque_existential_1Tm((v16 + 6048));
  v23 = v21;
  v24 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  v25 = OUTLINED_FUNCTION_259();
  v26 = *(v16 + 6296);
  if (v25)
  {
    OUTLINED_FUNCTION_51_0();
    v27 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_271_2(5.7779e-34);
    v28 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v28);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    outlined destroy of EagerResolutionService?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  LODWORD(a11) = *(v16 + 4177);
  *(v16 + 4178) = a11;
  v34 = *(v16 + 6120);
  v35 = *(v34 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v36 = *(v35 + 16);
  if (v36)
  {
    a10 = v16 + 4096;
    v18 = 6008;
    v37 = v35 + 32;
    v38 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v37, v16 + 6008);
      OUTLINED_FUNCTION_229_5();
      OUTLINED_FUNCTION_70_15((v16 + 6008));
      v39 = OUTLINED_FUNCTION_63_21();
      v40(v39);
      v20 = a13;
      OUTLINED_FUNCTION_229_5();
      OUTLINED_FUNCTION_70_15((v16 + 6008));
      v41 = OUTLINED_FUNCTION_63_21();
      v42(v41);
      if (a13)
      {
        outlined init with copy of ChatMessageRecord(v16 + 6008, v16 + 5968);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = *(v38 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v38 = v47;
        }

        OUTLINED_FUNCTION_182_9();
        if (v44)
        {
          OUTLINED_FUNCTION_22_5(v43);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v38 = v48;
        }

        OUTLINED_FUNCTION_181_8();
        outlined init with take of ResponseOverrideMatcherProtocol((v16 + 5968), v45 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v16 + 6008));
      v37 += 40;
      --v36;
    }

    while (v36);
    v34 = *(v16 + 6120);
    v19 = (v16 + 4096);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  *(v16 + 6304) = v38;
  v49 = *(v16 + 6192);
  v50 = *v34;
  v51 = MEMORY[0x277D85000];
  v52 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  if ((*(v53 + 368))())
  {
    v54 = *(v16 + 6272);

    v55 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_211_3();

    if (OUTLINED_FUNCTION_259())
    {
      OUTLINED_FUNCTION_51_0();
      a13 = OUTLINED_FUNCTION_11_26();
      *v17 = 136315138;
      type metadata accessor for SearchResult(0);
      v56 = OUTLINED_FUNCTION_227_3();
      MEMORY[0x25F89F8A0](v56);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_169_9();

      *(v17 + 4) = 0;
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v62 = *(v16 + 5784);

    v63 = *(v16 + 6272);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_77_5(v65))
    {
      OUTLINED_FUNCTION_51_5();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v66);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v67, v68, v69, v70, v71, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_264_4();
    if (v64)
    {
      v72 = *(v16 + 6304);

LABEL_22:
      v73 = v19[82];
      OUTLINED_FUNCTION_122_10();
      v19[634] = v73;
      OUTLINED_FUNCTION_24_31(v16 + 4731);
      memcpy((v16 + 4744), (v16 + 4632), 0x69uLL);
      outlined init with copy of OmniSearchOptions(v16 + 4632, v16 + 4856);
      v74 = swift_task_alloc();
      *(v16 + 6352) = v74;
      *v74 = v16;
      OUTLINED_FUNCTION_15_44(v74);
      v75 = *(v16 + 6216);
      OUTLINED_FUNCTION_233_5();
      v76 = *(v16 + 6112);
      v77 = *(v16 + 6104);
      OUTLINED_FUNCTION_49_4(v78);
      OUTLINED_FUNCTION_115();

      return OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)();
    }

    v94 = *(v16 + 6304);
    if (v62)
    {
      v95 = *(v62 + 16);
      v96 = *(v16 + 6304);

      if (v95)
      {
        goto LABEL_22;
      }

      v97 = OUTLINED_FUNCTION_57_19();
      (*(v98 + 8))(v97);
    }

    else
    {
      v99 = OUTLINED_FUNCTION_57_19();
      (*(v100 + 8))(v99);
    }

    OUTLINED_FUNCTION_208_4();

    OUTLINED_FUNCTION_122_10();
    v19[1418] = v62;
    OUTLINED_FUNCTION_24_31(v16 + 5515);
    outlined destroy of OmniSearchOptions(v16 + v17);
    OUTLINED_FUNCTION_3_68();
    outlined destroy of UserQuery();
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

    v101 = *(v16 + 6248);
    v102 = *(v16 + 6240);
    v103 = *(v16 + 6216);
    v104 = *(v16 + 6192);
    OUTLINED_FUNCTION_101_10();
    v105 = *(v16 + 6136);
    v116 = *(v16 + 6128);

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_115();

    return v108(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, v116, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_130_12();
    v19[1530] = a11;
    OUTLINED_FUNCTION_24_31(v16 + 5627);
    memcpy((v16 + v17), (v16 + v20), 0x69uLL);
    v115 = (*v51 & *v18) + 296;
    v81 = *((*v51 & *v18) + 0x128);
    outlined init with copy of OmniSearchOptions(v16 + v20, v16);
    v114 = v81 + *v81;
    v82 = v81[1];
    v83 = swift_task_alloc();
    *(v16 + 6312) = v83;
    *v83 = v16;
    OUTLINED_FUNCTION_45_21(v83);
    OUTLINED_FUNCTION_233_5();
    v84 = *(v16 + 6104);
    OUTLINED_FUNCTION_49_4(v85);
    OUTLINED_FUNCTION_115();

    return v91(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, v114, v115, a13, a14, a15, a16);
  }
}

uint64_t OmniSearchService.globalSearch(query:sources:options:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  *(v1 + 320) = v6;
  *(v1 + 328) = v0;
  v7 = type metadata accessor for OSSignpostID();
  *(v1 + 336) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 344) = v8;
  v10 = *(v9 + 64);
  *(v1 + 352) = OUTLINED_FUNCTION_160();
  v11 = swift_task_alloc();
  v12 = *v5;
  *(v1 + 360) = v11;
  *(v1 + 368) = v12;
  memcpy((v1 + 128), v3, 0x65uLL);
  v13 = *(v3 + 101);
  *(v1 + 121) = v13;
  *(v1 + 416) = v13;
  *(v1 + 122) = *(v3 + 102);
  *(v1 + 124) = *(v3 + 104);
  v14 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 392);
  *v4 = *v1;
  v3[50] = v7;
  v3[51] = v0;

  if (v0)
  {
    v8 = v3[48];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();
  v5 = v0[51];

  return v4();
}

uint64_t OmniSearchService.globalSearch(query:sources:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  if (*(v14 + 121) & 1) != 0 || (type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0), (static NSUserDefaults.skipGlobalSearch.getter()))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v15, static Logging.search);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v17))
    {
      OUTLINED_FUNCTION_51_5();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v18);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

LABEL_8:
    v25 = *(v14 + 352);
    v24 = *(v14 + 360);

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_83_0();

    return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v35 = *(v14 + 360);
  v36 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v36, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v37 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v38 = *(v14 + 360);
    OUTLINED_FUNCTION_51_5();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v39);
    v40 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v41, v42, v40, "OmniSearchService.globalSearch", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v43 = *(v14 + 352);
  v44 = *(v14 + 360);
  v45 = *(v14 + 336);
  v46 = *(v14 + 344);

  v47 = OUTLINED_FUNCTION_9_27();
  v48(v47);
  v49 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v49);
  OUTLINED_FUNCTION_45_4();
  *(v14 + 376) = OSSignpostIntervalState.init(id:isOpen:)();
  v50 = OUTLINED_FUNCTION_67_19();
  v51(v50);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v52, static Logging.search);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_51_5();
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_25D85C000, v53, v54, "Starting global search...", v55, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v56 = *(v14 + 368);

  if ((v56 & 2) == 0)
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_77_5(v58))
    {
      OUTLINED_FUNCTION_51_5();
      v59 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v59);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

    goto LABEL_8;
  }

  v65 = v56 & 2;
  v66 = *(v14 + 328);
  v67 = *(v66 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v68 = *(v67 + 16);
  if (v68)
  {
    v95 = v56 & 2;
    v69 = (v14 + 416);
    v70 = v67 + 32;
    v71 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v70, v14 + 232);
      v72 = *(v14 + 256);
      v73 = *(v14 + 264);
      OUTLINED_FUNCTION_70_15((v14 + 232));
      v74 = OUTLINED_FUNCTION_63_21();
      v75(v74);
      if ((a11 & 2) != 0)
      {
        outlined init with copy of ChatMessageRecord(v14 + 232, v14 + 272);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = *(v71 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v71 = v79;
        }

        v77 = *(v71 + 16);
        v76 = *(v71 + 24);
        if (v77 >= v76 >> 1)
        {
          OUTLINED_FUNCTION_22_5(v76);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v71 = v80;
        }

        *(v71 + 16) = v77 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol((v14 + 272), v71 + 40 * v77 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v14 + 232));
      v70 += 40;
      --v68;
    }

    while (v68);
    v66 = *(v14 + 328);
    v65 = v95;
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
    v69 = (v14 + 121);
  }

  v81 = *v69;
  *(v14 + 384) = v71;
  *(v14 + 312) = v65;
  memcpy((v14 + 16), (v14 + 128), 0x65uLL);
  *(v14 + 117) = v81;
  *(v14 + 120) = *(v14 + 124);
  *(v14 + 118) = *(v14 + 122);
  v94 = (*MEMORY[0x277D85000] & *v66) + 296;
  v82 = *((*MEMORY[0x277D85000] & *v66) + 0x128);
  v96 = v82 + *v82;
  v83 = v82[1];
  v84 = swift_task_alloc();
  *(v14 + 392) = v84;
  *v84 = v14;
  v84[1] = OmniSearchService.globalSearch(query:sources:options:);
  v85 = *(v14 + 328);
  OUTLINED_FUNCTION_49_4(*(v14 + 320));
  OUTLINED_FUNCTION_83_0();

  return v91(v86, v87, v88, v89, v90, v91, v92, v93, v94, v96, a11, a12, a13, a14);
}

uint64_t OmniSearchService.globalSearch(query:sources:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v54 = v12;
  v13 = v12[50];
  v14 = *(v13 + 64);
  v15 = *(v13 + 32);
  OUTLINED_FUNCTION_163_8();
  v18 = v17 & v16;
  v20 = (63 - v19) >> 6;

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v18)
      {
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= v20)
          {
            goto LABEL_21;
          }

          v18 = *(v13 + 64 + 8 * v24);
          ++v22;
          if (v18)
          {
            v22 = v24;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_7:
      v25 = (v22 << 10) | (16 * __clz(__rbit64(v18)));
      v26 = *(*(v13 + 56) + v25);
      v27 = *(v26 + 16);
      v28 = *(v23 + 16);
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_25;
      }

      v30 = *(*(v13 + 56) + v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v29 > *(v23 + 24) >> 1)
      {
        if (v28 <= v29)
        {
          v32 = v28 + v27;
        }

        else
        {
          v32 = v28;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v32, 1, v23);
        v23 = v33;
      }

      v18 &= v18 - 1;
      if (!*(v26 + 16))
      {
        break;
      }

      v34 = (*(v23 + 24) >> 1) - *(v23 + 16);
      result = type metadata accessor for SearchResult(0);
      v35 = *(result - 8);
      if (v34 < v27)
      {
        goto LABEL_26;
      }

      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = *(v35 + 72);
      swift_arrayInitWithCopy();

      if (v27)
      {
        v38 = *(v23 + 16);
        v39 = __OFADD__(v38, v27);
        v40 = v38 + v27;
        if (v39)
        {
          goto LABEL_27;
        }

        *(v23 + 16) = v40;
      }
    }
  }

  while (!v27);
  __break(1u);
LABEL_21:
  v41 = v54[50];
  v43 = v54[47];
  v42 = v54[48];

  OmniSearchService.handleGlobalResults(globalResults:)();
  OUTLINED_FUNCTION_112_2();

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  v45 = v54[44];
  v44 = v54[45];

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_63_14();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, v54, a10, a11, a12);
}

uint64_t OmniSearchService.entitySearch(_:rewrittenQuery:allowedTypes:)()
{
  OUTLINED_FUNCTION_48();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for TypeIdentifier();
  v1[11] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[12] = v11;
  v13 = *(v12 + 64);
  v1[13] = OUTLINED_FUNCTION_199();
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v1[14] = Entity;
  OUTLINED_FUNCTION_114(Entity);
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for OSSignpostID();
  v1[16] = v17;
  OUTLINED_FUNCTION_21(v17);
  v1[17] = v18;
  v20 = *(v19 + 64);
  v1[18] = OUTLINED_FUNCTION_160();
  v1[19] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 176);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  v4[23] = v0;

  if (v0)
  {
    v10 = v4[21];
    outlined destroy of EagerResolutionService?(v4[10], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    v11 = v4[21];
    v12 = v4[10];
    v4[24] = v1;
    outlined destroy of EagerResolutionService?(v12, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[10];
  OUTLINED_FUNCTION_133();
  v9 = (*(v8 + 128))();

  OUTLINED_FUNCTION_5_55();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_62();

  return v10(v9);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  OUTLINED_FUNCTION_5_55();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();
  v7 = v0[23];
  OUTLINED_FUNCTION_204();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t OmniSearchService.entitySearch(_:rewrittenQuery:allowedTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  if (one-time initialization token for searchSignposter != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_22();
  }

  v17 = v16[19];
  v18 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v18, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v19 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v20 = v16[19];
    OUTLINED_FUNCTION_51_5();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v21);
    v22 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v23, v24, v22, "OmniSearchService.entitySearch", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v25 = v16[18];
  v26 = v16[19];
  v27 = v16[16];
  v28 = v16[17];

  v29 = OUTLINED_FUNCTION_9_27();
  v30(v29);
  v31 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v31);
  OUTLINED_FUNCTION_45_4();
  v16[20] = OSSignpostIntervalState.init(id:isOpen:)();
  v32 = OUTLINED_FUNCTION_67_19();
  v33(v32);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v34 = v16[7];
  v35 = v16[8];
  v36 = v16[5];
  v37 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v37, static Logging.search);

  v38 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  if (OUTLINED_FUNCTION_259())
  {
    v39 = v16[7];
    v110 = v16[8];
    v112 = v16[11];
    v41 = v16[5];
    v40 = v16[6];
    v42 = v16[4];
    v43 = OUTLINED_FUNCTION_49_0();
    a13 = swift_slowAlloc();
    *v43 = 136315650;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v43 + 12) = 2080;

    OUTLINED_FUNCTION_241_0();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v43 + 14) = v44;
    *(v43 + 22) = 2080;
    lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type TypeIdentifier and conformance TypeIdentifier, MEMORY[0x277D72D58]);
    Set.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_9();

    *(v43 + 24) = v40;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v45, v46, v47, v48, v49, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (v16[7])
  {
    v50 = v16 + 6;
    v51 = v34;
  }

  else
  {
    v51 = v16[5];
    v50 = v16 + 4;
  }

  v52 = *v50;
  v54 = v16[14];
  v53 = v16[15];
  v55 = v16[12];
  v56 = v16[8];

  StructuredQueryEntity.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_25DBC8180;
  *(v57 + 32) = v52;
  *(v57 + 40) = v51;
  v58 = *(v53 + *(v54 + 48));
  v16[2] = v57;
  EntityProperty.wrappedValue.setter();
  v59 = *(v56 + 56);
  v60 = *(v56 + 32);
  OUTLINED_FUNCTION_163_8();
  v63 = v62 & v61;
  v65 = (63 - v64) >> 6;
  v113 = v55;
  v108 = v55 + 8;
  v109 = v55 + 16;

  v66 = 0;
  v67 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      v16[21] = v67;
      if (!v63)
      {
        while (1)
        {
          v68 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            break;
          }

          if (v68 >= v65)
          {
            goto LABEL_28;
          }

          v63 = *(v56 + 56 + 8 * v68);
          ++v66;
          if (v63)
          {
            v66 = v68;
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_17:
      v69 = v16[13];
      v70 = v16[11];
      (*(v113 + 16))(v69, *(v56 + 48) + *(v113 + 72) * (__clz(__rbit64(v63)) | (v66 << 6)), v70);
      v71 = static SearchEntityTypeIdentifier.make(identifier:)(v69);
      (*(v113 + 8))(v69, v70);
      v72 = *(v71 + 16);
      v73 = *(v67 + 16);
      if (__OFADD__(v73, v72))
      {
        goto LABEL_32;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v73 + v72 > *(v67 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v67 = v74;
      }

      v63 &= v63 - 1;
      if (!*(v71 + 16))
      {
        break;
      }

      if ((*(v67 + 24) >> 1) - *(v67 + 16) < v72)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v72)
      {
        v75 = *(v67 + 16);
        v76 = __OFADD__(v75, v72);
        v77 = v75 + v72;
        if (v76)
        {
          goto LABEL_34;
        }

        *(v67 + 16) = v77;
      }
    }
  }

  while (!v72);
  __break(1u);
LABEL_28:
  v79 = v16[14];
  v78 = v16[15];
  v80 = v16[9];
  v81 = v16[10];
  v82 = v16[8];

  outlined init with copy of UserQuery(v78, v81);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v79);
  v16[3] = 3;
  v86 = *v80;
  v87 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v89 = *(v88 + 216);
  v111 = v88 + 216;
  v114 = v89 + *v89;
  v90 = v89[1];
  v91 = swift_task_alloc();
  v16[22] = v91;
  *v91 = v16;
  v91[1] = OmniSearchService.entitySearch(_:rewrittenQuery:allowedTypes:);
  v93 = v16[9];
  v92 = v16[10];
  v94 = v16[6];
  v95 = v16[7];
  v96 = v16[5];
  OUTLINED_FUNCTION_49_4(v16[4]);
  OUTLINED_FUNCTION_115();

  return v105(v97, v98, v99, v100, v101, v102, v103, v104, v108, v109, v111, v114, a13, a14, a15, a16);
}

uint64_t OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  *(v1 + 416) = v4;
  *(v1 + 424) = v0;
  *(v1 + 400) = v2;
  *(v1 + 408) = v5;
  *(v1 + 233) = v6;
  *(v1 + 384) = v7;
  *(v1 + 392) = v8;
  *(v1 + 376) = v9;
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v1 + 432) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 440) = v11;
  v13 = *(v12 + 64);
  *(v1 + 448) = OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for ResultsDialog();
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  *(v1 + 456) = OUTLINED_FUNCTION_160();
  *(v1 + 464) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  *(v1 + 472) = OUTLINED_FUNCTION_199();
  v20 = type metadata accessor for AnswerSynthesisRequestContext();
  OUTLINED_FUNCTION_114(v20);
  v22 = *(v21 + 64);
  *(v1 + 480) = OUTLINED_FUNCTION_199();
  v23 = type metadata accessor for Locale();
  *(v1 + 488) = v23;
  OUTLINED_FUNCTION_21(v23);
  *(v1 + 496) = v24;
  v26 = *(v25 + 64);
  *(v1 + 504) = OUTLINED_FUNCTION_160();
  *(v1 + 512) = swift_task_alloc();
  v27 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult();
  *(v1 + 520) = v27;
  OUTLINED_FUNCTION_21(v27);
  *(v1 + 528) = v28;
  v30 = *(v29 + 64);
  *(v1 + 536) = OUTLINED_FUNCTION_199();
  v31 = type metadata accessor for OSSignpostID();
  *(v1 + 544) = v31;
  OUTLINED_FUNCTION_21(v31);
  *(v1 + 552) = v32;
  v34 = *(v33 + 64);
  *(v1 + 560) = OUTLINED_FUNCTION_160();
  *(v1 + 568) = swift_task_alloc();
  *(v1 + 272) = *(v3 + 32);
  *(v1 + 769) = *(v3 + 40);
  *(v1 + 121) = *(v3 + 41);
  *(v1 + 124) = *(v3 + 44);
  v35 = *(v3 + 72);
  *(v1 + 592) = *(v3 + 64);
  v36 = *(v3 + 16);
  *(v1 + 240) = *v3;
  *(v1 + 256) = v36;
  *(v1 + 576) = *(v3 + 48);
  *(v1 + 600) = v35;
  *(v1 + 608) = *(v3 + 80);
  *(v1 + 770) = *(v3 + 96);
  v37 = *(v3 + 97);
  *(v1 + 771) = v37;
  *(v1 + 768) = v37;
  *(v1 + 234) = *(v3 + 98);
  v38 = *(v3 + 100);
  *(v1 + 773) = v38;
  *(v1 + 772) = v38;
  *(v1 + 236) = *(v3 + 101);
  v39 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

{
  v1 = *(v0 + 773);
  v2 = *(v0 + 771);
  v3 = *(*(v0 + 392) + 16);
  *(v0 + 624) = v3;
  if (!v3)
  {
    v79 = *(v0 + 400);
    v159 = *v79;
    v161 = v79[1];
    v162 = *(v79 + 4);
    LOBYTE(v163) = *(v0 + 769);
    *(&v163 + 1) = *(v79 + 41);
    HIDWORD(v163) = *(v79 + 11);
    v164 = *(v0 + 576);
    v165 = *(v0 + 592);
    v166 = *(v0 + 600);
    v167 = *(v0 + 608);
    v168 = *(v0 + 770);
    v169 = *(v0 + 234);
    v170 = *(v0 + 236);
    v80 = OmniSearchOptions.onScreenText.getter();
    if (!v80)
    {
      goto LABEL_44;
    }

    v81 = *(v80 + 16);

    if (!v81)
    {
      goto LABEL_44;
    }
  }

  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v4 = *(v0 + 568);
  v5 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v5, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v6 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v7 = *(v0 + 568);
    OUTLINED_FUNCTION_51_5();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v8);
    v9 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v10, v11, v9, "OmniSearchService.composeAnswer", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v12 = *(v0 + 568);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);

  v17 = *(v14 + 16);
  OUTLINED_FUNCTION_179_1();
  v18();
  v19 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v19);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 632) = OSSignpostIntervalState.init(id:isOpen:)();
  v20 = *(v14 + 8);
  v21 = OUTLINED_FUNCTION_54_0();
  v22(v21);
  OmniSearchService.createAnswerSynthesisResultForMetrics()();
  if ((v2 & 1) == 0)
  {
    if (*(v0 + 233) & 1) != 0 || (v1 & 1) != 0 || (type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0), (static NSUserDefaults.forceContentHydration.getter()))
    {
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v58 = *(v0 + 600);
      v59 = *(v0 + 592);
      v60 = *(v0 + 424);
      OUTLINED_FUNCTION_133();
      (*(v61 + 192))();
      outlined init with copy of ChatMessageRecord(v60 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController, v0 + 280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch33AnswerSynthesisControllerProtocol_pMd, &_s10OmniSearch33AnswerSynthesisControllerProtocol_pMR);
      OUTLINED_FUNCTION_47_1();
      type metadata accessor for AnswerSynthesisController();
      if (swift_dynamicCast())
      {
        v62 = *(v0 + 536);
        v63 = *(v0 + 233);
        v64 = *(v0 + 392);
        v65 = *(v0 + 368);
        OUTLINED_FUNCTION_133();
        (*(v66 + 536))();
      }

      v67 = (*(v0 + 424) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_resultHydrator);
      v68 = v67[4];
      __swift_project_boxed_opaque_existential_1(v67, v67[3]);
      v69 = *(v68 + 16);
      OUTLINED_FUNCTION_28_0();
      v157 = v70 + *v70;
      v72 = *(v71 + 4);
      v73 = swift_task_alloc();
      *(v0 + 640) = v73;
      *v73 = v0;
      v73[1] = OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:);
      v74 = *(v0 + 584);
      v75 = *(v0 + 576);
      v76 = *(v0 + 536);
      OUTLINED_FUNCTION_49_4(*(v0 + 392));
      OUTLINED_FUNCTION_156_7();

      __asm { BRAA            X6, X16 }
    }

    goto LABEL_27;
  }

  *(v0 + 664) = MEMORY[0x277D84F90];
  if (*(v0 + 233) != 1)
  {
LABEL_27:
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v82 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v82, static Logging.answerSynthesis);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v84))
    {
      OUTLINED_FUNCTION_51_5();
      v85 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v85);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v86, v87, v88, v89, v90, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v91 = *(v0 + 632);
    v92 = *(v0 + 536);
    v93 = *(v0 + 528);
    v94 = *(v0 + 520);

    v95 = OUTLINED_FUNCTION_67_19();
    v96(v95);
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();
    goto LABEL_43;
  }

  v23 = *(v0 + 416);
  v24 = *(*(v0 + 424) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_featureFlagService);
  OUTLINED_FUNCTION_133();
  v26 = (*(v25 + 80))(1);
  OmniSearchService.allowASRG(for:)(v23, v27, v28, v29, v30, v31, v32, v33, v152, v153, v154, v155, v159, *(&v159 + 1), v161, *(&v161 + 1), v162, v163, v164, *(&v164 + 1));
  if ((v34 & 1) == 0 && (v26 & 1) == 0)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v36 = *(v0 + 496);
    v35 = *(v0 + 504);
    v37 = *(v0 + 488);
    v38 = *(v0 + 416);
    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logging.answerSynthesis);
    v40 = *(v36 + 16);
    v41 = OUTLINED_FUNCTION_88();
    v42(v41);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 536);
    v47 = *(v0 + 528);
    v48 = *(v0 + 520);
    v50 = *(v0 + 496);
    v49 = *(v0 + 504);
    v51 = *(v0 + 488);
    if (v45)
    {
      v156 = *(v0 + 520);
      v52 = swift_slowAlloc();
      v160 = OUTLINED_FUNCTION_49_0();
      *v52 = 136315394;
      OUTLINED_FUNCTION_17_41();
      lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v53, v54);
      dispatch thunk of CustomStringConvertible.description.getter();
      v55 = *(v50 + 8);
      v56 = OUTLINED_FUNCTION_141_0();
      v57(v56);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_112_2();

      *(v52 + 4) = v49;
      *(v52 + 12) = 1024;
      *(v52 + 14) = 0;
      _os_log_impl(&dword_25D85C000, v43, v44, "Skip running Answer Synthesis for locale: %s, allowASRGOverride is: %{BOOL}d", v52, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v160);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      (*(v47 + 8))(v46, v156);
    }

    else
    {

      v125 = *(v50 + 8);
      v126 = OUTLINED_FUNCTION_141_0();
      v127(v126);
      (*(v47 + 8))(v46, v48);
    }

    v128 = *(v0 + 632);
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();
LABEL_43:

LABEL_44:
    v129 = *(v0 + 568);
    v130 = *(v0 + 560);
    v131 = *(v0 + 536);
    v133 = *(v0 + 504);
    v132 = *(v0 + 512);
    v135 = *(v0 + 472);
    v134 = *(v0 + 480);
    v136 = *(v0 + 456);
    v137 = *(v0 + 464);
    v138 = *(v0 + 448);

    OUTLINED_FUNCTION_201_7();
    OUTLINED_FUNCTION_156_7();

    __asm { BRAA            X4, X16 }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v97 = *(v0 + 512);
  v98 = *(v0 + 488);
  v99 = *(v0 + 496);
  v100 = *(v0 + 416);
  v101 = type metadata accessor for Logger();
  *(v0 + 672) = v101;
  v102 = __swift_project_value_buffer(v101, static Logging.answerSynthesis);
  v103 = *(v99 + 16);
  v104 = OUTLINED_FUNCTION_88();
  v105(v104);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.info.getter();
  v108 = OUTLINED_FUNCTION_32_9();
  v110 = os_log_type_enabled(v108, v109);
  v111 = *(v0 + 512);
  v112 = *(v0 + 488);
  v113 = *(v0 + 496);
  if (v110)
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    *v102 = 136315138;
    OUTLINED_FUNCTION_17_41();
    lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v114, v115);
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v113 + 8))(v111, v112);
    OUTLINED_FUNCTION_158();
    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v102 + 4) = v116;
    OUTLINED_FUNCTION_165_6(&dword_25D85C000, v106, v107, "Begin running Answer Synthesis for locale: %s");
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    (*(v113 + 8))(v111, v112);
  }

  if (!*(v0 + 608))
  {
    v141 = MEMORY[0x277CBA0B8];
    switch(*(v0 + 769))
    {
      case 1:
        v141 = MEMORY[0x277CBA0A8];
        goto LABEL_51;
      case 2:
        v141 = MEMORY[0x277CBA0C0];
        goto LABEL_51;
      case 3:
        v141 = MEMORY[0x277CBA0B0];
        goto LABEL_51;
      case 4:
        goto LABEL_52;
      default:
LABEL_51:
        v142 = OUTLINED_FUNCTION_216_5(v141);
        OUTLINED_FUNCTION_17(v142);
        (*(v143 + 104))(1, v106);
LABEL_52:
        v144 = OUTLINED_FUNCTION_214_4();
        OUTLINED_FUNCTION_135_9(v144);
        v146 = *((*MEMORY[0x277D85000] & v145) + 0x140);
        v158 = v146 + *v146;
        v147 = v146[1];
        swift_task_alloc();
        OUTLINED_FUNCTION_53();
        *(v0 + 688) = v148;
        *v148 = v149;
        OUTLINED_FUNCTION_34_32(v148);
        OUTLINED_FUNCTION_156_7();

        __asm { BRAA            X5, X16 }

        return result;
    }
  }

  v117 = *(v0 + 616);
  v118 = *(v0 + 608);
  swift_getObjectType();
  v119 = swift_task_alloc();
  *(v0 + 680) = v119;
  *v119 = v0;
  OUTLINED_FUNCTION_117_13(v119);
  OUTLINED_FUNCTION_49_4(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_156_7();

  return SearchToolProgressReporter.answerSynthesisStarted(with:)(v120, v121, v122);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 640);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  *(v4 + 648) = v0;

  if (!v0)
  {
    *(v4 + 656) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 680);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_72();
  v2 = MEMORY[0x277CBA0B8];
  switch(*(v1 + 769))
  {
    case 1:
      v2 = MEMORY[0x277CBA0A8];
      goto LABEL_5;
    case 2:
      v2 = MEMORY[0x277CBA0C0];
      goto LABEL_5;
    case 3:
      v2 = MEMORY[0x277CBA0B0];
      goto LABEL_5;
    case 4:
      goto LABEL_6;
    default:
LABEL_5:
      v3 = OUTLINED_FUNCTION_216_5(v2);
      OUTLINED_FUNCTION_17(v3);
      (*(v4 + 104))(1, v0);
LABEL_6:
      v5 = OUTLINED_FUNCTION_214_4();
      OUTLINED_FUNCTION_135_9(v5);
      v12 = (*((*MEMORY[0x277D85000] & v6) + 0x140) + **((*MEMORY[0x277D85000] & v6) + 0x140));
      v7 = *(*((*MEMORY[0x277D85000] & v6) + 0x140) + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v1 + 688) = v8;
      *v8 = v9;
      v10 = OUTLINED_FUNCTION_34_32(v8);

      return v12(v10);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 688);
  v3 = *(v1 + 472);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  outlined destroy of EagerResolutionService?(v3, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 704);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  v3[89] = v0;

  v9 = v3[87];
  v10 = v3[83];

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 720);
  *v3 = *v1;
  *(v2 + 728) = v6;
  *(v2 + 736) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  OUTLINED_FUNCTION_147_2();
  MessageAccumulationContext.record(_:from:)(v2, 2);
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  (*(v0[66] + 8))(v0[67], v0[65]);
  v2 = v0[81];
  v0[93] = v2;
  v3 = v2;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v4, static Logging.search);
  v5 = v2;
  v6 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    v7 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_271_2(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v8);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    outlined destroy of EagerResolutionService?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  OUTLINED_FUNCTION_176_7();
  v14 = v0[54];
  OUTLINED_FUNCTION_133();
  (*(v15 + 320))(v2);
  OUTLINED_FUNCTION_133();
  v17 = *(v16 + 208);
  v18 = OUTLINED_FUNCTION_116_1();
  v19(v18);
  v20 = *(v1 + 8);
  v21 = OUTLINED_FUNCTION_63_0();
  v23 = v22(v21);
  if (one-time initialization token for shared != -1)
  {
    v23 = OUTLINED_FUNCTION_5_0();
  }

  OUTLINED_FUNCTION_39_26(v23, static ContextManager.shared);
  OUTLINED_FUNCTION_218_6();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v1 = static ContextManager.shared;
  *(v0 + 760) = static ContextManager.shared;

  return MEMORY[0x2822009F8](OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:), v1, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 760);
  v2 = *(v0 + 712);
  OUTLINED_FUNCTION_147_2();
  MessageAccumulationContext.record(_:from:)(v2, 2);
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v1 = v0[89];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[66];
  v41 = v0[65];
  v42 = v0[67];
  v5 = v0[60];
  v6 = v0[55];
  v7 = v0[56];
  v8 = v0[54];
  OUTLINED_FUNCTION_133();
  (*(v9 + 320))(v1);
  OUTLINED_FUNCTION_133();
  (*(v10 + 208))(v3, v2, v7);
  v11 = *(v6 + 8);
  v12 = OUTLINED_FUNCTION_241_0();
  v13(v12);
  swift_willThrow();
  OUTLINED_FUNCTION_48_17();
  outlined destroy of UserQuery();
  (*(v4 + 8))(v42, v41);
  v14 = v0[89];
  v0[93] = v14;
  v15 = v14;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v16, static Logging.search);
  v17 = v14;
  v18 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    v19 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_271_2(5.7779e-34);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v20);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    outlined destroy of EagerResolutionService?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  OUTLINED_FUNCTION_176_7();
  v26 = v0[54];
  OUTLINED_FUNCTION_133();
  (*(v27 + 320))(v14);
  OUTLINED_FUNCTION_133();
  v29 = *(v28 + 208);
  v30 = OUTLINED_FUNCTION_116_1();
  v31(v30);
  v32 = *(v5 + 8);
  v33 = OUTLINED_FUNCTION_63_0();
  v35 = v34(v33);
  if (one-time initialization token for shared != -1)
  {
    v35 = OUTLINED_FUNCTION_5_0();
  }

  OUTLINED_FUNCTION_39_26(v35, static ContextManager.shared);
  OUTLINED_FUNCTION_83_0();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[60];
  v6 = v0[58];
  OUTLINED_FUNCTION_48_17();
  outlined destroy of UserQuery();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_107();
  v9(v8);
  OUTLINED_FUNCTION_119_10();
  outlined destroy of UserQuery();
  v10 = v0[92];
  v0[93] = v10;
  v11 = v10;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v12, static Logging.search);
  v13 = v10;
  v14 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    v15 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_271_2(5.7779e-34);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v16);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    outlined destroy of EagerResolutionService?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  OUTLINED_FUNCTION_176_7();
  v22 = v0[54];
  OUTLINED_FUNCTION_133();
  (*(v23 + 320))(v10);
  OUTLINED_FUNCTION_133();
  v25 = *(v24 + 208);
  v26 = OUTLINED_FUNCTION_116_1();
  v27(v26);
  v28 = *(v1 + 8);
  v29 = OUTLINED_FUNCTION_63_0();
  v31 = v30(v29);
  if (one-time initialization token for shared != -1)
  {
    v31 = OUTLINED_FUNCTION_5_0();
  }

  OUTLINED_FUNCTION_39_26(v31, static ContextManager.shared);
  OUTLINED_FUNCTION_218_6();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

void OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)()
{
  v1 = *(v0 + 236);
  v2 = *(v0 + 234);
  v3 = *(v0 + 770);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v26 = *(v0 + 576);
  v27 = *(v0 + 592);
  v6 = *(v0 + 769);
  v7 = *(v0 + 376);
  v8 = (*(v0 + 424) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController);
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = *(v0 + 256);
  *(v0 + 16) = *(v0 + 240);
  *(v0 + 32) = v12;
  *(v0 + 48) = *(v0 + 272);
  *(v0 + 56) = v6;
  *(v0 + 57) = *(v0 + 121);
  *(v0 + 60) = *(v0 + 124);
  *(v0 + 64) = v26;
  *(v0 + 80) = v27;
  *(v0 + 96) = v5;
  *(v0 + 104) = v4;
  *(v0 + 112) = v3;
  *(v0 + 113) = *(v0 + 768);
  *(v0 + 114) = v2;
  *(v0 + 116) = *(v0 + 772);
  *(v0 + 117) = v1;
  *(v0 + 696) = OmniSearchOptions.onScreenText.getter();
  v13 = *(v9 + 40);
  OUTLINED_FUNCTION_28_0();
  *&v27 = v14 + *v14;
  v16 = *(v15 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 704) = v17;
  *v17 = v18;
  v17[1] = OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:);
  v19 = *(v0 + 664);
  v20 = *(v0 + 592);
  v21 = *(v0 + 480);
  v22 = *(v0 + 456);
  v23 = *(v0 + 384);
  v28 = *(v0 + 600);
  v29 = *(v0 + 536);
  OUTLINED_FUNCTION_15_6();

  __asm { BRAA            X8, X16 }
}

{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v1 = *(v0 + 236);
  v2 = *(v0 + 234);
  v3 = *(v0 + 770);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v15 = *(v0 + 576);
  v16 = *(v0 + 592);
  v6 = *(v0 + 769);
  v7 = *(v0 + 464);
  v8 = *(v0 + 424);
  outlined init with take of UserQuery(*(v0 + 456), v7);
  v17 = *(v8 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver + 32);
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver), *(v8 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver + 24));
  v9 = *(v0 + 256);
  *(v0 + 128) = *(v0 + 240);
  *(v0 + 144) = v9;
  *(v0 + 160) = *(v0 + 272);
  *(v0 + 168) = v6;
  *(v0 + 169) = *(v0 + 121);
  *(v0 + 172) = *(v0 + 124);
  *(v0 + 176) = v15;
  *(v0 + 192) = v16;
  *(v0 + 208) = v5;
  *(v0 + 216) = v4;
  *(v0 + 224) = v3;
  *(v0 + 225) = *(v0 + 768);
  *(v0 + 226) = v2;
  *(v0 + 228) = *(v0 + 772);
  *(v0 + 229) = v1;
  v10 = *v7;
  v11 = swift_task_alloc();
  *(v0 + 720) = v11;
  *v11 = v0;
  v11[1] = OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  OUTLINED_FUNCTION_49_4(*(v0 + 376));
  OUTLINED_FUNCTION_115();

  AnswerResolvable.resolve(query:options:results:assistantLocale:)();
}

uint64_t OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v15 = v14[91];
  v16 = one-time initialization token for fedSearch;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_131_9();
    v61 = v14[91];
  }

  v17 = v14[49];
  __swift_project_value_buffer(v14[84], static Logging.fedSearch);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = OUTLINED_FUNCTION_16_11(v19);
  v21 = v14[91];
  if (v20)
  {
    v22 = v14[78];
    v23 = v14[49];
    v24 = OUTLINED_FUNCTION_90_1();
    *v24 = 134218240;
    v25 = *(v21 + 16);

    *(v24 + 4) = v25;

    *(v24 + 12) = 2048;
    *(v24 + 14) = v22;

    OUTLINED_FUNCTION_200_5();
    _os_log_impl(v26, v27, v28, v29, v30, 0x16u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
    v31 = v14[49];
    v32 = v14[91];
    swift_bridgeObjectRelease_n();
  }

  v64 = v14[91];
  v33 = v14[79];
  v34 = v14[67];
  v35 = v14[66];
  v36 = v14[65];
  v37 = v14[60];
  v38 = v14[58];
  OUTLINED_FUNCTION_48_17();
  outlined destroy of UserQuery();
  v39 = *(v35 + 8);
  v40 = OUTLINED_FUNCTION_32_0();
  v41(v40);
  v62 = *(v38 + 16);
  v63 = *(v38 + 8);
  outlined copy of ResultsDialog.RenderOption(v63, v62);
  OUTLINED_FUNCTION_119_10();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  v42 = v14[71];
  v43 = v14[70];
  v44 = v14[67];
  v46 = v14[63];
  v45 = v14[64];
  v48 = v14[59];
  v47 = v14[60];
  v49 = v14[57];
  v50 = v14[58];
  v51 = v14[56];

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_83_0();

  return v56(v52, v53, v54, v55, v56, v57, v58, v59, v62, v63, v64, a12, a13, a14);
}

uint64_t OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v13 = v12[93];
  v14 = v12[79];

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  v15 = v12[71];
  v16 = v12[70];
  v17 = v12[67];
  v19 = v12[63];
  v18 = v12[64];
  v21 = v12[59];
  v20 = v12[60];
  v23 = v12[57];
  v22 = v12[58];
  v24 = v12[56];

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_63_14();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t OmniSearchService.createAnswerSynthesisResultForMetrics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisPerfMetricsVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisPerfMetricsVSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisDataMetricsVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisDataMetricsVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.init()();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.init()();
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.setter();
  v12 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  if (!__swift_getEnumTagSinglePayload(v13, 1, v8))
  {
    MEMORY[0x25F89E590](1);
  }

  v12(v19, 0);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.init()();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  return IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.setter();
}

uint64_t static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_48();
  *(v11 + 104) = a10;
  *(v11 + 112) = a11;
  *(v11 + 88) = a9;
  *(v11 + 72) = v12;
  *(v11 + 80) = v13;
  *(v11 + 56) = v14;
  *(v11 + 64) = v15;
  *(v11 + 160) = v16;
  *(v11 + 40) = v17;
  *(v11 + 48) = v18;
  *(v11 + 32) = v19;
  v20 = type metadata accessor for MemoryCreationQUParseSortOrder();
  *(v11 + 120) = v20;
  OUTLINED_FUNCTION_21(v20);
  *(v11 + 128) = v21;
  v23 = *(v22 + 64);
  *(v11 + 136) = OUTLINED_FUNCTION_199();
  v24 = OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_266_3(v24, v25, v26);
}

void static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)()
{
  OUTLINED_FUNCTION_159();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_photosMemoryCreation))
  {
    if (*(v0 + 72))
    {
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_129_13();
      }

      OUTLINED_FUNCTION_133();
      v2 = *(v1 + 200);
      v45 = v2 + *v2;
      v3 = v2[1];
      v4 = swift_task_alloc();
      *(v0 + 144) = v4;
      *v4 = v0;
      v4[1] = static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:);
      v5 = *(v0 + 64);
      v6 = *(v0 + 40);
      OUTLINED_FUNCTION_49_4(*(v0 + 32));
      OUTLINED_FUNCTION_258_4();

      __asm { BRAA            X4, X16 }
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_129_13();
    }

    v31 = *(v0 + 160);
    if (*(v0 + 80))
    {
      v32 = *(v0 + 80);
    }

    if (*(v0 + 88))
    {
      v33 = *(v0 + 88);
    }

    if (*(v0 + 96))
    {
      v34 = *(v0 + 96);
    }

    v35 = *(*static MemoryCreationQUController.shared + 192);

    v44 = v35 + *v35;
    v36 = v35[1];
    v37 = swift_task_alloc();
    *(v0 + 152) = v37;
    *v37 = v0;
    v37[1] = static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:);
    v38 = *(v0 + 104);
    v39 = *(v0 + 112);
    v40 = *(v0 + 48);
    v41 = *(v0 + 40);
    v46 = *(v0 + 56);
    OUTLINED_FUNCTION_49_4(*(v0 + 32));
    OUTLINED_FUNCTION_136_7();

    __asm { BRAA            X8, X16 }
  }

  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v9, static Logging.memoryCreationQU);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v11))
  {
    OUTLINED_FUNCTION_51_5();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v12);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 120);
  v22 = *(v0 + 32);
  v21 = *(v0 + 40);

  (*(v19 + 104))(v18, *MEMORY[0x277D374B8], v20);
  v23 = type metadata accessor for MemoryCreationQUParse();
  OUTLINED_FUNCTION_170(v23);
  OUTLINED_FUNCTION_37_3();

  MemoryCreationQUParse.init(query:attributes:isTrip:isOpenEndedTimeRange:sortOrder:)();
  OUTLINED_FUNCTION_42_2();
  v24 = type metadata accessor for MemoryCreationQUPerformanceMetrics();
  OUTLINED_FUNCTION_170(v24);
  MemoryCreationQUPerformanceMetrics.init()();
  OUTLINED_FUNCTION_47_1();
  v25 = objc_allocWithZone(type metadata accessor for LLMQUParse());
  v26 = OUTLINED_FUNCTION_94();
  LLMQUParse.init(parse:performanceMetrics:)(v26, v27);
  v28 = *(v0 + 136);

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_258_4();

  __asm { BRAA            X2, X16 }
}

uint64_t static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;

  v8 = *(v4 + 136);

  v10 = *(v6 + 8);
  if (!v0)
  {
    v9 = v3;
  }

  return v10(v9);
}

uint64_t static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  v11 = *v10;
  v12 = *(*v10 + 152);
  v13 = *v10;
  OUTLINED_FUNCTION_11();
  *v14 = v13;

  v15 = v11[11];
  v16 = v11[10];
  if (v11[12])
  {
    v17 = v11[12];
  }

  v18 = v11[17];

  v19 = *(v13 + 8);
  OUTLINED_FUNCTION_218_6();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v1[19] = v6;
  v1[20] = v0;
  v1[17] = v7;
  v1[18] = v8;
  v9 = type metadata accessor for OSSignpostID();
  v1[21] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[22] = v10;
  v12 = *(v11 + 64);
  v1[23] = OUTLINED_FUNCTION_160();
  v13 = swift_task_alloc();
  v14 = *v5;
  v1[24] = v13;
  v1[25] = v14;
  memcpy(v1 + 2, v3, 0x69uLL);
  v15 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = *(v0 + 192);
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v4 = *(v0 + 192);
    OUTLINED_FUNCTION_51_5();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v5);
    v6 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v7, v8, v6, "OmniSearchService.searchItems", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);

  v13 = OUTLINED_FUNCTION_9_27();
  v14(v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v15);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 208) = OSSignpostIntervalState.init(id:isOpen:)();
  v16 = OUTLINED_FUNCTION_67_19();
  v17(v16);
  if (*(v0 + 113))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v18, static Logging.search);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v20))
    {
      OUTLINED_FUNCTION_51_5();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v21);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    lazy protocol witness table accessor for type SearchType and conformance SearchType();
    Dictionary.init(dictionaryLiteral:)();
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

    v28 = *(v0 + 184);
    v27 = *(v0 + 192);

    OUTLINED_FUNCTION_31_27();
    OUTLINED_FUNCTION_258_4();

    __asm { BRAA            X2, X16 }
  }

  if (*(v0 + 200) != 11)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v31, static Logging.search);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    v34 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 200);
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_11_26();
      *v11 = 136315138;
      SearchSources.debugDescription.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v11 + 4) = v37;
      OUTLINED_FUNCTION_165_6(&dword_25D85C000, v32, v33, "Searching with limited sources: %s");
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v38, v39);
    }
  }

  v40 = *(v0 + 200);
  v42 = *(v0 + 152);
  v41 = *(v0 + 160);
  v44 = *(v0 + 136);
  v43 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMd, &_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMR);
  v45 = swift_task_alloc();
  *(v0 + 216) = v45;
  v45[2] = v43;
  v45[3] = v40;
  v45[4] = v41;
  v45[5] = v44;
  v45[6] = v42;
  v45[7] = v0 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10OmniSearch0B4TypeOAA0B13ServiceResultVGMd, &_sSDy10OmniSearch0B4TypeOAA0B13ServiceResultVGMR);
  v46 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 224) = v47;
  *v47 = v48;
  v47[1] = OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:);
  OUTLINED_FUNCTION_47_11();
  OUTLINED_FUNCTION_136_7();

  return MEMORY[0x282200740](v49, v50, v51, v52, v53, v54, v55, v56);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v3 + 232) = v0;

  if (!v0)
  {
    v9 = *(v3 + 216);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[26];
  v2 = v0[16];
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  v4 = v0[23];
  v3 = v0[24];

  OUTLINED_FUNCTION_62();

  return v5(v2);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[23];
  v3 = v0[24];

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();
  v6 = v0[29];

  return v5();
}

uint64_t closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[63] = a7;
  v8[64] = a8;
  v8[61] = a5;
  v8[62] = a6;
  v8[59] = a3;
  v8[60] = a4;
  v8[57] = a1;
  v8[58] = a2;
  v9 = *(type metadata accessor for UserQuery() - 8);
  v8[65] = v9;
  v8[66] = *(v9 + 64);
  v8[67] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVy10OmniSearch0C4TypeO_AC0C13ServiceResultVts5Error_p_GMd, &_sScg8IteratorVy10OmniSearch0C4TypeO_AC0C13ServiceResultVts5Error_p_GMR);
  v8[70] = v11;
  v12 = *(v11 - 8);
  v8[71] = v12;
  v13 = *(v12 + 64) + 15;
  v8[72] = swift_task_alloc();
  v14 = type metadata accessor for OSSignpostID();
  v8[73] = v14;
  v15 = *(v14 - 8);
  v8[74] = v15;
  v16 = *(v15 + 64) + 15;
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:), 0, 0);
}

uint64_t closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v21 = *(v20 + 608);
  v22 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v22, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v23 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v24 = *(v20 + 608);
    OUTLINED_FUNCTION_51_5();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v25);
    v26 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v27, v28, v26, "OmniSearchService.searchItems", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v29 = *(v20 + 608);
  v30 = *(v20 + 600);
  v31 = *(v20 + 592);
  v32 = *(v20 + 584);
  v33 = *(v20 + 472);

  v34 = OUTLINED_FUNCTION_9_27();
  v35(v34);
  v36 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v36);
  OUTLINED_FUNCTION_45_4();
  *(v20 + 616) = OSSignpostIntervalState.init(id:isOpen:)();
  v37 = OUTLINED_FUNCTION_67_19();
  v38(v37);
  v39 = *(v33 + 16);
  if (v39)
  {
    v40 = *(v20 + 472) + 32;
    v103 = *(v20 + 520);
    v102 = *(v20 + 528) + 7;
    do
    {
      v41 = *(v20 + 480);
      outlined init with copy of ChatMessageRecord(v40, v20 + 240);
      v42 = *(v20 + 264);
      v43 = *(v20 + 272);
      __swift_project_boxed_opaque_existential_1((v20 + 240), v42);
      v44 = *(v43 + 40);
      OUTLINED_FUNCTION_179_1();
      if (v45())
      {
        v110 = v39;
        v46 = *(v20 + 552);
        v47 = *(v20 + 536);
        v107 = *(v20 + 512);
        v108 = *(v20 + 544);
        v105 = v46;
        v106 = *(v20 + 504);
        v48 = *(v20 + 488);
        v49 = *(v20 + 496);
        v104 = *(v20 + 480);
        v50 = type metadata accessor for TaskPriority();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
        OUTLINED_FUNCTION_16_44();
        outlined init with copy of UserQuery(v49, v47);
        outlined init with copy of ChatMessageRecord(v20 + 240, v20 + 320);
        v54 = (*(v103 + 80) + 40) & ~*(v103 + 80);
        v55 = (v102 + v54) & 0xFFFFFFFFFFFFFFF8;
        v56 = (v55 + 47) & 0xFFFFFFFFFFFFFFF8;
        v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
        v58 = swift_allocObject();
        v58[2] = 0;
        v109 = v58 + 2;
        v58[3] = 0;
        v58[4] = v48;
        OUTLINED_FUNCTION_7_53();
        outlined init with take of UserQuery(v47, v59 + v54);
        outlined init with take of ResponseOverrideMatcherProtocol((v20 + 320), v58 + v55);
        *(v58 + v56) = v104;
        *(v58 + v57) = v106;
        memcpy(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8), v107, 0x69uLL);
        outlined init with copy of SpotlightRankingItem?(v105, v108, &_sScPSgMd, &_sScPSgMR);
        LODWORD(v47) = __swift_getEnumTagSinglePayload(v108, 1, v50);
        v60 = v48;

        v61 = *(v20 + 544);
        v62 = *(v20 + 512);
        if (v47 == 1)
        {
          outlined init with copy of OmniSearchOptions(v62, v20 + 16);
          v63 = OUTLINED_FUNCTION_107();
          outlined destroy of EagerResolutionService?(v63, v64, &_sScPSgMR);
        }

        else
        {
          outlined init with copy of OmniSearchOptions(v62, v20 + 128);
          TaskPriority.rawValue.getter();
          v74 = *(*(v50 - 8) + 8);
          v75 = OUTLINED_FUNCTION_141_0();
          v76(v75);
        }

        v39 = v110;
        if (*v109)
        {
          v77 = v58[3];
          v78 = *v109;
          swift_getObjectType();
          OUTLINED_FUNCTION_169_9();
          swift_unknownObjectRetain();
          v79 = dispatch thunk of Actor.unownedExecutor.getter();
          v81 = v80;
          swift_unknownObjectRelease();
        }

        else
        {
          v79 = 0;
          v81 = 0;
        }

        v82 = **(v20 + 464);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMd, &_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMR);
        v83 = v81 | v79;
        if (v81 | v79)
        {
          v83 = v20 + 360;
          *(v20 + 360) = 0;
          *(v20 + 368) = 0;
          *(v20 + 376) = v79;
          *(v20 + 384) = v81;
        }

        v84 = *(v20 + 552);
        *(v20 + 416) = 1;
        *(v20 + 424) = v83;
        *(v20 + 432) = v82;
        swift_task_create();

        outlined destroy of EagerResolutionService?(v84, &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v65, static Logging.search);
        outlined init with copy of ChatMessageRecord(v20 + 240, v20 + 280);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = v40;
          OUTLINED_FUNCTION_51_0();
          v69 = OUTLINED_FUNCTION_10_23();
          *v42 = 136315138;
          v70 = *(v20 + 312);
          __swift_project_boxed_opaque_existential_1((v20 + 280), *(v20 + 304));
          v71 = *(v70 + 8);
          v72 = OUTLINED_FUNCTION_37_3();
          switch(v73(v72, v70))
          {
            case 1u:
              OUTLINED_FUNCTION_251_5();
              break;
            default:
              break;
          }

          __swift_destroy_boxed_opaque_existential_1Tm((v20 + 280));
          v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v42 + 4) = v85;
          _os_log_impl(&dword_25D85C000, v66, v67, "Skipping %s search - no supported sources", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v69);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();

          v40 = v68;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v20 + 280));
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v20 + 240));
      v40 += 40;
      --v39;
    }

    while (v39);
  }

  v86 = *(v20 + 576);
  v87 = **(v20 + 464);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMd, &_s10OmniSearch0B4TypeO_AA0B13ServiceResultVtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_32_0();
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v20 + 624) = MEMORY[0x277D84F98];
  v88 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v20 + 632) = v89;
  *v89 = v90;
  v89[1] = closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:);
  v91 = *(v20 + 576);
  v92 = *(v20 + 560);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822004E8](v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 624);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  (*(v0[71] + 8))(v0[72], v0[70]);
  v7 = v0[55];
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();

  return v8();
}

uint64_t closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[50];
  if (v21)
  {
    v22 = v20[49];
    v23 = v20[51];
    if (!*(v21 + 16))
    {
      v108 = v20[51];
      outlined consume of (SearchType, SearchServiceResult)?(v20[49], v20[50]);
      goto LABEL_53;
    }

    v24 = v20[78];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[56] = v24;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    v28 = *(v24 + 16);
    v29 = (v27 & 1) == 0;
    v30 = v28 + v29;
    if (!__OFADD__(v28, v29))
    {
      v31 = v26;
      v32 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10OmniSearch0D4TypeOAC0D13ServiceResultVGMd, &_ss17_NativeDictionaryVy10OmniSearch0D4TypeOAC0D13ServiceResultVGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30))
      {
        v33 = v20[56];
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
        if ((v32 & 1) != (v35 & 1))
        {
LABEL_6:
          OUTLINED_FUNCTION_17_4();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v31 = v34;
      }

      v109 = v20;
      v110 = v20[56];
      if (v32)
      {
        v111 = (v110[7] + 16 * v31);
        v112 = *v111;
        v113 = v111[1];
        *v111 = v21;
        v111[1] = v23;
      }

      else
      {
        OUTLINED_FUNCTION_192_9(&v110[v31 >> 6]);
        *(v110[6] + v31) = v22;
        v114 = (v110[7] + 16 * v31);
        *v114 = v21;
        v114[1] = v23;
        v115 = v110[2];
        v89 = __OFADD__(v115, 1);
        v116 = v115 + 1;
        if (v89)
        {
LABEL_64:
          __break(1u);
          return MEMORY[0x2822004E8](v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
        }

        v110[2] = v116;
      }

      v109[78] = v110;
      v20 = v109;
LABEL_53:
      v117 = *(MEMORY[0x277D85828] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v20[79] = v118;
      *v118 = v119;
      v118[1] = closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:);
      v120 = v20[72];
      v121 = v20[70];
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_17_4();

      return MEMORY[0x2822004E8](v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

LABEL_61:
    __break(1u);
  }

  else
  {
    v38 = v20[78];
    (*(v20[71] + 8))(v20[72], v20[70]);
    v23 = v20;
    v39 = one-time initialization token for fedSearch;
    swift_bridgeObjectRetain_n();
    if (v39 == -1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_131_9();
LABEL_10:
  v40 = *(v23 + 624);
  a14 = *(v23 + 488);
  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static Logging.fedSearch);
  _s10OmniSearch11EvalLoggingV03logC4Info__6loggerySS_AA0cF9Providing_p2os6LoggerVtFZTf4nenn_nSDyAA0B4TypeOAA0B13ServiceResultVG_Tt2g5(0x6574617265646546, 0xEE00686372616553, v40, v42);

  v43 = 0;
  v44 = v40 + 64;
  v45 = -1;
  v46 = -1 << *(v40 + 32);
  if (-v46 < 64)
  {
    v45 = ~(-1 << -v46);
  }

  v47 = v45 & *(v40 + 64);
  a12 = v40;
  a13 = OBJC_IVAR____TtC10OmniSearch17OmniSearchService_maxPerSourceLimit;
  v48 = (63 - v46) >> 6;
  v49 = *(v23 + 624);
  a10 = v23;
  while (v47)
  {
    v23 = v43;
LABEL_18:
    v50 = *(a14 + a13);
    if ((v50 & 0x8000000000000000) != 0)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v51 = __clz(__rbit64(v47)) | (v23 << 6);
    LODWORD(v52) = *(*(a12 + 48) + v51);
    v53 = (*(a12 + 56) + 16 * v51);
    v55 = *v53;
    v54 = v53[1];
    v56 = *(*v53 + 16);
    if (v56 >= v50)
    {
      v57 = *(a14 + a13);
    }

    else
    {
      v57 = v56;
    }

    if (v50)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    a15 = v54;
    if (v56 == v58)
    {

      a16 = v55;
    }

    else if (v58)
    {
      a16 = v55;
      HIDWORD(a11) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
      v59 = type metadata accessor for SearchResult(0);
      OUTLINED_FUNCTION_84_13(v59);
      v61 = *(v60 + 72);
      v52 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v63 = swift_allocObject();
      v64 = _swift_stdlib_malloc_size(v63);
      if (!v61)
      {
        goto LABEL_60;
      }

      if (v64 - v52 == 0x8000000000000000 && v61 == -1)
      {
        __break(1u);
        goto LABEL_64;
      }

      v63[2] = v58;
      v63[3] = 2 * ((v64 - v52) / v61);
      swift_arrayInitWithCopy();

      a16 = v63;
      LOBYTE(v52) = BYTE4(a11);
    }

    else
    {

      a16 = MEMORY[0x277D84F90];
    }

    v73 = swift_isUniquelyReferenced_nonNull_native();
    a17 = v49;
    v74 = v52;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
    v77 = v49[2];
    v78 = (v76 & 1) == 0;
    v79 = v77 + v78;
    if (__OFADD__(v77, v78))
    {
      goto LABEL_58;
    }

    v80 = v75;
    v81 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10OmniSearch0D4TypeOAC0D13ServiceResultVGMd, &_ss17_NativeDictionaryVy10OmniSearch0D4TypeOAC0D13ServiceResultVGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v73, v79))
    {
      v82 = specialized __RawDictionaryStorage.find<A>(_:)(v74);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_6;
      }

      v80 = v82;
    }

    v47 &= v47 - 1;
    if (v81)
    {
      v84 = (v49[7] + 16 * v80);
      v85 = *v84;
      v86 = v84[1];
      *v84 = a16;
      v84[1] = a15;

      v43 = v23;
    }

    else
    {
      OUTLINED_FUNCTION_192_9(&v49[v80 >> 6]);
      *(v49[6] + v80) = v74;
      v87 = (v49[7] + 16 * v80);
      *v87 = a16;
      v87[1] = a15;
      v88 = v49[2];
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v89)
      {
        goto LABEL_59;
      }

      v49[2] = v90;
      v43 = v23;
    }
  }

  while (1)
  {
    v23 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v23 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v23);
    ++v43;
    if (v47)
    {
      goto LABEL_18;
    }
  }

  v91 = a10[78];
  v92 = a10[77];
  v93 = a10[76];
  v94 = a10[75];
  v95 = a10[72];
  v96 = a10[69];
  v97 = a10[68];
  v98 = a10[67];
  v99 = a10[57];

  *v99 = v49;
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_17_4();

  return v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)()
{
  OUTLINED_FUNCTION_155();
  v28 = v0;
  v1 = type metadata accessor for OSSignpostError();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_8();
  v7 = type metadata accessor for OSSignpostID();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v15 = v14 - v13;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v16 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v16, static Logging.searchSignposter);
  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v19 = *(v4 + 88);
    v20 = OUTLINED_FUNCTION_194_7();
    if (v21(v20) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      v23 = *(v4 + 8);
      v24 = OUTLINED_FUNCTION_194_7();
      v25(v24);
      v22 = "";
    }

    OUTLINED_FUNCTION_51_5();
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v17, v18, v27, v28, v22, v26, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  (*(v10 + 8))(v15, v7);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a4;
  v8[27] = a6;
  v8[25] = a1;
  v13 = *(type metadata accessor for SearchResult(0) - 8);
  v8[28] = v13;
  v14 = *(v13 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[23] = a7;
  memcpy(v8 + 2, v18, 0x69uLL);
  v15 = swift_task_alloc();
  v8[30] = v15;
  *v15 = v8;
  v15[1] = closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:);

  return OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:)((v8 + 21), a5, a6, v8 + 23, a8, (v8 + 2));
}

uint64_t closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v64 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  OUTLINED_FUNCTION_231_2();
  v3 = *(v0 + 216);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.search);
  outlined init with copy of ChatMessageRecord(v3, v0 + 128);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v58 = v6;
    v7 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_260();
    *v7 = 134218498;
    *(v7 + 4) = *(v1 + 16);

    *(v7 + 12) = 2080;
    v8 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
    v9 = *(v8 + 8);
    v10 = OUTLINED_FUNCTION_54_0();
    v59 = v2;
    switch(v11(v10))
    {
      case 1u:
        OUTLINED_FUNCTION_251_5();
        break;
      default:
        break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
    OUTLINED_FUNCTION_62_3();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    v13 = *(v1 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v55 = v7;
      v56 = v5;
      v15 = *(v0 + 224);
      v60 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = v60;
      v57 = v1;
      v16 = v1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v17 = *(v15 + 72);
      do
      {
        v18 = *(v0 + 232);
        OUTLINED_FUNCTION_19_40();
        v19 = OUTLINED_FUNCTION_40_5();
        outlined init with copy of UserQuery(v19, v20);
        SearchResultItem.type.getter(&v63);
        SearchResultKey.rawValue.getter();
        v22 = v21;
        v24 = v23;
        OUTLINED_FUNCTION_4_63();
        outlined destroy of UserQuery();
        v26 = *(v60 + 16);
        v25 = *(v60 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = OUTLINED_FUNCTION_26_3(v25);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v26 + 1, 1);
        }

        *(v60 + 16) = v26 + 1;
        v27 = v60 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v16 += v17;
        --v13;
      }

      while (v13);
      v5 = v56;
      v1 = v57;
      OUTLINED_FUNCTION_231_2();
      v7 = v55;
    }

    MEMORY[0x25F89F8A0](v14, MEMORY[0x277D837D0]);

    OUTLINED_FUNCTION_88();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 24) = v29;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v2 = v59;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  }

  v30 = **(v0 + 208);
  v31 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v33 = (*(v32 + 152))();
  if (v33)
  {
    v34 = v33;
    v35 = *(v0 + 216);
    *(v0 + 192) = *(v1 + 16);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v36;
    MEMORY[0x25F89F6C0](32, 0xE100000000000000);
    v37 = *(v35 + 24);
    v38 = *(v35 + 32);
    v39 = OUTLINED_FUNCTION_54_0();
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v41 = *(v38 + 8);
    v42 = OUTLINED_FUNCTION_37_3();
    v43(v42, v38);
    v44 = OUTLINED_FUNCTION_32_0();
    MEMORY[0x25F89F6C0](v44);

    MEMORY[0x25F89F6C0](0x73746C7573657220, 0xE800000000000000);
    v34(v61, v62);
    v45 = OUTLINED_FUNCTION_63_0();
    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v45);
  }

  v46 = *(v0 + 232);
  v47 = *(v0 + 216);
  v48 = *(v0 + 200);
  v49 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  v50 = *(v49 + 8);
  v51 = OUTLINED_FUNCTION_63_21();
  *v48 = v52(v51);
  *(v48 + 8) = v1;
  *(v48 + 16) = v2;

  OUTLINED_FUNCTION_127();

  return v53();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 232);

  OUTLINED_FUNCTION_127();
  v3 = *(v0 + 248);

  return v2();
}

uint64_t OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a3;
  v6[30] = a5;
  v6[27] = a1;
  v6[28] = a2;
  v7 = *a4;
  v6[31] = a6;
  v6[32] = v7;
  v8 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_259_5();
  OUTLINED_FUNCTION_159();
  v13 = v12[32];
  v14 = v12[29];
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_112_2();
  v18(v17, v15);
  if ((a11 & v13) != 0)
  {
    v19 = v12[31];
    v20 = v14[3];
    v21 = v14[4];
    __swift_project_boxed_opaque_existential_1(v12[29], v20);
    v12[26] = a11 & v13;
    memcpy(v12 + 2, v19, 0x69uLL);
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_28_0();
    v65 = v23 + *v23;
    v25 = *(v24 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v12[33] = v26;
    *v26 = v27;
    v26[1] = OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:);
    v28 = v12[30];
    v29 = v12[27];
    v30 = v12[28];
    OUTLINED_FUNCTION_198();

    return v38(v31, v32, v33, v34, v35, v36, v37, v38, v21 + 32, v65, a11, a12);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v41 = v12[29];
    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logging.search);
    outlined init with copy of ChatMessageRecord(v41, (v12 + 21));
    v43 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v44 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_51_0();
      a11 = OUTLINED_FUNCTION_10_23();
      *v14 = 136315138;
      v46 = v12[25];
      __swift_project_boxed_opaque_existential_1(v12 + 21, v12[24]);
      v47 = *(v46 + 8);
      v48 = OUTLINED_FUNCTION_179_0();
      switch(v49(v48))
      {
        case 1u:
          OUTLINED_FUNCTION_251_5();
          break;
        default:
          break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v12 + 21);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v14 + 4) = v50;
      OUTLINED_FUNCTION_250_5();
      _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v12 + 21);
    }

    v56 = v12[27];
    *v56 = MEMORY[0x277D84F90];
    v56[1] = 0;
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_198();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
  }
}

{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v13 = *(v12 + 272);
  v14 = *(v12 + 232);
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logging.search);
  outlined init with copy of ChatMessageRecord(v14, v12 + 128);
  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_90_1();
    v20 = OUTLINED_FUNCTION_173_0();
    a10 = OUTLINED_FUNCTION_49_0();
    *v19 = 136315394;
    v21 = *(v12 + 160);
    __swift_project_boxed_opaque_existential_1((v12 + 128), *(v12 + 152));
    v22 = *(v21 + 8);
    v23 = OUTLINED_FUNCTION_158();
    switch(v24(v23))
    {
      case 1u:
        OUTLINED_FUNCTION_251_5();
        break;
      default:
        break;
    }

    v25 = *(v12 + 272);
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 128));
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v19 + 4) = v26;
    *(v19 + 12) = 2112;
    v27 = v25;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v28;
    *v20 = v28;
    OUTLINED_FUNCTION_250_5();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    outlined destroy of EagerResolutionService?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 128));
  }

  v34 = *(v12 + 216);

  *v34 = MEMORY[0x277D84F90];
  v34[1] = 0;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_136_7();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t OmniSearchService.searchItems(query:searchService:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v12();
  }
}

uint64_t OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  *(v1 + 400) = v4;
  *(v1 + 408) = v0;
  *(v1 + 384) = v5;
  *(v1 + 392) = v6;
  *(v1 + 368) = v7;
  *(v1 + 376) = v2;
  *(v1 + 352) = v8;
  *(v1 + 360) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  *(v1 + 416) = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for LocalizedStringResource();
  *(v1 + 424) = v13;
  OUTLINED_FUNCTION_21(v13);
  *(v1 + 432) = v14;
  v16 = *(v15 + 64);
  v17 = OUTLINED_FUNCTION_199();
  v18 = *(v3 + 16);
  *(v1 + 240) = *v3;
  *(v1 + 256) = v18;
  v19 = *(v3 + 32);
  *(v1 + 448) = *(v3 + 48);
  v20 = *(v3 + 64);
  v21 = *(v3 + 80);
  *(v1 + 272) = v19;
  *(v1 + 288) = v20;
  *(v1 + 440) = v17;
  *(v1 + 304) = v21;
  *(v1 + 320) = *(v3 + 96);
  v22 = *(v3 + 98);
  *(v1 + 123) = v22;
  *(v1 + 122) = v22;
  *(v1 + 584) = *(v3 + 99);
  *(v1 + 588) = *(v3 + 103);
  v23 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 480);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  *(v4 + 488) = v1;
  *(v4 + 496) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20_4();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v4 + 408);
    v14 = *(v4 + 256);
    *(v4 + 128) = *(v4 + 240);
    *(v4 + 144) = v14;
    v15 = *(v4 + 448);
    v16 = *(v4 + 288);
    *(v4 + 160) = *(v4 + 272);
    *(v4 + 176) = v15;
    v17 = *(v4 + 304);
    *(v4 + 192) = v16;
    *(v4 + 208) = v17;
    *(v4 + 224) = *(v4 + 320);
    *(v4 + 226) = *(v4 + 123);
    *(v4 + 231) = *(v4 + 588);
    *(v4 + 227) = *(v4 + 584);
    v18 = *((*MEMORY[0x277D85000] & *v13) + 0x110);
    v27 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v4 + 504) = v20;
    *v20 = v8;
    v20[1] = OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:);
    v21 = *(v4 + 400);
    v22 = *(v4 + 408);
    v23 = *(v4 + 384);
    v24 = *(v4 + 392);
    v25 = OUTLINED_FUNCTION_49_4(*(v4 + 352));

    return v27(v25);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 504);
  *v2 = *v0;
  v1[64] = v5;
  v1[65] = v6;
  v1[66] = v7;

  v8 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 472);
  v5 = *(v0 + 408);
  v41 = *(v0 + 240);
  v42 = *(v0 + 256);
  v43 = *(v0 + 272);
  v44 = *(v0 + 448);
  v45 = *(v0 + 288);
  v46 = *(v0 + 304);
  v47 = *(v0 + 320);
  v48 = *(v0 + 122);
  v50 = *(v0 + 588);
  v49 = *(v0 + 584);
  OmniSearchService.determineRenderOption(answer:options:appsChecker:)();
  *(v0 + 536) = v39;
  *(v0 + 544) = v40;
  if (v3)
  {
    v6 = *(v0 + 512);
    outlined consume of ResultsDialog.RenderOption(*(v0 + 520), *(v0 + 528));
    if (*(v6 + 16))
    {
      v7 = *(v0 + 488);

LABEL_18:
      *(v0 + 560) = v6;
      v34 = *(v0 + 123);
      v35 = swift_task_alloc();
      *(v0 + 568) = v35;
      *v35 = v0;
      v35[1] = OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:);
      v36 = *(v0 + 392);
      v37 = *(v0 + 360);
      OUTLINED_FUNCTION_49_4(*(v0 + 352));

      return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
    }
  }

  if (v40 == 3)
  {
    v8 = *(v0 + 488);
    v9 = *(v0 + 464);
    OUTLINED_FUNCTION_246_3(v39, 3);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v11))
    {
      OUTLINED_FUNCTION_51_5();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v12);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v18 = *(v0 + 123);
  v19 = OUTLINED_FUNCTION_32_0();
  outlined copy of OmniSearchResponseRenderOption(v19, v20);
  v21 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_246_3(v21, v22);
  if ((v18 & 1) == 0)
  {
    v6 = *(v0 + 488);
    goto LABEL_18;
  }

  v23 = *(v0 + 464);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v25))
  {
    OUTLINED_FUNCTION_51_5();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v26);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v27, v28, v29, v30, v31, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v32 = *(v0 + 440);
  v33 = static ContextManager.shared;
  *(v0 + 552) = static ContextManager.shared;
  LocalizedStringResource.init(stringLiteral:)();

  return MEMORY[0x2822009F8](OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:), v33, 0);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 552);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);
  v4 = *(v0 + 424);
  OUTLINED_FUNCTION_147_2();
  v5 = OUTLINED_FUNCTION_11_1();
  MessageAccumulationContext.record(_:severity:from:)(v5, v6, 2);
  swift_endAccess();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_32_0();
  v9(v8);
  *(v0 + 560) = *(v0 + 488);
  v10 = *(v0 + 123);
  v11 = swift_task_alloc();
  *(v0 + 568) = v11;
  *v11 = v0;
  v11[1] = OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:);
  v12 = *(v0 + 392);
  v13 = *(v0 + 360);
  OUTLINED_FUNCTION_49_4(*(v0 + 352));

  return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 568);
  v5 = *(v3 + 560);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 576) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[59];
  v2 = v0[55];
  v3 = v0[52];

  OUTLINED_FUNCTION_127();
  v5 = v0[62];

  return v4();
}

void OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_230_4();
  if (*(*(v0 + 368) + 16))
  {
    goto LABEL_2;
  }

  v34 = *(v0 + 376);
  v41 = *v34;
  v42 = v34[1];
  v43 = v34[2];
  v44 = *(v0 + 448);
  v45 = v34[4];
  v46 = v34[5];
  v47 = *(v34 + 48);
  v48 = *(v0 + 123);
  v50 = *(v34 + 103);
  v49 = *(v34 + 99);
  v35 = OmniSearchOptions.onScreenText.getter();
  if (!v35)
  {
    goto LABEL_11;
  }

  v36 = *(v35 + 16);

  if (v36)
  {
LABEL_2:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 464) = __swift_project_value_buffer(v1, static Logging.search);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v3))
    {
      v4 = *(v0 + 123);
      v5 = OUTLINED_FUNCTION_173_0();
      *v5 = 67109120;
      v5[1] = v4 & 1;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v11, v12, v13, v14, v15, v16, v17, v18, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1));
    }

    v19 = *(v0 + 123);
    v21 = *(v0 + 448);
    v20 = *(v0 + 456);
    v22 = *(v0 + 408);

    type metadata accessor for AnswerSynthesisAllowedAppsChecker();
    swift_allocObject();
    OUTLINED_FUNCTION_37_3();

    *(v0 + 472) = AnswerSynthesisAllowedAppsChecker.init(locale:)(v21, v20);
    v23 = (v22 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver);
    v25 = *(v22 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver + 24);
    v24 = *(v22 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver + 32);
    __swift_project_boxed_opaque_existential_1(v23, v25);
    v26 = *(v0 + 256);
    *(v0 + 16) = *(v0 + 240);
    *(v0 + 32) = v26;
    v27 = *(v0 + 288);
    *(v0 + 48) = *(v0 + 272);
    *(v0 + 64) = v21;
    *(v0 + 72) = v20;
    v28 = *(v0 + 304);
    *(v0 + 80) = v27;
    *(v0 + 96) = v28;
    *(v0 + 112) = *(v0 + 320);
    *(v0 + 114) = v19;
    v29 = *(v0 + 584);
    *(v0 + 119) = *(v0 + 588);
    *(v0 + 115) = v29;
    v30 = swift_task_alloc();
    *(v0 + 480) = v30;
    *v30 = v0;
    v30[1] = OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:);
    v31 = *(v0 + 448);
    v32 = *(v0 + 456);
    v33 = *(v0 + 368);
    OUTLINED_FUNCTION_49_4(*(v0 + 352));

    AnswerResolvable.resolve(query:options:results:assistantLocale:)();
  }

  else
  {
LABEL_11:
    v37 = *(v0 + 440);
    v38 = *(v0 + 416);

    v39 = OUTLINED_FUNCTION_3_13();

    v40(v39);
  }
}

uint64_t OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_84_0();
  a20 = v22;
  a21 = v23;
  OUTLINED_FUNCTION_61_0();
  a19 = v21;
  v24 = *(v21 + 576);
  v25 = *(v21 + 544);
  v26 = *(v21 + 536);
  v27 = *(v21 + 496);
  v28 = *(v21 + 123);
  v29 = *(v21 + 392);
  v30 = *(v21 + 352);
  v31 = Dictionary.init(dictionaryLiteral:)();
  v32 = swift_task_alloc();
  *(v32 + 16) = v30;
  *(v32 + 24) = v29;
  v33 = specialized Sequence.reduce<A>(into:_:)(v31, partial apply for closure #1 in OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:), v32, v24);

  *&a9 = v26;
  *(&a9 + 1) = v25;
  if (v28)
  {
    v34 = 1;
  }

  else
  {
    v35 = *(v21 + 416);
    v36 = *(v21 + 352);
    v37 = type metadata accessor for UserQuery();
    outlined init with copy of SpotlightRankingItem?(v36 + *(v37 + 28), v35, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    Entity = type metadata accessor for StructuredQueryEntity(0);
    v39 = OUTLINED_FUNCTION_93_6();
    if (__swift_getEnumTagSinglePayload(v39, v40, Entity) == 1)
    {
      outlined destroy of EagerResolutionService?(*(v21 + 416), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
      v34 = 0;
    }

    else
    {
      v41 = *(*(v21 + 416) + *(Entity + 20));
      EntityProperty.wrappedValue.getter();
      v34 = *(v21 + 121);
      OUTLINED_FUNCTION_5_55();
      outlined destroy of UserQuery();
    }
  }

  v42 = *(v21 + 392);
  v43 = *(v21 + 352);
  OUTLINED_FUNCTION_242_4();
  v45 = UserQuery.inAppSearchString(ecrResults:bundleId:)(v62, v44);
  if (v45.value._object)
  {
    countAndFlagsBits = v45.value._countAndFlagsBits;
    object = v45.value._object;
  }

  else
  {
    v48 = *(v21 + 352);
    countAndFlagsBits = *(v48 + 16);
    object = *(v48 + 24);
  }

  v49 = *(v21 + 576);
  v50 = *(v21 + 472);
  type metadata accessor for OmniSearchResponse();
  OUTLINED_FUNCTION_188_8();
  OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v49, &a9, v34, 0, countAndFlagsBits, object, v33);

  v51 = *(v21 + 440);
  v52 = *(v21 + 416);

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_83_0();

  return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, *(&a9 + 1), a10, a11, a12, a13);
}

uint64_t OmniSearchService.createASContext(mode:assistantLocale:ecrResults:)()
{
  OUTLINED_FUNCTION_48();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  v0[7] = OUTLINED_FUNCTION_199();
  v9 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t OmniSearchService.createASContext(mode:assistantLocale:ecrResults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v14 = v12[6];
  v13 = v12[7];
  v16 = v12[4];
  v15 = v12[5];
  v17 = v12[2];
  outlined init with copy of SpotlightRankingItem?(v12[3], v13, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  type metadata accessor for FeatureFlagService();
  v18 = swift_allocObject();
  v19 = type metadata accessor for AnswerSynthesisRequestContext();
  v20 = v19[5];
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = (v17 + v19[6]);
  v26 = (v17 + v19[7]);
  *v26 = 25965;
  v26[1] = 0xE200000000000000;
  outlined assign with take of SearchResultItem?(v13, v17 + v20, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  *v25 = v16;
  v25[1] = v15;
  *v17 = v14;
  *(v17 + v19[8]) = v18;

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_63_14();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)()
{
  OUTLINED_FUNCTION_48();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 200) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  v6 = type metadata accessor for URL();
  *(v0 + 56) = v6;
  OUTLINED_FUNCTION_21(v6);
  *(v0 + 64) = v7;
  v9 = *(v8 + 64);
  *(v0 + 72) = OUTLINED_FUNCTION_160();
  *(v0 + 80) = swift_task_alloc();
  v10 = type metadata accessor for SearchResult(0);
  *(v0 + 88) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v0 + 96) = v11;
  v13 = *(v12 + 64);
  *(v0 + 104) = OUTLINED_FUNCTION_199();
  v14 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[15];
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v3 = v0[14];
  v4 = v0[2];

  v5 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_211_3();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    *v1 = 136315138;
    MEMORY[0x25F89F8A0](v4, MEMORY[0x277D837D0]);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_9();

    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    v24 = v0;
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v25;
    v13 = *(v25 + 16);
    v14 = 32 * v13 + 56;
    v15 = (v4 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = *(v25 + 24);

      if (v13 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v13 + 1, 1);
      }

      *(v25 + 16) = v13 + 1;
      v19 = (v25 + v14);
      *(v19 - 3) = 0xD000000000000019;
      *(v19 - 2) = 0x800000025DBF1E10;
      v14 += 32;
      v15 += 2;
      ++v13;
      *(v19 - 1) = v16;
      *v19 = v17;
      --v11;
    }

    while (v11);

    v0 = v24;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  type metadata accessor for SourceDocumentRetriever();
  OUTLINED_FUNCTION_128_2();
  v20 = swift_allocObject();
  v0[20] = v20;
  *(v20 + 16) = [objc_opt_self() defaultSearchableIndex];
  v0[21] = specialized _arrayForceCast<A, B>(_:)(v12);

  v21 = swift_task_alloc();
  v0[22] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_84(v21);
  OUTLINED_FUNCTION_83_0();

  return SourceDocumentRetriever.fetchDocs(_:)();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 176);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  v4[23] = v0;

  if (!v0)
  {
    v11 = v4[20];
    v10 = v4[21];

    v4[24] = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_107();
  v7(v6);
  v8 = *(v0 + 192);
  v9 = *(v0 + 104);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);

  v12 = OUTLINED_FUNCTION_28();

  return v13(v12);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[14];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = OUTLINED_FUNCTION_77_5(v5);
  v7 = v0[23];
  v8 = v0[16];
  v9 = v0[17];
  if (v6)
  {
    OUTLINED_FUNCTION_51_5();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v10);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v11, v12, v13, v14, v15, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[8];
  v19 = v0[5];

  v20 = *(v18 + 8);
  v21 = OUTLINED_FUNCTION_32_0();
  v22(v21);
  v23 = v0[5];
  v24 = v0[13];
  v26 = v0[9];
  v25 = v0[10];

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_204();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_84_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_61_0();
  a20 = v22;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  if ((static NSUserDefaults.photosSearchEval.getter() & 1) == 0 || (v25 = *(*(v22 + 40) + 16)) == 0)
  {
    v46 = *(v22 + 40);

    goto LABEL_13;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  *(v22 + 112) = __swift_project_value_buffer(v26, static Logging.search);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_77_5(v28))
  {
    OUTLINED_FUNCTION_51_5();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v29);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v35 = *(v22 + 200);

  if ((v35 & 1) == 0 && !*(*(v22 + 32) + 16))
  {
    v59 = *(v22 + 96);
    a9 = *(v22 + 88);
    v60 = *(v22 + 40) + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v61 = *(v59 + 72);
    while (1)
    {
      v62 = *(v22 + 104);
      OUTLINED_FUNCTION_19_40();
      outlined init with copy of UserQuery(v60, v62);
      SearchResultItem.type.getter(&a10 + 7);
      SearchResultKey.rawValue.getter();
      if (v64 == 0x6F746F6870 && v63 == 0xE500000000000000)
      {
      }

      else
      {
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v66 & 1) == 0)
        {
          break;
        }
      }

      v67 = *(v22 + 104);
      v68 = *(a9 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v69 = CodableNSSecureCoding.wrappedValue.getter();
      v70 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v69);
      if (!v71)
      {
        break;
      }

      v72 = *(v22 + 104);
      if (v70 == 0xD000000000000019 && v71 == 0x800000025DBF1E10)
      {

        OUTLINED_FUNCTION_4_63();
        outlined destroy of UserQuery();
      }

      else
      {
        v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

        OUTLINED_FUNCTION_4_63();
        outlined destroy of UserQuery();
        if ((v74 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v60 += v61;
      if (!--v25)
      {
        v75 = *(v22 + 48);
        v76 = *(v22 + 24);
        OUTLINED_FUNCTION_242_4();
        v77._countAndFlagsBits = 0x800000025DBF1E10;
        v78 = UserQuery.inAppSearchString(ecrResults:bundleId:)(v113, v77);
        if (v78.value._object)
        {
          countAndFlagsBits = v78.value._countAndFlagsBits;
          object = v78.value._object;
        }

        else
        {
          v83 = *(v22 + 24);
          countAndFlagsBits = *(v83 + 16);
          object = *(v83 + 24);
        }

        *(v22 + 120) = object;

        v84 = Logger.logObject.getter();
        static os_log_type_t.info.getter();

        if (OUTLINED_FUNCTION_143_8())
        {
          v85 = OUTLINED_FUNCTION_51_0();
          a11 = OUTLINED_FUNCTION_49_0();
          *v85 = 136315138;
          OUTLINED_FUNCTION_54_0();
          *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_200_5();
          _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
          OUTLINED_FUNCTION_195_6();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        v91 = *(v22 + 72);
        v92 = *(v22 + 80);
        v93 = *(v22 + 56);
        v94 = *(v22 + 64);
        v95 = [objc_opt_self() systemPhotoLibraryURL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for PHPhotoLibrary, 0x277CD9948);
        v96 = *(v94 + 16);
        v97 = OUTLINED_FUNCTION_94();
        v98(v97);
        v99 = PHPhotoLibrary.init(photoLibraryURL:)(v91);
        *(v22 + 128) = v99;
        v100 = [objc_allocWithZone(MEMORY[0x277CD99B8]) initWithPhotoLibrary_];
        *(v22 + 136) = v100;
        v101 = swift_task_alloc();
        *(v22 + 144) = v101;
        v101[2] = v100;
        v101[3] = countAndFlagsBits;
        v101[4] = object;
        v102 = *(MEMORY[0x277D859E0] + 4);
        v103 = swift_task_alloc();
        *(v22 + 152) = v103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        *v103 = v22;
        v103[1] = OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:);
        OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_83_0();

        return MEMORY[0x2822007B8](v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
      }
    }

    v81 = *(v22 + 104);
    OUTLINED_FUNCTION_4_63();
    outlined destroy of UserQuery();
LABEL_36:
    v36 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_16_11(v82))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v37))
  {
LABEL_10:
    OUTLINED_FUNCTION_51_5();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v38);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

LABEL_11:
  v44 = *(v22 + 40);

  v45 = *(v22 + 40);
LABEL_13:
  v47 = *(v22 + 104);
  v49 = *(v22 + 72);
  v48 = *(v22 + 80);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_83_0();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

id PHPhotoLibrary.init(photoLibraryURL:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithPhotoLibraryURL_];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySSGs5NeverOGMd, &_sScCySaySSGs5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = aBlock - v12;
  v14 = MEMORY[0x25F89F4C0](a3, a4, v11);
  (*(v9 + 16))(v13, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  aBlock[4] = partial apply for closure #1 in closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [String], @guaranteed [String], @guaranteed [String], @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_12;
  v17 = _Block_copy(aBlock);

  [a2 performSearch:v14 resultsHandler:v17];
  _Block_release(v17);
}

uint64_t closure #1 in closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(int a1, int a2, int a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = a4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_25D85C000, v8, v9, "Error performing in-app photos search: %@", v10, 0xCu);
      outlined destroy of EagerResolutionService?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F8A1050](v11, -1, -1);
      MEMORY[0x25F8A1050](v10, -1, -1);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySSGs5NeverOGMd, &_sScCySaySSGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed [String], @guaranteed [String], @guaranteed [String], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = a5;
  v7(v8, v9, v10, a5);
}

void OmniSearchService.determineRenderOption(answer:options:appsChecker:)()
{
  OUTLINED_FUNCTION_155();
  v58 = v2;
  v59 = v0;
  v57 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for SearchResultItem(0);
  v13 = OUTLINED_FUNCTION_17(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_8();
  v16 = type metadata accessor for Answer();
  v17 = OUTLINED_FUNCTION_114(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - v27;
  v29 = type metadata accessor for SearchResult(0);
  v30 = OUTLINED_FUNCTION_17(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_36();
  v35 = v34 - v33;
  if (!v9)
  {
    goto LABEL_20;
  }

  switch(v5)
  {
    case 3:
      v36 = xmmword_25DBE8BE0;
LABEL_21:
      *v11 = v36;
      OUTLINED_FUNCTION_148();
      return;
    case 2:
LABEL_20:
      v36 = xmmword_25DBC9A70;
      goto LABEL_21;
    case 1:
      specialized Collection.first.getter(v9, v28);
      if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
      {
        outlined destroy of EagerResolutionService?(v28, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_13_39();
        v38 = OUTLINED_FUNCTION_116_0();
        outlined init with take of UserQuery(v38, v39);
        OUTLINED_FUNCTION_47_19();
        outlined init with copy of UserQuery(v35, v1);
        OUTLINED_FUNCTION_179_0();
        if (swift_getEnumCaseMultiPayload() == 28)
        {
          outlined init with take of UserQuery(v1, v22);
          if (OmniSearchService.useModelDialogForAnswer(results:options:appsChecker:)(*(v22 + 40), v57, v58))
          {
            OUTLINED_FUNCTION_4_63();
            outlined destroy of UserQuery();
            OUTLINED_FUNCTION_125_11();
            v36 = xmmword_25DBE8C00;
          }

          else
          {
            if (one-time initialization token for search != -1)
            {
              OUTLINED_FUNCTION_1_31();
              swift_once();
            }

            v50 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v50, static Logging.search);
            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.info.getter();
            v53 = OUTLINED_FUNCTION_32_9();
            if (os_log_type_enabled(v53, v54))
            {
              OUTLINED_FUNCTION_51_5();
              v55 = swift_slowAlloc();
              OUTLINED_FUNCTION_157_0(v55);
              _os_log_impl(&dword_25D85C000, v51, v52, "Some source results come from apps not allowed, falling back to templated answer dialog.", v28, 2u);
              OUTLINED_FUNCTION_90();
              MEMORY[0x25F8A1050]();
            }

            OUTLINED_FUNCTION_4_63();
            outlined destroy of UserQuery();
            OUTLINED_FUNCTION_125_11();
            v36 = xmmword_25DBE8BF0;
          }

          goto LABEL_21;
        }

        OUTLINED_FUNCTION_4_63();
        outlined destroy of UserQuery();
        OUTLINED_FUNCTION_12_47();
        outlined destroy of UserQuery();
      }

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v40, static Logging.search);
      v41 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v42 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_51_5();
        v44 = swift_slowAlloc();
        OUTLINED_FUNCTION_81_4(v44);
        OUTLINED_FUNCTION_250_5();
        _os_log_impl(v45, v46, v47, v48, v49, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      goto LABEL_20;
  }

  *v11 = v7;
  *(v11 + 8) = v5;
  OUTLINED_FUNCTION_148();
}

uint64_t OmniSearchService.useModelDialogForAnswer(results:options:appsChecker:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_featureFlagService);
  OUTLINED_FUNCTION_133();
  v9 = *(v8 + 80);
  if ((v9(21) & 1) == 0)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v11, static Logging.search);
    v12 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v13 = OUTLINED_FUNCTION_32_9();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_12;
    }

LABEL_11:
    OUTLINED_FUNCTION_51_5();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v18);
    OUTLINED_FUNCTION_250_5();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
LABEL_12:

    v10 = 1;
    return v10 & 1;
  }

  if ((v9(22) & 1) == 0)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v15, static Logging.search);
    v12 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v16 = OUTLINED_FUNCTION_32_9();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  memcpy(v25, a2, 0x69uLL);
  v10 = (*(*a3 + 128))(a1, v25);
  return v10 & 1;
}

void OmniSearchService.handleGlobalResults(globalResults:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = type metadata accessor for SearchResult(v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_183_7();
  v13 = 0;
  v14 = *(v0 + 16);
  v15 = MEMORY[0x277D84F90];
  while (v14 != v13)
  {
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = *(v6 + 72);
    OUTLINED_FUNCTION_19_40();
    outlined init with copy of UserQuery(v18, v1);
    if (closure #1 in OmniSearchService.handleGlobalResults(globalResults:)(v1))
    {
      OUTLINED_FUNCTION_13_39();
      outlined init with take of UserQuery(v1, v11);
      v33 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v15 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v20);
        v32 = v24;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v32;
      }

      ++v13;
      *(v15 + 16) = v22;
      OUTLINED_FUNCTION_13_39();
      v11 = v33;
      outlined init with take of UserQuery(v33, v23);
    }

    else
    {
      OUTLINED_FUNCTION_4_63();
      outlined destroy of UserQuery();
      ++v13;
    }
  }

  if (*(v15 + 16))
  {
    v25 = Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_188_8();
    OUTLINED_FUNCTION_180_7();
    OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v26, v27, v28, v29, v30, v31, v25);
  }

  else
  {
  }

  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in OmniSearchService.handleGlobalResults(globalResults:)(uint64_t a1)
{
  v2 = type metadata accessor for GlobalItem();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchResultItem(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UserQuery(a1, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = type metadata accessor for MobileSMSDocument();
      goto LABEL_33;
    case 2u:
      v11 = type metadata accessor for CalendarEvent();
      goto LABEL_33;
    case 3u:
      v11 = type metadata accessor for Photo();
      goto LABEL_33;
    case 4u:
      v11 = type metadata accessor for NoteDocument();
      goto LABEL_33;
    case 5u:
      v11 = type metadata accessor for Reminder();
      goto LABEL_33;
    case 6u:
      v11 = type metadata accessor for PhoneHistory();
      goto LABEL_33;
    case 7u:
      v11 = type metadata accessor for VoicemailTranscript();
      goto LABEL_33;
    case 8u:
      v11 = type metadata accessor for JournalEntry();
      goto LABEL_33;
    case 9u:
      v11 = type metadata accessor for VoiceMemo();
      goto LABEL_33;
    case 0xAu:
      v11 = type metadata accessor for Safari();
      goto LABEL_33;
    case 0xBu:
      v11 = type metadata accessor for FileDocument();
      goto LABEL_33;
    case 0xCu:
      v11 = type metadata accessor for WalletTransaction();
      goto LABEL_33;
    case 0xDu:
      v11 = type metadata accessor for WalletPass();
      goto LABEL_33;
    case 0xEu:
      v11 = type metadata accessor for Contact();
      goto LABEL_33;
    case 0xFu:
      v11 = type metadata accessor for Appointment();
      goto LABEL_33;
    case 0x10u:
      v10 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48)];

      v11 = type metadata accessor for FlightReservation();
      goto LABEL_33;
    case 0x11u:
      v11 = type metadata accessor for HotelReservation();
      goto LABEL_33;
    case 0x12u:
      v11 = type metadata accessor for Party();
      goto LABEL_33;
    case 0x13u:
      v11 = type metadata accessor for RestaurantReservation();
      goto LABEL_33;
    case 0x14u:
      v11 = type metadata accessor for RentalCarReservation();
      goto LABEL_33;
    case 0x15u:
      v11 = type metadata accessor for ShippingOrder();
      goto LABEL_33;
    case 0x16u:
      v11 = type metadata accessor for TicketedTransportation();
      goto LABEL_33;
    case 0x17u:
      v11 = type metadata accessor for TicketedShow();
      goto LABEL_33;
    case 0x18u:
      v11 = type metadata accessor for Trip();
      goto LABEL_33;
    case 0x19u:
      v12 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48)];

      outlined init with take of UserQuery(v9, v5);
      if (one-time initialization token for webDomains != -1)
      {
        swift_once();
      }

      v13 = specialized Set.contains(_:)(*(v5 + 4), *(v5 + 5), static GlobalSearchClient.webDomains);
      outlined destroy of UserQuery();
      v14 = !v13;
      return v14 & 1;
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
      outlined destroy of UserQuery();
      goto LABEL_34;
    case 0x1Du:
      v11 = type metadata accessor for OnScreen();
      goto LABEL_33;
    case 0x1Eu:
      v11 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_33;
    default:
      v11 = type metadata accessor for EmailDocument();
LABEL_33:
      (*(*(v11 - 8) + 8))(v9, v11);
LABEL_34:
      v14 = 1;
      return v14 & 1;
  }
}

uint64_t OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:)()
{
  OUTLINED_FUNCTION_48();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for SpotlightRankingItem();
  v1[15] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[16] = v4;
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_199();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  v1[18] = OUTLINED_FUNCTION_160();
  v1[19] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v1[20] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[21] = v11;
  v13 = *(v12 + 64);
  v1[22] = OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for SearchResultItem(0);
  v1[23] = v14;
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  v1[24] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for SearchResult(0);
  v1[25] = v17;
  OUTLINED_FUNCTION_21(v17);
  v1[26] = v18;
  v20 = *(v19 + 64);
  v1[27] = OUTLINED_FUNCTION_160();
  v1[28] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v23 = *(v22 + 64);
  v1[29] = OUTLINED_FUNCTION_199();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
  OUTLINED_FUNCTION_114(v24);
  v26 = *(v25 + 64);
  v1[30] = OUTLINED_FUNCTION_199();
  v27 = type metadata accessor for SearchPropertyResponse(0);
  v1[31] = v27;
  OUTLINED_FUNCTION_21(v27);
  v1[32] = v28;
  v30 = *(v29 + 64);
  v1[33] = OUTLINED_FUNCTION_199();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  OUTLINED_FUNCTION_114(v31);
  v33 = *(v32 + 64);
  v1[34] = OUTLINED_FUNCTION_199();
  v34 = type metadata accessor for HydrationEntity(0);
  v1[35] = v34;
  OUTLINED_FUNCTION_114(v34);
  v36 = *(v35 + 64);
  v1[36] = OUTLINED_FUNCTION_199();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  OUTLINED_FUNCTION_114(v37);
  v39 = *(v38 + 64);
  v1[37] = OUTLINED_FUNCTION_199();
  v40 = type metadata accessor for HydrationContext(0);
  v1[38] = v40;
  OUTLINED_FUNCTION_114(v40);
  v42 = *(v41 + 64);
  v1[39] = OUTLINED_FUNCTION_199();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestVSgMd, &_s10OmniSearch0B15PropertyRequestVSgMR);
  OUTLINED_FUNCTION_114(v43);
  v45 = *(v44 + 64);
  v1[40] = OUTLINED_FUNCTION_199();
  v46 = type metadata accessor for SearchPropertyRequest(0);
  v1[41] = v46;
  OUTLINED_FUNCTION_114(v46);
  v48 = *(v47 + 64);
  v1[42] = OUTLINED_FUNCTION_160();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v49 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v49, v50, v51);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *(v5 + 232);
  v8 = *v1;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  v3[50] = v0;

  outlined destroy of EagerResolutionService?(v7, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  v10 = v3[48];
  if (v0)
  {
    v11 = v3[46];
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 7);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = *(v20 + 104);
  if (*(v21 + 16) != 1)
  {
LABEL_10:
    v48 = *(v20 + 344);
    v47 = *(v20 + 352);
    v49 = *(v20 + 336);
    v51 = *(v20 + 312);
    v50 = *(v20 + 320);
    v52 = *(v20 + 288);
    v53 = *(v20 + 296);
    v55 = *(v20 + 264);
    v54 = *(v20 + 272);
    v56 = *(v20 + 240);
    v117 = *(v20 + 232);
    v118 = *(v20 + 224);
    v119 = *(v20 + 216);
    v120 = *(v20 + 192);
    v122 = *(v20 + 176);
    v124 = *(v20 + 152);
    v126 = *(v20 + 144);
    v128 = *(v20 + 136);

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_17_4();

    return v59(v57, v58, v59, v60, v61, v62, v63, v64, v117, v118, v119, v120, v122, v124, v126, v128, a17, a18, a19, a20);
  }

  v22 = *(v20 + 328);
  specialized Collection.first.getter(v21, *(v20 + 320));
  v23 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v23, v24, v22) == 1)
  {
    v25 = *(v20 + 320);
    v26 = &_s10OmniSearch0B15PropertyRequestVSgMd;
    v27 = &_s10OmniSearch0B15PropertyRequestVSgMR;
LABEL_9:
    outlined destroy of EagerResolutionService?(v25, v26, v27);
    goto LABEL_10;
  }

  v28 = *(v20 + 352);
  v29 = *(v20 + 328);
  v31 = *(v20 + 296);
  v30 = *(v20 + 304);
  outlined init with take of UserQuery(*(v20 + 320), v28);
  v32 = *(v28 + *(v29 + 28));
  EntityProperty.wrappedValue.getter();
  v33 = OUTLINED_FUNCTION_93_6();
  if (__swift_getEnumTagSinglePayload(v33, v34, v30) == 1)
  {
    v35 = *(v20 + 352);
    v36 = *(v20 + 296);
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
    v26 = &_s10OmniSearch16HydrationContextVSgMd;
    v27 = &_s10OmniSearch16HydrationContextVSgMR;
LABEL_8:
    v25 = v36;
    goto LABEL_9;
  }

  v38 = *(v20 + 304);
  v37 = *(v20 + 312);
  v40 = *(v20 + 272);
  v39 = *(v20 + 280);
  outlined init with take of UserQuery(*(v20 + 296), v37);
  v41 = *(v37 + *(v38 + 24));
  EntityProperty.wrappedValue.getter();
  v42 = OUTLINED_FUNCTION_93_6();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, v43, v39);
  v36 = *(v20 + 272);
  if (EnumTagSinglePayload == 1)
  {
    v45 = *(v20 + 352);
    v46 = *(v20 + 312);
    OUTLINED_FUNCTION_11_53();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
    v26 = &_s10OmniSearch15HydrationEntityVSgMd;
    v27 = &_s10OmniSearch15HydrationEntityVSgMR;
    goto LABEL_8;
  }

  v66 = *(v20 + 288);
  v67 = OUTLINED_FUNCTION_107();
  outlined init with take of UserQuery(v67, v68);
  v69 = HydrationEntity.value.getter();
  *(v20 + 360) = v69;
  *(v20 + 368) = v70;
  if (!v70)
  {
    v84 = *(v20 + 352);
    v85 = *(v20 + 312);
    v86 = *(v20 + 288);
    OUTLINED_FUNCTION_18_29();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_11_53();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
    goto LABEL_10;
  }

  v71 = v69;
  v72 = v70;
  if (one-time initialization token for answerResolution != -1)
  {
    swift_once();
  }

  v74 = *(v20 + 344);
  v73 = *(v20 + 352);
  v75 = type metadata accessor for Logger();
  *(v20 + 376) = __swift_project_value_buffer(v75, static Logging.answerResolution);
  OUTLINED_FUNCTION_49_24();
  v76 = OUTLINED_FUNCTION_88();
  outlined init with copy of UserQuery(v76, v77);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();

  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v20 + 344);
  if (v80)
  {
    v82 = OUTLINED_FUNCTION_90_1();
    a17 = OUTLINED_FUNCTION_260();
    *v82 = 136315394;
    *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v82 + 12) = 2080;
    SearchPropertyRequest.description.getter();
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v82 + 14) = v83;
    _os_log_impl(&dword_25D85C000, v78, v79, "Attempting to resolve entityValue: %s to requestedProperty: %s", v82, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
  }

  v87 = *(v20 + 352);
  v88 = *(v20 + 328);
  v89 = *(v20 + 304);
  v121 = *(v20 + 312);
  v123 = *(v20 + 232);
  v90 = (*(v20 + 112) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController);
  v91 = v90[4];
  __swift_project_boxed_opaque_existential_1(v90, v90[3]);
  v92 = *(v91 + 8);
  v93 = OUTLINED_FUNCTION_54_0();
  v94(v93);
  v95 = *(v20 + 48);
  v127 = __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
  v96 = *(v87 + *(v88 + 20));
  EntityProperty.wrappedValue.getter();
  v125 = *(v20 + 88);
  *(v20 + 384) = *(v20 + 96);
  v97 = *(v87 + *(v88 + 24));
  EntityProperty.wrappedValue.getter();
  *(v20 + 409) = *(v20 + 408);
  *(v20 + 80) = MEMORY[0x277D837D0];
  *(v20 + 56) = v71;
  *(v20 + 64) = v72;
  v98 = *(v121 + *(v89 + 20));

  EntityProperty.wrappedValue.getter();
  v99 = *(v95 + 24);
  OUTLINED_FUNCTION_28_0();
  v129 = v100 + *v100;
  v102 = *(v101 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v20 + 392) = v103;
  *v103 = v104;
  v103[1] = OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:);
  v106 = *(v20 + 232);
  v105 = *(v20 + 240);
  OUTLINED_FUNCTION_17_4();

  return v115(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, v121, v95 + 24, v125, v127, v129, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v22 = v20[43];
  v21 = v20[44];
  v23 = v20[42];
  v24 = v20[39];
  v25 = v20[40];
  v26 = v20[36];
  v27 = v20[37];
  v29 = v20[33];
  v28 = v20[34];
  v40 = v20[30];
  v41 = v20[29];
  v42 = v20[28];
  v43 = v20[27];
  v44 = v20[24];
  v45 = v20[22];
  v46 = v20[19];
  v47 = v20[18];
  v48 = v20[17];
  OUTLINED_FUNCTION_18_29();
  outlined destroy of UserQuery();
  OUTLINED_FUNCTION_11_53();
  outlined destroy of UserQuery();
  OUTLINED_FUNCTION_2_75();
  outlined destroy of UserQuery();
  __swift_destroy_boxed_opaque_existential_1Tm(v20 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v20 + 2);

  OUTLINED_FUNCTION_127();
  v30 = v20[50];
  OUTLINED_FUNCTION_17_4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, a18, a19, a20);
}

void OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:)()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v3, v4, v5) == 1)
  {
    v7 = v0[46];
    v6 = v0[47];
    v8 = v0[44];
    v9 = v0[42];
    outlined destroy of EagerResolutionService?(v2, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    OUTLINED_FUNCTION_49_24();
    outlined init with copy of UserQuery(v8, v9);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[46];
    if (v12)
    {
      v14 = v0[45];
      v15 = v0[42];
      v16 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v16 = 136643075;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v16 + 4) = v17;
      *(v16 + 12) = 2080;
      SearchPropertyRequest.description.getter();
      OUTLINED_FUNCTION_2_75();
      outlined destroy of UserQuery();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v16 + 14) = v18;
      _os_log_impl(&dword_25D85C000, v10, v11, "Unable to resolve the hydration entity value: %{sensitive}s to the desired requested property: %s, returning empty search results", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {
      v58 = v0[42];

      OUTLINED_FUNCTION_2_75();
      outlined destroy of UserQuery();
    }

    v59 = v0[44];
    v60 = v0[39];
    v61 = v0[36];
    v62 = Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_188_8();
    OUTLINED_FUNCTION_180_7();
    OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v63, v64, v65, v66, v67, v68, v62);
    OUTLINED_FUNCTION_18_29();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_11_53();
    outlined destroy of UserQuery();
  }

  else
  {
    v19 = v0[45];
    v114 = v0[46];
    v20 = v0[27];
    v22 = v0[24];
    v21 = v0[25];
    v23 = v0[22];
    v122 = v0[23];
    v25 = v0[20];
    v24 = v0[21];
    v120 = v0[18];
    v116 = v0[19];
    v118 = v0[15];
    outlined init with take of UserQuery(v2, v0[33]);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    UUID.init()();
    v26 = v23;
    UUID.uuidString.getter();
    OUTLINED_FUNCTION_33_27();
    v27 = *(v24 + 8);
    v28 = OUTLINED_FUNCTION_241_0();
    v29(v28);
    v30 = type metadata accessor for Answer();
    v31 = v30[9];
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    v36 = MEMORY[0x277D84F90];
    v37 = Dictionary.init(dictionaryLiteral:)();
    *v22 = v26;
    v22[1] = v2;
    v22[2] = v19;
    v22[3] = v114;
    v22[4] = v37;
    v22[5] = v36;
    v22[6] = v36;
    *(v22 + v30[10]) = 0;
    v38 = (v22 + v30[11]);
    *v38 = 0;
    v38[1] = 0;
    *(v22 + v30[12]) = xmmword_25DBC9410;
    swift_storeEnumTagMultiPayload();
    v39 = [objc_allocWithZone(MEMORY[0x277CC34B0]) init];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v118);
    *(v20 + v21[7]) = v36;
    OUTLINED_FUNCTION_39_20(v21[10]);
    OUTLINED_FUNCTION_47_19();
    outlined init with copy of UserQuery(v22, v20);
    v123 = v21;
    v43 = v21[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v44 = v39;
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of SpotlightRankingItem?(v116, v120, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v45 = OUTLINED_FUNCTION_11_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, v46, v118);
    v48 = v0[27];
    v49 = v0[24];
    v50 = v0[25];
    v52 = v0[18];
    v51 = v0[19];
    if (EnumTagSinglePayload == 1)
    {
      v53 = OUTLINED_FUNCTION_194_7();
      outlined destroy of EagerResolutionService?(v53, v54, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      v55 = *(v50 + 20);
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_19_18();

      v56 = OUTLINED_FUNCTION_54_0();
      outlined destroy of EagerResolutionService?(v56, v57, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_12_47();
      outlined destroy of UserQuery();
    }

    else
    {
      v70 = v0[16];
      v69 = v0[17];
      v71 = v0[15];

      outlined destroy of EagerResolutionService?(v51, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_12_47();
      outlined destroy of UserQuery();
      v72 = *(v70 + 32);
      v72(v69, v52, v71);
      v72(v48 + *(v50 + 20), v69, v71);
    }

    v73 = v0[44];
    v74 = v0[39];
    v75 = v0[36];
    v76 = v0[32];
    v77 = v0[33];
    v78 = v0[27];
    v79 = v0[28];
    v80 = v0[25];
    v81 = v0[26];
    *(v78 + *(v80 + 32)) = 0;
    *(v78 + *(v80 + 36)) = 1;
    OUTLINED_FUNCTION_13_39();
    outlined init with take of UserQuery(v82, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E16PropertyResponseVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E16PropertyResponseVGMR);
    v83 = *(v76 + 72);
    v84 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_25DBC8180;
    outlined init with copy of UserQuery(v77, v85 + v84);
    v86 = v123[7];
    v87 = *(v79 + v86);

    *(v79 + v86) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
    v88 = *(v81 + 72);
    v89 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    *(swift_allocObject() + 16) = xmmword_25DBC8180;
    OUTLINED_FUNCTION_19_40();
    outlined init with copy of UserQuery(v79, v90 + v89);
    v91 = Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_188_8();
    OUTLINED_FUNCTION_180_7();
    OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v92, v93, v94, v95, v96, v97, v91);
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_18_29();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_11_53();
    outlined destroy of UserQuery();
    OUTLINED_FUNCTION_2_75();
    outlined destroy of UserQuery();
  }

  outlined destroy of UserQuery();
  v99 = v0[43];
  v98 = v0[44];
  v100 = v0[42];
  v102 = v0[39];
  v101 = v0[40];
  v103 = v0[36];
  v104 = v0[37];
  v106 = v0[33];
  v105 = v0[34];
  v107 = v0[30];
  v110 = v0[29];
  v111 = v0[28];
  v112 = v0[27];
  v113 = v0[24];
  v115 = v0[22];
  v117 = v0[19];
  v119 = v0[18];
  v121 = v0[17];

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_156_7();

  __asm { BRAA            X2, X16 }
}

void OmniSearchService.checkForOverride(query:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = type metadata accessor for UserQuery();
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v6 = type metadata accessor for SearchResult(0);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  v32 = static SearchOverrides.read()();
  v49 = v14;
  v33 = (v32 + 40);
  v34 = *(v32 + 16) + 1;
  do
  {
    if (!--v34)
    {
      goto LABEL_21;
    }

    v35 = v33[1];
    v36 = v33[3];
    v37 = v33[5];
    if (*(v33 - 1) == *(v1 + 16) && *v33 == *(v1 + 24))
    {
      break;
    }

    v33 += 7;
  }

  while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

  if (!v35)
  {

LABEL_21:

    goto LABEL_22;
  }

  v39 = *(v35 + 16);
  if (v39)
  {
    v48 = v9;
    v51 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v40 = 0;
    v41 = v49;
    while (v40 < *(v35 + 16))
    {
      v1 = v39;
      v42 = *(v35 + 8 * v40 + 32);
      SearchResult.init(overridePayload:)(v42, v41);

      v44 = *(v51 + 16);
      v43 = *(v51 + 24);
      if (v44 >= v43 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v43);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v40;
      *(v51 + 16) = v44 + 1;
      v45 = v51 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v46 = *(v48 + 72);
      OUTLINED_FUNCTION_13_39();
      v41 = v49;
      outlined init with take of UserQuery(v49, v47);
      v39 = v1;
      if (v1 == v40)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    OUTLINED_FUNCTION_142_0();
    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v15, static Logging.stextension);
    OUTLINED_FUNCTION_16_44();
    outlined init with copy of UserQuery(v1, v36);
    v16 = 0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_90_1();
      v20 = OUTLINED_FUNCTION_173_0();
      v50 = OUTLINED_FUNCTION_49_0();
      *v19 = 136315394;
      v21 = *(v36 + 16);
      v22 = *(v36 + 24);

      OUTLINED_FUNCTION_3_68();
      outlined destroy of UserQuery();
      OUTLINED_FUNCTION_179_0();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v19 + 4) = v23;
      *(v19 + 12) = 2112;
      v24 = 0;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v25;
      *v20 = v25;
      _os_log_impl(&dword_25D85C000, v17, v18, "Failed to handle overrides for rewrittenQuery: %s - %@. Defaulting to regular search.", v19, 0x16u);
      outlined destroy of EagerResolutionService?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v26, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v28, v29);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v30, v31);
    }

    else
    {

      OUTLINED_FUNCTION_3_68();
      outlined destroy of UserQuery();
    }
  }

  else
  {
LABEL_17:
  }

LABEL_22:
  OUTLINED_FUNCTION_148();
}

uint64_t OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  *(v1 + 160) = v4;
  *(v1 + 168) = v0;
  *(v1 + 152) = v5;
  v6 = type metadata accessor for Locale();
  *(v1 + 176) = v6;
  OUTLINED_FUNCTION_21(v6);
  *(v1 + 184) = v7;
  v9 = *(v8 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_160();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 296) = *(v3 + 98);
  v13 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_230_4();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (!FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_shortCircuitPhotoSearch) || (v1 = objc_opt_self(), v2 = [v1 processInfo], v3 = NSProcessInfo.isSearchToolExtensin.getter(), v2, (v3 & 1) == 0))
  {
    if (one-time initialization token for stextension != -1)
    {
      OUTLINED_FUNCTION_142_0();
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v9, static Logging.stextension);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v12 = 136315394;
      v13 = [objc_opt_self() processInfo];
      v14 = [v13 processName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_141_0();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      swift_initStackObject();
      FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_shortCircuitPhotoSearch);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v12 + 14) = v16;
      _os_log_impl(&dword_25D85C000, v10, v11, "Short-circuiting is disabled for process: %s, shortCircuitPhotoSearch FeatureFlag: %s", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    goto LABEL_11;
  }

  v4 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  if ((static NSUserDefaults.enablePhotosInAppSearch.getter() & 1) == 0)
  {
    if (one-time initialization token for stextension != -1)
    {
      OUTLINED_FUNCTION_142_0();
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v22, static Logging.stextension);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v24))
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_11_26();
      *v3 = 136315138;
      v25 = [v1 processInfo];
      v26 = [v25 processName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v3 + 4) = v27;
      OUTLINED_FUNCTION_165_6(&dword_25D85C000, v23, v4, "Short-circuiting is disabled for process: %s, UserDefaults's enablePhotosInAppSearch isn't set to true");
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    goto LABEL_11;
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 152);
  v7 = type metadata accessor for UserQuery();
  v127 = *(v7 + 28);
  outlined init with copy of SpotlightRankingItem?(v6 + v127, v5, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, Entity) == 1)
  {
    outlined destroy of EagerResolutionService?(*(v0 + 208), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    goto LABEL_11;
  }

  v28 = *(*(v0 + 208) + *(Entity + 24));
  EntityProperty.wrappedValue.getter();
  v29 = *(v0 + 128);
  OUTLINED_FUNCTION_5_55();
  outlined destroy of UserQuery();
  if (!v29)
  {
LABEL_11:
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 192);

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_252();

    __asm { BRAA            X2, X16 }
  }

  v30 = *(v29 + 16);
  if (!v30)
  {
LABEL_131:

    goto LABEL_11;
  }

  v31 = 0;
  v125 = v29;
  v126 = v29 + 32;
  v124 = v7;
  v122 = Entity;
  v123 = v6;
  v120 = *(v29 + 16);
  while (1)
  {
    if (v31 == v30)
    {
      if ((*(v0 + 296) & 1) == 0 && !*(*(v0 + 160) + 16))
      {
        if (one-time initialization token for stextension != -1)
        {
          goto LABEL_202;
        }

        goto LABEL_133;
      }

      goto LABEL_131;
    }

    if (v31 >= *(v29 + 16))
    {
      break;
    }

    v32 = *(v126 + v31);
    if (one-time initialization token for ShortCircuitPhotoFilterTypes != -1)
    {
      v65 = v31;
      swift_once();
      v31 = v65;
    }

    v33 = static OmniSearchService.ShortCircuitPhotoFilterTypes;
    if (!*(static OmniSearchService.ShortCircuitPhotoFilterTypes + 2))
    {
      goto LABEL_131;
    }

    v128 = v31;
    v34 = *(static OmniSearchService.ShortCircuitPhotoFilterTypes + 5);
    v35 = specialized RawRepresentable<>._rawHashValue(seed:)();
    v36 = -1 << v33[32];
    v37 = v35 & ~v36;
    if (((*&v33[((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v37) & 1) == 0)
    {
      goto LABEL_131;
    }

    v129 = v128 + 1;
    v38 = ~v36;
    while (1)
    {
      v39 = 0xE500000000000000;
      v40 = 0x6D72616C61;
      switch(*(*(v33 + 6) + v37))
      {
        case 1:
          v39 = 0xE400000000000000;
          v40 = 1802465122;
          break;
        case 2:
          v39 = 0xE800000000000000;
          v40 = OUTLINED_FUNCTION_38_4();
          break;
        case 3:
          v39 = 0xE700000000000000;
          v40 = 0x746361746E6F63;
          break;
        case 4:
          v40 = 0x61737265766E6F63;
          v44 = 1852795252;
          goto LABEL_56;
        case 5:
          v40 = OUTLINED_FUNCTION_193_7();
          v42 = 0xE50000656C690000;
          goto LABEL_54;
        case 6:
          v40 = OUTLINED_FUNCTION_193_7();
          v39 = 0xEF7265646C6F0000;
          break;
        case 7:
          v39 = 0xE800000000000000;
          v40 = 0x6D726F6665657266;
          break;
        case 8:
          v39 = 0xE700000000000000;
          v40 = 0x6C616E72756F6ALL;
          break;
        case 9:
          v39 = 0xE700000000000000;
          v45 = 0x746F6E79656BLL;
          goto LABEL_69;
        case 0xA:
          v39 = 0xE400000000000000;
          v40 = 1818845549;
          break;
        case 0xB:
          v39 = 0xE600000000000000;
          v40 = 0x79726F6D656DLL;
          break;
        case 0xC:
          v39 = 0xE700000000000000;
          v45 = 0x67617373656DLL;
          goto LABEL_69;
        case 0xD:
          v39 = 0xE400000000000000;
          v40 = 1702129518;
          break;
        case 0xE:
          OUTLINED_FUNCTION_69_2();
          v39 = v43 + 1264;
          v40 = 0x646C6F4665746F6ELL;
          break;
        case 0xF:
          v40 = 0x46737265626D756ELL;
          v39 = 0xEB00000000656C69;
          break;
        case 0x10:
          v40 = 0x6C69467365676170;
          v39 = 0xE900000000000065;
          break;
        case 0x11:
          v41 = 1852794992;
          goto LABEL_51;
        case 0x12:
          v47 = 1953458288;
          goto LABEL_64;
        case 0x13:
          v40 = 0x626C416F746F6870;
          v39 = 0xEA00000000006D75;
          break;
        case 0x14:
          v39 = 0xE800000000000000;
          v40 = OUTLINED_FUNCTION_123_1();
          break;
        case 0x15:
          v40 = OUTLINED_FUNCTION_123_1();
          v44 = 1953720652;
          goto LABEL_56;
        case 0x16:
          v39 = 0xE300000000000000;
          v40 = 6447476;
          break;
        case 0x17:
          v40 = 0x72656D6974;
          break;
        case 0x18:
          v47 = 1701079414;
          goto LABEL_64;
        case 0x19:
          OUTLINED_FUNCTION_124_1();
          v39 = v46 + 7;
          v40 = 0x69616D6563696F76;
          break;
        case 0x1A:
          OUTLINED_FUNCTION_124_1();
          v39 = v50 + 10;
          goto LABEL_73;
        case 0x1B:
          v39 = 0xE600000000000000;
          v40 = 0x74656C6C6177;
          break;
        case 0x1C:
          v39 = 0xE700000000000000;
          v45 = 0x746973626577;
LABEL_69:
          v40 = v45 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 0x1D:
          v39 = 0xE800000000000000;
          v40 = 0x616D61726F6E6170;
          break;
        case 0x1E:
          OUTLINED_FUNCTION_69_2();
          v39 = v48 + 1786;
          v40 = 0x68736E6565726373;
          break;
        case 0x1F:
          v39 = 0xE600000000000000;
          v40 = 0x6569666C6573;
          break;
        case 0x20:
          v47 = 1836018803;
LABEL_64:
          v40 = v47 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 0x21:
          v40 = 0x566C616974617073;
          v44 = 1868915817;
LABEL_56:
          v39 = v44 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x22:
          v40 = OUTLINED_FUNCTION_38_4();
          v42 = 0x746E657645;
LABEL_54:
          v39 = v42 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x23:
          v39 = 0xE400000000000000;
          v40 = 1802398060;
          break;
        case 0x24:
          v41 = 1769369453;
LABEL_51:
          v40 = v41 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          break;
        case 0x25:
          v39 = 0xE600000000000000;
          v40 = 0x697261666173;
          break;
        case 0x26:
          OUTLINED_FUNCTION_69_2();
          v39 = v49 + 1530;
LABEL_73:
          v40 = 0x6D654D6563696F76;
          break;
        default:
          break;
      }

      v51 = 0xE500000000000000;
      v52 = 0x6D72616C61;
      switch(v32)
      {
        case 1:
          v51 = 0xE400000000000000;
          v52 = 1802465122;
          break;
        case 2:
          v51 = 0xE800000000000000;
          OUTLINED_FUNCTION_34_6();
          break;
        case 3:
          v51 = 0xE700000000000000;
          v52 = 0x746361746E6F63;
          break;
        case 4:
          v52 = 0x61737265766E6F63;
          v56 = 1852795252;
          goto LABEL_101;
        case 5:
          OUTLINED_FUNCTION_189_6();
          v54 = 0xE50000656C690000;
          goto LABEL_99;
        case 6:
          OUTLINED_FUNCTION_189_6();
          v51 = 0xEF7265646C6F0000;
          break;
        case 7:
          v51 = 0xE800000000000000;
          v52 = 0x6D726F6665657266;
          break;
        case 8:
          v51 = 0xE700000000000000;
          v52 = 0x6C616E72756F6ALL;
          break;
        case 9:
          v51 = 0xE700000000000000;
          v57 = 0x746F6E79656BLL;
          goto LABEL_114;
        case 10:
          v51 = 0xE400000000000000;
          v52 = 1818845549;
          break;
        case 11:
          v51 = 0xE600000000000000;
          v52 = 0x79726F6D656DLL;
          break;
        case 12:
          v51 = 0xE700000000000000;
          v57 = 0x67617373656DLL;
          goto LABEL_114;
        case 13:
          v51 = 0xE400000000000000;
          v52 = 1702129518;
          break;
        case 14:
          OUTLINED_FUNCTION_69_2();
          v51 = v55 + 1264;
          v52 = 0x646C6F4665746F6ELL;
          break;
        case 15:
          v52 = 0x46737265626D756ELL;
          v51 = 0xEB00000000656C69;
          break;
        case 16:
          v52 = 0x6C69467365676170;
          v51 = 0xE900000000000065;
          break;
        case 17:
          v53 = 1852794992;
          goto LABEL_96;
        case 18:
          v59 = 1953458288;
          goto LABEL_109;
        case 19:
          v52 = 0x626C416F746F6870;
          v51 = 0xEA00000000006D75;
          break;
        case 20:
          v51 = 0xE800000000000000;
          OUTLINED_FUNCTION_104_1();
          break;
        case 21:
          OUTLINED_FUNCTION_104_1();
          v56 = 1953720652;
          goto LABEL_101;
        case 22:
          v51 = 0xE300000000000000;
          v52 = 6447476;
          break;
        case 23:
          v52 = 0x72656D6974;
          break;
        case 24:
          v59 = 1701079414;
          goto LABEL_109;
        case 25:
          OUTLINED_FUNCTION_124_1();
          v51 = v58 + 7;
          v52 = 0x69616D6563696F76;
          break;
        case 26:
          OUTLINED_FUNCTION_124_1();
          v51 = v62 + 10;
          goto LABEL_118;
        case 27:
          v51 = 0xE600000000000000;
          v52 = 0x74656C6C6177;
          break;
        case 28:
          v51 = 0xE700000000000000;
          v57 = 0x746973626577;
LABEL_114:
          v52 = v57 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 29:
          v51 = 0xE800000000000000;
          v52 = 0x616D61726F6E6170;
          break;
        case 30:
          OUTLINED_FUNCTION_69_2();
          v51 = v60 + 1786;
          v52 = 0x68736E6565726373;
          break;
        case 31:
          v51 = 0xE600000000000000;
          v52 = 0x6569666C6573;
          break;
        case 32:
          v59 = 1836018803;
LABEL_109:
          v52 = v59 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 33:
          v52 = 0x566C616974617073;
          v56 = 1868915817;
LABEL_101:
          v51 = v56 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 34:
          OUTLINED_FUNCTION_34_6();
          v54 = 0x746E657645;
LABEL_99:
          v51 = v54 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 35:
          v51 = 0xE400000000000000;
          v52 = 1802398060;
          break;
        case 36:
          v53 = 1769369453;
LABEL_96:
          v52 = v53 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          break;
        case 37:
          v51 = 0xE600000000000000;
          v52 = 0x697261666173;
          break;
        case 38:
          OUTLINED_FUNCTION_69_2();
          v51 = v61 + 1530;
LABEL_118:
          v52 = 0x6D654D6563696F76;
          break;
        default:
          break;
      }

      if (v40 == v52 && v39 == v51)
      {
        break;
      }

      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v64)
      {
        goto LABEL_127;
      }

      v37 = (v37 + 1) & v38;
      if (((*&v33[((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v37) & 1) == 0)
      {
        goto LABEL_131;
      }
    }

LABEL_127:
    v7 = v124;
    Entity = v122;
    v6 = v123;
    v29 = v125;
    v30 = v120;
    v31 = v129;
  }

  __break(1u);
LABEL_202:
  OUTLINED_FUNCTION_142_0();
LABEL_133:
  v66 = type metadata accessor for Logger();
  *(v0 + 216) = OUTLINED_FUNCTION_200(v66, static Logging.stextension);

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_49_0();
    v121 = v69;
    *v69 = 136315138;
    v70 = *(v125 + 16);
    v130 = v67;
    if (v70)
    {
      v132 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
      v71 = v125;
      v72 = 32;
      v73 = v132;
      do
      {
        v74 = 0xE500000000000000;
        v75 = 0x6D72616C61;
        switch(*(v71 + v72))
        {
          case 1:
            v74 = 0xE400000000000000;
            v75 = 1802465122;
            break;
          case 2:
            v74 = 0xE800000000000000;
            OUTLINED_FUNCTION_249_4();
            break;
          case 3:
            v74 = 0xE700000000000000;
            v75 = 0x746361746E6F63;
            break;
          case 4:
            v75 = 0x61737265766E6F63;
            v79 = 1852795252;
            goto LABEL_163;
          case 5:
            OUTLINED_FUNCTION_197_8();
            v77 = 0xE50000656C690000;
            goto LABEL_161;
          case 6:
            OUTLINED_FUNCTION_197_8();
            v74 = 0xEF7265646C6F0000;
            break;
          case 7:
            v74 = 0xE800000000000000;
            v75 = 0x6D726F6665657266;
            break;
          case 8:
            v74 = 0xE700000000000000;
            v75 = 0x6C616E72756F6ALL;
            break;
          case 9:
            v74 = 0xE700000000000000;
            v80 = 0x746F6E79656BLL;
            goto LABEL_176;
          case 0xA:
            v74 = 0xE400000000000000;
            v75 = 1818845549;
            break;
          case 0xB:
            v74 = 0xE600000000000000;
            v75 = 0x79726F6D656DLL;
            break;
          case 0xC:
            v74 = 0xE700000000000000;
            v80 = 0x67617373656DLL;
            goto LABEL_176;
          case 0xD:
            v74 = 0xE400000000000000;
            v75 = 1702129518;
            break;
          case 0xE:
            OUTLINED_FUNCTION_69_2();
            v74 = v78 + 1264;
            v75 = 0x646C6F4665746F6ELL;
            break;
          case 0xF:
            v75 = 0x46737265626D756ELL;
            v74 = 0xEB00000000656C69;
            break;
          case 0x10:
            v75 = 0x6C69467365676170;
            v74 = 0xE900000000000065;
            break;
          case 0x11:
            v76 = 1852794992;
            goto LABEL_158;
          case 0x12:
            v82 = 1953458288;
            goto LABEL_171;
          case 0x13:
            v75 = 0x626C416F746F6870;
            v74 = 0xEA00000000006D75;
            break;
          case 0x14:
            v74 = 0xE800000000000000;
            OUTLINED_FUNCTION_243_4();
            break;
          case 0x15:
            OUTLINED_FUNCTION_243_4();
            v79 = 1953720652;
            goto LABEL_163;
          case 0x16:
            v74 = 0xE300000000000000;
            v75 = 6447476;
            break;
          case 0x17:
            v75 = 0x72656D6974;
            break;
          case 0x18:
            v82 = 1701079414;
            goto LABEL_171;
          case 0x19:
            OUTLINED_FUNCTION_124_1();
            v74 = v81 + 7;
            v75 = 0x69616D6563696F76;
            break;
          case 0x1A:
            OUTLINED_FUNCTION_124_1();
            v74 = v85 + 10;
            goto LABEL_180;
          case 0x1B:
            v74 = 0xE600000000000000;
            v75 = 0x74656C6C6177;
            break;
          case 0x1C:
            v74 = 0xE700000000000000;
            v80 = 0x746973626577;
LABEL_176:
            v75 = v80 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
            break;
          case 0x1D:
            v74 = 0xE800000000000000;
            v75 = 0x616D61726F6E6170;
            break;
          case 0x1E:
            OUTLINED_FUNCTION_69_2();
            v74 = v83 + 1786;
            v75 = 0x68736E6565726373;
            break;
          case 0x1F:
            v74 = 0xE600000000000000;
            v75 = 0x6569666C6573;
            break;
          case 0x20:
            v82 = 1836018803;
LABEL_171:
            v75 = v82 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
            break;
          case 0x21:
            v75 = 0x566C616974617073;
            v79 = 1868915817;
LABEL_163:
            v74 = v79 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x22:
            OUTLINED_FUNCTION_249_4();
            v77 = 0x746E657645;
LABEL_161:
            v74 = v77 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x23:
            v74 = 0xE400000000000000;
            v75 = 1802398060;
            break;
          case 0x24:
            v76 = 1769369453;
LABEL_158:
            v75 = v76 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
            break;
          case 0x25:
            v74 = 0xE600000000000000;
            v75 = 0x697261666173;
            break;
          case 0x26:
            OUTLINED_FUNCTION_69_2();
            v74 = v84 + 1530;
LABEL_180:
            v75 = 0x6D654D6563696F76;
            break;
          default:
            break;
        }

        v87 = *(v132 + 16);
        v86 = *(v132 + 24);
        if (v87 >= v86 >> 1)
        {
          v89 = OUTLINED_FUNCTION_26_3(v86);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v89, v87 + 1, 1);
          v71 = v125;
        }

        *(v132 + 16) = v87 + 1;
        v88 = v132 + 16 * v87;
        *(v88 + 32) = v75;
        *(v88 + 40) = v74;
        ++v72;
        --v70;
      }

      while (v70);

      v7 = v124;
      Entity = v122;
      v6 = v123;
    }

    else
    {

      v73 = MEMORY[0x277D84F90];
      v7 = v124;
    }

    *(v0 + 144) = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    BidirectionalCollection<>.joined(separator:)();

    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v121 + 1) = v90;
    OUTLINED_FUNCTION_200_5();
    _os_log_impl(v91, v92, v93, v94, v95, 0xCu);
    OUTLINED_FUNCTION_195_6();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v96 = *(v0 + 200);
  outlined init with copy of SpotlightRankingItem?(v6 + v127, v96, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  if (__swift_getEnumTagSinglePayload(v96, 1, Entity) == 1)
  {
    outlined destroy of EagerResolutionService?(*(v0 + 200), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    v97 = 0;
  }

  else
  {
    v98 = *(*(v0 + 200) + *(Entity + 64));
    EntityProperty.wrappedValue.getter();
    v97 = *(v0 + 136);
    OUTLINED_FUNCTION_5_55();
    outlined destroy of UserQuery();
  }

  v99 = *(v0 + 152);
  *(v0 + 224) = static InAppSearchStringGeneratorUtils.parse(people:)(v97);

  v100 = (v99 + *(v7 + 32));
  if (v100[1])
  {
    v101 = *v100;
    v102 = v100[1];
  }

  else
  {
    static NSUserDefaults.fallbackLocale.getter();
    OUTLINED_FUNCTION_33_27();
  }

  v103 = *(v0 + 192);

  OUTLINED_FUNCTION_107();
  Locale.init(identifier:)();
  type metadata accessor for ECRClient();
  OUTLINED_FUNCTION_128_2();
  swift_allocObject();
  v104 = ECRClient.init()();
  *(v0 + 232) = v104;
  if (v104)
  {
    v105 = *(*v104 + 112);
    v131 = v105 + *v105;
    v106 = v105[1];
    v107 = swift_task_alloc();
    *(v0 + 240) = v107;
    *v107 = v0;
    v107[1] = OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:);
    v108 = *(v0 + 192);
    OUTLINED_FUNCTION_252();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 264) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
  v111 = OUTLINED_FUNCTION_47_1();
  v112 = type metadata accessor for SearchResult(v111);
  OUTLINED_FUNCTION_21(v112);
  v114 = *(v113 + 72);
  v115 = OUTLINED_FUNCTION_186_5();
  *(v0 + 272) = v115;
  *(v115 + 16) = xmmword_25DBC9D00;
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  v116 = swift_task_alloc();
  *(v0 + 280) = v116;
  *v116 = v0;
  OUTLINED_FUNCTION_40_26(v116);
  OUTLINED_FUNCTION_49_4(v117);
  OUTLINED_FUNCTION_252();

  return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 240);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  v4[31] = v0;

  if (!v0)
  {
    v11 = v4[28];
    v10 = v4[29];

    v4[32] = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  v0[33] = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
  v1 = OUTLINED_FUNCTION_42_2();
  v2 = type metadata accessor for SearchResult(v1);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[34] = v7;
  *(v7 + 16) = xmmword_25DBC9D00;
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_40_26(v8);
  OUTLINED_FUNCTION_49_4(v9);

  return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 280);
  v5 = *(v3 + 272);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 288) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  OUTLINED_FUNCTION_128_2();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  OUTLINED_FUNCTION_131();
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for implicit closure #7 in OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:);
  *(v5 + 24) = v4;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = 32;
  v9 = swift_allocObject();
  *(v9 + 16) = 8;
  OUTLINED_FUNCTION_131();
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for specialized implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v10 + 24) = v5;
  OUTLINED_FUNCTION_131();
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8400;
  *(inited + 32) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(inited + 40) = v8;
  *(inited + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(inited + 56) = v9;
  *(inited + 64) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(inited + 72) = v11;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v13 = os_log_type_enabled(v6, v7);
  v14 = v0[31];
  if (v13)
  {
    v15 = MEMORY[0x277D84F90];
    v16 = v0[28];
    v17 = OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_49_0();
    *v17 = 136315138;
    if (!v16)
    {
      v2 = v15;
    }

    MEMORY[0x25F89F8A0](v2, MEMORY[0x277D837D0]);

    OUTLINED_FUNCTION_158();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v17 + 4) = v18;
    _os_log_impl(&dword_25D85C000, v6, v7, "Could not get ecr grounding for %s", v17, 0xCu);
    OUTLINED_FUNCTION_195_6();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v0[33] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
  v19 = OUTLINED_FUNCTION_47_1();
  v20 = type metadata accessor for SearchResult(v19);
  OUTLINED_FUNCTION_21(v20);
  v22 = *(v21 + 72);
  v23 = OUTLINED_FUNCTION_186_5();
  v0[34] = v23;
  *(v23 + 16) = xmmword_25DBC9D00;
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  OmniSearchService.makeShortCircuitMockPhotoResult()();
  v24 = swift_task_alloc();
  v0[35] = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_40_26(v24);
  OUTLINED_FUNCTION_49_4(v25);
  OUTLINED_FUNCTION_136_7();

  return OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)();
}

uint64_t OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  v14 = v13[33];
  v15 = v13[19];
  OUTLINED_FUNCTION_242_4();
  UserQuery.inAppSearchString(ecrResults:bundleId:)(v43, v16);
  OUTLINED_FUNCTION_33_27();

  if (!v12)
  {
    v17 = v13[19];
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
  }

  v20 = v13[36];
  v22 = v13[23];
  v21 = v13[24];
  v23 = v13[22];
  v24 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for OmniSearchResponse();
  OUTLINED_FUNCTION_188_8();
  OUTLINED_FUNCTION_134_11();
  OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v25, v26, v27, v28, v29, v30, v24);
  (*(v22 + 8))(v21, v23);
  v32 = v13[25];
  v31 = v13[26];
  v33 = v13[24];

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_136_7();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, 0, 1, a11, a12);
}

uint64_t implicit closure #7 in OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  if (a1)
  {
    v2 = a1;
  }

  *a2 = v2;
}

uint64_t OmniSearchService.handleShortCircuitMusicSearch(for:typeIdentifiers:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  v3 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t OmniSearchService.handleShortCircuitMusicSearch(for:typeIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_shortCircuitMusicSearch))
  {
    v12 = v11[7];
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;

        EntityProperty.wrappedValue.getter();
        if (v11[4] == 0x6C7070612E6D6F63 && v11[5] == 0xEF636973754D2E65)
        {
        }

        else
        {
          v18 = v11[5];
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v19 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v14 += 2;
        --v13;
      }

      while (v13);
      v20 = v11[6];
      a9 = xmmword_25DBC9A70;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);

      v23 = Dictionary.init(dictionaryLiteral:)();
      type metadata accessor for OmniSearchResponse();
      OUTLINED_FUNCTION_188_8();
      OUTLINED_FUNCTION_134_11();
      OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v24, v25, v26, v27, v28, v29, v23);
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_136_7();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, *(&a9 + 1), a10, a11);
}

void OmniSearchService.makeShortCircuitMockPhotoResult()()
{
  OUTLINED_FUNCTION_155();
  v129 = v2;
  v130 = type metadata accessor for SpotlightRankingItem();
  v3 = OUTLINED_FUNCTION_14(v130);
  v116 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v115 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v10 = OUTLINED_FUNCTION_114(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  v123 = v13 - v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  v128 = &v114 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_3();
  v127 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_49_3();
  v126 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  v125 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_49_3();
  v122 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v38 = OUTLINED_FUNCTION_114(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_109();
  v121 = v41 - v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  v120 = &v114 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v46 = OUTLINED_FUNCTION_114(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_109();
  v119 = v49 - v50;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v51);
  v52 = OUTLINED_FUNCTION_244_3();
  v124 = type metadata accessor for SearchResultItem(v52);
  v53 = OUTLINED_FUNCTION_17(v124);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_8();
  v56 = type metadata accessor for UUID();
  v57 = OUTLINED_FUNCTION_14(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_36();
  UUID.init()();
  v60 = UUID.uuidString.getter();
  v117 = v61;
  v118 = v60;
  v62 = v61;
  v63 = OUTLINED_FUNCTION_38_0();
  v64(v63);
  v65 = [objc_allocWithZone(MEMORY[0x277CC34B0]) init];
  v66 = MEMORY[0x25F89F4C0](0xD000000000000019, 0x800000025DBF1E10);
  [v65 setBundleID_];

  v67 = [v65 attributeSet];
  v68 = MEMORY[0x25F89F4C0](0x746E457465737341, 0xEB00000000797469);
  v69 = MEMORY[0x25F89F4C0](0xD00000000000001FLL, 0x800000025DBF8190);
  [v67 setAttribute:v68 forKey:v69];

  v70 = [v65 attributeSet];
  v71 = MEMORY[0x25F89F4C0](v60, v62);
  v72 = MEMORY[0x25F89F4C0](0xD000000000000023, 0x800000025DBF8160);
  [v70 setAttribute:v71 forKey:v72];

  Date.init()();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  type metadata accessor for PartialExtractedAttributes();
  v77 = v120;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  outlined init with copy of SpotlightRankingItem?(v0, v119, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of SpotlightRankingItem?(v77, v121, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  type metadata accessor for PreExtractedContact();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  type metadata accessor for PreExtractedSharedLink();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  type metadata accessor for PreExtractedBreadcrumb();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v98 = MEMORY[0x277D84F90];
  Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
  outlined destroy of EagerResolutionService?(v77, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v99 = v0;
  v100 = v129;
  outlined destroy of EagerResolutionService?(v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_storeEnumTagMultiPayload();
  v101 = v128;
  OUTLINED_FUNCTION_92();
  v102 = v130;
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v130);
  v106 = type metadata accessor for SearchResult(0);
  *(v100 + v106[7]) = v98;
  OUTLINED_FUNCTION_39_20(v106[10]);
  OUTLINED_FUNCTION_47_19();
  outlined init with copy of UserQuery(v1, v100);
  v107 = v106[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v108 = v65;
  CodableNSSecureCoding.init(wrappedValue:)();
  v109 = v123;
  outlined init with copy of SpotlightRankingItem?(v101, v123, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v110 = v109;
  if (__swift_getEnumTagSinglePayload(v109, 1, v102) == 1)
  {
    outlined destroy of EagerResolutionService?(v109, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v138 = 1;
    v137 = 1;
    v136 = 1;
    v135 = 1;
    v134 = 1;
    v133 = 1;
    v132 = 1;
    v131 = 1;
    v111 = v106[5];
    OUTLINED_FUNCTION_19_18();

    outlined destroy of EagerResolutionService?(v101, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_12_47();
    outlined destroy of UserQuery();
  }

  else
  {

    outlined destroy of EagerResolutionService?(v101, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_12_47();
    outlined destroy of UserQuery();
    v112 = v115;
    v113 = *(v116 + 32);
    v113(v115, v110, v102);
    v113(v100 + v106[5], v112, v102);
  }

  *(v100 + v106[8]) = 1;
  *(v100 + v106[9]) = 1;
  OUTLINED_FUNCTION_148();
}

void OmniSearchService.allowASRG(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_47_1();
  v23 = type metadata accessor for Locale.LanguageCode();
  v403 = OUTLINED_FUNCTION_14(v23);
  v404 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v403);
  OUTLINED_FUNCTION_36();
  v402 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
  v30 = OUTLINED_FUNCTION_17(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_4();
  v386 = v41;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  v389 = v43;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  v392 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  v396 = v47;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7_4();
  v401 = v49;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_4();
  v400 = v51;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v52);
  v54 = &v370[-v53];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v56 = OUTLINED_FUNCTION_114(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7_4();
  v388 = v74;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_7_4();
  v391 = v77;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7_4();
  v394 = v80;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_7_4();
  v387 = v82;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_7_4();
  v398 = v84;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_7_4();
  v390 = v86;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7_4();
  v395 = v88;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_7_4();
  v393 = v90;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_7_4();
  v399 = v92;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_7_4();
  v397 = v94;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v95);
  v97 = &v370[-v96];
  MEMORY[0x28223BE20](v98);
  v100 = &v370[-v99];
  MEMORY[0x28223BE20](v101);
  v103 = &v370[-v102];
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_244_3();
  v105 = type metadata accessor for Locale.Language();
  v106 = OUTLINED_FUNCTION_14(v105);
  v108 = v107;
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_36();
  v113 = v112 - v111;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v108 + 8))(v113, v105);
  MEMORY[0x25F899720](28261, 0xE200000000000000);
  OUTLINED_FUNCTION_44_0();
  v114 = v403;
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v403);
  v405 = v29;
  v118 = *(v29 + 48);
  v119 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
  outlined init with copy of SpotlightRankingItem?(v103, v54, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v406 = v20;
  outlined init with copy of SpotlightRankingItem?(v20, &v54[v118], &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v120 = v114;
  if (__swift_getEnumTagSinglePayload(v54, 1, v114) == 1)
  {
    outlined destroy of EagerResolutionService?(v103, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(&v54[v118]);
    if (v130)
    {
      v121 = v54;
LABEL_45:
      outlined destroy of EagerResolutionService?(v121, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      goto LABEL_46;
    }

    goto LABEL_8;
  }

  outlined init with copy of SpotlightRankingItem?(v54, v100, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(&v54[v118]);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v103, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    (*(v404 + 8))(v100, v114);
LABEL_8:
    outlined destroy of EagerResolutionService?(v54, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_9;
  }

  v135 = v404;
  v136 = v402;
  (*(v404 + 32))(v402, &v54[v118], v120);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v137, v138);
  v371 = dispatch thunk of static Equatable.== infix(_:_:)();
  v119 = *(v135 + 8);
  (v119)(v136, v120);
  outlined destroy of EagerResolutionService?(v103, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  (v119)(v100, v120);
  outlined destroy of EagerResolutionService?(v54, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  if (v371)
  {
    goto LABEL_46;
  }

LABEL_9:
  MEMORY[0x25F899720](29808, 0xE200000000000000);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v120);
  v125 = *(v405 + 48);
  v126 = v400;
  v127 = OUTLINED_FUNCTION_115_12(v97);
  OUTLINED_FUNCTION_98_9(v127, v125 + v126);
  OUTLINED_FUNCTION_105_3(v126);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v97, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v125 + v126);
    v128 = v401;
    if (v130)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v129 = v397;
  outlined init with copy of SpotlightRankingItem?(v126, v397, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v125 + v126);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v97, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v131 = OUTLINED_FUNCTION_81_19();
    v132(v131);
    v128 = v401;
LABEL_17:
    outlined destroy of EagerResolutionService?(v126, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_18;
  }

  v119 = v404;
  v146 = v125 + v126;
  v147 = v402;
  (*(v404 + 32))(v402, v146, v120);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v148, v149);
  OUTLINED_FUNCTION_241_5();
  v150 = dispatch thunk of static Equatable.== infix(_:_:)();
  v151 = v119[1];
  v151(v147, v120);
  v125 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  v152 = OUTLINED_FUNCTION_62_3();
  outlined destroy of EagerResolutionService?(v152, v153, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v151(v129, v120);
  outlined destroy of EagerResolutionService?(v126, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v128 = v401;
  if (v150)
  {
    goto LABEL_46;
  }

LABEL_18:
  v133 = v399;
  MEMORY[0x25F899720](29286, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v133);
  v134 = OUTLINED_FUNCTION_146_8(v133, v128);
  OUTLINED_FUNCTION_98_9(v134, v97 + v128);
  OUTLINED_FUNCTION_105_3(v128);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v133, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v128);
    if (v130)
    {
      goto LABEL_44;
    }

    goto LABEL_28;
  }

  outlined init with copy of SpotlightRankingItem?(v128, v393, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v97 + v128);
  if (v139)
  {
    outlined destroy of EagerResolutionService?(v133, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v140 = OUTLINED_FUNCTION_37_24();
    v141(v140);
LABEL_28:
    outlined destroy of EagerResolutionService?(v128, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_44_27();
  v161 = OUTLINED_FUNCTION_43_18();
  v162(v161);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v163, v164);
  OUTLINED_FUNCTION_53_20();
  v165 = OUTLINED_FUNCTION_20_30();
  (v119)(v165);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v166, v167, v168);
  v169 = OUTLINED_FUNCTION_51_4();
  (v119)(v169);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v170, v171, v172);
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_29:
  v142 = v395;
  MEMORY[0x25F899720](29801, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v142);
  v143 = v396;
  OUTLINED_FUNCTION_146_8(v142, v396);
  v144 = v143;
  outlined init with copy of SpotlightRankingItem?(v406, v97 + v143, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v143);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v142, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v143);
    v145 = v398;
    if (v130)
    {
LABEL_33:
      v121 = v144;
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  v154 = v390;
  outlined init with copy of SpotlightRankingItem?(v143, v390, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v97 + v143);
  if (v155)
  {
    outlined destroy of EagerResolutionService?(v142, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v156 = OUTLINED_FUNCTION_223_5();
    v157(v156);
    v145 = v398;
LABEL_39:
    outlined destroy of EagerResolutionService?(v144, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_44_27();
  v178 = OUTLINED_FUNCTION_43_18();
  v179(v178);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v180, v181);
  v182 = OUTLINED_FUNCTION_88_11();
  v183 = v125[1];
  v183(v97, v120);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v184, v185, v186);
  v183(v154, v120);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v187, v188, v189);
  v145 = v398;
  if (v182)
  {
    goto LABEL_46;
  }

LABEL_40:
  MEMORY[0x25F899720](25956, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v145);
  v128 = v392;
  v158 = OUTLINED_FUNCTION_146_8(v145, v392);
  OUTLINED_FUNCTION_98_9(v158, v97 + v128);
  OUTLINED_FUNCTION_105_3(v128);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v145, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v128);
    v159 = v394;
    if (!v130)
    {
      goto LABEL_54;
    }

LABEL_44:
    v121 = v128;
    goto LABEL_45;
  }

  v173 = v387;
  outlined init with copy of SpotlightRankingItem?(v128, v387, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v97 + v128);
  if (v174)
  {
    outlined destroy of EagerResolutionService?(v398, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v175 = OUTLINED_FUNCTION_223_5();
    v176(v175);
    v159 = v394;
LABEL_54:
    outlined destroy of EagerResolutionService?(v128, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_44_27();
  v194 = OUTLINED_FUNCTION_43_18();
  v195(v194);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v196, v197);
  OUTLINED_FUNCTION_88_11();
  v198 = OUTLINED_FUNCTION_20_30();
  v145(v198);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v199, v200, v201);
  (v145)(v173, v120);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v202, v203, v204);
  v159 = v394;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_55:
  MEMORY[0x25F899720](29541, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v159);
  v126 = v389;
  OUTLINED_FUNCTION_115_12(v159);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v126);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v159, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v126);
    v177 = v391;
    if (v130)
    {
      goto LABEL_13;
    }

    goto LABEL_64;
  }

  outlined init with copy of SpotlightRankingItem?(v126, v384, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v97 + v126);
  if (v190)
  {
    outlined destroy of EagerResolutionService?(v394, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v191 = OUTLINED_FUNCTION_81_19();
    v192(v191);
    v177 = v391;
LABEL_64:
    outlined destroy of EagerResolutionService?(v126, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_65;
  }

  v209 = OUTLINED_FUNCTION_10_50();
  v210(v209);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v211, v212);
  OUTLINED_FUNCTION_241_5();
  OUTLINED_FUNCTION_88_11();
  v213 = OUTLINED_FUNCTION_20_30();
  v159(v213);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v214, v215, v216);
  v217 = OUTLINED_FUNCTION_40_5();
  v159(v217);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v218, v219, v220);
  v177 = v391;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_65:
  MEMORY[0x25F899720](26746, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v177);
  v126 = v386;
  OUTLINED_FUNCTION_115_12(v177);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v126);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v177, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v126);
    v193 = v388;
    if (v130)
    {
      goto LABEL_13;
    }

    goto LABEL_74;
  }

  outlined init with copy of SpotlightRankingItem?(v126, v382, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v97 + v126);
  if (v205)
  {
    outlined destroy of EagerResolutionService?(v391, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v206 = OUTLINED_FUNCTION_81_19();
    v207(v206);
    v193 = v388;
LABEL_74:
    outlined destroy of EagerResolutionService?(v126, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_75;
  }

  v225 = OUTLINED_FUNCTION_10_50();
  v226(v225);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v227, v228);
  OUTLINED_FUNCTION_241_5();
  OUTLINED_FUNCTION_88_11();
  v229 = OUTLINED_FUNCTION_20_30();
  v177(v229);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v230, v231, v232);
  v233 = OUTLINED_FUNCTION_40_5();
  v177(v233);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v234, v235, v236);
  v193 = v388;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_75:
  MEMORY[0x25F899720](24938, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v193);
  OUTLINED_FUNCTION_102_11(v193, &a16);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v126);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v193, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v126);
    v208 = v385;
    if (v130)
    {
      goto LABEL_13;
    }

    goto LABEL_84;
  }

  outlined init with copy of SpotlightRankingItem?(v126, v380, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v97 + v126);
  if (v221)
  {
    outlined destroy of EagerResolutionService?(v388, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v222 = OUTLINED_FUNCTION_81_19();
    v223(v222);
    v208 = v385;
LABEL_84:
    outlined destroy of EagerResolutionService?(v126, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_85;
  }

  v241 = OUTLINED_FUNCTION_10_50();
  v242(v241);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v243, v244);
  OUTLINED_FUNCTION_241_5();
  OUTLINED_FUNCTION_88_11();
  v245 = OUTLINED_FUNCTION_20_30();
  v193(v245);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v246, v247, v248);
  v249 = OUTLINED_FUNCTION_40_5();
  v193(v249);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v250, v251, v252);
  v208 = v385;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_85:
  MEMORY[0x25F899720](28523, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v208);
  OUTLINED_FUNCTION_102_11(v208, &a13);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v126);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v208, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v126);
    v224 = v383;
    if (v130)
    {
      goto LABEL_13;
    }

    goto LABEL_94;
  }

  OUTLINED_FUNCTION_215_2(v126, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v407);
  OUTLINED_FUNCTION_105_3(v97 + v126);
  if (v237)
  {
    outlined destroy of EagerResolutionService?(v385, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v238 = OUTLINED_FUNCTION_37_24();
    v239(v238);
    v224 = v383;
LABEL_94:
    outlined destroy of EagerResolutionService?(v126, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_95;
  }

  v257 = OUTLINED_FUNCTION_10_50();
  v258(v257);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v259, v260);
  OUTLINED_FUNCTION_53_20();
  v261 = OUTLINED_FUNCTION_20_30();
  v208(v261);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v262, v263, v264);
  v265 = OUTLINED_FUNCTION_51_4();
  v208(v265);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v266, v267, v268);
  v224 = v383;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_95:
  MEMORY[0x25F899720](27758, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v224);
  OUTLINED_FUNCTION_102_11(v224, &a10);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v126);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v224, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v126);
    v240 = v381;
    if (v130)
    {
      goto LABEL_13;
    }

    goto LABEL_104;
  }

  OUTLINED_FUNCTION_215_2(v126, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v404);
  OUTLINED_FUNCTION_105_3(v97 + v126);
  if (v253)
  {
    outlined destroy of EagerResolutionService?(v383, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v254 = OUTLINED_FUNCTION_37_24();
    v255(v254);
    v240 = v381;
LABEL_104:
    outlined destroy of EagerResolutionService?(v126, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_105;
  }

  v273 = OUTLINED_FUNCTION_10_50();
  v274(v273);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v275, v276);
  OUTLINED_FUNCTION_53_20();
  v277 = OUTLINED_FUNCTION_20_30();
  v224(v277);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v278, v279, v280);
  v281 = OUTLINED_FUNCTION_51_4();
  v224(v281);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v282, v283, v284);
  v240 = v381;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_105:
  MEMORY[0x25F899720](24932, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v240);
  OUTLINED_FUNCTION_102_11(v240, &v406);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v126);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v240, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v126);
    v256 = v379;
    if (!v130)
    {
      goto LABEL_114;
    }

LABEL_13:
    v121 = v126;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_215_2(v126, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v401);
  OUTLINED_FUNCTION_105_3(v97 + v126);
  if (v269)
  {
    outlined destroy of EagerResolutionService?(v381, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v270 = OUTLINED_FUNCTION_37_24();
    v271(v270);
    v256 = v379;
LABEL_114:
    outlined destroy of EagerResolutionService?(v126, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_115;
  }

  v291 = OUTLINED_FUNCTION_10_50();
  v292(v291);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v293, v294);
  OUTLINED_FUNCTION_53_20();
  v295 = OUTLINED_FUNCTION_20_30();
  v240(v295);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v296, v297, v298);
  v299 = OUTLINED_FUNCTION_51_4();
  v240(v299);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v300, v301, v302);
  v256 = v379;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_115:
  MEMORY[0x25F899720](30323, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v256);
  OUTLINED_FUNCTION_102_11(v256, &v403);
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_105_3(v126);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v256, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v126);
    v272 = v378;
    if (!v130)
    {
      goto LABEL_124;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_215_2(v126, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v399);
  OUTLINED_FUNCTION_105_3(v97 + v126);
  if (v285)
  {
    outlined destroy of EagerResolutionService?(v379, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v286 = OUTLINED_FUNCTION_37_24();
    v287(v286);
    v272 = v378;
LABEL_124:
    outlined destroy of EagerResolutionService?(v126, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_125;
  }

  v308 = OUTLINED_FUNCTION_10_50();
  v309(v308);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v310, v311);
  OUTLINED_FUNCTION_53_20();
  v312 = OUTLINED_FUNCTION_20_30();
  v256(v312);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v313, v314, v315);
  v316 = OUTLINED_FUNCTION_51_4();
  v256(v316);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v317, v318, v319);
  v272 = v378;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_125:
  MEMORY[0x25F899720](25198, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v272);
  v288 = v376;
  v289 = OUTLINED_FUNCTION_146_8(v272, v376);
  OUTLINED_FUNCTION_98_9(v289, v97 + v288);
  OUTLINED_FUNCTION_105_3(v288);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v272, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v288);
    v290 = v377;
    if (v130)
    {
      v121 = v288;
      goto LABEL_45;
    }

    goto LABEL_135;
  }

  OUTLINED_FUNCTION_215_2(v288, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v395);
  OUTLINED_FUNCTION_105_3(v97 + v288);
  if (v303)
  {
    outlined destroy of EagerResolutionService?(v378, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v304 = OUTLINED_FUNCTION_37_24();
    v305(v304);
    v290 = v377;
LABEL_135:
    outlined destroy of EagerResolutionService?(v288, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_44_27();
  v330 = OUTLINED_FUNCTION_43_18();
  v331(v330);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v332, v333);
  OUTLINED_FUNCTION_53_20();
  v334 = OUTLINED_FUNCTION_20_30();
  v288(v334);
  v97 = &_s10Foundation6LocaleV12LanguageCodeVSgMR;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v335, v336, v337);
  v338 = OUTLINED_FUNCTION_51_4();
  v288(v338);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v339, v340, v341);
  v290 = v377;
  if (&_s10Foundation6LocaleV12LanguageCodeVSgMd)
  {
    goto LABEL_46;
  }

LABEL_136:
  MEMORY[0x25F899720](29300, 0xE200000000000000);
  OUTLINED_FUNCTION_9_51(v290);
  v306 = v373;
  OUTLINED_FUNCTION_146_8(v290, v373);
  v144 = v306;
  outlined init with copy of SpotlightRankingItem?(v406, v97 + v306, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_105_3(v306);
  if (v130)
  {
    outlined destroy of EagerResolutionService?(v290, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_105_3(v97 + v306);
    v307 = v374;
    if (!v130)
    {
      goto LABEL_145;
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_215_2(v306, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR, &v393);
  OUTLINED_FUNCTION_105_3(v97 + v306);
  if (v320)
  {
    outlined destroy of EagerResolutionService?(v377, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v321 = OUTLINED_FUNCTION_37_24();
    v322(v321);
    v307 = v374;
LABEL_145:
    outlined destroy of EagerResolutionService?(v306, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_146;
  }

  OUTLINED_FUNCTION_44_27();
  v346 = OUTLINED_FUNCTION_43_18();
  v347(v346);
  OUTLINED_FUNCTION_1_85();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v348, v349);
  OUTLINED_FUNCTION_53_20();
  v350 = OUTLINED_FUNCTION_20_30();
  v288(v350);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v351, v352, v353);
  v354 = OUTLINED_FUNCTION_51_4();
  v288(v354);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of EagerResolutionService?(v355, v356, v357);
  v307 = v374;
  if ((v306 & 1) == 0)
  {
LABEL_146:
    v323 = v375;
    MEMORY[0x25F899720](26998, 0xE200000000000000);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v324, v325, v326, v120);
    v327 = *(v405 + 48);
    v328 = v323;
    v329 = v372;
    outlined init with copy of SpotlightRankingItem?(v328, v372, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    outlined init with take of Locale.LanguageCode?(v406, v329 + v327);
    OUTLINED_FUNCTION_105_3(v329);
    if (v130)
    {
      outlined destroy of EagerResolutionService?(v375, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      OUTLINED_FUNCTION_105_3(v329 + v327);
      if (v130)
      {
        v160 = v329;
        goto LABEL_47;
      }
    }

    else
    {
      outlined init with copy of SpotlightRankingItem?(v329, v307, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      OUTLINED_FUNCTION_105_3(v329 + v327);
      if (!v342)
      {
        v358 = v404;
        v359 = v402;
        (*(v404 + 32))(v402, v329 + v327, v120);
        OUTLINED_FUNCTION_1_85();
        lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(v360, v361);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v362 = *(v358 + 8);
        v362(v359, v120);
        OUTLINED_FUNCTION_47_11();
        outlined destroy of EagerResolutionService?(v363, v364, v365);
        v366 = OUTLINED_FUNCTION_51_4();
        (v362)(v366);
        OUTLINED_FUNCTION_47_11();
        outlined destroy of EagerResolutionService?(v367, v368, v369);
        goto LABEL_48;
      }

      outlined destroy of EagerResolutionService?(v375, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      v343 = *(v404 + 8);
      v344 = OUTLINED_FUNCTION_51_4();
      v345(v344);
    }

    outlined destroy of EagerResolutionService?(v329, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
    goto LABEL_48;
  }

LABEL_46:
  v160 = v406;
LABEL_47:
  outlined destroy of EagerResolutionService?(v160, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_48:
  OUTLINED_FUNCTION_148();
}