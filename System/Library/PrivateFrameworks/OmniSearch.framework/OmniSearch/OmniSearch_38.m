uint64_t RequestedPropertyController.convertToURL(_:)(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for DataDetectorResults();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestedPropertyController.convertToURL(_:), 0, 0);
}

uint64_t RequestedPropertyController.convertToURL(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v12 = v10[17];
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logging.search);
  OUTLINED_FUNCTION_163_9();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_11(v15))
  {
    v16 = OUTLINED_FUNCTION_51_0();
    a9 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_166_6(4.9654e-34);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_166_5();
    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 2);
    OUTLINED_FUNCTION_63_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_167_5();
    *(v16 + 4) = v11;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a9);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 2);
  }

  outlined init with copy of Any(v10[17], (v10 + 6));
  if ((OUTLINED_FUNCTION_120_10() & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = v10[14];
  v22 = v10[15];
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    v38 = v10[15];

    goto LABEL_13;
  }

  v26 = v10[20];
  v25 = v10[21];
  v27 = v10[18];
  v28 = v10[19];
  type metadata accessor for DataDetectorsController();
  OUTLINED_FUNCTION_161();
  v29 = DataDetectorsController.init()();
  OUTLINED_FUNCTION_137_6(v29);
  (*(v30 + 96))(v23, v22);

  v31 = DataDetectorResults.links.getter();
  specialized Collection.first.getter(v31, v27);

  v32 = *(v26 + 8);
  v33 = OUTLINED_FUNCTION_54_0();
  v34(v33);
  type metadata accessor for URL();
  v35 = OUTLINED_FUNCTION_112_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
  v37 = v10[18];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of EagerResolutionService?(v10[18], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_13:
    type metadata accessor for URL();
    goto LABEL_14;
  }

  (*(*(v31 - 8) + 32))(v10[16], v10[18], v31);
LABEL_14:
  v39 = v10[21];
  v40 = v10[18];
  v41 = v10[16];
  OUTLINED_FUNCTION_117();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_218_6();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10);
}

uint64_t RequestedPropertyController.createEmptySearchPropertyResponse(name:type:)@<X0>(char *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logging.search);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_161_6();
    OUTLINED_FUNCTION_149_10();
    *v2 = 136315394;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v2 + 12) = 2080;
    String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v2 + 14) = v8;
    _os_log_impl(&dword_25D85C000, v6, v7, "Creating a SearchPropertyResponse of name: %s, type: %s, with nil value", v2, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  SearchPropertyResponse.init()();
  v9 = type metadata accessor for SearchPropertyResponse(0);
  v10 = *(a2 + *(v9 + 20));

  EntityProperty.wrappedValue.setter();
  v11 = *(a2 + *(v9 + 24));
  return EntityProperty.wrappedValue.setter();
}

uint64_t closure #1 in RequestedPropertyController.convertToDateComponents(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo18NSAttributedStringCSgs5Error_pGMd, &_sScCySo18NSAttributedStringCSgs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = a2[8];
  v13 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, v12);
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  (*(v13 + 8))(a3, v18, partial apply for closure #1 in closure #1 in RequestedPropertyController.convertToDateComponents(_:), v15, v12, v13);
}

uint64_t closure #1 in closure #1 in RequestedPropertyController.convertToDateComponents(_:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo18NSAttributedStringCSgs5Error_pGMd, &_sScCySo18NSAttributedStringCSgs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #2 in RequestedPropertyController.convertToDateComponents(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v26 - v15;
  v17 = MEMORY[0x25F89F4C0](a5, a6, v14);
  specialized Dictionary.subscript.getter(v17, a1);

  if (!v28)
  {
    return outlined destroy of EagerResolutionService?(&v27, &_sypSgMd, &_sypSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  specialized Dictionary.subscript.getter(v26[1], &v27);

  if (!v28)
  {
    return outlined destroy of EagerResolutionService?(&v27, &_sypSgMd, &_sypSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd, &_sSDySSSiGMR);
  result = swift_dynamicCast();
  if (result)
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logging.search);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v27 = v23;
      *v22 = 136642819;
      Dictionary.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v22 + 4) = v24;
      _os_log_impl(&dword_25D85C000, v20, v21, "QP parse dict date components: %{sensitive}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F8A1050](v23, -1, -1);
      MEMORY[0x25F8A1050](v22, -1, -1);
    }

    DateComponents.init(from:)();
    v25 = type metadata accessor for DateComponents();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v25);
    return outlined assign with take of DateComponents?(v16, a9);
  }

  return result;
}

uint64_t static IntentPerson.make(extractedFields:ecrClient:)()
{
  OUTLINED_FUNCTION_48();
  v0[13] = v1;
  v0[14] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  v0[15] = OUTLINED_FUNCTION_199();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonV6HandleVSgMd, &_s10AppIntents12IntentPersonV6HandleVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for IntentPerson.Name();
  v0[17] = v9;
  OUTLINED_FUNCTION_21(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for IntentPerson.Identifier();
  v0[20] = v13;
  OUTLINED_FUNCTION_21(v13);
  v0[21] = v14;
  v16 = *(v15 + 64);
  v0[22] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for IntentPerson.Handle.Label();
  v0[23] = v17;
  OUTLINED_FUNCTION_21(v17);
  v0[24] = v18;
  v20 = *(v19 + 64);
  v0[25] = OUTLINED_FUNCTION_199();
  v21 = type metadata accessor for IntentPerson.Handle();
  v0[26] = v21;
  OUTLINED_FUNCTION_21(v21);
  v0[27] = v22;
  v24 = *(v23 + 64);
  v0[28] = OUTLINED_FUNCTION_160();
  v0[29] = swift_task_alloc();
  v25 = type metadata accessor for IntentPerson();
  v0[30] = v25;
  OUTLINED_FUNCTION_21(v25);
  v0[31] = v26;
  v28 = *(v27 + 64);
  v0[32] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  v8 = *(v7 + 312);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v5[40] = v0;

  if (v0)
  {
    v11 = v5[38];
    v12 = v5[36];
    v13 = v5[34];
  }

  else
  {
    v5[41] = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0[32];
  OUTLINED_FUNCTION_69_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_127();
  v3 = v0[40];

  return v2();
}

uint64_t static IntentPerson.make(extractedFields:ecrClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_146_9();
  a31 = v36;
  a32 = v37;
  OUTLINED_FUNCTION_230_4();
  a30 = v33;
  v38 = v33[13];
  specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, v38);
  OUTLINED_FUNCTION_33_27();
  v33[33] = v39;
  v33[34] = v40;
  v41 = specialized Dictionary.subscript.getter(0x6D754E656E6F6870, 0xEB00000000726562, v38);
  v43 = v42;
  v33[35] = v41;
  v33[36] = v42;
  specialized Dictionary.subscript.getter(0x6C69616D65, 0xE500000000000000, v38);
  OUTLINED_FUNCTION_166_5();
  v33[37] = v44;
  v33[38] = v45;
  if (!v32 && !v43 && !v34)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logging.search);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v48))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    goto LABEL_9;
  }

  v64 = v33[14];
  outlined init with copy of EagerResolutionService?();
  if (!v33[5])
  {
    outlined destroy of EagerResolutionService?((v33 + 2), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
    if (*(MEMORY[0x277D84F90] + 16))
    {
      v81 = v33[38];
      v82 = v33[36];
      v83 = v33[34];

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, static Logging.search);
      v85 = MEMORY[0x277D84F90];

      v86 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_250_2();
      if (OUTLINED_FUNCTION_259())
      {
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_11_26();
        OUTLINED_FUNCTION_184_7();
        *v43 = 136642819;
        MEMORY[0x25F89F8A0](MEMORY[0x277D84F90], &type metadata for ECRClientPersonResult);
        OUTLINED_FUNCTION_211_5();
        OUTLINED_FUNCTION_169_10();
        *(v43 + 4) = 0;
        OUTLINED_FUNCTION_56_4();
        _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
        OUTLINED_FUNCTION_54_26();
        OUTLINED_FUNCTION_37_0();
      }

      v92 = v85[2];
      if (v92)
      {
        v93 = v33[31];
        a16 = v85;
        OUTLINED_FUNCTION_95_10();
        OUTLINED_FUNCTION_189_7();
        do
        {
          v94 = v33[32];
          OUTLINED_FUNCTION_144_12();

          IntentPerson.init(result:)(&a17, v94);
          OUTLINED_FUNCTION_187_7();
          if (v96)
          {
            OUTLINED_FUNCTION_26_3(v95);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v86 = a16;
          }

          v97 = v33[32];
          v98 = v33[30];
          v86[2] = v94;
          v99 = *(v93 + 80);
          OUTLINED_FUNCTION_33_34();
          v101 = OUTLINED_FUNCTION_185_7(v100);
          v102(v101);
          v35 += 40;
          --v92;
        }

        while (v92);
      }

      goto LABEL_9;
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v103 = v33[38];
    v104 = v33[36];
    v105 = v33[34];
    v106 = type metadata accessor for Logger();
    __swift_project_value_buffer(v106, static Logging.search);

    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();

    a15 = v105;
    if (os_log_type_enabled(v107, v108))
    {
      OUTLINED_FUNCTION_183_8();
      v110 = v33[33];
      v109 = v33[34];
      v111 = OUTLINED_FUNCTION_49_0();
      a17 = swift_slowAlloc();
      *v111 = 136643331;
      v33[7] = v110;
      v33[8] = v109;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      String.init<A>(describing:)();
      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v111 + 4) = v112;
      *(v111 + 12) = 2085;
      v33[9] = a10;
      v33[10] = a11;

      String.init<A>(describing:)();
      v113 = OUTLINED_FUNCTION_214_5();

      *(v111 + 14) = v113;
      *(v111 + 22) = 2085;
      v33[11] = a12;
      v33[12] = a13;

      String.init<A>(describing:)();
      v114 = OUTLINED_FUNCTION_214_5();

      *(v111 + 24) = v114;
      OUTLINED_FUNCTION_205_6(&dword_25D85C000, v115, v116, "ECR not able to ground person, building result with unknown contactId and provided handles, name: %{sensitive}s, phoneNumber:%{sensitive}s, email:%{sensitive}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_33_0();
    }

    if (v33[36])
    {
      v117 = v33[35];
      v118 = v33[29];
      v119 = OUTLINED_FUNCTION_30_31();
      v120(v119);
      OUTLINED_FUNCTION_74_20();
      IntentPerson.Handle.init(phoneNumber:label:)();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_177_7(v121);
      if (v96)
      {
        OUTLINED_FUNCTION_65_22(v122);
        v104 = v157;
      }

      v123 = v33[29];
      v124 = v33[26];
      v125 = OUTLINED_FUNCTION_15_45(v33[27]);
      v126(v125);
    }

    else
    {
      v104 = MEMORY[0x277D84F90];
    }

    if (v33[38])
    {
      v127 = v33[37];
      v128 = v33[28];
      v129 = OUTLINED_FUNCTION_30_31();
      v130(v129);
      IntentPerson.Handle.init(emailAddress:label:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_156_8();
        v104 = v158;
      }

      v131 = *(v104 + 24);
      if (*(v104 + 16) >= v131 >> 1)
      {
        OUTLINED_FUNCTION_65_22(v131);
        v104 = v159;
      }

      v132 = v33[28];
      v133 = v33[26];
      v134 = OUTLINED_FUNCTION_15_45(v33[27]);
      v135(v134);
    }

    v136 = v33[33];
    v137 = v33[34];
    v138 = v33[31];
    v140 = v33[21];
    v139 = v33[22];
    v142 = v33[19];
    v141 = v33[20];
    v143 = v33[18];
    a13 = v33[17];
    a14 = v33[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMd, &_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMR);
    *(OUTLINED_FUNCTION_125_12() + 16) = xmmword_25DBC8180;
    (*(v140 + 104))(v139, *MEMORY[0x277CB9CD8], v141);
    if (v137)
    {
      v144 = v136;
    }

    else
    {
      v144 = 0;
    }

    v145 = 0xE000000000000000;
    if (v137)
    {
      v145 = a15;
    }

    *v142 = v144;
    *(v142 + 8) = v145;
    (*(v143 + 104))(v142, *MEMORY[0x277CB9CF8], a13);
    specialized Collection.first.getter(v104, a14);
    specialized Collection.dropFirst(_:)(1, v104);
    OUTLINED_FUNCTION_179_8();
    if (v142)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v150 = swift_dynamicCastClass();
      if (!v150)
      {
        swift_unknownObjectRelease();
        v150 = MEMORY[0x277D84F90];
      }

      v151 = *(v150 + 16);

      if (__OFSUB__(v142 >> 1, v104))
      {
        __break(1u);
      }

      else if (v151 == (v142 >> 1) - v104)
      {
        v152 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v152)
        {
LABEL_56:
          OUTLINED_FUNCTION_194_8();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
          OUTLINED_FUNCTION_94_12();
          IntentPerson.init(identifier:name:handle:aliases:isMe:image:)();
LABEL_9:
          v54 = v33[32];
          OUTLINED_FUNCTION_69_18();

          OUTLINED_FUNCTION_31_27();
          OUTLINED_FUNCTION_252();

          return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
        }

LABEL_55:
        swift_unknownObjectRelease();
        goto LABEL_56;
      }

      swift_unknownObjectRelease();
    }

    v146 = OUTLINED_FUNCTION_102_12();
    specialized _copyCollectionToContiguousArray<A>(_:)(v146, v147, v148, v149);
    goto LABEL_55;
  }

  v65 = v33[6];
  __swift_project_boxed_opaque_existential_1(v33 + 2, v33[5]);
  v66 = *(v65 + 16);
  OUTLINED_FUNCTION_28_0();
  v160 = v67 + *v67;
  v69 = *(v68 + 4);
  v70 = swift_task_alloc();
  v33[39] = v70;
  *v70 = v33;
  v70[1] = static IntentPerson.make(extractedFields:ecrClient:);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_252();

  return v79(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, v65 + 16, v160, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t static IntentPerson.make(extractedFields:ecrClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_146_9();
  a31 = v35;
  a32 = v36;
  OUTLINED_FUNCTION_230_4();
  a30 = v32;
  __swift_destroy_boxed_opaque_existential_1Tm(v32 + 2);
  v37 = v32[41];
  if (!*(v37 + 16))
  {
    v59 = v32[41];

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v60 = v32[38];
    v61 = v32[36];
    v62 = v32[34];
    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logging.search);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    a14 = v62;
    a15 = v32;
    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_183_8();
      v66 = v32[34];
      v67 = v32[33];
      v68 = OUTLINED_FUNCTION_49_0();
      a17 = swift_slowAlloc();
      *v68 = 136643331;
      v32[7] = v67;
      v32[8] = v66;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      String.init<A>(describing:)();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v68 + 4) = v69;
      *(v68 + 12) = 2085;
      v32[9] = a10;
      v32[10] = a11;

      String.init<A>(describing:)();
      v70 = OUTLINED_FUNCTION_214_5();

      *(v68 + 14) = v70;
      *(v68 + 22) = 2085;
      v32[11] = a12;
      v32[12] = a13;

      String.init<A>(describing:)();
      v71 = OUTLINED_FUNCTION_214_5();

      *(v68 + 24) = v71;
      OUTLINED_FUNCTION_205_6(&dword_25D85C000, v72, v73, "ECR not able to ground person, building result with unknown contactId and provided handles, name: %{sensitive}s, phoneNumber:%{sensitive}s, email:%{sensitive}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_33_0();
    }

    if (v32[36])
    {
      v74 = v32[35];
      v75 = v32[29];
      v76 = OUTLINED_FUNCTION_30_31();
      v77(v76);
      OUTLINED_FUNCTION_74_20();
      IntentPerson.Handle.init(phoneNumber:label:)();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_177_7(v78);
      if (v52)
      {
        OUTLINED_FUNCTION_65_22(v79);
        v61 = v127;
      }

      v80 = v32[29];
      v81 = v32[26];
      v82 = OUTLINED_FUNCTION_15_45(v32[27]);
      v83(v82);
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
    }

    if (v32[38])
    {
      v84 = v32[37];
      v85 = v32[28];
      v86 = OUTLINED_FUNCTION_30_31();
      v87(v86);
      OUTLINED_FUNCTION_88();
      IntentPerson.Handle.init(emailAddress:label:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_156_8();
        v61 = v128;
      }

      v88 = *(v61 + 24);
      if (*(v61 + 16) >= v88 >> 1)
      {
        OUTLINED_FUNCTION_65_22(v88);
        v61 = v129;
      }

      v89 = v32[28];
      v90 = v32[26];
      v91 = OUTLINED_FUNCTION_15_45(v32[27]);
      v92(v91);
    }

    v94 = v32[33];
    v93 = v32[34];
    v95 = v32[31];
    v97 = v32[21];
    v96 = v32[22];
    v98 = v32;
    v100 = v32[19];
    v99 = v32[20];
    v103 = v32 + 17;
    v101 = v32[17];
    v102 = v103[1];
    a13 = v98[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMd, &_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMR);
    *(OUTLINED_FUNCTION_125_12() + 16) = xmmword_25DBC8180;
    (*(v97 + 104))(v96, *MEMORY[0x277CB9CD8], v99);
    if (v93)
    {
      v104 = v94;
    }

    else
    {
      v104 = 0;
    }

    v105 = 0xE000000000000000;
    if (v93)
    {
      v105 = a14;
    }

    *v100 = v104;
    *(v100 + 8) = v105;
    (*(v102 + 104))(v100, *MEMORY[0x277CB9CF8], v101);
    specialized Collection.first.getter(v61, a13);
    specialized Collection.dropFirst(_:)(1, v61);
    OUTLINED_FUNCTION_179_8();
    if (v100)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v110 = swift_dynamicCastClass();
      if (!v110)
      {
        swift_unknownObjectRelease();
        v110 = MEMORY[0x277D84F90];
      }

      v111 = *(v110 + 16);

      v32 = a15;
      if (__OFSUB__(v100 >> 1, v61))
      {
        __break(1u);
      }

      else if (v111 == (v100 >> 1) - v61)
      {
        v112 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v112)
        {
LABEL_41:
          OUTLINED_FUNCTION_194_8();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
          OUTLINED_FUNCTION_94_12();
          IntentPerson.init(identifier:name:handle:aliases:isMe:image:)();
          goto LABEL_42;
        }

LABEL_40:
        swift_unknownObjectRelease();
        goto LABEL_41;
      }

      swift_unknownObjectRelease();
    }

    v106 = OUTLINED_FUNCTION_102_12();
    specialized _copyCollectionToContiguousArray<A>(_:)(v106, v107, v108, v109);
    v32 = a15;
    goto LABEL_40;
  }

  v38 = v32[38];
  v39 = v32[36];
  v40 = v32[34];

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logging.search);
  OUTLINED_FUNCTION_112_2();

  v42 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_250_2();
  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_184_7();
    *v33 = 136642819;
    MEMORY[0x25F89F8A0](v37, &type metadata for ECRClientPersonResult);
    OUTLINED_FUNCTION_211_5();
    OUTLINED_FUNCTION_169_10();
    *(v33 + 4) = v34;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_37_0();
  }

  v48 = *(v37 + 16);
  if (v48)
  {
    v49 = v32[31];
    a16 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_95_10();
    OUTLINED_FUNCTION_190_9();
    do
    {
      v50 = v32[32];
      OUTLINED_FUNCTION_141_7();

      IntentPerson.init(result:)(&a17, v50);
      OUTLINED_FUNCTION_188_9();
      if (v52)
      {
        OUTLINED_FUNCTION_26_3(v51);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v42 = a16;
      }

      v53 = v32[32];
      v54 = v32[30];
      v42[2] = v50;
      v55 = *(v49 + 80);
      OUTLINED_FUNCTION_33_34();
      v57 = OUTLINED_FUNCTION_174_7(v56);
      v58(v57);
      v37 += 40;
      --v48;
    }

    while (v48);
  }

LABEL_42:
  v117 = v32[32];
  OUTLINED_FUNCTION_69_18();

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_252();

  return v120(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t static IntentPerson.make(dataDetectingString:ecrClient:)()
{
  OUTLINED_FUNCTION_48();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_199();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonV6HandleVSgMd, &_s10AppIntents12IntentPersonV6HandleVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  v0[11] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for IntentPerson.Name();
  v0[12] = v10;
  OUTLINED_FUNCTION_21(v10);
  v0[13] = v11;
  v13 = *(v12 + 64);
  v0[14] = OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for IntentPerson.Identifier();
  v0[15] = v14;
  OUTLINED_FUNCTION_21(v14);
  v0[16] = v15;
  v17 = *(v16 + 64);
  v0[17] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for IntentPerson.Handle.Label();
  v0[18] = v18;
  OUTLINED_FUNCTION_21(v18);
  v0[19] = v19;
  v21 = *(v20 + 64);
  v0[20] = OUTLINED_FUNCTION_199();
  v22 = type metadata accessor for IntentPerson.Handle.Value();
  v0[21] = v22;
  OUTLINED_FUNCTION_21(v22);
  v0[22] = v23;
  v25 = *(v24 + 64);
  v0[23] = OUTLINED_FUNCTION_199();
  v26 = type metadata accessor for IntentPerson.Handle();
  v0[24] = v26;
  OUTLINED_FUNCTION_114(v26);
  v28 = *(v27 + 64);
  v0[25] = OUTLINED_FUNCTION_199();
  v29 = type metadata accessor for DataDetectorResults();
  v0[26] = v29;
  OUTLINED_FUNCTION_21(v29);
  v0[27] = v30;
  v32 = *(v31 + 64);
  v0[28] = OUTLINED_FUNCTION_199();
  v33 = type metadata accessor for IntentPerson();
  v0[29] = v33;
  OUTLINED_FUNCTION_21(v33);
  v0[30] = v34;
  v36 = *(v35 + 64);
  v0[31] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  v8 = *(v7 + 256);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v5 + 264) = v0;

  if (!v0)
  {
    *(v5 + 272) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v1 = v0[31];
  OUTLINED_FUNCTION_32_34();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_127();
  v3 = v0[33];

  return v2();
}

uint64_t static IntentPerson.make(dataDetectingString:ecrClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_146_9();
  a31 = v38;
  a32 = v39;
  OUTLINED_FUNCTION_230_4();
  a30 = v32;
  v40 = v32[9];
  outlined init with copy of EagerResolutionService?();
  if (v32[5])
  {
    v41 = v32[6];
    __swift_project_boxed_opaque_existential_1(v32 + 2, v32[5]);
    v42 = *(v41 + 8);
    OUTLINED_FUNCTION_28_0();
    v121 = v43 + *v43;
    v45 = *(v44 + 4);
    v46 = swift_task_alloc();
    v32[32] = v46;
    *v46 = v32;
    v46[1] = static IntentPerson.make(dataDetectingString:ecrClient:);
    v48 = v32[7];
    v47 = v32[8];
    OUTLINED_FUNCTION_252();

    return v55(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, v41 + 8, v121, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
    outlined destroy of EagerResolutionService?((v32 + 2), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
    if (*(MEMORY[0x277D84F90] + 16))
    {
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logging.search);
      v60 = MEMORY[0x277D84F90];

      v61 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_250_2();
      if (OUTLINED_FUNCTION_259())
      {
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_11_26();
        OUTLINED_FUNCTION_184_7();
        *v33 = 136642819;
        MEMORY[0x25F89F8A0](MEMORY[0x277D84F90], &type metadata for ECRClientPersonResult);
        OUTLINED_FUNCTION_211_5();
        OUTLINED_FUNCTION_169_10();
        *(v33 + 4) = v35;
        OUTLINED_FUNCTION_56_4();
        _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
        OUTLINED_FUNCTION_54_26();
        OUTLINED_FUNCTION_37_0();
      }

      v67 = v60[2];
      if (v67)
      {
        v68 = v32[30];
        a16 = v60;
        OUTLINED_FUNCTION_95_10();
        OUTLINED_FUNCTION_189_7();
        do
        {
          v69 = v32[31];
          OUTLINED_FUNCTION_144_12();

          IntentPerson.init(result:)(&a17, v69);
          OUTLINED_FUNCTION_187_7();
          if (v71)
          {
            OUTLINED_FUNCTION_26_3(v70);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v61 = a16;
          }

          v72 = v32[31];
          v73 = v32[29];
          v61[2] = v69;
          v74 = *(v68 + 80);
          OUTLINED_FUNCTION_33_34();
          v76 = OUTLINED_FUNCTION_185_7(v75);
          v77(v76);
          v37 += 40;
          --v67;
        }

        while (v67);
      }
    }

    else
    {
      v78 = v32[28];
      v80 = v32[7];
      v79 = v32[8];

      type metadata accessor for DataDetectorsController();
      OUTLINED_FUNCTION_161();
      v81 = DataDetectorsController.init()();
      OUTLINED_FUNCTION_137_6(v81);
      v83 = *(v82 + 96);
      v84 = OUTLINED_FUNCTION_116_1();
      v85(v84);

      v86 = DataDetectorResults.phoneNumbers.getter();
      v87 = v86[2];
      v88 = v32[30];
      OUTLINED_FUNCTION_172_5();
      if (v89)
      {
        v90 = v32[25];
        v92 = v32[22];
        v91 = v32[23];
        v93 = v32[20];
        v94 = v32[19];
        a11 = v32[21];
        a12 = v32[18];
        v95 = v86[4];
        v96 = v86[5];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMd, &_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMR);
        *(OUTLINED_FUNCTION_139_10() + 16) = xmmword_25DBC8180;
        *v91 = v95;
        v91[1] = v96;
        (*(v92 + 104))(v91, *MEMORY[0x277CB9D88], a11);
        (*(v94 + 104))(v93, *MEMORY[0x277CB9D48], a12);
        OUTLINED_FUNCTION_63_0();
        IntentPerson.Handle.init(_:label:)();
        IntentPerson.init(handle:)();
      }

      else
      {
        v97 = v32[24];
        v98 = v32[16];
        v99 = v32[17];
        v100 = v32[14];
        v101 = v32[15];
        v102 = v32[12];
        v103 = v32[13];
        OUTLINED_FUNCTION_145_7();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMd, &_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMR);
        *(OUTLINED_FUNCTION_139_10() + 16) = xmmword_25DBC8180;
        (*(v98 + 104))(v99, *MEMORY[0x277CB9CD8], v101);
        *v100 = v34;
        v100[1] = v36;
        (*(v103 + 104))(v100, *MEMORY[0x277CB9CF8], a9);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
        type metadata accessor for DisplayRepresentation.Image();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);

        OUTLINED_FUNCTION_171_7();
        IntentPerson.init(identifier:name:handle:aliases:isMe:image:)();
      }

      (*(a15 + 8))(a14, a13);
    }

    v112 = v32[31];
    OUTLINED_FUNCTION_32_34();

    OUTLINED_FUNCTION_31_27();
    OUTLINED_FUNCTION_252();

    return v115(v113, v114, v115, v116, v117, v118, v119, v120, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }
}

uint64_t static IntentPerson.make(dataDetectingString:ecrClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_146_9();
  a31 = v37;
  a32 = v38;
  OUTLINED_FUNCTION_230_4();
  a30 = v32;
  __swift_destroy_boxed_opaque_existential_1Tm(v32 + 2);
  v39 = v32[34];
  if (*(v39 + 16))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logging.search);
    OUTLINED_FUNCTION_112_2();

    v41 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_250_2();
    if (OUTLINED_FUNCTION_259())
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_184_7();
      *v33 = 136642819;
      MEMORY[0x25F89F8A0](v39, &type metadata for ECRClientPersonResult);
      OUTLINED_FUNCTION_211_5();
      OUTLINED_FUNCTION_169_10();
      *(v33 + 4) = v35;
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_37_0();
    }

    v47 = *(v39 + 16);
    if (v47)
    {
      v48 = v32[30];
      a16 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_95_10();
      OUTLINED_FUNCTION_190_9();
      do
      {
        v49 = v32[31];
        OUTLINED_FUNCTION_141_7();

        IntentPerson.init(result:)(&a17, v49);
        OUTLINED_FUNCTION_188_9();
        if (v51)
        {
          OUTLINED_FUNCTION_26_3(v50);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v41 = a16;
        }

        v52 = v32[31];
        v53 = v32[29];
        v41[2] = v49;
        v54 = *(v48 + 80);
        OUTLINED_FUNCTION_33_34();
        v56 = OUTLINED_FUNCTION_174_7(v55);
        v57(v56);
        v39 += 40;
        --v47;
      }

      while (v47);
    }
  }

  else
  {
    v58 = v32[28];
    v60 = v32[7];
    v59 = v32[8];
    v61 = v32[34];

    type metadata accessor for DataDetectorsController();
    OUTLINED_FUNCTION_161();
    v62 = DataDetectorsController.init()();
    OUTLINED_FUNCTION_137_6(v62);
    (*(v63 + 96))(v60, v59);

    v64 = DataDetectorResults.phoneNumbers.getter();
    v65 = v64[2];
    v66 = v32[30];
    OUTLINED_FUNCTION_172_5();
    if (v67)
    {
      v68 = v32[25];
      v70 = v32[22];
      v69 = v32[23];
      v71 = v32[20];
      v72 = v32[19];
      a11 = v32[21];
      a12 = v32[18];
      v73 = v64[4];
      v74 = v64[5];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMd, &_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMR);
      *(OUTLINED_FUNCTION_143_11() + 16) = xmmword_25DBC8180;
      *v69 = v73;
      v69[1] = v74;
      (*(v70 + 104))(v69, *MEMORY[0x277CB9D88], a11);
      (*(v72 + 104))(v71, *MEMORY[0x277CB9D48], a12);
      OUTLINED_FUNCTION_63_0();
      IntentPerson.Handle.init(_:label:)();
      IntentPerson.init(handle:)();
    }

    else
    {
      v75 = v32[24];
      v76 = v32[16];
      v77 = v32[17];
      v78 = v32[14];
      v79 = v32[15];
      v80 = v32[12];
      v81 = v32[13];
      OUTLINED_FUNCTION_145_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMd, &_ss23_ContiguousArrayStorageCy10AppIntents12IntentPersonVGMR);
      *(OUTLINED_FUNCTION_143_11() + 16) = xmmword_25DBC8180;
      (*(v76 + 104))(v77, *MEMORY[0x277CB9CD8], v79);
      *v78 = v34;
      v78[1] = v36;
      (*(v81 + 104))(v78, *MEMORY[0x277CB9CF8], a9);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
      type metadata accessor for DisplayRepresentation.Image();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);

      OUTLINED_FUNCTION_171_7();
      IntentPerson.init(identifier:name:handle:aliases:isMe:image:)();
    }

    (*(a15 + 8))(a14, a13);
  }

  v90 = v32[31];
  OUTLINED_FUNCTION_32_34();

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_252();

  return v93(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t protocol witness for RequestedPropertyControllerProtocol.processRequestedProperties(for:using:) in conformance RequestedPropertyController(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnswerResolvable.extractInfo(query:results:assistantLocale:) in conformance AnswerResolver;

  return RequestedPropertyController.processRequestedProperties(for:using:)(a1, a2);
}

uint64_t protocol witness for RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:) in conformance RequestedPropertyController(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return specialized RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:)(a1, a2);
}

uint64_t specialized RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for HydrationContext(0);
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v9 = type metadata accessor for SearchPropertyResponse(0);
  v3[30] = v9;
  v10 = *(v9 - 8);
  v3[31] = v10;
  v11 = *(v10 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v12 = type metadata accessor for SearchPropertyRequest(0);
  v3[34] = v12;
  v13 = *(v12 - 8);
  v3[35] = v13;
  v14 = *(v13 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetSgMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetSgMR) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:), 0, 0);
}

uint64_t specialized RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v16 = *(v14 + 176);
  v17 = *(v14 + 184);
  type metadata accessor for RequestedPropertiesMapper();
  v18 = OUTLINED_FUNCTION_94();
  v20 = static RequestedPropertiesMapper.groupExpandedProperties(_:extractedProperties:)(v18, v19);
  *(v14 + 328) = v20;
  *(v14 + 386) = *(v20 + 32);
  OUTLINED_FUNCTION_119_11(v20);
  *(v14 + 336) = MEMORY[0x277D84F90];
  if ((v22 & v21) != 0)
  {
    v23 = 0;
LABEL_6:
    v28 = *(v14 + 304);
    v27 = *(v14 + 312);
    v29 = *(v14 + 280);
    OUTLINED_FUNCTION_29_25();
    v30 = *(v20 + 48);
    v32 = *(v31 + 72);
    OUTLINED_FUNCTION_3_70();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    OUTLINED_FUNCTION_210_4(*(v20 + 56));
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
    v34 = *(v33 + 48);
    OUTLINED_FUNCTION_7_55();
    outlined init with take of SearchPropertyResponse();
    outlined init with take of Any((v14 + 16), (v27 + v34));
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
    v16 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_127_15();
    while (v16 != v24)
    {
      v23 = v24 + 1;
      if (*(v25 + 8 * v24++))
      {
        goto LABEL_6;
      }
    }

    v69 = *(v14 + 312);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
    OUTLINED_FUNCTION_36_27(v70);
    v15 = 0;
  }

  *(v14 + 344) = v15;
  *(v14 + 352) = v16;
  v38 = *(v14 + 312);
  v39 = *(v14 + 320);
  outlined init with take of (Int, SearchCATEntity)();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
  OUTLINED_FUNCTION_31_28();
  if (v41)
  {
    OUTLINED_FUNCTION_48_18();
    v79 = v43;
    v80 = v42;

    OUTLINED_FUNCTION_62();
    v44 = *(v14 + 336);
    OUTLINED_FUNCTION_83_0();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, v79, v80, a12, a13, a14);
  }

  else
  {
    v54 = *(v14 + 320);
    v55 = *(v14 + 296);
    v56 = *(v14 + 272);
    v57 = *(v14 + 216);
    v58 = *(v14 + 200);
    v59 = *(v40 + 48);
    OUTLINED_FUNCTION_7_55();
    OUTLINED_FUNCTION_34_5();
    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_77_17();
    OUTLINED_FUNCTION_157_6();
    *(v14 + 385) = *(v14 + 384);
    OUTLINED_FUNCTION_124_15();
    v60 = OUTLINED_FUNCTION_159_2();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, v61, v58);
    v63 = *(v14 + 216);
    v64 = *(v14 + 224);
    if (EnumTagSinglePayload)
    {
      outlined destroy of EagerResolutionService?(*(v14 + 216), &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
      type metadata accessor for IntentApplication();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    }

    else
    {
      v71 = *(v14 + 200);
      v72 = *(v14 + 208);
      OUTLINED_FUNCTION_11_57();
      outlined destroy of EagerResolutionService?(v63, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
      OUTLINED_FUNCTION_130_13();
      OUTLINED_FUNCTION_14_36();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v14 + 368) = v73;
    *v73 = v74;
    v73[1] = specialized RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:);
    v76 = *(v14 + 224);
    v75 = *(v14 + 232);
    v77 = *(v14 + 192);
    OUTLINED_FUNCTION_50_19();
    OUTLINED_FUNCTION_83_0();

    return RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:)();
  }
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v18 = *(v14 + 232);
  v17 = *(v14 + 240);
  v19 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v19, v20, v21) == 1)
  {
    outlined destroy of EagerResolutionService?(v18, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
    if (one-time initialization token for answerSynthesis == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = *(v14 + 336);
    v39 = *(v14 + 256);
    v38 = *(v14 + 264);
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_88();
    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_54_0();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v14 + 336);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v110 = OUTLINED_FUNCTION_26_30();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110, v111, v112, v113);
      v41 = v114;
    }

    OUTLINED_FUNCTION_138_5();
    if (v42)
    {
      OUTLINED_FUNCTION_117();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v115, v116, v117, v118);
      v41 = v119;
    }

    v43 = *(v14 + 296);
    v45 = *(v14 + 256);
    v44 = *(v14 + 264);
    v46 = *(v14 + 248);
    OUTLINED_FUNCTION_4_65();
    outlined destroy of SearchPropertyResponse(v47, v48);
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 48));
    *(v41 + 16) = v37;
    v49 = *(v46 + 80);
    OUTLINED_FUNCTION_33_34();
    v50 = *(v46 + 72);
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_5_57();
    outlined destroy of SearchPropertyResponse(v43, v51);
    v52 = *(v14 + 344);
    v15 = *(v14 + 352);
    *(v14 + 336) = v41;
    if (v52)
    {
      goto LABEL_10;
    }

LABEL_13:
    while (1)
    {
      v57 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v57 >= (((1 << *(v14 + 386)) + 63) >> 6))
      {
        v100 = *(v14 + 312);
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
        OUTLINED_FUNCTION_36_27(v101);
        v16 = 0;
        goto LABEL_18;
      }

      v53 = *(v14 + 328);
      ++v15;
      if (*(v53 + 8 * v57 + 64))
      {
        v15 = v57;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_7_1();
LABEL_3:
  v22 = *(v14 + 288);
  v23 = *(v14 + 296);
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_3_70();
  OUTLINED_FUNCTION_107();
  _s10OmniSearch0B15PropertyRequestVWOcTm_0();
  outlined init with copy of Any(v14 + 48, v14 + 80);
  v25 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_117_14();
  v27 = os_log_type_enabled(v25, v26);
  v29 = *(v14 + 288);
  v28 = *(v14 + 296);
  if (v27)
  {
    v30 = *(v14 + 272);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_161_6();
    OUTLINED_FUNCTION_149_10();
    OUTLINED_FUNCTION_199_6(4.8151e-34);
    v31 = *(v14 + 160);
    v32 = *(v14 + 168);
    OUTLINED_FUNCTION_9_52();
    outlined destroy of SearchPropertyResponse(v29, v33);
    OUTLINED_FUNCTION_241_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    OUTLINED_FUNCTION_168_7();
    String.init<A>(describing:)();
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 80));
    OUTLINED_FUNCTION_158();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v15 + 14) = v34;
    OUTLINED_FUNCTION_86_0(&dword_25D85C000, v35, v36, "Failed to produce response for requested property: '%s', answer: %{sensitive}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();

    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 48));
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 80));
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 48));
    OUTLINED_FUNCTION_9_52();
    outlined destroy of SearchPropertyResponse(v29, v54);
  }

  v55 = OUTLINED_FUNCTION_94();
  outlined destroy of SearchPropertyResponse(v55, v56);
  v15 = *(v14 + 352);
  if (!*(v14 + 344))
  {
    goto LABEL_13;
  }

LABEL_10:
  v53 = *(v14 + 328);
LABEL_17:
  v58 = *(v14 + 304);
  v59 = *(v14 + 312);
  v60 = *(v14 + 280);
  OUTLINED_FUNCTION_29_25();
  v61 = *(v53 + 48);
  v63 = *(v62 + 72);
  OUTLINED_FUNCTION_3_70();
  _s10OmniSearch0B15PropertyRequestVWOcTm_0();
  OUTLINED_FUNCTION_210_4(*(v53 + 56));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
  v65 = *(v64 + 48);
  OUTLINED_FUNCTION_7_55();
  OUTLINED_FUNCTION_94();
  outlined init with take of SearchPropertyResponse();
  outlined init with take of Any((v14 + 16), (v59 + v65));
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v64);
LABEL_18:
  *(v14 + 344) = v16;
  *(v14 + 352) = v15;
  v69 = *(v14 + 312);
  v70 = *(v14 + 320);
  outlined init with take of (Int, SearchCATEntity)();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
  OUTLINED_FUNCTION_31_28();
  if (v72)
  {
    OUTLINED_FUNCTION_48_18();
    v120 = v74;
    v121 = v73;

    OUTLINED_FUNCTION_62();
    v75 = *(v14 + 336);
    OUTLINED_FUNCTION_83_0();

    return v78(v76, v77, v78, v79, v80, v81, v82, v83, v120, v121, a11, a12, a13, a14);
  }

  else
  {
    v85 = *(v14 + 320);
    v86 = *(v14 + 296);
    v87 = *(v14 + 272);
    v88 = *(v14 + 216);
    v89 = *(v14 + 200);
    v90 = *(v71 + 48);
    OUTLINED_FUNCTION_7_55();
    OUTLINED_FUNCTION_34_5();
    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_77_17();
    OUTLINED_FUNCTION_157_6();
    *(v14 + 385) = *(v14 + 384);
    OUTLINED_FUNCTION_124_15();
    v91 = OUTLINED_FUNCTION_159_2();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, v92, v89);
    v94 = *(v14 + 216);
    v95 = *(v14 + 224);
    if (EnumTagSinglePayload)
    {
      outlined destroy of EagerResolutionService?(*(v14 + 216), &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
      type metadata accessor for IntentApplication();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
    }

    else
    {
      v102 = *(v14 + 200);
      v103 = *(v14 + 208);
      OUTLINED_FUNCTION_11_57();
      outlined destroy of EagerResolutionService?(v94, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
      OUTLINED_FUNCTION_130_13();
      OUTLINED_FUNCTION_14_36();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v14 + 368) = v104;
    *v104 = v105;
    v104[1] = specialized RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:);
    v107 = *(v14 + 224);
    v106 = *(v14 + 232);
    v108 = *(v14 + 192);
    OUTLINED_FUNCTION_50_19();
    OUTLINED_FUNCTION_83_0();

    return RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:)();
  }
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_48_18();
  v29 = v17;
  v30 = v16;

  __swift_destroy_boxed_opaque_existential_1Tm((v14 + 48));
  OUTLINED_FUNCTION_5_57();
  outlined destroy of SearchPropertyResponse(v15, v18);

  OUTLINED_FUNCTION_127();
  v19 = *(v14 + 376);
  OUTLINED_FUNCTION_83_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t specialized RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:)()
{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = v2[46];
  *v4 = *v1;
  v3[47] = v0;

  v6 = v2[28];
  if (v0)
  {
    v7 = v3[45];
    v8 = v3[42];
    outlined destroy of EagerResolutionService?(v6, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  }

  else
  {
    v9 = v3[45];
    outlined destroy of EagerResolutionService?(v6, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:)()
{
  OUTLINED_FUNCTION_48();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[22] = v5;
  v6 = type metadata accessor for HydrationContext(0);
  v1[27] = v6;
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  v1[28] = OUTLINED_FUNCTION_199();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[29] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[30] = OUTLINED_FUNCTION_199();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[31] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for SearchPropertyResponse(0);
  v1[32] = v18;
  OUTLINED_FUNCTION_21(v18);
  v1[33] = v19;
  v21 = *(v20 + 64);
  v1[34] = OUTLINED_FUNCTION_160();
  v1[35] = swift_task_alloc();
  v22 = type metadata accessor for SearchPropertyRequest(0);
  v1[36] = v22;
  OUTLINED_FUNCTION_21(v22);
  v1[37] = v23;
  v25 = *(v24 + 64);
  v1[38] = OUTLINED_FUNCTION_160();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetSgMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetSgMR);
  OUTLINED_FUNCTION_114(v26);
  v28 = *(v27 + 64);
  v1[41] = OUTLINED_FUNCTION_160();
  v1[42] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = v2[48];
  *v4 = *v1;
  v3[49] = v0;

  v6 = v2[30];
  if (v0)
  {
    v7 = v3[47];
    v8 = v3[44];
    outlined destroy of EagerResolutionService?(v6, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  }

  else
  {
    v9 = v3[47];
    outlined destroy of EagerResolutionService?(v6, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v16 = *(v14 + 176);
  v17 = *(v14 + 184);
  type metadata accessor for RequestedPropertiesMapper();
  v18 = OUTLINED_FUNCTION_94();
  v20 = static RequestedPropertiesMapper.groupExpandedProperties(_:extractedProperties:)(v18, v19);
  *(v14 + 344) = v20;
  *(v14 + 402) = *(v20 + 32);
  OUTLINED_FUNCTION_119_11(v20);
  *(v14 + 352) = MEMORY[0x277D84F90];
  if ((v22 & v21) != 0)
  {
    v23 = 0;
LABEL_6:
    v28 = *(v14 + 320);
    v27 = *(v14 + 328);
    v29 = *(v14 + 296);
    OUTLINED_FUNCTION_29_25();
    v30 = *(v20 + 48);
    v32 = *(v31 + 72);
    OUTLINED_FUNCTION_3_70();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    OUTLINED_FUNCTION_210_4(*(v20 + 56));
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
    v34 = *(v33 + 48);
    OUTLINED_FUNCTION_7_55();
    outlined init with take of SearchPropertyResponse();
    outlined init with take of Any((v14 + 16), (v27 + v34));
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
    v16 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_127_15();
    while (v16 != v24)
    {
      v23 = v24 + 1;
      if (*(v25 + 8 * v24++))
      {
        goto LABEL_6;
      }
    }

    v69 = *(v14 + 328);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
    OUTLINED_FUNCTION_36_27(v70);
    v15 = 0;
  }

  *(v14 + 360) = v15;
  *(v14 + 368) = v16;
  v38 = *(v14 + 328);
  v39 = *(v14 + 336);
  outlined init with take of (Int, SearchCATEntity)();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
  OUTLINED_FUNCTION_31_28();
  if (v41)
  {
    OUTLINED_FUNCTION_46_26();
    v95 = v43;
    v97 = v42;

    OUTLINED_FUNCTION_62();
    v44 = *(v14 + 352);
    OUTLINED_FUNCTION_83_0();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, v95, v97, a12, a13, a14);
  }

  else
  {
    v54 = *(v14 + 336);
    v55 = *(v14 + 312);
    v56 = *(v14 + 288);
    v57 = *(v14 + 232);
    v58 = *(v14 + 216);
    v59 = *(v40 + 48);
    OUTLINED_FUNCTION_7_55();
    OUTLINED_FUNCTION_34_5();
    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_77_17();
    OUTLINED_FUNCTION_158_7();
    *(v14 + 401) = *(v14 + 400);
    OUTLINED_FUNCTION_124_15();
    v60 = OUTLINED_FUNCTION_159_2();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, v61, v58);
    v63 = *(v14 + 232);
    v64 = *(v14 + 240);
    if (EnumTagSinglePayload)
    {
      outlined destroy of EagerResolutionService?(*(v14 + 232), &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
      type metadata accessor for IntentApplication();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    }

    else
    {
      v71 = *(v14 + 216);
      v72 = *(v14 + 224);
      OUTLINED_FUNCTION_11_57();
      outlined destroy of EagerResolutionService?(v63, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
      OUTLINED_FUNCTION_130_13();
      OUTLINED_FUNCTION_14_36();
    }

    v73 = *(v14 + 200);
    v74 = *(v73 + 24);
    v96 = v73 + 24;
    OUTLINED_FUNCTION_28_0();
    v98 = v75 + *v75;
    v77 = *(v76 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v14 + 384) = v78;
    *v78 = v79;
    v78[1] = RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:);
    v81 = *(v14 + 240);
    v80 = *(v14 + 248);
    v82 = *(v14 + 200);
    v83 = *(v14 + 208);
    v84 = *(v14 + 192);
    OUTLINED_FUNCTION_50_19();
    OUTLINED_FUNCTION_83_0();

    return v93(v85, v86, v87, v88, v89, v90, v91, v92, a9, v96, v98, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v18 = *(v14 + 248);
  v17 = *(v14 + 256);
  v19 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v19, v20, v21) == 1)
  {
    outlined destroy of EagerResolutionService?(v18, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
    if (one-time initialization token for answerSynthesis == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = *(v14 + 352);
    v39 = *(v14 + 272);
    v38 = *(v14 + 280);
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_88();
    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_54_0();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v14 + 352);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v126 = OUTLINED_FUNCTION_26_30();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v126, v127, v128, v129);
      v41 = v130;
    }

    OUTLINED_FUNCTION_138_5();
    if (v42)
    {
      OUTLINED_FUNCTION_117();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v131, v132, v133, v134);
      v41 = v135;
    }

    v43 = *(v14 + 312);
    v45 = *(v14 + 272);
    v44 = *(v14 + 280);
    v46 = *(v14 + 264);
    OUTLINED_FUNCTION_4_65();
    outlined destroy of SearchPropertyResponse(v47, v48);
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 48));
    *(v41 + 16) = v37;
    v49 = *(v46 + 80);
    OUTLINED_FUNCTION_33_34();
    v50 = *(v46 + 72);
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_5_57();
    outlined destroy of SearchPropertyResponse(v43, v51);
    v52 = *(v14 + 360);
    v15 = *(v14 + 368);
    *(v14 + 352) = v41;
    if (v52)
    {
      goto LABEL_10;
    }

LABEL_13:
    while (1)
    {
      v57 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v57 >= (((1 << *(v14 + 402)) + 63) >> 6))
      {
        v100 = *(v14 + 328);
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
        OUTLINED_FUNCTION_36_27(v101);
        v16 = 0;
        goto LABEL_18;
      }

      v53 = *(v14 + 344);
      ++v15;
      if (*(v53 + 8 * v57 + 64))
      {
        v15 = v57;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_7_1();
LABEL_3:
  v22 = *(v14 + 304);
  v23 = *(v14 + 312);
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_3_70();
  OUTLINED_FUNCTION_107();
  _s10OmniSearch0B15PropertyRequestVWOcTm_0();
  outlined init with copy of Any(v14 + 48, v14 + 80);
  v25 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_117_14();
  v27 = os_log_type_enabled(v25, v26);
  v29 = *(v14 + 304);
  v28 = *(v14 + 312);
  if (v27)
  {
    v30 = *(v14 + 288);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_161_6();
    OUTLINED_FUNCTION_149_10();
    OUTLINED_FUNCTION_199_6(4.8151e-34);
    v31 = *(v14 + 160);
    v32 = *(v14 + 168);
    OUTLINED_FUNCTION_9_52();
    outlined destroy of SearchPropertyResponse(v29, v33);
    OUTLINED_FUNCTION_241_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    OUTLINED_FUNCTION_168_7();
    String.init<A>(describing:)();
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 80));
    OUTLINED_FUNCTION_158();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v15 + 14) = v34;
    OUTLINED_FUNCTION_86_0(&dword_25D85C000, v35, v36, "Failed to produce response for requested property: '%s', answer: %{sensitive}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();

    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 48));
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 80));
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 48));
    OUTLINED_FUNCTION_9_52();
    outlined destroy of SearchPropertyResponse(v29, v54);
  }

  v55 = OUTLINED_FUNCTION_94();
  outlined destroy of SearchPropertyResponse(v55, v56);
  v15 = *(v14 + 368);
  if (!*(v14 + 360))
  {
    goto LABEL_13;
  }

LABEL_10:
  v53 = *(v14 + 344);
LABEL_17:
  v58 = *(v14 + 320);
  v59 = *(v14 + 328);
  v60 = *(v14 + 296);
  OUTLINED_FUNCTION_29_25();
  v61 = *(v53 + 48);
  v63 = *(v62 + 72);
  OUTLINED_FUNCTION_3_70();
  _s10OmniSearch0B15PropertyRequestVWOcTm_0();
  OUTLINED_FUNCTION_210_4(*(v53 + 56));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
  v65 = *(v64 + 48);
  OUTLINED_FUNCTION_7_55();
  OUTLINED_FUNCTION_94();
  outlined init with take of SearchPropertyResponse();
  outlined init with take of Any((v14 + 16), (v59 + v65));
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v64);
LABEL_18:
  *(v14 + 360) = v16;
  *(v14 + 368) = v15;
  v69 = *(v14 + 328);
  v70 = *(v14 + 336);
  outlined init with take of (Int, SearchCATEntity)();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMd, &_s10OmniSearch0B15PropertyRequestV3key_yp5valuetMR);
  OUTLINED_FUNCTION_31_28();
  if (v72)
  {
    OUTLINED_FUNCTION_46_26();
    v136 = v74;
    v138 = v73;

    OUTLINED_FUNCTION_62();
    v75 = *(v14 + 352);
    OUTLINED_FUNCTION_83_0();

    return v78(v76, v77, v78, v79, v80, v81, v82, v83, v136, v138, a11, a12, a13, a14);
  }

  else
  {
    v85 = *(v14 + 336);
    v86 = *(v14 + 312);
    v87 = *(v14 + 288);
    v88 = *(v14 + 232);
    v89 = *(v14 + 216);
    v90 = *(v71 + 48);
    OUTLINED_FUNCTION_7_55();
    OUTLINED_FUNCTION_34_5();
    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_77_17();
    OUTLINED_FUNCTION_158_7();
    *(v14 + 401) = *(v14 + 400);
    OUTLINED_FUNCTION_124_15();
    v91 = OUTLINED_FUNCTION_159_2();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, v92, v89);
    v94 = *(v14 + 232);
    v95 = *(v14 + 240);
    if (EnumTagSinglePayload)
    {
      outlined destroy of EagerResolutionService?(*(v14 + 232), &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
      type metadata accessor for IntentApplication();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
    }

    else
    {
      v102 = *(v14 + 216);
      v103 = *(v14 + 224);
      OUTLINED_FUNCTION_11_57();
      outlined destroy of EagerResolutionService?(v94, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
      OUTLINED_FUNCTION_130_13();
      OUTLINED_FUNCTION_14_36();
    }

    v104 = *(v14 + 200);
    v105 = *(v104 + 24);
    v137 = v104 + 24;
    OUTLINED_FUNCTION_28_0();
    v139 = v106 + *v106;
    v108 = *(v107 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v14 + 384) = v109;
    *v109 = v110;
    v109[1] = RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:);
    v112 = *(v14 + 240);
    v111 = *(v14 + 248);
    v113 = *(v14 + 200);
    v114 = *(v14 + 208);
    v115 = *(v14 + 192);
    OUTLINED_FUNCTION_50_19();
    OUTLINED_FUNCTION_83_0();

    return v124(v116, v117, v118, v119, v120, v121, v122, v123, v137, v139, a11, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_46_26();
  v29 = v17;
  v30 = v16;

  __swift_destroy_boxed_opaque_existential_1Tm((v14 + 48));
  OUTLINED_FUNCTION_5_57();
  outlined destroy of SearchPropertyResponse(v15, v18);

  OUTLINED_FUNCTION_127();
  v19 = *(v14 + 392);
  OUTLINED_FUNCTION_83_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t protocol witness for RequestedPropertyControllerProtocol.createSearchPropertyResponse(name:type:value:app:) in conformance RequestedPropertyController()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:)();
}

uint64_t IntentPerson.init(result:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v91[0] = v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonV6HandleVSgMd, &_s10AppIntents12IntentPersonV6HandleVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v91 - v12;
  v14 = type metadata accessor for IntentPerson.Name();
  v15 = OUTLINED_FUNCTION_14(v14);
  v97 = v16;
  v98 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for IntentPerson.Handle.Label();
  v21 = OUTLINED_FUNCTION_14(v111);
  v109 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v110 = type metadata accessor for IntentPerson.Handle();
  v25 = OUTLINED_FUNCTION_14(v110);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  v92 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = v91 - v32;
  v34 = type metadata accessor for IntentPerson.Identifier();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  v103 = v38;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = (v91 - v42);
  v44 = *a1;
  v45 = a1[1];
  v95 = v45;
  v96 = v44;
  v46 = a1[3];
  v94 = a1[2];
  v47 = a1[4];
  v48 = v45[2];
  v101 = v20;
  v102 = v13;
  v99 = v40;
  v100 = v49;
  v105 = v91 - v42;
  if (v48)
  {
    v50 = v45[5];
    *v43 = v45[4];
    v43[1] = v50;
    v51 = *MEMORY[0x277CB9CD0];
    (*(v40 + 104))(v41);
  }

  else
  {
    v52 = *MEMORY[0x277CB9CD8];
    (*(v40 + 104))(v41);
  }

  v53 = *(v46 + 16);
  v54 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277CB9D48];
  v104 = v47;
  v93 = v46;
  if (v53)
  {
    v112 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_201_8();
    v54 = v112;
    v108 = *v55;
    v56 = *(v109 + 104);
    v106 = (v27 + 32);
    v107 = v56;
    v57 = v46 + 40;
    do
    {
      v58 = OUTLINED_FUNCTION_182_10();
      v107(v58);

      IntentPerson.Handle.init(phoneNumber:label:)();
      v112 = v54;
      v60 = *(v54 + 16);
      v59 = *(v54 + 24);
      if (v60 >= v59 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v59);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v54 = v112;
      }

      *(v54 + 16) = v60 + 1;
      (*(v27 + 32))(v54 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v60, v33, v110);
      v57 += 16;
      --v53;
    }

    while (v53);
    v47 = v104;
    v55 = MEMORY[0x277CB9D48];
  }

  v61 = *(v47 + 16);
  v62 = MEMORY[0x277D84F90];
  v63 = v92;
  if (v61)
  {
    v112 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_201_8();
    v62 = v112;
    v108 = *v55;
    v64 = v47 + 40;
    v106 = *(v109 + 104);
    v107 = (v27 + 32);
    v109 += 104;
    do
    {
      v65 = OUTLINED_FUNCTION_182_10();
      v106(v65);

      IntentPerson.Handle.init(emailAddress:label:)();
      v112 = v62;
      v66 = v63;
      v68 = *(v62 + 16);
      v67 = *(v62 + 24);
      if (v68 >= v67 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v67);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v62 = v112;
      }

      *(v62 + 16) = v68 + 1;
      (*(v27 + 32))(v62 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v68, v66, v110);
      v64 += 16;
      --v61;
      v63 = v66;
    }

    while (v61);
  }

  v112 = v54;
  specialized Array.append<A>(contentsOf:)(v62);
  v69 = v112;
  v71 = v99;
  v70 = v100;
  (*(v99 + 16))(v103, v105, v100);
  if (v94[2])
  {
    v73 = v94[4];
    v72 = v94[5];
  }

  else
  {
    v73 = 0;
    v72 = 0xE000000000000000;
  }

  v75 = v101;
  v74 = v102;

  *v75 = v73;
  v75[1] = v72;
  (*(v97 + 104))(v75, *MEMORY[0x277CB9CF8], v98);
  specialized Collection.first.getter(v69, v74);
  specialized Collection.dropFirst(_:)(1, v69);
  v77 = v76;
  v79 = v78;
  v81 = v80;
  if ((v80 & 1) == 0)
  {
    goto LABEL_19;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v84 = swift_dynamicCastClass();
  if (!v84)
  {
    swift_unknownObjectRelease();
    v84 = MEMORY[0x277D84F90];
  }

  v85 = *(v84 + 16);

  if (__OFSUB__(v81 >> 1, v79))
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v85 != (v81 >> 1) - v79)
  {
LABEL_28:
    swift_unknownObjectRelease();
LABEL_19:
    v82 = OUTLINED_FUNCTION_94();
    specialized _copyCollectionToContiguousArray<A>(_:)(v82, v83, v79, v81);
LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_112_2();
  swift_unknownObjectRelease();
  if (!v77)
  {
    goto LABEL_25;
  }

LABEL_26:
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  IntentPerson.init(identifier:name:handle:aliases:isMe:image:)();
  return (*(v71 + 8))(v105, v70);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_10OmniSearch0D6ResultVt_Tg5()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_56_18(v1, v2);
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_176_8(v5);

  return v8(v7);
}

uint64_t dispatch thunk of RequestedPropertyControllerProtocol.processRequestedProperties(for:using:)()
{
  OUTLINED_FUNCTION_75();
  v5 = *(OUTLINED_FUNCTION_154_5(v1, v2, v3, v4) + 8);
  OUTLINED_FUNCTION_28_0();
  v13 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_46(v9);

  return v11(v10);
}

uint64_t dispatch thunk of RequestedPropertyControllerProtocol.createResponses(requestedProperties:extractedProperties:)()
{
  OUTLINED_FUNCTION_75();
  v5 = *(OUTLINED_FUNCTION_154_5(v1, v2, v3, v4) + 16);
  OUTLINED_FUNCTION_28_0();
  v13 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_46(v9);

  return v11(v10);
}

uint64_t dispatch thunk of RequestedPropertyControllerProtocol.createSearchPropertyResponse(name:type:value:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v16 = *(v15 + 24);
  v33 = v15 + 24;
  OUTLINED_FUNCTION_28_0();
  v34 = v17 + *v17;
  v19 = *(v18 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v14 + 16) = v20;
  *v20 = v21;
  v20[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_83_0();

  return v30(v22, v23, v24, v25, v26, v27, v28, v29, a9, v33, v34, a12, a13, a14);
}

uint64_t getEnumTagSinglePayload for RequestedPropertyController(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for RequestedPropertyController(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type PommesContext and conformance PommesContext(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of DateComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in RequestedPropertyController.convertToDateComponents(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo18NSAttributedStringCSgs5Error_pGMd, &_sScCySo18NSAttributedStringCSgs5Error_pGMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 80);

  return closure #1 in closure #1 in RequestedPropertyController.convertToDateComponents(_:)(a1);
}

uint64_t outlined init with take of SearchPropertyResponse()
{
  OUTLINED_FUNCTION_134();
  v2 = v1(0);
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t partial apply for closure #1 in closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)()
{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  v2 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_218_6();

  return closure #1 in closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)(v9, v10, v11, v12, v13, v14);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch0D6ResultVSg_Tg5TA()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(v3, v5);
}

uint64_t outlined destroy of SearchPropertyResponse(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch0B15PropertyRequestVWOcTm_0()
{
  OUTLINED_FUNCTION_134();
  v2 = v1(0);
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

void OUTLINED_FUNCTION_0_101()
{
  v4 = v0[118];
  v5 = v0[117];
  v6 = v0[116];
  v7 = v0[115];
  v8 = v0[114];
  v9 = v0[113];
  v10 = v0[110];
  v11 = v0[109];
  v12 = v0[108];
  v13 = v0[107];
  v14 = v0[106];
  v15 = v0[105];
  v16 = v0[104];
  v17 = v0[103];
  v18 = v0[100];
  v2 = v0[96];
  *(v1 - 112) = v0[99];
  *(v1 - 104) = v2;
  v3 = v0[94];
  *(v1 - 96) = v0[95];
  *(v1 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_11_57()
{

  return _s10OmniSearch0B15PropertyRequestVWOcTm_0();
}

uint64_t OUTLINED_FUNCTION_14_36()
{

  return outlined destroy of SearchPropertyResponse(v0, type metadata accessor for HydrationContext);
}

unint64_t OUTLINED_FUNCTION_15_45@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 16) = v2;
  v4 = *(a1 + 32);
  return v3 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v1;
}

uint64_t OUTLINED_FUNCTION_16_45(uint64_t a1)
{
  *(a1 + 8) = closure #1 in closure #1 in RequestedPropertyController.processRequestedProperties(for:using:);
  v2 = v1[46];
  v3 = v1[43];
  result = v1[34];
  v5 = v1[28];
  return result;
}

uint64_t OUTLINED_FUNCTION_30_31()
{
  v2 = v0[23];
  v3 = *v1;
  v4 = *(v0[24] + 104);
  return v0[25];
}

void OUTLINED_FUNCTION_32_34()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
}

uint64_t OUTLINED_FUNCTION_34_34()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_31()
{
  result = v0[46];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[41];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];
  return result;
}

uint64_t OUTLINED_FUNCTION_36_27(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_40_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_46_26()
{
  v2 = v0[42];
  result = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[34];
  v7 = v0[35];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[28];
  v12 = v0[29];
  return result;
}

uint64_t OUTLINED_FUNCTION_48_18()
{
  v2 = v0[40];
  result = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[26];
  v12 = v0[27];
  return result;
}

uint64_t OUTLINED_FUNCTION_51_20(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_55_17()
{
  v1 = v0[35];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
}

uint64_t OUTLINED_FUNCTION_60_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(*(v4 + 704), a2, 1, a4);
}

void OUTLINED_FUNCTION_65_22(unint64_t a1@<X8>)
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_66_18()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v3 = *(v1 + 40);
  return v2;
}

uint64_t OUTLINED_FUNCTION_67_20(uint64_t a1)
{
  *(a1 + 8) = RequestedPropertyController.extractPropertyValueRecursive(mirror:for:);
  v2 = v1[33];
  v4 = v1[27];
  result = v1[28];
  v5 = v1[26];
  return result;
}

uint64_t OUTLINED_FUNCTION_68_20()
{
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[26];
  v8 = v0[27];
  v5 = v0[25];
  v6 = v0[22];
  v9 = v0[23];
  v10 = v0[18];

  return outlined init with take of SearchPropertyResponse();
}

void OUTLINED_FUNCTION_69_18()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
}

uint64_t OUTLINED_FUNCTION_71_18()
{

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_77_17()
{
  outlined init with take of Any((v0 + v1), (v2 + 48));
  v5 = *(v3 + *(v4 + 20));

  return EntityProperty.wrappedValue.getter();
}

BOOL OUTLINED_FUNCTION_85_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_95_10()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_97_10()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_112_16()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_113_13()
{

  return outlined destroy of EagerResolutionService?(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_120_10()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_121_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_123_12()
{
  result = v0[46];
  v2 = v0[44];
  v3 = v0[32];
  v4 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = *(v0[45] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_124_15()
{
  v3 = *(v0 + *(v1 + 28));

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_125_12()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_129_14()
{

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_130_13()
{
  v3 = *(v1 + *(v0 + 20));

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_132_11()
{

  return outlined destroy of EagerResolutionService?(v2, v0, v1);
}

void OUTLINED_FUNCTION_134_12()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[31];
}

uint64_t OUTLINED_FUNCTION_135_10()
{
}

uint64_t OUTLINED_FUNCTION_139_10()
{
  v2 = *(v0 + 72);
  v3 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_140_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 128) = a15;
  *(v16 + 136) = a16;

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_141_7()
{
  v2 = *(v0 - 3);
  v3 = *(v0 - 2);
  v4 = *(v0 - 1);
  v5 = *v0;
  v7 = *(v0 - 4);
}

uint64_t OUTLINED_FUNCTION_142_7()
{
  v2 = v0[25];
  v4 = v0[24];
  v5 = v0[23];
  v6 = v0[22];
}

uint64_t OUTLINED_FUNCTION_143_11()
{
  v2 = *(v0 + 72);
  v3 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_144_12()
{
  v2 = *(v0 - 3);
  v3 = *(v0 - 2);
  v4 = *(v0 - 1);
  v5 = *v0;
  v7 = *(v0 - 4);
}

uint64_t OUTLINED_FUNCTION_145_7()
{
  v5 = v0[11];
  v6 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
}

uint64_t OUTLINED_FUNCTION_148_11()
{

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_155_10()
{
  v4 = v0[22];
  v0[36] = v0[23];
  v5 = *(v2 + *(v1 + 24));

  return EntityProperty.wrappedValue.getter();
}

void OUTLINED_FUNCTION_156_8()
{
  v2 = *(v0 + 16) + 1;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_157_6()
{
  v4 = v0[18];
  v0[45] = v0[19];
  v5 = *(v1 + *(v2 + 24));

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_158_7()
{
  v4 = v0[18];
  v0[47] = v0[19];
  v5 = *(v1 + *(v2 + 24));

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_159_7()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[30];
  v5 = v0[28];
}

uint64_t OUTLINED_FUNCTION_160_7()
{

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_161_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_162_9()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_163_9()
{

  return outlined init with copy of Any(v0, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_165_7()
{
  v2 = v0[25];
  v4 = v0[24];
  v5 = v0[23];
  v6 = v0[22];
}

uint64_t OUTLINED_FUNCTION_166_6(float a1)
{
  *v1 = a1;

  return outlined init with copy of Any(v2 + 16, v2 + 80);
}

uint64_t OUTLINED_FUNCTION_167_5()
{
}

uint64_t OUTLINED_FUNCTION_168_7()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2085;

  return outlined init with copy of Any(v0 + 80, v0 + 112);
}

uint64_t OUTLINED_FUNCTION_169_10()
{
}

void OUTLINED_FUNCTION_172_5()
{
  v2 = v0[28];
  v3 = v0[27];
  v1 = v0[26];
}

uint64_t OUTLINED_FUNCTION_174_7@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v2 + 72) * v1;
  v4 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_177_7(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_180_8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 24);
  *(v0 + 64) = *(v0 + 16);
  *(v0 + 72) = v2;
  outlined init with take of Any((v0 + 32), (v0 + 80));

  return type metadata accessor for SearchPropertyRequest(0);
}

uint64_t OUTLINED_FUNCTION_182_10()
{
  v3 = *(v1 - 1);
  v4 = *v1;
  result = v0;
  v6 = *(v2 - 124);
  v7 = *(v2 - 104);
  return result;
}

void OUTLINED_FUNCTION_183_8()
{
  v3 = v0[37];
  v4 = v0[38];
  v1 = v0[35];
  v2 = v0[36];
}

uint64_t OUTLINED_FUNCTION_185_7@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v2 + 72) * v1;
  v4 = *(v2 + 32);
  return result;
}

_OWORD *OUTLINED_FUNCTION_193_8(float a1)
{
  *v2 = a1;

  return SearchResultItem.associatedValue.getter((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_194_8()
{
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];

  return type metadata accessor for DisplayRepresentation.Image();
}

uint64_t OUTLINED_FUNCTION_195_7(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_197_9()
{
  *(v0 + v2) = v1;

  return _s10OmniSearch0B15PropertyRequestVWOcTm_0();
}

uint64_t OUTLINED_FUNCTION_198_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_199_6(float a1)
{
  *v2 = a1;
  v5 = *(v3 + *(v1 + 20));

  return EntityProperty.wrappedValue.getter();
}

void OUTLINED_FUNCTION_201_8()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_202_6()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
}

uint64_t OUTLINED_FUNCTION_203_6(uint64_t a1)
{

  return IntentFile.init(audioResults:fileName:)(a1, v1);
}

void OUTLINED_FUNCTION_205_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_209_5()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_210_4@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of Any(a1 + 32 * v2, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_211_5()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_214_5()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t specialized SearchItem.source.getter()
{
  v0 = OUTLINED_FUNCTION_6_53();
  return specialized SearchItem.source.getter(v0, v1, v2);
}

{
  v0 = OUTLINED_FUNCTION_5_58();
  return specialized SearchItem.source.getter(v0, v1, v2);
}

{
  v0 = OUTLINED_FUNCTION_4_66();
  return specialized SearchItem.source.getter(v0, v1, v2);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch14GlobalResponseVmMd, &_s10OmniSearch14GlobalResponseVmMR);
  v0 = OUTLINED_FUNCTION_12_48();
  result = OUTLINED_FUNCTION_11_58(v0, v1);
  if (v3)
  {
    String.lowercased()();
    OUTLINED_FUNCTION_2_79();
    OUTLINED_FUNCTION_1_88();
    OUTLINED_FUNCTION_0_102();
    v4 = OUTLINED_FUNCTION_13_41();
    OUTLINED_FUNCTION_3_71(v4, MEMORY[0x277D83E40], v5, v6, v7, v8, v9, v10, &type metadata for GlobalResponse);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13AppEntityItemVmMd, &_s10OmniSearch13AppEntityItemVmMR);
  v0 = OUTLINED_FUNCTION_12_48();
  result = OUTLINED_FUNCTION_11_58(v0, v1);
  if (v3)
  {
    String.lowercased()();
    OUTLINED_FUNCTION_2_79();
    OUTLINED_FUNCTION_1_88();
    OUTLINED_FUNCTION_0_102();
    v4 = OUTLINED_FUNCTION_13_41();
    OUTLINED_FUNCTION_3_71(v4, MEMORY[0x277D83E40], v5, v6, v7, v8, v9, v10, &type metadata for AppEntityItem);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11GeoLocationVmMd, &_s10OmniSearch11GeoLocationVmMR);
  v0 = OUTLINED_FUNCTION_12_48();
  result = OUTLINED_FUNCTION_11_58(v0, v1);
  if (v3)
  {
    String.lowercased()();
    OUTLINED_FUNCTION_2_79();
    OUTLINED_FUNCTION_1_88();
    OUTLINED_FUNCTION_0_102();
    v4 = OUTLINED_FUNCTION_13_41();
    OUTLINED_FUNCTION_3_71(v4, MEMORY[0x277D83E40], v5, v6, v7, v8, v9, v10, &type metadata for GeoLocation);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v0 = OUTLINED_FUNCTION_8_56();
  return specialized SearchItem.source.getter(v0, v1, v2);
}

{
  v0 = OUTLINED_FUNCTION_7_56();
  return specialized SearchItem.source.getter(v0, v1, v2);
}

uint64_t specialized SearchItem.source.getter(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v16 = a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = OUTLINED_FUNCTION_12_48();
  result = OUTLINED_FUNCTION_11_58(v5, v6);
  if (v8)
  {
    String.lowercased()();
    OUTLINED_FUNCTION_2_79();
    OUTLINED_FUNCTION_1_88();
    OUTLINED_FUNCTION_0_102();
    v9 = OUTLINED_FUNCTION_13_41();
    OUTLINED_FUNCTION_3_71(v9, MEMORY[0x277D83E40], v10, v11, v12, v13, v14, v15, v16);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SearchItem.source.getter()
{
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v0 = OUTLINED_FUNCTION_12_48();
  result = OUTLINED_FUNCTION_11_58(v0, v1);
  if (v3)
  {
    String.lowercased()();
    OUTLINED_FUNCTION_2_79();
    OUTLINED_FUNCTION_1_88();
    OUTLINED_FUNCTION_0_102();
    v4 = OUTLINED_FUNCTION_13_41();
    OUTLINED_FUNCTION_3_71(v4, MEMORY[0x277D83E40], v5, v6, v7, v8, v9, v10, DynamicType);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static SearchItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a2, a3);
  v8 = SearchItem.matchesAsset(_:)(v28, a3, a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(a4 + 40);
  v10 = OUTLINED_FUNCTION_119();
  v11 = v9(v10);
  v13 = v12;
  v14 = OUTLINED_FUNCTION_119();
  if (v11 == v9(v14) && v13 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_7:
      v18 = 0;
      return v18 & 1;
    }
  }

  v19 = *(a4 + 48);
  v20 = OUTLINED_FUNCTION_119();
  v21 = v19(v20);
  v23 = v22;
  v24 = OUTLINED_FUNCTION_119();
  if (v21 == v19(v24) && v23 == v25)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

uint64_t protocol witness for SearchItem.source.getter in conformance GlobalResponse()
{
  v1 = *v0;
  v2 = v0[1];
  return specialized SearchItem.source.getter();
}

uint64_t protocol witness for SearchItem.llmConsumableDescription.getter in conformance GlobalResponse()
{
  v1 = *v0;
  v2 = v0[1];
  return OUTLINED_FUNCTION_24();
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = String.subscript.getter();

      return v7;
    }
  }

  __break(1u);
  return result;
}

int64_t specialized Collection.dropFirst(_:)(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, result, *(a2 + 16), a2);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = specialized Array.subscript.getter(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t SearchItem.matchesAsset(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 32))(a2, a3);
  v6 = v5;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if (v4 == (*(v8 + 32))(v7, v8) && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_119();
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t static String._copying(_:)()
{
  v0 = specialized Collection.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t OUTLINED_FUNCTION_0_102()
{

  return lazy protocol witness table accessor for type Substring and conformance Substring();
}

unint64_t OUTLINED_FUNCTION_1_88()
{

  return specialized Collection.dropFirst(_:)(1uLL, v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_79()
{
}

uint64_t OUTLINED_FUNCTION_3_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x2821FBE40](&a9, a2, v9);
}

__n128 OUTLINED_FUNCTION_10_52()
{
  v3 = *v0;
  v4 = v0[1];
  result = v0[2];
  v2 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_58(uint64_t a1, unint64_t a2)
{

  return specialized Collection.first.getter(a1, a2);
}

uint64_t OUTLINED_FUNCTION_12_48()
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_13_41()
{
}

_OWORD *SearchResultItem.associatedValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for SearchResultItem(0);
  v6 = OUTLINED_FUNCTION_17(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_107_10();
  OUTLINED_FUNCTION_0_103();
  v9 = OUTLINED_FUNCTION_119();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v9, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v31 = type metadata accessor for MobileSMSDocument();
      OUTLINED_FUNCTION_75_19(v31);
      OUTLINED_FUNCTION_44_28();
      goto LABEL_33;
    case 2u:
      v27 = type metadata accessor for CalendarEvent();
      OUTLINED_FUNCTION_75_19(v27);
      OUTLINED_FUNCTION_48_19();
      goto LABEL_33;
    case 3u:
      v29 = type metadata accessor for Photo();
      OUTLINED_FUNCTION_75_19(v29);
      OUTLINED_FUNCTION_46_27();
      goto LABEL_33;
    case 4u:
      v20 = type metadata accessor for NoteDocument();
      OUTLINED_FUNCTION_75_19(v20);
      OUTLINED_FUNCTION_53_21();
      goto LABEL_33;
    case 5u:
      v34 = type metadata accessor for Reminder();
      OUTLINED_FUNCTION_75_19(v34);
      OUTLINED_FUNCTION_41_22();
      goto LABEL_33;
    case 6u:
      v37 = type metadata accessor for PhoneHistory();
      OUTLINED_FUNCTION_75_19(v37);
      OUTLINED_FUNCTION_38_28();
      goto LABEL_33;
    case 7u:
      v30 = type metadata accessor for VoicemailTranscript();
      OUTLINED_FUNCTION_75_19(v30);
      OUTLINED_FUNCTION_45_22();
      goto LABEL_33;
    case 8u:
      v40 = type metadata accessor for JournalEntry();
      OUTLINED_FUNCTION_75_19(v40);
      OUTLINED_FUNCTION_35_32();
      goto LABEL_33;
    case 9u:
      v22 = type metadata accessor for VoiceMemo();
      OUTLINED_FUNCTION_75_19(v22);
      OUTLINED_FUNCTION_51_21();
      goto LABEL_33;
    case 0xAu:
      v39 = type metadata accessor for Safari();
      OUTLINED_FUNCTION_75_19(v39);
      OUTLINED_FUNCTION_36_28();
      goto LABEL_33;
    case 0xBu:
      v19 = type metadata accessor for FileDocument();
      OUTLINED_FUNCTION_75_19(v19);
      OUTLINED_FUNCTION_54_27();
      goto LABEL_33;
    case 0xCu:
      v21 = type metadata accessor for WalletTransaction();
      OUTLINED_FUNCTION_75_19(v21);
      OUTLINED_FUNCTION_52_24();
      goto LABEL_33;
    case 0xDu:
      v36 = type metadata accessor for WalletPass();
      OUTLINED_FUNCTION_75_19(v36);
      OUTLINED_FUNCTION_39_27();
      goto LABEL_33;
    case 0xEu:
      v18 = type metadata accessor for Contact();
      OUTLINED_FUNCTION_75_19(v18);
      OUTLINED_FUNCTION_55_18();
      goto LABEL_33;
    case 0xFu:
      v28 = type metadata accessor for Appointment();
      OUTLINED_FUNCTION_75_19(v28);
      OUTLINED_FUNCTION_47_21();
      goto LABEL_33;
    case 0x10u:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_115_13(v16);
      v17 = type metadata accessor for FlightReservation();
      OUTLINED_FUNCTION_75_19(v17);
      OUTLINED_FUNCTION_56_19();
      goto LABEL_33;
    case 0x11u:
      v32 = type metadata accessor for HotelReservation();
      OUTLINED_FUNCTION_75_19(v32);
      OUTLINED_FUNCTION_43_19();
      goto LABEL_33;
    case 0x12u:
      v38 = type metadata accessor for Party();
      OUTLINED_FUNCTION_75_19(v38);
      OUTLINED_FUNCTION_37_25();
      goto LABEL_33;
    case 0x13u:
      v43 = type metadata accessor for RestaurantReservation();
      OUTLINED_FUNCTION_75_19(v43);
      OUTLINED_FUNCTION_32_35();
      goto LABEL_33;
    case 0x14u:
      v33 = type metadata accessor for RentalCarReservation();
      OUTLINED_FUNCTION_75_19(v33);
      OUTLINED_FUNCTION_42_27();
      goto LABEL_33;
    case 0x15u:
      v35 = type metadata accessor for ShippingOrder();
      OUTLINED_FUNCTION_75_19(v35);
      OUTLINED_FUNCTION_40_28();
      goto LABEL_33;
    case 0x16u:
      v42 = type metadata accessor for TicketedTransportation();
      OUTLINED_FUNCTION_75_19(v42);
      OUTLINED_FUNCTION_33_35();
      goto LABEL_33;
    case 0x17u:
      v44 = type metadata accessor for TicketedShow();
      OUTLINED_FUNCTION_75_19(v44);
      OUTLINED_FUNCTION_31_29();
      goto LABEL_33;
    case 0x18u:
      v26 = type metadata accessor for Trip();
      OUTLINED_FUNCTION_75_19(v26);
      OUTLINED_FUNCTION_49_25();
      goto LABEL_33;
    case 0x19u:
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_115_13(v23);
      a1[3] = type metadata accessor for GlobalItem();
      OUTLINED_FUNCTION_50_20();
      a1[4] = lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v24);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      return outlined init with take of Answer(v1, boxed_opaque_existential_1Tm);
    case 0x1Au:
      v49 = *v1;
      v48 = *(v1 + 8);
      a1[3] = &type metadata for GlobalResponse;
      result = lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse();
      a1[4] = result;
      *a1 = v49;
      a1[1] = v48;
      return result;
    case 0x1Bu:
      a1[3] = &type metadata for AppEntityItem;
      a1[4] = lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem();
      result = swift_allocObject();
      *a1 = result;
      v14 = *(v1 + 16);
      result[1] = *v1;
      result[2] = v14;
      v15 = *(v1 + 48);
      result[3] = *(v1 + 32);
      result[4] = v15;
      return result;
    case 0x1Cu:
      a1[3] = type metadata accessor for Answer();
      OUTLINED_FUNCTION_30_32();
      a1[4] = lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v45);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      return outlined init with take of Answer(v1, boxed_opaque_existential_1Tm);
    case 0x1Du:
      v46 = type metadata accessor for OnScreen();
      OUTLINED_FUNCTION_75_19(v46);
      OUTLINED_FUNCTION_29_26();
      goto LABEL_33;
    case 0x1Eu:
      v41 = type metadata accessor for GenericSpotlightItem();
      OUTLINED_FUNCTION_75_19(v41);
      OUTLINED_FUNCTION_34_35();
      goto LABEL_33;
    default:
      v11 = type metadata accessor for EmailDocument();
      OUTLINED_FUNCTION_75_19(v11);
      OUTLINED_FUNCTION_58_14();
LABEL_33:
      a1[4] = lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v12);
      v47 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      return (*(*(v3 - 8) + 32))(v47, v1, v3);
  }
}

unint64_t lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with take of Answer(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t SearchResult.csItem.getter()
{
  OUTLINED_FUNCTION_109_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  return CodableNSSecureCoding.wrappedValue.getter();
}

void SearchResult.init(_:searchType:csItem:spotlightRankingItem:isAnswerSynthesisEligible:)(char a1@<W1>, void *a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_61_8();
  v12 = type metadata accessor for SpotlightRankingItem();
  v13 = OUTLINED_FUNCTION_14(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  v21 = type metadata accessor for SearchResult(0);
  *(a5 + v21[7]) = MEMORY[0x277D84F90];
  v22 = (a5 + v21[10]);
  *v22 = 0;
  v22[1] = 0;
  OUTLINED_FUNCTION_0_103();
  v23 = OUTLINED_FUNCTION_94();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v23, v24);
  v25 = v21[6];
  type metadata accessor for CSSearchableItem();
  OUTLINED_FUNCTION_28_29();
  lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v26);
  v27 = a2;
  CodableNSSecureCoding.init(wrappedValue:)();
  outlined init with copy of SpotlightRankingItem?(a3, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
  {
    outlined destroy of IntentApplication?(v5, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v28 = v21[5];
    OUTLINED_FUNCTION_82_16();
    SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

    outlined destroy of IntentApplication?(a3, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_11_59();
    _s10OmniSearch0B10ResultItemOWOhTm_9();
  }

  else
  {

    outlined destroy of IntentApplication?(a3, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_11_59();
    _s10OmniSearch0B10ResultItemOWOhTm_9();
    v29 = *(v15 + 32);
    v29(v20, v5, v12);
    v29(a5 + v21[5], v20, v12);
  }

  *(a5 + v21[8]) = a1;
  *(a5 + v21[9]) = a4 & 1;
  OUTLINED_FUNCTION_148();
}

void SearchResult.init(_:csItem:spotlightRankingItem:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_135_11();
  v11 = type metadata accessor for SpotlightRankingItem();
  v12 = OUTLINED_FUNCTION_14(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v17 = OUTLINED_FUNCTION_61_8();
  v18 = type metadata accessor for SearchResult(v17);
  *(a3 + v18[7]) = MEMORY[0x277D84F90];
  v19 = (a3 + v18[10]);
  *v19 = 0;
  v19[1] = 0;
  OUTLINED_FUNCTION_0_103();
  v20 = OUTLINED_FUNCTION_119();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v20, v21);
  v22 = v18[6];
  type metadata accessor for CSSearchableItem();
  OUTLINED_FUNCTION_28_29();
  lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v23);
  v24 = a1;
  CodableNSSecureCoding.init(wrappedValue:)();
  outlined init with copy of SpotlightRankingItem?(a2, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
  {
    outlined destroy of IntentApplication?(v3, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v25 = v18[5];
    OUTLINED_FUNCTION_82_16();
    SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

    outlined destroy of IntentApplication?(a2, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_11_59();
    _s10OmniSearch0B10ResultItemOWOhTm_9();
  }

  else
  {

    outlined destroy of IntentApplication?(a2, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_11_59();
    _s10OmniSearch0B10ResultItemOWOhTm_9();
    v26 = *(v14 + 32);
    v26(v4, v3, v11);
    v26(a3 + v18[5], v4, v11);
  }

  *(a3 + v18[8]) = 0;
  *(a3 + v18[9]) = 1;
  OUTLINED_FUNCTION_148();
}

void SearchResultKey.rawValue.getter()
{
  switch(*v0)
  {
    case 0xD:
    case 0x10:
      OUTLINED_FUNCTION_98_2();
      break;
    default:
      return;
  }
}

uint64_t SearchResultItem.id.getter()
{
  v1 = SearchResultItem.associatedValue.getter(v15);
  OUTLINED_FUNCTION_123_13(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15[0], v15[1], v15[2], v15[3]);
  v9 = *(v0 + 32);
  v10 = OUTLINED_FUNCTION_32_0();
  v12 = v11(v10);
  OUTLINED_FUNCTION_143_12(v12);
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchResult.uniqueIdentifier.getter()
{
  OUTLINED_FUNCTION_109_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v0 = CodableNSSecureCoding.wrappedValue.getter();
  v1 = [v0 uniqueIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return OUTLINED_FUNCTION_32_0();
}

uint64_t SearchResult.bundleId.getter()
{
  OUTLINED_FUNCTION_109_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v0 = CodableNSSecureCoding.wrappedValue.getter();
  result = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v0);
  if (!v2)
  {
    return 0;
  }

  return result;
}

void static SearchResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_93();
  if ((_s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA0b6ResultC0O_Tt1g5() & 1) == 0)
  {
    goto LABEL_20;
  }

  v2 = type metadata accessor for SearchResult(0);
  v3 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v4 = CodableNSSecureCoding.wrappedValue.getter();
  v5 = [v4 uniqueIdentifier];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = v0 + v2[6];
  v10 = CodableNSSecureCoding.wrappedValue.getter();
  v11 = [v10 uniqueIdentifier];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v6 == v12 && v8 == v14)
  {
  }

  else
  {
    OUTLINED_FUNCTION_30_5();
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v17 = v2[10];
  v18 = (v1 + v17);
  v19 = *(v1 + v17 + 8);
  v20 = (v0 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_20;
    }

    v22 = *v18 == *v20 && v19 == v21;
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v21)
  {
LABEL_20:
    OUTLINED_FUNCTION_148();
    return;
  }

  v23 = v2[5];
  OUTLINED_FUNCTION_148();

  static SpotlightRankingItem.== infix(_:_:)();
}

uint64_t SearchResultItem.type.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SearchResultItem(0);
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_107_10();
  OUTLINED_FUNCTION_0_103();
  v7 = OUTLINED_FUNCTION_119();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v7, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_76_16(1);
      v9 = type metadata accessor for MobileSMSDocument();
      goto LABEL_33;
    case 2u:
      OUTLINED_FUNCTION_76_16(2);
      v9 = type metadata accessor for CalendarEvent();
      goto LABEL_33;
    case 3u:
      OUTLINED_FUNCTION_76_16(3);
      v9 = type metadata accessor for Photo();
      goto LABEL_33;
    case 4u:
      OUTLINED_FUNCTION_76_16(5);
      v9 = type metadata accessor for NoteDocument();
      goto LABEL_33;
    case 5u:
      OUTLINED_FUNCTION_76_16(6);
      v9 = type metadata accessor for Reminder();
      goto LABEL_33;
    case 6u:
      OUTLINED_FUNCTION_76_16(7);
      v9 = type metadata accessor for PhoneHistory();
      goto LABEL_33;
    case 7u:
      OUTLINED_FUNCTION_76_16(8);
      v9 = type metadata accessor for VoicemailTranscript();
      goto LABEL_33;
    case 8u:
      OUTLINED_FUNCTION_76_16(9);
      v9 = type metadata accessor for JournalEntry();
      goto LABEL_33;
    case 9u:
      OUTLINED_FUNCTION_76_16(10);
      v9 = type metadata accessor for VoiceMemo();
      goto LABEL_33;
    case 0xAu:
      OUTLINED_FUNCTION_76_16(11);
      v9 = type metadata accessor for Safari();
      goto LABEL_33;
    case 0xBu:
      OUTLINED_FUNCTION_76_16(12);
      v9 = type metadata accessor for FileDocument();
      goto LABEL_33;
    case 0xCu:
      OUTLINED_FUNCTION_76_16(13);
      v9 = type metadata accessor for WalletTransaction();
      goto LABEL_33;
    case 0xDu:
      OUTLINED_FUNCTION_76_16(14);
      v9 = type metadata accessor for WalletPass();
      goto LABEL_33;
    case 0xEu:
      OUTLINED_FUNCTION_76_16(15);
      v9 = type metadata accessor for Contact();
      goto LABEL_33;
    case 0xFu:
      OUTLINED_FUNCTION_76_16(26);
      v9 = type metadata accessor for Appointment();
      goto LABEL_33;
    case 0x10u:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_115_13(v12);
      OUTLINED_FUNCTION_76_16(16);
      v9 = type metadata accessor for FlightReservation();
      goto LABEL_33;
    case 0x11u:
      OUTLINED_FUNCTION_76_16(17);
      v9 = type metadata accessor for HotelReservation();
      goto LABEL_33;
    case 0x12u:
      OUTLINED_FUNCTION_76_16(27);
      v9 = type metadata accessor for Party();
      goto LABEL_33;
    case 0x13u:
      OUTLINED_FUNCTION_76_16(18);
      v9 = type metadata accessor for RestaurantReservation();
      goto LABEL_33;
    case 0x14u:
      OUTLINED_FUNCTION_76_16(22);
      v9 = type metadata accessor for RentalCarReservation();
      goto LABEL_33;
    case 0x15u:
      OUTLINED_FUNCTION_76_16(23);
      v9 = type metadata accessor for ShippingOrder();
      goto LABEL_33;
    case 0x16u:
      OUTLINED_FUNCTION_76_16(24);
      v9 = type metadata accessor for TicketedTransportation();
      goto LABEL_33;
    case 0x17u:
      OUTLINED_FUNCTION_76_16(25);
      v9 = type metadata accessor for TicketedShow();
      goto LABEL_33;
    case 0x18u:
      OUTLINED_FUNCTION_76_16(28);
      v9 = type metadata accessor for Trip();
      goto LABEL_33;
    case 0x19u:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_115_13(v13);
      *a1 = 19;
      return _s10OmniSearch0B10ResultItemOWOhTm_9();
    case 0x1Au:
      result = _s10OmniSearch0B10ResultItemOWOhTm_9();
      v11 = 20;
      goto LABEL_35;
    case 0x1Bu:
      result = _s10OmniSearch0B10ResultItemOWOhTm_9();
      v11 = 21;
LABEL_35:
      *a1 = v11;
      return result;
    case 0x1Cu:
      *a1 = 4;
      return _s10OmniSearch0B10ResultItemOWOhTm_9();
    case 0x1Du:
      OUTLINED_FUNCTION_76_16(29);
      v9 = type metadata accessor for OnScreen();
      goto LABEL_33;
    case 0x1Eu:
      OUTLINED_FUNCTION_76_16(30);
      v9 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_33;
    default:
      *a1 = 0;
      v9 = type metadata accessor for EmailDocument();
LABEL_33:
      OUTLINED_FUNCTION_17(v9);
      return (*(v14 + 8))(v1);
  }
}

void SearchResult.csItemIntentFile()()
{
  v0 = *(type metadata accessor for SearchResult(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v1 = CodableNSSecureCoding.wrappedValue.getter();
  CSSearchableItem.asIntentFile()();
}

uint64_t SearchResultItem.source.getter()
{
  v1 = SearchResultItem.associatedValue.getter(v15);
  OUTLINED_FUNCTION_123_13(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15[0], v15[1], v15[2], v15[3]);
  v9 = *(v0 + 40);
  v10 = OUTLINED_FUNCTION_32_0();
  v12 = v11(v10);
  OUTLINED_FUNCTION_143_12(v12);
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchResultItem.experience.getter()
{
  v2 = type metadata accessor for SearchResultItem(0);
  v3 = OUTLINED_FUNCTION_17(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_107_10();
  OUTLINED_FUNCTION_0_103();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v1, v0);
  OUTLINED_FUNCTION_32_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = type metadata accessor for MobileSMSDocument();
      goto LABEL_37;
    case 2u:
      v8 = type metadata accessor for CalendarEvent();
      goto LABEL_37;
    case 3u:
      v8 = type metadata accessor for Photo();
      goto LABEL_37;
    case 4u:
      v8 = type metadata accessor for NoteDocument();
      goto LABEL_37;
    case 5u:
      v8 = type metadata accessor for Reminder();
      goto LABEL_37;
    case 6u:
      v8 = type metadata accessor for PhoneHistory();
      goto LABEL_37;
    case 7u:
      v8 = type metadata accessor for VoicemailTranscript();
      goto LABEL_37;
    case 8u:
      v8 = type metadata accessor for JournalEntry();
      goto LABEL_37;
    case 9u:
      v8 = type metadata accessor for VoiceMemo();
      goto LABEL_37;
    case 0xAu:
      v8 = type metadata accessor for Safari();
      goto LABEL_37;
    case 0xBu:
      v8 = type metadata accessor for FileDocument();
      goto LABEL_37;
    case 0xCu:
      v8 = type metadata accessor for WalletTransaction();
      goto LABEL_37;
    case 0xDu:
      v8 = type metadata accessor for WalletPass();
      goto LABEL_37;
    case 0xEu:
      v8 = type metadata accessor for Contact();
      goto LABEL_37;
    case 0xFu:
      v8 = type metadata accessor for Appointment();
      goto LABEL_37;
    case 0x10u:
      v6 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48));
      if (specialized Array.count.getter(v6))
      {
        OUTLINED_FUNCTION_140_11();
        if (v1)
        {
          v7 = MEMORY[0x25F89FFD0](0, v6);
        }

        else
        {
          v7 = *(v6 + 32);
        }
      }

      else
      {

        v7 = 0;
      }

      v12 = type metadata accessor for FlightReservation();
      OUTLINED_FUNCTION_17(v12);
      (*(v13 + 8))(v0);
      return v7;
    case 0x11u:
      v8 = type metadata accessor for HotelReservation();
      goto LABEL_37;
    case 0x12u:
      v8 = type metadata accessor for Party();
      goto LABEL_37;
    case 0x13u:
      v8 = type metadata accessor for RestaurantReservation();
      goto LABEL_37;
    case 0x14u:
      v8 = type metadata accessor for RentalCarReservation();
      goto LABEL_37;
    case 0x15u:
      v8 = type metadata accessor for ShippingOrder();
      goto LABEL_37;
    case 0x16u:
      v8 = type metadata accessor for TicketedTransportation();
      goto LABEL_37;
    case 0x17u:
      v8 = type metadata accessor for TicketedShow();
      goto LABEL_37;
    case 0x18u:
      v8 = type metadata accessor for Trip();
      goto LABEL_37;
    case 0x19u:
      v9 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48));
      if (specialized Array.count.getter(v9))
      {
        OUTLINED_FUNCTION_140_11();
        if (v1)
        {
          v7 = MEMORY[0x25F89FFD0](0, v9);
        }

        else
        {
          v7 = *(v9 + 32);
        }
      }

      else
      {

        v7 = 0;
      }

      OUTLINED_FUNCTION_5_59();
      _s10OmniSearch0B10ResultItemOWOhTm_9();
      return v7;
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
      _s10OmniSearch0B10ResultItemOWOhTm_9();
      return 0;
    case 0x1Du:
      v8 = type metadata accessor for OnScreen();
      goto LABEL_37;
    case 0x1Eu:
      v8 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_37;
    default:
      v8 = type metadata accessor for EmailDocument();
LABEL_37:
      OUTLINED_FUNCTION_17(v8);
      (*(v10 + 8))(v0);
      return 0;
  }
}

uint64_t _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA9WebAnswerV_Tt1g5()
{
  OUTLINED_FUNCTION_78_7();
  v3 = type metadata accessor for WebAnswer();
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v7 = OUTLINED_FUNCTION_94();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v7, v8);
  OUTLINED_FUNCTION_81_20();
  v11 = v11 && v9 == v10;
  if (v11)
  {
    OUTLINED_FUNCTION_95_11();
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_95_11();
    if ((v1 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_65_23();
  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_103_14();
  if (v11 && v1 == v12)
  {
  }

  else
  {
    OUTLINED_FUNCTION_60_16();
    OUTLINED_FUNCTION_114_13();

    if ((v2 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  v14.value._countAndFlagsBits = type metadata completion function for DataFilter.FilterResult();
  WebAnswer.llmConsumableDescription(locale:)(v14);
  v15.value._countAndFlagsBits = OUTLINED_FUNCTION_62_18();
  WebAnswer.llmConsumableDescription(locale:)(v15);
  OUTLINED_FUNCTION_101_12();
  if (!v11 || v0 != v16)
  {
    OUTLINED_FUNCTION_59_18();
  }

  return OUTLINED_FUNCTION_118_10();
}

uint64_t _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA8WebImageV_Tt1g5()
{
  OUTLINED_FUNCTION_78_7();
  v3 = type metadata accessor for WebImage();
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v7 = OUTLINED_FUNCTION_94();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v7, v8);
  OUTLINED_FUNCTION_81_20();
  v11 = v11 && v9 == v10;
  if (v11)
  {
    OUTLINED_FUNCTION_94_13();
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_94_13();
    if ((v1 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_65_23();
  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_103_14();
  if (v11 && v1 == v12)
  {
  }

  else
  {
    OUTLINED_FUNCTION_60_16();
    OUTLINED_FUNCTION_114_13();

    if ((v2 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  v14.value._countAndFlagsBits = type metadata completion function for DataFilter.FilterResult();
  WebImage.llmConsumableDescription(locale:)(v14);
  v15.value._countAndFlagsBits = OUTLINED_FUNCTION_62_18();
  WebImage.llmConsumableDescription(locale:)(v15);
  OUTLINED_FUNCTION_101_12();
  if (!v11 || v0 != v16)
  {
    OUTLINED_FUNCTION_59_18();
  }

  return OUTLINED_FUNCTION_118_10();
}

uint64_t _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA6AnswerV_Tt1g5()
{
  OUTLINED_FUNCTION_78_7();
  v3 = type metadata accessor for Answer();
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v7 = OUTLINED_FUNCTION_94();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v7, v8);
  OUTLINED_FUNCTION_81_20();
  v11 = v11 && v9 == v10;
  if (v11)
  {
    OUTLINED_FUNCTION_57_20();
    _s10OmniSearch0B10ResultItemOWOhTm_9();
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_57_20();
    _s10OmniSearch0B10ResultItemOWOhTm_9();
    if ((v1 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_65_23();
  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_103_14();
  if (v11 && v1 == v12)
  {
  }

  else
  {
    OUTLINED_FUNCTION_60_16();
    OUTLINED_FUNCTION_114_13();

    if ((v2 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  v14.value._countAndFlagsBits = type metadata completion function for DataFilter.FilterResult();
  Answer.llmConsumableDescription(locale:)(v14);
  v15.value._countAndFlagsBits = OUTLINED_FUNCTION_62_18();
  Answer.llmConsumableDescription(locale:)(v15);
  OUTLINED_FUNCTION_101_12();
  if (!v11 || v0 != v16)
  {
    OUTLINED_FUNCTION_59_18();
  }

  return OUTLINED_FUNCTION_118_10();
}

uint64_t _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA0b6ResultC0O_Tt1g5()
{
  OUTLINED_FUNCTION_93();
  if ((specialized SearchItem.matchesAsset(_:)() & 1) == 0)
  {
    goto LABEL_7;
  }

  SearchResultItem.associatedValue.getter(v25);
  v0 = v26;
  v1 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v2 = (*(v1 + 40))(v0, v1);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  SearchResultItem.associatedValue.getter(v25);
  v5 = v26;
  v6 = v27;
  v7 = __swift_project_boxed_opaque_existential_1(v25, v26);
  v8 = (*(v6 + 40))(v5, v6);
  OUTLINED_FUNCTION_143_12(v8);
  if (v2 == v8 && v4 == v7)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_114_13();

    if ((v2 & 1) == 0)
    {
LABEL_7:
      v10 = 0;
      return v10 & 1;
    }
  }

  SearchResultItem.associatedValue.getter(v25);
  v11 = v26;
  v12 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v13 = *(v12 + 56);
  v14 = type metadata completion function for DataFilter.FilterResult();
  v15(v14);
  OUTLINED_FUNCTION_98_10();
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  SearchResultItem.associatedValue.getter(v25);
  v16 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v17 = *(v16 + 56);
  v18 = type metadata completion function for DataFilter.FilterResult();
  v20 = v19(v18);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (v12 == v20 && v11 == v22)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_89_17();
  }

  return v10 & 1;
}

uint64_t _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA14GlobalResponseV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 == a3 && a2 == a4;
  if (!v4 && (OUTLINED_FUNCTION_108_11() & 1) == 0)
  {
    return 0;
  }

  specialized SearchItem.source.getter();
  v6 = v5;
  OUTLINED_FUNCTION_119();
  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_101_12();
  if (v4 && v6 == v7)
  {
  }

  else
  {
    v9 = OUTLINED_FUNCTION_108_11();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA09AppEntityC0V_Tt1B5()
{
  OUTLINED_FUNCTION_93();
  v5 = *v4 == *v0 && *(v1 + 1) == *(v0 + 1);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_65_23();
  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_103_14();
  if (v5 && v2 == v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_60_16();
    OUTLINED_FUNCTION_114_13();

    if ((v3 & 1) == 0)
    {
LABEL_11:
      v8 = 0;
      return v8 & 1;
    }
  }

  v14 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v20 = v1[3];
  v9.value._countAndFlagsBits = type metadata completion function for DataFilter.FilterResult();
  AppEntityItem.llmConsumableDescription(locale:)(v9);
  OUTLINED_FUNCTION_98_10();
  v15 = *v0;
  v17 = v0[1];
  v19 = v0[2];
  v21 = v0[3];
  v10.value._countAndFlagsBits = type metadata completion function for DataFilter.FilterResult();
  AppEntityItem.llmConsumableDescription(locale:)(v10);
  OUTLINED_FUNCTION_101_12();
  if (v5 && v1 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_59_18();
  }

  return v8 & 1;
}

uint64_t _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA11GeoLocationV_Tt1B5()
{
  OUTLINED_FUNCTION_93();
  if ((specialized SearchItem.matchesAsset(_:)(v4, v1) & 1) == 0)
  {
    goto LABEL_7;
  }

  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_65_23();
  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_103_14();
  v6 = v6 && v2 == v5;
  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_60_16();
    OUTLINED_FUNCTION_114_13();

    if ((v3 & 1) == 0)
    {
LABEL_7:
      v7 = 0;
      return v7 & 1;
    }
  }

  memcpy(v13, v1, sizeof(v13));
  v8.value._countAndFlagsBits = type metadata completion function for DataFilter.FilterResult();
  GeoLocation.llmConsumableDescription(locale:)(v8);
  OUTLINED_FUNCTION_98_10();
  memcpy(v13, v0, sizeof(v13));
  v9.value._countAndFlagsBits = type metadata completion function for DataFilter.FilterResult();
  GeoLocation.llmConsumableDescription(locale:)(v9);
  OUTLINED_FUNCTION_101_12();
  if (v6 && v1 == v10)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_59_18();
  }

  return v7 & 1;
}

uint64_t _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA10KGDocumentV_Tt1g5()
{
  OUTLINED_FUNCTION_78_7();
  v3 = type metadata accessor for KGDocument();
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v7 = OUTLINED_FUNCTION_94();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v7, v8);
  OUTLINED_FUNCTION_81_20();
  v11 = v11 && v9 == v10;
  if (v11)
  {
    OUTLINED_FUNCTION_93_14();
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_93_14();
    if ((v1 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_65_23();
  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_103_14();
  if (v11 && v1 == v12)
  {
  }

  else
  {
    OUTLINED_FUNCTION_60_16();
    OUTLINED_FUNCTION_114_13();

    if ((v2 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  v14.value._countAndFlagsBits = type metadata completion function for DataFilter.FilterResult();
  KGDocument.llmConsumableDescription(locale:)(v14);
  v15.value._countAndFlagsBits = OUTLINED_FUNCTION_62_18();
  KGDocument.llmConsumableDescription(locale:)(v15);
  OUTLINED_FUNCTION_101_12();
  if (!v11 || v0 != v16)
  {
    OUTLINED_FUNCTION_59_18();
  }

  return OUTLINED_FUNCTION_118_10();
}

uint64_t _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA06GlobalC0V_Tt1g5()
{
  OUTLINED_FUNCTION_78_7();
  v3 = type metadata accessor for GlobalItem();
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v7 = OUTLINED_FUNCTION_94();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v7, v8);
  OUTLINED_FUNCTION_81_20();
  v11 = v11 && v9 == v10;
  if (v11)
  {
    OUTLINED_FUNCTION_5_59();
    _s10OmniSearch0B10ResultItemOWOhTm_9();
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_5_59();
    _s10OmniSearch0B10ResultItemOWOhTm_9();
    if ((v1 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_65_23();
  specialized SearchItem.source.getter();
  OUTLINED_FUNCTION_103_14();
  if (v11 && v1 == v12)
  {
  }

  else
  {
    OUTLINED_FUNCTION_60_16();
    OUTLINED_FUNCTION_114_13();

    if ((v2 & 1) == 0)
    {
      return OUTLINED_FUNCTION_118_10();
    }
  }

  GlobalItem.description.getter();
  OUTLINED_FUNCTION_98_10();
  GlobalItem.description.getter();
  OUTLINED_FUNCTION_101_12();
  if (!v11 || v0 != v14)
  {
    OUTLINED_FUNCTION_59_18();
  }

  return OUTLINED_FUNCTION_118_10();
}

Swift::Bool __swiftcall SearchResultItem.isInstantAnswer()()
{
  v2 = type metadata accessor for SearchResultItem(0);
  v3 = OUTLINED_FUNCTION_17(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_107_10();
  OUTLINED_FUNCTION_0_103();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v1, v0);
  OUTLINED_FUNCTION_32_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = type metadata accessor for MobileSMSDocument();
      goto LABEL_32;
    case 2u:
      v8 = type metadata accessor for CalendarEvent();
      goto LABEL_32;
    case 3u:
      v8 = type metadata accessor for Photo();
      goto LABEL_32;
    case 4u:
      v8 = type metadata accessor for NoteDocument();
      goto LABEL_32;
    case 5u:
      v8 = type metadata accessor for Reminder();
      goto LABEL_32;
    case 6u:
      v8 = type metadata accessor for PhoneHistory();
      goto LABEL_32;
    case 7u:
      v8 = type metadata accessor for VoicemailTranscript();
      goto LABEL_32;
    case 8u:
      v8 = type metadata accessor for JournalEntry();
      goto LABEL_32;
    case 9u:
      v8 = type metadata accessor for VoiceMemo();
      goto LABEL_32;
    case 0xAu:
      v8 = type metadata accessor for Safari();
      goto LABEL_32;
    case 0xBu:
      v8 = type metadata accessor for FileDocument();
      goto LABEL_32;
    case 0xCu:
      v8 = type metadata accessor for WalletTransaction();
      goto LABEL_32;
    case 0xDu:
      v8 = type metadata accessor for WalletPass();
      goto LABEL_32;
    case 0xEu:
      v8 = type metadata accessor for Contact();
      goto LABEL_32;
    case 0xFu:
      v8 = type metadata accessor for Appointment();
      goto LABEL_32;
    case 0x10u:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_115_13(v6);
      v7 = type metadata accessor for FlightReservation();
      goto LABEL_28;
    case 0x11u:
      v7 = type metadata accessor for HotelReservation();
      goto LABEL_28;
    case 0x12u:
      v8 = type metadata accessor for Party();
      goto LABEL_32;
    case 0x13u:
      v7 = type metadata accessor for RestaurantReservation();
LABEL_28:
      OUTLINED_FUNCTION_17(v7);
      (*(v10 + 8))();
      return 1;
    case 0x14u:
      v8 = type metadata accessor for RentalCarReservation();
      goto LABEL_32;
    case 0x15u:
      v8 = type metadata accessor for ShippingOrder();
      goto LABEL_32;
    case 0x16u:
      v8 = type metadata accessor for TicketedTransportation();
      goto LABEL_32;
    case 0x17u:
      v8 = type metadata accessor for TicketedShow();
      goto LABEL_32;
    case 0x18u:
      v8 = type metadata accessor for Trip();
      goto LABEL_32;
    case 0x19u:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_115_13(v9);
      goto LABEL_30;
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
LABEL_30:
      _s10OmniSearch0B10ResultItemOWOhTm_9();
      return 0;
    case 0x1Du:
      v8 = type metadata accessor for OnScreen();
      goto LABEL_32;
    case 0x1Eu:
      v8 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_32;
    default:
      v8 = type metadata accessor for EmailDocument();
LABEL_32:
      OUTLINED_FUNCTION_17(v8);
      (*(v12 + 8))();
      return 0;
  }
}

uint64_t SearchResult.debugDescription.getter()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = OUTLINED_FUNCTION_114(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_135_11();
  v4 = type metadata accessor for SearchResult.JSONIntermediate(0);
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  v11 = type metadata accessor for JSONEncoder.OutputFormatting();
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_8();
  v15 = type metadata accessor for JSONEncoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  SearchResult.toJSONIntermediate()(v10);
  lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(&lazy protocol witness table cache variable for type SearchResult.JSONIntermediate and conformance SearchResult.JSONIntermediate);
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v20 = v19;
  OUTLINED_FUNCTION_92_12();
  static String.Encoding.utf8.getter();
  v21 = String.init(data:encoding:)();
  v23 = v22;
  outlined consume of Data._Representation(v18, v20);
  if (!v23)
  {
    SearchResult.description.getter();
    v21 = v24;
  }

  return v21;
}

uint64_t SearchResultItem.sfCard.getter()
{
  result = SearchResultItem.experience.getter();
  if (result)
  {
    v1 = (*(*result + 128))(result);

    return v1;
  }

  return result;
}

Swift::Bool __swiftcall SearchResult.isImageOrVideo()()
{
  OUTLINED_FUNCTION_109_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v0 = CodableNSSecureCoding.wrappedValue.getter();
  v1 = CSSearchableItem.isPhotoOrVideo.getter();

  return v1 & 1;
}

uint64_t SearchResult.spotlightRankingItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResult(0) + 20);
  v4 = type metadata accessor for SpotlightRankingItem();
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SearchResult.spotlightRankingItem.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for SearchResult(v2) + 20);
  v4 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*SearchResult.spotlightRankingItem.modify())(void)
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchResult(v0) + 20);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

uint64_t SearchResult.codableCSItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResult(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SearchResult.requestedProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchResult(0) + 28));
}

uint64_t SearchResult.requestedProperties.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for SearchResult(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t (*SearchResult.requestedProperties.modify())(void)
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchResult(v0) + 28);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

uint64_t SearchResult.contentType.getter()
{
  OUTLINED_FUNCTION_109_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v0 = CodableNSSecureCoding.wrappedValue.getter();
  v1 = [v0 attributeSet];

  return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter(v1);
}

uint64_t SearchResult.associatedQuery.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchResult(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchResult.associatedQuery.setter()
{
  v3 = OUTLINED_FUNCTION_78_7();
  v4 = (v1 + *(type metadata accessor for SearchResult(v3) + 40));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t (*SearchResult.associatedQuery.modify())(void)
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchResult(v0) + 40);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

void SearchResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12)
{
  OUTLINED_FUNCTION_60_1();
  v86 = v12;
  v15 = v14;
  v82 = v16;
  v77 = type metadata accessor for UUID();
  v17 = OUTLINED_FUNCTION_14(v77);
  v74 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_0();
  v76 = v21;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v22);
  v75 = &v71 - v23;
  v24 = type metadata accessor for SpotlightRankingItem();
  v25 = OUTLINED_FUNCTION_14(v24);
  v80 = v26;
  v81 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_3();
  v79 = v29;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  OUTLINED_FUNCTION_14(v78);
  v73 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_59_4();
  v83 = type metadata accessor for SearchResultItem(0);
  v34 = OUTLINED_FUNCTION_17(v83);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_3();
  v84 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E6ResultV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E6ResultV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14(v38);
  v85 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  v43 = OUTLINED_FUNCTION_137_7();
  v44 = type metadata accessor for SearchResult(v43);
  v45 = OUTLINED_FUNCTION_17(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_36();
  v50 = v49 - v48;
  *(v49 - v48 + *(v51 + 28)) = MEMORY[0x277D84F90];
  v52 = (v49 - v48 + *(v51 + 40));
  *v52 = 0;
  v52[1] = 0;
  v54 = v15[3];
  v53 = v15[4];
  v55 = OUTLINED_FUNCTION_133_13();
  __swift_project_boxed_opaque_existential_1(v55, v56);
  lazy protocol witness table accessor for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys();
  v57 = v86;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v57)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v71 = v50;
    v72 = v44;
    v86 = v15;
    OUTLINED_FUNCTION_14_37();
    lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v58);
    OUTLINED_FUNCTION_131_10();
    v59 = v84;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_1_89();
    v60 = OUTLINED_FUNCTION_134_13();
    outlined init with take of Answer(v60, v59);
    lazy protocol witness table accessor for type EmptyResolverSpecification<SearchAnswerEntity> and conformance EmptyResolverSpecification<A>(&lazy protocol witness table cache variable for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>);
    v61 = v78;
    OUTLINED_FUNCTION_136_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v73 + 32))(v59 + *(v72 + 24), v13, v61);
    v63 = v80;
    v62 = v81;
    OUTLINED_FUNCTION_85_16();
    lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v64);
    v65 = v79;
    OUTLINED_FUNCTION_136_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v66 = v65;
    v67 = v72;
    (*(v63 + 32))(v59 + *(v72 + 20), v66, v62);
    lazy protocol witness table accessor for type SearchType and conformance SearchType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v59 + *(v67 + 32)) = a12;
    LOBYTE(v62) = KeyedDecodingContainer.decode(_:forKey:)();
    v68 = OUTLINED_FUNCTION_96_11();
    v69(v68);
    *(v59 + *(v67 + 36)) = v62 & 1;
    v70 = v86;
    _s10OmniSearch0B10ResultItemOWOcTm_4(v59, v82);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    _s10OmniSearch0B10ResultItemOWOhTm_9();
  }

  OUTLINED_FUNCTION_61_2();
}

OmniSearch::SearchResult::CodingKeys_optional __swiftcall SearchResult.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2 = stringValue._countAndFlagsBits == 1835365481 && stringValue._object == 0xE400000000000000;
  if (v2 || (countAndFlagsBits = stringValue._countAndFlagsBits, (OUTLINED_FUNCTION_89_17() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = countAndFlagsBits == 0xD000000000000014 && 0x800000025DBF9EC0 == object;
    if (v5 || (OUTLINED_FUNCTION_89_17() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = countAndFlagsBits == OUTLINED_FUNCTION_122_11() && object == v6;
      if (v7 || (OUTLINED_FUNCTION_89_17() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = countAndFlagsBits == 0xD000000000000013 && 0x800000025DBEE1F0 == object;
        if (v8 || (OUTLINED_FUNCTION_89_17() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = countAndFlagsBits == 0x7954686372616573 && object == 0xEA00000000006570;
          if (v9 || (OUTLINED_FUNCTION_89_17() & 1) != 0)
          {

            return 4;
          }

          else if (countAndFlagsBits == 0xD000000000000019 && 0x800000025DBF9EE0 == object)
          {

            return 5;
          }

          else
          {
            v11 = OUTLINED_FUNCTION_89_17();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

void SearchResult.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_122_11();
      break;
    case 3:
      OUTLINED_FUNCTION_98_2();
      break;
    default:
      return;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void SearchResult.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E6ResultV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E6ResultV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_4();
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys();
  OUTLINED_FUNCTION_35_8();
  type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_14_37();
  lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v12);
  OUTLINED_FUNCTION_131_10();
  OUTLINED_FUNCTION_61_22();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v13 = type metadata accessor for SearchResult(0);
    v14 = v13[5];
    type metadata accessor for SpotlightRankingItem();
    OUTLINED_FUNCTION_85_16();
    lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v15);
    OUTLINED_FUNCTION_61_22();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v13[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    lazy protocol witness table accessor for type EmptyResolverSpecification<SearchAnswerEntity> and conformance EmptyResolverSpecification<A>(&lazy protocol witness table cache variable for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v2 + v13[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B16PropertyResponseVGMd, &_sSay10OmniSearch0B16PropertyResponseVGMR);
    lazy protocol witness table accessor for type [SearchPropertyResponse] and conformance <A> [A]();
    OUTLINED_FUNCTION_61_22();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v2 + v13[8]);
    lazy protocol witness table accessor for type SearchType and conformance SearchType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v2 + v13[9]);
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v18 = *(v7 + 8);
  v19 = OUTLINED_FUNCTION_1_28();
  v20(v19);
  OUTLINED_FUNCTION_61_2();
}

void SearchResult.description.getter()
{
  v0 = *(type metadata accessor for SearchResult(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v1 = CodableNSSecureCoding.wrappedValue.getter();
  outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v1);
  v2 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v34 = v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  SearchResultItem.type.getter(&v34);
  SearchResultKey.rawValue.getter();
  swift_isUniquelyReferenced_nonNull_native();
  v34 = v2;
  OUTLINED_FUNCTION_112_17();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  v3 = v34;
  v4 = CodableNSSecureCoding.wrappedValue.getter();
  v5 = [v4 attributeSet];

  v6 = CSSearchableItemAttributeSet.spotlightSearchResult.getter();
  if (!v6 || (outlined bridged method (ob) of @objc SFSearchResult.sectionBundleIdentifier.getter(v6), !v7))
  {
  }

  swift_isUniquelyReferenced_nonNull_native();
  v34 = v3;
  OUTLINED_FUNCTION_112_17();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  v8 = v34;
  v9 = CodableNSSecureCoding.wrappedValue.getter();
  v10 = [v9 attributeSet];

  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter(v10);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = v8;
  OUTLINED_FUNCTION_32_0();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  v11 = v34;
  v12 = v34 + 64;
  v13 = 1 << *(v34 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v34 + 64);
  v16 = (v13 + 63) >> 6;
  swift_retain_n();
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  if (v15)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v34 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type EmptyResolverSpecification<SearchAnswerEntity> and conformance EmptyResolverSpecification<A>(&lazy protocol witness table cache variable for type [String] and conformance [A]);
      BidirectionalCollection<>.joined(separator:)();

      return;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      do
      {
LABEL_11:
        v20 = (v17 << 10) | (16 * __clz(__rbit64(v15)));
        v21 = (*(v11 + 48) + v20);
        v22 = v21[1];
        v23 = (*(v11 + 56) + v20);
        v24 = *v23;
        v25 = v23[1];
        v34 = *v21;
        v35 = v22;
        swift_bridgeObjectRetain_n();

        MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
        v26 = OUTLINED_FUNCTION_112_17();
        MEMORY[0x25F89F6C0](v26);

        v27 = v34;
        v28 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v18 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v32;
        }

        v29 = *(v18 + 16);
        if (v29 >= *(v18 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v33;
        }

        v15 &= v15 - 1;
        *(v18 + 16) = v29 + 1;
        v30 = v18 + 16 * v29;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
      }

      while (v15);
    }
  }

  __break(1u);
}

uint64_t SearchResult.toJSONIntermediate()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_109_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v4 = CodableNSSecureCoding.wrappedValue.getter();
  v5 = [v4 attributeSet];

  v6 = [v5 attributeDictionary];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *(v7 + 16);
  if (v8)
  {
    v37 = v2;
    v38 = a1;
    v51 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v51;
    result = specialized Dictionary.startIndex.getter(v7);
    v13 = result;
    v14 = 0;
    v15 = v7 + 64;
    v39 = v11;
    v40 = v8;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v7 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v7 + 36) != v11)
      {
        goto LABEL_25;
      }

      v42 = v14;
      v43 = v11;
      v41 = v12;
      outlined init with copy of AnyHashable(*(v7 + 48) + 40 * v13, v48);
      outlined init with copy of Any(*(v7 + 56) + 32 * v13, v50);
      v45[0] = v48[0];
      v45[1] = v48[1];
      v46 = v49;
      outlined init with take of Any(v50, v47);
      v17 = AnyHashable.description.getter();
      v19 = v18;
      outlined init with copy of Any(v47, v44);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      result = outlined destroy of IntentApplication?(v45, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
      v51 = v9;
      v24 = *(v9 + 16);
      v23 = *(v9 + 24);
      v25 = v9;
      if (v24 >= v23 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v25 = v51;
      }

      *(v25 + 16) = v24 + 1;
      v26 = (v25 + 32 * v24);
      v26[4] = v17;
      v26[5] = v19;
      v26[6] = v20;
      v26[7] = v22;
      v27 = 1 << *(v7 + 32);
      if (v13 >= v27)
      {
        goto LABEL_26;
      }

      v15 = v7 + 64;
      v28 = *(v7 + 64 + 8 * v16);
      if ((v28 & (1 << v13)) == 0)
      {
        goto LABEL_27;
      }

      v9 = v25;
      if (*(v7 + 36) != v43)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v13 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v30 = v40;
      }

      else
      {
        v31 = v16 << 6;
        v32 = v16 + 1;
        v33 = (v7 + 72 + 8 * v16);
        v30 = v40;
        while (v32 < (v27 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = outlined consume of [String : String].Index._Variant(v13, v43, v41 & 1);
            v27 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        result = outlined consume of [String : String].Index._Variant(v13, v43, v41 & 1);
      }

LABEL_19:
      v12 = 0;
      v14 = v42 + 1;
      v13 = v27;
      v11 = v39;
      if (v42 + 1 == v30)
      {

        v2 = v37;
        a1 = v38;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_22:
    v36 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5();
    OUTLINED_FUNCTION_0_103();
    _s10OmniSearch0B10ResultItemOWOcTm_4(v2, a1);
    result = type metadata accessor for SearchResult.JSONIntermediate(0);
    *(a1 + *(result + 20)) = v36;
  }

  return result;
}

uint64_t SearchResult.JSONIntermediate.csAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchResult.JSONIntermediate(0) + 20));
}

uint64_t SearchResult.JSONIntermediate.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchResult.JSONIntermediate.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t SearchResult.JSONIntermediate.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x697274744173635FLL;
  }

  else
  {
    return 1835365481;
  }
}

OmniSearch::SearchResult::JSONIntermediate::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchResult.JSONIntermediate.CodingKeys@<W0>(Swift::String *a1@<X0>, OmniSearch::SearchResult::JSONIntermediate::CodingKeys_optional *a2@<X8>)
{
  result.value = SearchResult.JSONIntermediate.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchResult.JSONIntermediate.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SearchResult.JSONIntermediate.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResult.JSONIntermediate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResult.JSONIntermediate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResult.JSONIntermediate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E6ResultV16JSONIntermediateV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E6ResultV16JSONIntermediateV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_4();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys();
  OUTLINED_FUNCTION_35_8();
  type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_14_37();
  lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v12);
  OUTLINED_FUNCTION_131_10();
  OUTLINED_FUNCTION_61_22();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = *(v3 + *(type metadata accessor for SearchResult.JSONIntermediate(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_61_22();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_1_28();
  return v15(v14);
}

void SearchResult.JSONIntermediate.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  v24 = v5;
  v6 = type metadata accessor for SearchResultItem(0);
  v7 = OUTLINED_FUNCTION_17(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v27 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E6ResultV16JSONIntermediateV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E6ResultV16JSONIntermediateV10CodingKeysOGMR);
  v12 = OUTLINED_FUNCTION_14(v11);
  v25 = v13;
  v26 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_137_7();
  v18 = type metadata accessor for SearchResult.JSONIntermediate(v17);
  v19 = OUTLINED_FUNCTION_17(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_135_11();
  v22 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_37();
    lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v23);
    OUTLINED_FUNCTION_131_10();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_1_89();
    outlined init with take of Answer(v27, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v25 + 8))(v2, v26);
    *(v1 + *(v18 + 20)) = v28;
    _s10OmniSearch0B10ResultItemOWOcTm_4(v1, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    _s10OmniSearch0B10ResultItemOWOhTm_9();
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t SearchResult.JSONIntermediate.init(item:csAttributes:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_89();
  outlined init with take of Answer(v4, v5);
  result = type metadata accessor for SearchResult.JSONIntermediate(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t CSSearchableItem.asIntentFile()()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_4();
  v12[0] = 0;
  v6 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v12];
  v7 = v12[0];
  if (v6)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for UTType();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
    result = IntentFile.init(data:filename:type:)();
  }

  else
  {
    v10 = v7;
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

OmniSearch::SearchResultKey_optional __swiftcall SearchResultKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

OmniSearch::SearchResultKey_optional __swiftcall SearchResultKey.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = SearchResultKey.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SearchResultKey(void *a1@<X8>)
{
  SearchResultKey.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall SearchResultItem.description()()
{
  v1 = SearchResultItem.associatedValue.getter(v15);
  OUTLINED_FUNCTION_123_13(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15[0], v15[1], v15[2], v15[3]);
  v9 = *(v0 + 16);
  v10 = Encodable.oms_jsonPrettyPrinted()();
  OUTLINED_FUNCTION_143_12(v10._countAndFlagsBits, v10._object);
  v11 = OUTLINED_FUNCTION_94();
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::Bool __swiftcall SearchResultItem.isAnswer()()
{
  v2 = type metadata accessor for SearchResultItem(0);
  v3 = OUTLINED_FUNCTION_17(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_107_10();
  OUTLINED_FUNCTION_0_103();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v1, v0);
  OUTLINED_FUNCTION_32_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = type metadata accessor for MobileSMSDocument();
      goto LABEL_34;
    case 2u:
      v8 = type metadata accessor for CalendarEvent();
      goto LABEL_34;
    case 3u:
      v8 = type metadata accessor for Photo();
      goto LABEL_34;
    case 4u:
      v8 = type metadata accessor for NoteDocument();
      goto LABEL_34;
    case 5u:
      v8 = type metadata accessor for Reminder();
      goto LABEL_34;
    case 6u:
      v8 = type metadata accessor for PhoneHistory();
      goto LABEL_34;
    case 7u:
      v8 = type metadata accessor for VoicemailTranscript();
      goto LABEL_34;
    case 8u:
      v8 = type metadata accessor for JournalEntry();
      goto LABEL_34;
    case 9u:
      v8 = type metadata accessor for VoiceMemo();
      goto LABEL_34;
    case 0xAu:
      v8 = type metadata accessor for Safari();
      goto LABEL_34;
    case 0xBu:
      v8 = type metadata accessor for FileDocument();
      goto LABEL_34;
    case 0xCu:
      v8 = type metadata accessor for WalletTransaction();
      goto LABEL_34;
    case 0xDu:
      v8 = type metadata accessor for WalletPass();
      goto LABEL_34;
    case 0xEu:
      v8 = type metadata accessor for Contact();
      goto LABEL_34;
    case 0xFu:
      v8 = type metadata accessor for Appointment();
      goto LABEL_34;
    case 0x10u:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_115_13(v6);
      v7 = type metadata accessor for FlightReservation();
      goto LABEL_29;
    case 0x11u:
      v7 = type metadata accessor for HotelReservation();
      goto LABEL_29;
    case 0x12u:
      v8 = type metadata accessor for Party();
      goto LABEL_34;
    case 0x13u:
      v7 = type metadata accessor for RestaurantReservation();
LABEL_29:
      OUTLINED_FUNCTION_17(v7);
      (*(v10 + 8))();
      return 1;
    case 0x14u:
      v8 = type metadata accessor for RentalCarReservation();
      goto LABEL_34;
    case 0x15u:
      v8 = type metadata accessor for ShippingOrder();
      goto LABEL_34;
    case 0x16u:
      v8 = type metadata accessor for TicketedTransportation();
      goto LABEL_34;
    case 0x17u:
      v8 = type metadata accessor for TicketedShow();
      goto LABEL_34;
    case 0x18u:
      v8 = type metadata accessor for Trip();
      goto LABEL_34;
    case 0x19u:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_115_13(v9);
      goto LABEL_9;
    case 0x1Au:
    case 0x1Bu:
LABEL_9:
      _s10OmniSearch0B10ResultItemOWOhTm_9();
      return 0;
    case 0x1Cu:
      _s10OmniSearch0B10ResultItemOWOhTm_9();
      return 1;
    case 0x1Du:
      v8 = type metadata accessor for OnScreen();
      goto LABEL_34;
    case 0x1Eu:
      v8 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_34;
    default:
      v8 = type metadata accessor for EmailDocument();
LABEL_34:
      OUTLINED_FUNCTION_17(v8);
      (*(v12 + 8))();
      return 0;
  }
}

uint64_t SearchResultItem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4D53656C69626F6DLL && a2 == 0xE900000000000053;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F746F6870 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1702129518 && a2 == 0xE400000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x736948656E6F6870 && a2 == 0xEC00000079726F74;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x800000025DBEEC90 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x456C616E72756F6ALL && a2 == 0xEC0000007972746ELL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D654D6563696F76 && a2 == 0xE90000000000006FLL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x697261666173 && a2 == 0xE600000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 1701603686 && a2 == 0xE400000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x800000025DBEECC0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x615074656C6C6177 && a2 == 0xEA00000000007373;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6D746E696F707061 && a2 == 0xEB00000000746E65;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000011 && 0x800000025DBEDF90 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000010 && 0x800000025DBEDFD0 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7974726170 && a2 == 0xE500000000000000;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000015 && 0x800000025DBEDFB0 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000014 && 0x800000025DBEED10 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x676E697070696873 && a2 == 0xED0000726564724FLL;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000016 && 0x800000025DBEE020 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x646574656B636974 && a2 == 0xEC000000776F6853;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 1885958772 && a2 == 0xE400000000000000;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x65526C61626F6C67 && a2 == 0xEC000000746C7573;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000016 && 0x800000025DBEECF0 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x7469746E45707061 && a2 == 0xE900000000000079;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x6E65657263536E6FLL && a2 == 0xE800000000000000;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else if (a1 == 0xD000000000000014 && 0x800000025DBEED40 == a2)
                                                            {

                                                              return 30;
                                                            }

                                                            else
                                                            {
                                                              v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                              if (v36)
                                                              {
                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                return 31;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SearchResultItem.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C69616D65;
  switch(a1)
  {
    case 1:
      result = 0x4D53656C69626F6DLL;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x6F746F6870;
      break;
    case 4:
      result = 1702129518;
      break;
    case 5:
      result = 0x7265646E696D6572;
      break;
    case 6:
      result = 0x736948656E6F6870;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x456C616E72756F6ALL;
      break;
    case 9:
      result = 0x6D654D6563696F76;
      break;
    case 10:
      result = 0x697261666173;
      break;
    case 11:
      result = 1701603686;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x615074656C6C6177;
      break;
    case 14:
      result = 0x746361746E6F63;
      break;
    case 15:
      result = 0x6D746E696F707061;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x7974726170;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
    case 30:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0x676E697070696873;
      break;
    case 22:
    case 26:
      result = 0xD000000000000016;
      break;
    case 23:
      result = 0x646574656B636974;
      break;
    case 24:
      result = 1885958772;
      break;
    case 25:
      result = 0x65526C61626F6C67;
      break;
    case 27:
      result = 0x7469746E45707061;
      break;
    case 28:
      result = 0x726577736E61;
      break;
    case 29:
      result = 0x6E65657263536E6FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SearchResultItem.FlightReservationCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D75636F64 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65697265707865 && a2 == 0xEB00000000736563)
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

uint64_t SearchResultItem.FlightReservationCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E65697265707865;
  }

  else
  {
    return 0x746E656D75636F64;
  }
}

uint64_t SearchResultItem.AppEntityCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_108_11();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t SearchResultItem.GlobalResultCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65697265707865 && a2 == 0xEB00000000736563)
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

uint64_t SearchResultItem.GlobalResultCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E65697265707865;
  }

  else
  {
    return 12383;
  }
}

uint64_t SearchResultItem.AnswerCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E656D75636F64 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_108_11();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.AnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.AnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.AppointmentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.AppointmentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.CalendarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.CalendarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchResult.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchResultItem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchResultItem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SearchResultItem.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SearchResultItem.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.ContactCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.ContactCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.EmailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.EmailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.FileCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.FileCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchResultItem.FlightReservationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchResultItem.FlightReservationCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.FlightReservationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.FlightReservationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.GenericSpotlightItemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.GenericSpotlightItemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.GlobalEntitiesResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.GlobalEntitiesResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchResultItem.FlightReservationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchResultItem.GlobalResultCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchResultItem.GlobalResultCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.GlobalResultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.GlobalResultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.HotelReservationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.HotelReservationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.JournalEntryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.JournalEntryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.MobileSMSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.MobileSMSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.NoteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.NoteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.OnScreenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.OnScreenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.PartyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.PartyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.PhoneHistoryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.PhoneHistoryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.PhotoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.PhotoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.ReminderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.ReminderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.RentalCarReservationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.RentalCarReservationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.RestaurantReservationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.RestaurantReservationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.SafariCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.SafariCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.ShippingOrderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.ShippingOrderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.TicketedShowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.TicketedShowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.TicketedTransportationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.TicketedTransportationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.TripCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.TripCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.VoiceMemoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.VoiceMemoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.VoicemailTranscriptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.VoicemailTranscriptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.WalletPassCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.WalletPassCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchResultItem.WalletTransactionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchResultItem.WalletTransactionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void SearchResultItem.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v24;
  a20 = v25;
  v618 = v22;
  v619 = v21;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO016GenericSpotlightG10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO016GenericSpotlightG10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v28, &a17);
  v614[1] = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v33);
  v34 = type metadata accessor for GenericSpotlightItem();
  v35 = OUTLINED_FUNCTION_1_5(v34, &a15);
  v613 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO18OnScreenCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO18OnScreenCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v40, &a11);
  v609[1] = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v45);
  v46 = type metadata accessor for OnScreen();
  v47 = OUTLINED_FUNCTION_1_5(v46, &a9);
  v608 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO16AnswerCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO16AnswerCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v52, &v626);
  v604[1] = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v57);
  v599 = type metadata accessor for Answer();
  v58 = OUTLINED_FUNCTION_17(v599);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO19AppEntityCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO19AppEntityCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v62, &v623);
  v598 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO32GlobalEntitiesResponseCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO32GlobalEntitiesResponseCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v68, v622);
  v593[1] = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO06GlobalF10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO06GlobalF10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v74, &v624);
  v601 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v79);
  v592 = type metadata accessor for GlobalItem();
  v80 = OUTLINED_FUNCTION_17(v592);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO14TripCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO14TripCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v84, &v619);
  v590 = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v89);
  v90 = type metadata accessor for Trip();
  v91 = OUTLINED_FUNCTION_1_5(v90, &v617);
  v588[1] = v92;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO22TicketedShowCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO22TicketedShowCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v96, v614);
  v585 = v97;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v101);
  v102 = type metadata accessor for TicketedShow();
  v103 = OUTLINED_FUNCTION_1_5(v102, &v612);
  v583[1] = v104;
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO32TicketedTransportationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO32TicketedTransportationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v108, v609);
  v580[1] = v109;
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v113);
  v114 = type metadata accessor for TicketedTransportation();
  v115 = OUTLINED_FUNCTION_1_5(v114, &v607);
  v579 = v116;
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO23ShippingOrderCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO23ShippingOrderCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v120, v604);
  v575 = v121;
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v125);
  v126 = type metadata accessor for ShippingOrder();
  v127 = OUTLINED_FUNCTION_1_5(v126, &v602);
  v574[0] = v128;
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v131);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO30RentalCarReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO30RentalCarReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v132, &v598);
  v570 = v133;
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v137);
  v138 = type metadata accessor for RentalCarReservation();
  v139 = OUTLINED_FUNCTION_1_5(v138, &v596);
  v569[0] = v140;
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v143);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO31RestaurantReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO31RestaurantReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v144, v593);
  v565 = v145;
  v147 = *(v146 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v149);
  v150 = type metadata accessor for RestaurantReservation();
  v151 = OUTLINED_FUNCTION_1_5(v150, &v591);
  v564[0] = v152;
  v154 = *(v153 + 64);
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v155);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO15PartyCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO15PartyCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v156, v588);
  v560 = v157;
  v159 = *(v158 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v161);
  v162 = type metadata accessor for Party();
  v163 = OUTLINED_FUNCTION_1_5(v162, &v586);
  v559[0] = v164;
  v166 = *(v165 + 64);
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v167);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO26HotelReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO26HotelReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v168, v580);
  v551 = v169;
  v171 = *(v170 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v173);
  v174 = type metadata accessor for HotelReservation();
  v175 = OUTLINED_FUNCTION_1_5(v174, &v577);
  v548[1] = v176;
  v178 = *(v177 + 64);
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v179);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO27FlightReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO27FlightReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v180, v583);
  v555 = v181;
  v183 = *(v182 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v185);
  v186 = type metadata accessor for FlightReservation();
  v187 = OUTLINED_FUNCTION_1_5(v186, &v581);
  v553 = v188;
  v190 = *(v189 + 64);
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v191);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO21AppointmentCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO21AppointmentCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v192, v574);
  v545 = v193;
  v195 = *(v194 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v197);
  v198 = type metadata accessor for Appointment();
  v199 = OUTLINED_FUNCTION_1_5(v198, &v572);
  v543[1] = v200;
  v202 = *(v201 + 64);
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v203);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO17ContactCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO17ContactCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v204, v569);
  v540 = v205;
  v207 = *(v206 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v209);
  v210 = type metadata accessor for Contact();
  v211 = OUTLINED_FUNCTION_1_5(v210, &v567);
  v538[1] = v212;
  v214 = *(v213 + 64);
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v215);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO20WalletPassCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO20WalletPassCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v216, v564);
  v535 = v217;
  v219 = *(v218 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v220);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v221);
  v222 = type metadata accessor for WalletPass();
  v223 = OUTLINED_FUNCTION_1_5(v222, &v562);
  v533[1] = v224;
  v226 = *(v225 + 64);
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v227);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO27WalletTransactionCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO27WalletTransactionCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v228, v559);
  v530 = v229;
  v231 = *(v230 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v232);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v233);
  v234 = type metadata accessor for WalletTransaction();
  v235 = OUTLINED_FUNCTION_1_5(v234, &v557);
  v528[1] = v236;
  v238 = *(v237 + 64);
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v239);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO14FileCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO14FileCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v240, &v553);
  v525 = v241;
  v243 = *(v242 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v245);
  v246 = type metadata accessor for FileDocument();
  v247 = OUTLINED_FUNCTION_1_5(v246, &v551);
  v523[1] = v248;
  v250 = *(v249 + 64);
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v251);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO16SafariCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO16SafariCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v252, v548);
  v520 = v253;
  v255 = *(v254 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v256);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v257);
  v258 = type metadata accessor for Safari();
  v259 = OUTLINED_FUNCTION_1_5(v258, &v546);
  v518[1] = v260;
  v262 = *(v261 + 64);
  MEMORY[0x28223BE20](v259);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v263);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO19VoiceMemoCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO19VoiceMemoCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v264, v543);
  v515 = v265;
  v267 = *(v266 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v268);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v269);
  v270 = type metadata accessor for VoiceMemo();
  v271 = OUTLINED_FUNCTION_1_5(v270, &v541);
  v513[1] = v272;
  v274 = *(v273 + 64);
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v275);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO22JournalEntryCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO22JournalEntryCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v276, v538);
  v510 = v277;
  v279 = *(v278 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v280);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v281);
  v282 = type metadata accessor for JournalEntry();
  v283 = OUTLINED_FUNCTION_1_5(v282, &v536);
  v508[1] = v284;
  v286 = *(v285 + 64);
  MEMORY[0x28223BE20](v283);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v287);
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO29VoicemailTranscriptCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO29VoicemailTranscriptCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v288, v533);
  v505 = v289;
  v291 = *(v290 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v292);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v293);
  v294 = type metadata accessor for VoicemailTranscript();
  v295 = OUTLINED_FUNCTION_1_5(v294, &v531);
  v503[1] = v296;
  v298 = *(v297 + 64);
  MEMORY[0x28223BE20](v295);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v299);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO22PhoneHistoryCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO22PhoneHistoryCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v300, v528);
  v500 = v301;
  v303 = *(v302 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v304);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v305);
  v306 = type metadata accessor for PhoneHistory();
  v307 = OUTLINED_FUNCTION_1_5(v306, &v526);
  v498[1] = v308;
  v310 = *(v309 + 64);
  MEMORY[0x28223BE20](v307);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v311);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO18ReminderCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO18ReminderCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v312, v523);
  v495[32] = v313;
  v315 = *(v314 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v316);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v317);
  v318 = type metadata accessor for Reminder();
  v319 = OUTLINED_FUNCTION_1_5(v318, &v521);
  v495[30] = v320;
  v322 = *(v321 + 64);
  MEMORY[0x28223BE20](v319);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v323);
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO14NoteCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO14NoteCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v324, v518);
  v495[26] = v325;
  v327 = *(v326 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v328);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v329);
  v330 = type metadata accessor for NoteDocument();
  v331 = OUTLINED_FUNCTION_1_5(v330, &v516);
  v495[24] = v332;
  v334 = *(v333 + 64);
  MEMORY[0x28223BE20](v331);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v335);
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO15PhotoCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO15PhotoCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v336, v513);
  v495[20] = v337;
  v339 = *(v338 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v340);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v341);
  v342 = type metadata accessor for Photo();
  v343 = OUTLINED_FUNCTION_1_5(v342, &v511);
  v495[18] = v344;
  v346 = *(v345 + 64);
  MEMORY[0x28223BE20](v343);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v347);
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO18CalendarCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO18CalendarCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v348, v508);
  v495[14] = v349;
  v351 = *(v350 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v352);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v353);
  v354 = type metadata accessor for CalendarEvent();
  v355 = OUTLINED_FUNCTION_1_5(v354, &v506);
  v495[12] = v356;
  v358 = *(v357 + 64);
  MEMORY[0x28223BE20](v355);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v359);
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO19MobileSMSCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO19MobileSMSCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v360, v503);
  v495[8] = v361;
  v363 = *(v362 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v364);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v365);
  v366 = type metadata accessor for MobileSMSDocument();
  v367 = OUTLINED_FUNCTION_1_5(v366, &v501);
  v495[6] = v368;
  v370 = *(v369 + 64);
  MEMORY[0x28223BE20](v367);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v371);
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO15EmailCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO15EmailCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v372, v498);
  v495[2] = v373;
  v375 = *(v374 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v376);
  v377 = type metadata accessor for EmailDocument();
  v378 = OUTLINED_FUNCTION_14(v377);
  v495[1] = v379;
  v381 = *(v380 + 64);
  MEMORY[0x28223BE20](v378);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_107_10();
  v382 = type metadata accessor for SearchResultItem(0);
  v383 = OUTLINED_FUNCTION_17(v382);
  v385 = *(v384 + 64);
  MEMORY[0x28223BE20](v383);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_135_11();
  a10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E10ResultItemO10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_14(a10);
  v617 = v386;
  v388 = *(v387 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v389);
  v391 = v495 - v390;
  v392 = v27[3];
  __swift_project_boxed_opaque_existential_1(v27, v392);
  lazy protocol witness table accessor for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys();
  v620 = v391;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_0_103();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v619, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_25_33(&v500);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v443();
      LOBYTE(v623) = 1;
      lazy protocol witness table accessor for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys();
      OUTLINED_FUNCTION_6_54(&v499);
      OUTLINED_FUNCTION_44_28();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v444);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v503);
      v418 = &v502;
      goto LABEL_35;
    case 2u:
      OUTLINED_FUNCTION_25_33(&v505);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v435();
      LOBYTE(v623) = 2;
      lazy protocol witness table accessor for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys();
      OUTLINED_FUNCTION_6_54(&v504);
      OUTLINED_FUNCTION_48_19();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v436);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v508);
      v418 = &v507;
      goto LABEL_35;
    case 3u:
      OUTLINED_FUNCTION_25_33(&v510);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v439();
      LOBYTE(v623) = 3;
      lazy protocol witness table accessor for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys();
      OUTLINED_FUNCTION_6_54(&v509);
      OUTLINED_FUNCTION_46_27();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v440);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v513);
      v418 = &v512;
      goto LABEL_35;
    case 4u:
      OUTLINED_FUNCTION_25_33(&v515);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v421();
      LOBYTE(v623) = 4;
      lazy protocol witness table accessor for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys();
      OUTLINED_FUNCTION_6_54(&v514);
      OUTLINED_FUNCTION_53_21();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v422);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v518);
      v418 = &v517;
      goto LABEL_35;
    case 5u:
      OUTLINED_FUNCTION_25_33(&v520);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v449();
      LOBYTE(v623) = 5;
      lazy protocol witness table accessor for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys();
      OUTLINED_FUNCTION_6_54(&v519);
      OUTLINED_FUNCTION_41_22();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v450);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v523);
      v418 = &v522;
      goto LABEL_35;
    case 6u:
      OUTLINED_FUNCTION_25_33(&v525);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v455();
      LOBYTE(v623) = 6;
      lazy protocol witness table accessor for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys();
      OUTLINED_FUNCTION_6_54(&v524);
      OUTLINED_FUNCTION_38_28();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v456);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v528);
      v418 = &v527;
      goto LABEL_35;
    case 7u:
      OUTLINED_FUNCTION_25_33(&v530);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v441();
      LOBYTE(v623) = 7;
      lazy protocol witness table accessor for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys();
      OUTLINED_FUNCTION_6_54(&v529);
      OUTLINED_FUNCTION_45_22();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v442);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v533);
      v418 = &v532;
      goto LABEL_35;
    case 8u:
      OUTLINED_FUNCTION_25_33(&v535);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v461();
      LOBYTE(v623) = 8;
      lazy protocol witness table accessor for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys();
      OUTLINED_FUNCTION_6_54(&v534);
      OUTLINED_FUNCTION_35_32();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v462);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v538);
      v418 = &v537;
      goto LABEL_35;
    case 9u:
      OUTLINED_FUNCTION_25_33(&v540);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v425();
      LOBYTE(v623) = 9;
      lazy protocol witness table accessor for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys();
      OUTLINED_FUNCTION_6_54(&v539);
      OUTLINED_FUNCTION_51_21();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v426);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v543);
      v418 = &v542;
      goto LABEL_35;
    case 0xAu:
      OUTLINED_FUNCTION_25_33(&v545);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v459();
      LOBYTE(v623) = 10;
      lazy protocol witness table accessor for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys();
      OUTLINED_FUNCTION_6_54(&v544);
      OUTLINED_FUNCTION_36_28();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v460);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v548);
      v418 = &v547;
      goto LABEL_35;
    case 0xBu:
      OUTLINED_FUNCTION_25_33(&v550);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v419();
      LOBYTE(v623) = 11;
      lazy protocol witness table accessor for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys();
      OUTLINED_FUNCTION_6_54(&v549);
      OUTLINED_FUNCTION_54_27();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v420);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(&v553);
      v418 = &v552;
      goto LABEL_35;
    case 0xCu:
      OUTLINED_FUNCTION_25_33(&v556);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v423();
      LOBYTE(v623) = 12;
      lazy protocol witness table accessor for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys();
      OUTLINED_FUNCTION_6_54(&v555);
      OUTLINED_FUNCTION_52_24();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v424);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v559);
      v418 = &v558;
      goto LABEL_35;
    case 0xDu:
      OUTLINED_FUNCTION_25_33(&v561);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v453();
      LOBYTE(v623) = 13;
      lazy protocol witness table accessor for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys();
      OUTLINED_FUNCTION_6_54(&v560);
      OUTLINED_FUNCTION_39_27();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v454);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v564);
      v418 = &v563;
      goto LABEL_35;
    case 0xEu:
      OUTLINED_FUNCTION_25_33(&v566);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v416();
      LOBYTE(v623) = 14;
      lazy protocol witness table accessor for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys();
      OUTLINED_FUNCTION_6_54(&v565);
      OUTLINED_FUNCTION_55_18();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v417);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v569);
      v418 = &v568;
      goto LABEL_35;
    case 0xFu:
      OUTLINED_FUNCTION_25_33(&v571);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v437();
      LOBYTE(v623) = 15;
      lazy protocol witness table accessor for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys();
      OUTLINED_FUNCTION_6_54(&v570);
      OUTLINED_FUNCTION_47_21();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v438);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v574);
      v418 = &v573;
      goto LABEL_35;
    case 0x10u:
      v619 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48));
      v404 = v553;
      v405 = v616;
      v406 = v554;
      (*(v553 + 32))(v616, v23, v554);
      LOBYTE(v623) = 16;
      lazy protocol witness table accessor for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys();
      OUTLINED_FUNCTION_64_7(&v578);
      v407 = a10;
      v408 = v620;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v623) = 0;
      OUTLINED_FUNCTION_56_19();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v409);
      v410 = v618;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v410)
      {

        OUTLINED_FUNCTION_4_4(&v582);
        v411 = OUTLINED_FUNCTION_133_13();
        v412(v411);
        (*(v404 + 8))(v405, v406);
        OUTLINED_FUNCTION_104_12();
        v414 = v408;
        v415 = v407;
        goto LABEL_37;
      }

      *&v623 = v619;
      LOBYTE(v621) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
      OUTLINED_FUNCTION_87_12();
      lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](v489);
      OUTLINED_FUNCTION_119_12();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_4_4(&v582);
      v490 = OUTLINED_FUNCTION_133_13();
      v491(v490);
      (*(v404 + 8))(v616, v406);
      OUTLINED_FUNCTION_104_12();
      v486 = v620;
      v487 = a10;
      goto LABEL_42;
    case 0x11u:
      OUTLINED_FUNCTION_25_33(&v576);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v445();
      LOBYTE(v623) = 17;
      lazy protocol witness table accessor for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys();
      OUTLINED_FUNCTION_6_54(&v575);
      OUTLINED_FUNCTION_43_19();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v446);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v580);
      v418 = &v579;
      goto LABEL_35;
    case 0x12u:
      OUTLINED_FUNCTION_25_33(&v585);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v457();
      LOBYTE(v623) = 18;
      lazy protocol witness table accessor for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys();
      OUTLINED_FUNCTION_6_54(&v584);
      OUTLINED_FUNCTION_37_25();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v458);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v588);
      v418 = &v587;
      goto LABEL_35;
    case 0x13u:
      OUTLINED_FUNCTION_25_33(&v590);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v467();
      LOBYTE(v623) = 19;
      lazy protocol witness table accessor for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys();
      OUTLINED_FUNCTION_6_54(&v589);
      OUTLINED_FUNCTION_32_35();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v468);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v593);
      v418 = &v592;
      goto LABEL_35;
    case 0x14u:
      OUTLINED_FUNCTION_25_33(&v595);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v447();
      LOBYTE(v623) = 20;
      lazy protocol witness table accessor for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys();
      OUTLINED_FUNCTION_6_54(&v594);
      OUTLINED_FUNCTION_42_27();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v448);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(&v598);
      v418 = &v597;
      goto LABEL_35;
    case 0x15u:
      OUTLINED_FUNCTION_25_33(&v601);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v451();
      LOBYTE(v623) = 21;
      lazy protocol witness table accessor for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys();
      OUTLINED_FUNCTION_6_54(&v600);
      OUTLINED_FUNCTION_40_28();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v452);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v604);
      v418 = &v603;
      goto LABEL_35;
    case 0x16u:
      OUTLINED_FUNCTION_25_33(&v606);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v465();
      LOBYTE(v623) = 22;
      lazy protocol witness table accessor for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys();
      OUTLINED_FUNCTION_6_54(&v605);
      OUTLINED_FUNCTION_33_35();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v466);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v609);
      v418 = &v608;
      goto LABEL_35;
    case 0x17u:
      OUTLINED_FUNCTION_25_33(&v611);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v469();
      LOBYTE(v623) = 23;
      lazy protocol witness table accessor for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys();
      OUTLINED_FUNCTION_6_54(&v610);
      OUTLINED_FUNCTION_31_29();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v470);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(v614);
      v418 = &v613;
      goto LABEL_35;
    case 0x18u:
      OUTLINED_FUNCTION_25_33(&v616);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v433();
      LOBYTE(v623) = 24;
      lazy protocol witness table accessor for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys();
      OUTLINED_FUNCTION_6_54(&v615);
      OUTLINED_FUNCTION_49_25();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v434);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(&v619);
      v418 = &v618;
      goto LABEL_35;
    case 0x19u:
      v427 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48));
      outlined init with take of Answer(v23, v597);
      LOBYTE(v623) = 25;
      lazy protocol witness table accessor for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys();
      OUTLINED_FUNCTION_113_14();
      LOBYTE(v623) = 0;
      OUTLINED_FUNCTION_50_20();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v428);
      v429 = v602;
      v430 = v618;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v430)
      {

        v431 = OUTLINED_FUNCTION_18_31(&v623 + 8);
        v432(v431, v429);
        OUTLINED_FUNCTION_5_59();
        _s10OmniSearch0B10ResultItemOWOhTm_9();
LABEL_13:
        OUTLINED_FUNCTION_104_12();
        v414 = v23;
        v415 = v392;
LABEL_37:
        v413(v414, v415);
      }

      else
      {
        *&v623 = v427;
        LOBYTE(v621) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
        OUTLINED_FUNCTION_87_12();
        lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](v492);
        OUTLINED_FUNCTION_119_12();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v493 = OUTLINED_FUNCTION_18_31(&v623 + 8);
        v494(v493, v429);
        OUTLINED_FUNCTION_5_59();
        _s10OmniSearch0B10ResultItemOWOhTm_9();
        OUTLINED_FUNCTION_104_12();
        v486 = v23;
        v487 = v392;
LABEL_42:
        v488(v486, v487);
      }

LABEL_38:
      OUTLINED_FUNCTION_61_2();
      return;
    case 0x1Au:
      v482 = *v23;
      v481 = *(v23 + 8);
      LOBYTE(v623) = 26;
      lazy protocol witness table accessor for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys();
      v483 = v593[0];
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v623 = v482;
      *(&v623 + 1) = v481;
      lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse();
      v484 = v594;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_4_4(&v621 + 8);
      v485(v483, v484);
      v486 = OUTLINED_FUNCTION_19_42();
      goto LABEL_42;
    case 0x1Bu:
      v398 = *(v23 + 16);
      v623 = *v23;
      v624 = v398;
      v399 = *(v23 + 48);
      v625 = *(v23 + 32);
      v626 = v399;
      LOBYTE(v621) = 27;
      lazy protocol witness table accessor for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys();
      OUTLINED_FUNCTION_15_46();
      v621 = v623;
      v622[0] = v624;
      v622[1] = v625;
      v622[2] = v626;
      lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v400 = OUTLINED_FUNCTION_19_42();
      v401(v400);
      OUTLINED_FUNCTION_104_12();
      v402 = OUTLINED_FUNCTION_1_28();
      v403(v402);
      outlined destroy of AppEntityItem(&v623);
      goto LABEL_38;
    case 0x1Cu:
      outlined init with take of Answer(v23, v603);
      LOBYTE(v623) = 28;
      lazy protocol witness table accessor for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys();
      OUTLINED_FUNCTION_15_46();
      OUTLINED_FUNCTION_30_32();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v471);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v472 = OUTLINED_FUNCTION_19_42();
      v473(v472);
      OUTLINED_FUNCTION_57_20();
      _s10OmniSearch0B10ResultItemOWOhTm_9();
      goto LABEL_36;
    case 0x1Du:
      OUTLINED_FUNCTION_25_33(&v628);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v474();
      LOBYTE(v623) = 29;
      lazy protocol witness table accessor for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys();
      OUTLINED_FUNCTION_6_54(&v627);
      OUTLINED_FUNCTION_29_26();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v475);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(&a11);
      v418 = &a10;
      goto LABEL_35;
    case 0x1Eu:
      OUTLINED_FUNCTION_25_33(&a14);
      OUTLINED_FUNCTION_24_33();
      OUTLINED_FUNCTION_77_18();
      v463();
      LOBYTE(v623) = 30;
      lazy protocol witness table accessor for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys();
      OUTLINED_FUNCTION_6_54(&a13);
      OUTLINED_FUNCTION_34_35();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v464);
      OUTLINED_FUNCTION_79_14();
      OUTLINED_FUNCTION_16_46(&a17);
      v418 = &a16;
LABEL_35:
      v476 = OUTLINED_FUNCTION_18_31(v418);
      v477(v476, v23);
      v478 = *(v377 + 8);
      v479 = OUTLINED_FUNCTION_133_13();
      v480(v479);
LABEL_36:
      OUTLINED_FUNCTION_104_12();
      v414 = OUTLINED_FUNCTION_1_28();
      goto LABEL_37;
    default:
      OUTLINED_FUNCTION_64_7(&v496);
      (*(v393 + 32))(v20, v23, v377);
      LOBYTE(v623) = 0;
      lazy protocol witness table accessor for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys();
      OUTLINED_FUNCTION_113_14();
      OUTLINED_FUNCTION_58_14();
      lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v394);
      v395 = v495[3];
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v396 = OUTLINED_FUNCTION_18_31(&v497);
      v397(v396, v395);
      (*(v382 + 8))(v20, v377);
      goto LABEL_13;
  }
}

void SearchResultItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v21;
  a20 = v22;
  v576 = v20;
  v24 = v23;
  v565 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO016GenericSpotlightG10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO016GenericSpotlightG10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v26, &v566);
  v573 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  v567 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO18OnScreenCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO18OnScreenCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v32, &v565);
  v535 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_49_3();
  v564 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO16AnswerCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO16AnswerCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v38, &v563);
  v533 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO19AppEntityCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO19AppEntityCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v44, &v560);
  v528 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO32GlobalEntitiesResponseCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO32GlobalEntitiesResponseCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v50, &v559);
  v527 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO06GlobalF10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO06GlobalF10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v56, &v561);
  v531 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO14TripCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO14TripCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v62, &v557);
  v525 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO22TicketedShowCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO22TicketedShowCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v68, &v555);
  v523 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO32TicketedTransportationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO32TicketedTransportationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v74, &v553);
  v521 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO23ShippingOrderCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO23ShippingOrderCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v80, &v551);
  v519 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO30RentalCarReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO30RentalCarReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v86, &v549);
  v517 = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO31RestaurantReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO31RestaurantReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v92, &v547);
  v515 = v93;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO15PartyCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO15PartyCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v98, &v544);
  v511 = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO26HotelReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO26HotelReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v104, &v542);
  v509 = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO27FlightReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO27FlightReservationCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v110, &v545);
  v513 = v111;
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO21AppointmentCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO21AppointmentCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v116, &v540);
  v507 = v117;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO17ContactCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO17ContactCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v122, &v538);
  v505 = v123;
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO20WalletPassCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO20WalletPassCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v128, &v536);
  v503 = v129;
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO27WalletTransactionCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO27WalletTransactionCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v134, &v534);
  v501 = v135;
  v137 = *(v136 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v139);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO14FileCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO14FileCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v140, &v532);
  v499 = v141;
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v145);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO16SafariCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO16SafariCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v146, &v530);
  v497 = v147;
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v151);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO19VoiceMemoCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO19VoiceMemoCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v152, &v528);
  v495 = v153;
  v155 = *(v154 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v157);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO22JournalEntryCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO22JournalEntryCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v158, &v526);
  v493 = v159;
  v161 = *(v160 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v163);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO29VoicemailTranscriptCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO29VoicemailTranscriptCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v164, &v524);
  v491 = v165;
  v167 = *(v166 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v169);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO22PhoneHistoryCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO22PhoneHistoryCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v170, &v522);
  v489 = v171;
  v173 = *(v172 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v175);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO18ReminderCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO18ReminderCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v176, &v520);
  v566 = v177;
  v179 = *(v178 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v181);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO14NoteCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO14NoteCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v182, &v519);
  v487 = v183;
  v185 = *(v184 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v187);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO15PhotoCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO15PhotoCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v188, &v517);
  v485[1] = v189;
  v191 = *(v190 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v193);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO18CalendarCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO18CalendarCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v194, &v509);
  v485[0] = v195;
  v197 = *(v196 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v199);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO19MobileSMSCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO19MobileSMSCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v200, &v514);
  v484 = v201;
  v203 = *(v202 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v205);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO15EmailCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO15EmailCodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_1_5(v206, &v512);
  v482 = v207;
  v209 = *(v208 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v211);
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E10ResultItemO10CodingKeys33_DF7A98EA5F71C056A96516AC0E66C954LLOGMR);
  OUTLINED_FUNCTION_14(v574);
  v569 = v212;
  v214 = *(v213 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_49_3();
  a10 = v216;
  v568 = type metadata accessor for SearchResultItem(0);
  v217 = OUTLINED_FUNCTION_17(v568);
  v219 = *(v218 + 64);
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_39_0();
  v572 = v220;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_7_4();
  v571 = v222;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_7_4();
  v570 = v225;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v226);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v228);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v230);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v232);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v233);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v234);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v236);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v237);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v238);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v239);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v240);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v241);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v242);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v243);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v245);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v246);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v248);
  v250 = &v473 - v249;
  MEMORY[0x28223BE20](v251);
  v253 = &v473 - v252;
  MEMORY[0x28223BE20](v254);
  v256 = &v473 - v255;
  MEMORY[0x28223BE20](v257);
  v259 = &v473 - v258;
  MEMORY[0x28223BE20](v260);
  v262 = &v473 - v261;
  MEMORY[0x28223BE20](v263);
  v265 = &v473 - v264;
  v266 = v24[3];
  v267 = v24[4];
  v575 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v266);
  lazy protocol witness table accessor for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys();
  v268 = v576;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v268)
  {
    goto LABEL_8;
  }

  v476 = v262;
  v477 = v259;
  v478 = v256;
  v479 = v253;
  v480 = v250;
  v270 = v570;
  v269 = v571;
  v271 = v572;
  v272 = v573;
  v576 = v265;
  v273 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5(v273, 0);
  if (v275 == v276 >> 1)
  {
LABEL_7:
    v289 = v568;
    v290 = type metadata accessor for DecodingError();
    swift_allocError();
    v292 = v291;
    v293 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v292 = v289;
    v294 = v574;
    v295 = a10;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v290 - 8) + 104))(v292, *MEMORY[0x277D84160], v290);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_68_21();
    v296(v295, v294);
LABEL_8:
    v297 = v575;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v297);
    OUTLINED_FUNCTION_61_2();
    return;
  }

  v475 = 0;
  if (v275 < (v276 >> 1))
  {
    v474 = *(v274 + v275);
    v277 = specialized ArraySlice.subscript.getter(v275 + 1);
    v279 = v278;
    v281 = v280;
    swift_unknownObjectRelease();
    if (v279 == v281 >> 1)
    {
      v473 = v277;
      v282 = v272;
      v283 = v475;
      v284 = v566;
      v285 = v567;
      switch(v474)
      {
        case 1:
          LOBYTE(v577) = 1;
          lazy protocol witness table accessor for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys();
          v313 = v539;
          v314 = v574;
          v315 = a10;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v283)
          {
            OUTLINED_FUNCTION_68_21();
            v317 = v315;
            v334 = v314;
            goto LABEL_43;
          }

          type metadata accessor for MobileSMSDocument();
          OUTLINED_FUNCTION_44_28();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v335);
          OUTLINED_FUNCTION_26_31(v485);
          OUTLINED_FUNCTION_72_15();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_4_4(&v513);
          v398(v313, 0);
          OUTLINED_FUNCTION_68_21();
          v399(a10, v314);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 2:
          LOBYTE(v577) = 2;
          lazy protocol witness table accessor for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys();
          OUTLINED_FUNCTION_3_72(&v569);
          type metadata accessor for CalendarEvent();
          OUTLINED_FUNCTION_48_19();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v309);
          v269 = v478;
          OUTLINED_FUNCTION_72_15();
          OUTLINED_FUNCTION_102_13();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v377 = OUTLINED_FUNCTION_9_53(&v515);
          v378(v377);
          v379 = OUTLINED_FUNCTION_8_57();
          v380(v379);
          goto LABEL_47;
        case 3:
          LOBYTE(v577) = 3;
          lazy protocol witness table accessor for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys();
          OUTLINED_FUNCTION_3_72(&v570);
          type metadata accessor for Photo();
          OUTLINED_FUNCTION_46_27();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v311);
          OUTLINED_FUNCTION_26_31(&v486);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v385 = OUTLINED_FUNCTION_9_53(&v516);
          v386(v385);
          v387 = OUTLINED_FUNCTION_8_57();
          v388(v387);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 4:
          LOBYTE(v577) = 4;
          lazy protocol witness table accessor for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys();
          OUTLINED_FUNCTION_3_72(&v571);
          type metadata accessor for NoteDocument();
          OUTLINED_FUNCTION_53_21();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v304);
          OUTLINED_FUNCTION_26_31(&v487);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v358 = OUTLINED_FUNCTION_9_53(&v518);
          v359(v358);
          v360 = OUTLINED_FUNCTION_8_57();
          v361(v360);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 5:
          LOBYTE(v577) = 5;
          lazy protocol witness table accessor for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys();
          v320 = v574;
          v321 = a10;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v283)
          {
            OUTLINED_FUNCTION_68_21();
            v317 = v321;
            v334 = v320;
            goto LABEL_43;
          }

          type metadata accessor for Reminder();
          OUTLINED_FUNCTION_41_22();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v336);
          OUTLINED_FUNCTION_26_31(&v488);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v408 = *(v284 + 8);
          v409 = OUTLINED_FUNCTION_235_3();
          v410(v409);
          OUTLINED_FUNCTION_68_21();
          v411(v321, v574);
          OUTLINED_FUNCTION_78_18();
LABEL_48:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_89();
          v397 = v270;
          goto LABEL_49;
        case 6:
          LOBYTE(v577) = 6;
          lazy protocol witness table accessor for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys();
          OUTLINED_FUNCTION_3_72(&v573);
          type metadata accessor for PhoneHistory();
          OUTLINED_FUNCTION_38_28();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v324);
          OUTLINED_FUNCTION_26_31(&v489);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v420 = OUTLINED_FUNCTION_9_53(&v521);
          v421(v420);
          v422 = OUTLINED_FUNCTION_8_57();
          v423(v422);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 7:
          LOBYTE(v577) = 7;
          lazy protocol witness table accessor for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys();
          OUTLINED_FUNCTION_3_72(&v574);
          type metadata accessor for VoicemailTranscript();
          OUTLINED_FUNCTION_45_22();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v312);
          OUTLINED_FUNCTION_26_31(&v490);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v389 = OUTLINED_FUNCTION_9_53(&v523);
          v390(v389);
          v391 = OUTLINED_FUNCTION_8_57();
          v392(v391);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 8:
          LOBYTE(v577) = 8;
          lazy protocol witness table accessor for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys();
          OUTLINED_FUNCTION_3_72(&v575);
          type metadata accessor for JournalEntry();
          OUTLINED_FUNCTION_35_32();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v327);
          OUTLINED_FUNCTION_26_31(&v491);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v432 = OUTLINED_FUNCTION_9_53(&v525);
          v433(v432);
          v434 = OUTLINED_FUNCTION_8_57();
          v435(v434);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 9:
          LOBYTE(v577) = 9;
          lazy protocol witness table accessor for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys();
          OUTLINED_FUNCTION_3_72(&v576);
          type metadata accessor for VoiceMemo();
          OUTLINED_FUNCTION_51_21();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v306);
          OUTLINED_FUNCTION_26_31(&v492);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v366 = OUTLINED_FUNCTION_9_53(&v527);
          v367(v366);
          v368 = OUTLINED_FUNCTION_8_57();
          v369(v368);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 10:
          LOBYTE(v577) = 10;
          lazy protocol witness table accessor for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys();
          OUTLINED_FUNCTION_3_72(&v577);
          type metadata accessor for Safari();
          OUTLINED_FUNCTION_36_28();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v326);
          OUTLINED_FUNCTION_26_31(&v493);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v428 = OUTLINED_FUNCTION_9_53(&v529);
          v429(v428);
          v430 = OUTLINED_FUNCTION_8_57();
          v431(v430);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 11:
          LOBYTE(v577) = 11;
          lazy protocol witness table accessor for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys();
          OUTLINED_FUNCTION_3_72(&v577 + 8);
          type metadata accessor for FileDocument();
          OUTLINED_FUNCTION_54_27();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v303);
          OUTLINED_FUNCTION_26_31(&v494);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v354 = OUTLINED_FUNCTION_9_53(&v531);
          v355(v354);
          v356 = OUTLINED_FUNCTION_8_57();
          v357(v356);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 12:
          LOBYTE(v577) = 12;
          lazy protocol witness table accessor for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys();
          OUTLINED_FUNCTION_3_72(&v578);
          type metadata accessor for WalletTransaction();
          OUTLINED_FUNCTION_52_24();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v305);
          OUTLINED_FUNCTION_26_31(&v495);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v362 = OUTLINED_FUNCTION_9_53(&v533);
          v363(v362);
          v364 = OUTLINED_FUNCTION_8_57();
          v365(v364);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 13:
          LOBYTE(v577) = 13;
          lazy protocol witness table accessor for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys();
          OUTLINED_FUNCTION_3_72(&v578 + 8);
          type metadata accessor for WalletPass();
          OUTLINED_FUNCTION_39_27();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v323);
          OUTLINED_FUNCTION_26_31(&v496);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v416 = OUTLINED_FUNCTION_9_53(&v535);
          v417(v416);
          v418 = OUTLINED_FUNCTION_8_57();
          v419(v418);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 14:
          LOBYTE(v577) = 14;
          lazy protocol witness table accessor for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys();
          OUTLINED_FUNCTION_3_72(&v579);
          type metadata accessor for Contact();
          OUTLINED_FUNCTION_55_18();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v302);
          OUTLINED_FUNCTION_26_31(&v497);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v350 = OUTLINED_FUNCTION_9_53(&v537);
          v351(v350);
          v352 = OUTLINED_FUNCTION_8_57();
          v353(v352);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 15:
          LOBYTE(v577) = 15;
          lazy protocol witness table accessor for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys();
          OUTLINED_FUNCTION_3_72(&v579 + 8);
          type metadata accessor for Appointment();
          OUTLINED_FUNCTION_47_21();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v310);
          OUTLINED_FUNCTION_26_31(&v498);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v381 = OUTLINED_FUNCTION_9_53(&v539);
          v382(v381);
          v383 = OUTLINED_FUNCTION_8_57();
          v384(v383);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 16:
          LOBYTE(v577) = 16;
          lazy protocol witness table accessor for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys();
          OUTLINED_FUNCTION_64_7(&v581);
          OUTLINED_FUNCTION_12_49();
          type metadata accessor for FlightReservation();
          LOBYTE(v577) = 0;
          OUTLINED_FUNCTION_56_19();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v300);
          OUTLINED_FUNCTION_26_31(&v508);
          v301 = v514;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v347 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
          LOBYTE(v577) = 1;
          OUTLINED_FUNCTION_88_12();
          lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](v348);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v349 = v513;
          swift_unknownObjectRelease();
          (*(v349 + 8))(v285, v301);
          v464 = OUTLINED_FUNCTION_8_57();
          v465(v464);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 17:
          LOBYTE(v577) = 17;
          lazy protocol witness table accessor for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys();
          OUTLINED_FUNCTION_3_72(&v580);
          type metadata accessor for HotelReservation();
          OUTLINED_FUNCTION_43_19();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v318);
          OUTLINED_FUNCTION_26_31(&v499);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v400 = OUTLINED_FUNCTION_9_53(&v541);
          v401(v400);
          v402 = OUTLINED_FUNCTION_8_57();
          v403(v402);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 18:
          LOBYTE(v577) = 18;
          lazy protocol witness table accessor for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys();
          OUTLINED_FUNCTION_3_72(&v580 + 8);
          type metadata accessor for Party();
          OUTLINED_FUNCTION_37_25();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v325);
          OUTLINED_FUNCTION_26_31(&v500);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v424 = OUTLINED_FUNCTION_9_53(&v543);
          v425(v424);
          v426 = OUTLINED_FUNCTION_8_57();
          v427(v426);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 19:
          LOBYTE(v577) = 19;
          lazy protocol witness table accessor for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys();
          OUTLINED_FUNCTION_3_72(&a9);
          type metadata accessor for RestaurantReservation();
          OUTLINED_FUNCTION_32_35();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v330);
          OUTLINED_FUNCTION_26_31(&v501);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v442 = OUTLINED_FUNCTION_9_53(&v546);
          v443(v442);
          v444 = OUTLINED_FUNCTION_8_57();
          v445(v444);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 20:
          LOBYTE(v577) = 20;
          lazy protocol witness table accessor for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys();
          OUTLINED_FUNCTION_3_72(&a10);
          type metadata accessor for RentalCarReservation();
          OUTLINED_FUNCTION_42_27();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v319);
          OUTLINED_FUNCTION_26_31(&v502);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v404 = OUTLINED_FUNCTION_9_53(&v548);
          v405(v404);
          v406 = OUTLINED_FUNCTION_8_57();
          v407(v406);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 21:
          LOBYTE(v577) = 21;
          lazy protocol witness table accessor for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys();
          OUTLINED_FUNCTION_3_72(&a11);
          type metadata accessor for ShippingOrder();
          OUTLINED_FUNCTION_40_28();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v322);
          OUTLINED_FUNCTION_26_31(&v503);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v412 = OUTLINED_FUNCTION_9_53(&v550);
          v413(v412);
          v414 = OUTLINED_FUNCTION_8_57();
          v415(v414);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 22:
          LOBYTE(v577) = 22;
          lazy protocol witness table accessor for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys();
          OUTLINED_FUNCTION_3_72(&a12);
          type metadata accessor for TicketedTransportation();
          OUTLINED_FUNCTION_33_35();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v329);
          OUTLINED_FUNCTION_26_31(&v504);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v438 = OUTLINED_FUNCTION_9_53(&v552);
          v439(v438);
          v440 = OUTLINED_FUNCTION_8_57();
          v441(v440);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 23:
          LOBYTE(v577) = 23;
          lazy protocol witness table accessor for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys();
          OUTLINED_FUNCTION_3_72(&a13);
          type metadata accessor for TicketedShow();
          OUTLINED_FUNCTION_31_29();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v331);
          OUTLINED_FUNCTION_26_31(&v505);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v446 = OUTLINED_FUNCTION_9_53(&v554);
          v447(v446);
          v448 = OUTLINED_FUNCTION_8_57();
          v449(v448);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 24:
          LOBYTE(v577) = 24;
          lazy protocol witness table accessor for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys();
          OUTLINED_FUNCTION_3_72(&a14);
          type metadata accessor for Trip();
          OUTLINED_FUNCTION_49_25();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v308);
          OUTLINED_FUNCTION_26_31(&v506);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v373 = OUTLINED_FUNCTION_9_53(&v556);
          v374(v373);
          v375 = OUTLINED_FUNCTION_8_57();
          v376(v375);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 25:
          LOBYTE(v577) = 25;
          lazy protocol witness table accessor for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys();
          OUTLINED_FUNCTION_3_72(&a17);
          type metadata accessor for GlobalItem();
          LOBYTE(v577) = 0;
          OUTLINED_FUNCTION_50_20();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v307);
          OUTLINED_FUNCTION_64_7(&v511);
          OUTLINED_FUNCTION_20_31();
          v370 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
          LOBYTE(v577) = 1;
          OUTLINED_FUNCTION_88_12();
          lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](v371);
          OUTLINED_FUNCTION_102_13();
          v372 = v531;
          swift_unknownObjectRelease();
          v468 = *(v372 + 8);
          v469 = OUTLINED_FUNCTION_235_3();
          v470(v469);
          v471 = OUTLINED_FUNCTION_8_57();
          v472(v471);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_89();
          v397 = v285;
          goto LABEL_49;
        case 26:
          LOBYTE(v577) = 26;
          lazy protocol witness table accessor for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys();
          OUTLINED_FUNCTION_3_72(&a15);
          lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse();
          OUTLINED_FUNCTION_72_15();
          OUTLINED_FUNCTION_102_13();
          v338 = v569;
          OUTLINED_FUNCTION_71_19();
          swift_unknownObjectRelease();
          v458 = OUTLINED_FUNCTION_9_53(&v558);
          v459(v458);
          v460 = *(v338 + 8);
          v461 = OUTLINED_FUNCTION_30_5();
          v462(v461);
          v463 = *(&v577 + 1);
          v269 = v481;
          *v481 = v577;
          v269[1] = v463;
          goto LABEL_47;
        case 27:
          LOBYTE(v577) = 27;
          lazy protocol witness table accessor for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys();
          OUTLINED_FUNCTION_3_72(&a16);
          lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem();
          OUTLINED_FUNCTION_72_15();
          OUTLINED_FUNCTION_102_13();
          v298 = (v528 + 8);
          v299 = (v569 + 8);
          OUTLINED_FUNCTION_71_19();
          swift_unknownObjectRelease();
          v339 = *v298;
          v340 = OUTLINED_FUNCTION_235_3();
          v341(v340);
          v342 = *v299;
          v343 = OUTLINED_FUNCTION_30_5();
          v344(v343);
          v345 = v578;
          *v270 = v577;
          v270[1] = v345;
          v346 = v580;
          v270[2] = v579;
          v270[3] = v346;
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 28:
          LOBYTE(v577) = 28;
          lazy protocol witness table accessor for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys();
          OUTLINED_FUNCTION_3_72(&a18);
          type metadata accessor for Answer();
          OUTLINED_FUNCTION_30_32();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v332);
          OUTLINED_FUNCTION_26_31(&v507);
          OUTLINED_FUNCTION_20_31();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v450 = OUTLINED_FUNCTION_9_53(&v562);
          v451(v450);
          v452 = OUTLINED_FUNCTION_8_57();
          v453(v452);
          OUTLINED_FUNCTION_78_18();
          goto LABEL_48;
        case 29:
          LOBYTE(v577) = 29;
          lazy protocol witness table accessor for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys();
          OUTLINED_FUNCTION_12_49();
          type metadata accessor for OnScreen();
          OUTLINED_FUNCTION_29_26();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v333);
          OUTLINED_FUNCTION_72_15();
          OUTLINED_FUNCTION_102_13();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v454 = OUTLINED_FUNCTION_9_53(&v564);
          v455(v454);
          v456 = OUTLINED_FUNCTION_8_57();
          v457(v456);
LABEL_47:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_89();
          v397 = v269;
          goto LABEL_49;
        case 30:
          LOBYTE(v577) = 30;
          lazy protocol witness table accessor for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys();
          v328 = v574;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v283)
          {
            v317 = OUTLINED_FUNCTION_17_42();
            v334 = v328;
LABEL_43:
            v316(v317, v334);
            OUTLINED_FUNCTION_71_19();
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          type metadata accessor for GenericSpotlightItem();
          OUTLINED_FUNCTION_34_35();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v337);
          OUTLINED_FUNCTION_72_15();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          (*(v282 + 8))(v285, 0);
          v436 = OUTLINED_FUNCTION_17_42();
          v437(v436, v328);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_89();
          v397 = v271;
LABEL_49:
          v466 = v576;
          outlined init with take of Answer(v397, v576);
          v467 = v575;
          OUTLINED_FUNCTION_1_89();
          outlined init with take of Answer(v466, v565);
          v297 = v467;
          break;
        default:
          LOBYTE(v577) = 0;
          lazy protocol witness table accessor for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys();
          OUTLINED_FUNCTION_3_72(&v567);
          type metadata accessor for EmailDocument();
          OUTLINED_FUNCTION_58_14();
          lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v286);
          v287 = v476;
          v288 = v483;
          OUTLINED_FUNCTION_102_13();
          OUTLINED_FUNCTION_23_29();
          swift_unknownObjectRelease();
          v393 = OUTLINED_FUNCTION_18_31(&v510);
          v394(v393, v288);
          v395 = OUTLINED_FUNCTION_8_57();
          v396(v395);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_89();
          v397 = v287;
          goto LABEL_49;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_9()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t lazy protocol witness table accessor for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResult.CodingKeys and conformance SearchResult.CodingKeys);
  }

  return result;
}

uint64_t _s10OmniSearch0B10ResultItemOWOcTm_4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResult.JSONIntermediate.CodingKeys and conformance SearchResult.JSONIntermediate.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.CodingKeys and conformance SearchResultItem.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GenericSpotlightItemCodingKeys and conformance SearchResultItem.GenericSpotlightItemCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.OnScreenCodingKeys and conformance SearchResultItem.OnScreenCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AnswerCodingKeys and conformance SearchResultItem.AnswerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AppEntityCodingKeys and conformance SearchResultItem.AppEntityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GlobalEntitiesResponseCodingKeys and conformance SearchResultItem.GlobalEntitiesResponseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.GlobalResultCodingKeys and conformance SearchResultItem.GlobalResultCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TripCodingKeys and conformance SearchResultItem.TripCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TicketedShowCodingKeys and conformance SearchResultItem.TicketedShowCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.TicketedTransportationCodingKeys and conformance SearchResultItem.TicketedTransportationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ShippingOrderCodingKeys and conformance SearchResultItem.ShippingOrderCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.RentalCarReservationCodingKeys and conformance SearchResultItem.RentalCarReservationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.RestaurantReservationCodingKeys and conformance SearchResultItem.RestaurantReservationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PartyCodingKeys and conformance SearchResultItem.PartyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.HotelReservationCodingKeys and conformance SearchResultItem.HotelReservationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.FlightReservationCodingKeys and conformance SearchResultItem.FlightReservationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.AppointmentCodingKeys and conformance SearchResultItem.AppointmentCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ContactCodingKeys and conformance SearchResultItem.ContactCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.WalletPassCodingKeys and conformance SearchResultItem.WalletPassCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.WalletTransactionCodingKeys and conformance SearchResultItem.WalletTransactionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.FileCodingKeys and conformance SearchResultItem.FileCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.SafariCodingKeys and conformance SearchResultItem.SafariCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.VoiceMemoCodingKeys and conformance SearchResultItem.VoiceMemoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.JournalEntryCodingKeys and conformance SearchResultItem.JournalEntryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.VoicemailTranscriptCodingKeys and conformance SearchResultItem.VoicemailTranscriptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PhoneHistoryCodingKeys and conformance SearchResultItem.PhoneHistoryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.ReminderCodingKeys and conformance SearchResultItem.ReminderCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.NoteCodingKeys and conformance SearchResultItem.NoteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.PhotoCodingKeys and conformance SearchResultItem.PhotoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.CalendarCodingKeys and conformance SearchResultItem.CalendarCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.MobileSMSCodingKeys and conformance SearchResultItem.MobileSMSCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultItem.EmailCodingKeys and conformance SearchResultItem.EmailCodingKeys);
  }

  return result;
}

uint64_t specialized SearchItem.matchesAsset(_:)()
{
  v0 = type metadata accessor for SearchResultItem(0);
  v1 = OUTLINED_FUNCTION_114(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_107_10();
  OUTLINED_FUNCTION_0_103();
  v4 = OUTLINED_FUNCTION_119();
  _s10OmniSearch0B10ResultItemOWOcTm_4(v4, v5);
  SearchResultItem.associatedValue.getter(v16);
  v6 = v17;
  v7 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v7 + 32))(v6, v7);
  OUTLINED_FUNCTION_98_10();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  SearchResultItem.associatedValue.getter(v16);
  v8 = v17;
  v9 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v10 = (*(v9 + 32))(v8, v9);
  v12 = v11;
  OUTLINED_FUNCTION_11_59();
  _s10OmniSearch0B10ResultItemOWOhTm_9();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if (v7 == v10 && v6 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

uint64_t specialized SearchItem.matchesAsset(_:)(uint64_t *a1, uint64_t *a2)
{
  v10 = *a2;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  v11 = *a1;
  if (v3 == dispatch thunk of CustomStringConvertible.description.getter() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t instantiation function for generic protocol witness table for SearchResultItem(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(&lazy protocol witness table cache variable for type SearchResultItem and conformance SearchResultItem);
  a1[2] = lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(&lazy protocol witness table cache variable for type SearchResultItem and conformance SearchResultItem);
  result = lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(&lazy protocol witness table cache variable for type SearchResultItem and conformance SearchResultItem);
  a1[3] = result;
  return result;
}

void type metadata completion function for SearchResult()
{
  type metadata accessor for SearchResultItem(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SpotlightRankingItem();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CodableNSSecureCoding<CSSearchableItem>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [SearchPropertyResponse]();
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for CodableNSSecureCoding<CSSearchableItem>()
{
  if (!lazy cache variable for type metadata for CodableNSSecureCoding<CSSearchableItem>)
  {
    type metadata accessor for CSSearchableItem();
    lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(&lazy protocol witness table cache variable for type CSSearchableItem and conformance NSObject);
    v0 = type metadata accessor for CodableNSSecureCoding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableNSSecureCoding<CSSearchableItem>);
    }
  }
}

void type metadata accessor for [SearchPropertyResponse]()
{
  if (!lazy cache variable for type metadata for [SearchPropertyResponse])
  {
    type metadata accessor for SearchPropertyResponse(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [SearchPropertyResponse]);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for SearchResult.JSONIntermediate()
{
  type metadata accessor for SearchResultItem(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : String]?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for SearchResultItem()
{
  type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: EmailDocument), MEMORY[0x277D371F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: MobileSMSDocument), MEMORY[0x277D372B8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: CalendarEvent), MEMORY[0x277D371D8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: Photo), MEMORY[0x277D37540]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: NoteDocument), MEMORY[0x277D37178]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: Reminder), MEMORY[0x277D375C0]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: PhoneHistory), MEMORY[0x277D37198]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: VoicemailTranscript), MEMORY[0x277D37328]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: JournalEntry), MEMORY[0x277D37158]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: VoiceMemo), MEMORY[0x277D375E0]);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: Safari), MEMORY[0x277D37560]);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: FileDocument), MEMORY[0x277D37108]);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: WalletTransaction), MEMORY[0x277D372D8]);
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: WalletPass), MEMORY[0x277D370C8]);
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: Contact), MEMORY[0x277D37580]);
                              if (v14 <= 0x3F)
                              {
                                type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: Appointment), MEMORY[0x277D370E8]);
                                if (v15 <= 0x3F)
                                {
                                  type metadata accessor for (document: FlightReservation, experiences: [DialogExperience])(319, &lazy cache variable for type metadata for (document: FlightReservation, experiences: [DialogExperience]), MEMORY[0x277D37290]);
                                  if (v16 <= 0x3F)
                                  {
                                    type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: HotelReservation), MEMORY[0x277D37250]);
                                    if (v17 <= 0x3F)
                                    {
                                      type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: Party), MEMORY[0x277D37520]);
                                      if (v18 <= 0x3F)
                                      {
                                        type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: RestaurantReservation), MEMORY[0x277D373D8]);
                                        if (v19 <= 0x3F)
                                        {
                                          type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: RentalCarReservation), MEMORY[0x277D37368]);
                                          if (v20 <= 0x3F)
                                          {
                                            type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: ShippingOrder), MEMORY[0x277D37218]);
                                            if (v21 <= 0x3F)
                                            {
                                              type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: TicketedTransportation), MEMORY[0x277D37438]);
                                              if (v22 <= 0x3F)
                                              {
                                                type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: TicketedShow), MEMORY[0x277D371B8]);
                                                if (v23 <= 0x3F)
                                                {
                                                  type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: Trip), MEMORY[0x277D37500]);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    type metadata accessor for (document: FlightReservation, experiences: [DialogExperience])(319, &lazy cache variable for type metadata for (GlobalItem, experiences: [DialogExperience]), type metadata accessor for GlobalItem);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: Answer), type metadata accessor for Answer);
                                                      if (v26 <= 0x3F)
                                                      {
                                                        type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: OnScreen), MEMORY[0x277D375A0]);
                                                        if (v27 <= 0x3F)
                                                        {
                                                          type metadata accessor for (document: EmailDocument)(319, &lazy cache variable for type metadata for (document: GenericSpotlightItem), MEMORY[0x277D37348]);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for (document: FlightReservation, experiences: [DialogExperience])(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (document: EmailDocument)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchResultKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchResultKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          result = OUTLINED_FUNCTION_112_6(result, a2 + 30);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchResult.JSONIntermediate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_112_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchResultItem.EmailCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_3_72@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 176);
  v5 = *(v1 - 72);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_6_54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 72);
  v5 = *(v1 - 232);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_12_49()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 72);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_15_46()
{
  v2 = *(v0 - 72);
  v3 = *(v0 - 232);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_16_46@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 248);

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_20_31()
{
  v2 = *(v0 - 256);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_59_18()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_60_16()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_78_18()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_81_20()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_89_17()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_92_12()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_9();
}

uint64_t OUTLINED_FUNCTION_93_14()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_9();
}

uint64_t OUTLINED_FUNCTION_94_13()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_9();
}

uint64_t OUTLINED_FUNCTION_95_11()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_9();
}

uint64_t OUTLINED_FUNCTION_102_13()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_108_11()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_109_16()
{
  result = type metadata accessor for SearchResult(0);
  v1 = *(result + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_113_14()
{
  v2 = *(v0 - 72);
  v3 = *(v0 - 232);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_114_13()
{
}

uint64_t OUTLINED_FUNCTION_115_13(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 48));
}

void *OUTLINED_FUNCTION_123_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_project_boxed_opaque_existential_1(&a10, v14);
}

uint64_t OUTLINED_FUNCTION_134_13()
{
  result = v0;
  v3 = *(v1 - 240);
  return result;
}

void OUTLINED_FUNCTION_139_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_140_11()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_143_12(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_1Tm(va);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

OmniSearch::SearchServiceResult __swiftcall SearchServiceResult.init(searchResults:ecrResult:)(Swift::OpaquePointer searchResults, Swift::OpaquePointer_optional ecrResult)
{
  v2->_rawValue = searchResults._rawValue;
  v2[1]._rawValue = ecrResult.value;
  result.ecrResult = ecrResult;
  result.searchResults = searchResults;
  return result;
}

Swift::Bool __swiftcall SearchService.supports(sources:)(OmniSearch::SearchSources sources)
{
  v2 = *sources.rawValue;
  (*(v1 + 16))(&v4);
  return (v4 & v2) != 0;
}

BOOL protocol witness for SearchService.supports(sources:) in conformance LocalSearchService(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return specialized SearchService.supports(sources:)(*a1);
}

BOOL protocol witness for SearchService.supports(sources:) in conformance UCGSearchService(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return specialized SearchService.supports(sources:)(*a1);
}

void specialized OptionSet<>.remove(_:)(uint64_t a1@<X8>, int a2@<W0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_2_80(a1);
}

uint64_t specialized OptionSet<>.remove(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t specialized OptionSet<>.update(with:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

uint64_t specialized OptionSet<>.formSymmetricDifference(_:)(uint64_t result)
{
  *v1 ^= result;
  return result;
}

{
  *v1 ^= result;
  return result;
}

uint64_t specialized SetAlgebra.subtract(_:)(uint64_t result)
{
  *v1 &= ~result;
  return result;
}

{
  *v1 &= ~result;
  return result;
}

void SearchSources.debugDescription.getter()
{
  v1 = *v0;
  lazy protocol witness table accessor for type SearchSources and conformance SearchSources();
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = v2;
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v9 << 6);
    if ((*(*(v3 + 48) + 8 * v13) & ~v1) == 0)
    {
      v14 = (*(v3 + 56) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v10 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v21;
      }

      v17 = *(v10 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v10 + 24) >> 1)
      {
        v24 = v17 + 1;
        v22 = *(v10 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v22;
        v18 = v24;
        v10 = v23;
      }

      *(v10 + 16) = v18;
      v19 = v10 + 16 * v17;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      BidirectionalCollection<>.joined(separator:)();

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t SearchType.rawValue.getter(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6867696C746F7073;
      break;
    case 2:
      result = 0x6C61626F6C67;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void protocol witness for SetAlgebra.intersection(_:) in conformance SearchSources(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  specialized OptionSet.intersection(_:)(a1);
}

OmniSearch::SearchSources protocol witness for RawRepresentable.init(rawValue:) in conformance SearchSources@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SearchSources.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchSources@<X0>(uint64_t *a1@<X8>)
{
  result = SearchSources.rawValue.getter();
  *a1 = result;
  return result;
}

OmniSearch::SearchType_optional __swiftcall SearchType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchType.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

OmniSearch::SearchType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchType@<W0>(Swift::String *a1@<X0>, OmniSearch::SearchType_optional *a2@<X8>)
{
  result.value = SearchType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchType@<X0>(unint64_t *a1@<X8>)
{
  result = SearchType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SearchServiceResult.ecrResult.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchSources and conformance SearchSources()
{
  result = lazy protocol witness table cache variable for type SearchSources and conformance SearchSources;
  if (!lazy protocol witness table cache variable for type SearchSources and conformance SearchSources)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSources and conformance SearchSources);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSources and conformance SearchSources;
  if (!lazy protocol witness table cache variable for type SearchSources and conformance SearchSources)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSources and conformance SearchSources);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSources and conformance SearchSources;
  if (!lazy protocol witness table cache variable for type SearchSources and conformance SearchSources)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSources and conformance SearchSources);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSources and conformance SearchSources;
  if (!lazy protocol witness table cache variable for type SearchSources and conformance SearchSources)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSources and conformance SearchSources);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSources and conformance SearchSources;
  if (!lazy protocol witness table cache variable for type SearchSources and conformance SearchSources)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSources and conformance SearchSources);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SearchService.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

void *_sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_yps12Zip2SequenceVySaySSGs10ArraySliceVyypGGTt1g5166_s10OmniSearch23SourceDocumentRetrieverC15fetchAttributes15protectionClass8bundleId03docK010attributesSDySSypGSgSo20NSFileProtectionTypea_S2SSaySSGSgtYaFypyp_yptXEfU_Tf1nc_n(void *result)
{
  v4 = result[3];
  v5 = result[4] >> 1;
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v12[3] = v2;
    v12[4] = v3;
    v8 = result;
    if (v7 >= *(*result + 16))
    {
      v9 = *(*result + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
      v10 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v10 = MEMORY[0x277D84F98];
    }

    v12[0] = v10;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v8, 1, v12);
    v11 = v12[0];
    if (v1)
    {
    }

    return v11;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t SourceDocumentRetriever.__allocating_init()()
{
  OUTLINED_FUNCTION_102_14();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() defaultSearchableIndex];
  return v0;
}

uint64_t one-time initialization function for searchableAttributes()
{
  if (one-time initialization token for fetchAttributes != -1)
  {
    swift_once();
  }

  static SourceDocumentRetriever.searchableAttributes = static LocalIndexClient.fetchAttributes;
}

uint64_t SourceDocumentRetriever.fetchDocs(_:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for SearchResult(0);
  v1[5] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_160();
  v1[8] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v2[2];
  v4 = MEMORY[0x277D84F90];
  v0[10] = 0;
  v0[11] = v4;
  v0[9] = v3;
  if (v3)
  {
    v0[12] = v2[4];
    v0[13] = v2[5];
    v0[14] = v2[6];
    v0[15] = v2[7];
    OUTLINED_FUNCTION_68_22(v1);
    v6 = *(v5 + 104);

    v18 = v6 + *v6;
    v7 = v6[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[16] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_58_15(v8);

    return v11(v10);
  }

  else
  {
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[4];

    OUTLINED_FUNCTION_62();
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  v4 = *(v2 + 128);
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    v7 = *(v3 + 88);

    v8 = SourceDocumentRetriever.fetchDocs(_:);
  }

  else
  {
    v8 = SourceDocumentRetriever.fetchDocs(_:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[17];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[4];

  OUTLINED_FUNCTION_127();

  return v7();
}

void SourceDocumentRetriever.fetchDocs(_:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v3, v4, v5) == 1)
  {
    v6 = v0[11];

    outlined destroy of IntentApplication?(v2, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v7 = v0[15];
    v8 = v0[13];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logging.search);
    OUTLINED_FUNCTION_37_3();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[14];
      v12 = v0[15];
      v15 = v0[12];
      v14 = v0[13];
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_51_13();
      *v7 = 136315394;

      OUTLINED_FUNCTION_118_0();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_169_10();
      *(v7 + 4) = v13;
      *(v7 + 12) = 2080;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v7 + 14) = v16;
      OUTLINED_FUNCTION_223_6(&dword_25D85C000, v17, v18, "Failed to fetch document with docId: %s, bundleId: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    v66 = *(v0 + 7);
    v20 = v0[12];
    v19 = v0[13];
    lazy protocol witness table accessor for type SourceDocumentRetriever.DocumentRetrievalError and conformance SourceDocumentRetriever.DocumentRetrievalError();
    swift_allocError();
    *v21 = v66;
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    *(v21 + 32) = 0;
    swift_willThrow();
    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[4];

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_214_6();

    __asm { BRAA            X1, X16 }
  }

  v27 = v0[15];
  v28 = v0[13];
  v29 = v0[11];
  v31 = v0[7];
  v30 = v0[8];

  v32 = OUTLINED_FUNCTION_26_2();
  outlined init with take of SearchResult(v32, v33);
  _s10OmniSearch0B6ResultVWOcTm_7(v30, v31, type metadata accessor for SearchResult);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v0[11];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v54 = *(v35 + 16);
    OUTLINED_FUNCTION_117();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55, v56, v57, v58);
    v35 = v59;
  }

  v36 = *(v35 + 16);
  if (v36 >= *(v35 + 24) >> 1)
  {
    OUTLINED_FUNCTION_117();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60, v61, v62, v63);
    v35 = v64;
  }

  v37 = v0[7];
  v38 = v0[6];
  _s10OmniSearch0B6ResultVWOhTm_4(v0[8], type metadata accessor for SearchResult);
  *(v35 + 16) = v36 + 1;
  outlined init with take of SearchResult(v37, v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36);
  v39 = v0[9];
  v40 = v0[10] + 1;
  v0[10] = v40;
  v0[11] = v35;
  if (v40 == v39)
  {
    v42 = v0[7];
    v41 = v0[8];
    v43 = v0[4];

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_214_6();

    __asm { BRAA            X2, X16 }
  }

  v46 = v0[3];
  v47 = (v0[2] + 32 * v40);
  v0[12] = v47[4];
  v0[13] = v47[5];
  v0[14] = v47[6];
  v0[15] = v47[7];
  v48 = *(*v46 + 104);

  v65 = v48 + *v48;
  v49 = v48[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[16] = v50;
  *v50 = v51;
  OUTLINED_FUNCTION_58_15();
  OUTLINED_FUNCTION_214_6();

  __asm { BRAA            X5, X16 }
}

uint64_t SourceDocumentRetriever.fetchDoc(bundleId:docId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t SourceDocumentRetriever.fetchDoc(bundleId:docId:)()
{
  v2 = v0[3];
  v1 = v0[4];
  OUTLINED_FUNCTION_98_2();
  v4 = v2 == 0xD000000000000013 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_251_2(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[8] = v5;
    *v5 = v6;
    OUTLINED_FUNCTION_4_67(v5);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchCalendarDocument(docId:)();
  }

  OUTLINED_FUNCTION_37_26();
  v11 = v10 == 0xD00000000000001BLL && v9 == v1;
  if (v11 || (OUTLINED_FUNCTION_183_9() & 1) != 0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[9] = v12;
    *v12 = v13;
    OUTLINED_FUNCTION_4_67(v12);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchContactsDocument(docId:)();
  }

  v15 = v0[3];
  OUTLINED_FUNCTION_98_2();
  v17 = v15 == 0xD000000000000014 && v16 == v1;
  if (v17 || (v18 = v0[4], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[10] = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_4_67(v19);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchMailDocument(docId:)(v21, v22, v23);
  }

  OUTLINED_FUNCTION_98_2();
  v26 = v2 == 0xD000000000000013 && v25 == v1;
  if (v26 || (v27 = v0[3], v28 = v0[4], OUTLINED_FUNCTION_251_2(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[11] = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_4_67(v29);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchMessagesDocument(docId:)();
  }

  v32 = v0[3];
  OUTLINED_FUNCTION_98_2();
  v34 = v32 == 0xD000000000000015 && v33 == v1;
  if (v34 || (v35 = v0[4], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[12] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_4_67(v36);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchNoteDocument(docId:)();
  }

  OUTLINED_FUNCTION_37_26();
  v41 = v40 == 0xD000000000000019 && v39 == v1;
  if (v41 || (OUTLINED_FUNCTION_183_9() & 1) != 0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[13] = v42;
    *v42 = v43;
    OUTLINED_FUNCTION_4_67(v42);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchPhotosDocument(docId:)();
  }

  OUTLINED_FUNCTION_37_26();
  v47 = v46 == 0xD00000000000002BLL && v45 == v1;
  if (v47 || (OUTLINED_FUNCTION_183_9() & 1) != 0 || ((OUTLINED_FUNCTION_37_26(), v49 == 0xD000000000000023) ? (v50 = v48 == v1) : (v50 = 0), v50 || (OUTLINED_FUNCTION_183_9() & 1) != 0))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[14] = v51;
    *v51 = v52;
    v51[1] = SourceDocumentRetriever.fetchDoc(bundleId:docId:);
    v53 = v0[6];
    v54 = v0[7];
    v56 = v0[4];
    v55 = v0[5];
    v57 = v0[2];
    v58 = v0[3];
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchFileDocument(docId:bundleId:)();
  }

  OUTLINED_FUNCTION_37_26();
  v62 = v61 == 0xD00000000000001ALL && v60 == v1;
  if (v62 || (OUTLINED_FUNCTION_183_9() & 1) != 0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[15] = v63;
    *v63 = v64;
    OUTLINED_FUNCTION_4_67(v63);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchEventDocument(docId:)();
  }

  OUTLINED_FUNCTION_98_2();
  v67 = v2 == 0xD000000000000013 && v66 == v1;
  if (v67 || (v68 = v0[3], v69 = v0[4], OUTLINED_FUNCTION_251_2(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[16] = v70;
    *v70 = v71;
    OUTLINED_FUNCTION_4_67(v70);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchReminderDocument(docId:)();
  }

  OUTLINED_FUNCTION_37_26();
  v75 = v74 == 0xD000000000000012 && v73 == v1;
  if (v75 || (OUTLINED_FUNCTION_183_9() & 1) != 0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[17] = v76;
    *v76 = v77;
    OUTLINED_FUNCTION_4_67(v76);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchWalletDocument(docId:)();
  }

  OUTLINED_FUNCTION_37_26();
  v81 = v80 == 0xD000000000000016 && v79 == v1;
  if (v81 || (OUTLINED_FUNCTION_183_9() & 1) != 0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[18] = v82;
    *v82 = v83;
    OUTLINED_FUNCTION_4_67(v82);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchSafariHistory(docId:)();
  }

  OUTLINED_FUNCTION_37_26();
  v86 = 0xD00000000000001CLL;
  v88 = v87 == 0xD00000000000001CLL && v85 == v1;
  if (v88 || (v89 = v0[4], v90 = _stringCompareWithSmolCheck(_:_:expecting:)(), v86 = v0[3], (v90 & 1) != 0))
  {
    v91 = v0[4];
    v126 = 0;
    v128 = 0xE000000000000000;
    _StringGuts.grow(_:)(90);
    MEMORY[0x25F89F6C0](0xD000000000000058, 0x800000025DBF9F70);
    v92 = v86;
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_98_2();
  v103 = v86 == 0xD000000000000011 && v102 == v1;
  if (v103 || (v104 = v0[4], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[19] = v105;
    *v105 = v106;
    OUTLINED_FUNCTION_4_67(v105);
    OUTLINED_FUNCTION_198();

    return SourceDocumentRetriever.fetchJournalDocument(docId:)();
  }

  else
  {
    OUTLINED_FUNCTION_98_2();
    v109 = v15 == 0xD000000000000014 && v108 == v1;
    if (v109 || (v110 = v0[3], v111 = v0[4], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[20] = v112;
      *v112 = v113;
      OUTLINED_FUNCTION_4_67(v112);
      OUTLINED_FUNCTION_198();

      return SourceDocumentRetriever.fetchVoiceMemoDocument(docId:)();
    }

    else
    {
      OUTLINED_FUNCTION_98_2();
      if (v32 != 0xD000000000000015 || v115 != v1)
      {
        v117 = v0[3];
        v118 = v0[4];
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v125 = v0[3];
          v91 = v0[4];
          _StringGuts.grow(_:)(28);

          v126 = 0xD00000000000001ALL;
          v128 = 0x800000025DBF9F50;
          v92 = v125;
LABEL_100:
          MEMORY[0x25F89F6C0](v92, v91);
          v93 = v126;
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_35_0();
          }

          v94 = type metadata accessor for Logger();
          __swift_project_value_buffer(v94, static Logging.search);
          OUTLINED_FUNCTION_104_9();

          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();

          if (OUTLINED_FUNCTION_42_15())
          {
            v97 = OUTLINED_FUNCTION_51_0();
            v127 = OUTLINED_FUNCTION_49_0();
            *v97 = 136315138;
            *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            _os_log_impl(&dword_25D85C000, v95, v96, "%s", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v127);
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_72_9();
          }

          lazy protocol witness table accessor for type SourceDocumentRetriever.DocumentRetrievalError and conformance SourceDocumentRetriever.DocumentRetrievalError();
          v98 = swift_allocError();
          *v99 = v93;
          v99[1] = v128;
          OUTLINED_FUNCTION_219_6(v98, v99);
          OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_198();

          __asm { BRAA            X1, X16 }
        }
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[21] = v119;
      *v119 = v120;
      OUTLINED_FUNCTION_4_67(v119);
      OUTLINED_FUNCTION_198();

      return SourceDocumentRetriever.fetchPhoneDocument(docId:)(v121, v122, v123);
    }
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_127();

  return v5();
}

uint64_t SourceDocumentRetriever.fetchAttributes(protectionClass:bundleId:docId:attributes:)()
{
  OUTLINED_FUNCTION_48();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  v1[37] = v5;
  v1[38] = v6;
  v1[36] = v7;
  v8 = type metadata accessor for OSSignpostID();
  v1[43] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[44] = v9;
  v11 = *(v10 + 64);
  v1[45] = OUTLINED_FUNCTION_160();
  v1[46] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  if (static Task<>.isCancelled.getter())
  {
    v2 = v0[45];
    v1 = v0[46];

    OUTLINED_FUNCTION_62();

    return v3(0);
  }

  else
  {
    if (one-time initialization token for searchSignposter != -1)
    {
      swift_once();
    }

    v5 = v0[46];
    v6 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v6, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v7 = OSSignposter.logHandle.getter();
    v8 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v9 = v0[46];
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_25D85C000, v7, v8, v11, "SourceDocumentRetriever.fetchAttributes", "", v10, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    v12 = v0[45];
    v13 = v0[46];
    v14 = v0[43];
    v15 = v0[44];
    v16 = v0[41];

    v17 = *(v15 + 16);
    v18 = OUTLINED_FUNCTION_88();
    v19(v18);
    v20 = type metadata accessor for OSSignpostIntervalState();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_65();
    v0[47] = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v15 + 8))(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    v0[48] = inited;
    *(inited + 16) = xmmword_25DBC8180;
    v24 = *MEMORY[0x277CC3208];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v25;
    if (v16)
    {
      v26 = v0[41];
    }

    else
    {
      if (one-time initialization token for searchableAttributes != -1)
      {
        OUTLINED_FUNCTION_101_13();
      }

      v27 = v0[41];
      v26 = static SourceDocumentRetriever.searchableAttributes;
    }

    v0[49] = v26;
    v28 = v0[39];
    v29 = v0[40];
    v30 = v0[37];
    v31 = v0[38];
    v32 = v0[36];
    v40 = *(v0[42] + 16);

    specialized Array.append<A>(contentsOf:)(v33);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[50] = isa;

    v35 = v32;
    v36 = MEMORY[0x25F89F4C0](v30, v31);
    v0[51] = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_25DBC8180;
    *(v37 + 32) = v28;
    *(v37 + 40) = v29;

    v38 = Array._bridgeToObjectiveC()().super.isa;
    v0[52] = v38;

    v0[2] = v0;
    v0[7] = v0 + 35;
    v0[3] = SourceDocumentRetriever.fetchAttributes(protectionClass:bundleId:docId:attributes:);
    v39 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo8NSObjectCGSgs5NeverOGMd, &_sSccySaySo8NSObjectCGSgs5NeverOGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [NSObject]?;
    v0[13] = &block_descriptor_14;
    v0[14] = v39;
    [v40 slowFetchAttributes:isa protectionClass:v35 bundleID:v36 identifiers:v38 completionHandler:?];

    return MEMORY[0x282200938](v0 + 2);
  }
}

{
  OUTLINED_FUNCTION_48();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SourceDocumentRetriever.fetchAttributes(protectionClass:bundleId:docId:attributes:), 0, 0);
}

void SourceDocumentRetriever.fetchAttributes(protectionClass:bundleId:docId:attributes:)()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 400);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);

  if (v3)
  {
    if (!specialized Array.count.getter(v3))
    {
      v8 = *(v0 + 384);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();

      goto LABEL_11;
    }

    v5 = (v3 & 0xC000000000000001);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F89FFD0](0, v3);
    }

    else
    {
      v6 = *(v3 + 32);
    }

    OUTLINED_FUNCTION_112_2();

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v9 = *(v0 + 384);

      swift_setDeallocating();
      goto LABEL_10;
    }

    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v7 = *(v0 + 384);
  swift_setDeallocating();
LABEL_10:
  specialized _ContiguousArrayStorage.__deallocating_deinit();
LABEL_11:
  v10 = *(v0 + 392);

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v11 = *(v0 + 320);
  v12 = *(v0 + 304);
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logging.search);
  OUTLINED_FUNCTION_104_9();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = *(v0 + 312);
    v16 = *(v0 + 320);
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_51_13();
    *v11 = 136315394;
    OUTLINED_FUNCTION_118_0();
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 12) = 2080;
    OUTLINED_FUNCTION_30_5();
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_223_6(&dword_25D85C000, v20, v21, "Unable to fetch spotlight document with bundleId: %s, docId: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v22 = *(v0 + 376);
  $defer #1 () in SourceDocumentRetriever.fetchAttributes(protectionClass:bundleId:docId:attributes:)();

  v24 = *(v0 + 360);
  v23 = *(v0 + 368);

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_83_0();

  __asm { BRAA            X2, X16 }
}

uint64_t $defer #1 () in SourceDocumentRetriever.fetchAttributes(protectionClass:bundleId:docId:attributes:)()
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "SourceDocumentRetriever.fetchAttributes", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, (v2 - result) & ~((v2 - result) >> 63), v2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = specialized Array.subscript.getter(0);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t SourceDocumentRetriever.fetchMessagesDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[67] = v0;
  v1[66] = v2;
  v1[65] = v3;
  v1[64] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[68] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[69] = v6;
  v8 = *(v7 + 64);
  v1[70] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[71] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[72] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[73] = OUTLINED_FUNCTION_160();
  v1[74] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v1[75] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[76] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[77] = OUTLINED_FUNCTION_199();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v23 = *(v22 + 64);
  v1[78] = OUTLINED_FUNCTION_199();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v24);
  v26 = *(v25 + 64);
  v1[79] = OUTLINED_FUNCTION_199();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  v1[80] = OUTLINED_FUNCTION_199();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v30);
  v32 = *(v31 + 64);
  v1[81] = OUTLINED_FUNCTION_160();
  v1[82] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v33);
  v35 = *(v34 + 64);
  v1[83] = OUTLINED_FUNCTION_160();
  v1[84] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v36);
  v38 = *(v37 + 64);
  v1[85] = OUTLINED_FUNCTION_160();
  v1[86] = swift_task_alloc();
  v39 = type metadata accessor for MobileSMSDocument();
  v1[87] = v39;
  OUTLINED_FUNCTION_21(v39);
  v1[88] = v40;
  v42 = *(v41 + 64);
  v1[89] = OUTLINED_FUNCTION_160();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v43);
  v45 = *(v44 + 64);
  v1[92] = OUTLINED_FUNCTION_160();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v46, v47, v48);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 536));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 760) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchMessagesDocument(docId:);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 760);
  *v2 = *v0;
  *(v1 + 768) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v2 = *(v1 + 768);
  if (!v2)
  {
    v12 = *(v1 + 568);
    v13 = *(v1 + 512);
    OUTLINED_FUNCTION_92();
    goto LABEL_71;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logging.search);
  OUTLINED_FUNCTION_37_3();
  swift_bridgeObjectRetain_n();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v5))
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_91_9();
    *v0 = 136315651;
    v6 = OUTLINED_FUNCTION_228_4();
    OUTLINED_FUNCTION_42_28(v6);
    Dictionary.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_10();
    *(v0 + 14) = "fetchMessagesDocument(docId:)";
    *(v0 + 22) = 2048;
    v7 = *(v2 + 16);

    *(v0 + 24) = v7;

    OUTLINED_FUNCTION_109_2();
    _os_log_impl(v8, v9, v10, v11, v0, 0x20u);
    OUTLINED_FUNCTION_193_9();
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_52_16();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v18 = *(v1 + 528);
  v19 = *(v1 + 520);
  v20 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v21 = OUTLINED_FUNCTION_94();
  outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.identifier.setter(v21, v22, v20);
  v23 = *MEMORY[0x277CC2770];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_78_19();
  specialized Dictionary.subscript.getter(v2, v24);

  if (*(v1 + 40))
  {
    v25 = OUTLINED_FUNCTION_97_11();
    if (v25)
    {
      MEMORY[0x25F89F4C0](*(v1 + 480), *(v1 + 488));
      OUTLINED_FUNCTION_112_2();

      goto LABEL_13;
    }
  }

  else
  {
    v25 = outlined destroy of IntentApplication?(v1 + 16, &_sypSgMd, &_sypSgMR);
  }

  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_194_9(v25, sel_setDomainIdentifier_);

  v26 = *MEMORY[0x277CC2760];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_121_12();
  specialized Dictionary.subscript.getter(v2, v27);

  if (*(v1 + 72))
  {
    v28 = OUTLINED_FUNCTION_220_4();
    if (v28)
    {
      MEMORY[0x25F89F4C0](*(v1 + 464), *(v1 + 472));
      OUTLINED_FUNCTION_112_2();

      goto LABEL_18;
    }
  }

  else
  {
    v28 = outlined destroy of IntentApplication?(v1 + 48, &_sypSgMd, &_sypSgMR);
  }

  v18 = 0;
LABEL_18:
  OUTLINED_FUNCTION_194_9(v28, sel_setDisplayName_);

  v29 = *MEMORY[0x277CC31F8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_120_11();
  specialized Dictionary.subscript.getter(v2, v30);

  v31 = *(v1 + 752);
  if (*(v1 + 104))
  {
    type metadata accessor for URL();
    v32 = OUTLINED_FUNCTION_69_19();
    v33 = OUTLINED_FUNCTION_3_73(v32);
    if (!v35)
    {
      v31 = *(v1 + 752);
      URL._bridgeToObjectiveC()(v34);
      OUTLINED_FUNCTION_12_50();
      v37 = *(v36 + 8);
      v38 = OUTLINED_FUNCTION_171_8();
      v33 = v39(v38);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v1 + 80, &_sypSgMd, &_sypSgMR);
    v40 = type metadata accessor for URL();
    v33 = OUTLINED_FUNCTION_5_60(v40);
  }

  OUTLINED_FUNCTION_194_9(v33, sel_setContentURL_);

  v41 = *MEMORY[0x277CC2DA0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_166_7();
  specialized Dictionary.subscript.getter(v2, v42);

  if (*(v1 + 136))
  {
    v43 = OUTLINED_FUNCTION_220_4();
    if (v43)
    {
      MEMORY[0x25F89F4C0](*(v1 + 448), *(v1 + 456));
      OUTLINED_FUNCTION_112_2();

      goto LABEL_27;
    }
  }

  else
  {
    v43 = outlined destroy of IntentApplication?(v1 + 112, &_sypSgMd, &_sypSgMR);
  }

  v31 = 0;
LABEL_27:
  v44 = *(v1 + 528);
  v45 = *(v1 + 520);
  OUTLINED_FUNCTION_194_9(v43, sel_setMessageService_);

  v46 = OUTLINED_FUNCTION_194_7();
  SourceDocumentRetriever.extractPreExtractedCardAttributes(attributeSet:result:)(v46);
  OUTLINED_FUNCTION_194_7();
  SourceDocumentRetriever.extractPreExtractedContactAttributes(attributeSet:result:)();
  v47 = OUTLINED_FUNCTION_194_7();
  SourceDocumentRetriever.extractPreExtractedSharedLinkAttributes(attributeSet:result:)(v47);
  OUTLINED_FUNCTION_194_7();
  SourceDocumentRetriever.extractPreExtractedBreadcrumbAttributes(attributeSet:result:)();
  v48 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v49 = v20;

  v50 = OUTLINED_FUNCTION_171_8();
  v240 = v49;
  v53 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v50, v51, 0xD000000000000013, v52, v49);
  v54 = OUTLINED_FUNCTION_251_2();
  v55 = MEMORY[0x25F89F4C0](v54);
  OUTLINED_FUNCTION_152_8(v55, sel_setBundleID_);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v2, (v1 + 144));

  if (*(v1 + 168))
  {
    OUTLINED_FUNCTION_112_18();
    v56 = *(v1 + 432);
    v57 = *(v1 + 440);
    OUTLINED_FUNCTION_57_21();
  }

  else
  {
    outlined destroy of IntentApplication?(v1 + 144, &_sypSgMd, &_sypSgMR);
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v2, (v1 + 176));

  if (*(v1 + 200))
  {
    OUTLINED_FUNCTION_112_18();
    v58 = *(v1 + 416);
    v59 = *(v1 + 424);
    OUTLINED_FUNCTION_57_21();
  }

  else
  {
    outlined destroy of IntentApplication?(v1 + 176, &_sypSgMd, &_sypSgMR);
  }

  v60 = *MEMORY[0x277CC3118];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v2, (v1 + 208));

  if (*(v1 + 232))
  {
    OUTLINED_FUNCTION_112_18();
    v61 = *(v1 + 400);
    v62 = *(v1 + 408);
    OUTLINED_FUNCTION_57_21();
  }

  else
  {
    outlined destroy of IntentApplication?(v1 + 208, &_sypSgMd, &_sypSgMR);
  }

  v63 = *MEMORY[0x277CC24E0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v2, (v1 + 240));

  if (*(v1 + 264))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_112_18())
    {
      v64 = *(v1 + 504);
      goto LABEL_41;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v1 + 240, &_sypSgMd, &_sypSgMR);
  }

  v64 = MEMORY[0x277D84F90];
LABEL_41:
  v245 = v64;
  v65 = *MEMORY[0x277CC2C70];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v2, (v1 + 272));

  if (*(v1 + 296))
  {
    if (OUTLINED_FUNCTION_112_18())
    {
      v242 = *(v1 + 776);
      goto LABEL_46;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v1 + 272, &_sypSgMd, &_sypSgMR);
  }

  v242 = 0;
LABEL_46:
  v66 = *MEMORY[0x277CC3028];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v2, (v1 + 304));

  if (!*(v1 + 328))
  {
    outlined destroy of IntentApplication?(v1 + 304, &_sypSgMd, &_sypSgMR);
    goto LABEL_50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((OUTLINED_FUNCTION_112_18() & 1) == 0)
  {
LABEL_50:
    v67 = MEMORY[0x277D84F90];
    goto LABEL_51;
  }

  v67 = *(v1 + 496);
LABEL_51:
  v248 = v67;
  v68 = *MEMORY[0x277CC2640];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v2, (v1 + 336));

  v69 = *(v1 + 688);
  if (*(v1 + 360))
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_196_7();
    v70 = OUTLINED_FUNCTION_96_12();
  }

  else
  {
    outlined destroy of IntentApplication?(v1 + 336, &_sypSgMd, &_sypSgMR);
    type metadata accessor for Date();
    v70 = OUTLINED_FUNCTION_19_43();
  }

  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v2, (v1 + 368));

  v74 = *(v1 + 744);
  if (*(v1 + 392))
  {
    type metadata accessor for URL();
    OUTLINED_FUNCTION_196_7();
    v75 = OUTLINED_FUNCTION_96_12();
  }

  else
  {
    outlined destroy of IntentApplication?(v1 + 368, &_sypSgMd, &_sypSgMR);
    type metadata accessor for URL();
    v75 = OUTLINED_FUNCTION_19_43();
  }

  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  v79 = *(v1 + 672);
  v80 = *(v1 + 656);
  type metadata accessor for DataDetectorResults();
  v81 = OUTLINED_FUNCTION_19_43();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  type metadata accessor for PartialExtractedAttributes();
  OUTLINED_FUNCTION_158_8();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  type metadata accessor for FeatureFlagService();
  swift_allocObject();
  v89 = v53;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    OUTLINED_FUNCTION_109_2();
    _os_log_impl(v93, v94, v95, v96, v92, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v97 = v89;
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = OUTLINED_FUNCTION_51_0();
    v254 = OUTLINED_FUNCTION_49_0();
    *v100 = 136315138;
    v101 = [v97 attributeSet];
    CSSearchableItemAttributeSet.keyStrings.getter();
    v103 = v102;

    MEMORY[0x25F89F8A0](v103, MEMORY[0x277D837D0]);

    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v100 + 4) = v104;
    _os_log_impl(&dword_25D85C000, v98, v99, "MobileSMSDocument: parsing attribute keys: %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v254);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_72_9();
  }

  v105 = v97;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = v105;
    v109 = OUTLINED_FUNCTION_51_0();
    v255 = OUTLINED_FUNCTION_49_0();
    *v109 = 136642819;
    v110 = [v108 attributeSet];
    CSSearchableItemAttributeSet.kvStrings.getter();
    v112 = v111;

    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    MEMORY[0x25F89F8A0](v112, v113);

    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v109 + 4) = v114;
    OUTLINED_FUNCTION_40_27(&dword_25D85C000, v115, v116, "MobileSMSDocument: parsing attributes: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v255);
    OUTLINED_FUNCTION_72_9();
    v105 = v108;
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  v230 = *(v1 + 744);
  v225 = *(v1 + 736);
  v229 = *(v1 + 728);
  v233 = *(v1 + 720);
  v227 = *(v1 + 704);
  v231 = *(v1 + 688);
  v232 = *(v1 + 696);
  v117 = *(v1 + 672);
  v226 = *(v1 + 680);
  v118 = *(v1 + 664);
  v119 = *(v1 + 656);
  v120 = *(v1 + 648);
  v121 = *(v1 + 640);
  v222 = *(v1 + 632);
  v223 = *(v1 + 624);
  v122 = *(v1 + 616);
  v224 = *(v1 + 528);
  v228 = *(v1 + 520);
  outlined init with copy of SpotlightRankingItem?(v231, v226, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v123 = OUTLINED_FUNCTION_88();
  outlined init with copy of SpotlightRankingItem?(v123, v124, v125, v126);
  v256 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v245, v242);

  specialized Array.append<A>(contentsOf:)(v127);
  v128 = OUTLINED_FUNCTION_10_16();
  outlined init with copy of SpotlightRankingItem?(v128, v129, v130, v131);
  outlined init with copy of SpotlightRankingItem?(v119, v120, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v132 = v105;

  v133 = OUTLINED_FUNCTION_26_2();
  PreExtractedCard.init(item:featureFlagService:)(v133, v134, v135);
  v136 = v132;
  OUTLINED_FUNCTION_37_3();

  v137 = OUTLINED_FUNCTION_26_2();
  PreExtractedContact.init(item:featureFlagService:)(v137, v138, v139);
  v140 = v132;
  PreExtractedSharedLink.init(item:)(v140, v223);
  v141 = v140;
  OUTLINED_FUNCTION_37_3();

  v142 = OUTLINED_FUNCTION_26_2();
  PreExtractedBreadcrumb.init(item:featureFlagService:)(v142, v143);

  v221 = MEMORY[0x277D84F90];
  v220 = MEMORY[0x277D84F90];
  v219 = v248;
  v218 = v242;
  v217 = v245;
  MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  v249 = v140;

  outlined destroy of IntentApplication?(v119, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v117, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of IntentApplication?(v230, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of IntentApplication?(v231, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v144 = *(v227 + 16);
  v144(v233, v229, v232);
  v145 = Logger.logObject.getter();
  v146 = static os_log_type_t.info.getter();
  v147 = OUTLINED_FUNCTION_88_0(v146);
  v148 = *(v1 + 720);
  if (v147)
  {
    v149 = *(v1 + 712);
    v150 = *(v1 + 704);
    v151 = *(v1 + 696);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_91_9();
    *v229 = 136315395;
    v152 = OUTLINED_FUNCTION_228_4();
    OUTLINED_FUNCTION_42_28(v152);
    v153 = OUTLINED_FUNCTION_45_0();
    (v144)(v153);
    OUTLINED_FUNCTION_179_0();
    String.init<A>(describing:)();
    v252 = *(v150 + 8);
    v252(v148, v151);
    v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v229 + 14) = v154;
    OUTLINED_FUNCTION_98_11(&dword_25D85C000, v155, v146, "%s Created MobileSMSDocument: %{sensitive}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_52_16();
  }

  else
  {
    v157 = *(v1 + 704);
    v158 = *(v1 + 696);

    v252 = *(v157 + 8);
    v252(v148, v158);
  }

  v156 = v144;
  v159 = *(v1 + 608);
  v160 = *(v1 + 600);
  v161 = *(v1 + 592);
  v162 = *(v1 + 584);
  v163 = *(v1 + 576);
  v164 = *(v1 + 568);
  v165 = *(v1 + 544);
  v156(v159, *(v1 + 728), *(v1 + 696));
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v166, v167, v168, v165);
  *(v163 + v164[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_7_25((v163 + v164[10]));
  _s10OmniSearch0B6ResultVWOcTm_7(v159, v163, v169);
  v170 = v164[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v171 = v249;
  OUTLINED_FUNCTION_158_0();
  CodableNSSecureCoding.init(wrappedValue:)();
  outlined init with copy of SpotlightRankingItem?(v161, v162, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v172 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v172, v173, v165);
  v243 = *(v1 + 704);
  v246 = *(v1 + 696);
  v250 = *(v1 + 728);
  v175 = *(v1 + 608);
  v176 = *(v1 + 592);
  v177 = *(v1 + 584);
  v178 = *(v1 + 576);
  v179 = *(v1 + 568);
  if (EnumTagSinglePayload == 1)
  {
    v180 = *(v1 + 584);
    OUTLINED_FUNCTION_158_0();
    outlined destroy of IntentApplication?(v181, v182, v183);
    v184 = *(v179 + 20);
    OUTLINED_FUNCTION_179_9();
    OUTLINED_FUNCTION_179_9();
    OUTLINED_FUNCTION_179_9();
    OUTLINED_FUNCTION_179_9();
    OUTLINED_FUNCTION_179_9();
    OUTLINED_FUNCTION_82_17();
    OUTLINED_FUNCTION_19_18();

    OUTLINED_FUNCTION_158_0();
    outlined destroy of IntentApplication?(v185, v186, v187);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v175, v188);
    v252(v250, v246);
  }

  else
  {
    v189 = *(v1 + 560);
    v190 = *(v1 + 552);
    v191 = *(v1 + 544);

    outlined destroy of IntentApplication?(v176, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v175, v192);
    v252(v250, v246);
    v193 = *(v190 + 32);
    v193(v189, v177, v191);
    v194 = *(v179 + 20);
    OUTLINED_FUNCTION_158_0();
    (v193)(v195, v196, v197, v198, v199, v200, v201, v202, v217, v218, v219, v226, v225, v220, 0, 0, 0, 0, v256, v221);
  }

  v203 = *(v1 + 568);
  v204 = *(v1 + 512);
  OUTLINED_FUNCTION_11_60(*(v1 + 576));
  v14 = OUTLINED_FUNCTION_10_53();
LABEL_71:
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v205 = *(v1 + 752);
  v206 = *(v1 + 744);
  v207 = *(v1 + 736);
  v208 = *(v1 + 728);
  v209 = *(v1 + 720);
  v210 = *(v1 + 712);
  v211 = *(v1 + 688);
  v212 = *(v1 + 680);
  v213 = *(v1 + 672);
  v214 = *(v1 + 664);
  v234 = *(v1 + 656);
  v235 = *(v1 + 648);
  v236 = *(v1 + 640);
  v237 = *(v1 + 632);
  v238 = *(v1 + 624);
  v239 = *(v1 + 616);
  v241 = *(v1 + 608);
  v244 = *(v1 + 592);
  v247 = *(v1 + 584);
  v251 = *(v1 + 576);
  v253 = *(v1 + 560);

  OUTLINED_FUNCTION_127();

  return v215();
}

uint64_t SourceDocumentRetriever.fetchCalendarDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[85] = v0;
  v1[84] = v2;
  v1[83] = v3;
  v1[82] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[86] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[87] = v6;
  v8 = *(v7 + 64);
  v1[88] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[89] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[90] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[91] = OUTLINED_FUNCTION_160();
  v1[92] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v1[93] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[94] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[95] = OUTLINED_FUNCTION_199();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v23 = *(v22 + 64);
  v1[96] = OUTLINED_FUNCTION_160();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v24 = type metadata accessor for CalendarEvent();
  v1[100] = v24;
  OUTLINED_FUNCTION_21(v24);
  v1[101] = v25;
  v27 = *(v26 + 64);
  v1[102] = OUTLINED_FUNCTION_199();
  v28 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 680));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 824) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchCalendarDocument(docId:);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 824);
  *v2 = *v0;
  *(v1 + 832) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v3 = *(v1 + 832);
  if (v3)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logging.search);
    OUTLINED_FUNCTION_112_2();
    swift_bridgeObjectRetain_n();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v6))
    {
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_51_13();
      *v0 = 136315651;
      v7 = OUTLINED_FUNCTION_228_4();
      OUTLINED_FUNCTION_25_18(v7);
      OUTLINED_FUNCTION_175_9();
      Dictionary.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_169_10();
      *(v0 + 14) = v2;
      OUTLINED_FUNCTION_169_11();
      v8 = *(v3 + 16);

      *(v0 + 24) = v8;

      OUTLINED_FUNCTION_90_10(&dword_25D85C000, v9, v6, "%s Fetched calendar attributes %{sensitive}s, count: %ld");
      OUTLINED_FUNCTION_193_9();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
      OUTLINED_FUNCTION_84_14();
      swift_bridgeObjectRelease_n();
    }

    v16 = *MEMORY[0x277CC24E0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_78_19();
    specialized Dictionary.subscript.getter(v3, v17);

    if (*(v1 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_74_21())
      {
        v18 = *(v1 + 648);
        goto LABEL_13;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 16, &_sypSgMd, &_sypSgMR);
    }

    v18 = MEMORY[0x277D84F90];
LABEL_13:
    v19 = *MEMORY[0x277CC3028];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_121_12();
    specialized Dictionary.subscript.getter(v3, v20);

    if (*(v1 + 72))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_74_21())
      {
        v21 = *(v1 + 640);
        goto LABEL_18;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 48, &_sypSgMd, &_sypSgMR);
    }

    v21 = MEMORY[0x277D84F90];
LABEL_18:

    v173 = v18;
    v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v22);

    v171 = v21;
    v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v24);
    v159 = *MEMORY[0x277CC31F0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_120_11();
    specialized Dictionary.subscript.getter(v3, v26);

    if (*(v1 + 104))
    {
      OUTLINED_FUNCTION_129_15();
      v27 = *(v1 + 624);
      v28 = *(v1 + 632);
      OUTLINED_FUNCTION_57_21();
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 80, &_sypSgMd, &_sypSgMR);
    }

    v161 = *MEMORY[0x277CC2750];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_166_7();
    specialized Dictionary.subscript.getter(v3, v29);

    if (*(v1 + 136))
    {
      OUTLINED_FUNCTION_129_15();
      v30 = *(v1 + 608);
      v31 = *(v1 + 616);
      OUTLINED_FUNCTION_57_21();
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 112, &_sypSgMd, &_sypSgMR);
    }

    v163 = *MEMORY[0x277CC3128];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v3, (v1 + 144));

    v32 = *(v1 + 792);
    if (*(v1 + 168))
    {
      type metadata accessor for Date();
      OUTLINED_FUNCTION_224_5();
      OUTLINED_FUNCTION_117();
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 144, &_sypSgMd, &_sypSgMR);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
    }

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    v165 = *MEMORY[0x277CC27A0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_167_6();
    specialized Dictionary.subscript.getter(v3, v37);

    v38 = *(v1 + 784);
    if (*(v1 + 200))
    {
      type metadata accessor for Date();
      OUTLINED_FUNCTION_224_5();
      OUTLINED_FUNCTION_117();
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 176, &_sypSgMd, &_sypSgMR);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
    }

    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v168 = *MEMORY[0x277CC2DD0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_136_14();
    specialized Dictionary.subscript.getter(v3, v43);

    if (*(v1 + 232))
    {
      OUTLINED_FUNCTION_129_15();
      v44 = *(v1 + 592);
      v45 = *(v1 + 600);
      OUTLINED_FUNCTION_57_21();
      if (v48)
      {
        v49 = 0;
      }

      else
      {
        v49 = v46;
      }

      v156 = v49;
      v157 = v47;
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 208, &_sypSgMd, &_sypSgMR);
      v156 = 0;
      v157 = 0;
    }

    v155 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v23);
    v154 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v25);
    v50 = *MEMORY[0x277CC25D8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_137_8();
    specialized Dictionary.subscript.getter(v3, v51);

    if (*(v1 + 264))
    {
      OUTLINED_FUNCTION_129_15();
      v52 = *(v1 + 576);
      v53 = *(v1 + 584);
      OUTLINED_FUNCTION_57_21();
      if (v48)
      {
        v56 = 0;
      }

      else
      {
        v56 = v54;
      }

      v152 = v56;
      v153 = v55;
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 240, &_sypSgMd, &_sypSgMR);
      v152 = 0;
      v153 = 0;
    }

    v57 = *MEMORY[0x277CC2418];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v3, (v1 + 272));

    if (*(v1 + 296))
    {
      v58 = OUTLINED_FUNCTION_129_15();
      v59 = *(v1 + 560);
      if (v58)
      {
        v60 = *(v1 + 560);
      }

      else
      {
        v60 = 0;
      }

      if (v58)
      {
        v61 = *(v1 + 568);
      }

      else
      {
        v61 = 0;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 272, &_sypSgMd, &_sypSgMR);
      v60 = 0;
      v61 = 0;
    }

    v62 = *(v1 + 816);
    v63 = *(v1 + 792);
    v64 = *(v1 + 784);
    v65 = *(v1 + 760);
    v66 = *(v1 + 672);
    v67 = *(v1 + 664);
    type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);

    OUTLINED_FUNCTION_30_5();
    CalendarEvent.init(id:title:contentDescription:startDate:endDate:locationName:organizerNames:participantNames:notes:itemAppEntityInstanceId:dataDetectorResults:)();
    v72 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v73 = *MEMORY[0x277CC2BD8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v3, (v1 + 304));

    if (*(v1 + 328))
    {
      if (OUTLINED_FUNCTION_117_15())
      {
        MEMORY[0x25F89F4C0](*(v1 + 544), *(v1 + 552));
        OUTLINED_FUNCTION_175_3();
        goto LABEL_55;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 304, &_sypSgMd, &_sypSgMR);
    }

    v61 = 0;
LABEL_55:
    [v72 setIdentifier_];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v3, (v1 + 336));

    if (*(v1 + 360))
    {
      if (OUTLINED_FUNCTION_117_15())
      {
        MEMORY[0x25F89F4C0](*(v1 + 528), *(v1 + 536));
        OUTLINED_FUNCTION_175_3();
        goto LABEL_60;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 336, &_sypSgMd, &_sypSgMR);
    }

    v61 = 0;
LABEL_60:
    [v72 setTitle_];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v3, (v1 + 368));

    if (*(v1 + 392))
    {
      if (OUTLINED_FUNCTION_117_15())
      {
        MEMORY[0x25F89F4C0](*(v1 + 512), *(v1 + 520));
        OUTLINED_FUNCTION_175_3();
        goto LABEL_65;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 368, &_sypSgMd, &_sypSgMR);
    }

    v61 = 0;
LABEL_65:
    [v72 setContentDescription_];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v3, (v1 + 400));

    isa = *(v1 + 776);
    if (*(v1 + 424))
    {
      v75 = type metadata accessor for Date();
      OUTLINED_FUNCTION_222_6();
      v76 = OUTLINED_FUNCTION_45_2();
      v79 = OUTLINED_FUNCTION_29_27(v76, v77, v78, v75);
      OUTLINED_FUNCTION_28_30(v79, v80, v75);
      if (!v48)
      {
        v81 = *(v1 + 776);
        isa = Date._bridgeToObjectiveC()().super.isa;
        OUTLINED_FUNCTION_51(v75);
        v83 = *(v82 + 8);
        v84 = OUTLINED_FUNCTION_116_1();
        v85(v84);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 400, &_sypSgMd, &_sypSgMR);
      v86 = type metadata accessor for Date();
      OUTLINED_FUNCTION_5_60(v86);
    }

    [v72 setStartDate_];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v3, (v1 + 432));

    v87 = *(v1 + 768);
    if (*(v1 + 456))
    {
      v88 = type metadata accessor for Date();
      OUTLINED_FUNCTION_222_6();
      v89 = OUTLINED_FUNCTION_45_2();
      v92 = OUTLINED_FUNCTION_29_27(v89, v90, v91, v88);
      OUTLINED_FUNCTION_28_30(v92, v93, v88);
      if (!v48)
      {
        v94 = *(v1 + 768);
        v87 = Date._bridgeToObjectiveC()().super.isa;
        OUTLINED_FUNCTION_51(v88);
        v96 = *(v95 + 8);
        v97 = OUTLINED_FUNCTION_116_1();
        v98(v97);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 432, &_sypSgMd, &_sypSgMR);
      v99 = type metadata accessor for Date();
      OUTLINED_FUNCTION_5_60(v99);
    }

    [v72 setEndDate_];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;
    specialized Dictionary.subscript.getter(v3, (v1 + 464));

    if (*(v1 + 488))
    {
      if (OUTLINED_FUNCTION_117_15())
      {
        MEMORY[0x25F89F4C0](*(v1 + 496), *(v1 + 504));
        OUTLINED_FUNCTION_112_2();

LABEL_78:
        v160 = *(v1 + 816);
        v102 = *(v1 + 808);
        v158 = *(v1 + 800);
        v103 = *(v1 + 752);
        v166 = *(v1 + 736);
        v169 = *(v1 + 728);
        v104 = *(v1 + 720);
        v105 = *(v1 + 712);
        v162 = *(v1 + 744);
        v164 = *(v1 + 688);
        v106 = *(v1 + 672);
        v107 = *(v1 + 664);
        [v72 setNamedLocation_];

        outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v173, v72, &selRef_setOrganizations_);
        outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v171, v72, &selRef_setParticipants_);
        v108 = objc_allocWithZone(MEMORY[0x277CC34B0]);
        OUTLINED_FUNCTION_104_9();

        v109 = v72;
        v110 = OUTLINED_FUNCTION_116_1();
        v174 = v111;
        v114 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v110, v112, 0xD000000000000013, v113, v111);
        v115 = OUTLINED_FUNCTION_251_2();
        v116 = MEMORY[0x25F89F4C0](v115);
        [v114 setBundleID_];

        (*(v102 + 16))(v103, v160, v158);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v117, v118, v119, v164);
        *(v104 + v105[7]) = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_7_25((v104 + v105[10]));
        v120 = OUTLINED_FUNCTION_118_0();
        _s10OmniSearch0B6ResultVWOcTm_7(v120, v121, v122);
        v123 = v105[6];
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        v124 = v114;
        OUTLINED_FUNCTION_201_0();
        CodableNSSecureCoding.init(wrappedValue:)();
        outlined init with copy of SpotlightRankingItem?(v166, v169, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v125 = OUTLINED_FUNCTION_65();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v125, v126, v164);
        v128 = *(v1 + 808);
        v129 = *(v1 + 752);
        v130 = *(v1 + 728);
        v170 = *(v1 + 736);
        v172 = *(v1 + 720);
        v131 = *(v1 + 712);
        if (EnumTagSinglePayload == 1)
        {
          v132 = OUTLINED_FUNCTION_171_8();
          outlined destroy of IntentApplication?(v132, v133, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          v134 = *(v131 + 20);
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_109_17();
          OUTLINED_FUNCTION_108_12();
          OUTLINED_FUNCTION_36_29();
          OUTLINED_FUNCTION_14_38();

          outlined destroy of IntentApplication?(v170, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_48();
          _s10OmniSearch0B6ResultVWOhTm_4(v129, v135);
          v136 = *(v128 + 8);
          v137 = OUTLINED_FUNCTION_116_1();
          v138(v137);
        }

        else
        {
          v139 = *(v1 + 704);
          v167 = *(v1 + 800);
          v140 = *(v1 + 816);
          v141 = *(v1 + 696);
          v142 = *(v1 + 688);

          outlined destroy of IntentApplication?(v170, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_48();
          _s10OmniSearch0B6ResultVWOhTm_4(v129, v143);
          (*(v128 + 8))(v140, v167);
          v144 = OUTLINED_FUNCTION_147_10();
          v129(v144);
          (v129)(v172 + *(v131 + 20), v139, v142);
        }

        v145 = *(v1 + 712);
        v146 = *(v1 + 656);
        OUTLINED_FUNCTION_11_60(*(v1 + 720));
        v12 = OUTLINED_FUNCTION_10_53();
        goto LABEL_82;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 464, &_sypSgMd, &_sypSgMR);
    }

    v101 = 0;
    goto LABEL_78;
  }

  v10 = *(v1 + 712);
  v11 = *(v1 + 656);
  OUTLINED_FUNCTION_92();
LABEL_82:
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_119_13();
  v147 = *(v1 + 736);
  v148 = *(v1 + 728);
  v149 = *(v1 + 720);
  v175 = *(v1 + 704);

  OUTLINED_FUNCTION_127();

  return v150();
}

void SourceDocumentRetriever.extractPreExtractedCardAttributes(attributeSet:result:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_135_12();
  MEMORY[0x28223BE20](v8);
  v10 = v97 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (v97 - v12);
  v14 = *MEMORY[0x277CC25B0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_88_13();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_189_8();
      OUTLINED_FUNCTION_167_5();
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v2 = 0;
LABEL_6:
  v15 = OUTLINED_FUNCTION_103_15();
  [v15 v16];

  v17 = *MEMORY[0x277CC25A8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_88_13();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_189_8();
      OUTLINED_FUNCTION_167_5();
      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v2 = 0;
LABEL_11:
  v18 = OUTLINED_FUNCTION_103_15();
  [v18 v19];

  v20 = *MEMORY[0x277CC2588];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_88_13();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_189_8();
      OUTLINED_FUNCTION_167_5();
      goto LABEL_16;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v2 = 0;
LABEL_16:
  v21 = OUTLINED_FUNCTION_103_15();
  [v21 v22];

  v23 = *MEMORY[0x277CC25B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_88_13();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_189_8();
      OUTLINED_FUNCTION_167_5();
      goto LABEL_21;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v2 = 0;
LABEL_21:
  v24 = OUTLINED_FUNCTION_103_15();
  [v24 v25];

  v26 = *MEMORY[0x277CC2578];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_88_13();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_189_8();
      OUTLINED_FUNCTION_167_5();
      goto LABEL_26;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v2 = 0;
LABEL_26:
  v27 = OUTLINED_FUNCTION_103_15();
  [v27 v28];

  v29 = *MEMORY[0x277CC2558];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_88_13();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_189_8();
      OUTLINED_FUNCTION_167_5();
      goto LABEL_31;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v2 = 0;
LABEL_31:
  v30 = OUTLINED_FUNCTION_103_15();
  [v30 v31];

  v32 = *MEMORY[0x277CC2568];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_88_13();

  if (v99)
  {
    v33 = type metadata accessor for Date();
    OUTLINED_FUNCTION_195_8();
    v34 = OUTLINED_FUNCTION_45_2();
    v37 = OUTLINED_FUNCTION_29_27(v34, v35, v36, v33);
    isa = 0;
    if (__swift_getEnumTagSinglePayload(v37, v38, v33) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      OUTLINED_FUNCTION_51(v33);
      (*(v40 + 8))(v13, v33);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
    type metadata accessor for Date();
    v41 = OUTLINED_FUNCTION_7_19();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    isa = 0;
  }

  [a1 setCardIssueDate_];

  v45 = *MEMORY[0x277CC2548];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    v46 = type metadata accessor for Date();
    v47 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v10, v47 ^ 1u, 1, v46);
    OUTLINED_FUNCTION_28_30(v10, 1, v46);
    if (!v48)
    {
      v13 = Date._bridgeToObjectiveC()().super.isa;
      OUTLINED_FUNCTION_51(v46);
      (*(v49 + 8))(v10, v46);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
    v50 = type metadata accessor for Date();
    OUTLINED_FUNCTION_8_58(v10, v51, v52, v50);
  }

  v53 = OUTLINED_FUNCTION_49_26();
  [v53 v54];

  v55 = *MEMORY[0x277CC2570];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_182_11();
      OUTLINED_FUNCTION_37_3();

      goto LABEL_44;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_44:
  v56 = OUTLINED_FUNCTION_49_26();
  [v56 v57];

  v58 = *MEMORY[0x277CC2590];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_182_11();
      OUTLINED_FUNCTION_37_3();

      goto LABEL_49;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_49:
  v59 = OUTLINED_FUNCTION_49_26();
  [v59 v60];

  v61 = *MEMORY[0x277CC2540];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_182_11();
      OUTLINED_FUNCTION_37_3();

      goto LABEL_54;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_54:
  v62 = OUTLINED_FUNCTION_49_26();
  [v62 v63];

  v64 = *MEMORY[0x277CC24F8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    v65 = type metadata accessor for Date();
    v66 = OUTLINED_FUNCTION_191_9();
    __swift_storeEnumTagSinglePayload(v1, v66 ^ 1u, 1, v65);
    OUTLINED_FUNCTION_28_30(v1, 1, v65);
    if (!v48)
    {
      v13 = Date._bridgeToObjectiveC()().super.isa;
      OUTLINED_FUNCTION_51(v65);
      (*(v67 + 8))(v1, v65);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
    v68 = type metadata accessor for Date();
    OUTLINED_FUNCTION_8_58(v1, v69, v70, v68);
  }

  v71 = OUTLINED_FUNCTION_49_26();
  [v71 v72];

  v73 = *MEMORY[0x277CC2580];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_63;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_63:
  v74 = OUTLINED_FUNCTION_49_26();
  [v74 v75];

  v76 = *MEMORY[0x277CC2530];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_68;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_68:
  v77 = OUTLINED_FUNCTION_49_26();
  [v77 v78];

  v79 = *MEMORY[0x277CC25A0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_73;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_73:
  v80 = OUTLINED_FUNCTION_49_26();
  [v80 v81];

  v82 = *MEMORY[0x277CC2560];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_78;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_78:
  v83 = OUTLINED_FUNCTION_49_26();
  [v83 v84];

  v85 = *MEMORY[0x277CC2550];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_83;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_83:
  v86 = OUTLINED_FUNCTION_49_26();
  [v86 v87];

  v88 = *MEMORY[0x277CC25C0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_88;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_88:
  v89 = OUTLINED_FUNCTION_49_26();
  [v89 v90];

  v91 = *MEMORY[0x277CC2538];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v99)
  {
    if (OUTLINED_FUNCTION_26_32())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_93;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
  }

  v13 = 0;
LABEL_93:
  v92 = OUTLINED_FUNCTION_49_26();
  [v92 v93];

  v94 = *MEMORY[0x277CC2598];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (!v99)
  {
    outlined destroy of IntentApplication?(v98, &_sypSgMd, &_sypSgMR);
    goto LABEL_97;
  }

  if ((OUTLINED_FUNCTION_26_32() & 1) == 0)
  {
LABEL_97:
    v13 = 0;
    goto LABEL_98;
  }

  MEMORY[0x25F89F4C0](v97[0], v97[1]);
  OUTLINED_FUNCTION_104_9();

LABEL_98:
  v95 = OUTLINED_FUNCTION_49_26();
  [v95 v96];
}

void SourceDocumentRetriever.extractPreExtractedContactAttributes(attributeSet:result:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_135_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v71[-v7];
  v9 = *MEMORY[0x277CC2628];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v72)
  {
    v10 = OUTLINED_FUNCTION_25_34();
    if (v10)
    {
      OUTLINED_FUNCTION_181_10();
      v10 = OUTLINED_FUNCTION_150_8();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v1 = 0;
LABEL_6:
  OUTLINED_FUNCTION_153_8(v10, sel_setContactType_);

  v11 = *MEMORY[0x277CC2600];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v72)
  {
    v12 = OUTLINED_FUNCTION_25_34();
    if (v12)
    {
      OUTLINED_FUNCTION_181_10();
      v12 = OUTLINED_FUNCTION_150_8();
      goto LABEL_11;
    }
  }

  else
  {
    v12 = outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v1 = 0;
LABEL_11:
  OUTLINED_FUNCTION_153_8(v12, sel_setContactName_);

  v13 = *MEMORY[0x277CC2608];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v72)
  {
    v14 = OUTLINED_FUNCTION_25_34();
    if (v14)
    {
      OUTLINED_FUNCTION_181_10();
      v14 = OUTLINED_FUNCTION_150_8();
      goto LABEL_16;
    }
  }

  else
  {
    v14 = outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v1 = 0;
LABEL_16:
  OUTLINED_FUNCTION_153_8(v14, sel_setContactNickname_);

  v15 = *MEMORY[0x277CC2788];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v16 = OUTLINED_FUNCTION_25_34();
    if (v16)
    {
      Array._bridgeToObjectiveC()();
      v16 = OUTLINED_FUNCTION_150_8();
      goto LABEL_21;
    }
  }

  else
  {
    v16 = outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v1 = 0;
LABEL_21:
  OUTLINED_FUNCTION_153_8(v16, sel_setEmailAddresses_);

  v17 = *MEMORY[0x277CC2EB8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v18 = OUTLINED_FUNCTION_25_34();
    if (v18)
    {
      Array._bridgeToObjectiveC()();
      v18 = OUTLINED_FUNCTION_150_8();
      goto LABEL_26;
    }
  }

  else
  {
    v18 = outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v1 = 0;
LABEL_26:
  OUTLINED_FUNCTION_153_8(v18, sel_setPhoneNumbers_);

  v19 = *MEMORY[0x277CC2618];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v72)
  {
    v20 = OUTLINED_FUNCTION_25_34();
    if (v20)
    {
      OUTLINED_FUNCTION_181_10();
      v20 = OUTLINED_FUNCTION_150_8();
      goto LABEL_31;
    }
  }

  else
  {
    v20 = outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v1 = 0;
LABEL_31:
  OUTLINED_FUNCTION_153_8(v20, sel_setContactSharedBy_);

  v21 = *MEMORY[0x277CC2620];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v72)
  {
    v22 = type metadata accessor for Date();
    OUTLINED_FUNCTION_50_21();
    swift_dynamicCast();
    v23 = OUTLINED_FUNCTION_45_2();
    v26 = OUTLINED_FUNCTION_29_27(v23, v24, v25, v22);
    isa = 0;
    if (__swift_getEnumTagSinglePayload(v26, v27, v22) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      OUTLINED_FUNCTION_51(v22);
      v30 = *(v29 + 8);
      v31 = OUTLINED_FUNCTION_26_2();
      v32(v31);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
    type metadata accessor for Date();
    v33 = OUTLINED_FUNCTION_7_19();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    isa = 0;
  }

  v37 = OUTLINED_FUNCTION_103_15();
  [v37 v38];

  v39 = *MEMORY[0x277CC2610];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v72)
  {
    if (OUTLINED_FUNCTION_25_34())
    {
      OUTLINED_FUNCTION_182_11();
      OUTLINED_FUNCTION_37_3();

      goto LABEL_40;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v8 = 0;
LABEL_40:
  v40 = OUTLINED_FUNCTION_49_26();
  [v40 v41];

  v42 = *MEMORY[0x277CC2D40];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_25_34())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_37_3();

      goto LABEL_45;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v8 = 0;
LABEL_45:
  v43 = OUTLINED_FUNCTION_49_26();
  [v43 v44];

  v45 = *MEMORY[0x277CC24F8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v72)
  {
    v46 = type metadata accessor for Date();
    OUTLINED_FUNCTION_50_21();
    v47 = OUTLINED_FUNCTION_191_9();
    __swift_storeEnumTagSinglePayload(v0, v47 ^ 1u, 1, v46);
    OUTLINED_FUNCTION_28_30(v0, 1, v46);
    if (!v48)
    {
      v8 = Date._bridgeToObjectiveC()().super.isa;
      OUTLINED_FUNCTION_51(v46);
      (*(v49 + 8))(v0, v46);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
    v50 = type metadata accessor for Date();
    OUTLINED_FUNCTION_8_58(v0, v51, v52, v50);
  }

  v53 = OUTLINED_FUNCTION_49_26();
  [v53 v54];

  v55 = *MEMORY[0x277CC2BD0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_25_34())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_54;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v8 = 0;
LABEL_54:
  v56 = OUTLINED_FUNCTION_49_26();
  [v56 v57];

  v58 = *MEMORY[0x277CC32B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_25_34())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_59;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v8 = 0;
LABEL_59:
  v59 = OUTLINED_FUNCTION_49_26();
  [v59 v60];

  v61 = *MEMORY[0x277CC3050];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v72)
  {
    if (OUTLINED_FUNCTION_25_34())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_64;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v8 = 0;
LABEL_64:
  v62 = OUTLINED_FUNCTION_49_26();
  [v62 v63];

  v64 = *MEMORY[0x277CC23F0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_25_34())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_69;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
  }

  v8 = 0;
LABEL_69:
  v65 = OUTLINED_FUNCTION_49_26();
  [v65 v66];

  v67 = *MEMORY[0x277CC2510];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (!v72)
  {
    outlined destroy of IntentApplication?(v71, &_sypSgMd, &_sypSgMR);
    goto LABEL_73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((OUTLINED_FUNCTION_25_34() & 1) == 0)
  {
LABEL_73:
    v8 = 0;
    goto LABEL_74;
  }

  Array._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_104_9();

LABEL_74:
  v68 = OUTLINED_FUNCTION_49_26();
  [v68 v69];
}

void SourceDocumentRetriever.extractPreExtractedSharedLinkAttributes(attributeSet:result:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v78 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_114(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  isa = (v78 - v13);
  v15 = *MEMORY[0x277CC2D38];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v80)
  {
    v16 = OUTLINED_FUNCTION_25_34();
    if (v16)
    {
      OUTLINED_FUNCTION_181_10();
      v16 = OUTLINED_FUNCTION_150_8();
      goto LABEL_6;
    }
  }

  else
  {
    v16 = outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
  }

  v1 = 0;
LABEL_6:
  OUTLINED_FUNCTION_153_8(v16, sel_setLinkType_);

  v17 = *MEMORY[0x277CC2D28];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v80)
  {
    v18 = OUTLINED_FUNCTION_25_34();
    if (v18)
    {
      OUTLINED_FUNCTION_181_10();
      v18 = OUTLINED_FUNCTION_150_8();
      goto LABEL_11;
    }
  }

  else
  {
    v18 = outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
  }

  v1 = 0;
LABEL_11:
  OUTLINED_FUNCTION_153_8(v18, sel_setLinkName_);

  v19 = *MEMORY[0x277CC2D30];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v80)
  {
    v20 = OUTLINED_FUNCTION_25_34();
    if (v20)
    {
      OUTLINED_FUNCTION_181_10();
      v20 = OUTLINED_FUNCTION_150_8();
      goto LABEL_16;
    }
  }

  else
  {
    v20 = outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
  }

  v1 = 0;
LABEL_16:
  OUTLINED_FUNCTION_153_8(v20, sel_setLinkSubType_);

  v21 = *MEMORY[0x277CC31F8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_63_23();

  if (v80)
  {
    v22 = type metadata accessor for URL();
    OUTLINED_FUNCTION_50_21();
    swift_dynamicCast();
    v23 = OUTLINED_FUNCTION_45_2();
    v26 = OUTLINED_FUNCTION_29_27(v23, v24, v25, v22);
    v29 = 0;
    if (__swift_getEnumTagSinglePayload(v26, v27, v22) != 1)
    {
      URL._bridgeToObjectiveC()(v28);
      v29 = v30;
      OUTLINED_FUNCTION_51(v22);
      v32 = *(v31 + 8);
      v33 = OUTLINED_FUNCTION_26_2();
      v34(v33);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
    type metadata accessor for URL();
    v35 = OUTLINED_FUNCTION_7_19();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    v29 = 0;
  }

  v39 = OUTLINED_FUNCTION_103_15();
  [v39 v40];

  OUTLINED_FUNCTION_98_2();
  if ([a1 respondsToSelector_])
  {
    v41 = *MEMORY[0x277CC3200];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_46_28();

    if (v80)
    {
      if (OUTLINED_FUNCTION_25_34())
      {
        OUTLINED_FUNCTION_182_11();
        OUTLINED_FUNCTION_37_3();

LABEL_26:
        v42 = OUTLINED_FUNCTION_49_26();
        [v42 v43];

        goto LABEL_27;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
    }

    isa = 0;
    goto LABEL_26;
  }

LABEL_27:
  v44 = *MEMORY[0x277CC2480];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v80)
  {
    if (OUTLINED_FUNCTION_25_34())
    {
      OUTLINED_FUNCTION_182_11();
      OUTLINED_FUNCTION_37_3();

      goto LABEL_32;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
  }

  isa = 0;
LABEL_32:
  v45 = OUTLINED_FUNCTION_49_26();
  [v45 v46];

  v47 = *MEMORY[0x277CC23F8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v80)
  {
    if (OUTLINED_FUNCTION_25_34())
    {
      OUTLINED_FUNCTION_182_11();
      OUTLINED_FUNCTION_37_3();

      goto LABEL_37;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
  }

  isa = 0;
LABEL_37:
  v48 = OUTLINED_FUNCTION_49_26();
  [v48 v49];

  v50 = *MEMORY[0x277CC3030];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v80)
  {
    v51 = type metadata accessor for Date();
    OUTLINED_FUNCTION_50_21();
    v52 = OUTLINED_FUNCTION_191_9();
    __swift_storeEnumTagSinglePayload(v8, v52 ^ 1u, 1, v51);
    OUTLINED_FUNCTION_28_30(v8, 1, v51);
    if (!v53)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      OUTLINED_FUNCTION_51(v51);
      (*(v54 + 8))(v8, v51);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
    v55 = type metadata accessor for Date();
    OUTLINED_FUNCTION_8_58(v8, v56, v57, v55);
  }

  v58 = OUTLINED_FUNCTION_49_26();
  [v58 v59];

  v60 = *MEMORY[0x277CC2780];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v80)
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_25_34();
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
    isa = 0;
  }

  v61 = OUTLINED_FUNCTION_49_26();
  [v61 v62];

  v63 = *MEMORY[0x277CC2DC8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v80)
  {
    if (OUTLINED_FUNCTION_25_34())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_49;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
  }

  isa = 0;
LABEL_49:
  v64 = OUTLINED_FUNCTION_49_26();
  [v64 v65];

  v66 = *MEMORY[0x277CC26D0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v80)
  {
    if (OUTLINED_FUNCTION_25_34())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_54;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
  }

  isa = 0;
LABEL_54:
  v67 = OUTLINED_FUNCTION_49_26();
  [v67 v68];

  v69 = *MEMORY[0x277CC27B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v80)
  {
    if (OUTLINED_FUNCTION_25_34())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_59;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
  }

  isa = 0;
LABEL_59:
  v70 = OUTLINED_FUNCTION_49_26();
  [v70 v71];

  v72 = *MEMORY[0x277CC2F98];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (v80)
  {
    if (OUTLINED_FUNCTION_25_34())
    {
      OUTLINED_FUNCTION_134_14();
      OUTLINED_FUNCTION_128_11();
      goto LABEL_64;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
  }

  isa = 0;
LABEL_64:
  v73 = OUTLINED_FUNCTION_49_26();
  [v73 v74];

  v75 = *MEMORY[0x277CC31A0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_46_28();

  if (!v80)
  {
    outlined destroy of IntentApplication?(v79, &_sypSgMd, &_sypSgMR);
    goto LABEL_68;
  }

  if ((OUTLINED_FUNCTION_25_34() & 1) == 0)
  {
LABEL_68:
    isa = 0;
    goto LABEL_69;
  }

  MEMORY[0x25F89F4C0](v78[0], v78[1]);
  OUTLINED_FUNCTION_104_9();

LABEL_69:
  v76 = OUTLINED_FUNCTION_49_26();
  [v76 v77];
}

uint64_t SourceDocumentRetriever.extractPreExtractedBreadcrumbAttributes(attributeSet:result:)()
{
  v0 = *MEMORY[0x277CC2AB0];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v1, v2, v3, v4, v5, v6, v7, v8, v93, v103, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_149_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_38_29();
  swift_unknownObjectRelease();
  v9 = *MEMORY[0x277CC2AF0];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v10, v11, v12, v13, v14, v15, v16, v17, v94, v104, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_149_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_38_29();
  swift_unknownObjectRelease();
  v18 = *MEMORY[0x277CC2B08];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v19, v20, v21, v22, v23, v24, v25, v26, v95, v105, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_149_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_38_29();
  swift_unknownObjectRelease();
  v27 = *MEMORY[0x277CC2B00];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v28, v29, v30, v31, v32, v33, v34, v35, v96, v106, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_149_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_38_29();
  swift_unknownObjectRelease();
  v36 = *MEMORY[0x277CC2A98];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v37, v38, v39, v40, v41, v42, v43, v44, v97, v107, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_149_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_38_29();
  swift_unknownObjectRelease();
  v45 = *MEMORY[0x277CC2AD0];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v46, v47, v48, v49, v50, v51, v52, v53, v98, v108, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_149_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_38_29();
  swift_unknownObjectRelease();
  v54 = *MEMORY[0x277CC2AE0];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v55, v56, v57, v58, v59, v60, v61, v62, v99, v109, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_149_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_38_29();
  swift_unknownObjectRelease();
  v63 = *MEMORY[0x277CC2B10];
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v64, v65, v66, v67, v68, v69, v70, v71, v100, v110, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_149_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_38_29();
  swift_unknownObjectRelease();
  v72 = *MEMORY[0x277CC2AA0];
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v73, v74, v75, v76, v77, v78, v79, v80, v101, v111, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_149_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_38_29();
  swift_unknownObjectRelease();
  v81 = *MEMORY[0x277CC2AC0];
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_65_24(v82, v83, v84, v85, v86, v87, v88, v89, v102, v112, v113);

  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (OUTLINED_FUNCTION_22_33())
    {
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_128_11();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v113, &_sypSgMd, &_sypSgMR);
  }

  v90 = OUTLINED_FUNCTION_49_26();
  [v90 v91];
  return swift_unknownObjectRelease();
}

uint64_t SourceDocumentRetriever.fetchPhotosDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[81] = v0;
  v1[80] = v2;
  v1[79] = v3;
  v1[78] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[82] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[83] = v6;
  v8 = *(v7 + 64);
  v1[84] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[85] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[86] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[87] = OUTLINED_FUNCTION_160();
  v1[88] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v1[89] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[90] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[91] = OUTLINED_FUNCTION_199();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v23 = *(v22 + 64);
  v1[92] = OUTLINED_FUNCTION_199();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v24);
  v26 = *(v25 + 64);
  v1[93] = OUTLINED_FUNCTION_199();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  v1[94] = OUTLINED_FUNCTION_199();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v30);
  v32 = *(v31 + 64);
  v1[95] = OUTLINED_FUNCTION_160();
  v1[96] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v33);
  v35 = *(v34 + 64);
  v1[97] = OUTLINED_FUNCTION_160();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v36 = type metadata accessor for Photo();
  v1[100] = v36;
  OUTLINED_FUNCTION_21(v36);
  v1[101] = v37;
  v39 = *(v38 + 64);
  v1[102] = OUTLINED_FUNCTION_199();
  v40 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 648));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 824) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchPhotosDocument(docId:);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);
  v7 = *(v0 + 632);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 824);
  *v2 = *v0;
  *(v1 + 832) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v2 = *(v1 + 832);
  if (v2)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logging.search);
    swift_bridgeObjectRetain_n();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v5))
    {
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_51_13();
      *v0 = 136315651;
      v6 = OUTLINED_FUNCTION_228_4();
      OUTLINED_FUNCTION_25_18(v6);
      Dictionary.description.getter();
      v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v0 + 14) = v7;
      OUTLINED_FUNCTION_169_11();
      v8 = *(v2 + 16);

      *(v0 + 24) = v8;

      OUTLINED_FUNCTION_90_10(&dword_25D85C000, v9, v5, "%s Fetched photo attributes %{sensitive}s, count: %ld");
      OUTLINED_FUNCTION_175_9();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_52_16();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v173 = *MEMORY[0x277CC2ED0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_78_19();
    specialized Dictionary.subscript.getter(v2, v16);

    if (*(v1 + 40))
    {
      OUTLINED_FUNCTION_129_15();
      v17 = *(v1 + 528);
      v18 = *(v1 + 536);
      OUTLINED_FUNCTION_57_21();
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 16, &_sypSgMd, &_sypSgMR);
    }

    v19 = *MEMORY[0x277CC2F00];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_121_12();
    specialized Dictionary.subscript.getter(v2, v20);

    if (*(v1 + 72))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_74_21())
      {
        v21 = *(v1 + 616);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 48, &_sypSgMd, &_sypSgMR);
    }

    v165 = *MEMORY[0x277CC2F88];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_120_11();
    specialized Dictionary.subscript.getter(v2, v22);

    if (*(v1 + 104))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_74_21())
      {
        v23 = *(v1 + 608);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 80, &_sypSgMd, &_sypSgMR);
    }

    v169 = *MEMORY[0x277CC2F58];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_166_7();
    specialized Dictionary.subscript.getter(v2, v24);

    if (*(v1 + 136))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_74_21())
      {
        v25 = *(v1 + 600);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 112, &_sypSgMd, &_sypSgMR);
    }

    v26 = *MEMORY[0x277CC3118];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_165_8();
    specialized Dictionary.subscript.getter(v2, v27);

    if (*(v1 + 168))
    {
      OUTLINED_FUNCTION_129_15();
      v28 = *(v1 + 512);
      v29 = *(v1 + 520);
      OUTLINED_FUNCTION_57_21();
      if (v31)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      v158 = v32;
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 144, &_sypSgMd, &_sypSgMR);
      v158 = 0;
    }

    v159 = *MEMORY[0x277CC2640];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_167_6();
    specialized Dictionary.subscript.getter(v2, v33);

    v34 = *(v1 + 792);
    if (*(v1 + 200))
    {
      v35 = type metadata accessor for Date();
      OUTLINED_FUNCTION_69_19();
      v36 = OUTLINED_FUNCTION_45_2();
      v39 = v35;
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 176, &_sypSgMd, &_sypSgMR);
      type metadata accessor for Date();
      v36 = OUTLINED_FUNCTION_7_19();
    }

    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    v162 = *MEMORY[0x277CC2EC0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_136_14();
    specialized Dictionary.subscript.getter(v2, v40);

    if (*(v1 + 232))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_74_21())
      {
        v41 = *(v1 + 592);
        goto LABEL_37;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 208, &_sypSgMd, &_sypSgMR);
    }

    v41 = MEMORY[0x277D84F90];
LABEL_37:
    v157 = v41;
    v42 = *MEMORY[0x277CC2F28];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_137_8();
    specialized Dictionary.subscript.getter(v2, v43);

    if (*(v1 + 264))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_74_21())
      {
        v44 = *(v1 + 584);
        goto LABEL_42;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 240, &_sypSgMd, &_sypSgMR);
    }

    v44 = MEMORY[0x277D84F90];
LABEL_42:
    v156 = v44;
    v45 = *MEMORY[0x277CC2F20];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v2, (v1 + 272));

    if (*(v1 + 296))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_74_21())
      {
        v46 = *(v1 + 576);
        goto LABEL_47;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 272, &_sypSgMd, &_sypSgMR);
    }

    v46 = MEMORY[0x277D84F90];
LABEL_47:
    v155 = v46;
    v47 = *MEMORY[0x277CC2F40];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v2, (v1 + 304));

    v177 = v2;
    if (*(v1 + 328))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_74_21())
      {
        v48 = *(v1 + 568);
        goto LABEL_52;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 304, &_sypSgMd, &_sypSgMR);
    }

    v48 = MEMORY[0x277D84F90];
LABEL_52:
    v154 = v48;
    v49 = *(v1 + 792);
    v50 = *(v1 + 784);
    v51 = *(v1 + 768);
    v52 = *(v1 + 760);
    v53 = *(v1 + 752);
    v54 = *(v1 + 744);
    v55 = *(v1 + 736);
    v56 = *(v1 + 728);
    v57 = *(v1 + 640);
    v152 = *(v1 + 632);
    v153 = *(v1 + 816);
    type metadata accessor for PartialExtractedAttributes();
    OUTLINED_FUNCTION_158_8();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
    v62 = OUTLINED_FUNCTION_45_0();
    outlined init with copy of SpotlightRankingItem?(v62, v63, v64, v65);
    outlined init with copy of SpotlightRankingItem?(v51, v52, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
    type metadata accessor for PreExtractedSharedLink();
    v74 = OUTLINED_FUNCTION_19_43();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
    type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);

    OUTLINED_FUNCTION_94();
    Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
    outlined destroy of IntentApplication?(v51, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of IntentApplication?(v49, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v82 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v83 = OUTLINED_FUNCTION_94();
    outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.identifier.setter(v83, v84, v82);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;
    specialized Dictionary.subscript.getter(v177, (v1 + 336));

    if (*(v1 + 360))
    {
      v87 = OUTLINED_FUNCTION_117_15();
      if (v87)
      {
        MEMORY[0x25F89F4C0](*(v1 + 496), *(v1 + 504));
        OUTLINED_FUNCTION_112_2();

        goto LABEL_57;
      }
    }

    else
    {
      v87 = outlined destroy of IntentApplication?(v1 + 336, &_sypSgMd, &_sypSgMR);
    }

    v86 = 0;
LABEL_57:
    OUTLINED_FUNCTION_194_9(v87, sel_setPhotosContentDescription_);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v177, (v1 + 368));

    if (*(v1 + 392))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_115_14())
      {
        v88 = *(v1 + 560);
        goto LABEL_62;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 368, &_sypSgMd, &_sypSgMR);
    }

    v88 = MEMORY[0x277D84F90];
LABEL_62:
    outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v88, v82, &selRef_setPhotosSeasons_);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v177, (v1 + 400));

    if (*(v1 + 424))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_115_14())
      {
        v89 = *(v1 + 552);
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 400, &_sypSgMd, &_sypSgMR);
    }

    v89 = MEMORY[0x277D84F90];
LABEL_67:
    outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v89, v82, &selRef_setPhotosScenes_);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v177, (v1 + 432));

    v90 = *(v1 + 776);
    if (*(v1 + 456))
    {
      v91 = type metadata accessor for Date();
      v92 = OUTLINED_FUNCTION_69_19();
      v93 = OUTLINED_FUNCTION_3_73(v92);
      if (!v31)
      {
        v94 = *(v1 + 776);
        v90 = v94;
        Date._bridgeToObjectiveC()();
        OUTLINED_FUNCTION_12_50();
        v93 = (*(v95 + 8))(v94, v91);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 432, &_sypSgMd, &_sypSgMR);
      v96 = type metadata accessor for Date();
      v93 = OUTLINED_FUNCTION_5_60(v96);
    }

    OUTLINED_FUNCTION_194_9(v93, sel_setPhotosContentCreationDate_);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v177, (v1 + 464));

    if (*(v1 + 488))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_115_14())
      {
        v97 = *(v1 + 544);
LABEL_76:
        v98 = *(v1 + 808);
        v160 = *(v1 + 800);
        v161 = *(v1 + 816);
        v99 = *(v1 + 720);
        v166 = *(v1 + 704);
        v170 = *(v1 + 712);
        v174 = *(v1 + 696);
        v100 = *(v1 + 688);
        v101 = *(v1 + 680);
        v163 = *(v1 + 656);
        v102 = *(v1 + 640);
        v103 = *(v1 + 632);
        outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v97, v82, &selRef_setPhotosBusinessNames_);
        SourceDocumentRetriever.extractPreExtractedCardAttributes(attributeSet:result:)(v82);
        OUTLINED_FUNCTION_123_14();
        SourceDocumentRetriever.extractPreExtractedContactAttributes(attributeSet:result:)();
        v104 = OUTLINED_FUNCTION_123_14();
        SourceDocumentRetriever.extractPreExtractedSharedLinkAttributes(attributeSet:result:)(v104);
        OUTLINED_FUNCTION_123_14();
        SourceDocumentRetriever.extractPreExtractedBreadcrumbAttributes(attributeSet:result:)();

        v105 = objc_allocWithZone(MEMORY[0x277CC34B0]);
        OUTLINED_FUNCTION_37_3();

        v178 = v82;
        v106 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v103, v102, 0xD000000000000019, 0x800000025DBF1E10, v178);
        v107 = MEMORY[0x25F89F4C0](0xD000000000000019, 0x800000025DBF1E10);
        OUTLINED_FUNCTION_152_8(v107, sel_setBundleID_);

        (*(v98 + 16))(v99, v161, v160);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v108, v109, v110, v163);
        *(v100 + v101[7]) = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_7_25((v100 + v101[10]));
        v111 = OUTLINED_FUNCTION_10_16();
        _s10OmniSearch0B6ResultVWOcTm_7(v111, v112, v113);
        v114 = v101[6];
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        v171 = v106;
        OUTLINED_FUNCTION_201_0();
        CodableNSSecureCoding.init(wrappedValue:)();
        outlined init with copy of SpotlightRankingItem?(v166, v174, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v115 = OUTLINED_FUNCTION_65();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v115, v116, v163);
        v118 = *(v1 + 816);
        v119 = *(v1 + 808);
        v120 = *(v1 + 720);
        v175 = *(v1 + 704);
        v121 = *(v1 + 688);
        v122 = *(v1 + 680);
        if (EnumTagSinglePayload == 1)
        {
          v123 = *(v1 + 696);
          OUTLINED_FUNCTION_163_10();
          outlined destroy of IntentApplication?(v124, v125, v126);
          v127 = *(v122 + 20);
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_92_13();
          OUTLINED_FUNCTION_109_17();
          OUTLINED_FUNCTION_108_12();
          OUTLINED_FUNCTION_36_29();
          OUTLINED_FUNCTION_19_18();

          OUTLINED_FUNCTION_163_10();
          outlined destroy of IntentApplication?(v128, v129, v130);
          OUTLINED_FUNCTION_0_48();
          _s10OmniSearch0B6ResultVWOhTm_4(v120, v131);
          v132 = *(v119 + 8);
          v133 = OUTLINED_FUNCTION_194_7();
          v134(v133);
        }

        else
        {
          v135 = *(v1 + 672);
          v167 = *(v1 + 688);
          v136 = *(v1 + 800);
          v137 = *(v1 + 664);
          v138 = *(v1 + 656);

          outlined destroy of IntentApplication?(v175, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_48();
          _s10OmniSearch0B6ResultVWOhTm_4(v120, v139);
          v140 = *(v119 + 8);
          v141 = OUTLINED_FUNCTION_45_0();
          v142(v141);
          v143 = OUTLINED_FUNCTION_147_10();
          (v136)(v143);
          v144 = *(v122 + 20);
          OUTLINED_FUNCTION_163_10();
          v136();
        }

        v145 = *(v1 + 680);
        v146 = *(v1 + 624);
        OUTLINED_FUNCTION_11_60(*(v1 + 688));
        v12 = OUTLINED_FUNCTION_10_53();
        goto LABEL_80;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 464, &_sypSgMd, &_sypSgMR);
    }

    v97 = MEMORY[0x277D84F90];
    goto LABEL_76;
  }

  v10 = *(v1 + 680);
  v11 = *(v1 + 624);
  OUTLINED_FUNCTION_92();
LABEL_80:
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_119_13();
  v147 = *(v1 + 744);
  v148 = *(v1 + 736);
  v149 = *(v1 + 728);
  v164 = *(v1 + 720);
  v168 = *(v1 + 704);
  v172 = *(v1 + 696);
  v176 = *(v1 + 688);
  v179 = *(v1 + 672);

  OUTLINED_FUNCTION_127();

  return v150();
}

uint64_t SourceDocumentRetriever.fetchContactsDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[46] = v2;
  v1[47] = v0;
  v1[44] = v3;
  v1[45] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[48] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[49] = v6;
  v8 = *(v7 + 64);
  v1[50] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[51] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[52] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[53] = OUTLINED_FUNCTION_160();
  v1[54] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v1[55] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[56] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for Contact();
  v1[57] = v18;
  OUTLINED_FUNCTION_21(v18);
  v1[58] = v19;
  v21 = *(v20 + 64);
  v1[59] = OUTLINED_FUNCTION_199();
  v22 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 376));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 480) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchContactsDocument(docId:);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);
  v7 = *(v0 + 360);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 480);
  *v2 = *v0;
  *(v1 + 488) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v3 = *(v1 + 488);
  if (v3)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logging.search);
    OUTLINED_FUNCTION_112_2();
    swift_bridgeObjectRetain_n();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v6))
    {
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_51_13();
      *v0 = 136315651;
      OUTLINED_FUNCTION_85_17();
      v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_25_18(v7);
      OUTLINED_FUNCTION_175_9();
      Dictionary.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_169_10();
      *(v0 + 14) = v2;
      OUTLINED_FUNCTION_169_11();
      v8 = *(v3 + 16);

      *(v0 + 24) = v8;

      OUTLINED_FUNCTION_90_10(&dword_25D85C000, v9, v6, "%s Fetched contact attributes %{sensitive}s, count: %ld");
      OUTLINED_FUNCTION_193_9();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
      OUTLINED_FUNCTION_84_14();
      swift_bridgeObjectRelease_n();
    }

    v16 = *MEMORY[0x277CC2760];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_78_19();
    specialized Dictionary.subscript.getter(v3, v17);

    if (*(v1 + 40))
    {
      OUTLINED_FUNCTION_129_15();
      v18 = *(v1 + 288);
      v19 = *(v1 + 296);
      OUTLINED_FUNCTION_57_21();
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 16, &_sypSgMd, &_sypSgMR);
    }

    v100 = *MEMORY[0x277CC2EB8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_121_12();
    specialized Dictionary.subscript.getter(v3, v20);

    if (*(v1 + 72))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_129_15())
      {
        v21 = *(v1 + 344);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 48, &_sypSgMd, &_sypSgMR);
    }

    v103 = *MEMORY[0x277CC2788];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_120_11();
    specialized Dictionary.subscript.getter(v3, v22);

    if (*(v1 + 104))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_129_15())
      {
        v23 = *(v1 + 336);
        goto LABEL_20;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 80, &_sypSgMd, &_sypSgMR);
    }

    v23 = MEMORY[0x277D84F90];
LABEL_20:
    v106 = *MEMORY[0x277CC24B0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v3, (v1 + 112));

    if (*(v1 + 136))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_129_15())
      {
        v24 = *(v1 + 328);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 112, &_sypSgMd, &_sypSgMR);
    }

    v25 = *(v1 + 472);
    v27 = *(v1 + 360);
    v26 = *(v1 + 368);

    OUTLINED_FUNCTION_113_11();
    Contact.init(id:name:phoneNumbers:emailAddresses:physicalAddresses:dates:birthday:)();
    v28 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v29 = OUTLINED_FUNCTION_113_11();
    outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.identifier.setter(v29, v30, v28);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_165_8();
    specialized Dictionary.subscript.getter(v3, v31);

    if (*(v1 + 168))
    {
      if (OUTLINED_FUNCTION_112_18())
      {
        MEMORY[0x25F89F4C0](*(v1 + 272), *(v1 + 280));
        OUTLINED_FUNCTION_175_3();
        goto LABEL_29;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 144, &_sypSgMd, &_sypSgMR);
    }

    v23 = 0;
LABEL_29:
    [v28 setDisplayName_];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_167_6();
    specialized Dictionary.subscript.getter(v3, v32);

    if (*(v1 + 200))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_112_18())
      {
        v33 = *(v1 + 320);
        goto LABEL_34;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 176, &_sypSgMd, &_sypSgMR);
    }

    v33 = MEMORY[0x277D84F90];
LABEL_34:
    outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.phoneNumbers.setter(v33, v28);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_136_14();
    specialized Dictionary.subscript.getter(v3, v34);

    if (*(v1 + 232))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (OUTLINED_FUNCTION_112_18())
      {
        v35 = *(v1 + 312);
        goto LABEL_39;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 208, &_sypSgMd, &_sypSgMR);
    }

    v35 = MEMORY[0x277D84F90];
LABEL_39:
    outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.emailAddresses.setter(v35, v28);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_137_8();
    specialized Dictionary.subscript.getter(v3, v36);

    if (*(v1 + 264))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v37 = v28;
      if (OUTLINED_FUNCTION_112_18())
      {
        v38 = *(v1 + 304);
LABEL_44:
        v39 = *(v1 + 464);
        v40 = *(v1 + 448);
        v96 = *(v1 + 456);
        v97 = *(v1 + 472);
        v41 = *(v1 + 416);
        v101 = *(v1 + 432);
        v104 = *(v1 + 424);
        v42 = *(v1 + 408);
        v98 = *(v1 + 440);
        v99 = *(v1 + 384);
        v44 = *(v1 + 360);
        v43 = *(v1 + 368);
        outlined bridged method (mbnn) of @objc CSSearchableItemAttributeSet.authorAddresses.setter(v38, v37);
        objc_allocWithZone(MEMORY[0x277CC34B0]);

        v45 = v37;
        v46 = OUTLINED_FUNCTION_123_14();
        v107 = v47;
        v50 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v46, v48, 0xD00000000000001BLL, v49, v47);
        v51 = MEMORY[0x25F89F4C0](0xD00000000000001BLL, 0x800000025DBF1CD0);
        [v50 setBundleID_];

        (*(v39 + 16))(v40, v97, v96);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v52, v53, v54, v99);
        *(v41 + v42[7]) = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_7_25((v41 + v42[10]));
        _s10OmniSearch0B6ResultVWOcTm_7(v40, v41, v55);
        v56 = v42[6];
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        v57 = v50;
        OUTLINED_FUNCTION_201_0();
        CodableNSSecureCoding.init(wrappedValue:)();
        outlined init with copy of SpotlightRankingItem?(v101, v104, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v58 = OUTLINED_FUNCTION_65();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, v59, v99);
        v62 = *(v1 + 464);
        v61 = *(v1 + 472);
        v64 = *(v1 + 448);
        v63 = *(v1 + 456);
        v65 = *(v1 + 432);
        v66 = *(v1 + 408);
        v102 = v65;
        v105 = *(v1 + 416);
        if (EnumTagSinglePayload == 1)
        {
          v67 = OUTLINED_FUNCTION_171_8();
          outlined destroy of IntentApplication?(v67, v68, v69);
          v70 = *(v66 + 20);
          OUTLINED_FUNCTION_140_5();
          OUTLINED_FUNCTION_140_5();
          OUTLINED_FUNCTION_140_5();
          OUTLINED_FUNCTION_140_5();
          OUTLINED_FUNCTION_140_5();
          OUTLINED_FUNCTION_82_17();
          OUTLINED_FUNCTION_14_38();

          OUTLINED_FUNCTION_205_7();
          outlined destroy of IntentApplication?(v71, v72, v73);
          OUTLINED_FUNCTION_0_48();
          _s10OmniSearch0B6ResultVWOhTm_4(v64, v74);
          v75 = *(v62 + 8);
          v76 = OUTLINED_FUNCTION_113_11();
          v77(v76);
        }

        else
        {
          v79 = *(v1 + 392);
          v78 = *(v1 + 400);
          v80 = *(v1 + 384);

          outlined destroy of IntentApplication?(v102, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_48();
          _s10OmniSearch0B6ResultVWOhTm_4(v64, v81);
          v82 = OUTLINED_FUNCTION_212_6();
          v83(v82, v63);
          v84 = OUTLINED_FUNCTION_147_10();
          (v57)(v84);
          v85 = *(v66 + 20);
          OUTLINED_FUNCTION_163_10();
          (v57)();
        }

        v86 = *(v1 + 408);
        v87 = *(v1 + 352);
        OUTLINED_FUNCTION_11_60(*(v1 + 416));
        v12 = OUTLINED_FUNCTION_10_53();
        goto LABEL_48;
      }
    }

    else
    {
      v37 = v28;
      outlined destroy of IntentApplication?(v1 + 240, &_sypSgMd, &_sypSgMR);
    }

    v38 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v10 = *(v1 + 408);
  v11 = *(v1 + 352);
  OUTLINED_FUNCTION_92();
LABEL_48:
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v88 = *(v1 + 472);
  v89 = *(v1 + 448);
  v91 = *(v1 + 424);
  v90 = *(v1 + 432);
  v92 = *(v1 + 416);
  v93 = *(v1 + 400);

  OUTLINED_FUNCTION_127();

  return v94();
}

uint64_t SourceDocumentRetriever.fetchMailDocument(docId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t SourceDocumentRetriever.fetchMailDocument(docId:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 96));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchMailDocument(docId:);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v0[15];
  v1 = v0[16];
  specialized Collection.first.getter(v0[8], v0[9]);

  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t SourceDocumentRetriever.fetchMailDocument(docId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 112);
  if (!v22)
  {
    goto LABEL_18;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logging.search);
  OUTLINED_FUNCTION_112_2();
  swift_bridgeObjectRetain_n();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_161_6();
    *v21 = 136315651;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_27_28(v26);
    Dictionary.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_156_9();
    *(v21 + 14) = "fetchMailDocument(docId:)";
    *(v21 + 22) = 2048;
    v27 = *(v22 + 16);

    *(v21 + 24) = v27;

    _os_log_impl(&dword_25D85C000, v24, v25, "%s Fetched Mail attributes %{sensitive}s, count: %ld", v21, 0x20u);
    OUTLINED_FUNCTION_132_12();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    OUTLINED_FUNCTION_84_14();
    swift_bridgeObjectRelease_n();
  }

  specialized Dictionary.subscript.getter(v22, (v20 + 16));

  if (!*(v20 + 40))
  {
    outlined destroy of IntentApplication?(v20 + 16, &_sypSgMd, &_sypSgMR);
    goto LABEL_15;
  }

  if ((OUTLINED_FUNCTION_97_11() & 1) == 0)
  {
LABEL_15:
    v51 = *(v20 + 88);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v55 = *(v20 + 80);
      v54 = *(v20 + 88);
      v56 = OUTLINED_FUNCTION_49_0();
      swift_slowAlloc();
      *v56 = 136315650;
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v56 + 12) = 2080;
      *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v56 + 22) = 2080;
      OUTLINED_FUNCTION_45_0();
      *(v56 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_90_10(&dword_25D85C000, v57, v53, "Unable to get %s from result: %s, docId: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

LABEL_18:
    v58 = *(v20 + 72);
    type metadata accessor for SearchResult(0);
    v59 = OUTLINED_FUNCTION_7_19();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_83_0();

    __asm { BRAA            X1, X16 }
  }

  v29 = *(v20 + 48);
  v28 = *(v20 + 56);
  v30 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  *(v20 + 120) = v30;
  if (one-time initialization token for searchableAttributes != -1)
  {
    OUTLINED_FUNCTION_101_13();
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  v32 = OUTLINED_FUNCTION_49_26();
  [v32 v33];

  _StringGuts.grow(_:)(30);

  v34 = OUTLINED_FUNCTION_116_1();
  MEMORY[0x25F89F6C0](v34);

  MEMORY[0x25F89F6C0](34, 0xE100000000000000);
  objc_allocWithZone(MEMORY[0x277CC3498]);
  v35 = v30;
  v36 = OUTLINED_FUNCTION_88();
  v38 = @nonobjc CSSearchQuery.init(queryString:queryContext:)(v36, v37, v30);
  *(v20 + 128) = v38;
  v39 = swift_task_alloc();
  *(v20 + 136) = v39;
  *(v39 + 16) = v38;
  v40 = *(MEMORY[0x277D859E0] + 4);
  v41 = swift_task_alloc();
  *(v20 + 144) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  *v41 = v20;
  v41[1] = SourceDocumentRetriever.fetchMailDocument(docId:);
  OUTLINED_FUNCTION_83_0();

  return MEMORY[0x2822007B8](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t closure #1 in SourceDocumentRetriever.fetchMailDocument(docId:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10OmniSearch0B6ResultVGs5NeverOGMd, &_sScCySay10OmniSearch0B6ResultVGs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v19 = partial apply for closure #1 in closure #1 in SourceDocumentRetriever.fetchMailDocument(docId:);
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ();
  v18 = &block_descriptor_30_1;
  v10 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v10);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v19 = partial apply for closure #2 in closure #1 in SourceDocumentRetriever.fetchMailDocument(docId:);
  v20 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v18 = &block_descriptor_36;
  v13 = _Block_copy(&aBlock);

  [a2 setCompletionHandler_];
  _Block_release(v13);
  [a2 start];
}

void closure #1 in closure #1 in SourceDocumentRetriever.fetchMailDocument(docId:)(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v73 = type metadata accessor for SpotlightRankingItem();
  v3 = *(v73 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v73);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v59 - v11;
  v68 = type metadata accessor for SearchResultItem(0);
  v12 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchResult(0);
  v67 = *(v15 - 1);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v66 = &v59 - v20;
  v21 = type metadata accessor for EmailDocument();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v75 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 < 0)
    {
      v58 = a1;
    }

    else
    {
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v26 = MEMORY[0x25F8A01B0](v58, v24);
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }
  }

  if (v26 >= 1)
  {
    v27 = 0;
    v71 = 0x800000025DBF1CF0;
    v72 = v26;
    v76 = a1 & 0xC000000000000001;
    v60 = (v3 + 32);
    v62 = (v22 + 8);
    v63 = (v22 + 16);
    v74 = v14;
    v64 = v21;
    v65 = a1;
    while (1)
    {
      v28 = v76 ? MEMORY[0x25F89FFD0](v27, a1, v24) : *(a1 + 8 * v27 + 32);
      v29 = v28;
      v30 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v28);
      if (v31)
      {
        break;
      }

LABEL_22:
      if (v26 == ++v27)
      {
        return;
      }
    }

    if (v30 == 0xD000000000000014 && v31 == v71)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {

LABEL_21:
        v26 = v72;
        goto LABEL_22;
      }
    }

    v34 = v29;
    v35 = v75;
    EmailDocument.init(from:)(v34, v36, v37, v38, v39, v40, v41, v42, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    (*v63)(v14, v35, v21);
    swift_storeEnumTagMultiPayload();
    v43 = v69;
    v44 = v73;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v73);
    *&v18[v15[7]] = MEMORY[0x277D84F90];
    v45 = &v18[v15[10]];
    *v45 = 0;
    *(v45 + 1) = 0;
    _s10OmniSearch0B6ResultVWOcTm_7(v14, v18, type metadata accessor for SearchResultItem);
    v46 = v15[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v47 = v34;
    v48 = v43;
    v49 = v47;
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of SpotlightRankingItem?(v48, v9, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    if (__swift_getEnumTagSinglePayload(v9, 1, v44) == 1)
    {
      outlined destroy of IntentApplication?(v9, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      v50 = v15[5];
      v77 = 1;
      SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
      outlined destroy of IntentApplication?(v48, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      _s10OmniSearch0B6ResultVWOhTm_4(v74, type metadata accessor for SearchResultItem);
    }

    else
    {
      outlined destroy of IntentApplication?(v48, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      _s10OmniSearch0B6ResultVWOhTm_4(v74, type metadata accessor for SearchResultItem);
      v51 = v61;
      v52 = *v60;
      v53 = v73;
      (*v60)(v61, v9, v73);
      v52(&v18[v15[5]], v51, v53);
    }

    a1 = v65;
    v18[v15[8]] = 1;
    v18[v15[9]] = 1;
    v54 = v66;
    outlined init with take of SearchResult(v18, v66);
    v55 = v70;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v56 = *(*(v55 + 16) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v56);
    v57 = *(v55 + 16);
    *(v57 + 16) = v56 + 1;
    outlined init with take of SearchResult(v54, v57 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v56);
    *(v55 + 16) = v57;
    swift_endAccess();

    v21 = v64;
    (*v62)(v75, v64);
    v14 = v74;
    goto LABEL_21;
  }

  __break(1u);
}

uint64_t closure #2 in closure #1 in SourceDocumentRetriever.fetchMailDocument(docId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10OmniSearch0B6ResultVGs5NeverOGMd, &_sScCySay10OmniSearch0B6ResultVGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t SourceDocumentRetriever.fetchNoteDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[59] = v2;
  v1[60] = v0;
  v1[57] = v3;
  v1[58] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[61] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[62] = v6;
  v8 = *(v7 + 64);
  v1[63] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[64] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[65] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[66] = OUTLINED_FUNCTION_160();
  v1[67] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v1[68] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[69] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[70] = OUTLINED_FUNCTION_160();
  v1[71] = swift_task_alloc();
  v21 = type metadata accessor for SpotlightKeys();
  v1[72] = v21;
  OUTLINED_FUNCTION_21(v21);
  v1[73] = v22;
  v24 = *(v23 + 64);
  v1[74] = OUTLINED_FUNCTION_160();
  v1[75] = swift_task_alloc();
  v25 = type metadata accessor for NoteDocument();
  v1[76] = v25;
  OUTLINED_FUNCTION_21(v25);
  v1[77] = v26;
  v28 = *(v27 + 64);
  v1[78] = OUTLINED_FUNCTION_199();
  v29 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 480));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 632) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchNoteDocument(docId:);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v7 = *(v0 + 464);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 632);
  *v2 = *v0;
  *(v1 + 640) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t SourceDocumentRetriever.fetchNoteDocument(docId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t), void (*a19)(void), uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_217_7();
  v28 = *(v26 + 640);
  if (!v28)
  {
    v39 = *(v26 + 512);
    v40 = *(v26 + 456);
    OUTLINED_FUNCTION_92();
    goto LABEL_58;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logging.search);
  OUTLINED_FUNCTION_86_17();
  swift_bridgeObjectRetain_n();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_89_18(v31))
  {
    OUTLINED_FUNCTION_49_0();
    v32 = OUTLINED_FUNCTION_161_6();
    OUTLINED_FUNCTION_122_12(v32);
    *v27 = 136315651;
    OUTLINED_FUNCTION_85_17();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_27_28(v33);
    OUTLINED_FUNCTION_232_1();
    OUTLINED_FUNCTION_231_3();
    OUTLINED_FUNCTION_156_9();
    OUTLINED_FUNCTION_60_17();
    OUTLINED_FUNCTION_227_4();
    OUTLINED_FUNCTION_30_33();
    _os_log_impl(v34, v35, v36, v37, v38, 0x20u);
    OUTLINED_FUNCTION_132_12();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    OUTLINED_FUNCTION_86_17();
    swift_bridgeObjectRelease_n();
  }

  v45 = *(v26 + 584);
  a19 = *(v45 + 104);
  (a19)(*(v26 + 600), *MEMORY[0x277CB9E00], *(v26 + 576));
  SpotlightKeys.description.getter();
  v46 = *(v45 + 8);
  v47 = OUTLINED_FUNCTION_26_2();
  a18 = v48;
  (v48)(v47);
  specialized Dictionary.subscript.getter(v28, (v26 + 16));

  if (*(v26 + 40))
  {
    OUTLINED_FUNCTION_97_11();
    v49 = *(v26 + 432);
    v50 = *(v26 + 440);
    OUTLINED_FUNCTION_57_21();
    if (v53)
    {
      v54 = 0;
    }

    else
    {
      v54 = v51;
    }

    a16 = v54;
    a17 = v52;
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 16, &_sypSgMd, &_sypSgMR);
    a16 = 0;
    a17 = 0;
  }

  v55 = *MEMORY[0x277CC2750];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_190_10();

  if (*(v26 + 72))
  {
    OUTLINED_FUNCTION_220_4();
    v56 = *(v26 + 416);
    v57 = *(v26 + 424);
    OUTLINED_FUNCTION_57_21();
    if (v53)
    {
      v60 = 0;
    }

    else
    {
      v60 = v58;
    }

    a14 = v60;
    a15 = v59;
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 48, &_sypSgMd, &_sypSgMR);
    a14 = 0;
    a15 = 0;
  }

  v61 = *MEMORY[0x277CC2DE0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v28, (v26 + 80));

  if (*(v26 + 104))
  {
    if (OUTLINED_FUNCTION_220_4())
    {
      v62 = *(v26 + 400);
      v63 = *(v26 + 408);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 80, &_sypSgMd, &_sypSgMR);
  }

  v64 = *MEMORY[0x277CC2640];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v28, (v26 + 112));

  v65 = *(v26 + 568);
  if (*(v26 + 136))
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_220_5();
    v66 = OUTLINED_FUNCTION_203_7();
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 112, &_sypSgMd, &_sypSgMR);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_92();
  }

  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  v70 = *MEMORY[0x277CC2D10];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v28, (v26 + 144));

  v71 = *(v26 + 560);
  if (*(v26 + 168))
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_220_5();
    v72 = OUTLINED_FUNCTION_203_7();
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 144, &_sypSgMd, &_sypSgMR);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_92();
  }

  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  v76 = *(v26 + 624);
  v77 = *(v26 + 568);
  v78 = *(v26 + 560);
  v79 = *(v26 + 464);
  v80 = *(v26 + 472);

  a9 = v77;
  a10 = v78;
  NoteDocument.init(id:title:contentSnippet:folderName:creationDate:lastUsedDate:)();
  v81 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v82 = *MEMORY[0x277CC2A80];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_167_6();
  specialized Dictionary.subscript.getter(v28, v83);

  if (*(v26 + 200))
  {
    v84 = OUTLINED_FUNCTION_112_18();
    if (v84)
    {
      MEMORY[0x25F89F4C0](*(v26 + 384), *(v26 + 392));
      OUTLINED_FUNCTION_112_2();

      goto LABEL_36;
    }
  }

  else
  {
    v84 = outlined destroy of IntentApplication?(v26 + 176, &_sypSgMd, &_sypSgMR);
  }

  v79 = 0;
LABEL_36:
  OUTLINED_FUNCTION_145_8(v84, sel_setIdentifier_);

  v85 = *MEMORY[0x277CC2FD8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_136_14();
  specialized Dictionary.subscript.getter(v28, v86);

  if (*(v26 + 232))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v87 = OUTLINED_FUNCTION_220_4();
    if (v87)
    {
      v88 = *(v26 + 448);
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_112_2();

      goto LABEL_41;
    }
  }

  else
  {
    v87 = outlined destroy of IntentApplication?(v26 + 208, &_sypSgMd, &_sypSgMR);
  }

  v79 = 0;
LABEL_41:
  OUTLINED_FUNCTION_145_8(v87, sel_setProviderDataTypeIdentifiers_);

  v89 = *MEMORY[0x277CC2418];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_137_8();
  specialized Dictionary.subscript.getter(v28, v90);

  if (!*(v26 + 264))
  {
    v91 = outlined destroy of IntentApplication?(v26 + 240, &_sypSgMd, &_sypSgMR);
    goto LABEL_45;
  }

  v91 = OUTLINED_FUNCTION_220_4();
  if ((v91 & 1) == 0)
  {
LABEL_45:
    v79 = 0;
    goto LABEL_46;
  }

  MEMORY[0x25F89F4C0](*(v26 + 368), *(v26 + 376));
  OUTLINED_FUNCTION_112_2();

LABEL_46:
  v92 = *(v26 + 592);
  v93 = *(v26 + 576);
  OUTLINED_FUNCTION_145_8(v91, sel_setAppEntityInstanceId_);

  v94 = *MEMORY[0x277CB9DF0];
  v95 = OUTLINED_FUNCTION_103_15();
  a19(v95);
  SpotlightKeys.description.getter();
  a18(v92, v93);
  specialized Dictionary.subscript.getter(v28, (v26 + 272));

  if (*(v26 + 296))
  {
    OUTLINED_FUNCTION_220_4();
    v96 = *(v26 + 352);
    v97 = *(v26 + 360);
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 272, &_sypSgMd, &_sypSgMR);
  }

  v98 = *MEMORY[0x277CC2770];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v28, (v26 + 304));

  if (*(v26 + 328))
  {
    OUTLINED_FUNCTION_220_4();
    v99 = *(v26 + 336);
    v100 = *(v26 + 344);
    OUTLINED_FUNCTION_201_9();
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 304, &_sypSgMd, &_sypSgMR);
  }

  v101 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v102 = v81;
  OUTLINED_FUNCTION_151_7();
  a21 = v103;
  v108 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v104, v105, v106, v107, v103);
  v109 = MEMORY[0x25F89F4C0](0xD000000000000015, 0x800000025DBF1D70);
  OUTLINED_FUNCTION_152_8(v109, sel_setBundleID_);

  v110 = v108;
  v111 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  if (OUTLINED_FUNCTION_187_8())
  {
    OUTLINED_FUNCTION_90_1();
    v112 = OUTLINED_FUNCTION_91_9();
    OUTLINED_FUNCTION_122_12(v112);
    *v109 = 136315395;
    OUTLINED_FUNCTION_98_2();
    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_42_28(v113);
    v114 = v110;
    v115 = [v114 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v109 + 14) = v116;
    OUTLINED_FUNCTION_75_20();
    _os_log_impl(v117, v118, v119, v120, v109, 0x16u);
    OUTLINED_FUNCTION_132_12();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_52_16();
  }

  v121 = *(v26 + 552);
  v122 = *(v26 + 544);
  v123 = *(v26 + 536);
  v124 = *(v26 + 528);
  v125 = *(v26 + 520);
  v126 = *(v26 + 512);
  v127 = *(v26 + 488);
  (*(*(v26 + 616) + 16))(v121, *(v26 + 624), *(v26 + 608));
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v127);
  *(v125 + v126[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_7_25((v125 + v126[10]));
  _s10OmniSearch0B6ResultVWOcTm_7(v121, v125, v131);
  v132 = v126[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v133 = v110;
  CodableNSSecureCoding.init(wrappedValue:)();
  v134 = OUTLINED_FUNCTION_172_6();
  outlined init with copy of SpotlightRankingItem?(v134, v135, v136, v137);
  v138 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v138, v139, v127);
  v141 = *(v26 + 616);
  v142 = *(v26 + 552);
  a20 = *(v26 + 536);
  a22 = *(v26 + 520);
  v143 = *(v26 + 512);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(*(v26 + 528), &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v144 = *(v143 + 20);
    OUTLINED_FUNCTION_6_55();
    OUTLINED_FUNCTION_14_38();

    outlined destroy of IntentApplication?(a20, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v142, v145);
    v146 = *(v141 + 8);
    v147 = OUTLINED_FUNCTION_172_6();
    v148(v147);
  }

  else
  {
    a19 = *(v26 + 608);
    v149 = *(v26 + 624);
    v151 = *(v26 + 496);
    v150 = *(v26 + 504);
    v152 = *(v26 + 488);

    outlined destroy of IntentApplication?(a20, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v142, v153);
    (*(v141 + 8))(v149, a19);
    v154 = OUTLINED_FUNCTION_198_8();
    (v133)(v154);
    v155 = OUTLINED_FUNCTION_146_10();
    (v133)(v155, v150, v152);
  }

  v156 = *(v26 + 512);
  v157 = *(v26 + 456);
  OUTLINED_FUNCTION_11_60(*(v26 + 520));
  v41 = OUTLINED_FUNCTION_10_53();
LABEL_58:
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v158 = *(v26 + 624);
  v159 = *(v26 + 600);
  v160 = *(v26 + 592);
  v161 = *(v26 + 568);
  v162 = *(v26 + 560);
  v163 = *(v26 + 552);
  v164 = *(v26 + 536);
  v165 = *(v26 + 528);
  v166 = *(v26 + 520);
  v167 = *(v26 + 504);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_199_0();

  return v169(v168, v169, v170, v171, v172, v173, v174, v175, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t SourceDocumentRetriever.fetchFileDocument(docId:bundleId:)()
{
  OUTLINED_FUNCTION_48();
  v1[55] = v2;
  v1[56] = v0;
  v1[53] = v3;
  v1[54] = v4;
  v1[51] = v5;
  v1[52] = v6;
  v7 = type metadata accessor for SpotlightRankingItem();
  v1[57] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[58] = v8;
  v10 = *(v9 + 64);
  v1[59] = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for SearchResult(0);
  v1[60] = v11;
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  v1[61] = OUTLINED_FUNCTION_199();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  v1[62] = OUTLINED_FUNCTION_160();
  v1[63] = swift_task_alloc();
  v17 = type metadata accessor for SearchResultItem(0);
  v1[64] = v17;
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  v1[65] = OUTLINED_FUNCTION_199();
  v20 = type metadata accessor for FileDocument();
  v1[66] = v20;
  OUTLINED_FUNCTION_21(v20);
  v1[67] = v21;
  v23 = *(v22 + 64);
  v1[68] = OUTLINED_FUNCTION_199();
  v24 = type metadata accessor for SpotlightKeys();
  v1[69] = v24;
  OUTLINED_FUNCTION_21(v24);
  v1[70] = v25;
  v27 = *(v26 + 64);
  v1[71] = OUTLINED_FUNCTION_199();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v28);
  v30 = *(v29 + 64);
  v1[72] = OUTLINED_FUNCTION_160();
  v1[73] = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_68_22(*(v0 + 448));
  v11 = (*(v1 + 112) + **(v1 + 112));
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 592) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchFileDocument(docId:bundleId:);
  v5 = *(v0 + 440);
  v6 = *(v0 + 448);
  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  v9 = *(v0 + 416);

  return v11(v2, v7, v5, v9, v8, 0);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 592);
  *v2 = *v0;
  *(v1 + 600) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v2 = *(v0 + 600);
  if (!v2)
  {
    v12 = *(v0 + 480);
    v13 = *(v0 + 408);
    OUTLINED_FUNCTION_92();
    goto LABEL_58;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logging.search);
  OUTLINED_FUNCTION_86_17();
  swift_bridgeObjectRetain_n();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_89_18(v5))
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_161_6();
    *v1 = 136315651;
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_27_28(v6);
    OUTLINED_FUNCTION_232_1();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_156_9();
    OUTLINED_FUNCTION_60_17();
    OUTLINED_FUNCTION_227_4();
    OUTLINED_FUNCTION_30_33();
    _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
    OUTLINED_FUNCTION_132_12();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    OUTLINED_FUNCTION_86_17();
    swift_bridgeObjectRelease_n();
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v19 = *MEMORY[0x277CC2760];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_78_19();
  specialized Dictionary.subscript.getter(v2, v20);

  if (*(v0 + 40))
  {
    v21 = OUTLINED_FUNCTION_97_11();
    if (v21)
    {
      MEMORY[0x25F89F4C0](*(v0 + 384), *(v0 + 392));
      OUTLINED_FUNCTION_92_11();

      goto LABEL_13;
    }
  }

  else
  {
    v21 = outlined destroy of IntentApplication?(v0 + 16, &_sypSgMd, &_sypSgMR);
  }

  v4 = 0;
LABEL_13:
  OUTLINED_FUNCTION_145_8(v21, sel_setTitle_);

  v22 = *MEMORY[0x277CC2B58];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_121_12();
  specialized Dictionary.subscript.getter(v2, v23);

  if (*(v0 + 72))
  {
    v24 = OUTLINED_FUNCTION_220_4();
    if (v24)
    {
      MEMORY[0x25F89F4C0](*(v0 + 368), *(v0 + 376));
      OUTLINED_FUNCTION_92_11();

      goto LABEL_18;
    }
  }

  else
  {
    v24 = outlined destroy of IntentApplication?(v0 + 48, &_sypSgMd, &_sypSgMR);
  }

  v4 = 0;
LABEL_18:
  v26 = *(v0 + 432);
  v25 = *(v0 + 440);
  OUTLINED_FUNCTION_145_8(v24, sel_setFilename_);

  v27 = OUTLINED_FUNCTION_45_0();
  outlined bridged method (mbgnn) of @objc CSSearchableItem.bundleID.setter(v27, v28, v18);
  v29 = *MEMORY[0x277CC2678];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_120_11();
  specialized Dictionary.subscript.getter(v2, v30);

  if (*(v0 + 104))
  {
    v31 = OUTLINED_FUNCTION_220_4();
    if (v31)
    {
      MEMORY[0x25F89F4C0](*(v0 + 352), *(v0 + 360));
      OUTLINED_FUNCTION_92_11();

      goto LABEL_23;
    }
  }

  else
  {
    v31 = outlined destroy of IntentApplication?(v0 + 80, &_sypSgMd, &_sypSgMR);
  }

  v4 = 0;
LABEL_23:
  OUTLINED_FUNCTION_145_8(v31, sel_setKind_);

  v32 = *MEMORY[0x277CC3118];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_166_7();
  specialized Dictionary.subscript.getter(v2, v33);

  if (*(v0 + 136))
  {
    v34 = OUTLINED_FUNCTION_220_4();
    if (v34)
    {
      MEMORY[0x25F89F4C0](*(v0 + 336), *(v0 + 344));
      OUTLINED_FUNCTION_92_11();

      goto LABEL_28;
    }
  }

  else
  {
    v34 = outlined destroy of IntentApplication?(v0 + 112, &_sypSgMd, &_sypSgMR);
  }

  v4 = 0;
LABEL_28:
  OUTLINED_FUNCTION_145_8(v34, sel_setTextContent_);

  v35 = *MEMORY[0x277CC2640];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_165_8();
  specialized Dictionary.subscript.getter(v2, v36);

  isa = *(v0 + 584);
  if (*(v0 + 168))
  {
    v38 = type metadata accessor for Date();
    OUTLINED_FUNCTION_195_8();
    v39 = OUTLINED_FUNCTION_45_2();
    v42 = OUTLINED_FUNCTION_29_27(v39, v40, v41, v38);
    v44 = OUTLINED_FUNCTION_28_30(v42, v43, v38);
    if (!v45)
    {
      v46 = *(v0 + 584);
      isa = Date._bridgeToObjectiveC()().super.isa;
      OUTLINED_FUNCTION_51(v38);
      v48 = *(v47 + 8);
      v49 = OUTLINED_FUNCTION_45_0();
      v44 = v50(v49);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 144, &_sypSgMd, &_sypSgMR);
    v51 = type metadata accessor for Date();
    v44 = OUTLINED_FUNCTION_5_60(v51);
  }

  OUTLINED_FUNCTION_145_8(v44, sel_setContentCreationDate_);

  v52 = *MEMORY[0x277CC2D10];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_167_6();
  specialized Dictionary.subscript.getter(v2, v53);

  v54 = *(v0 + 576);
  if (*(v0 + 200))
  {
    v55 = type metadata accessor for Date();
    OUTLINED_FUNCTION_195_8();
    v56 = OUTLINED_FUNCTION_45_2();
    v59 = OUTLINED_FUNCTION_29_27(v56, v57, v58, v55);
    v61 = OUTLINED_FUNCTION_28_30(v59, v60, v55);
    if (!v45)
    {
      v62 = *(v0 + 576);
      v54 = Date._bridgeToObjectiveC()().super.isa;
      OUTLINED_FUNCTION_51(v55);
      v64 = *(v63 + 8);
      v65 = OUTLINED_FUNCTION_45_0();
      v61 = v66(v65);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 176, &_sypSgMd, &_sypSgMR);
    v67 = type metadata accessor for Date();
    v61 = OUTLINED_FUNCTION_5_60(v67);
  }

  OUTLINED_FUNCTION_145_8(v61, sel_setLastUsedDate_);

  v68 = *MEMORY[0x277CC2CE8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_136_14();
  specialized Dictionary.subscript.getter(v2, v69);

  if (!*(v0 + 232))
  {
    v70 = outlined destroy of IntentApplication?(v0 + 208, &_sypSgMd, &_sypSgMR);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v70 = OUTLINED_FUNCTION_220_4();
  if ((v70 & 1) == 0)
  {
LABEL_40:
    v54 = 0;
    goto LABEL_41;
  }

  v71 = *(v0 + 400);
  Array._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_92_11();

LABEL_41:
  v72 = *(v0 + 568);
  v73 = *(v0 + 560);
  v74 = *(v0 + 552);
  OUTLINED_FUNCTION_145_8(v70, sel_setKeywords_);

  (*(v73 + 104))(v72, *MEMORY[0x277CB9DF0], v74);
  SpotlightKeys.description.getter();
  (*(v73 + 8))(v72, v74);
  specialized Dictionary.subscript.getter(v2, (v0 + 240));

  if (*(v0 + 264))
  {
    v75 = OUTLINED_FUNCTION_220_4();
    if (v75)
    {
      v76 = *(v0 + 320);
    }

    else
    {
      v76 = 0;
    }

    if (v75)
    {
      v77 = *(v0 + 328);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 240, &_sypSgMd, &_sypSgMR);
    v76 = 0;
  }

  v78 = *MEMORY[0x277CC2770];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v2, (v0 + 272));

  if (*(v0 + 296))
  {
    OUTLINED_FUNCTION_220_4();
    v79 = *(v0 + 304);
    v80 = *(v0 + 312);
    OUTLINED_FUNCTION_201_9();
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 272, &_sypSgMd, &_sypSgMR);
  }

  v82 = *(v0 + 432);
  v81 = *(v0 + 440);
  v83 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v84 = v18;
  OUTLINED_FUNCTION_151_7();
  v154 = v85;
  v90 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v86, v87, v88, v89, v85);
  outlined bridged method (mbgnn) of @objc CSSearchableItem.bundleID.setter(v82, v81, v90);
  v91 = v90;
  v92 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_187_8())
  {
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_91_9();
    *v76 = 136315395;
    OUTLINED_FUNCTION_98_2();
    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_42_28(v93);
    v94 = v91;
    v95 = [v94 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v76 + 14) = v96;
    OUTLINED_FUNCTION_75_20();
    _os_log_impl(v97, v98, v99, v100, v76, 0x16u);
    OUTLINED_FUNCTION_132_12();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_52_16();
  }

  v101 = v91;
  v102 = *(v0 + 544);
  v103 = *(v0 + 536);
  v104 = *(v0 + 528);
  v105 = *(v0 + 520);
  v150 = *(v0 + 504);
  v106 = *(v0 + 488);
  v155 = *(v0 + 496);
  v107 = *(v0 + 480);
  v148 = *(v0 + 512);
  v149 = *(v0 + 456);
  v108 = *(v0 + 416);
  v109 = *(v0 + 424);
  v152 = v101;

  OUTLINED_FUNCTION_94();
  FileDocument.init(id:item:)();
  (*(v103 + 16))(v105, v102, v104);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v149);
  *(v106 + v107[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_7_25((v106 + v107[10]));
  v113 = OUTLINED_FUNCTION_118_0();
  _s10OmniSearch0B6ResultVWOcTm_7(v113, v114, v115);
  v116 = v107[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v117 = v152;
  OUTLINED_FUNCTION_65_0();
  CodableNSSecureCoding.init(wrappedValue:)();
  outlined init with copy of SpotlightRankingItem?(v150, v155, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v118 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v118, v119, v149);
  v121 = *(v0 + 536);
  v122 = *(v0 + 520);
  v153 = *(v0 + 504);
  v123 = *(v0 + 480);
  v156 = *(v0 + 488);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 496), &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v124 = *(v123 + 20);
    OUTLINED_FUNCTION_180_9();
    OUTLINED_FUNCTION_180_9();
    OUTLINED_FUNCTION_180_9();
    OUTLINED_FUNCTION_180_9();
    OUTLINED_FUNCTION_180_9();
    OUTLINED_FUNCTION_82_17();
    OUTLINED_FUNCTION_14_38();

    outlined destroy of IntentApplication?(v153, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v122, v125);
    v126 = *(v121 + 8);
    v127 = OUTLINED_FUNCTION_172_6();
    v128(v127);
  }

  else
  {
    v151 = *(v0 + 528);
    v129 = *(v0 + 544);
    v131 = *(v0 + 464);
    v130 = *(v0 + 472);
    v132 = *(v0 + 456);

    outlined destroy of IntentApplication?(v153, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v122, v133);
    (*(v121 + 8))(v129, v151);
    v134 = OUTLINED_FUNCTION_198_8();
    (v117)(v134);
    (v117)(v156 + *(v123 + 20), v130, v132);
  }

  v135 = *(v0 + 480);
  v136 = *(v0 + 408);
  OUTLINED_FUNCTION_11_60(*(v0 + 488));
  v14 = OUTLINED_FUNCTION_10_53();
LABEL_58:
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v137 = *(v0 + 584);
  v138 = *(v0 + 576);
  v139 = *(v0 + 568);
  v140 = *(v0 + 544);
  v141 = *(v0 + 520);
  v143 = *(v0 + 496);
  v142 = *(v0 + 504);
  v144 = *(v0 + 488);
  v145 = *(v0 + 472);

  OUTLINED_FUNCTION_127();

  return v146();
}

uint64_t SourceDocumentRetriever.fetchEventDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[419] = v0;
  v1[418] = v2;
  v1[417] = v3;
  v1[416] = v4;
  v5 = type metadata accessor for SpotlightKeys();
  v1[420] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[421] = v6;
  v8 = *(v7 + 64);
  v1[422] = OUTLINED_FUNCTION_199();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[423] = OUTLINED_FUNCTION_160();
  v1[424] = swift_task_alloc();
  v1[425] = swift_task_alloc();
  v1[426] = swift_task_alloc();
  v1[427] = swift_task_alloc();
  v1[428] = swift_task_alloc();
  v1[429] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 3352));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 3440) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchEventDocument(docId:);
  v5 = *(v0 + 3352);
  v6 = *(v0 + 3344);
  v7 = *(v0 + 3336);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 3440);
  *v2 = *v0;
  *(v1 + 3448) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = v0[431];
  if (!v1)
  {
    v15 = v0[416];
    type metadata accessor for SearchResult(0);
    v16 = OUTLINED_FUNCTION_7_19();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_359;
  }

  v2 = Logging.search.unsafeMutableAddressor();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v3;
  v402 = swift_allocObject();
  *(v402 + 16) = v1;
  swift_bridgeObjectRetain_n();
  v393 = v2;
  oslog = Logger.logObject.getter();
  HIDWORD(v394) = static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_127_16();
  v5 = swift_allocObject();
  *(v5 + 16) = 32;
  OUTLINED_FUNCTION_127_16();
  v388 = swift_allocObject();
  *(v388 + 16) = 8;
  OUTLINED_FUNCTION_127_16();
  v395 = swift_allocObject();
  *(v395 + 16) = 32;
  OUTLINED_FUNCTION_127_16();
  v396 = swift_allocObject();
  *(v396 + 16) = 8;
  OUTLINED_FUNCTION_131();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for implicit closure #2 in SourceDocumentRetriever.fetchEventDocument(docId:);
  *(v6 + 24) = v4;
  OUTLINED_FUNCTION_131();
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v7 + 24) = v6;
  OUTLINED_FUNCTION_127_16();
  v399 = swift_allocObject();
  *(v399 + 16) = 0;
  OUTLINED_FUNCTION_127_16();
  v8 = swift_allocObject();
  *(v8 + 16) = 8;
  v397 = v8;
  OUTLINED_FUNCTION_131();
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for implicit closure #3 in SourceDocumentRetriever.fetchEventDocument(docId:);
  *(v9 + 24) = v402;
  OUTLINED_FUNCTION_131();
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v10 + 24) = v9;
  v387 = v10;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  v404 = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25DBC8900;
  *(v11 + 32) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v11 + 40) = v5;
  *(v11 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v11 + 56) = v388;
  *(v11 + 64) = specialized closure #1 in OSLogArguments.append(_:);
  *(v11 + 72) = 0;
  *(v11 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v11 + 88) = v395;
  *(v11 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v11 + 104) = v396;
  *(v11 + 112) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v11 + 120) = v7;
  *(v11 + 128) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v11 + 136) = v399;
  *(v11 + 144) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v11 + 152) = v8;
  *(v11 + 160) = partial apply for specialized closure #1 in OSLogArguments.append<A>(_:);
  *(v11 + 168) = v10;

  v391 = v6;

  v390 = v9;

  v389 = v7;

  if (os_log_type_enabled(oslog, BYTE4(v394)))
  {
    _sSp8allocate8capacitySpyxGSi_tFZs5UInt8V_Tt0g5();
    OUTLINED_FUNCTION_51_13();
    *v11 = 770;
    *(v11 + 2) = 32;

    *(v11 + 3) = 8;

    OUTLINED_FUNCTION_85_17();
    OUTLINED_FUNCTION_141_8();
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 12) = 32;

    *(v11 + 13) = 8;

    Dictionary.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v11 + 14) = v12;

    *(v11 + 22) = 0;

    *(v11 + 23) = 8;

    v13 = *(v404 + 16);

    *(v11 + 24) = v13;

    OUTLINED_FUNCTION_90_10(&dword_25D85C000, v14, BYTE4(v394), "%s Fetched Event attributes %s, count: %ld");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    specialized UnsafeMutablePointer.deallocate()();
  }

  v20 = v404;
  OUTLINED_FUNCTION_86_17();
  swift_bridgeObjectRelease_n();

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItemAttributeSet, 0x277CC34B8);
  v21.super.isa = CSSearchableItemAttributeSet.__allocating_init()().super.isa;
  v22 = *MEMORY[0x277CC31E8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v404, v0 + 141);

  if (v0[285])
  {
    v23 = v0 + 415;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_62_19();
    swift_dynamicCast();
    v24 = v0[415];
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    v25 = outlined destroy of IntentApplication?((v0 + 282), &_sypSgMd, &_sypSgMR);
    v23 = 0;
  }

  OUTLINED_FUNCTION_105_13(v25, sel_setTimeIsUnknown_);

  v26 = *MEMORY[0x277CC3128];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_120_11();
  specialized Dictionary.subscript.getter(v404, v27);

  v28 = v0[429];
  if (v0[13])
  {
    type metadata accessor for Date();
    v29 = OUTLINED_FUNCTION_55_19();
    v30 = OUTLINED_FUNCTION_3_73(v29);
    if (!v31)
    {
      v20 = v0[429];
      v28 = v20;
      Date._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_12_50();
      v33 = *(v32 + 8);
      v34 = OUTLINED_FUNCTION_43_20();
      v30 = v35(v34);
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 10), &_sypSgMd, &_sypSgMR);
    v36 = type metadata accessor for Date();
    v30 = OUTLINED_FUNCTION_5_60(v36);
  }

  OUTLINED_FUNCTION_105_13(v30, sel_setStartDate_);

  v37 = *MEMORY[0x277CC27A0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 143);

  v38 = v0[428];
  if (v0[289])
  {
    type metadata accessor for Date();
    v39 = OUTLINED_FUNCTION_55_19();
    v40 = OUTLINED_FUNCTION_3_73(v39);
    if (!v31)
    {
      v20 = v0[428];
      v38 = v20;
      Date._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_12_50();
      v42 = *(v41 + 8);
      v43 = OUTLINED_FUNCTION_43_20();
      v40 = v44(v43);
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 286), &_sypSgMd, &_sypSgMR);
    v45 = type metadata accessor for Date();
    v40 = OUTLINED_FUNCTION_5_60(v45);
  }

  OUTLINED_FUNCTION_105_13(v40, sel_setEndDate_);

  v46 = *MEMORY[0x277CC3208];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_165_8();
  specialized Dictionary.subscript.getter(v20, v47);

  if (v0[21])
  {
    v48 = OUTLINED_FUNCTION_111_10();
    if (v48)
    {
      MEMORY[0x25F89F4C0](v0[398], v0[399]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_21;
    }
  }

  else
  {
    v48 = outlined destroy of IntentApplication?((v0 + 18), &_sypSgMd, &_sypSgMR);
  }

  v38 = 0;
LABEL_21:
  OUTLINED_FUNCTION_105_13(v48, sel_setUniqueIdentifier_);

  v49 = *MEMORY[0x277CC32E8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  specialized Dictionary.subscript.getter(v20, v0 + 145);

  if (v0[293])
  {
    v52 = OUTLINED_FUNCTION_111_10();
    if (v52)
    {
      MEMORY[0x25F89F4C0](v0[396], v0[397]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_26;
    }
  }

  else
  {
    v52 = outlined destroy of IntentApplication?((v0 + 290), &_sypSgMd, &_sypSgMR);
  }

  v51 = 0;
LABEL_26:
  OUTLINED_FUNCTION_105_13(v52, sel_setMailMessageID_);

  v53 = *MEMORY[0x277CC2A58];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_136_14();
  specialized Dictionary.subscript.getter(v20, v54);

  if (v0[29])
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    OUTLINED_FUNCTION_62_19();
    v55 = swift_dynamicCast();
    if (v55)
    {
      v56 = v0[414];
      goto LABEL_31;
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 26), &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v55 = NSString.init(stringLiteral:)();
  v56 = v55;
LABEL_31:
  OUTLINED_FUNCTION_105_13(v55, sel_setEventType_);

  v57 = *MEMORY[0x277CC2A38];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;
  specialized Dictionary.subscript.getter(v20, v0 + 147);

  if (v0[297])
  {
    v59 = v0 + 413;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    OUTLINED_FUNCTION_62_19();
    v60 = swift_dynamicCast();
    if (v60)
    {
      v59 = *v59;
      OUTLINED_FUNCTION_105_13(v60, sel_setEventSubType_);
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 294), &_sypSgMd, &_sypSgMR);
  }

  v61 = *MEMORY[0x277CC2A00];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_137_8();
  specialized Dictionary.subscript.getter(v20, v62);

  if (v0[33])
  {
    v63 = OUTLINED_FUNCTION_111_10();
    if (v63)
    {
      MEMORY[0x25F89F4C0](v0[394], v0[395]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_40;
    }
  }

  else
  {
    v63 = outlined destroy of IntentApplication?((v0 + 30), &_sypSgMd, &_sypSgMR);
  }

  v59 = 0;
LABEL_40:
  OUTLINED_FUNCTION_105_13(v63, sel_setEventSourceBundleIdentifier_);

  v64 = *MEMORY[0x277CC2968];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 17);

  if (v0[37])
  {
    v65 = v0 + 412;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_62_19();
    swift_dynamicCast();
    v66 = v0[412];
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    v67 = outlined destroy of IntentApplication?((v0 + 34), &_sypSgMd, &_sypSgMR);
    v65 = 0;
  }

  OUTLINED_FUNCTION_105_13(v67, sel_setEventIsAllDay_);

  v68 = *MEMORY[0x277CC2A08];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 19);

  if (v0[41])
  {
    v69 = v0 + 411;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_62_19();
    swift_dynamicCast();
    v70 = v0[411];
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    v71 = outlined destroy of IntentApplication?((v0 + 38), &_sypSgMd, &_sypSgMR);
    v69 = 0;
  }

  OUTLINED_FUNCTION_105_13(v71, sel_setEventSourceIsForwarded_);

  v72 = *MEMORY[0x277CC24E0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 21);

  if (v0[45])
  {
    v73 = v0 + 410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_62_19();
    v74 = swift_dynamicCast();
    if (v74)
    {
      v75 = *v73;
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_112_2();

      goto LABEL_51;
    }
  }

  else
  {
    v74 = outlined destroy of IntentApplication?((v0 + 42), &_sypSgMd, &_sypSgMR);
  }

  v73 = 0;
LABEL_51:
  OUTLINED_FUNCTION_105_13(v74, sel_setAuthorNames_);

  v76 = *MEMORY[0x277CC23A8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;
  specialized Dictionary.subscript.getter(v20, v0 + 23);

  if (v0[49])
  {
    v79 = OUTLINED_FUNCTION_111_10();
    if (v79)
    {
      MEMORY[0x25F89F4C0](v0[392], v0[393]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_56;
    }
  }

  else
  {
    v79 = outlined destroy of IntentApplication?((v0 + 46), &_sypSgMd, &_sypSgMR);
  }

  v78 = 0;
LABEL_56:
  OUTLINED_FUNCTION_105_13(v79, sel_setAccountIdentifier_);

  v80 = *MEMORY[0x277CC2D68];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 25);

  if (v0[53])
  {
    v81 = v0 + 409;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_62_19();
    v82 = swift_dynamicCast();
    if (v82)
    {
      v83 = *v81;
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_112_2();

      goto LABEL_61;
    }
  }

  else
  {
    v82 = outlined destroy of IntentApplication?((v0 + 50), &_sypSgMd, &_sypSgMR);
  }

  v81 = 0;
LABEL_61:
  OUTLINED_FUNCTION_105_13(v82, sel_setMailboxIdentifiers_);

  v84 = *MEMORY[0x277CC2758];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 27);

  if (v0[57])
  {
    v85 = v0 + 408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_62_19();
    v86 = swift_dynamicCast();
    if (v86)
    {
      v87 = *v85;
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_112_2();

      goto LABEL_66;
    }
  }

  else
  {
    v86 = outlined destroy of IntentApplication?((v0 + 54), &_sypSgMd, &_sypSgMR);
  }

  v85 = 0;
LABEL_66:
  OUTLINED_FUNCTION_105_13(v86, sel_setDetectedEventTypes_);

  v88 = *MEMORY[0x277CC2978];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;
  specialized Dictionary.subscript.getter(v20, v0 + 29);

  if (v0[61])
  {
    v91 = OUTLINED_FUNCTION_111_10();
    if (v91)
    {
      MEMORY[0x25F89F4C0](v0[390], v0[391]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_71;
    }
  }

  else
  {
    v91 = outlined destroy of IntentApplication?((v0 + 58), &_sypSgMd, &_sypSgMR);
  }

  v90 = 0;
LABEL_71:
  OUTLINED_FUNCTION_105_13(v91, sel_setEventMessageIdentifier_);

  v92 = *MEMORY[0x277CC2918];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;
  specialized Dictionary.subscript.getter(v20, v0 + 31);

  if (v0[65])
  {
    v95 = OUTLINED_FUNCTION_111_10();
    if (v95)
    {
      MEMORY[0x25F89F4C0](v0[388], v0[389]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_76;
    }
  }

  else
  {
    v95 = outlined destroy of IntentApplication?((v0 + 62), &_sypSgMd, &_sypSgMR);
  }

  v94 = 0;
LABEL_76:
  OUTLINED_FUNCTION_105_13(v95, sel_setEventGroupIdentifier_);

  v96 = *MEMORY[0x277CC2820];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;
  specialized Dictionary.subscript.getter(v20, v0 + 33);

  if (v0[69])
  {
    v99 = OUTLINED_FUNCTION_111_10();
    if (v99)
    {
      MEMORY[0x25F89F4C0](v0[386], v0[387]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_81;
    }
  }

  else
  {
    v99 = outlined destroy of IntentApplication?((v0 + 66), &_sypSgMd, &_sypSgMR);
  }

  v98 = 0;
LABEL_81:
  OUTLINED_FUNCTION_105_13(v99, sel_setEventFallbackGroupIdentifier_);

  v100 = *MEMORY[0x277CC2970];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v101;
  specialized Dictionary.subscript.getter(v20, v0 + 35);

  if (v0[73])
  {
    v103 = OUTLINED_FUNCTION_111_10();
    if (v103)
    {
      MEMORY[0x25F89F4C0](v0[384], v0[385]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_86;
    }
  }

  else
  {
    v103 = outlined destroy of IntentApplication?((v0 + 70), &_sypSgMd, &_sypSgMR);
  }

  v102 = 0;
LABEL_86:
  OUTLINED_FUNCTION_105_13(v103, sel_setEventMegadomeIdentifier_);

  v104 = *MEMORY[0x277CC3130];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v105;
  specialized Dictionary.subscript.getter(v20, v0 + 37);

  if (v0[77])
  {
    v107 = OUTLINED_FUNCTION_111_10();
    if (v107)
    {
      MEMORY[0x25F89F4C0](v0[382], v0[383]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_91;
    }
  }

  else
  {
    v107 = outlined destroy of IntentApplication?((v0 + 74), &_sypSgMd, &_sypSgMR);
  }

  v106 = 0;
LABEL_91:
  OUTLINED_FUNCTION_105_13(v107, sel_setStartDateTimeZone_);

  v108 = *MEMORY[0x277CC27A8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v109;
  specialized Dictionary.subscript.getter(v20, v0 + 39);

  if (v0[81])
  {
    v111 = OUTLINED_FUNCTION_111_10();
    if (v111)
    {
      MEMORY[0x25F89F4C0](v0[380], v0[381]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_96;
    }
  }

  else
  {
    v111 = outlined destroy of IntentApplication?((v0 + 78), &_sypSgMd, &_sypSgMR);
  }

  v110 = 0;
LABEL_96:
  OUTLINED_FUNCTION_105_13(v111, sel_setEndDateTimeZone_);

  v112 = *MEMORY[0x277CC2A30];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v113;
  specialized Dictionary.subscript.getter(v20, v0 + 41);

  if (v0[85])
  {
    v115 = OUTLINED_FUNCTION_111_10();
    if (v115)
    {
      MEMORY[0x25F89F4C0](v0[378], v0[379]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_101;
    }
  }

  else
  {
    v115 = outlined destroy of IntentApplication?((v0 + 82), &_sypSgMd, &_sypSgMR);
  }

  v114 = 0;
LABEL_101:
  OUTLINED_FUNCTION_105_13(v115, sel_setEventStatus_);

  v116 = *MEMORY[0x277CC2A68];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 43);

  if (v0[89])
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    OUTLINED_FUNCTION_62_19();
    v117 = swift_dynamicCast();
    if (v117)
    {
      v118 = v0[407];
      goto LABEL_106;
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 86), &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v117 = NSString.init(stringLiteral:)();
  v118 = v117;
LABEL_106:
  OUTLINED_FUNCTION_105_13(v117, sel_setEventUpdateStatus_);

  v119 = *MEMORY[0x277CC28F8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v121 = v120;
  specialized Dictionary.subscript.getter(v20, v0 + 45);

  if (v0[93])
  {
    v122 = OUTLINED_FUNCTION_111_10();
    if (v122)
    {
      MEMORY[0x25F89F4C0](v0[376], v0[377]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_111;
    }
  }

  else
  {
    v122 = outlined destroy of IntentApplication?((v0 + 90), &_sypSgMd, &_sypSgMR);
  }

  v121 = 0;
LABEL_111:
  OUTLINED_FUNCTION_105_13(v122, sel_setFlightNumber_);

  v123 = *MEMORY[0x277CC2890];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v124;
  specialized Dictionary.subscript.getter(v20, v0 + 47);

  if (v0[97])
  {
    v126 = OUTLINED_FUNCTION_111_10();
    if (v126)
    {
      MEMORY[0x25F89F4C0](v0[374], v0[375]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_116;
    }
  }

  else
  {
    v126 = outlined destroy of IntentApplication?((v0 + 94), &_sypSgMd, &_sypSgMR);
  }

  v125 = 0;
LABEL_116:
  OUTLINED_FUNCTION_105_13(v126, sel_setFlightCheckInUrl_);

  v127 = *MEMORY[0x277CC2880];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v129 = v128;
  specialized Dictionary.subscript.getter(v20, v0 + 49);

  if (v0[101])
  {
    v130 = OUTLINED_FUNCTION_111_10();
    if (v130)
    {
      MEMORY[0x25F89F4C0](v0[372], v0[373]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_121;
    }
  }

  else
  {
    v130 = outlined destroy of IntentApplication?((v0 + 98), &_sypSgMd, &_sypSgMR);
  }

  v129 = 0;
LABEL_121:
  OUTLINED_FUNCTION_105_13(v130, sel_setFlightCarrier_);

  v131 = *MEMORY[0x277CC2888];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v133 = v132;
  specialized Dictionary.subscript.getter(v20, v0 + 51);

  if (v0[105])
  {
    v134 = OUTLINED_FUNCTION_111_10();
    if (v134)
    {
      MEMORY[0x25F89F4C0](v0[370], v0[371]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_126;
    }
  }

  else
  {
    v134 = outlined destroy of IntentApplication?((v0 + 102), &_sypSgMd, &_sypSgMR);
  }

  v133 = 0;
LABEL_126:
  OUTLINED_FUNCTION_105_13(v134, sel_setFlightCarrierCode_);

  v135 = *MEMORY[0x277CC28E8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v137 = v136;
  specialized Dictionary.subscript.getter(v20, v0 + 53);

  if (v0[109])
  {
    v138 = OUTLINED_FUNCTION_111_10();
    if (v138)
    {
      MEMORY[0x25F89F4C0](v0[368], v0[369]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_131;
    }
  }

  else
  {
    v138 = outlined destroy of IntentApplication?((v0 + 106), &_sypSgMd, &_sypSgMR);
  }

  v137 = 0;
LABEL_131:
  OUTLINED_FUNCTION_105_13(v138, sel_setFlightDepartureTimeZone_);

  v139 = *MEMORY[0x277CC28D0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 55);

  v140 = v0[427];
  if (v0[113])
  {
    type metadata accessor for Date();
    v141 = OUTLINED_FUNCTION_55_19();
    v142 = OUTLINED_FUNCTION_3_73(v141);
    if (!v31)
    {
      v20 = v0[427];
      v140 = v20;
      Date._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_12_50();
      v144 = *(v143 + 8);
      v145 = OUTLINED_FUNCTION_43_20();
      v142 = v146(v145);
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 110), &_sypSgMd, &_sypSgMR);
    v147 = type metadata accessor for Date();
    v142 = OUTLINED_FUNCTION_5_60(v147);
  }

  OUTLINED_FUNCTION_105_13(v142, sel_setFlightDepartureDateTime_);

  v148 = *MEMORY[0x277CC2868];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v150 = v149;
  specialized Dictionary.subscript.getter(v20, v0 + 57);

  if (v0[117])
  {
    v151 = OUTLINED_FUNCTION_111_10();
    if (v151)
    {
      MEMORY[0x25F89F4C0](v0[366], v0[367]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_140;
    }
  }

  else
  {
    v151 = outlined destroy of IntentApplication?((v0 + 114), &_sypSgMd, &_sypSgMR);
  }

  v150 = 0;
LABEL_140:
  OUTLINED_FUNCTION_105_13(v151, sel_setFlightArrivalTimeZone_);

  v152 = *MEMORY[0x277CC2828];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v154 = v153;
  specialized Dictionary.subscript.getter(v20, v0 + 59);

  if (v0[121])
  {
    v155 = OUTLINED_FUNCTION_111_10();
    if (v155)
    {
      MEMORY[0x25F89F4C0](v0[364], v0[365]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_145;
    }
  }

  else
  {
    v155 = outlined destroy of IntentApplication?((v0 + 118), &_sypSgMd, &_sypSgMR);
  }

  v154 = 0;
LABEL_145:
  OUTLINED_FUNCTION_105_13(v155, sel_setFlightArrivalAirportAddress_);

  v156 = *MEMORY[0x277CC28A0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v158 = v157;
  specialized Dictionary.subscript.getter(v20, v0 + 61);

  if (v0[125])
  {
    v159 = OUTLINED_FUNCTION_111_10();
    if (v159)
    {
      MEMORY[0x25F89F4C0](v0[362], v0[363]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_150;
    }
  }

  else
  {
    v159 = outlined destroy of IntentApplication?((v0 + 122), &_sypSgMd, &_sypSgMR);
  }

  v158 = 0;
LABEL_150:
  OUTLINED_FUNCTION_105_13(v159, sel_setFlightDepartureAirportAddress_);

  v160 = *MEMORY[0x277CC2830];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v162 = v161;
  specialized Dictionary.subscript.getter(v20, v0 + 63);

  if (v0[129])
  {
    v163 = OUTLINED_FUNCTION_111_10();
    if (v163)
    {
      MEMORY[0x25F89F4C0](v0[360], v0[361]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_155;
    }
  }

  else
  {
    v163 = outlined destroy of IntentApplication?((v0 + 126), &_sypSgMd, &_sypSgMR);
  }

  v162 = 0;
LABEL_155:
  OUTLINED_FUNCTION_105_13(v163, sel_setFlightArrivalAirportCode_);

  v164 = *MEMORY[0x277CC28A8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v166 = v165;
  specialized Dictionary.subscript.getter(v20, v0 + 65);

  if (v0[133])
  {
    v167 = OUTLINED_FUNCTION_111_10();
    if (v167)
    {
      MEMORY[0x25F89F4C0](v0[358], v0[359]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_160;
    }
  }

  else
  {
    v167 = outlined destroy of IntentApplication?((v0 + 130), &_sypSgMd, &_sypSgMR);
  }

  v166 = 0;
LABEL_160:
  OUTLINED_FUNCTION_105_13(v167, sel_setFlightDepartureAirportCode_);

  v168 = *MEMORY[0x277CC2838];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v170 = v169;
  specialized Dictionary.subscript.getter(v20, v0 + 67);

  if (v0[137])
  {
    v171 = OUTLINED_FUNCTION_111_10();
    if (v171)
    {
      MEMORY[0x25F89F4C0](v0[356], v0[357]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_165;
    }
  }

  else
  {
    v171 = outlined destroy of IntentApplication?((v0 + 134), &_sypSgMd, &_sypSgMR);
  }

  v170 = 0;
LABEL_165:
  OUTLINED_FUNCTION_105_13(v171, sel_setFlightArrivalAirportCountry_);

  v172 = *MEMORY[0x277CC28B0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v174 = v173;
  specialized Dictionary.subscript.getter(v20, v0 + 69);

  if (v0[141])
  {
    v175 = OUTLINED_FUNCTION_111_10();
    if (v175)
    {
      MEMORY[0x25F89F4C0](v0[354], v0[355]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_170;
    }
  }

  else
  {
    v175 = outlined destroy of IntentApplication?((v0 + 138), &_sypSgMd, &_sypSgMR);
  }

  v174 = 0;
LABEL_170:
  OUTLINED_FUNCTION_105_13(v175, sel_setFlightDepartureAirportCountry_);

  v176 = *MEMORY[0x277CC2840];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v178 = v177;
  specialized Dictionary.subscript.getter(v20, v0 + 71);

  if (v0[145])
  {
    v179 = OUTLINED_FUNCTION_111_10();
    if (v179)
    {
      MEMORY[0x25F89F4C0](v0[352], v0[353]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_175;
    }
  }

  else
  {
    v179 = outlined destroy of IntentApplication?((v0 + 142), &_sypSgMd, &_sypSgMR);
  }

  v178 = 0;
LABEL_175:
  OUTLINED_FUNCTION_105_13(v179, sel_setFlightArrivalAirportLocality_);

  v180 = *MEMORY[0x277CC28B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v182 = v181;
  specialized Dictionary.subscript.getter(v20, v0 + 73);

  if (v0[149])
  {
    v183 = OUTLINED_FUNCTION_111_10();
    if (v183)
    {
      MEMORY[0x25F89F4C0](v0[350], v0[351]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_180;
    }
  }

  else
  {
    v183 = outlined destroy of IntentApplication?((v0 + 146), &_sypSgMd, &_sypSgMR);
  }

  v182 = 0;
LABEL_180:
  OUTLINED_FUNCTION_105_13(v183, sel_setFlightDepartureAirportLocality_);

  v184 = *MEMORY[0x277CC2848];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v186 = v185;
  specialized Dictionary.subscript.getter(v20, v0 + 75);

  if (v0[153])
  {
    v187 = OUTLINED_FUNCTION_111_10();
    if (v187)
    {
      MEMORY[0x25F89F4C0](v0[348], v0[349]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_185;
    }
  }

  else
  {
    v187 = outlined destroy of IntentApplication?((v0 + 150), &_sypSgMd, &_sypSgMR);
  }

  v186 = 0;
LABEL_185:
  OUTLINED_FUNCTION_105_13(v187, sel_setFlightArrivalAirportName_);

  v188 = *MEMORY[0x277CC28C0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v190 = v189;
  specialized Dictionary.subscript.getter(v20, v0 + 77);

  if (v0[157])
  {
    v191 = OUTLINED_FUNCTION_111_10();
    if (v191)
    {
      MEMORY[0x25F89F4C0](v0[346], v0[347]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_190;
    }
  }

  else
  {
    v191 = outlined destroy of IntentApplication?((v0 + 154), &_sypSgMd, &_sypSgMR);
  }

  v190 = 0;
LABEL_190:
  OUTLINED_FUNCTION_105_13(v191, sel_setFlightDepartureAirportName_);

  v192 = *MEMORY[0x277CC2850];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v194 = v193;
  specialized Dictionary.subscript.getter(v20, v0 + 79);

  if (v0[161])
  {
    v195 = OUTLINED_FUNCTION_111_10();
    if (v195)
    {
      MEMORY[0x25F89F4C0](v0[344], v0[345]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_195;
    }
  }

  else
  {
    v195 = outlined destroy of IntentApplication?((v0 + 158), &_sypSgMd, &_sypSgMR);
  }

  v194 = 0;
LABEL_195:
  OUTLINED_FUNCTION_105_13(v195, sel_setFlightArrivalAirportRegion_);

  v196 = *MEMORY[0x277CC28C8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v198 = v197;
  specialized Dictionary.subscript.getter(v20, v0 + 81);

  if (v0[165])
  {
    v199 = OUTLINED_FUNCTION_111_10();
    if (v199)
    {
      MEMORY[0x25F89F4C0](v0[342], v0[343]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_200;
    }
  }

  else
  {
    v199 = outlined destroy of IntentApplication?((v0 + 162), &_sypSgMd, &_sypSgMR);
  }

  v198 = 0;
LABEL_200:
  OUTLINED_FUNCTION_105_13(v199, sel_setFlightDepartureAirportRegion_);

  v200 = *MEMORY[0x277CC2898];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v202 = v201;
  specialized Dictionary.subscript.getter(v20, v0 + 83);

  if (v0[169])
  {
    v203 = OUTLINED_FUNCTION_111_10();
    if (v203)
    {
      MEMORY[0x25F89F4C0](v0[340], v0[341]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_205;
    }
  }

  else
  {
    v203 = outlined destroy of IntentApplication?((v0 + 166), &_sypSgMd, &_sypSgMR);
  }

  v202 = 0;
LABEL_205:
  OUTLINED_FUNCTION_105_13(v203, sel_setFlightConfirmationNumber_);

  v204 = *MEMORY[0x277CC2900];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 85);

  if (v0[173])
  {
    v205 = v0 + 406;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_62_19();
    v206 = swift_dynamicCast();
    if (v206)
    {
      v207 = *v205;
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_112_2();

      goto LABEL_210;
    }
  }

  else
  {
    v206 = outlined destroy of IntentApplication?((v0 + 170), &_sypSgMd, &_sypSgMR);
  }

  v205 = 0;
LABEL_210:
  OUTLINED_FUNCTION_105_13(v206, sel_setFlightPassengerNames_);

  v208 = *MEMORY[0x277CC2908];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 87);

  if (v0[177])
  {
    v209 = v0 + 405;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_62_19();
    v210 = swift_dynamicCast();
    if (v210)
    {
      v211 = *v209;
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_112_2();

      goto LABEL_215;
    }
  }

  else
  {
    v210 = outlined destroy of IntentApplication?((v0 + 174), &_sypSgMd, &_sypSgMR);
  }

  v209 = 0;
LABEL_215:
  OUTLINED_FUNCTION_105_13(v210, sel_setFlightPassengerSeatNumbers_);

  v212 = *MEMORY[0x277CC2860];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v214 = v213;
  specialized Dictionary.subscript.getter(v20, v0 + 89);

  if (v0[181])
  {
    v215 = OUTLINED_FUNCTION_111_10();
    if (v215)
    {
      MEMORY[0x25F89F4C0](v0[338], v0[339]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_220;
    }
  }

  else
  {
    v215 = outlined destroy of IntentApplication?((v0 + 178), &_sypSgMd, &_sypSgMR);
  }

  v214 = 0;
LABEL_220:
  OUTLINED_FUNCTION_105_13(v215, sel_setFlightArrivalTerminal_);

  v216 = *MEMORY[0x277CC28E0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v218 = v217;
  specialized Dictionary.subscript.getter(v20, v0 + 91);

  if (v0[185])
  {
    v219 = OUTLINED_FUNCTION_111_10();
    if (v219)
    {
      MEMORY[0x25F89F4C0](v0[336], v0[337]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_225;
    }
  }

  else
  {
    v219 = outlined destroy of IntentApplication?((v0 + 182), &_sypSgMd, &_sypSgMR);
  }

  v218 = 0;
LABEL_225:
  OUTLINED_FUNCTION_105_13(v219, sel_setFlightDepartureTerminal_);

  v220 = *MEMORY[0x277CC2870];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 93);

  v221 = v0[426];
  if (v0[189])
  {
    type metadata accessor for Date();
    v222 = OUTLINED_FUNCTION_55_19();
    v223 = OUTLINED_FUNCTION_3_73(v222);
    if (!v31)
    {
      v20 = v0[426];
      v221 = v20;
      Date._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_12_50();
      v225 = *(v224 + 8);
      v226 = OUTLINED_FUNCTION_43_20();
      v223 = v227(v226);
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 186), &_sypSgMd, &_sypSgMR);
    v228 = type metadata accessor for Date();
    v223 = OUTLINED_FUNCTION_5_60(v228);
  }

  OUTLINED_FUNCTION_105_13(v223, sel_setFlightBoardingDateTime_);

  v229 = *MEMORY[0x277CC28D8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v231 = v230;
  specialized Dictionary.subscript.getter(v20, v0 + 95);

  if (v0[193])
  {
    v232 = OUTLINED_FUNCTION_111_10();
    if (v232)
    {
      MEMORY[0x25F89F4C0](v0[334], v0[335]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_234;
    }
  }

  else
  {
    v232 = outlined destroy of IntentApplication?((v0 + 190), &_sypSgMd, &_sypSgMR);
  }

  v231 = 0;
LABEL_234:
  OUTLINED_FUNCTION_105_13(v232, sel_setFlightDepartureGate_);

  v233 = *MEMORY[0x277CC2858];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v235 = v234;
  specialized Dictionary.subscript.getter(v20, v0 + 97);

  if (v0[197])
  {
    v236 = OUTLINED_FUNCTION_111_10();
    if (v236)
    {
      MEMORY[0x25F89F4C0](v0[332], v0[333]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_239;
    }
  }

  else
  {
    v236 = outlined destroy of IntentApplication?((v0 + 194), &_sypSgMd, &_sypSgMR);
  }

  v235 = 0;
LABEL_239:
  OUTLINED_FUNCTION_105_13(v236, sel_setFlightArrivalGate_);

  v237 = *MEMORY[0x277CC2910];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v239 = v238;
  specialized Dictionary.subscript.getter(v20, v0 + 99);

  if (v0[201])
  {
    v240 = OUTLINED_FUNCTION_111_10();
    if (v240)
    {
      MEMORY[0x25F89F4C0](v0[330], v0[331]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_244;
    }
  }

  else
  {
    v240 = outlined destroy of IntentApplication?((v0 + 198), &_sypSgMd, &_sypSgMR);
  }

  v239 = 0;
LABEL_244:
  OUTLINED_FUNCTION_105_13(v240, sel_setFlightStatus_);

  v241 = *MEMORY[0x277CC2950];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v243 = v242;
  specialized Dictionary.subscript.getter(v20, v0 + 101);

  if (v0[205])
  {
    v244 = OUTLINED_FUNCTION_111_10();
    if (v244)
    {
      MEMORY[0x25F89F4C0](v0[328], v0[329]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_249;
    }
  }

  else
  {
    v244 = outlined destroy of IntentApplication?((v0 + 202), &_sypSgMd, &_sypSgMR);
  }

  v243 = 0;
LABEL_249:
  OUTLINED_FUNCTION_105_13(v244, sel_setHotelReservationId_);

  v245 = *MEMORY[0x277CC2920];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 103);

  v246 = v0[425];
  if (v0[209])
  {
    type metadata accessor for Date();
    v247 = OUTLINED_FUNCTION_55_19();
    v248 = OUTLINED_FUNCTION_3_73(v247);
    if (!v31)
    {
      v20 = v0[425];
      v246 = v20;
      Date._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_12_50();
      v250 = *(v249 + 8);
      v251 = OUTLINED_FUNCTION_43_20();
      v248 = v252(v251);
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 206), &_sypSgMd, &_sypSgMR);
    v253 = type metadata accessor for Date();
    v248 = OUTLINED_FUNCTION_5_60(v253);
  }

  OUTLINED_FUNCTION_105_13(v248, sel_setHotelCheckinDate_);

  v254 = *MEMORY[0x277CC2928];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 105);

  v255 = v0[424];
  if (v0[213])
  {
    type metadata accessor for Date();
    v256 = OUTLINED_FUNCTION_55_19();
    v257 = OUTLINED_FUNCTION_3_73(v256);
    if (!v31)
    {
      v20 = v0[424];
      v255 = v20;
      Date._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_12_50();
      v259 = *(v258 + 8);
      v260 = OUTLINED_FUNCTION_43_20();
      v257 = v261(v260);
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 210), &_sypSgMd, &_sypSgMR);
    v262 = type metadata accessor for Date();
    v257 = OUTLINED_FUNCTION_5_60(v262);
  }

  OUTLINED_FUNCTION_105_13(v257, sel_setHotelCheckinTime_);

  v263 = *MEMORY[0x277CC2940];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v265 = v264;
  specialized Dictionary.subscript.getter(v20, v0 + 107);

  if (v0[217])
  {
    v266 = OUTLINED_FUNCTION_111_10();
    if (v266)
    {
      MEMORY[0x25F89F4C0](v0[326], v0[327]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_262;
    }
  }

  else
  {
    v266 = outlined destroy of IntentApplication?((v0 + 214), &_sypSgMd, &_sypSgMR);
  }

  v265 = 0;
LABEL_262:
  OUTLINED_FUNCTION_105_13(v266, sel_setHotelReservationForName_);

  v267 = *MEMORY[0x277CC2930];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v269 = v268;
  specialized Dictionary.subscript.getter(v20, v0 + 109);

  if (v0[221])
  {
    v270 = OUTLINED_FUNCTION_111_10();
    if (v270)
    {
      MEMORY[0x25F89F4C0](v0[324], v0[325]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_267;
    }
  }

  else
  {
    v270 = outlined destroy of IntentApplication?((v0 + 218), &_sypSgMd, &_sypSgMR);
  }

  v269 = 0;
LABEL_267:
  OUTLINED_FUNCTION_105_13(v270, sel_setHotelModifyReservationUrl_);

  v271 = *MEMORY[0x277CC2948];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v273 = v272;
  specialized Dictionary.subscript.getter(v20, v0 + 111);

  if (v0[225])
  {
    v274 = OUTLINED_FUNCTION_111_10();
    if (v274)
    {
      MEMORY[0x25F89F4C0](v0[322], v0[323]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_272;
    }
  }

  else
  {
    v274 = outlined destroy of IntentApplication?((v0 + 222), &_sypSgMd, &_sypSgMR);
  }

  v273 = 0;
LABEL_272:
  OUTLINED_FUNCTION_105_13(v274, sel_setHotelReservationForTelephone_);

  v275 = *MEMORY[0x277CC2938];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v277 = v276;
  specialized Dictionary.subscript.getter(v20, v0 + 113);

  if (v0[229])
  {
    v278 = OUTLINED_FUNCTION_111_10();
    if (v278)
    {
      MEMORY[0x25F89F4C0](v0[320], v0[321]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_277;
    }
  }

  else
  {
    v278 = outlined destroy of IntentApplication?((v0 + 226), &_sypSgMd, &_sypSgMR);
  }

  v277 = 0;
LABEL_277:
  OUTLINED_FUNCTION_105_13(v278, sel_setHotelReservationForAddress_);

  v279 = *MEMORY[0x277CC2998];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v281 = v280;
  specialized Dictionary.subscript.getter(v20, v0 + 115);

  if (v0[233])
  {
    v282 = OUTLINED_FUNCTION_25_23();
    if (v282)
    {
      MEMORY[0x25F89F4C0](v0[318], v0[319]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_282;
    }
  }

  else
  {
    v282 = outlined destroy of IntentApplication?((v0 + 230), &_sypSgMd, &_sypSgMR);
  }

  v281 = 0;
LABEL_282:
  OUTLINED_FUNCTION_105_13(v282, sel_setEventProvider_);

  v283 = *MEMORY[0x277CC27D8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 117);

  if (v0[237])
  {
    v284 = v0 + 404;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v285 = OUTLINED_FUNCTION_115_14();
    if (v285)
    {
      v286 = *v284;
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_112_2();

      goto LABEL_287;
    }
  }

  else
  {
    v285 = outlined destroy of IntentApplication?((v0 + 234), &_sypSgMd, &_sypSgMR);
  }

  v284 = 0;
LABEL_287:
  OUTLINED_FUNCTION_105_13(v285, sel_setEventCustomerNames_);

  v287 = *MEMORY[0x277CC29F0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 119);

  if (v0[241])
  {
    v288 = v0 + 403;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v289 = OUTLINED_FUNCTION_115_14();
    if (v289)
    {
      v290 = *v288;
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_112_2();

      goto LABEL_292;
    }
  }

  else
  {
    v289 = outlined destroy of IntentApplication?((v0 + 238), &_sypSgMd, &_sypSgMR);
  }

  v288 = 0;
LABEL_292:
  OUTLINED_FUNCTION_105_13(v289, sel_setEventRoomNumbers_);

  v291 = *MEMORY[0x277CC2988];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 121);

  if (v0[245])
  {
    v292 = v0 + 402;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_115_14();
    v293 = v0[402];
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    v294 = outlined destroy of IntentApplication?((v0 + 242), &_sypSgMd, &_sypSgMR);
    v292 = 0;
  }

  OUTLINED_FUNCTION_105_13(v294, sel_setEventNumberOfRooms_);

  v295 = *MEMORY[0x277CC27E8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 123);

  if (v0[249])
  {
    if (OUTLINED_FUNCTION_115_14())
    {
      [(objc_class *)v21.super.isa setEventDuration:*(v0 + 401)];
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 246), &_sypSgMd, &_sypSgMR);
  }

  v296 = *MEMORY[0x277CC26A0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v298 = v297;
  specialized Dictionary.subscript.getter(v20, v0 + 125);

  if (v0[253])
  {
    v299 = OUTLINED_FUNCTION_25_23();
    if (v299)
    {
      MEMORY[0x25F89F4C0](v0[316], v0[317]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_304;
    }
  }

  else
  {
    v299 = outlined destroy of IntentApplication?((v0 + 250), &_sypSgMd, &_sypSgMR);
  }

  v298 = 0;
LABEL_304:
  OUTLINED_FUNCTION_105_13(v299, sel_setEventTotalCost_);

  v300 = *MEMORY[0x277CC29A8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v302 = v301;
  specialized Dictionary.subscript.getter(v20, v0 + 127);

  if (v0[257])
  {
    v303 = OUTLINED_FUNCTION_25_23();
    if (v303)
    {
      MEMORY[0x25F89F4C0](v0[314], v0[315]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_309;
    }
  }

  else
  {
    v303 = outlined destroy of IntentApplication?((v0 + 254), &_sypSgMd, &_sypSgMR);
  }

  v302 = 0;
LABEL_309:
  OUTLINED_FUNCTION_105_13(v303, sel_setRestaurantReservationId_);

  v304 = *MEMORY[0x277CC29B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v306 = v305;
  specialized Dictionary.subscript.getter(v20, v0 + 129);

  if (v0[261])
  {
    v307 = OUTLINED_FUNCTION_25_23();
    if (v307)
    {
      MEMORY[0x25F89F4C0](v0[312], v0[313]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_314;
    }
  }

  else
  {
    v307 = outlined destroy of IntentApplication?((v0 + 258), &_sypSgMd, &_sypSgMR);
  }

  v306 = 0;
LABEL_314:
  OUTLINED_FUNCTION_105_13(v307, sel_setRestaurantPartySize_);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v0 + 131);

  v308 = v0[423];
  if (v0[265])
  {
    type metadata accessor for Date();
    v309 = OUTLINED_FUNCTION_69_19();
    v310 = OUTLINED_FUNCTION_3_73(v309);
    if (!v31)
    {
      v20 = v0[423];
      v308 = v20;
      Date._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_12_50();
      v312 = *(v311 + 8);
      v313 = OUTLINED_FUNCTION_43_20();
      v310 = v314(v313);
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 262), &_sypSgMd, &_sypSgMR);
    v315 = type metadata accessor for Date();
    v310 = OUTLINED_FUNCTION_5_60(v315);
  }

  OUTLINED_FUNCTION_105_13(v310, sel_setRestaurantStartDate_);

  v316 = *MEMORY[0x277CC2A18];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v318 = v317;
  specialized Dictionary.subscript.getter(v20, v0 + 133);

  if (v0[269])
  {
    v319 = OUTLINED_FUNCTION_25_23();
    if (v319)
    {
      MEMORY[0x25F89F4C0](v0[310], v0[311]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_323;
    }
  }

  else
  {
    v319 = outlined destroy of IntentApplication?((v0 + 266), &_sypSgMd, &_sypSgMR);
  }

  v318 = 0;
LABEL_323:
  OUTLINED_FUNCTION_105_13(v319, sel_setEventStartLocationName_);

  v320 = *MEMORY[0x277CC2A20];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v322 = v321;
  specialized Dictionary.subscript.getter(v20, v0 + 135);

  if (v0[273])
  {
    v323 = OUTLINED_FUNCTION_25_23();
    if (v323)
    {
      MEMORY[0x25F89F4C0](v0[308], v0[309]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_328;
    }
  }

  else
  {
    v323 = outlined destroy of IntentApplication?((v0 + 270), &_sypSgMd, &_sypSgMR);
  }

  v322 = 0;
LABEL_328:
  OUTLINED_FUNCTION_105_13(v323, sel_setEventStartLocationTelephone_);

  v324 = *MEMORY[0x277CC2A10];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v326 = v325;
  specialized Dictionary.subscript.getter(v20, v0 + 137);

  if (v0[277])
  {
    v327 = OUTLINED_FUNCTION_25_23();
    if (v327)
    {
      MEMORY[0x25F89F4C0](v0[306], v0[307]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_333;
    }
  }

  else
  {
    v327 = outlined destroy of IntentApplication?((v0 + 274), &_sypSgMd, &_sypSgMR);
  }

  v326 = 0;
LABEL_333:
  OUTLINED_FUNCTION_105_13(v327, sel_setEventStartLocationAddress_);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v329 = v328;
  specialized Dictionary.subscript.getter(v20, v0 + 139);

  if (v0[281])
  {
    v330 = OUTLINED_FUNCTION_116_10();
    if (v330)
    {
      MEMORY[0x25F89F4C0](v0[304], v0[305]);
      OUTLINED_FUNCTION_112_2();

      goto LABEL_338;
    }
  }

  else
  {
    v330 = outlined destroy of IntentApplication?((v0 + 278), &_sypSgMd, &_sypSgMR);
  }

  v329 = 0;
LABEL_338:
  OUTLINED_FUNCTION_105_13(v330, sel_setEventProvider_);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_78_19();
  specialized Dictionary.subscript.getter(v20, v331);

  if (v0[5])
  {
    v332 = v0 + 400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v333 = OUTLINED_FUNCTION_115_14();
    if (v333)
    {
      v334 = *v332;
      Array._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_112_2();

      goto LABEL_343;
    }
  }

  else
  {
    v333 = outlined destroy of IntentApplication?((v0 + 2), &_sypSgMd, &_sypSgMR);
  }

  v332 = 0;
LABEL_343:
  OUTLINED_FUNCTION_105_13(v333, sel_setEventCustomerNames_);

  v335 = *MEMORY[0x277CC29B0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_121_12();
  specialized Dictionary.subscript.getter(v20, v336);

  if (!v0[9])
  {
    v337 = outlined destroy of IntentApplication?((v0 + 6), &_sypSgMd, &_sypSgMR);
    goto LABEL_347;
  }

  v337 = OUTLINED_FUNCTION_116_10();
  if ((v337 & 1) == 0)
  {
LABEL_347:
    v332 = 0;
    goto LABEL_348;
  }

  MEMORY[0x25F89F4C0](v0[302], v0[303]);
  OUTLINED_FUNCTION_112_2();

LABEL_348:
  v338 = v0[422];
  v339 = v0[421];
  v340 = v0[420];
  OUTLINED_FUNCTION_105_13(v337, sel_setRestaurantMealType_);

  (*(v339 + 104))(v338, *MEMORY[0x277CB9DF0], v340);
  SpotlightKeys.description.getter();
  (*(v339 + 8))(v338, v340);
  OUTLINED_FUNCTION_26_2();
  specialized Dictionary.subscript.getter(v404, v341);

  if (v0[17])
  {
    OUTLINED_FUNCTION_116_10();
    v342 = v0[300];
    v343 = v0[301];
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 14), &_sypSgMd, &_sypSgMR);
  }

  v344 = *MEMORY[0x277CC2770];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v404, v0 + 11);

  if (v0[25])
  {
    OUTLINED_FUNCTION_116_10();
    v345 = v0[298];
    v346 = v0[299];
    OUTLINED_FUNCTION_202_7();
    if (v31)
    {
      v348 = 0;
    }

    else
    {
      v348 = v347;
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 22), &_sypSgMd, &_sypSgMR);
    v348 = 0;
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  v349 = v21.super.isa;
  OUTLINED_FUNCTION_201_0();
  v350.value._object = v348;
  osloga = v351.super.isa;
  isa = CSSearchableItem.__allocating_init(uniqueIdentifier:domainIdentifier:attributeSet:)(v352, v350, v351).super.isa;
  v354 = OUTLINED_FUNCTION_141_8();
  v355 = MEMORY[0x25F89F4C0](v354);
  OUTLINED_FUNCTION_152_8(v355, sel_setBundleID_);

  v356 = swift_allocObject();
  *(v356 + 16) = isa;
  v357 = isa;
  v403 = Logger.logObject.getter();
  LODWORD(v399) = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_127_16();
  v358 = swift_allocObject();
  *(v358 + 16) = 32;
  OUTLINED_FUNCTION_127_16();
  v359 = swift_allocObject();
  *(v359 + 16) = 8;
  OUTLINED_FUNCTION_127_16();
  v360 = swift_allocObject();
  *(v360 + 16) = 37;
  OUTLINED_FUNCTION_127_16();
  v361 = swift_allocObject();
  *(v361 + 16) = 8;
  OUTLINED_FUNCTION_131();
  v362 = swift_allocObject();
  *(v362 + 16) = partial apply for implicit closure #7 in SourceDocumentRetriever.fetchEventDocument(docId:);
  *(v362 + 24) = v356;
  OUTLINED_FUNCTION_131();
  v363 = swift_allocObject();
  *(v363 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v363 + 24) = v362;
  v364 = swift_allocObject();
  *(v364 + 16) = xmmword_25DBC88F0;
  *(v364 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v364 + 40) = v358;
  *(v364 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v364 + 56) = v359;
  *(v364 + 64) = specialized closure #1 in OSLogArguments.append(_:);
  *(v364 + 72) = 0;
  *(v364 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v364 + 88) = v360;
  *(v364 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v364 + 104) = v361;
  *(v364 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v364 + 120) = v363;

  if (os_log_type_enabled(v403, v399))
  {
    v398 = v357;
    v365 = _sSp8allocate8capacitySpyxGSi_tFZs5UInt8V_Tt0g5();
    swift_slowAlloc();
    *v365 = 515;
    *(v365 + 2) = 32;

    *(v365 + 3) = 8;

    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_141_8();
    *(v365 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v365 + 12) = 37;

    *(v365 + 13) = 8;

    v366 = v398;
    v367 = [(objc_class *)v366 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_164_4();

    v368 = OUTLINED_FUNCTION_192_10();

    *(v365 + 14) = v368;

    _os_log_impl(&dword_25D85C000, v403, v399, "%s Manually created csItem: %{sensitive}s", v365, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    specialized UnsafeMutablePointer.deallocate()();
  }

  v369 = v0[416];
  static EventManager.createSearchResult(from:)(v357, v370, v371, v372, v373, v374, v375, v376, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v399);

LABEL_359:
  v377 = v0[429];
  v378 = v0[428];
  v379 = v0[427];
  v380 = v0[426];
  v381 = v0[425];
  v382 = v0[424];
  v383 = v0[423];
  v384 = v0[422];

  OUTLINED_FUNCTION_127();

  return v385();
}

uint64_t implicit closure #7 in SourceDocumentRetriever.fetchEventDocument(docId:)(void *a1)
{
  v1 = a1;
  v2 = [v1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SourceDocumentRetriever.fetchWalletDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  v1[18] = OUTLINED_FUNCTION_199();
  v8 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 136));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchWalletDocument(docId:);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 160) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v2 = v0[20];
  if (v2)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v3 = type metadata accessor for Logger();
    v4 = __swift_project_value_buffer(v3, static Logging.search);
    OUTLINED_FUNCTION_86_17();
    swift_bridgeObjectRetain_n();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_89_18(v6))
    {
      OUTLINED_FUNCTION_49_0();
      v59 = OUTLINED_FUNCTION_161_6();
      *v1 = 136315651;
      v7 = OUTLINED_FUNCTION_221_6();
      OUTLINED_FUNCTION_27_28(v7);
      Dictionary.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_156_9();
      *(v1 + 14) = "fetchWalletDocument(docId:)";
      *(v1 + 22) = 2048;
      v8 = v2[2];

      *(v1 + 24) = v8;

      OUTLINED_FUNCTION_30_33();
      _os_log_impl(v9, v10, v11, v12, v13, 0x20u);
      OUTLINED_FUNCTION_132_12();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {
      OUTLINED_FUNCTION_86_17();
      swift_bridgeObjectRelease_n();
    }

    v19 = *MEMORY[0x277CC3208];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_78_19();
    specialized Dictionary.subscript.getter(v2, v20);

    if (v0[5])
    {
      if (OUTLINED_FUNCTION_116_10())
      {
        v21 = v0[12];
        v22 = v0[13];
      }
    }

    else
    {
      outlined destroy of IntentApplication?((v0 + 2), &_sypSgMd, &_sypSgMR);
    }

    v23 = *MEMORY[0x277CC2770];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_121_12();
    specialized Dictionary.subscript.getter(v2, v24);

    if (v0[9])
    {
      OUTLINED_FUNCTION_116_10();
      v25 = v0[10];
      v26 = v0[11];
      OUTLINED_FUNCTION_201_9();
    }

    else
    {
      outlined destroy of IntentApplication?((v0 + 6), &_sypSgMd, &_sypSgMR);
    }

    specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);
    OUTLINED_FUNCTION_104_9();

    v27 = objc_allocWithZone(MEMORY[0x277CC34B8]);
    v28 = OUTLINED_FUNCTION_144_13();
    v29 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    OUTLINED_FUNCTION_151_7();
    v34 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v30, v31, v32, v33, v28);
    v35 = MEMORY[0x25F89F4C0](0xD000000000000012, 0x800000025DBF1E30);
    [v34 setBundleID_];

    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_42_15())
    {
      OUTLINED_FUNCTION_90_1();
      v59 = OUTLINED_FUNCTION_91_9();
      *v4 = 136315395;
      v39 = OUTLINED_FUNCTION_221_6();
      OUTLINED_FUNCTION_42_28(v39);
      v40 = v36;
      v41 = [v40 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_164_4();

      v42 = OUTLINED_FUNCTION_192_10();

      *(v4 + 14) = v42;
      OUTLINED_FUNCTION_98_11(&dword_25D85C000, v43, v38, "%s Manually created csItem: %{sensitive}s");
      OUTLINED_FUNCTION_193_9();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_52_16();
    }

    v44 = v0[18];
    v45 = v0[14];
    type metadata accessor for LocalIndexClient();
    type metadata accessor for SpotlightRankingItem();
    v46 = OUTLINED_FUNCTION_19_43();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    static LocalIndexClient.walletDocument(from:spotlightRankingItem:)(v36, v44, v50, v51, v52, v53, v54, v55, v59, v60, v61, v62, v63, v64, v65, v66, v67, v0, v68, v69);

    outlined destroy of IntentApplication?(v44, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  }

  else
  {
    v14 = v0[14];
    type metadata accessor for SearchResult(0);
    v15 = OUTLINED_FUNCTION_7_19();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  v56 = v0[18];

  OUTLINED_FUNCTION_127();

  return v57();
}

uint64_t SourceDocumentRetriever.fetchReminderDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[52] = v2;
  v1[53] = v0;
  v1[50] = v3;
  v1[51] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[54] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[55] = v6;
  v8 = *(v7 + 64);
  v1[56] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[57] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[58] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[59] = OUTLINED_FUNCTION_160();
  v1[60] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v1[61] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[62] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[63] = OUTLINED_FUNCTION_199();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v23 = *(v22 + 64);
  v1[64] = OUTLINED_FUNCTION_160();
  v1[65] = swift_task_alloc();
  v24 = type metadata accessor for Reminder();
  v1[66] = v24;
  OUTLINED_FUNCTION_21(v24);
  v1[67] = v25;
  v27 = *(v26 + 64);
  v1[68] = OUTLINED_FUNCTION_199();
  v28 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 424));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 552) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchReminderDocument(docId:);
  v5 = *(v0 + 416);
  v6 = *(v0 + 424);
  v7 = *(v0 + 408);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 552);
  *v2 = *v0;
  *(v1 + 560) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t SourceDocumentRetriever.fetchReminderDocument(docId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_217_7();
  v29 = *(v26 + 560);
  if (!v29)
  {
    v40 = *(v26 + 456);
    v41 = *(v26 + 400);
    OUTLINED_FUNCTION_92();
    goto LABEL_54;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logging.search);
  OUTLINED_FUNCTION_86_17();
  swift_bridgeObjectRetain_n();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_89_18(v32))
  {
    OUTLINED_FUNCTION_49_0();
    v33 = OUTLINED_FUNCTION_161_6();
    OUTLINED_FUNCTION_122_12(v33);
    *v27 = 136315651;
    OUTLINED_FUNCTION_85_17();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_27_28(v34);
    OUTLINED_FUNCTION_232_1();
    OUTLINED_FUNCTION_231_3();
    OUTLINED_FUNCTION_156_9();
    OUTLINED_FUNCTION_60_17();
    OUTLINED_FUNCTION_227_4();
    OUTLINED_FUNCTION_30_33();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
    OUTLINED_FUNCTION_132_12();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    OUTLINED_FUNCTION_86_17();
    swift_bridgeObjectRelease_n();
  }

  v46 = *MEMORY[0x277CC31F0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_78_19();
  specialized Dictionary.subscript.getter(v29, v47);

  if (*(v26 + 40))
  {
    OUTLINED_FUNCTION_97_11();
    v48 = *(v26 + 384);
    v49 = *(v26 + 392);
    OUTLINED_FUNCTION_57_21();
    if (v51)
    {
      v52 = 0;
    }

    else
    {
      v52 = v50;
    }

    a20 = v52;
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 16, &_sypSgMd, &_sypSgMR);
    a20 = 0;
  }

  v53 = *MEMORY[0x277CC25D8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_190_10();

  if (*(v26 + 72))
  {
    OUTLINED_FUNCTION_220_4();
    v54 = *(v26 + 368);
    v55 = *(v26 + 376);
    OUTLINED_FUNCTION_57_21();
    if (v51)
    {
      v58 = 0;
    }

    else
    {
      v58 = v56;
    }

    a18 = v58;
    a19 = v57;
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 48, &_sypSgMd, &_sypSgMR);
    a18 = 0;
    a19 = 0;
  }

  v59 = *MEMORY[0x277CC2640];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v29, (v26 + 80));

  v60 = *(v26 + 520);
  if (*(v26 + 104))
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_130_14();
    v61 = OUTLINED_FUNCTION_95_12();
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 80, &_sypSgMd, &_sypSgMR);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
  }

  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v65 = *MEMORY[0x277CC2778];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v29, (v26 + 112));

  v66 = *(v26 + 512);
  if (*(v26 + 136))
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_130_14();
    v67 = OUTLINED_FUNCTION_95_12();
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 112, &_sypSgMd, &_sypSgMR);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
  }

  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  v71 = *MEMORY[0x277CC2C60];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v29, (v26 + 144));

  if (!*(v26 + 168))
  {
    outlined destroy of IntentApplication?(v26 + 144, &_sypSgMd, &_sypSgMR);
    goto LABEL_30;
  }

  if (!OUTLINED_FUNCTION_220_4())
  {
LABEL_30:
    HIDWORD(a17) = 0;
    goto LABEL_31;
  }

  HIDWORD(a17) = *(v26 + 568);
LABEL_31:
  v72 = *MEMORY[0x277CC2DD0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v29, (v26 + 176));

  if (*(v26 + 200))
  {
    OUTLINED_FUNCTION_220_4();
    v73 = *(v26 + 352);
    v74 = *(v26 + 360);
    OUTLINED_FUNCTION_57_21();
    if (v51)
    {
      v77 = 0;
    }

    else
    {
      v77 = v75;
    }

    a15 = v77;
    a16 = v76;
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 176, &_sypSgMd, &_sypSgMR);
    a15 = 0;
    a16 = 0;
  }

  v78 = *MEMORY[0x277CC2B60];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v29, (v26 + 208));

  if (*(v26 + 232))
  {
    OUTLINED_FUNCTION_220_4();
    v79 = *(v26 + 336);
    v80 = *(v26 + 344);
    OUTLINED_FUNCTION_201_9();
    if (v51)
    {
      v82 = 0;
    }

    else
    {
      v82 = v81;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 208, &_sypSgMd, &_sypSgMR);
    v28 = 0;
    v82 = 0;
  }

  v83 = *(v26 + 544);
  v84 = *(v26 + 520);
  v85 = *(v26 + 504);
  v86 = *(v26 + 512);
  v88 = *(v26 + 408);
  v87 = *(v26 + 416);
  type metadata accessor for URL();
  v89 = OUTLINED_FUNCTION_19_43();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);

  a13 = v82;
  a14 = v85;
  a11 = a15;
  a12 = v28;
  a10 = a16;
  LOBYTE(a9) = BYTE4(a17);
  OUTLINED_FUNCTION_113_11();
  Reminder.init(id:title:note:creationDate:dueDate:dueDateIsAllDay:namedLocation:physicalAddress:url:)();
  v93 = *MEMORY[0x277CC3208];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_137_8();
  specialized Dictionary.subscript.getter(v29, v94);

  if (*(v26 + 264))
  {
    OUTLINED_FUNCTION_220_4();
    v95 = *(v26 + 320);
    v96 = *(v26 + 328);
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 240, &_sypSgMd, &_sypSgMR);
  }

  v97 = *MEMORY[0x277CC2770];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v29, (v26 + 272));

  if (*(v26 + 296))
  {
    OUTLINED_FUNCTION_220_4();
    v98 = *(v26 + 304);
    v99 = *(v26 + 312);
    OUTLINED_FUNCTION_202_7();
  }

  else
  {
    outlined destroy of IntentApplication?(v26 + 272, &_sypSgMd, &_sypSgMR);
    v29 = 0;
  }

  [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v100 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v101 = OUTLINED_FUNCTION_26_2();
  v103 = OUTLINED_FUNCTION_188_10(v101, v102, v29);
  v104 = MEMORY[0x25F89F4C0](0xD000000000000013, 0x800000025DBF1CB0);
  OUTLINED_FUNCTION_152_8(v104, sel_setBundleID_);

  v105 = v103;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.info.getter();

  if (OUTLINED_FUNCTION_42_15())
  {
    OUTLINED_FUNCTION_90_1();
    a23 = OUTLINED_FUNCTION_91_9();
    *v104 = 136315395;
    OUTLINED_FUNCTION_98_2();
    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_42_28(v108);
    v109 = v105;
    v110 = [v109 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v111 = OUTLINED_FUNCTION_192_10();

    *(v104 + 14) = v111;
    OUTLINED_FUNCTION_98_11(&dword_25D85C000, v112, v107, "%s Created csItem: %{sensitive}s");
    OUTLINED_FUNCTION_193_9();
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_52_16();
  }

  v113 = *(v26 + 488);
  v114 = *(v26 + 472);
  v115 = *(v26 + 480);
  v117 = *(v26 + 456);
  v116 = *(v26 + 464);
  v118 = *(v26 + 432);
  (*(*(v26 + 536) + 16))(*(v26 + 496), *(v26 + 544), *(v26 + 528));
  OUTLINED_FUNCTION_179_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v118);
  *(v116 + v117[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_7_25((v116 + v117[10]));
  v122 = OUTLINED_FUNCTION_45_0();
  _s10OmniSearch0B6ResultVWOcTm_7(v122, v123, v124);
  v125 = v117[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v126 = v105;
  OUTLINED_FUNCTION_158_0();
  CodableNSSecureCoding.init(wrappedValue:)();
  v127 = OUTLINED_FUNCTION_113_11();
  outlined init with copy of SpotlightRankingItem?(v127, v128, v129, v130);
  v131 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v131, v132, v118);
  v134 = *(v26 + 544);
  v135 = *(v26 + 536);
  v136 = *(v26 + 528);
  v137 = *(v26 + 496);
  v138 = *(v26 + 472);
  a21 = *(v26 + 480);
  v139 = *(v26 + 456);
  a22 = *(v26 + 464);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_158_0();
    outlined destroy of IntentApplication?(v140, v141, v142);
    v143 = *(v139 + 20);
    OUTLINED_FUNCTION_6_55();
    OUTLINED_FUNCTION_14_38();

    OUTLINED_FUNCTION_158_0();
    outlined destroy of IntentApplication?(v144, v145, v146);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v137, v147);
    v148 = *(v135 + 8);
    v149 = OUTLINED_FUNCTION_113_11();
    v150(v149);
  }

  else
  {
    a20 = *(v26 + 528);
    v151 = *(v26 + 440);
    v152 = *(v26 + 448);
    v153 = *(v26 + 432);

    outlined destroy of IntentApplication?(a21, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v137, v154);
    v155 = OUTLINED_FUNCTION_212_6();
    v156(v155, v136);
    v157 = OUTLINED_FUNCTION_148_12();
    (v126)(v157);
    OUTLINED_FUNCTION_146_10();
    OUTLINED_FUNCTION_158_0();
    (v126)();
  }

  v158 = *(v26 + 456);
  v159 = *(v26 + 400);
  OUTLINED_FUNCTION_11_60(*(v26 + 464));
  v42 = OUTLINED_FUNCTION_10_53();
LABEL_54:
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v160 = *(v26 + 544);
  v161 = *(v26 + 520);
  v163 = *(v26 + 504);
  v162 = *(v26 + 512);
  v164 = *(v26 + 496);
  v166 = *(v26 + 472);
  v165 = *(v26 + 480);
  v167 = *(v26 + 464);
  v168 = *(v26 + 448);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_199_0();

  return v170(v169, v170, v171, v172, v173, v174, v175, v176, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t SourceDocumentRetriever.fetchJournalDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[30] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[31] = v6;
  v8 = *(v7 + 64);
  v1[32] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[33] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[34] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_160();
  v1[36] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v1[37] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[38] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[39] = OUTLINED_FUNCTION_199();
  v21 = type metadata accessor for JournalEntry();
  v1[40] = v21;
  OUTLINED_FUNCTION_21(v21);
  v1[41] = v22;
  v24 = *(v23 + 64);
  v1[42] = OUTLINED_FUNCTION_199();
  v25 = type metadata accessor for CharacterSet();
  v1[43] = v25;
  OUTLINED_FUNCTION_21(v25);
  v1[44] = v26;
  v28 = *(v27 + 64);
  v1[45] = OUTLINED_FUNCTION_199();
  v29 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 232));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 368) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchJournalDocument(docId:);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 368);
  *v2 = *v0;
  *(v1 + 376) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t SourceDocumentRetriever.fetchJournalDocument(docId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_217_7();
  v28 = *(v27 + 376);
  if (v28)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v29 = type metadata accessor for Logger();
    v30 = __swift_project_value_buffer(v29, static Logging.search);
    OUTLINED_FUNCTION_84_14();
    swift_bridgeObjectRetain_n();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = OUTLINED_FUNCTION_89_18(v32);
    v34 = MEMORY[0x277D84F70];
    if (v33)
    {
      OUTLINED_FUNCTION_49_0();
      v35 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_122_12(v35);
      *v26 = 136315651;
      OUTLINED_FUNCTION_85_17();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_25_18(v36);
      OUTLINED_FUNCTION_175_9();
      Dictionary.description.getter();
      OUTLINED_FUNCTION_231_3();
      OUTLINED_FUNCTION_156_9();
      *(v26 + 14) = v34;
      OUTLINED_FUNCTION_169_11();
      v37 = *(v28 + 16);

      *(v26 + 24) = v37;

      OUTLINED_FUNCTION_75_20();
      _os_log_impl(v38, v39, v40, v41, v26, 0x20u);
      OUTLINED_FUNCTION_132_12();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
      OUTLINED_FUNCTION_84_14();
      swift_bridgeObjectRelease_n();
    }

    v48 = *MEMORY[0x277CC3208];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_78_19();
    specialized Dictionary.subscript.getter(v28, v49);

    if (*(v27 + 40))
    {
      OUTLINED_FUNCTION_129_15();
      v50 = *(v27 + 192);
      v51 = *(v27 + 200);
      OUTLINED_FUNCTION_77_19();
    }

    else
    {
      outlined destroy of IntentApplication?(v27 + 16, &_sypSgMd, &_sypSgMR);
    }

    v52 = *MEMORY[0x277CC2770];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v28, (v27 + 48));

    if (*(v27 + 72))
    {
      v53 = OUTLINED_FUNCTION_129_15();
      if (v53)
      {
        v54 = *(v27 + 176);
      }

      else
      {
        v54 = 0;
      }

      if (v53)
      {
        v55 = *(v27 + 184);
      }

      else
      {
        v55 = 0;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v27 + 48, &_sypSgMd, &_sypSgMR);
      v54 = 0;
      v55 = 0;
    }

    v56 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v57 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v58 = OUTLINED_FUNCTION_88();
    v60 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v58, v59, v54, v55, v56);
    v61 = MEMORY[0x25F89F4C0](0xD000000000000011, 0x800000025DBF1D90);
    [v60 setBundleID_];

    v62 = v60;
    v63 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    v139 = v62;
    if (OUTLINED_FUNCTION_187_8())
    {
      OUTLINED_FUNCTION_90_1();
      v64 = OUTLINED_FUNCTION_161_6();
      OUTLINED_FUNCTION_122_12(v64);
      *v30 = 136315395;
      OUTLINED_FUNCTION_85_17();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_27_28(v65);
      v66 = v62;
      v67 = [v66 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v30 + 14) = v68;
      OUTLINED_FUNCTION_30_33();
      _os_log_impl(v69, v70, v71, v72, v73, 0x16u);
      OUTLINED_FUNCTION_132_12();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    v74 = *MEMORY[0x277CC2750];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_120_11();
    specialized Dictionary.subscript.getter(v28, v75);

    if (*(v27 + 104))
    {
      if (OUTLINED_FUNCTION_117_15())
      {
        v77 = *(v27 + 352);
        v76 = *(v27 + 360);
        v78 = *(v27 + 344);
        v79 = *(v27 + 152);
        a21 = *(v27 + 144);
        *(v27 + 160) = a21;
        *(v27 + 168) = v79;

        static CharacterSet.punctuationCharacters.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v80 = StringProtocol.components(separatedBy:)();
        (*(v77 + 8))(v76, v78);
        a20 = v79;

        if (v80[2])
        {
          a18 = v80[5];
          a19 = v80[4];
        }

        else
        {

          a18 = 0;
          a19 = 0;
        }

LABEL_27:
        v81 = *MEMORY[0x277CC2688];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        specialized Dictionary.subscript.getter(v28, (v27 + 112));

        v82 = *(v27 + 312);
        if (*(v27 + 136))
        {
          type metadata accessor for URL();
          OUTLINED_FUNCTION_196_7();
          v83 = OUTLINED_FUNCTION_96_12();
        }

        else
        {
          outlined destroy of IntentApplication?(v27 + 112, &_sypSgMd, &_sypSgMR);
          type metadata accessor for URL();
          v83 = OUTLINED_FUNCTION_19_43();
        }

        __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
        v88 = *(v27 + 328);
        v87 = *(v27 + 336);
        v89 = *(v27 + 312);
        v90 = *(v27 + 320);
        v91 = *(v27 + 304);
        a16 = *(v27 + 288);
        a17 = *(v27 + 280);
        v92 = *(v27 + 264);
        v93 = *(v27 + 272);
        a14 = *(v27 + 296);
        a15 = *(v27 + 240);
        v95 = *(v27 + 216);
        v94 = *(v27 + 224);

        JournalEntry.init(id:displayTitle:text:url:)();
        (*(v88 + 16))(v91, v87, v90);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v96, v97, v98, a15);
        *(v93 + v92[7]) = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_7_25((v93 + v92[10]));
        _s10OmniSearch0B6ResultVWOcTm_7(v91, v93, v99);
        v100 = v92[6];
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        v101 = v139;
        OUTLINED_FUNCTION_65_0();
        CodableNSSecureCoding.init(wrappedValue:)();
        outlined init with copy of SpotlightRankingItem?(a16, a17, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v102 = OUTLINED_FUNCTION_65();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102, v103, a15);
        v105 = *(v27 + 328);
        v106 = *(v27 + 304);
        v107 = *(v27 + 288);
        v108 = *(v27 + 264);
        a22 = *(v27 + 272);
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of IntentApplication?(*(v27 + 280), &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          v109 = *(v108 + 20);
          OUTLINED_FUNCTION_6_55();
          OUTLINED_FUNCTION_14_38();

          outlined destroy of IntentApplication?(v107, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_48();
          _s10OmniSearch0B6ResultVWOhTm_4(v106, v110);
          v111 = *(v105 + 8);
          v112 = OUTLINED_FUNCTION_113_11();
          v113(v112);
        }

        else
        {
          a20 = *(v27 + 336);
          a21 = *(v27 + 320);
          v114 = *(v27 + 248);
          v115 = *(v27 + 256);
          v116 = *(v27 + 240);

          outlined destroy of IntentApplication?(v107, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_48();
          _s10OmniSearch0B6ResultVWOhTm_4(v106, v117);
          (*(v105 + 8))(a20, a21);
          v118 = OUTLINED_FUNCTION_148_12();
          (v101)(v118);
          v119 = OUTLINED_FUNCTION_146_10();
          (v101)(v119, v115, v116);
        }

        v120 = *(v27 + 264);
        v121 = *(v27 + 208);
        OUTLINED_FUNCTION_11_60(*(v27 + 272));
        v44 = OUTLINED_FUNCTION_10_53();
        goto LABEL_34;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v27 + 80, &_sypSgMd, &_sypSgMR);
    }

    a18 = 0;
    a19 = 0;
    a20 = 0;
    a21 = 0;
    goto LABEL_27;
  }

  v42 = *(v27 + 264);
  v43 = *(v27 + 208);
  OUTLINED_FUNCTION_92();
LABEL_34:
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v122 = *(v27 + 360);
  v123 = *(v27 + 336);
  v125 = *(v27 + 304);
  v124 = *(v27 + 312);
  v127 = *(v27 + 280);
  v126 = *(v27 + 288);
  v128 = *(v27 + 272);
  v129 = *(v27 + 256);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_199_0();

  return v131(v130, v131, v132, v133, v134, v135, v136, v137, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t SourceDocumentRetriever.fetchSafariHistory(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[18] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[19] = v6;
  v8 = *(v7 + 64);
  v1[20] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[21] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[22] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_160();
  v1[24] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v1[25] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[26] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[27] = OUTLINED_FUNCTION_160();
  v1[28] = swift_task_alloc();
  v21 = type metadata accessor for Safari();
  v1[29] = v21;
  OUTLINED_FUNCTION_21(v21);
  v1[30] = v22;
  v24 = *(v23 + 64);
  v1[31] = OUTLINED_FUNCTION_199();
  v25 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 136));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchSafariHistory(docId:);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 256);
  *v2 = *v0;
  *(v1 + 264) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v2 = *(v1 + 264);
  if (v2)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v3 = type metadata accessor for Logger();
    v4 = __swift_project_value_buffer(v3, static Logging.search);
    OUTLINED_FUNCTION_84_14();
    swift_bridgeObjectRetain_n();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = OUTLINED_FUNCTION_89_18(v6);
    v8 = MEMORY[0x277D84F70];
    if (v7)
    {
      OUTLINED_FUNCTION_49_0();
      v9 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_122_12(v9);
      *v0 = 136315651;
      OUTLINED_FUNCTION_85_17();
      OUTLINED_FUNCTION_141_8();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_25_18(v10);
      OUTLINED_FUNCTION_175_9();
      Dictionary.description.getter();
      OUTLINED_FUNCTION_231_3();
      OUTLINED_FUNCTION_156_9();
      *(v0 + 14) = v8;
      OUTLINED_FUNCTION_169_11();
      v11 = v2[2];

      *(v0 + 24) = v11;

      OUTLINED_FUNCTION_75_20();
      _os_log_impl(v12, v13, v14, v15, v0, 0x20u);
      OUTLINED_FUNCTION_132_12();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
      OUTLINED_FUNCTION_84_14();
      swift_bridgeObjectRelease_n();
    }

    specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);
    v22 = objc_allocWithZone(MEMORY[0x277CC34B8]);
    v23 = OUTLINED_FUNCTION_144_13();
    v24 = *MEMORY[0x277CC3208];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v2, (v1 + 16));

    if (*(v1 + 40))
    {
      OUTLINED_FUNCTION_129_15();
      v25 = *(v1 + 96);
      v26 = *(v1 + 104);
      OUTLINED_FUNCTION_202_7();
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 16, &_sypSgMd, &_sypSgMR);
    }

    v27 = *MEMORY[0x277CC2770];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v2, (v1 + 48));

    if (*(v1 + 72))
    {
      if (OUTLINED_FUNCTION_129_15())
      {
        v28 = *(v1 + 80);
        v29 = *(v1 + 88);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 48, &_sypSgMd, &_sypSgMR);
    }

    objc_allocWithZone(MEMORY[0x277CC34B0]);
    v30 = v23;
    v31 = OUTLINED_FUNCTION_210_5();
    v128 = v32;
    v36 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v31, v33, v34, v35, v32);
    v37 = MEMORY[0x25F89F4C0](0xD000000000000016, 0x800000025DBF1E50);
    OUTLINED_FUNCTION_152_8(v37, sel_setBundleID_);

    v38 = v36;
    v39 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    v126 = v38;
    if (OUTLINED_FUNCTION_187_8())
    {
      OUTLINED_FUNCTION_90_1();
      v40 = OUTLINED_FUNCTION_161_6();
      OUTLINED_FUNCTION_122_12(v40);
      *v4 = 136315395;
      OUTLINED_FUNCTION_85_17();
      OUTLINED_FUNCTION_141_8();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_27_28(v41);
      v42 = v38;
      v43 = [v42 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v4 + 14) = v44;
      OUTLINED_FUNCTION_30_33();
      _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
      OUTLINED_FUNCTION_132_12();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    CSSearchableItem.title.getter();
    v50 = [v128 contentURL];
    if (v50)
    {
      v51 = v50;
      v52 = *(v1 + 224);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v54 = *(v1 + 224);
    type metadata accessor for URL();
    v55 = OUTLINED_FUNCTION_158_8();
    v123 = v56;
    __swift_storeEnumTagSinglePayload(v55, v53, 1, v56);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.contentSnippet.getter(v128);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.contentType.getter(v128);
    v57 = [v128 URL];
    if (v57)
    {
      v58 = v57;
      v59 = *(v1 + 216);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = 0;
    }

    else
    {
      v60 = 1;
    }

    v62 = *(v1 + 240);
    v61 = *(v1 + 248);
    v63 = *(v1 + 224);
    v64 = *(v1 + 208);
    v119 = *(v1 + 232);
    v120 = *(v1 + 200);
    v65 = *(v1 + 176);
    v124 = *(v1 + 184);
    v66 = *(v1 + 168);
    v121 = *(v1 + 144);
    v122 = *(v1 + 192);
    v68 = *(v1 + 120);
    v67 = *(v1 + 128);
    __swift_storeEnumTagSinglePayload(*(v1 + 216), v60, 1, v123);

    Safari.init(id:websiteTitle:websiteUrl:body:contentType:url:)();
    (*(v62 + 16))(v64, v61, v119);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v121);
    *(v65 + v66[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_7_25((v65 + v66[10]));
    _s10OmniSearch0B6ResultVWOcTm_7(v64, v65, v72);
    v73 = v66[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v74 = v126;
    OUTLINED_FUNCTION_65_0();
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of SpotlightRankingItem?(v122, v124, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v75 = OUTLINED_FUNCTION_65();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, v76, v121);
    v79 = *(v1 + 240);
    v78 = *(v1 + 248);
    v80 = *(v1 + 232);
    v81 = *(v1 + 208);
    v82 = *(v1 + 184);
    v83 = *(v1 + 168);
    v125 = *(v1 + 192);
    v127 = *(v1 + 176);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_189_4();
      outlined destroy of IntentApplication?(v84, v85, v86);
      v87 = *(v83 + 20);
      OUTLINED_FUNCTION_6_55();
      OUTLINED_FUNCTION_14_38();

      OUTLINED_FUNCTION_189_4();
      outlined destroy of IntentApplication?(v88, v89, v90);
      OUTLINED_FUNCTION_0_48();
      _s10OmniSearch0B6ResultVWOhTm_4(v81, v91);
      v92 = *(v79 + 8);
      v93 = OUTLINED_FUNCTION_172_6();
      v94(v93);
    }

    else
    {
      v95 = *(v1 + 152);
      v96 = *(v1 + 160);
      v97 = *(v1 + 144);

      outlined destroy of IntentApplication?(v125, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_48();
      _s10OmniSearch0B6ResultVWOhTm_4(v81, v98);
      v99 = OUTLINED_FUNCTION_212_6();
      v100(v99, v80);
      v101 = *(v95 + 32);
      OUTLINED_FUNCTION_205_7();
      v101(v102, v103);
      v104 = *(v83 + 20);
      OUTLINED_FUNCTION_189_4();
      v101(v105, v106);
    }

    v107 = *(v1 + 168);
    v108 = *(v1 + 112);
    OUTLINED_FUNCTION_11_60(*(v1 + 176));
    v18 = OUTLINED_FUNCTION_10_53();
  }

  else
  {
    v16 = *(v1 + 168);
    v17 = *(v1 + 112);
    OUTLINED_FUNCTION_92();
  }

  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v109 = *(v1 + 248);
  v110 = *(v1 + 216);
  v111 = *(v1 + 224);
  v112 = *(v1 + 208);
  v114 = *(v1 + 184);
  v113 = *(v1 + 192);
  v115 = *(v1 + 176);
  v116 = *(v1 + 160);

  OUTLINED_FUNCTION_127();

  return v117();
}

uint64_t SourceDocumentRetriever.fetchPhoneDocument(docId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t SourceDocumentRetriever.fetchPhoneDocument(docId:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 104));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA1A0];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchPhoneDocument(docId:);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = v0[15];
  if (!v1)
  {
    v7 = v0[10];
    type metadata accessor for SearchResult(0);
    v8 = OUTLINED_FUNCTION_7_19();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_106();
    goto LABEL_36;
  }

  v2 = *MEMORY[0x277CC2678];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_78_19();
  specialized Dictionary.subscript.getter(v1, v3);

  if (v0[5])
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v0[8];
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v0[9];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 2), &_sypSgMd, &_sypSgMR);
    v5 = 0;
    v6 = 0;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logging.search);
  OUTLINED_FUNCTION_84_14();
  swift_bridgeObjectRetain_n();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v14))
  {
    v15 = OUTLINED_FUNCTION_49_0();
    swift_slowAlloc();
    *v15 = 136315651;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v15 + 12) = 2085;
    Dictionary.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v15 + 14) = v16;
    *(v15 + 22) = 2048;
    v17 = *(v1 + 16);

    *(v15 + 24) = v17;

    _os_log_impl(&dword_25D85C000, v13, v14, "%s Fetched Phone attributes %{sensitive}s, count: %ld", v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    OUTLINED_FUNCTION_84_14();
    swift_bridgeObjectRelease_n();
  }

  if (!v6)
  {
    goto LABEL_33;
  }

  v18 = v5 == 0xD00000000000001BLL && v6 == 0x800000025DBF6E60;
  if (v18 || (OUTLINED_FUNCTION_30_5(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[16] = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_178_8(v19);
    OUTLINED_FUNCTION_115();

    return SourceDocumentRetriever.fetchVoicemailDocument(docId:attributes:)();
  }

  if (v5 != 0xD000000000000016 || v6 != 0x800000025DBF6E80)
  {
    OUTLINED_FUNCTION_30_5();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_33:

      _StringGuts.grow(_:)(48);

      v0[6] = v5;
      v0[7] = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v27 = String.init<A>(describing:)();
      MEMORY[0x25F89F6C0](v27);

      MEMORY[0x25F89F6C0](0x6E756220726F6620, 0xEF203A6449656C64);
      MEMORY[0x25F89F6C0](0xD000000000000015, 0x800000025DBF1D50);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_51_0();
        v39 = OUTLINED_FUNCTION_49_0();
        *v30 = 136315138;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_109_2();
        _os_log_impl(v31, v32, v33, v34, v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        OUTLINED_FUNCTION_33_0();
        OUTLINED_FUNCTION_72_9();
      }

      lazy protocol witness table accessor for type SourceDocumentRetriever.DocumentRetrievalError and conformance SourceDocumentRetriever.DocumentRetrievalError();
      v35 = swift_allocError();
      *v36 = 0xD00000000000001DLL;
      v36[1] = 0x800000025DBFA2B0;
      OUTLINED_FUNCTION_219_6(v35, v36);
      OUTLINED_FUNCTION_127();
LABEL_36:
      OUTLINED_FUNCTION_115();

      __asm { BRAA            X1, X16 }
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[17] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_178_8(v24);
  OUTLINED_FUNCTION_115();

  return SourceDocumentRetriever.fetchPhoneHistoryDocument(docId:attributes:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  OUTLINED_FUNCTION_106();

  return v6();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 136);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  OUTLINED_FUNCTION_106();

  return v6();
}

uint64_t SourceDocumentRetriever.fetchPhoneHistoryDocument(docId:attributes:)()
{
  OUTLINED_FUNCTION_48();
  v0[34] = v1;
  v0[35] = v2;
  v0[32] = v3;
  v0[33] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v0[36] = v5;
  OUTLINED_FUNCTION_21(v5);
  v0[37] = v6;
  v8 = *(v7 + 64);
  v0[38] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v0[39] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v0[40] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v0[41] = OUTLINED_FUNCTION_160();
  v0[42] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v0[43] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v0[44] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for PhoneHistory();
  v0[45] = v18;
  OUTLINED_FUNCTION_21(v18);
  v0[46] = v19;
  v21 = *(v20 + 64);
  v0[47] = OUTLINED_FUNCTION_199();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v22);
  v24 = *(v23 + 64);
  v0[48] = OUTLINED_FUNCTION_160();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v25);
  v27 = *(v26 + 64);
  v0[51] = OUTLINED_FUNCTION_160();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

{
  specialized _dictionaryUpCast<A, B, C, D>(_:)(*(v0 + 280));
  v1 = objc_allocWithZone(MEMORY[0x277CC34B8]);
  v2 = OUTLINED_FUNCTION_144_13();
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v2);
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.recipientNames.getter(v2);
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.participants.getter(v2);
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.phoneNumbers.getter(v2);
  v3 = MEMORY[0x25F89F4C0](0xD000000000000029, 0x800000025DBF6D30);
  v4 = [v2 attributeForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  *(v0 + 16) = v139;
  *(v0 + 32) = v140;
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_117_15();
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    OUTLINED_FUNCTION_57_21();
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 16, &_sypSgMd, &_sypSgMR);
  }

  v7 = [v2 contentCreationDate];
  if (v7)
  {
    v8 = v7;
    v9 = *(v0 + 416);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = *(v0 + 416);
  v11 = *(v0 + 424);
  type metadata accessor for Date();
  v13 = OUTLINED_FUNCTION_159_8();
  __swift_storeEnumTagSinglePayload(v13, v10, 1, v14);
  outlined init with take of SearchResultItem?(v12, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = MEMORY[0x25F89F4C0](0xD00000000000001ELL, 0x800000025DBF6D60);
  v16 = [v2 attributeForKey_];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  *(v0 + 48) = v139;
  *(v0 + 64) = v140;
  if (*(v0 + 72))
  {
    OUTLINED_FUNCTION_117_15();
    v17 = *(v0 + 224);
    v18 = *(v0 + 232);
    OUTLINED_FUNCTION_57_21();
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19;
    }

    v126 = v22;
    v127 = v20;
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 48, &_sypSgMd, &_sypSgMR);
    v126 = 0;
    v127 = 0;
  }

  if ([v2 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  *(v0 + 80) = v139;
  *(v0 + 96) = v140;
  if (*(v0 + 104))
  {
    OUTLINED_FUNCTION_117_15();
    v23 = *(v0 + 208);
    v24 = *(v0 + 216);
    OUTLINED_FUNCTION_57_21();
    if (v21)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    v124 = v27;
    v125 = v26;
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 80, &_sypSgMd, &_sypSgMR);
    v124 = 0;
    v125 = 0;
  }

  v28 = [v2 URL];
  v137 = v2;
  if (v28)
  {
    v29 = v28;
    v30 = *(v0 + 392);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(v0 + 424);
  v34 = *(v0 + 400);
  v33 = *(v0 + 408);
  v36 = *(v0 + 384);
  v35 = *(v0 + 392);
  v37 = *(v0 + 272);
  v122 = *(v0 + 376);
  v123 = *(v0 + 280);
  v38 = *(v0 + 264);
  v39 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v35, v31, 1, v39);
  v40 = OUTLINED_FUNCTION_116_1();
  outlined init with take of SearchResultItem?(v40, v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of SpotlightRankingItem?(v32, v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v42 = OUTLINED_FUNCTION_210_5();
  outlined init with copy of SpotlightRankingItem?(v42, v43, v44, v45);

  OUTLINED_FUNCTION_10_16();
  PhoneHistory.init(id:authors:recipients:participants:phoneNumbers:callStatus:callDate:callType:description:url:)();
  v46 = *MEMORY[0x277CC3208];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_166_7();
  specialized Dictionary.subscript.getter(v123, v47);

  if (*(v0 + 136))
  {
    OUTLINED_FUNCTION_117_15();
    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 112, &_sypSgMd, &_sypSgMR);
  }

  v50 = *(v0 + 280);
  v51 = *MEMORY[0x277CC2770];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v50, (v0 + 144));

  if (*(v0 + 168))
  {
    v52 = OUTLINED_FUNCTION_117_15();
    if (v52)
    {
      v53 = *(v0 + 176);
    }

    else
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = *(v0 + 184);
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 144, &_sypSgMd, &_sypSgMR);
    v53 = 0;
    v54 = 0;
  }

  v55 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v56 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v57 = OUTLINED_FUNCTION_88();
  v59 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v57, v58, v53, v54, v55);
  OUTLINED_FUNCTION_98_2();
  v60 = MEMORY[0x25F89F4C0](0xD000000000000015);
  OUTLINED_FUNCTION_152_8(v60, sel_setBundleID_);

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Logging.search);
  v62 = v59;
  v63 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  if (OUTLINED_FUNCTION_187_8())
  {
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_161_6();
    *v54 = 136315395;
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_27_28(v64);
    v65 = v62;
    v66 = [v65 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_164_4();

    v67 = OUTLINED_FUNCTION_192_10();

    *(v54 + 14) = v67;
    OUTLINED_FUNCTION_30_33();
    _os_log_impl(v68, v69, v70, v71, v72, 0x16u);
    OUTLINED_FUNCTION_132_12();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  v73 = *(v0 + 352);
  v74 = *(v0 + 336);
  v75 = *(v0 + 344);
  v77 = *(v0 + 320);
  v76 = *(v0 + 328);
  v78 = *(v0 + 312);
  v79 = *(v0 + 288);
  (*(*(v0 + 368) + 16))(v73, *(v0 + 376), *(v0 + 360));
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
  *(v77 + v78[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_7_25((v77 + v78[10]));
  _s10OmniSearch0B6ResultVWOcTm_7(v73, v77, v83);
  v84 = v78[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v85 = v62;
  OUTLINED_FUNCTION_205_7();
  CodableNSSecureCoding.init(wrappedValue:)();
  v86 = OUTLINED_FUNCTION_172_6();
  outlined init with copy of SpotlightRankingItem?(v86, v87, v88, v89);
  v90 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, v91, v79);
  v93 = *(v0 + 424);
  v94 = *(v0 + 400);
  v95 = *(v0 + 368);
  v96 = *(v0 + 376);
  v98 = *(v0 + 352);
  v97 = *(v0 + 360);
  v99 = *(v0 + 328);
  v133 = *(v0 + 336);
  v100 = *(v0 + 312);
  v135 = *(v0 + 320);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(v99, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v101 = *(v100 + 20);
    OUTLINED_FUNCTION_176_9();
    OUTLINED_FUNCTION_176_9();
    OUTLINED_FUNCTION_176_9();
    OUTLINED_FUNCTION_176_9();
    OUTLINED_FUNCTION_176_9();
    OUTLINED_FUNCTION_109_17();
    OUTLINED_FUNCTION_108_12();
    OUTLINED_FUNCTION_36_29();
    OUTLINED_FUNCTION_14_38();

    outlined destroy of IntentApplication?(v133, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v98, v102);
    (*(v95 + 8))(v96, v97);
    outlined destroy of IntentApplication?(v94, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of IntentApplication?(v93, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v129 = *(v0 + 424);
    v131 = *(v0 + 304);
    v103 = *(v0 + 376);
    v128 = *(v0 + 400);
    v104 = *(v0 + 288);
    v105 = *(v0 + 296);

    outlined destroy of IntentApplication?(v133, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v98, v106);
    (*(v95 + 8))(v103, v97);
    outlined destroy of IntentApplication?(v128, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of IntentApplication?(v129, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v107 = *(v105 + 32);
    (v107)(v131, v99, v104);
    v108 = *(v100 + 20);
    OUTLINED_FUNCTION_65_0();
    v107();
  }

  v110 = *(v0 + 416);
  v109 = *(v0 + 424);
  v112 = *(v0 + 400);
  v111 = *(v0 + 408);
  v114 = *(v0 + 384);
  v113 = *(v0 + 392);
  v130 = *(v0 + 376);
  v132 = *(v0 + 352);
  v134 = *(v0 + 336);
  v116 = *(v0 + 312);
  v115 = *(v0 + 320);
  v136 = *(v0 + 328);
  v138 = *(v0 + 304);
  v117 = *(v0 + 256);
  *(v115 + *(v116 + 32)) = 1;
  *(v115 + *(v116 + 36)) = 1;
  v118 = OUTLINED_FUNCTION_94();
  outlined init with take of SearchResult(v118, v119);
  __swift_storeEnumTagSinglePayload(v117, 0, 1, v116);

  OUTLINED_FUNCTION_127();

  return v120();
}

uint64_t SourceDocumentRetriever.fetchVoicemailDocument(docId:attributes:)()
{
  OUTLINED_FUNCTION_48();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v0[20] = v5;
  OUTLINED_FUNCTION_21(v5);
  v0[21] = v6;
  v8 = *(v7 + 64);
  v0[22] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v0[23] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v0[24] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v0[25] = OUTLINED_FUNCTION_160();
  v0[26] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v0[27] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v0[28] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v0[29] = OUTLINED_FUNCTION_199();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v23 = *(v22 + 64);
  v0[30] = OUTLINED_FUNCTION_199();
  v24 = type metadata accessor for VoicemailTranscript();
  v0[31] = v24;
  OUTLINED_FUNCTION_21(v24);
  v0[32] = v25;
  v27 = *(v26 + 64);
  v0[33] = OUTLINED_FUNCTION_199();
  v28 = type metadata accessor for CharacterSet();
  v0[34] = v28;
  OUTLINED_FUNCTION_21(v28);
  v0[35] = v29;
  v31 = *(v30 + 64);
  v0[36] = OUTLINED_FUNCTION_199();
  v32 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

{
  specialized _dictionaryUpCast<A, B, C, D>(_:)(*(v0 + 152));
  v1 = objc_allocWithZone(MEMORY[0x277CC34B8]);
  v2 = OUTLINED_FUNCTION_144_13();
  v3 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.contentSnippet.getter(v2);
  if (v4)
  {
    *(v0 + 112) = v3;
    v5 = *(v0 + 280);
    v6 = *(v0 + 288);
    v7 = *(v0 + 272);
    *(v0 + 120) = v4;
    static CharacterSet.punctuationCharacters.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.components(separatedBy:)();
    (*(v5 + 8))(v6, v7);

    if (v8[2])
    {
      v9 = v8[4];
      v106 = v8[5];
    }
  }

  v10 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.phoneNumbers.getter(v2);
  if (v10)
  {
    if (v10[2])
    {
      v11 = v10[5];
      v104 = v10[4];
    }
  }

  v12 = [v2 contentCreationDate];
  if (v12)
  {
    v13 = v12;
    v14 = *(v0 + 240);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = *(v0 + 240);
  v17 = type metadata accessor for Date();
  v18 = 1;
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v17);
  v19 = [v2 URL];
  v110 = v2;
  if (v19)
  {
    v20 = v19;
    v21 = *(v0 + 232);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
  }

  v22 = *(v0 + 264);
  v24 = *(v0 + 232);
  v23 = *(v0 + 240);
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  v27 = *(v0 + 136);
  type metadata accessor for URL();
  v28 = OUTLINED_FUNCTION_159_8();
  __swift_storeEnumTagSinglePayload(v28, v18, 1, v29);

  OUTLINED_FUNCTION_116_1();
  VoicemailTranscript.init(id:displayTitle:phoneNumber:date:url:)();
  v30 = *MEMORY[0x277CC3208];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_78_19();
  specialized Dictionary.subscript.getter(v25, v31);

  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_112_18();
    v32 = *(v0 + 96);
    v33 = *(v0 + 104);
    OUTLINED_FUNCTION_77_19();
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 16, &_sypSgMd, &_sypSgMR);
  }

  v34 = *(v0 + 152);
  v35 = *MEMORY[0x277CC2770];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v34, (v0 + 48));

  if (*(v0 + 72))
  {
    v36 = OUTLINED_FUNCTION_112_18();
    if (v36)
    {
      v37 = *(v0 + 80);
    }

    else
    {
      v37 = 0;
    }

    if (v36)
    {
      v38 = *(v0 + 88);
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 48, &_sypSgMd, &_sypSgMR);
    v37 = 0;
  }

  [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v39 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v40 = OUTLINED_FUNCTION_88();
  v42 = OUTLINED_FUNCTION_188_10(v40, v41, v37);
  OUTLINED_FUNCTION_98_2();
  v43 = MEMORY[0x25F89F4C0](0xD000000000000015);
  OUTLINED_FUNCTION_152_8(v43, sel_setBundleID_);

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logging.search);
  v45 = v42;
  v46 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  v107 = v45;
  if (OUTLINED_FUNCTION_187_8())
  {
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_161_6();
    *v37 = 136315395;
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_27_28(v47);
    v48 = v45;
    v49 = [v48 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_164_4();

    v50 = OUTLINED_FUNCTION_192_10();

    *(v37 + 14) = v50;
    OUTLINED_FUNCTION_30_33();
    _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
    OUTLINED_FUNCTION_132_12();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  v56 = *(v0 + 224);
  v57 = *(v0 + 200);
  v58 = *(v0 + 208);
  v60 = *(v0 + 184);
  v59 = *(v0 + 192);
  v61 = *(v0 + 160);
  (*(*(v0 + 256) + 16))(v56, *(v0 + 264), *(v0 + 248));
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
  *(v59 + v60[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_7_25((v59 + v60[10]));
  _s10OmniSearch0B6ResultVWOcTm_7(v56, v59, v65);
  v66 = v60[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v67 = v107;
  OUTLINED_FUNCTION_205_7();
  CodableNSSecureCoding.init(wrappedValue:)();
  v68 = OUTLINED_FUNCTION_123_14();
  outlined init with copy of SpotlightRankingItem?(v68, v69, v70, v71);
  v72 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, v73, v61);
  v75 = *(v0 + 256);
  v105 = *(v0 + 248);
  v108 = *(v0 + 264);
  v103 = *(v0 + 224);
  v77 = *(v0 + 200);
  v76 = *(v0 + 208);
  v79 = *(v0 + 184);
  v78 = *(v0 + 192);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 200), &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v80 = *(v79 + 20);
    OUTLINED_FUNCTION_164_6();
    OUTLINED_FUNCTION_164_6();
    OUTLINED_FUNCTION_164_6();
    OUTLINED_FUNCTION_164_6();
    OUTLINED_FUNCTION_164_6();
    OUTLINED_FUNCTION_82_17();
    OUTLINED_FUNCTION_19_18();

    v81 = OUTLINED_FUNCTION_179_0();
    outlined destroy of IntentApplication?(v81, v82, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v103, v83);
    (*(v75 + 8))(v108, v105);
  }

  else
  {
    v85 = *(v0 + 168);
    v84 = *(v0 + 176);
    v86 = *(v0 + 160);

    outlined destroy of IntentApplication?(v76, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v103, v87);
    (*(v75 + 8))(v108, v105);
    v88 = *(v85 + 32);
    (v88)(v84, v77, v86);
    v89 = *(v79 + 20);
    OUTLINED_FUNCTION_163_10();
    v88();
  }

  v90 = *(v0 + 288);
  v91 = *(v0 + 264);
  v93 = *(v0 + 232);
  v92 = *(v0 + 240);
  v94 = *(v0 + 224);
  v95 = *(v0 + 208);
  v97 = *(v0 + 184);
  v96 = *(v0 + 192);
  v109 = *(v0 + 200);
  v111 = *(v0 + 176);
  v98 = *(v0 + 128);
  *(v96 + *(v97 + 32)) = 1;
  *(v96 + *(v97 + 36)) = 1;
  v99 = OUTLINED_FUNCTION_10_16();
  outlined init with take of SearchResult(v99, v100);
  __swift_storeEnumTagSinglePayload(v98, 0, 1, v97);

  OUTLINED_FUNCTION_127();

  return v101();
}

uint64_t SourceDocumentRetriever.fetchVoiceMemoDocument(docId:)()
{
  OUTLINED_FUNCTION_48();
  v1[35] = v2;
  v1[36] = v0;
  v1[33] = v3;
  v1[34] = v4;
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[37] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[38] = v6;
  v8 = *(v7 + 64);
  v1[39] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchResult(0);
  v1[40] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[41] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[42] = OUTLINED_FUNCTION_160();
  v1[43] = swift_task_alloc();
  v15 = type metadata accessor for SearchResultItem(0);
  v1[44] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[45] = OUTLINED_FUNCTION_199();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[46] = OUTLINED_FUNCTION_199();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v23 = *(v22 + 64);
  v1[47] = OUTLINED_FUNCTION_199();
  v24 = type metadata accessor for VoiceMemo();
  v1[48] = v24;
  OUTLINED_FUNCTION_21(v24);
  v1[49] = v25;
  v27 = *(v26 + 64);
  v1[50] = OUTLINED_FUNCTION_199();
  v28 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_68_22(*(v0 + 288));
  v10 = *(v1 + 112) + **(v1 + 112);
  v2 = *MEMORY[0x277CCA198];
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 408) = v4;
  *v4 = v0;
  v4[1] = SourceDocumentRetriever.fetchVoiceMemoDocument(docId:);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_23_30();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 408);
  *v2 = *v0;
  *(v1 + 416) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v2 = *(v0 + 416);
  if (v2)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logging.search);
    OUTLINED_FUNCTION_86_17();
    swift_bridgeObjectRetain_n();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_89_18(v5))
    {
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_161_6();
      *v1 = 136315651;
      v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_27_28(v6);
      OUTLINED_FUNCTION_232_1();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_156_9();
      OUTLINED_FUNCTION_60_17();
      OUTLINED_FUNCTION_227_4();
      OUTLINED_FUNCTION_30_33();
      _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
      OUTLINED_FUNCTION_132_12();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {
      OUTLINED_FUNCTION_86_17();
      swift_bridgeObjectRelease_n();
    }

    v18 = *MEMORY[0x277CC2760];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_78_19();
    specialized Dictionary.subscript.getter(v2, v19);

    if (*(v0 + 40))
    {
      OUTLINED_FUNCTION_97_11();
      v20 = *(v0 + 240);
      v21 = *(v0 + 248);
      OUTLINED_FUNCTION_57_21();
    }

    else
    {
      outlined destroy of IntentApplication?(v0 + 16, &_sypSgMd, &_sypSgMR);
    }

    v22 = *MEMORY[0x277CC2640];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_190_10();

    v23 = *(v0 + 376);
    if (*(v0 + 72))
    {
      v24 = type metadata accessor for Date();
      v25 = swift_dynamicCast() ^ 1;
      v26 = v23;
      v27 = 1;
      v28 = v24;
    }

    else
    {
      outlined destroy of IntentApplication?(v0 + 48, &_sypSgMd, &_sypSgMR);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
    }

    __swift_storeEnumTagSinglePayload(v26, v25, v27, v28);
    v29 = *MEMORY[0x277CC2780];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v2, (v0 + 80));

    if (*(v0 + 104))
    {
      if (OUTLINED_FUNCTION_220_4())
      {
        v30 = *(v0 + 256);
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v0 + 80, &_sypSgMd, &_sypSgMR);
    }

    v31 = *MEMORY[0x277CC31F8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v2, (v0 + 112));

    v32 = *(v0 + 368);
    if (*(v0 + 136))
    {
      type metadata accessor for URL();
      OUTLINED_FUNCTION_130_14();
      v33 = OUTLINED_FUNCTION_95_12();
    }

    else
    {
      outlined destroy of IntentApplication?(v0 + 112, &_sypSgMd, &_sypSgMR);
      type metadata accessor for URL();
      OUTLINED_FUNCTION_92();
    }

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    v37 = *(v0 + 400);
    v39 = *(v0 + 368);
    v38 = *(v0 + 376);
    v41 = *(v0 + 272);
    v40 = *(v0 + 280);

    VoiceMemo.init(id:displayName:creationDate:durationInSeconds:url:)();
    v42 = *MEMORY[0x277CC3208];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_165_8();
    specialized Dictionary.subscript.getter(v2, v43);

    if (*(v0 + 168))
    {
      OUTLINED_FUNCTION_117_15();
      v44 = *(v0 + 224);
      v45 = *(v0 + 232);
      OUTLINED_FUNCTION_77_19();
    }

    else
    {
      outlined destroy of IntentApplication?(v0 + 144, &_sypSgMd, &_sypSgMR);
    }

    v46 = *MEMORY[0x277CC2770];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v2, (v0 + 176));

    if (*(v0 + 200))
    {
      OUTLINED_FUNCTION_220_4();
      v47 = *(v0 + 208);
      v48 = *(v0 + 216);
      OUTLINED_FUNCTION_202_7();
    }

    else
    {
      outlined destroy of IntentApplication?(v0 + 176, &_sypSgMd, &_sypSgMR);
      v2 = 0;
    }

    [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v49 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v50 = OUTLINED_FUNCTION_26_2();
    v52 = OUTLINED_FUNCTION_188_10(v50, v51, v2);
    v53 = MEMORY[0x25F89F4C0](0xD000000000000014, 0x800000025DBF1D30);
    OUTLINED_FUNCTION_152_8(v53, sel_setBundleID_);

    v54 = v52;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();

    if (OUTLINED_FUNCTION_42_15())
    {
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_91_9();
      *v53 = 136315395;
      OUTLINED_FUNCTION_98_2();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_42_28(v57);
      v58 = v54;
      v59 = [v58 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = OUTLINED_FUNCTION_192_10();

      *(v53 + 14) = v60;
      OUTLINED_FUNCTION_98_11(&dword_25D85C000, v61, v56, "%s Created csItem: %{sensitive}s");
      OUTLINED_FUNCTION_193_9();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_52_16();
    }

    v62 = *(v0 + 352);
    v63 = *(v0 + 336);
    v64 = *(v0 + 344);
    v66 = *(v0 + 320);
    v65 = *(v0 + 328);
    v67 = *(v0 + 296);
    (*(*(v0 + 392) + 16))(*(v0 + 360), *(v0 + 400), *(v0 + 384));
    OUTLINED_FUNCTION_179_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v67);
    *(v65 + v66[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_7_25((v65 + v66[10]));
    v71 = OUTLINED_FUNCTION_45_0();
    _s10OmniSearch0B6ResultVWOcTm_7(v71, v72, v73);
    v74 = v66[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v75 = v54;
    OUTLINED_FUNCTION_158_0();
    CodableNSSecureCoding.init(wrappedValue:)();
    v76 = OUTLINED_FUNCTION_113_11();
    outlined init with copy of SpotlightRankingItem?(v76, v77, v78, v79);
    v80 = OUTLINED_FUNCTION_65();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v81, v67);
    v84 = *(v0 + 392);
    v83 = *(v0 + 400);
    v85 = *(v0 + 384);
    v86 = *(v0 + 360);
    v87 = *(v0 + 344);
    v88 = *(v0 + 320);
    v120 = v87;
    v121 = *(v0 + 328);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_158_0();
      outlined destroy of IntentApplication?(v89, v90, v91);
      v92 = *(v88 + 20);
      OUTLINED_FUNCTION_161_7();
      OUTLINED_FUNCTION_161_7();
      OUTLINED_FUNCTION_161_7();
      OUTLINED_FUNCTION_161_7();
      OUTLINED_FUNCTION_161_7();
      OUTLINED_FUNCTION_109_17();
      OUTLINED_FUNCTION_108_12();
      OUTLINED_FUNCTION_36_29();
      OUTLINED_FUNCTION_14_38();

      OUTLINED_FUNCTION_158_0();
      outlined destroy of IntentApplication?(v93, v94, v95);
      OUTLINED_FUNCTION_0_48();
      _s10OmniSearch0B6ResultVWOhTm_4(v86, v96);
      v97 = *(v84 + 8);
      v98 = OUTLINED_FUNCTION_113_11();
      v99(v98);
    }

    else
    {
      v100 = *(v0 + 304);
      v101 = *(v0 + 312);
      v102 = *(v0 + 296);

      outlined destroy of IntentApplication?(v120, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_48();
      _s10OmniSearch0B6ResultVWOhTm_4(v86, v103);
      v104 = OUTLINED_FUNCTION_212_6();
      v105(v104, v85);
      v106 = OUTLINED_FUNCTION_148_12();
      (v75)(v106);
      v107 = *(v88 + 20);
      OUTLINED_FUNCTION_158_0();
      (v75)();
    }

    v108 = *(v0 + 320);
    v109 = *(v0 + 264);
    OUTLINED_FUNCTION_11_60(*(v0 + 328));
    v14 = OUTLINED_FUNCTION_10_53();
  }

  else
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 264);
    OUTLINED_FUNCTION_92();
  }

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v110 = *(v0 + 400);
  v111 = *(v0 + 368);
  v112 = *(v0 + 376);
  v113 = *(v0 + 360);
  v115 = *(v0 + 336);
  v114 = *(v0 + 344);
  v116 = *(v0 + 328);
  v117 = *(v0 + 312);

  OUTLINED_FUNCTION_127();

  return v118();
}

uint64_t SourceDocumentRetriever.__deallocating_deinit()
{
  OUTLINED_FUNCTION_102_14();

  return swift_deallocClassInstance();
}

id @nonobjc CSSearchableItemAttributeSet.init(attributes:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithAttributes_];

  return v3;
}

unint64_t lazy protocol witness table accessor for type SourceDocumentRetriever.DocumentRetrievalError and conformance SourceDocumentRetriever.DocumentRetrievalError()
{
  result = lazy protocol witness table cache variable for type SourceDocumentRetriever.DocumentRetrievalError and conformance SourceDocumentRetriever.DocumentRetrievalError;
  if (!lazy protocol witness table cache variable for type SourceDocumentRetriever.DocumentRetrievalError and conformance SourceDocumentRetriever.DocumentRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceDocumentRetriever.DocumentRetrievalError and conformance SourceDocumentRetriever.DocumentRetrievalError);
  }

  return result;
}

uint64_t dispatch thunk of SourceDocumentRetriever.fetchDocs(_:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v4 = *(*v0 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of AnswerResolver.extractInfo(query:results:assistantLocale:);

  return v8(v3);
}

uint64_t dispatch thunk of SourceDocumentRetriever.fetchDoc(bundleId:docId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 104);
  v17 = (v12 + *v12);
  v13 = v12[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v6 + 16) = v14;
  *v14 = v15;
  v14[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v17(a1, a2, a3, a4, a5);
}

void dispatch thunk of SourceDocumentRetriever.fetchAttributes(protectionClass:bundleId:docId:attributes:)()
{
  v2 = *(*v0 + 112);
  v7 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #1 in AnySearchEntityPreprocessing.init(_:)partial apply;
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_198();

  __asm { BRAA            X6, X16 }
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1)
{
  OUTLINED_FUNCTION_133_14(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  OUTLINED_FUNCTION_123_14();
  v37 = v2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v4 + 16))
  {
LABEL_29:

    *v1 = v5;
    return;
  }

  v36 = v4;
  v6 = 0;
  v8 = v4 + 64;
  v7 = *(v4 + 64);
  v9 = *(v4 + 32);
  OUTLINED_FUNCTION_15_47();
  OUTLINED_FUNCTION_199_7();
  if (!v2)
  {
LABEL_4:
    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v11;
      if (*(v8 + 8 * v6))
      {
        OUTLINED_FUNCTION_64_16();
        v2 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v37)
    {
      v30 = *(v4 + 32);
      OUTLINED_FUNCTION_71_20();
      if (v32 != v33)
      {
        OUTLINED_FUNCTION_154_6(v31);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_70_16();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v34, v35, v8);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_7_31();
LABEL_9:
    OUTLINED_FUNCTION_197_10(v10);
    v16 = (v15 + 16 * v14);
    v17 = v16[1];
    v38 = *v16;
    if ((v37 & 1) == 0)
    {
    }

    v18 = *(v5 + 40);
    Hasher.init(_seed:)();
    OUTLINED_FUNCTION_189_4();
    String.hash(into:)();
    Hasher._finalize()();
    v19 = *(v5 + 32);
    OUTLINED_FUNCTION_35_33();
    v21 = *(v3 + 8 * v20);
    OUTLINED_FUNCTION_160_8();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_34_36();
LABEL_21:
    OUTLINED_FUNCTION_31_30();
    OUTLINED_FUNCTION_118_11(v26);
    v29 = (v28 + 16 * v27);
    *v29 = v38;
    v29[1] = v17;
    OUTLINED_FUNCTION_155_11();
    v4 = v36;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_33_36();
  while (1)
  {
    OUTLINED_FUNCTION_168_8();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    if (*(v3 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_32_36();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

{
  OUTLINED_FUNCTION_133_14(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
  OUTLINED_FUNCTION_123_14();
  v35 = v2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v4 + 16))
  {
LABEL_29:

    *v1 = v5;
    return;
  }

  v34 = v4;
  v6 = 0;
  v8 = v4 + 64;
  v7 = *(v4 + 64);
  v9 = *(v4 + 32);
  OUTLINED_FUNCTION_15_47();
  OUTLINED_FUNCTION_199_7();
  if (!v2)
  {
LABEL_4:
    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v11;
      if (*(v8 + 8 * v6))
      {
        OUTLINED_FUNCTION_64_16();
        v2 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v35)
    {
      v28 = *(v4 + 32);
      OUTLINED_FUNCTION_71_20();
      if (v30 != v31)
      {
        OUTLINED_FUNCTION_154_6(v29);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_70_16();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v32, v33, v8);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_7_31();
LABEL_9:
    OUTLINED_FUNCTION_197_10(v10);
    v16 = *(v15 + 8 * v14);
    if ((v35 & 1) == 0)
    {
    }

    v17 = *(v5 + 40);
    Hasher.init(_seed:)();
    OUTLINED_FUNCTION_189_4();
    String.hash(into:)();
    Hasher._finalize()();
    v18 = *(v5 + 32);
    OUTLINED_FUNCTION_35_33();
    v20 = *(v3 + 8 * v19);
    OUTLINED_FUNCTION_160_8();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_34_36();
LABEL_21:
    OUTLINED_FUNCTION_31_30();
    OUTLINED_FUNCTION_118_11(v25);
    *(v27 + 8 * v26) = v16;
    OUTLINED_FUNCTION_155_11();
    v4 = v34;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_33_36();
  while (1)
  {
    OUTLINED_FUNCTION_168_8();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v3 + 8 * v22) != -1)
    {
      OUTLINED_FUNCTION_32_36();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10OmniSearch0D9ResultKeyOSSGMd, &_ss18_DictionaryStorageCy10OmniSearch0D9ResultKeyOSSGMR);
  OUTLINED_FUNCTION_158_8();
  v44 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v43 = v3;
  v8 = 0;
  v9 = *(v5 + 64);
  v10 = *(v5 + 32);
  OUTLINED_FUNCTION_15_47();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v7 + 64;
  if ((v12 & v11) == 0)
  {
LABEL_6:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v15)
      {
        break;
      }

      ++v18;
      if (*(v5 + 64 + 8 * v8))
      {
        OUTLINED_FUNCTION_64_16();
        v13 = v20 & v19;
        goto LABEL_11;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_32;
    }

    v37 = *(v5 + 32);
    OUTLINED_FUNCTION_71_20();
    v3 = v43;
    if (v39 != v40)
    {
      OUTLINED_FUNCTION_154_6(v38);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_70_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v41, v42, v5 + 64);
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v21 = v17 | (v8 << 6);
    v22 = *(*(v5 + 48) + v21);
    v23 = (*(v5 + 56) + 16 * v21);
    v24 = v23[1];
    v45 = *v23;
    if ((v44 & 1) == 0)
    {
    }

    v25 = *(v7 + 40);
    Hasher.init(_seed:)();
    SearchResultKey.rawValue.getter();
    String.hash(into:)();

    Hasher._finalize()();
    v26 = *(v7 + 32);
    OUTLINED_FUNCTION_35_33();
    v28 = *(v16 + 8 * v27);
    OUTLINED_FUNCTION_160_8();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_34_36();
LABEL_23:
    OUTLINED_FUNCTION_31_30();
    *(v16 + v33) |= v34;
    *(*(v7 + 48) + v35) = v22;
    v36 = (*(v7 + 56) + 16 * v35);
    *v36 = v45;
    v36[1] = v24;
    OUTLINED_FUNCTION_155_11();
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_33_36();
  while (1)
  {
    OUTLINED_FUNCTION_168_8();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (*(v16 + 8 * v30) != -1)
    {
      OUTLINED_FUNCTION_32_36();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

{
  v3 = v2;
  v6 = type metadata accessor for SearchResult(0);
  v7 = OUTLINED_FUNCTION_21(v6);
  v56 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v58 = v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10OmniSearch0D6ResultVGMd, &_ss18_DictionaryStorageCySS10OmniSearch0D6ResultVGMR);
  OUTLINED_FUNCTION_158_8();
  v57 = a2;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v12 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v14;
    return;
  }

  v54 = v3;
  v55 = v12;
  v15 = 0;
  v17 = (v12 + 64);
  v16 = *(v12 + 64);
  v18 = *(v12 + 32);
  OUTLINED_FUNCTION_15_47();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v24 = v14 + 64;
  if ((v20 & v19) == 0)
  {
LABEL_6:
    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v23)
      {
        break;
      }

      ++v26;
      if (v17[v15])
      {
        OUTLINED_FUNCTION_64_16();
        v21 = v28 & v27;
        goto LABEL_11;
      }
    }

    if ((v57 & 1) == 0)
    {

      v3 = v54;
      goto LABEL_33;
    }

    v48 = *(v12 + 32);
    OUTLINED_FUNCTION_71_20();
    v3 = v54;
    if (v50 != v51)
    {
      *v17 = -1 << v49;
    }

    else
    {
      v52 = OUTLINED_FUNCTION_70_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v52, v53, v17);
    }

    *(v12 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_11:
    v29 = v25 | (v15 << 6);
    v30 = *(v12 + 56);
    v31 = (*(v12 + 48) + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(v56 + 72);
    v35 = v30 + v34 * v29;
    if (v57)
    {
      outlined init with take of SearchResult(v35, v58);
    }

    else
    {
      _s10OmniSearch0B6ResultVWOcTm_7(v35, v58, type metadata accessor for SearchResult);
    }

    v36 = *(v14 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    v37 = *(v14 + 32);
    OUTLINED_FUNCTION_35_33();
    v39 = *(v24 + 8 * v38);
    OUTLINED_FUNCTION_160_8();
    if (v40)
    {
      break;
    }

    OUTLINED_FUNCTION_34_36();
LABEL_24:
    OUTLINED_FUNCTION_31_30();
    *(v24 + v44) |= v45;
    v47 = (*(v14 + 48) + 16 * v46);
    *v47 = v32;
    v47[1] = v33;
    outlined init with take of SearchResult(v58, *(v14 + 56) + v34 * v46);
    ++*(v14 + 16);
    v12 = v55;
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_33_36();
  while (1)
  {
    OUTLINED_FUNCTION_168_8();
    if (v40)
    {
      if (v42)
      {
        break;
      }
    }

    if (v41 == v43)
    {
      v41 = 0;
    }

    if (*(v24 + 8 * v41) != -1)
    {
      OUTLINED_FUNCTION_32_36();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

{
  v3 = v2;
  v57 = type metadata accessor for AnswerSynthesisExtractionCandidate();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2_3();
  v56 = v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_ss18_DictionaryStorageCySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
  OUTLINED_FUNCTION_92_11();
  v54 = a2;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return;
  }

  v12 = 0;
  v14 = (v9 + 64);
  v13 = *(v9 + 64);
  v15 = *(v9 + 32);
  OUTLINED_FUNCTION_15_47();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v51 = (v6 + 16);
  v52 = v9;
  v53 = v6;
  v55 = (v6 + 32);
  v21 = v11 + 64;
  if ((v17 & v16) == 0)
  {
LABEL_6:
    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v20)
      {
        break;
      }

      ++v23;
      if (v14[v12])
      {
        OUTLINED_FUNCTION_64_16();
        v18 = v25 & v24;
        goto LABEL_11;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v45 = *(v9 + 32);
    OUTLINED_FUNCTION_71_20();
    v3 = v2;
    if (v47 != v48)
    {
      *v14 = -1 << v46;
    }

    else
    {
      v49 = OUTLINED_FUNCTION_70_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v49, v50, v14);
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    OUTLINED_FUNCTION_7_31();
LABEL_11:
    v26 = v22 | (v12 << 6);
    v27 = *(v9 + 56);
    v28 = (*(v9 + 48) + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    v31 = *(v53 + 72);
    v32 = v27 + v31 * v26;
    if (v54)
    {
      (*v55)(v56, v32, v57);
    }

    else
    {
      (*v51)(v56, v32, v57);
    }

    v33 = *(v11 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    v34 = *(v11 + 32);
    OUTLINED_FUNCTION_35_33();
    v36 = *(v21 + 8 * v35);
    OUTLINED_FUNCTION_160_8();
    if (v37)
    {
      break;
    }

    OUTLINED_FUNCTION_34_36();
LABEL_24:
    OUTLINED_FUNCTION_31_30();
    *(v21 + v41) |= v42;
    v44 = (*(v11 + 48) + 16 * v43);
    *v44 = v30;
    v44[1] = v29;
    (*v55)(*(v11 + 56) + v31 * v43, v56, v57);
    ++*(v11 + 16);
    v9 = v52;
    if (!v18)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_33_36();
  while (1)
  {
    OUTLINED_FUNCTION_168_8();
    if (v37)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    if (*(v21 + 8 * v38) != -1)
    {
      OUTLINED_FUNCTION_32_36();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      outlined init with take of Any(v23, v37);
    }

    else
    {
      outlined init with copy of Any(v23, v37);
    }

    v24 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_25DBC9A70;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, uint64_t *a3)
{
  v42 = a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v36 = *(*a1 + 16);
  v8 = a1[4] >> 1;

  swift_unknownObjectRetain();
  v9 = 0;
  v10 = v6 + 32 * v7;
  v37 = v4;
  v11 = (v4 + 40);
  for (i = v8; ; v8 = i)
  {
    if (v36 == v9)
    {
LABEL_18:
      swift_unknownObjectRelease_n();
      return swift_bridgeObjectRelease_n();
    }

    if (v9 >= *(v37 + 16))
    {
      break;
    }

    if (v8 == v7)
    {
      goto LABEL_18;
    }

    if (v7 >= v8)
    {
      goto LABEL_20;
    }

    v38 = v9;
    v13 = *(v11 - 1);
    v12 = *v11;
    v14 = v11;
    v15 = v10;
    outlined init with copy of Any(v10, v41);
    outlined init with take of Any(v41, v40);
    v16 = *v42;

    v18 = specialized __RawDictionaryStorage.find<A>(_:)();
    v19 = *(v16 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_21;
    }

    v22 = v17;
    if (*(v16 + 24) >= v21)
    {
      if (a2)
      {
        if (v17)
        {
          goto LABEL_13;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
        _NativeDictionary.copy()();
        if (v22)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v23 = v42;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a2 & 1);
      v24 = *v23;
      v25 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v22 & 1) != (v26 & 1))
      {
        goto LABEL_23;
      }

      v18 = v25;
      if (v22)
      {
LABEL_13:
        v27 = *v42;
        outlined init with copy of Any(*(*v42 + 56) + 32 * v18, v39);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);

        v28 = (*(v27 + 56) + 32 * v18);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        outlined init with take of Any(v39, v28);
        goto LABEL_17;
      }
    }

    v29 = *v42;
    v29[(v18 >> 6) + 8] |= 1 << v18;
    v30 = (v29[6] + 16 * v18);
    *v30 = v13;
    v30[1] = v12;
    outlined init with take of Any(v40, (v29[7] + 32 * v18));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_22;
    }

    v29[2] = v33;
LABEL_17:
    v10 = v15 + 32;
    v11 = v14 + 2;
    ++v7;
    v9 = v38 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t block_copy_helper_28_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in closure #1 in SourceDocumentRetriever.fetchMailDocument(docId:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10OmniSearch0B6ResultVGs5NeverOGMd, &_sScCySay10OmniSearch0B6ResultVGs5NeverOGMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #1 in SourceDocumentRetriever.fetchMailDocument(docId:)(a1, v1 + v8, v9);
}

uint64_t OUTLINED_FUNCTION_4_67(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  v4 = v2[7];
  v5 = v2[5];
  return v2[2];
}

void OUTLINED_FUNCTION_6_55()
{
  *(v0 - 80) = 1;
  *(v0 - 80) = 1;
  *(v0 - 80) = 1;
  *(v0 - 80) = 1;
  *(v0 - 80) = 1;
  *(v0 - 80) = 1;
  *(v0 - 80) = 1;
  *(v0 - 80) = 1;
}

uint64_t OUTLINED_FUNCTION_11_60(uint64_t a1)
{
  *(a1 + *(v2 + 32)) = 1;
  *(a1 + *(v2 + 36)) = 1;

  return outlined init with take of SearchResult(a1, v1);
}

uint64_t OUTLINED_FUNCTION_14_38()
{

  return SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
}

uint64_t OUTLINED_FUNCTION_22_33()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_25_34()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_32()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27_28(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

id OUTLINED_FUNCTION_38_29()
{

  return [v0 (v3 + 1750)];
}

uint64_t OUTLINED_FUNCTION_42_28(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_20()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

double OUTLINED_FUNCTION_46_28()
{

  return specialized Dictionary.subscript.getter(v0, (v1 - 96));
}

uint64_t OUTLINED_FUNCTION_55_19()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_58_15(uint64_t a1)
{
  *(a1 + 8) = SourceDocumentRetriever.fetchDocs(_:);
  v3 = *(v1 + 24);
  return *(v1 + 32);
}

uint64_t OUTLINED_FUNCTION_60_17()
{
  *(v1 + 14) = v2;
  *(v1 + 22) = 2048;
  v4 = *(v0 + 16);
}

double OUTLINED_FUNCTION_63_23()
{

  return specialized Dictionary.subscript.getter(v0, (v1 - 96));
}

double OUTLINED_FUNCTION_65_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(v11, &a11);
}

uint64_t OUTLINED_FUNCTION_69_19()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_74_21()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_88_13()
{

  return specialized Dictionary.subscript.getter(v0, (v1 - 96));
}

BOOL OUTLINED_FUNCTION_89_18(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_90_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_91_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97_11()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_98_11(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_101_13()
{

  return swift_once();
}

id OUTLINED_FUNCTION_105_13(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_111_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_112_18()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_115_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_116_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_117_15()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_118_11(uint64_t a1@<X8>)
{
  *(v4 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_119_13()
{
  result = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[94];
  return result;
}

uint64_t OUTLINED_FUNCTION_128_11()
{
}

uint64_t OUTLINED_FUNCTION_129_15()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_130_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_132_12()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_133_14(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void OUTLINED_FUNCTION_134_14()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x25F89F4C0);
}

id OUTLINED_FUNCTION_144_13()
{

  return @nonobjc CSSearchableItemAttributeSet.init(attributes:)(v0);
}

id OUTLINED_FUNCTION_145_8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_149_11()
{
}

uint64_t OUTLINED_FUNCTION_150_8()
{
}

id OUTLINED_FUNCTION_152_8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_153_8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_156_9()
{
}

uint64_t OUTLINED_FUNCTION_178_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[11];
  v4 = v2[12];
  return v2[10];
}

void OUTLINED_FUNCTION_181_10()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x25F89F4C0);
}

void OUTLINED_FUNCTION_182_11()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x25F89F4C0);
}

uint64_t OUTLINED_FUNCTION_183_9()
{
  v2 = *(v0 + 32);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL OUTLINED_FUNCTION_187_8()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_188_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(a1, a2, a3, v4, v3);
}

void OUTLINED_FUNCTION_189_8()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x25F89F4C0);
}

double OUTLINED_FUNCTION_190_10()
{

  return specialized Dictionary.subscript.getter(v0, (v1 + 48));
}

uint64_t OUTLINED_FUNCTION_191_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_192_10()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_193_9()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_194_9(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_195_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_196_7()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_197_10(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_219_6(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_220_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_221_6()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_222_6()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_223_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_224_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_227_4()
{
  *(v1 + 24) = v0;
}

uint64_t OUTLINED_FUNCTION_228_4()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_231_3()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_232_1()
{

  return Dictionary.description.getter();
}

uint64_t MemoryCreationQueryParser.__allocating_init()(SEL *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() *a1];
  return v2;
}

void MemoryCreationQueryParser.enumerateParseResults(for:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC9D00;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000025DBFA310;
  v12 = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x800000025DBFA330;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 120) = v12;
  *(inited + 88) = 0x800000025DBF2260;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x800000025DBFA350;
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = v5[2];
  if (a2)
  {
    a2 = MEMORY[0x25F89F4C0](a1, a2);
  }

  v15 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v10;
  OUTLINED_FUNCTION_0_104();
  OUTLINED_FUNCTION_1_90();
  v19[2] = v17;
  v19[3] = &block_descriptor_15;
  v18 = _Block_copy(v19);

  outlined bridged method (mnbnnn) of @objc QPQueryParserManager.enumerateSpotlightResults(for:options:with:)(a2, v15, v18, v14);
  _Block_release(v18);
}

void closure #1 in MemoryCreationQueryParser.enumerateParseResults(for:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logging.memoryCreationQU);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    Dictionary.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v8 + 4) = v10;
    _os_log_impl(&dword_25D85C000, v6, v7, "QP parse dict: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8A1050](v9, -1, -1);
    MEMORY[0x25F8A1050](v8, -1, -1);
  }

  v14[0] = static MemoryCreationQueryParser.qpAttributedParseKey;
  v14[1] = off_27FC72C98;

  AnyHashable.init<A>(_:)();
  specialized Dictionary.subscript.getter(v13, a1);
  outlined destroy of AnyHashable(v13);
  if (v14[3])
  {
    type metadata accessor for NSAttributedString();
    if (swift_dynamicCast())
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v14);
    v11 = 0;
  }

  a3(v11);
}

uint64_t MemoryCreationQueryParser.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void partial apply for closure #1 in MemoryCreationQueryParser.enumerateParseResults(for:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  closure #1 in MemoryCreationQueryParser.enumerateParseResults(for:completion:)(a1, a2, *(v2 + 16));
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void DefaultSpotlightQueryParser.enumerateParseResults(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[2];
  if (a2)
  {
    v9 = MEMORY[0x25F89F4C0]();
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v7;
  OUTLINED_FUNCTION_0_104();
  OUTLINED_FUNCTION_1_90();
  v13[2] = v11;
  v13[3] = &block_descriptor_6_0;
  v12 = _Block_copy(v13);

  [v8 enumerateSpotlightResultsForString:v9 options:0 withBlock:v12];
  _Block_release(v12);
}

void closure #1 in DefaultSpotlightQueryParser.enumerateParseResults(for:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logging.search);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    Dictionary.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v8 + 4) = v10;
    _os_log_impl(&dword_25D85C000, v6, v7, "Parse from spotlight QP: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8A1050](v9, -1, -1);
    MEMORY[0x25F8A1050](v8, -1, -1);
  }

  v14[0] = static DefaultSpotlightQueryParser.qpAttributedParseKey;
  v14[1] = off_27FC72CA8;

  AnyHashable.init<A>(_:)();
  specialized Dictionary.subscript.getter(v13, a1);
  outlined destroy of AnyHashable(v13);
  if (v14[3])
  {
    type metadata accessor for NSAttributedString();
    if (swift_dynamicCast())
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v14);
    v11 = 0;
  }

  a3(v11);
}

void outlined bridged method (mnbnnn) of @objc QPQueryParserManager.enumerateSpotlightResults(for:options:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 enumerateSpotlightResultsForString:a1 options:isa withBlock:a3];
}

void partial apply for closure #1 in DefaultSpotlightQueryParser.enumerateParseResults(for:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  closure #1 in DefaultSpotlightQueryParser.enumerateParseResults(for:completion:)(a1, a2, *(v2 + 16));
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

uint64_t UserQuery.init(raw:rewritten:simplified:structured:locale:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  if (!a4)
  {

    goto LABEL_7;
  }

  v17 = a4;
  v18 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v18 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_7:
    a3 = a1;
    v17 = a2;
  }

  a9[2] = a3;
  a9[3] = v17;
  a9[4] = a5;
  a9[5] = a6;
  v19 = type metadata accessor for UserQuery();
  outlined init with copy of StructuredQueryEntity?(a7, a9 + v19[7]);
  v20 = (a9 + v19[8]);
  *v20 = a8;
  v20[1] = a10;
  v21 = v19[9];

  UtteranceNormalizer.init(locale:)();

  return outlined destroy of StructuredQueryEntity?(a7);
}

uint64_t type metadata accessor for UserQuery()
{
  result = type metadata singleton initialization cache for UserQuery;
  if (!type metadata singleton initialization cache for UserQuery)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UserQuery.isRewritten.getter()
{
  if (*v0 == v0[2] && v0[1] == v0[3])
  {
    v2 = 0;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v2 & 1;
}

uint64_t UserQuery.toContactQueries.getter()
{
  v73 = type metadata accessor for ContactQuery();
  v1 = OUTLINED_FUNCTION_14(v73);
  v79 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v70 - v7;
  Entity = type metadata accessor for PersonQueryEntity(0);
  v10 = OUTLINED_FUNCTION_14(Entity);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v70 - v20;
  v22 = type metadata accessor for StructuredQueryEntity(0);
  v23 = OUTLINED_FUNCTION_17(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  v28 = v27 - v26;
  v29 = type metadata accessor for UserQuery();
  outlined init with copy of StructuredQueryEntity?(v0 + *(v29 + 28), v21);
  v30 = 0x28155B000uLL;
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v21);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logging.search);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_53;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "No structured query, returning nil";
LABEL_52:
    _os_log_impl(&dword_25D85C000, v32, v33, v35, v34, 2u);
    OUTLINED_FUNCTION_42_0();
LABEL_53:

    return 0;
  }

  outlined init with take of StructuredQueryEntity(v21, v28);
  v36 = *(v28 + *(v22 + 64));
  EntityProperty.wrappedValue.getter();
  if (v81)
  {
    v71 = v28;
    v37 = MEMORY[0x277D84F90];
    v82 = MEMORY[0x277D84F90];
    v38 = v81[2];
    if (v38)
    {
      v39 = v81 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v40 = *(v12 + 72);
      do
      {
        _s10OmniSearch17PersonQueryEntityVWOcTm_0(v39, v17, type metadata accessor for PersonQueryEntity);
        v41 = *(v17 + Entity[5]);
        EntityProperty.wrappedValue.getter();
        if (v81)
        {

          OUTLINED_FUNCTION_8_59();
          EntityProperty.wrappedValue.getter();
          OUTLINED_FUNCTION_8_59();
          v42 = OUTLINED_FUNCTION_5_61();
        }

        else
        {
          outlined consume of Person?(0);
          v42 = v37;
        }

        specialized Array.append<A>(contentsOf:)(v42);
        v43 = *(v17 + Entity[7]);
        EntityProperty.wrappedValue.getter();
        if (v81)
        {

          OUTLINED_FUNCTION_8_59();
          EntityProperty.wrappedValue.getter();
          OUTLINED_FUNCTION_8_59();
          v44 = OUTLINED_FUNCTION_5_61();
        }

        else
        {
          outlined consume of Person?(0);
          v44 = v37;
        }

        specialized Array.append<A>(contentsOf:)(v44);
        v45 = *(v17 + Entity[6]);
        EntityProperty.wrappedValue.getter();
        if (v81)
        {

          OUTLINED_FUNCTION_8_59();
          EntityProperty.wrappedValue.getter();
          OUTLINED_FUNCTION_8_59();
          v46 = OUTLINED_FUNCTION_5_61();
        }

        else
        {
          outlined consume of Person?(0);
          v46 = v37;
        }

        specialized Array.append<A>(contentsOf:)(v46);
        _s10OmniSearch21StructuredQueryEntityVWOhTm_0(v17, type metadata accessor for PersonQueryEntity);
        v39 += v40;
        --v38;
      }

      while (v38);
    }

    if (one-time initialization token for oneself != -1)
    {
      swift_once();
    }

    EntityProperty.wrappedValue.getter();
    v48 = v73;
    v30 = 0x28155B000uLL;
    if (v81)
    {
      if (v81[2])
      {
        v49 = v81[4];
        v78 = v81[5];
      }

      else
      {
        v49 = 0;
        v78 = 0xE000000000000000;
      }
    }

    else
    {
      v49 = 0;
      v78 = 0xE000000000000000;
    }

    v52 = *(v82 + 16);
    v70 = v82;
    if (v52)
    {
      v76 = (v79 + 16);
      v77 = v49;
      v74 = v79 + 32;
      v75 = v79 + 8;
      v53 = (v82 + 40);
      v51 = MEMORY[0x277D84F90];
      *&v47 = 136315138;
      v72 = v47;
      do
      {
        v55 = *(v53 - 1);
        v54 = *v53;

        ContactQuery.init()();
        if (*(v30 + 2840) != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        __swift_project_value_buffer(v56, static Logging.search);

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v81 = v60;
          *v59 = v72;
          *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          _os_log_impl(&dword_25D85C000, v57, v58, "UnifiedContactGeneration query with: %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          OUTLINED_FUNCTION_42_0();
          v48 = v73;
          OUTLINED_FUNCTION_42_0();
        }

        ContactQuery.fullName.setter();
        if (v55 != v77 || v54 != v78)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        ContactQuery.isMe.setter();
        (*v76)(v80, v8, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1, v51);
          v51 = v65;
        }

        v63 = *(v51 + 16);
        v62 = *(v51 + 24);
        if (v63 >= v62 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1, v51);
          v51 = v66;
        }

        v64 = v79;
        (*(v79 + 8))(v8, v48);
        *(v51 + 16) = v63 + 1;
        (*(v64 + 32))(v51 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v80, v48);
        v53 += 2;
        --v52;
        v30 = 0x28155B000;
      }

      while (v52);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_1_91();
    _s10OmniSearch21StructuredQueryEntityVWOhTm_0(v71, v67);
  }

  else
  {
    OUTLINED_FUNCTION_1_91();
    _s10OmniSearch21StructuredQueryEntityVWOhTm_0(v28, v50);
    v51 = MEMORY[0x277D84F90];
  }

  if (!*(v51 + 16))
  {

    if (*(v30 + 2840) != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logging.search);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_53;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "No recognized names in query, returning nil";
    goto LABEL_52;
  }

  return v51;
}

uint64_t UserQuery.raw.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t UserQuery.rewritten.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t UserQuery.simplified.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t UserQuery.structured.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserQuery() + 28);

  return outlined init with copy of StructuredQueryEntity?(v3, a1);
}

uint64_t UserQuery.locale.getter()
{
  v1 = (v0 + *(type metadata accessor for UserQuery() + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t UserQuery.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  Entity = type metadata accessor for StructuredQueryEntity(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, Entity);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = a1;
  a3[3] = a2;
  v11 = type metadata accessor for UserQuery();
  a3[4] = 0;
  a3[5] = 0;
  outlined init with copy of StructuredQueryEntity?(v9, a3 + v11[7]);
  v12 = (a3 + v11[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v11[9];

  UtteranceNormalizer.init(locale:)();
  return outlined destroy of StructuredQueryEntity?(v9);
}

uint64_t _s10OmniSearch21StructuredQueryEntityVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch17PersonQueryEntityVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UserQuery and conformance UserQuery(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for UserQuery()
{
  type metadata accessor for String?();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for StructuredQueryEntity?();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = type metadata accessor for UtteranceNormalizer();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_5_61()
{
  if (*(v1 - 112))
  {
    return *(v1 - 112);
  }

  else
  {
    return v0;
  }
}

uint64_t OUTLINED_FUNCTION_8_59()
{

  return outlined consume of Person?(v0);
}

uint64_t OUTLINED_FUNCTION_9_54()
{
  v2 = *(v0 - 184);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t EntityProperty<>.init(title:)()
{
  return MEMORY[0x28210B828]();
}

{
  return MEMORY[0x28210B838]();
}

{
  return MEMORY[0x28210B850]();
}

{
  return MEMORY[0x28210B860]();
}

{
  return MEMORY[0x28210B870]();
}

{
  return MEMORY[0x28210B880]();
}

{
  return MEMORY[0x28210B898]();
}

{
  return MEMORY[0x28210B8B0]();
}

{
  return MEMORY[0x28210B8C0]();
}

{
  return MEMORY[0x28210B8E8]();
}

{
  return MEMORY[0x28210B900]();
}

{
  return MEMORY[0x28210B910]();
}

{
  return MEMORY[0x28210B920]();
}

{
  return MEMORY[0x28210B930]();
}

uint64_t Contact.id.getter()
{
  return MEMORY[0x2821B8DA0]();
}

{
  return MEMORY[0x282197AB0]();
}

uint64_t type metadata accessor for Contact()
{
  return MEMORY[0x2821B8E08]();
}

{
  return MEMORY[0x282197AD0]();
}

uint64_t Regex.firstMatch(in:)()
{
  return MEMORY[0x282200B08]();
}

{
  return MEMORY[0x282200B10]();
}

uint64_t static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)()
{
  return MEMORY[0x282165A18]();
}

{
  return MEMORY[0x282165A20]();
}

uint64_t PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)()
{
  return MEMORY[0x282166DB0]();
}

{
  return MEMORY[0x282166DB8]();
}

uint64_t static StreamResource.source()()
{
  return MEMORY[0x28217BF18]();
}

{
  return MEMORY[0x28217D8D0]();
}

uint64_t dispatch thunk of Source.sendEvent(_:)()
{
  return MEMORY[0x28217D868]();
}

{
  return MEMORY[0x28217D940]();
}

uint64_t Schema.Field.init<A>(name:type:)()
{
  return MEMORY[0x282166178]();
}

{
  return MEMORY[0x282166180]();
}

uint64_t static CustomPromptBuilder.buildExpression(_:)()
{
  return MEMORY[0x2821A3CD8]();
}

{
  return MEMORY[0x2821A3CE0]();
}

uint64_t GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)()
{
  return MEMORY[0x282166A60]();
}

{
  return MEMORY[0x282166A68]();
}

{
  return MEMORY[0x282166A70]();
}

uint64_t GenerativeConfigurationProtocol.responseSanitizer(_:)()
{
  return MEMORY[0x282166A78]();
}

{
  return MEMORY[0x282166A80]();
}

{
  return MEMORY[0x282166A88]();
}

uint64_t GenerativeConfigurationProtocol.samplingParameters(_:)()
{
  return MEMORY[0x2821D9FB8]();
}

{
  return MEMORY[0x2821D9FC0]();
}

Swift::String __swiftcall Encodable.jsonPrettyPrinted()()
{
  v0 = MEMORY[0x282197B78]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Encodable.json()()
{
  v0 = MEMORY[0x282197B80]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Character.lowercased()()
{
  v0 = MEMORY[0x2821FBA50]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x2821FBCB0]();
}

{
  return MEMORY[0x2821FBCB8]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.splitByCapitalLetters()()
{
  v0 = MEMORY[0x282197B88]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2821FBE90]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t String.init<A>(_:)()
{
  return MEMORY[0x2821FBF98]();
}

{
  return MEMORY[0x2821FBFA0]();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC190]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC210]();
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = MEMORY[0x2821FCAE8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD998]();
}

{
  return MEMORY[0x2821FD9A8]();
}

{
  return MEMORY[0x2821FD9D0]();
}

{
  return MEMORY[0x2821FD9E8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA10]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA48]();
}

{
  return MEMORY[0x2821FDA68]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAD0]();
}

{
  return MEMORY[0x2821FDAE0]();
}

{
  return MEMORY[0x2821FDB08]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB50]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB88]();
}

{
  return MEMORY[0x2821FDBA8]();
}