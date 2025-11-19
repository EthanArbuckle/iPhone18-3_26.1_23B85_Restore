uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = v22[85];
  v24 = v22[84];
  v25 = v22[74];
  v26 = v22[73];
  v27 = v22[72];
  v28 = v22[71];
  v29 = v22[69];
  v41 = v22[68];
  v42 = v22[65];
  v43 = v22[62];
  v44 = v22[58];
  v45 = v22[55];
  v46 = v22[54];
  v47 = v22[51];
  v48 = v22[48];
  v49 = v22[46];
  v50 = v22[45];
  v30 = v22[37];
  (*(v22[57] + 8))(v22[59], v22[56]);
  v31 = OUTLINED_FUNCTION_162_3();
  v24(v31);
  memcpy(v30, v22 + 2, 0x68uLL);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_191();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, a20, a21, a22);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = v18[85];
  v20 = v18[84];
  v21 = v18[74];
  v22 = v18[69];
  v23 = OUTLINED_FUNCTION_69_13();
  v24(v23);
  v25 = OUTLINED_FUNCTION_107();
  v20(v25);
  v26 = v18[87];
  OUTLINED_FUNCTION_47_16();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_15_6();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = v18[85];
  v20 = v18[84];
  v21 = v18[74];
  v22 = v18[69];
  v23 = OUTLINED_FUNCTION_69_13();
  v24(v23);
  v25 = OUTLINED_FUNCTION_107();
  v20(v25);
  v26 = v18[89];
  OUTLINED_FUNCTION_47_16();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_15_6();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void closure #1 in closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)()
{
  OUTLINED_FUNCTION_60_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = MEMORY[0x277D42EC0];
  v16[0] = v3;
  v16[1] = v1;

  v8 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v9 = *(v5 + 72);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_99_13(v11, xmmword_25DBC8180);
  OUTLINED_FUNCTION_104_5();
  v12();
  MEMORY[0x25F89F150](v11, v4, v8);

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_113_11();
  v15(v14);
  OUTLINED_FUNCTION_61_2();
}

void MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32_26(v5, v68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_86_7();
  v10 = type metadata accessor for BindableConfiguration();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_68_15();
  v14 = type metadata accessor for ChatMessagesPrompt();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_30();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_18(v22, v23, v24, v25, v26, v27, v28, v29, v69);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27_21(v31, v32, v33, v34, v35, v36, v37, v38, v70);
  OUTLINED_FUNCTION_29_17();
  ChatMessagesPrompt.init(_:)();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_4_39();
  v41 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v39, v40);
  OUTLINED_FUNCTION_36_19(v41);
  v42 = OUTLINED_FUNCTION_64_14();
  v43(v42);
  v44 = *(v17 + 8);
  v45 = OUTLINED_FUNCTION_26_2();
  v44(v45);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v46 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v46, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51(v46);
  v48 = *(v47 + 16);
  v49 = OUTLINED_FUNCTION_137_3();
  v50(v49);
  v51 = *MEMORY[0x277D0E550];
  v52 = OUTLINED_FUNCTION_11_32();
  v53(v52);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v54 = OUTLINED_FUNCTION_0_9();
  v55(v54);
  v56 = OUTLINED_FUNCTION_34_5();
  v44(v56);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v57 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_project_value_buffer(v57, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_28_14();
  v59 = *(v58 + 16);
  v60 = OUTLINED_FUNCTION_59_15();
  v61(v60);
  v62 = OUTLINED_FUNCTION_10_29();
  v63(v62);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v64 = OUTLINED_FUNCTION_31_23();
  v65(v64);
  v66 = OUTLINED_FUNCTION_26_2();
  v44(v66);
  OUTLINED_FUNCTION_16_28();
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v0)
  {
    v67 = OUTLINED_FUNCTION_162_3();
  }

  else
  {
    v67 = OUTLINED_FUNCTION_14_25();
  }

  v44(v67);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v4[33] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v11 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v4[35] = v11;
  v12 = *(v11 - 8);
  v4[36] = v12;
  v13 = *(v12 + 64) + 15;
  v4[37] = swift_task_alloc();
  v14 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v4[38] = v14;
  v15 = *(v14 - 8);
  v4[39] = v15;
  v16 = *(v15 + 64) + 15;
  v4[40] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v18 = type metadata accessor for FunctionIdentifier();
  v4[42] = v18;
  v19 = *(v18 - 8);
  v4[43] = v19;
  v20 = *(v19 + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v4[46] = v21;
  v22 = *(v21 - 8);
  v4[47] = v22;
  v23 = *(v22 + 64) + 15;
  v4[48] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v4[49] = v24;
  v25 = *(v24 - 8);
  v4[50] = v25;
  v26 = *(v25 + 64) + 15;
  v4[51] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[52] = v27;
  v28 = *(v27 - 8);
  v4[53] = v28;
  v29 = *(v28 + 64) + 15;
  v4[54] = swift_task_alloc();
  v30 = type metadata accessor for Locale();
  v4[55] = v30;
  v31 = *(v30 - 8);
  v4[56] = v31;
  v32 = *(v31 + 64) + 15;
  v4[57] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v34 = type metadata accessor for ChatMessagesPrompt();
  v4[59] = v34;
  v35 = *(v34 - 8);
  v4[60] = v35;
  v36 = *(v35 + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:), 0, 0);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = *(v22 + 488);
  v99 = *(v22 + 512);
  v101 = *(v22 + 480);
  v91 = *(v22 + 496);
  v92 = *(v22 + 472);
  v24 = *(v22 + 456);
  v25 = *(v22 + 464);
  v27 = *(v22 + 440);
  v26 = *(v22 + 448);
  v28 = *(v22 + 424);
  v95 = *(v22 + 416);
  v97 = *(v22 + 504);
  v98 = *(v22 + 208);
  v93 = *(v22 + 200);
  v94 = *(v22 + 432);
  v29 = *(v22 + 192);
  *(swift_task_alloc() + 16) = v29;
  OUTLINED_FUNCTION_134_8();
  ChatMessagesPrompt.init(_:)();

  static Locale.autoupdatingCurrent.getter();
  Locale.identifier.getter();
  v30 = OUTLINED_FUNCTION_110_11();
  v31(v30);
  OUTLINED_FUNCTION_32_0();
  Locale.init(identifier:)();
  OUTLINED_FUNCTION_114_10();
  outlined destroy of IntentApplication?(v25, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v33 = *(v27 + 8);
  v32 = v27 + 8;
  *(v22 + 536) = v33;
  *(v22 + 544) = v32 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v23, v92);
  v34 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  *(v22 + 552) = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  v35 = type metadata accessor for SamplingParameters();
  *(v22 + 560) = v35;
  OUTLINED_FUNCTION_17(v35);
  v37 = *(v36 + 16);
  *(v22 + 568) = v37;
  *(v22 + 576) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v94, v93 + v34);
  *(v22 + 672) = *MEMORY[0x277D0E548];
  *(v22 + 584) = *(v28 + 104);
  OUTLINED_FUNCTION_138_3();
  *(v22 + 592) = v38;
  v39(v94);
  OUTLINED_FUNCTION_4_39();
  *(v22 + 600) = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v40, v41);
  OUTLINED_FUNCTION_34_5();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v42 = *(v28 + 8);
  *(v22 + 608) = v42;
  *(v22 + 616) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v94, v95);
  v43 = OUTLINED_FUNCTION_26_2();
  (v33)(v43);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v98);
  OUTLINED_FUNCTION_122_9();

  v100 = v33;
  v33(v97, v92);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v44 = *(v22 + 520);
  v45 = *(v22 + 512);
  v46 = *(v22 + 472);
  v48 = *(v22 + 400);
  v47 = *(v22 + 408);
  v49 = *(v22 + 392);
  v50 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v50, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_28_14();
  (*(v51 + 16))(v47);
  v52 = *MEMORY[0x277D0E550];
  v53 = OUTLINED_FUNCTION_66_16();
  LODWORD(v98) = v54;
  v55(v53);
  OUTLINED_FUNCTION_72_12();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v56 = *(v48 + 8);
  v57 = OUTLINED_FUNCTION_179_0();
  v58(v57);
  v59 = OUTLINED_FUNCTION_64_0();
  v100(v59);
  v102 = v32;
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v60 = *(v22 + 528);
  v61 = *(v22 + 520);
  v62 = *(v22 + 472);
  v63 = *(v22 + 376);
  v64 = *(v22 + 384);
  v65 = *(v22 + 368);
  v96 = *(v22 + 360);
  v66 = *(v22 + 328);
  v67 = type metadata accessor for StringRenderedPromptSanitizer();
  OUTLINED_FUNCTION_119_8(v67, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_51(v67);
  v69 = *(v68 + 16);
  v70 = OUTLINED_FUNCTION_140_7();
  v71(v70);
  v72 = OUTLINED_FUNCTION_67_17();
  v73(v72, v98, v65);
  OUTLINED_FUNCTION_73_13();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v74 = OUTLINED_FUNCTION_61_17();
  v75(v74);
  v76 = OUTLINED_FUNCTION_179_0();
  v100(v76);
  v77 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_57_15(v77);
  OUTLINED_FUNCTION_93_12();
  v78 = *(MEMORY[0x277D0E540] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v22 + 624) = v79;
  *v79 = v80;
  v79[1] = closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:);
  v81 = *(v22 + 256);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_191();

  return MEMORY[0x282166B60](v82, v83, v84, v85, v86, v87, v88, v89, a9, v91, v92, v93, v94, v96, "35FBmlZvmq3Rd0l_GrXQQ4aC1fQ.", v98, v100, v102, a19, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = v22[68];
  v24 = v22[67];
  v25 = v22[66];
  v26 = v22[59];
  v27 = OUTLINED_FUNCTION_62_16();
  v28(v27);
  v29 = OUTLINED_FUNCTION_107();
  v24(v29);
  v30 = v22[79];
  OUTLINED_FUNCTION_41_16();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = v22[68];
  v24 = v22[67];
  v25 = v22[66];
  v26 = v22[59];
  v27 = OUTLINED_FUNCTION_62_16();
  v28(v27);
  v29 = OUTLINED_FUNCTION_107();
  v24(v29);
  v30 = v22[81];
  OUTLINED_FUNCTION_41_16();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 624);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 632) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[80];
  *v5 = *v2;
  v4[81] = v1;

  v7 = v4[31];
  v8 = v4[30];
  v9 = v4[29];
  if (!v1)
  {
    v4[82] = v0;
    v4[83] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[59];
  v13 = v0[61];
  v14 = v0[58];
  v15 = v0[57];
  v16 = v0[54];
  v17 = v0[51];
  v18 = v0[48];
  v19 = v0[44];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[37];
  v23 = v0[34];
  v24 = v0[32];
  v25 = v0[31];
  (*(v0[43] + 8))(v0[45], v0[42]);
  v2(v3, v8);

  v9 = v0[1];
  v10 = v0[83];
  v11 = v0[82];

  return v9(v10, v11);
}

void MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32_26(v5, v68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_86_7();
  v10 = type metadata accessor for BindableConfiguration();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_68_15();
  v14 = type metadata accessor for ChatMessagesPrompt();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_30();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_18(v22, v23, v24, v25, v26, v27, v28, v29, v69);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27_21(v31, v32, v33, v34, v35, v36, v37, v38, v70);
  OUTLINED_FUNCTION_29_17();
  ChatMessagesPrompt.init(_:)();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_4_39();
  v41 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v39, v40);
  OUTLINED_FUNCTION_36_19(v41);
  v42 = OUTLINED_FUNCTION_64_14();
  v43(v42);
  v44 = *(v17 + 8);
  v45 = OUTLINED_FUNCTION_26_2();
  v44(v45);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v46 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v46, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51(v46);
  v48 = *(v47 + 16);
  v49 = OUTLINED_FUNCTION_137_3();
  v50(v49);
  v51 = *MEMORY[0x277D0E550];
  v52 = OUTLINED_FUNCTION_11_32();
  v53(v52);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v54 = OUTLINED_FUNCTION_0_9();
  v55(v54);
  v56 = OUTLINED_FUNCTION_34_5();
  v44(v56);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v57 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_project_value_buffer(v57, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_28_14();
  v59 = *(v58 + 16);
  v60 = OUTLINED_FUNCTION_59_15();
  v61(v60);
  v62 = OUTLINED_FUNCTION_10_29();
  v63(v62);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v64 = OUTLINED_FUNCTION_31_23();
  v65(v64);
  v66 = OUTLINED_FUNCTION_26_2();
  v44(v66);
  OUTLINED_FUNCTION_16_28();
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v0)
  {
    v67 = OUTLINED_FUNCTION_162_3();
  }

  else
  {
    v67 = OUTLINED_FUNCTION_14_25();
  }

  v44(v67);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_61_2();
}

void closure #1 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  v0 = type metadata accessor for BindableChatMessagesPrompt();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v6 = type metadata accessor for ChatMessagesPrompt();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  BindableChatMessagesPrompt.init(name:)();
  OUTLINED_FUNCTION_45_0();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_45_0();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v15 = *(v7 + 72);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_99_13(v17, xmmword_25DBC8180);
  v19(v18 + v16, v11, v6);
  MEMORY[0x25F89F110](v17);

  (*(v7 + 8))(v11, v6);
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[40] = a4;
  v5[41] = a5;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v5[42] = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[43] = v6;
  v7 = *(v6 - 8);
  v5[44] = v7;
  v8 = *(v7 + 64) + 15;
  v5[45] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v5[47] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[48] = swift_task_alloc();
  v12 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[49] = v12;
  v13 = *(v12 - 8);
  v5[50] = v13;
  v14 = *(v13 + 64) + 15;
  v5[51] = swift_task_alloc();
  v15 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v5[52] = v15;
  v16 = *(v15 - 8);
  v5[53] = v16;
  v17 = *(v16 + 64) + 15;
  v5[54] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();
  v19 = type metadata accessor for FunctionIdentifier();
  v5[56] = v19;
  v20 = *(v19 - 8);
  v5[57] = v20;
  v21 = *(v20 + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v5[60] = v22;
  v23 = *(v22 - 8);
  v5[61] = v23;
  v24 = *(v23 + 64) + 15;
  v5[62] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v5[63] = v25;
  v26 = *(v25 - 8);
  v5[64] = v26;
  v27 = *(v26 + 64) + 15;
  v5[65] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v5[66] = v28;
  v29 = *(v28 - 8);
  v5[67] = v29;
  v30 = *(v29 + 64) + 15;
  v5[68] = swift_task_alloc();
  v31 = type metadata accessor for Locale();
  v5[69] = v31;
  v32 = *(v31 - 8);
  v5[70] = v32;
  v33 = *(v32 + 64) + 15;
  v5[71] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64) + 15;
  v5[72] = swift_task_alloc();
  v35 = type metadata accessor for ChatMessagesPrompt();
  v5[73] = v35;
  v36 = *(v35 - 8);
  v5[74] = v36;
  v37 = *(v36 + 64) + 15;
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:), 0, 0);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = *(v22 + 600);
  v99 = *(v22 + 624);
  v101 = *(v22 + 592);
  v91 = *(v22 + 608);
  v92 = *(v22 + 584);
  v24 = *(v22 + 576);
  v25 = *(v22 + 568);
  v26 = *(v22 + 560);
  v27 = *(v22 + 552);
  v28 = *(v22 + 536);
  v95 = *(v22 + 528);
  v97 = *(v22 + 616);
  v98 = *(v22 + 320);
  v93 = *(v22 + 312);
  v94 = *(v22 + 544);
  v29 = *(v22 + 304);
  *(swift_task_alloc() + 16) = v29;
  OUTLINED_FUNCTION_134_8();
  ChatMessagesPrompt.init(_:)();

  static Locale.autoupdatingCurrent.getter();
  Locale.identifier.getter();
  v30 = OUTLINED_FUNCTION_110_11();
  v31(v30);
  OUTLINED_FUNCTION_32_0();
  Locale.init(identifier:)();
  OUTLINED_FUNCTION_114_10();
  outlined destroy of IntentApplication?(v24, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v33 = *(v27 + 8);
  v32 = v27 + 8;
  *(v22 + 648) = v33;
  *(v22 + 656) = v32 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v23, v92);
  v34 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  *(v22 + 664) = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  v35 = type metadata accessor for SamplingParameters();
  *(v22 + 672) = v35;
  OUTLINED_FUNCTION_17(v35);
  v37 = *(v36 + 16);
  *(v22 + 680) = v37;
  *(v22 + 688) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v94, v93 + v34);
  *(v22 + 768) = *MEMORY[0x277D0E548];
  *(v22 + 696) = *(v28 + 104);
  OUTLINED_FUNCTION_138_3();
  *(v22 + 704) = v38;
  v39(v94);
  OUTLINED_FUNCTION_4_39();
  *(v22 + 712) = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v40, v41);
  OUTLINED_FUNCTION_34_5();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v42 = *(v28 + 8);
  *(v22 + 720) = v42;
  *(v22 + 728) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v94, v95);
  v43 = OUTLINED_FUNCTION_26_2();
  (v33)(v43);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v98);
  OUTLINED_FUNCTION_122_9();

  v100 = v33;
  v33(v97, v92);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v44 = *(v22 + 632);
  v45 = *(v22 + 624);
  v46 = *(v22 + 584);
  v47 = *(v22 + 520);
  v48 = *(v22 + 504);
  v49 = *(v22 + 512);
  v50 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v50, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_28_14();
  (*(v51 + 16))(v47);
  v52 = *MEMORY[0x277D0E550];
  v53 = OUTLINED_FUNCTION_66_16();
  LODWORD(v98) = v54;
  v55(v53);
  OUTLINED_FUNCTION_72_12();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v56 = *(v49 + 8);
  v57 = OUTLINED_FUNCTION_179_0();
  v58(v57);
  v59 = OUTLINED_FUNCTION_64_0();
  v100(v59);
  v102 = v32;
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v60 = *(v22 + 640);
  v61 = *(v22 + 632);
  v62 = *(v22 + 584);
  v63 = *(v22 + 488);
  v64 = *(v22 + 496);
  v65 = *(v22 + 480);
  v96 = *(v22 + 472);
  v66 = *(v22 + 440);
  v67 = type metadata accessor for StringRenderedPromptSanitizer();
  OUTLINED_FUNCTION_119_8(v67, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_51(v67);
  v69 = *(v68 + 16);
  v70 = OUTLINED_FUNCTION_140_7();
  v71(v70);
  v72 = OUTLINED_FUNCTION_67_17();
  v73(v72, v98, v65);
  OUTLINED_FUNCTION_73_13();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v74 = OUTLINED_FUNCTION_61_17();
  v75(v74);
  v76 = OUTLINED_FUNCTION_179_0();
  v100(v76);
  v77 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_57_15(v77);
  OUTLINED_FUNCTION_93_12();
  v78 = *(MEMORY[0x277D0E540] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v22 + 736) = v79;
  *v79 = v80;
  v79[1] = closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:);
  v81 = *(v22 + 368);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_191();

  return MEMORY[0x282166B60](v82, v83, v84, v85, v86, v87, v88, v89, a9, v91, v92, v93, v94, v96, "_Zre1y-2w7DSQIrlaO3hHrOnijU.", v98, v100, v102, a19, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = v22[82];
  v24 = v22[81];
  v25 = v22[80];
  v26 = v22[73];
  v27 = OUTLINED_FUNCTION_69_13();
  v28(v27);
  v29 = OUTLINED_FUNCTION_107();
  v24(v29);
  v30 = v22[93];
  OUTLINED_FUNCTION_38_22();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = v22[82];
  v24 = v22[81];
  v25 = v22[80];
  v26 = v22[73];
  v27 = OUTLINED_FUNCTION_69_13();
  v28(v27);
  v29 = OUTLINED_FUNCTION_107();
  v24(v29);
  v30 = v22[95];
  OUTLINED_FUNCTION_38_22();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 736);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 744) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = v2[94];
  v6 = v2[44];
  *v4 = *v1;
  *(v3 + 760) = v0;

  (*(v6 + 8))(v2[45], v2[43]);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v11 = v0[76];
  v12 = v0[75];
  v7 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[68];
  v16 = v0[65];
  v17 = v0[62];
  v18 = v0[58];
  v19 = v0[55];
  v20 = v0[54];
  v21 = v0[51];
  v22 = v0[48];
  v23 = v0[46];
  v24 = v0[45];
  v8 = v0[37];
  (*(v0[57] + 8))(v0[59], v0[56]);
  v2(v3, v7);
  memcpy(v8, v0 + 2, 0x68uLL);

  OUTLINED_FUNCTION_106();

  return v9();
}

void closure #1 in closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_60_1();
  v0 = type metadata accessor for ChatMessagesPrompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_100_9();
  type metadata accessor for PromptTemplate();
  OUTLINED_FUNCTION_9_35();
  lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v4, v5);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_99_13(v8, xmmword_25DBC8180);
  OUTLINED_FUNCTION_104_5();
  v9();
  MEMORY[0x25F89F110](v8);

  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_113_11();
  v12(v11);
  OUTLINED_FUNCTION_61_2();
}

uint64_t MemoryCreationQUNetworkService.deinit()
{
  OUTLINED_FUNCTION_201_0();
  outlined destroy of IntentApplication?(v1, v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_promptTemplateID + 8);

  v5 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  v6 = type metadata accessor for SamplingParameters();
  OUTLINED_FUNCTION_17(v6);
  (*(v7 + 8))(v0 + v5);
  v8 = *(v0 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_featureFlagService);

  v9 = *(v0 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel);

  OUTLINED_FUNCTION_201_0();
  outlined destroy of IntentApplication?(v10, v11, v12);
  return v0;
}

uint64_t MemoryCreationQUNetworkService.__deallocating_deinit()
{
  MemoryCreationQUNetworkService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MemoryCreationQUNetworkServiceProtocol.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:) in conformance MemoryCreationQUNetworkService(uint64_t a1)
{
  *(v2 + 120) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 128) = v4;
  *v4 = v2;
  v4[1] = MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:);

  return MemoryCreationQUNetworkService.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)();
}

uint64_t outlined assign with take of MemoryCreationModelType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id @nonobjc NSError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x25F89F4C0]();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

uint64_t outlined assign with copy of MemoryCreationModelType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t dispatch thunk of MemoryCreationQUNetworkServiceProtocol.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v56 = v33;
  v54 = v34;
  v55 = v35;
  v53 = v36;
  v37 = *(a31 + 16);
  v52 = v37 + *v37;
  v38 = v37[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v32 + 16) = v39;
  *v39 = v40;
  v39[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_15_6();

  return v49(v41, v42, v43, v44, v45, v46, v47, v48, a31 + 16, v52, v53, v54, v55, v56, v31, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t type metadata accessor for MemoryCreationQUNetworkService()
{
  result = type metadata singleton initialization cache for MemoryCreationQUNetworkService;
  if (!type metadata singleton initialization cache for MemoryCreationQUNetworkService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MemoryCreationQUNetworkService()
{
  type metadata accessor for MemoryCreationModelType?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    v3 = type metadata accessor for SamplingParameters();
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for MemoryCreationModelType?()
{
  if (!lazy cache variable for type metadata for MemoryCreationModelType?)
  {
    type metadata accessor for MemoryCreationModelType();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MemoryCreationModelType?);
    }
  }
}

void partial apply for closure #1 in closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #1 in closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)();
}

uint64_t lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_10_29()
{
  v2 = *(v1 - 96);
  v3 = *(*(v1 - 104) + 104);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_32()
{
  v2 = *(v1 - 128);
  v3 = *(*(v1 - 136) + 104);
  return v0;
}

__n128 *OUTLINED_FUNCTION_13_22@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = 0xD000000000000052;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_28()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_27()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return BindableConfiguration.init(name:)();
}

uint64_t OUTLINED_FUNCTION_36_19(uint64_t a1)
{
  *(v1 - 88) = a1;

  return GenerativeConfigurationProtocol.samplingParameters(_:)();
}

uint64_t OUTLINED_FUNCTION_38_22()
{
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[68];
  v11 = v0[65];
  v14 = v0[62];
  v15 = v0[59];
  v16 = v0[58];
  v17 = v0[55];
  v18 = v0[54];
  v19 = v0[51];
  v12 = v0[48];
  v20 = v0[46];
  v21 = v0[45];
}

uint64_t OUTLINED_FUNCTION_41_16()
{
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[63];
  v5 = v0[64];
  v7 = v0[61];
  v6 = v0[62];
  v9 = v0[57];
  v8 = v0[58];
  v10 = v0[54];
  v11 = v0[51];
  v14 = v0[48];
  v15 = v0[45];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[37];
  v12 = v0[34];
  v20 = v0[32];
  v21 = v0[31];
}

uint64_t OUTLINED_FUNCTION_47_16()
{
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[68];
  v7 = v0[65];
  v8 = v0[62];
  v10 = v0[58];
  v9 = v0[59];
  v11 = v0[55];
  v14 = v0[54];
  v15 = v0[51];
  v12 = v0[48];
  v16 = v0[46];
  v17 = v0[45];
}

uint64_t OUTLINED_FUNCTION_52_18()
{
  v3 = v0[59];
  v2 = v0[60];
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[54];
  v7 = v0[51];
  v8 = v0[48];
  v10 = v0[44];
  v9 = v0[45];
  v11 = v0[41];
  v14 = v0[40];
  v15 = v0[37];
  v12 = v0[34];
  v16 = v0[32];
  v17 = v0[31];
}

uint64_t OUTLINED_FUNCTION_54_19@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  a1[4] = a3;
  a1[5] = a2;
  a1[6].n128_u64[0] = v7;
}

uint64_t OUTLINED_FUNCTION_57_15(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_62_16()
{
  result = v0[45];
  v2 = v0[42];
  v3 = *(v0[43] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_19()
{
  result = v0[151];
  v2 = v0[149];
  v3 = *(v0[150] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_13()
{
  result = v0[59];
  v2 = v0[56];
  v3 = *(v0[57] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_14@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 160) = a1;
  v7 = *(v2 + 48);
  v5 = *(v1 + 32);
  return v3;
}

uint64_t OUTLINED_FUNCTION_78_15()
{
  v5 = *(v1 + 48);
  v3 = *(v0 + 32);
  return v2;
}

uint64_t OUTLINED_FUNCTION_80_11()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 88);

  return static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();
}

uint64_t OUTLINED_FUNCTION_85_13()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);
  v4 = *(v0 - 88);

  return static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();
}

uint64_t OUTLINED_FUNCTION_86_15()
{

  return GenerativeConfigurationProtocol.functionIdentifier(_:)();
}

uint64_t OUTLINED_FUNCTION_89_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x6554000000000000;
  *(a1 + 40) = 0xEE006574616C706DLL;

  return type metadata accessor for PromptTemplate();
}

uint64_t OUTLINED_FUNCTION_93_12()
{

  return FunctionIdentifier.init(identifier:resourceInformation:)();
}

uint64_t OUTLINED_FUNCTION_95_9()
{

  return Dictionary.init(dictionaryLiteral:)();
}

__n128 *OUTLINED_FUNCTION_99_13(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_114_10()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return ChatMessagesPrompt.locale(_:)();
}

uint64_t OUTLINED_FUNCTION_120_7@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a1[9] = v13;
  a1[10] = a2;
  a1[6] = a11;
  *(v12 + 56) = a12;
}

uint64_t OUTLINED_FUNCTION_122_9()
{

  return GenerativeConfigurationProtocol.bindVariables(_:)();
}

uint64_t OUTLINED_FUNCTION_127_12()
{
  result = *(v0 + 1208);
  v2 = *(v0 + 1184);
  return result;
}

uint64_t OUTLINED_FUNCTION_139_7()
{
  result = v0;
  v3 = *(v1 - 120);
  v5 = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_143_9()
{

  return _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
}

uint64_t OUTLINED_FUNCTION_144_8()
{

  return GenerativeConfigurationProtocol.samplingParameters(_:)();
}

uint64_t OUTLINED_FUNCTION_145_5()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_147_8()
{
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1184);
}

uint64_t OUTLINED_FUNCTION_149_8(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t static SearchOverrides.match(rewrittenQuery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = static SearchOverrides.read()();
  if (!v3)
  {
    v8 = result + 40;
    v9 = *(result + 16) + 1;
    while (1)
    {
      if (!--v9)
      {

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        return result;
      }

      v11 = *(v8 - 8);
      v10 = *v8;
      v12 = *(v8 + 24);
      v15 = v12;
      v16 = *(v8 + 8);
      v13 = *(v8 + 40);
      if (v11 == a1 && v10 == a2)
      {
        break;
      }

      v8 += 56;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_12;
      }
    }

    v11 = a1;
LABEL_12:

    *a3 = v11;
    *(a3 + 8) = v10;
    *(a3 + 16) = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v13;
  }

  return result;
}

uint64_t SearchOverrideError.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void static SearchOverrideError.invalidPayload(_:)()
{
  OUTLINED_FUNCTION_9_36();
  _StringGuts.grow(_:)(19);

  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_11_33(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

void static SearchOverrideError.unsupported(_:)()
{
  OUTLINED_FUNCTION_9_36();
  _StringGuts.grow(_:)(24);

  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_11_33(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t one-time initialization function for defaults()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static SearchOverrides.defaults = result;
  return result;
}

id static SearchOverrides.defaults.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_1_56();
    swift_once();
  }

  v1 = static SearchOverrides.defaults;

  return v1;
}

uint64_t static SearchOverrides.read()()
{
  v1 = v0;
  v2 = &one-time initialization token for typeDisplayRepresentation;
  if (AFIsInternalInstall())
  {
    if (one-time initialization token for defaults != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v3 = static SearchOverrides.defaults;
      v4 = MEMORY[0x25F89F4C0](0x764F686372616553, 0xEF73656469727265);
      v5 = [v3 valueForKey_];

      if (v5)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined destroy of Any?(v52);
      }

      else
      {
        OUTLINED_FUNCTION_7_34();
        outlined destroy of Any?(v52);
        if (v2[79] != -1)
        {
          OUTLINED_FUNCTION_0_56();
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logging.utilities);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_25D85C000, v12, v13, "Registering default overrides from Plist", v14, 2u);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25DBC8180;
        *(inited + 32) = 0x764F686372616553;
        *(inited + 40) = 0xEF73656469727265;
        v16 = static SearchOverrides.loadPlistDefaults()();
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
        *(inited + 48) = v16;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v3 registerDefaults_];

        v2 = &one-time initialization token for typeDisplayRepresentation;
      }

      v18 = MEMORY[0x25F89F4C0](0x764F686372616553, 0xEF73656469727265);
      v19 = [v3 arrayForKey_];

      if (!v19)
      {
        break;
      }

      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = specialized _arrayConditionalCast<A, B>(_:)(v20);

      if (!v21)
      {
        break;
      }

      v22 = specialized Array.count.getter(v21);
      v23 = 0;
      v24 = v21 & 0xC000000000000001;
      v56 = v21 & 0xFFFFFFFFFFFFFF8;
      v50 = MEMORY[0x277D84F90];
      v51 = v21;
      while (1)
      {
        if (v22 == v23)
        {

          return v50;
        }

        if (v24)
        {
          v25 = MEMORY[0x25F89FFD0](v23, v21);
        }

        else
        {
          if (v23 >= *(v56 + 16))
          {
            goto LABEL_40;
          }

          v25 = *(v21 + 8 * v23 + 32);
        }

        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v27 = v25;
        SearchOverride.init(defaultsRepresentation:)(v27, v52);
        if (v1)
        {
          if (v2[79] != -1)
          {
            OUTLINED_FUNCTION_0_56();
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          __swift_project_value_buffer(v28, static Logging.utilities);
          v29 = v27;
          v30 = v1;
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = v22;
            v35 = v24;
            v36 = swift_slowAlloc();
            *v33 = 138412546;
            v37 = v1;
            v38 = _swift_stdlib_bridgeErrorToNSError();
            *(v33 + 4) = v38;
            *(v33 + 12) = 2112;
            *(v33 + 14) = v29;
            *v36 = v38;
            v36[1] = v29;
            v39 = v29;
            _os_log_impl(&dword_25D85C000, v31, v32, "%@ - failed to load: %@", v33, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            v24 = v35;
            v22 = v34;
            v21 = v51;
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            v2 = &one-time initialization token for typeDisplayRepresentation;
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          else
          {

            v31 = v29;
          }

          v1 = 0;
          ++v23;
        }

        else
        {
          v49 = v24;

          v40 = v52[0];
          v41 = v52[1];
          v47 = v54;
          v48 = v53;
          v42 = v55;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v43 = v50;
          }

          else
          {
            v46 = *(v50 + 16);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v44 = *(v43 + 16);
          if (v44 >= *(v43 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          *(v43 + 16) = v44 + 1;
          v50 = v43;
          v45 = v43 + 56 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v41;
          *(v45 + 48) = v48;
          *(v45 + 64) = v47;
          *(v45 + 80) = v42;
          v23 = v26;
          v2 = &one-time initialization token for typeDisplayRepresentation;
          v24 = v49;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      OUTLINED_FUNCTION_1_56();
      swift_once();
    }

    lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12();
    static SearchOverrideError.invalidPayload(_:)();
    return swift_willThrow();
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.utilities);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "Search overrides are only supported on internal installs", v9, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t static SearchOverrides.loadPlistDefaults()()
{
  type metadata accessor for OmniSearchService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = outlined bridged method (mbbnb) of @objc NSBundle.path(forResource:ofType:)(0xD000000000000010, 0x800000025DBF6710, 0x7473696C70, 0xE500000000000000, v1);
  v4 = v3;

  if (v4)
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
    v5._countAndFlagsBits = v2;
    v5._object = v4;
    v6 = NSArray.__allocating_init(contentsOfFile:)(v5);
    if (v6)
    {
      v7 = v6;
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  if (one-time initialization token for utilities != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.utilities);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25D85C000, v9, v10, "Failed to load DefaultOverrides.plist", v11, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  return MEMORY[0x277D84F90];
}

void SearchOverride.init(defaultsRepresentation:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = MEMORY[0x25F89F4C0](0x74614D7475706E69, 0xEA00000000006863);
  v6 = &off_2799EF000;
  v7 = OUTLINED_FUNCTION_13_23(v5, sel_objectForKey_);

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_7_34();
  }

  OUTLINED_FUNCTION_3_43(v8, v9, v10, v11, v12, v13, v14, v15, v82, v86, v90, v94, v98, v102, v106, v110, v114, v119, v123, v127, v131);
  if (!v16)
  {
    outlined destroy of Any?(&v135);
    goto LABEL_9;
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  OUTLINED_FUNCTION_22_21();
  if ((OUTLINED_FUNCTION_8_32() & 1) == 0)
  {
LABEL_9:
    lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12();
    static SearchOverrideError.invalidPayload(_:)();
    swift_willThrow();

    goto LABEL_10;
  }

  v17 = v137.super.isa;
  SearchOverride.InputMatch.init(defaultsRepresentation:)();
  if (v2)
  {

LABEL_10:

    return;
  }

  v115 = v17;
  v18 = MEMORY[0x25F89F4C0](0x764F74757074756FLL, 0xEE00656469727265);
  v19 = OUTLINED_FUNCTION_13_23(v18, sel_objectForKey_);

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    v20 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_7_34();
  }

  OUTLINED_FUNCTION_3_43(v20, v21, v22, v23, v24, v25, v26, v27, v83, v87, v91, v135, v136, v103, v107, v111, v115, v120, v124, v128, v132);
  if (!v28)
  {
    outlined destroy of Any?(&v135);
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
  OUTLINED_FUNCTION_22_21();
  if ((OUTLINED_FUNCTION_25_23() & 1) == 0)
  {
LABEL_34:
    v33 = 0;
    goto LABEL_35;
  }

  isa = v137.super.isa;
  v30 = specialized Array.count.getter(v137.super.isa);
  if (!v30)
  {

    v33 = MEMORY[0x277D84F90];
LABEL_35:
    v51 = MEMORY[0x25F89F4C0](0xD000000000000017, 0x800000025DBF6600);
    v52 = [a1 v6[62]];

    if (v52)
    {
      _bridgeAnyObjectToAny(_:)();
      v53 = swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_7_34();
    }

    v61 = v116;
    OUTLINED_FUNCTION_3_43(v53, v54, v55, v56, v57, v58, v59, v60, v84, v88, v92, v95, v99, v104, v108, v112, v116, v121, v125, v129, v133);
    if (v62)
    {
      OUTLINED_FUNCTION_22_21();
      if (OUTLINED_FUNCTION_8_32())
      {
        AnswerSynthesisOverride.init(defaultsRepresentation:)(v137);
        if (v63)
        {

LABEL_60:

          goto LABEL_10;
        }

        v64 = v135;
        v65 = v136;

LABEL_44:
        v66 = OUTLINED_FUNCTION_15_28();
        v67 = MEMORY[0x25F89F4C0](v66);
        v68 = [a1 objectForKey_];

        if (v68)
        {
          _bridgeAnyObjectToAny(_:)();
          v69 = swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_7_34();
        }

        OUTLINED_FUNCTION_3_43(v69, v70, v71, v72, v73, v74, v75, v76, v85, v89, v93, v96, v100, v105, v109, v113, v117, v122, v126, v130, v134);
        if (v77)
        {
          OUTLINED_FUNCTION_22_21();
          if (OUTLINED_FUNCTION_8_32())
          {
            LLMQUOverride.init(defaultsRepresentation:)(v137);
            if (v78)
            {

              goto LABEL_60;
            }

            v79 = a2;

            v80 = v135;
            v81 = v136;

LABEL_54:
            *v79 = v97;
            v79[1] = v101;
            v79[2] = v33;
            v79[3] = v64;
            v79[4] = v65;
            v79[5] = v80;
            v79[6] = v81;
            return;
          }

          v79 = a2;
        }

        else
        {
          v79 = a2;

          outlined destroy of Any?(&v135);
        }

        v80 = 0;
        v81 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      outlined destroy of Any?(&v135);
    }

    v64 = 0;
    v65 = 0;
    goto LABEL_44;
  }

  v31 = v30;
  v88 = a2;
  v137.super.isa = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30 & ~(v30 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v33 = v137.super.isa;
    v108 = isa;
    v112 = isa & 0xC000000000000001;
    v92 = isa & 0xFFFFFFFFFFFFFF8;
    v104 = v31;
    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v112)
      {
        v35 = MEMORY[0x25F89FFD0](v32, isa);
      }

      else
      {
        if (v32 >= *(v92 + 16))
        {
          goto LABEL_62;
        }

        v35 = *(isa + 8 * v32 + 32);
      }

      v36 = v35;
      OUTLINED_FUNCTION_19_28();
      v38 = v37;
      v39 = [v36 valueForKey_];

      if (v39)
      {
        _bridgeAnyObjectToAny(_:)();
        v40 = swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_7_34();
      }

      OUTLINED_FUNCTION_3_43(v40, v41, v42, v43, v44, v45, v46, v47, v84, v88, v92, v95, v99, v104, v108, v112, v116, v121, v125, v129, v133);
      if (!v48)
      {
        outlined destroy of Any?(&v135);
LABEL_59:
        lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
        OUTLINED_FUNCTION_5_12();
        static SearchOverrideError.invalidPayload(_:)();
        swift_willThrow();

        goto LABEL_60;
      }

      if ((OUTLINED_FUNCTION_8_32() & 1) == 0)
      {
        goto LABEL_59;
      }

      v137.super.isa = v33;
      v50 = *(v33 + 2);
      v49 = *(v33 + 3);
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1);
        v33 = v137.super.isa;
      }

      *(v33 + 2) = v50 + 1;
      *(v33 + v50 + 4) = v121;
      ++v32;
      isa = v108;
      v6 = &off_2799EF000;
      if (v34 == v104)
      {

        a2 = v88;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
}

NSArray_optional __swiftcall NSArray.__allocating_init(contentsOfFile:)(Swift::String contentsOfFile)
{
  object = contentsOfFile._object;
  countAndFlagsBits = contentsOfFile._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x25F89F4C0](countAndFlagsBits, object);

  v5 = [v3 initWithContentsOfFile_];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

void static SearchOverrides.add(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v28 = *(a1 + 2);
  v29 = *(a1 + 1);
  v4 = a1[6];
  v5 = static SearchOverrides.read()();
  if (!v1)
  {
    v6 = v5;
    v7 = 0;
    v8 = *(v5 + 16);
    v9 = 88;
    while (v8 != v7)
    {
      v10 = *(v6 + v9 - 56) == v2 && *(v6 + v9 - 48) == v3;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v6 = v27;
        }

        v11 = *(v6 + 16);
        if (v11 <= v7)
        {
          __break(1u);
          return;
        }

        v30 = v4;
        v12 = v11 - 1;
        v13 = ~v7;
        v14 = (v6 + v9);
        v15 = (v6 + v9 - 56);
        v16 = *(v6 + v9 - 8);
        v17 = *(v6 + v9 - 24);
        v19 = *(v14 - 6);
        v18 = *(v14 - 5);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v13 + v11, v15);
        *(v6 + 16) = v12;
        v4 = v30;

        break;
      }

      ++v7;
      v9 += 56;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = *(v6 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v25;
    }

    v20 = *(v6 + 16);
    v22 = v28;
    v21 = v29;
    if (v20 >= *(v6 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v28;
      v21 = v29;
      v6 = v26;
    }

    *(v6 + 16) = v20 + 1;
    v23 = v6 + 56 * v20;
    *(v23 + 32) = v2;
    *(v23 + 40) = v3;
    *(v23 + 48) = v21;
    *(v23 + 64) = v22;
    *(v23 + 80) = v4;
    static SearchOverrides.write(_:)(v6);
  }
}

uint64_t static SearchOverride.InputMatch.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_6_31();
  }
}

void static SearchOverrides.write(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 40);
    while (1)
    {
      v9 = *(v3 - 1);
      v10 = *v3;
      v11 = *(v3 + 1);
      v12 = *(v3 + 3);
      v13 = v3[5];

      SearchOverride.defaultsRepresentation()();
      if (v4)
      {
        break;
      }

      v3 += 7;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v14 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v1)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (one-time initialization token for defaults != -1)
    {
      swift_once();
    }

    v6 = static SearchOverrides.defaults;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = MEMORY[0x25F89F4C0](0x764F686372616553, 0xEF73656469727265);
    [v6 setObject:isa forKey:v8];
  }
}

void static SearchOverrides.reset()()
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_1_56();
    swift_once();
  }

  v0 = static SearchOverrides.defaults;
  v1 = OUTLINED_FUNCTION_16_29();
  v2 = MEMORY[0x25F89F4C0](v1);
  [v0 setValue:0 forKey:v2];
}

NSDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchOverride.defaultsRepresentation()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v26 = v0[2];
  v23 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v4 = swift_allocObject();
  *(v4 + 32) = 0x74614D7475706E69;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 16) = xmmword_25DBC8400;
  *(v4 + 56) = v5;
  *(v4 + 40) = 0xEA00000000006863;
  *&v24 = v2;
  *(&v24 + 1) = v1;

  v6.super.isa = SearchOverride.InputMatch.defaultsRepresentation()().super.isa;

  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 32));
    *(v4 + 16) = 0;
  }

  else
  {
    v9 = v26;
    v10 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    *(v4 + 64) = v6;
    *(v4 + 120) = v5;
    *(v4 + 88) = v10;
    *(v4 + 96) = 0xD000000000000017;
    *(v4 + 104) = 0x800000025DBF6600;
    if (v23)
    {
      v11 = OUTLINED_FUNCTION_24_22();
      *(v11 + 16) = xmmword_25DBC8180;
      *(v11 + 32) = 0x65736E6F70736572;
      *(v11 + 40) = 0xE800000000000000;
      *(v11 + 88) = v5;
      *(v11 + 56) = v5;
      *(v11 + 64) = v3;
      *(v11 + 72) = v23;

      v25 = v10;
      *&v24 = NSDictionary.init(dictionaryLiteral:)();
      outlined init with take of Any(&v24, (v4 + 128));
    }

    else
    {
      *(v4 + 152) = v5;
      *(v4 + 128) = 0;
      *(v4 + 136) = 0xE000000000000000;
    }

    v12 = v5;
    *(v4 + 184) = v5;
    strcpy((v4 + 160), "outputOverride");
    *(v4 + 175) = -18;
    v13 = MEMORY[0x277D84F90];
    if (v9)
    {
      v14 = *(v9 + 16);
      v15 = MEMORY[0x277D84F90];
      if (v14)
      {
        v26 = 0;
        *&v24 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v16 = (v9 + 32);
        do
        {
          v17 = *v16++;
          *(OUTLINED_FUNCTION_24_22() + 16) = xmmword_25DBC8180;
          OUTLINED_FUNCTION_21_25();
          v18[4] = v19;
          v18[5] = 0xE700000000000000;
          v18[11] = v10;
          v18[7] = v12;
          v18[8] = v17;
          v20 = v17;
          NSDictionary.init(dictionaryLiteral:)();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = *(v24 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v14;
        }

        while (v14);
        v15 = v24;
        v13 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v15 = 0;
    }

    *(v4 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
    if (v15)
    {
      v22 = v15;
    }

    else
    {
      v22 = v13;
    }

    *(v4 + 192) = v22;
    return NSDictionary.init(dictionaryLiteral:)();
  }
}

Swift::Bool __swiftcall SearchOverride.matches(rewrittenQuery:)(Swift::String rewrittenQuery)
{
  if (*v1 == rewrittenQuery._countAndFlagsBits && *(v1 + 8) == rewrittenQuery._object)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_6_31();
  }
}

void SearchOverride.InputMatch.init(defaultsRepresentation:)()
{
  OUTLINED_FUNCTION_4_40();
  v1 = MEMORY[0x25F89F4C0](1684957547, 0xE400000000000000);
  v2 = OUTLINED_FUNCTION_13_23(v1, sel_valueForKey_);

  if (v2)
  {
    OUTLINED_FUNCTION_26_20();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_5_37(v3, v4, v5, v6, v7, v8, v9, v10, v47, v52, v55, v57, v59);
  if (!v18)
  {
    outlined destroy of Any?(v61);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_23_22(v11, v12, v13, MEMORY[0x277D837D0], v14, v15, v16, v17, v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (v49 == 0xD000000000000013 && 0x800000025DBF67D0 == v53)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v21 = MEMORY[0x25F89F4C0](0x7972657571, 0xE500000000000000);
  v22 = OUTLINED_FUNCTION_13_23(v21, sel_valueForKey_);

  if (v22)
  {
    OUTLINED_FUNCTION_26_20();
    v23 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_5_37(v23, v24, v25, v26, v27, v28, v29, v30, v49, v53, v56, v58, v60);
  if (!v38)
  {
    outlined destroy of Any?(v61);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_23_22(v31, v32, v33, MEMORY[0x277D837D0], v34, v35, v36, v37, v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12();
    static SearchOverrideError.invalidPayload(_:)();
    swift_willThrow();

    return;
  }

  OUTLINED_FUNCTION_11_33(v39, v40, v41, v42, v43, v44, v45, v46, v51, v54);
}

NSDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchOverride.InputMatch.defaultsRepresentation()()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25DBC9D00;
  v4 = MEMORY[0x277D837D0];
  *(v3 + 32) = 1684957547;
  *(v3 + 40) = 0xE400000000000000;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0xD000000000000013;
  *(v3 + 72) = 0x800000025DBF67D0;
  *(v3 + 88) = v4;
  *(v3 + 96) = 0x7972657571;
  *(v3 + 104) = 0xE500000000000000;
  *(v3 + 152) = v4;
  *(v3 + 120) = v4;
  *(v3 + 128) = v2;
  *(v3 + 136) = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);

  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t SearchOverride.inputMatch.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t SearchOverride.outputOverride.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SearchOverride.answerSynthOverride.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t SearchOverride.llmQUOverride.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

double SearchOverride.init(inputMatch:outputOverride:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = a2;
  return result;
}

OmniSearch::SearchOutputOverride __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchOutputOverride.init(defaultsRepresentation:)(NSDictionary defaultsRepresentation)
{
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_19_28();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_13_23(v3, sel_valueForKey_);

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    if (OUTLINED_FUNCTION_25_23())
    {

      *v2 = v10;
      return result;
    }
  }

  else
  {
    outlined destroy of Any?(v9);
  }

  lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_30();
  static SearchOverrideError.invalidPayload(_:)();
  swift_willThrow();

  return result;
}

OmniSearch::AnswerSynthesisOverride __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnswerSynthesisOverride.init(defaultsRepresentation:)(NSDictionary defaultsRepresentation)
{
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_17_31();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_13_23(v2, sel_objectForKey_);

  if (v4)
  {
    OUTLINED_FUNCTION_26_20();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_5_37(v5, v6, v7, v8, v9, v10, v11, v12, v32, v35, v37, v38, v39);
  if (!v20)
  {
    outlined destroy of Any?(v40);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_23_22(v13, v14, v15, MEMORY[0x277D837D0], v16, v17, v18, v19, v33);
  if ((OUTLINED_FUNCTION_25_23() & 1) == 0)
  {
LABEL_8:
    lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_10_30();
    static SearchOverrideError.invalidPayload(_:)();
    swift_willThrow();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_33(v21, v22, v23, v24, v25, v26, v27, v28, v34, v36);
LABEL_9:
  result.response._object = v30;
  result.response._countAndFlagsBits = v29;
  return result;
}

OmniSearch::LLMQUOverride __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LLMQUOverride.init(defaultsRepresentation:)(NSDictionary defaultsRepresentation)
{
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_17_31();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_13_23(v2, sel_objectForKey_);

  if (v4)
  {
    OUTLINED_FUNCTION_26_20();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_5_37(v5, v6, v7, v8, v9, v10, v11, v12, v32, v35, v37, v38, v39);
  if (!v20)
  {
    outlined destroy of Any?(v40);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_23_22(v13, v14, v15, MEMORY[0x277D837D0], v16, v17, v18, v19, v33);
  if ((OUTLINED_FUNCTION_25_23() & 1) == 0)
  {
LABEL_8:
    lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_10_30();
    static SearchOverrideError.invalidPayload(_:)();
    swift_willThrow();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_33(v21, v22, v23, v24, v25, v26, v27, v28, v34, v36);
LABEL_9:
  result.response._object = v30;
  result.response._countAndFlagsBits = v29;
  return result;
}

NSDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchOutputOverride.defaultsRepresentation()()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v2 = OUTLINED_FUNCTION_24_22();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_25DBC8180;
  *(v2 + 56) = v3;
  OUTLINED_FUNCTION_21_25();
  *(v4 + 32) = v5;
  *(v4 + 40) = 0xE700000000000000;
  *(v2 + 88) = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  *(v2 + 64) = v1;
  v6 = v1;
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t LLMQUOverride.response.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnswerSynthesisOverride.defaultsRepresentation()()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v3 = OUTLINED_FUNCTION_24_22();
  *(v3 + 16) = xmmword_25DBC8180;
  v4 = MEMORY[0x277D837D0];
  *(v3 + 32) = 0x65736E6F70736572;
  *(v3 + 40) = 0xE800000000000000;
  *(v3 + 88) = v4;
  *(v3 + 56) = v4;
  *(v3 + 64) = v2;
  *(v3 + 72) = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);

  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError()
{
  result = lazy protocol witness table cache variable for type SearchOverrideError and conformance SearchOverrideError;
  if (!lazy protocol witness table cache variable for type SearchOverrideError and conformance SearchOverrideError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchOverrideError and conformance SearchOverrideError);
  }

  return result;
}

uint64_t outlined bridged method (mbbnb) of @objc NSBundle.path(forResource:ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x25F89F4C0]();

  v9 = MEMORY[0x25F89F4C0](a3, a4);

  v10 = [a5 pathForResource:v8 ofType:v9];

  if (!v10)
  {
    return 0;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

_BYTE *storeEnumTagSinglePayload for SearchOverrides(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_2_41@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_13_23(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_17_31()
{

  JUMPOUT(0x25F89F4C0);
}

void OUTLINED_FUNCTION_18_20()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_19_28()
{

  JUMPOUT(0x25F89F4C0);
}

uint64_t OUTLINED_FUNCTION_24_22()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_23()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_20()
{

  return _bridgeAnyObjectToAny(_:)();
}

void SearchResult.init(overridePayload:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = type metadata accessor for SpotlightRankingItem();
  v35 = *(v38 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v33 - v10;
  v12 = type metadata accessor for SearchResult(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + *(v16 + 28)) = MEMORY[0x277D84F90];
  v17 = (a2 + *(v16 + 40));
  type metadata accessor for CSSearchableItem();
  *v17 = 0;
  v17[1] = 0;
  v18 = static CSSearchableItem.makeFrom(overridePayload:)(a1);
  if (v2)
  {
  }

  else
  {
    v19 = v18;
    v34 = a1;
    v33[1] = type metadata accessor for LocalIndexClient();
    OUTLINED_FUNCTION_0_57(1);
    OUTLINED_FUNCTION_0_57(v20);
    OUTLINED_FUNCTION_0_57(v21);
    OUTLINED_FUNCTION_0_57(v22);
    OUTLINED_FUNCTION_0_57(v23);
    LOBYTE(v36) = v24;
    SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
    CSSearchableItem.makeOverrideEventSourceMap()();
    v25 = v19;
    static LocalIndexClient.searchResultFromItem(_:spotlightRankingItem:eventSourceItemsMap:allowedTypes:locale:)();

    (*(v35 + 8))(v7, v38);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      outlined destroy of (offset: Int, element: SearchResult)(v11, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v36 = 0xD000000000000023;
      v37 = 0x800000025DBF6870;
      v26 = [v19 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      MEMORY[0x25F89F6C0](v27, v29);

      v30 = v36;
      v31 = v37;
      lazy protocol witness table accessor for type SearchOverrideError and conformance SearchOverrideError();
      swift_allocError();
      *v32 = v30;
      v32[1] = v31;
      swift_willThrow();
    }

    else
    {

      outlined init with take of SearchResult(v11, v15);
      outlined init with take of SearchResult(v15, a2);
    }
  }
}

id static CSSearchableItem.makeFrom(overridePayload:)(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v25 = a1;
  NSDictionary.makeIterator()();
  v35 = v2;
  while (1)
  {
    NSDictionary.Iterator.next()();
    v32 = v28;
    v33 = v29;
    v34[0] = v30;
    v34[1] = v31;
    if (!*(&v29 + 1))
    {
      break;
    }

    outlined init with take of Any(v34, &v28);
    outlined init with take of Any(&v32, &v26);
    if (!swift_dynamicCast())
    {
      goto LABEL_12;
    }

    static CSSearchableItem.coerceValue(_:)(&v28, &v26);
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    v6 = MEMORY[0x25F89F4C0]();
    [v4 setAttribute:v5 forKey:v6];
    swift_unknownObjectRelease();

    v7 = MEMORY[0x25F89F4C0]();
    v8 = [v4 attributeForKey_];

    if (v8)
    {

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      outlined destroy of (offset: Int, element: SearchResult)(&v26, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      outlined destroy of (offset: Int, element: SearchResult)(&v26, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for utilities != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logging.utilities);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v26 = v13;
        *v12 = 136315138;
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v12 + 4) = v14;
        _os_log_impl(&dword_25D85C000, v10, v11, "Failed to set override attribute: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x25F8A1050](v13, -1, -1);
        MEMORY[0x25F8A1050](v12, -1, -1);
      }

      else
      {
      }

LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }
  }

  v15 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v16 = v4;
  v17 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(0, 0, 0, 0, v16);
  *&v28 = 0xD000000000000010;
  *(&v28 + 1) = 0x800000025DBF68C0;
  v18 = [v25 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v32 = v28;
  v33 = v29;
  if (*(&v29 + 1))
  {
    if (swift_dynamicCast())
    {
      outlined bridged method (mbnn) of @objc CSSearchableItem.bundleID.setter(v26, *(&v26 + 1), v17);
      goto LABEL_25;
    }
  }

  else
  {
    outlined destroy of (offset: Int, element: SearchResult)(&v32, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for utilities != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logging.utilities);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    MEMORY[0x25F8A1050](v22, -1, -1);
  }

  v23 = MEMORY[0x25F89F4C0](0xD00000000000001ALL, 0x800000025DBEE6C0);
  [v17 setBundleID_];

LABEL_25:
  return v17;
}

uint64_t CSSearchableItem.makeOverrideEventSourceMap()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([v0 attributeSet]);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v21 = 0xD00000000000001CLL;
    v22 = 0x800000025DBF68A0;
    UUID.init()();
    v12 = UUID.uuidString.getter();
    v14 = v13;
    (*(v3 + 8))(v7, v2);
    MEMORY[0x25F89F6C0](v12, v14);

    v10 = v21;
    v11 = v22;
  }

  v15 = [v1 attributeSet];
  outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.setter(v10, v11, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo16CSSearchableItemCGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySo16CSSearchableItemCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = v10;
  *(inited + 40) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25DBC8190;
  *(v17 + 32) = v1;
  *(inited + 48) = v17;
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t static CSSearchableItem.coerceValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v17);
  if (!swift_dynamicCast())
  {
    return outlined init with copy of Any(a1, a2);
  }

  v10 = v16[0];
  v9 = v16[1];
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v11 = static LocalSearchService.dateFormatter;
  v12 = MEMORY[0x25F89F4C0](v10, v9);

  v13 = [v11 dateFromString_];

  if (!v13)
  {
    return outlined init with copy of Any(a1, a2);
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  a2[3] = v4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  return (*(v5 + 32))(boxed_opaque_existential_1Tm, v8, v4);
}

void outlined bridged method (mbnn) of @objc CSSearchableItem.bundleID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();

  [a3 setBundleID_];
}

void outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  [a3 setEventMessageIdentifier_];
}

uint64_t static AudioSearchResultsRanker.domain.getter()
{
  OUTLINED_FUNCTION_3_44();
  v0 = static AudioSearchResultsRanker.domain;

  return v0;
}

uint64_t static AudioSearchResultsRanker.domain.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static AudioSearchResultsRanker.domain = a1;
  off_27FC70310 = a2;
}

uint64_t key path getter for static AudioSearchResultsRanker.domain : AudioSearchResultsRanker.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27FC70310;
  *a1 = static AudioSearchResultsRanker.domain;
  a1[1] = v2;
}

uint64_t key path setter for static AudioSearchResultsRanker.domain : AudioSearchResultsRanker.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static AudioSearchResultsRanker.domain = v2;
  off_27FC70310 = v1;
}

id one-time initialization function for defaults()
{
  swift_beginAccess();
  v1 = static AudioSearchResultsRanker.domain;
  v0 = off_27FC70310;
  objc_allocWithZone(MEMORY[0x277CBEBD0]);

  result = @nonobjc NSUserDefaults.init(suiteName:)(v1, v0);
  static AudioSearchResultsRanker.defaults = result;
  return result;
}

uint64_t *AudioSearchResultsRanker.defaults.unsafeMutableAddressor()
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  return &static AudioSearchResultsRanker.defaults;
}

uint64_t static AudioSearchResultsRanker.defaults.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  OUTLINED_FUNCTION_3_44();
  v0 = static AudioSearchResultsRanker.defaults;
  v1 = static AudioSearchResultsRanker.defaults;
  return v0;
}

void static AudioSearchResultsRanker.defaults.setter(uint64_t a1)
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  swift_beginAccess();
  v2 = static AudioSearchResultsRanker.defaults;
  static AudioSearchResultsRanker.defaults = a1;
}

uint64_t (*static AudioSearchResultsRanker.defaults.modify())()
{
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  OUTLINED_FUNCTION_48_1();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

id key path getter for static AudioSearchResultsRanker.defaults : AudioSearchResultsRanker.Type@<X0>(void *a1@<X8>)
{
  AudioSearchResultsRanker.defaults.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = static AudioSearchResultsRanker.defaults;
  *a1 = static AudioSearchResultsRanker.defaults;

  return v2;
}

void key path setter for static AudioSearchResultsRanker.defaults : AudioSearchResultsRanker.Type(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AudioSearchResultsRanker.defaults.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = static AudioSearchResultsRanker.defaults;
  static AudioSearchResultsRanker.defaults = v1;
}

uint64_t static AudioSearchResultsRanker.rankSearchResults(audioSearch:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v60 - v8;
  v10 = type metadata accessor for AudioSearch.Result.Item();
  v11 = OUTLINED_FUNCTION_14(v10);
  v61 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v60 = v16 - v15;
  v17 = type metadata accessor for AudioSearchResultsRanker.AudioSearchResultRankingItem();
  v18 = OUTLINED_FUNCTION_14(v17);
  v71 = v19;
  v72 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v24 = v23 - v22;
  v25 = type metadata accessor for AudioSearch.SpotlightResult();
  v26 = OUTLINED_FUNCTION_14(v25);
  v69 = v27;
  v70 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_36();
  v32 = v31 - v30;
  if (one-time initialization token for defaults != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  OUTLINED_FUNCTION_3_44();
  if (static AudioSearchResultsRanker.defaults && (v33 = static AudioSearchResultsRanker.defaults, v34 = MEMORY[0x25F89F4C0](0xD000000000000016, 0x800000025DBF6960), v35 = [v33 stringForKey_], v33, v34, v35))
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v68 = a1;
  v39 = AudioSearchCriteria.spotlightSearchResults.getter();
  v40 = *(v39 + 16);
  if (v40)
  {
    v63 = v36;
    v64 = v38;
    v65 = v5;
    v66 = v9;
    v67 = v10;
    v41 = v69 + 16;
    v69 = *(v69 + 16);
    v42 = *(v41 + 64);
    v62 = v39;
    v43 = v39 + ((v42 + 32) & ~v42);
    v44 = *(v41 + 56);
    v45 = (v41 + 16);
    v46 = MEMORY[0x277D84F90];
    do
    {
      v47 = v70;
      (v69)(v32, v43, v70);
      (*v45)(v24, v32, v47);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1, v46);
        v46 = v50;
      }

      v49 = *(v46 + 16);
      v48 = *(v46 + 24);
      if (v49 >= v48 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v46);
        v46 = v51;
      }

      *(v46 + 16) = v49 + 1;
      outlined init with take of AudioSearchResultsRanker.AudioSearchResultRankingItem(v24, v46 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v49);
      v43 += v44;
      --v40;
    }

    while (v40);

    v9 = v66;
    v10 = v67;
    v38 = v64;
    v5 = v65;
    v36 = v63;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  if (v38)
  {
    if (v36 == 0x676F6C61746163 && v38 == 0xE700000000000000)
    {
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v53 & 1) == 0)
      {
        return v46;
      }
    }

    AudioSearchCriteria.privateSearchResult.getter();
    v54 = type metadata accessor for AudioSearch.Result();
    if (__swift_getEnumTagSinglePayload(v5, 1, v54) == 1)
    {
      outlined destroy of (offset: Int, element: SearchResult)(v5, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMR);
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    }

    else
    {
      AudioSearch.Result.searchResult.getter();
      (*(*(v54 - 8) + 8))(v5, v54);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        v56 = v60;
        v55 = v61;
        (*(v61 + 32))(v60, v9, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch05AudioE13ResultsRankerC0fE17ResultRankingItemOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch05AudioE13ResultsRankerC0fE17ResultRankingItemOGMR);
        v57 = *(v71 + 72);
        v58 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_25DBC8180;
        (*(v55 + 16))(v46 + v58, v56, v10);
        swift_storeEnumTagMultiPayload();
        (*(v55 + 8))(v56, v10);
        return v46;
      }
    }

    outlined destroy of (offset: Int, element: SearchResult)(v9, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMR);
    return MEMORY[0x277D84F90];
  }

  return v46;
}

uint64_t type metadata accessor for AudioSearchResultsRanker.AudioSearchResultRankingItem()
{
  result = type metadata singleton initialization cache for AudioSearchResultsRanker.AudioSearchResultRankingItem;
  if (!type metadata singleton initialization cache for AudioSearchResultsRanker.AudioSearchResultRankingItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of AudioSearchResultsRanker.AudioSearchResultRankingItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSearchResultsRanker.AudioSearchResultRankingItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for AudioSearchResultsRanker.AudioSearchResultRankingItem()
{
  result = type metadata accessor for AudioSearch.Result.Item();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AudioSearch.SpotlightResult();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_58()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_44()
{

  return swift_beginAccess();
}

void __swiftcall AppEntityItem.init(id:bundleId:typeId:protocolId:)(OmniSearch::AppEntityItem *__return_ptr retstr, Swift::String id, Swift::String bundleId, Swift::String typeId, Swift::String_optional protocolId)
{
  retstr->id = id;
  retstr->bundleId = bundleId;
  retstr->typeId = typeId;
  retstr->protocolId = protocolId;
}

uint64_t AppEntityItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t AppEntityItem.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t AppEntityItem.typeId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t AppEntityItem.protocolId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

uint64_t AppEntityItem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEA00000000006449)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t AppEntityItem.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x644965707974;
      break;
    case 3:
      result = 0x6C6F636F746F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppEntityItem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppEntityItem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppEntityItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppEntityItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppEntityItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch13AppEntityItemV10CodingKeys33_6C70F28289EC0810F93B8D49DB135D0FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch13AppEntityItemV10CodingKeys33_6C70F28289EC0810F93B8D49DB135D0FLLOGMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v19 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v19[5] = v1[3];
  v19[6] = v13;
  v14 = v1[4];
  v19[3] = v1[5];
  v19[4] = v14;
  v15 = v1[6];
  v19[1] = v1[7];
  v19[2] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v17 = v19[7];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v17)
  {
    v22 = 1;
    OUTLINED_FUNCTION_20_9();
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = 2;
    OUTLINED_FUNCTION_20_9();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = 3;
    OUTLINED_FUNCTION_20_9();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys);
  }

  return result;
}

uint64_t AppEntityItem.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch13AppEntityItemV10CodingKeys33_6C70F28289EC0810F93B8D49DB135D0FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch13AppEntityItemV10CodingKeys33_6C70F28289EC0810F93B8D49DB135D0FLLOGMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppEntityItem.CodingKeys and conformance AppEntityItem.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v37[0]) = 0;
  OUTLINED_FUNCTION_2_42();
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v15;
  LOBYTE(v37[0]) = 1;
  OUTLINED_FUNCTION_2_42();
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v17;
  v29 = v16;
  LOBYTE(v37[0]) = 2;
  OUTLINED_FUNCTION_2_42();
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v18;
  v38 = 3;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v20;
  (*(v8 + 8))(v12, v5);
  v22 = v32;
  *&v33 = v14;
  *(&v33 + 1) = v32;
  v24 = v29;
  v23 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v19;
  *(&v36 + 1) = v21;
  v25 = v34;
  *a2 = v33;
  a2[1] = v25;
  v26 = v36;
  a2[2] = v35;
  a2[3] = v26;
  outlined init with copy of AppEntityItem(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37[0] = v14;
  v37[1] = v22;
  v37[2] = v24;
  v37[3] = v31;
  v37[4] = v28;
  v37[5] = v23;
  v37[6] = v19;
  v37[7] = v21;
  return outlined destroy of AppEntityItem(v37);
}

unint64_t instantiation function for generic protocol witness table for AppEntityItem(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem();
  a1[2] = lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem();
  result = lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppEntityItem and conformance AppEntityItem()
{
  result = lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem;
  if (!lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem;
  if (!lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem;
  if (!lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem;
  if (!lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityItem and conformance AppEntityItem);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppEntityItem(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  return _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA09AppEntityC0V_Tt1B5() & 1;
}

_BYTE *storeEnumTagSinglePayload for AppEntityItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  OUTLINED_FUNCTION_155_3();
  lazy protocol witness table accessor for type FlightSnippet.Status and conformance FlightSnippet.Status();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_6_32();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_155_3();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_155_3();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_155_3();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_155_3();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_6_32();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_6_32();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_6_32();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnswerSynthesisModelResult.AnswerResponse.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnswerSynthesisModelResult.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnswerSynthesisRequest.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchToolIntentRequest.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StructuredQueryEntity.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PreExtractedCard.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PreExtractedContact.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PreExtractedBreadcrumb.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PreExtractedSharedLink.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, MobileGestalt.DeviceClass.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, OmniSearchOptions.CodingKeys.rawValue.getter);
}

{
  OUTLINED_FUNCTION_155_3();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchType.rawValue.getter);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_155_3();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_155_3();
  a2(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t SearchEntityTypeIdentifier.bundleId.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchEntityTypeIdentifier.bundleId : SearchEntityTypeIdentifier(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v6 = a2[1];

  SearchEntityTypeIdentifier.bundleId.setter();
}

uint64_t (*SearchEntityTypeIdentifier.bundleId.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchEntityTypeIdentifier.typeName.getter()
{
  v1 = *(v0 + 8);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path getter for SearchEntityTypeIdentifier.typeName : SearchEntityTypeIdentifier@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = SearchEntityTypeIdentifier.typeName.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SearchEntityTypeIdentifier.typeName : SearchEntityTypeIdentifier(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v6 = a2[1];

  SearchEntityTypeIdentifier.typeName.setter();
}

uint64_t (*SearchEntityTypeIdentifier.typeName.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 8);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntityTypeIdentifier.description.getter()
{
  v1 = v0[1];
  v2 = *v0;
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();
  if (v7)
  {
    v3 = v6;
  }

  else
  {
    v3 = 7104878;
  }

  if (v7)
  {
    v4 = v7;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  _StringGuts.grow(_:)(29);

  MEMORY[0x25F89F6C0]();

  MEMORY[0x25F89F6C0](0x4E65707974207C20, 0xED0000203A656D61);
  MEMORY[0x25F89F6C0](v3, v4);

  MEMORY[0x25F89F6C0](62, 0xE100000000000000);
  return 0x49656C646E75623CLL;
}

uint64_t SearchEntityTypeIdentifier.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_3_45();
  LocalizedStringResource.init(stringLiteral:)();
  v6 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v7 = EntityProperty<>.init(title:)();
  EntityProperty.wrappedValue.setter();
  result = EntityProperty.wrappedValue.setter();
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t SearchEntityTypeIdentifier.init(bundleId:typeName:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_3_45();
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  a1[1] = EntityProperty<>.init(title:)();
  EntityProperty.wrappedValue.setter();
  return EntityProperty.wrappedValue.setter();
}

uint64_t static SearchEntityTypeIdentifier.make(identifier:)(uint64_t a1)
{
  v2 = type metadata accessor for TypeIdentifier.PrimitiveTypeIdentifier();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for TypeIdentifier();
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v21 = (v20 - v19);
  (*(v16 + 16))(v20 - v19, a1, v13);
  v22 = *(v16 + 88);
  v23 = OUTLINED_FUNCTION_232();
  v25 = v24(v23);
  if (v25 != *MEMORY[0x277D72D50])
  {
    if (v25 == *MEMORY[0x277D72D28])
    {
      v36 = *(v16 + 96);
      v37 = OUTLINED_FUNCTION_232();
      v38(v37);
      v39 = *(*v21 + 16);
      v40 = *(*v21 + 24);
      v41 = *(*v21 + 32);
      v42 = *(*v21 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_25DBC8180;

      SearchEntityTypeIdentifier.init(bundleId:typeName:)((v35 + 32));
      goto LABEL_6;
    }

    v43 = *(v16 + 8);
    v44 = OUTLINED_FUNCTION_232();
    v45(v44);
    return MEMORY[0x277D84F90];
  }

  v26 = *(v16 + 96);
  v27 = OUTLINED_FUNCTION_232();
  v28(v27);
  v29 = *v21;
  v30 = swift_projectBox();
  v31 = *(v5 + 16);
  v31(v12, v30, v2);
  v31(v9, v12, v2);
  v32 = (*(v5 + 88))(v9, v2);
  v33 = *MEMORY[0x277D72CC0];
  v34 = *(v5 + 8);
  v34(v9, v2);
  if (v32 != v33)
  {
    v34(v12, v2);

    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25DBC9D00;
  SearchEntityTypeIdentifier.init(bundleId:typeName:)((v35 + 32));
  SearchEntityTypeIdentifier.init(bundleId:typeName:)((v35 + 48));
  v34(v12, v2);
LABEL_6:

  return v35;
}

uint64_t SearchEntityTypeIdentifier.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchEntityTypeIdentifier.CodingKeys.init(rawValue:), v2);

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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchEntityTypeIdentifier.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SearchEntityTypeIdentifier.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SearchEntityTypeIdentifier.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchEntityTypeIdentifier.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25D871F24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchEntityTypeIdentifier.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = SearchEntityTypeIdentifier.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchEntityTypeIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchEntityTypeIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchEntityTypeIdentifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E20EntityTypeIdentifierV10CodingKeys33_9B6449479475CF1649D68D7A6FF0C588LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E20EntityTypeIdentifierV10CodingKeys33_9B6449479475CF1649D68D7A6FF0C588LLOGMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = *v1;
  v15[3] = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  EntityProperty.wrappedValue.getter();
  LOBYTE(v15[0]) = 0;
  OUTLINED_FUNCTION_8_33();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {

    EntityProperty.wrappedValue.getter();
    LOBYTE(v15[0]) = 1;
    OUTLINED_FUNCTION_8_33();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v6 + 8))(v11, v4);
}

unint64_t lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys);
  }

  return result;
}

uint64_t SearchEntityTypeIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E20EntityTypeIdentifierV10CodingKeys33_9B6449479475CF1649D68D7A6FF0C588LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E20EntityTypeIdentifierV10CodingKeys33_9B6449479475CF1649D68D7A6FF0C588LLOGMR);
  OUTLINED_FUNCTION_14(v4);
  v20 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = OUTLINED_FUNCTION_114(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_3_45();
  LocalizedStringResource.init(stringLiteral:)();
  v13 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v14 = EntityProperty<>.init(title:)();
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchEntityTypeIdentifier.CodingKeys and conformance SearchEntityTypeIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_34();
    KeyedDecodingContainer.decode(_:forKey:)();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_11_34();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    EntityProperty.wrappedValue.setter();
    v17 = *(v20 + 8);
    v18 = OUTLINED_FUNCTION_232();
    v19(v18);
    *a2 = v13;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t static SearchEntityTypeIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  return static EntityProperty<>.== infix(_:_:)() & 1;
}

uint64_t static SearchEntityTypeIdentifier.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_57();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchEntityTypeIdentifier.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchEntityTypeIdentifier.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_57();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchEntityTypeIdentifier.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchEntityTypeIdentifier.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_1_57();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchEntityTypeIdentifier.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t SearchEntityTypeIdentifier.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v14 = OUTLINED_FUNCTION_114(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v33 - v26;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  v33 = *v0;
  v29._countAndFlagsBits = SearchEntityTypeIdentifier.description.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v29);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v20 + 16))(v24, v27, v17);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v17);
  v31 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v31);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v20 + 8))(v27, v17);
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchEntityTypeIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchEntityTypeIdentifier()
{
  lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchEntityTypeIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchEntityTypeIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier();

  return MEMORY[0x28210C4B8](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for SearchEntityTypeIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_57()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_32()
{

  return Hasher.init(_seed:)();
}

uint64_t GeoLocation.metadata.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v9 = *(v0 + 72);
  v8 = *(v0 + 76);
  v10 = *(v0 + 80);
  v33 = *(v0 + 56);
  v34 = *(v0 + 96);
  v35 = *(v0 + 88);
  v36 = *(v0 + 104);
  v37 = *(v0 + 112);
  v38 = *(v0 + 120);
  v39 = *(v0 + 128);
  v40 = *(v0 + 136);
  v31 = *(v0 + 144);
  v32 = *(v0 + 152);
  v41 = *(v0 + 148);
  v42 = *(v0 + 156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBD9E40;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0x73736572646461;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  strcpy((inited + 96), "thoroughfare");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0x647261437370616DLL;
  *(inited + 136) = 0xEB000000006C7255;
  *(inited + 144) = v33;
  *(inited + 152) = v7;
  *(inited + 160) = 0x656475746974616CLL;
  *(inited + 168) = 0xE800000000000000;
  v12 = 0xE000000000000000;

  Float.write<A>(to:)();
  *(inited + 176) = 0;
  *(inited + 184) = 0xE000000000000000;
  *(inited + 192) = 0x64757469676E6F6CLL;
  *(inited + 200) = 0xE900000000000065;
  Float.write<A>(to:)();
  *(inited + 208) = 0;
  *(inited + 216) = 0xE000000000000000;
  *(inited + 224) = 0x6E6F6870656C6574;
  *(inited + 232) = 0xE900000000000065;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  MEMORY[0x25F89F8A0](v13, MEMORY[0x277D837D0]);
  v15 = v14;

  v16 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x25F89F6C0](v16, v15);

  *(inited + 240) = 0;
  *(inited + 248) = 0xE000000000000000;
  *(inited + 256) = 0x65746973626577;
  *(inited + 264) = 0xE700000000000000;
  if (v34)
  {
    v17 = v34;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x25F89F6C0](v18, v17);

  *(inited + 272) = 0;
  *(inited + 280) = 0xE000000000000000;
  *(inited + 288) = 0x6F746F68506D756ELL;
  *(inited + 296) = 0xE900000000000073;
  if (v36)
  {
    v19 = *(v36 + 16);
  }

  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F89F6C0](v20);

  *(inited + 304) = 0;
  *(inited + 312) = 0xE000000000000000;
  *(inited + 320) = 0x79726F6765746163;
  *(inited + 328) = 0xE800000000000000;
  if (v38)
  {
    v21 = v38;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v22 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x25F89F6C0](v22, v21);

  *(inited + 336) = 0;
  *(inited + 344) = 0xE000000000000000;
  *(inited + 352) = 0x6765746163627573;
  *(inited + 360) = 0xEB0000000079726FLL;
  if (v40)
  {
    v23 = v40;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v24 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x25F89F6C0](v24, v23);

  *(inited + 368) = 0;
  *(inited + 376) = 0xE000000000000000;
  *(inited + 384) = 0x656D69546E65706FLL;
  *(inited + 392) = 0xE800000000000000;
  if (v41)
  {
    v25 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v25 = BinaryInteger.description.getter();
    v12 = v26;
  }

  MEMORY[0x25F89F6C0](v25, v12);

  *(inited + 400) = 0;
  *(inited + 408) = 0xE000000000000000;
  *(inited + 416) = 0x6D695465736F6C63;
  *(inited + 424) = 0xE900000000000065;
  v27 = 0xE000000000000000;
  if (v42)
  {
    v28 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v28 = BinaryInteger.description.getter();
    v27 = v29;
  }

  MEMORY[0x25F89F6C0](v28, v27);

  *(inited + 432) = 0;
  *(inited + 440) = 0xE000000000000000;
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t GeoLocation.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_94();
}

uint64_t GeoLocation.address.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_94();
}

uint64_t GeoLocation.thoroughfare.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_94();
}

uint64_t GeoLocation.mapsCardUrl.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_94();
}

uint64_t GeoLocation.website.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_94();
}

uint64_t GeoLocation.category.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_94();
}

uint64_t GeoLocation.subcategory.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_94();
}

uint64_t GeoLocation.openNow.getter()
{
  v1 = 0x616C696176616E75;
  v2 = type metadata accessor for Calendar();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  if (*(v0 + 148) & 1) != 0 || (*(v0 + 156))
  {
    return v1;
  }

  v21 = *(v0 + 144);
  v22 = *(v0 + 152);
  static Date.now.getter();
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  (*(v5 + 8))(v9, v2);
  result = Date.timeIntervalSince(_:)();
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v24 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v24 < 4294967300.0)
  {
    v25 = v21 <= v24;
    v26 = v22 > v24;
    v27 = *(v13 + 8);
    v27(v17, v10);
    v27(v20, v10);
    if (v25 && v26)
    {
      return 1852141679;
    }

    else
    {
      return 0x6465736F6C63;
    }
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t GeoLocation.init(uid:name:address:thoroughfare:mapsCardUrl:latitude:longitude:telephone:website:photos:category:subcategory:openTime:closeTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, int a18, char a19, int a20, char a21)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12;
  *(a9 + 72) = a10;
  *(a9 + 76) = a11;
  *(a9 + 80) = a13;
  *(a9 + 96) = a14;
  *(a9 + 112) = a15;
  *(a9 + 128) = a16;
  *(a9 + 136) = a17;
  *(a9 + 144) = a18;
  *(a9 + 148) = a19 & 1;
  *(a9 + 152) = a20;
  *(a9 + 156) = a21 & 1;
  return result;
}

uint64_t GeoLocation.description.getter()
{
  v1 = *v0;
  memcpy(v44, v0 + 1, 0x95uLL);
  v2 = GeoLocation.metadata.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v43 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v41 = v43;
    result = specialized Dictionary.startIndex.getter(v2);
    v7 = result;
    v8 = 0;
    v9 = v2 + 64;
    v36 = v5;
    v37 = v3;
    v35 = v2 + 72;
    v38 = v2 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v5)
      {
        goto LABEL_23;
      }

      v40 = v5;
      v39 = v6;
      v11 = *(v2 + 56);
      v12 = (*(v2 + 48) + 16 * v7);
      v13 = v2;
      v14 = *v12;
      v15 = v12[1];
      v16 = (v11 + 16 * v7);
      v17 = *v16;
      v18 = v16[1];
      v42 = v14;
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
      MEMORY[0x25F89F6C0](v17, v18);

      v19 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v19 = v41;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v42;
      *(v22 + 40) = v15;
      v23 = 1 << *(v13 + 32);
      if (v7 >= v23)
      {
        goto LABEL_24;
      }

      v2 = v13;
      v9 = v38;
      v24 = *(v38 + 8 * v10);
      if ((v24 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      v41 = v19;
      if (*(v2 + 36) != v40)
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v7 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v28 = (v35 + 8 * v10);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = outlined consume of [String : String].Index._Variant(v7, v40, v39 & 1);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = outlined consume of [String : String].Index._Variant(v7, v40, v39 & 1);
      }

LABEL_19:
      v6 = 0;
      ++v8;
      v7 = v23;
      v5 = v36;
      if (v8 == v37)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
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
LABEL_20:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    v44[0] = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v44[0] = 0x800000025DBF6A20;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x25F89F6C0](v34);

    MEMORY[0x25F89F6C0](0x202020200A2CLL, 0xE600000000000000);
    MEMORY[0x25F89F6C0](v31, v33);

    MEMORY[0x25F89F6C0](32010, 0xE200000000000000);
    return 0xD000000000000018;
  }

  return result;
}

uint64_t GeoLocation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580597 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867756F726F6874 && a2 == 0xEC00000065726166;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x647261437370616DLL && a2 == 0xEB000000006C7255;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F6870656C6574 && a2 == 0xE900000000000065;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65746973626577 && a2 == 0xE700000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x736F746F6870 && a2 == 0xE600000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6765746163627573 && a2 == 0xEB0000000079726FLL;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656D69546E65706FLL && a2 == 0xE800000000000000;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6D695465736F6C63 && a2 == 0xE900000000000065)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

uint64_t GeoLocation.CodingKeys.stringValue.getter(char a1)
{
  result = 6580597;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x73736572646461;
      break;
    case 3:
      result = 0x6867756F726F6874;
      break;
    case 4:
      result = 0x647261437370616DLL;
      break;
    case 5:
      result = 0x656475746974616CLL;
      break;
    case 6:
      result = 0x64757469676E6F6CLL;
      break;
    case 7:
      result = 0x6E6F6870656C6574;
      break;
    case 8:
      result = 0x65746973626577;
      break;
    case 9:
      result = 0x736F746F6870;
      break;
    case 10:
      result = 0x79726F6765746163;
      break;
    case 11:
      result = 0x6765746163627573;
      break;
    case 12:
      result = 0x656D69546E65706FLL;
      break;
    case 13:
      result = 0x6D695465736F6C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoLocation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GeoLocation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance GeoLocation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = GeoLocation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch11GeoLocationV10CodingKeys33_8ADBA5725DDAB9AD0A9961CAA9B13A45LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch11GeoLocationV10CodingKeys33_8ADBA5725DDAB9AD0A9961CAA9B13A45LLOGMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v47 = v1[2];
  v48 = v9;
  v46 = v11;
  v12 = v1[4];
  v13 = v1[5];
  v44 = v1[6];
  v45 = v12;
  v14 = v1[7];
  v42 = v1[8];
  v43 = v13;
  v16 = *(v1 + 18);
  v15 = *(v1 + 19);
  v17 = v1[11];
  v40 = v1[10];
  v41 = v14;
  v38 = v17;
  v18 = v1[13];
  v39 = v1[12];
  v19 = v1[14];
  v36 = v1[15];
  v37 = v18;
  v20 = v1[16];
  v34 = v1[17];
  v35 = v19;
  v32 = *(v1 + 36);
  v33 = v20;
  v31 = *(v1 + 148);
  v21 = *(v1 + 38);
  v22 = *(v1 + 156);
  v23 = a1[3];
  v24 = a1[4];
  v25 = a1;
  v27 = &v30 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v23);
  lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v51) = 0;
  v28 = v49;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v28)
  {
    v49 = v21;
    OUTLINED_FUNCTION_48_10(1);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_48_10(2);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_48_10(3);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_48_10(4);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v51) = 5;
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v51) = 6;
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encode(_:forKey:)();
    v51 = v40;
    v50 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_48_10(8);
    OUTLINED_FUNCTION_7_35();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v51 = v37;
    v50 = 9;
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_48_10(10);
    OUTLINED_FUNCTION_8_34();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_48_10(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v51) = 12;
    v50 = v31;
    OUTLINED_FUNCTION_12_31(v31);
    LOBYTE(v51) = 13;
    v50 = v22;
    OUTLINED_FUNCTION_12_31(v22);
  }

  return (*(v6 + 8))(v27, v3);
}

uint64_t GeoLocation.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch11GeoLocationV10CodingKeys33_8ADBA5725DDAB9AD0A9961CAA9B13A45LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch11GeoLocationV10CodingKeys33_8ADBA5725DDAB9AD0A9961CAA9B13A45LLOGMR);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_14(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v52 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v95 = v2;
    LODWORD(v16) = 0;
    LODWORD(v13) = 0;
    LODWORD(v70) = 0;
    LODWORD(a2) = 0;
    v17 = 0;
    LODWORD(v18) = 0;
    LODWORD(v19) = 0;
    v9 = 0;
    v6 = 0;
  }

  else
  {
    LOBYTE(v73[0]) = 0;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_60(1);
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v69 = v21;
    OUTLINED_FUNCTION_0_60(2);
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v68 = v23;
    OUTLINED_FUNCTION_0_60(3);
    v70 = KeyedDecodingContainer.decode(_:forKey:)();
    v67 = v24;
    OUTLINED_FUNCTION_0_60(4);
    v60 = KeyedDecodingContainer.decode(_:forKey:)();
    v66 = v25;
    OUTLINED_FUNCTION_0_60(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v26;
    v59 = v22;
    OUTLINED_FUNCTION_0_60(6);
    KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v28;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    LOBYTE(v72[0]) = 7;
    v62 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    v63 = v30;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v64 = v73[0];
    OUTLINED_FUNCTION_0_60(8);
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v32;
    v95 = 0;
    v19 = v31;
    LOBYTE(v72[0]) = 9;
    v17 = v13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v95 = 0;
    v63 = v73[0];
    OUTLINED_FUNCTION_0_60(10);
    v33 = v95;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v34;
    v95 = v33;
    if (v33)
    {
      v35 = OUTLINED_FUNCTION_4_41();
      v36(v35);
      v9 = 0;
      OUTLINED_FUNCTION_1_58();
      OUTLINED_FUNCTION_6_33();
    }

    else
    {
      OUTLINED_FUNCTION_0_60(11);
      v37 = v95;
      v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v61 = v38;
      v95 = v37;
      if (v37)
      {
        v39 = OUTLINED_FUNCTION_4_41();
        v40(v39);
        OUTLINED_FUNCTION_1_58();
        OUTLINED_FUNCTION_6_33();
        v9 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_0_60(12);
        v41 = v95;
        v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v95 = v41;
        if (!v41)
        {
          v94 = BYTE4(v56) & 1;
          v90 = 13;
          v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v95 = 0;
          v45 = v44;
          v46 = OUTLINED_FUNCTION_4_41();
          v47(v46);
          v91 = BYTE4(v45) & 1;
          v72[0] = v16;
          v72[1] = v18;
          v54 = v18;
          v49 = v68;
          v48 = v69;
          v72[2] = v69;
          v72[3] = v59;
          v72[4] = v68;
          v72[5] = v70;
          v51 = v66;
          v50 = v67;
          v72[6] = v67;
          v72[7] = v60;
          v72[8] = v66;
          v72[9] = __PAIR64__(v29, v27);
          v72[10] = v64;
          v72[11] = v19;
          v72[12] = v65;
          v72[13] = v63;
          v72[14] = v58;
          v72[15] = v62;
          v72[16] = v57;
          v72[17] = v61;
          LODWORD(v72[18]) = v56;
          v53 = v94;
          BYTE4(v72[18]) = v94;
          LODWORD(v72[19]) = v45;
          v55 = BYTE4(v45) & 1;
          BYTE4(v72[19]) = BYTE4(v45) & 1;
          memcpy(a2, v72, 0x9DuLL);
          outlined init with copy of GeoLocation(v72, v73);
          __swift_destroy_boxed_opaque_existential_1Tm(v71);
          v73[0] = v16;
          v73[1] = v54;
          v73[2] = v48;
          v73[3] = v59;
          v73[4] = v49;
          v73[5] = v70;
          v73[6] = v50;
          v73[7] = v60;
          v73[8] = v51;
          v74 = v27;
          v75 = v29;
          v76 = v64;
          v77 = v19;
          v78 = v65;
          v79 = v63;
          v80 = v58;
          v81 = v62;
          v82 = v57;
          v83 = v61;
          v84 = v56;
          v85 = v53;
          v86 = v92;
          v87 = v93;
          v88 = v45;
          v89 = v55;
          return outlined destroy of GeoLocation(v73);
        }

        v42 = OUTLINED_FUNCTION_4_41();
        v43(v42);
        LODWORD(v16) = 1;
        OUTLINED_FUNCTION_2_43();
        OUTLINED_FUNCTION_13_24();
      }
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v71);
  if (v16)
  {

    if (v13)
    {
      goto LABEL_6;
    }
  }

  else if (v13)
  {
LABEL_6:

    if ((v70 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (!v70)
  {
LABEL_7:
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:

  if (a2)
  {
LABEL_8:

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (!v17)
  {
LABEL_9:
    if (v18)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (v18)
  {
LABEL_10:

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v19)
  {
LABEL_11:
    if (v9)
    {
      goto LABEL_12;
    }

LABEL_21:
    if (!v6)
    {
      return result;
    }
  }

LABEL_20:

  if ((v9 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:

  if ((v6 & 1) == 0)
  {
    return result;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeoLocation(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s10OmniSearch0B4ItemPAAE2eeoiySbx_xtFZAA11GeoLocationV_Tt1B5() & 1;
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = _HashTable.occupiedBucket(after:)();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation.CodingKeys and conformance GeoLocation.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GeoLocation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type GeoLocation and conformance GeoLocation();
  a1[2] = lazy protocol witness table accessor for type GeoLocation and conformance GeoLocation();
  result = lazy protocol witness table accessor for type GeoLocation and conformance GeoLocation();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoLocation and conformance GeoLocation()
{
  result = lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation;
  if (!lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation;
  if (!lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation;
  if (!lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoLocation and conformance GeoLocation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoLocation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 157))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for GeoLocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 156) = 0;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 157) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 157) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GeoLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_31@<X0>(uint64_t a1@<X8>)
{

  return MEMORY[0x2821FDB20](v1 | (a1 << 32), v3 - 72, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GlobalResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GlobalResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse.CodingKeys and conformance GlobalResponse.CodingKeys);
  }

  return result;
}

uint64_t GlobalEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GlobalResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GlobalEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GlobalEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GlobalResponse.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v17 - v12;
  v14 = v4[1];
  v17 = *v4;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v13, v6);
}

unint64_t lazy protocol witness table accessor for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntity.CodingKeys and conformance GlobalEntity.CodingKeys);
  }

  return result;
}

uint64_t GlobalResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v24 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = OUTLINED_FUNCTION_14(v8);
  v23 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v16 = v23;
    v17 = v24;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    (*(v16 + 8))(v14, v8);
    *v17 = v18;
    v17[1] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlobalEntityError()
{
  Hasher.init(_seed:)();
  GlobalEntityError.hash(into:)();
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for GlobalResponse(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse();
  a1[2] = lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse();
  result = lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlobalResponse and conformance GlobalResponse()
{
  result = lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse;
  if (!lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse;
  if (!lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse;
  if (!lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse;
  if (!lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalResponse and conformance GlobalResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlobalEntityError and conformance GlobalEntityError()
{
  result = lazy protocol witness table cache variable for type GlobalEntityError and conformance GlobalEntityError;
  if (!lazy protocol witness table cache variable for type GlobalEntityError and conformance GlobalEntityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalEntityError and conformance GlobalEntityError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GlobalEntityError(_BYTE *result, int a2, int a3)
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

uint64_t GlobalItem.getParsecEntity()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_36();
  v5 = (v1 + *(type metadata accessor for GlobalItem() + 32));
  if (v5[1] >> 60 == 15)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25D85C000, v7, v8, "SageExperience data is nil", v9, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }

  else
  {
    v12 = *v5;
    v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
    v14 = OUTLINED_FUNCTION_30_5();
    outlined copy of Data?(v14, v15);
    v16 = OUTLINED_FUNCTION_30_5();
    outlined copy of Data._Representation(v16, v17);
    BinaryDecodingOptions.init()();
    OUTLINED_FUNCTION_2_44();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(v18, v19);
    OUTLINED_FUNCTION_30_5();
    Message.init(serializedData:extensions:partial:options:)();
    v20 = OUTLINED_FUNCTION_30_5();
    outlined consume of Data?(v20, v21);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v13);
  }
}

uint64_t type metadata accessor for GlobalItem()
{
  result = type metadata singleton initialization cache for GlobalItem;
  if (!type metadata singleton initialization cache for GlobalItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GlobalItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t GlobalItem.id.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GlobalItem.text.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t GlobalItem.text.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t GlobalItem.domain.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t GlobalItem.domain.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t GlobalItem.dialog.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_13_25() + 28);

  return outlined assign with take of GlobalDialog?(v0, v2);
}

uint64_t GlobalItem.parsecEntityData.getter()
{
  v1 = (v0 + *(type metadata accessor for GlobalItem() + 32));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v4, v5);
  return OUTLINED_FUNCTION_94();
}

uint64_t GlobalItem.parsecEntityData.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = v1 + *(type metadata accessor for GlobalItem() + 32);
  result = outlined consume of Data?(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t GlobalItem.lowConfidenceKnowledge.setter(char a1)
{
  result = type metadata accessor for GlobalItem();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t GlobalItem.description.getter()
{
  _StringGuts.grow(_:)(45);
  v2 = v0[4];
  v1 = v0[5];

  MEMORY[0x25F89F6C0](0xD000000000000029, 0x800000025DBF6A40);
  if (v0[3])
  {
    v3 = v0[2];
    v4 = v0[3];
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x25F89F6C0](v3, v4);

  return v2;
}

uint64_t GlobalItem.init(id:domain:dialog:text:parsecEntity:lowConfidenceKnowledge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10)
{
  v50 = a8;
  v51 = a4;
  v52 = a7;
  v54 = a5;
  v53 = a10;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
  v20 = OUTLINED_FUNCTION_14(v19);
  v49 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  v26 = v25 - v24;
  v27 = type metadata accessor for GlobalItem();
  v28 = v27[7];
  v29 = type metadata accessor for GlobalDialog();
  __swift_storeEnumTagSinglePayload(a9 + v28, 1, 1, v29);
  v55 = (a9 + v27[8]);
  *v55 = xmmword_25DBC9410;
  v30 = v27[9];
  *a9 = a1;
  a9[1] = a2;
  v31 = v52;
  a9[2] = a6;
  a9[3] = v31;
  v33 = v50;
  v32 = v51;
  a9[4] = a3;
  a9[5] = v32;
  v34 = a9 + v28;
  v35 = v54;
  outlined assign with copy of GlobalDialog?(v54, v34);
  *(a9 + v30) = v53;
  v36 = v19;
  outlined init with copy of ResourceBundle?(v33, v18, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    outlined destroy of IntentApplication?(v18, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logging.search);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_25D85C000, v38, v39, "No Parsec AppEntity attached with this item", v40, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    outlined destroy of IntentApplication?(v33, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
    outlined destroy of IntentApplication?(v35, &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
    v44 = 0;
    v45 = 0xF000000000000000;
  }

  else
  {
    v41 = v49;
    (*(v49 + 32))(v26, v18, v36);
    OUTLINED_FUNCTION_2_44();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(v42, v43);
    v44 = Message.serializedData(partial:)();
    v45 = v48;
    outlined destroy of IntentApplication?(v33, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
    outlined destroy of IntentApplication?(v35, &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
    (*(v41 + 8))(v26, v36);
  }

  v46 = v55;
  result = outlined consume of Data?(*v55, v55[1]);
  *v46 = v44;
  v46[1] = v45;
  return result;
}

uint64_t GlobalItem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000025DBF6A70 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000016 && 0x800000025DBF1930 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t GlobalItem.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x6E69616D6F64;
      break;
    case 3:
      result = 0x676F6C616964;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GlobalItem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GlobalItem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GlobalItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GlobalItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GlobalItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch10GlobalItemV10CodingKeys33_13FE250AD9A073D202DF27CC72F4890ELLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch10GlobalItemV10CodingKeys33_13FE250AD9A073D202DF27CC72F4890ELLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v28[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v29) = 0;
  OUTLINED_FUNCTION_1_37();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v29) = 1;
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v3[4];
    v19 = v3[5];
    LOBYTE(v29) = 2;
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = type metadata accessor for GlobalItem();
    v21 = v20[7];
    LOBYTE(v29) = 3;
    type metadata accessor for GlobalDialog();
    OUTLINED_FUNCTION_1_60();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(v22, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = (v3 + v20[8]);
    v25 = v24[1];
    v29 = *v24;
    v30 = v25;
    v28[15] = 4;
    outlined copy of Data?(v29, v25);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v29, v30);
    v26 = *(v3 + v20[9]);
    LOBYTE(v29) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t GlobalItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v6 = v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch10GlobalItemV10CodingKeys33_13FE250AD9A073D202DF27CC72F4890ELLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch10GlobalItemV10CodingKeys33_13FE250AD9A073D202DF27CC72F4890ELLOGMR);
  v8 = OUTLINED_FUNCTION_14(v7);
  v45 = v9;
  v46 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = v43 - v13;
  v15 = type metadata accessor for GlobalItem();
  v16 = OUTLINED_FUNCTION_17(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v21 = (v20 - v19);
  v23 = *(v22 + 28);
  v24 = type metadata accessor for GlobalDialog();
  __swift_storeEnumTagSinglePayload(v21 + v23, 1, 1, v24);
  v25 = *(v15 + 32);
  v51 = v21;
  v49 = (v21 + v25);
  v50 = a1;
  *v49 = xmmword_25DBC9410;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys();
  v47 = v14;
  v27 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v30 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    outlined destroy of IntentApplication?(v51 + v23, &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
    return outlined consume of Data?(*v30, *(v30 + 1));
  }

  else
  {
    v48 = v24;
    v28 = v45;
    LOBYTE(v52) = 0;
    v29 = OUTLINED_FUNCTION_12_32();
    v31 = v51;
    *v51 = v29;
    v31[1] = v32;
    LOBYTE(v52) = 1;
    v31[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31[3] = v33;
    v43[1] = v33;
    LOBYTE(v52) = 2;
    v34 = OUTLINED_FUNCTION_12_32();
    v35 = v49;
    v31[4] = v34;
    v31[5] = v36;
    LOBYTE(v52) = 3;
    OUTLINED_FUNCTION_1_60();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(v37, v38);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of GlobalDialog?(v6, v31 + v23);
    v54 = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v39 = v52;
    v40 = v53;
    outlined consume of Data?(*v35, *(v35 + 1));
    *v35 = v39;
    *(v35 + 1) = v40;
    LOBYTE(v52) = 5;
    LOBYTE(v39) = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = *(v15 + 36);
    (*(v28 + 8))(v47, v46);
    *(v31 + v41) = v39 & 1;
    outlined init with copy of GlobalItem(v31, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    return outlined destroy of GlobalItem(v31);
  }
}

unint64_t lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of GlobalItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t outlined destroy of GlobalItem(uint64_t a1)
{
  v2 = type metadata accessor for GlobalItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for GlobalItem(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(&lazy protocol witness table cache variable for type GlobalItem and conformance GlobalItem, type metadata accessor for GlobalItem);
  a1[2] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(&lazy protocol witness table cache variable for type GlobalItem and conformance GlobalItem, type metadata accessor for GlobalItem);
  result = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(&lazy protocol witness table cache variable for type GlobalItem and conformance GlobalItem, type metadata accessor for GlobalItem);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for GlobalItem()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GlobalDialog?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GlobalItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_12_32()
{
  v2 = *(v0 - 136);

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_13_25()
{

  return type metadata accessor for GlobalItem();
}

uint64_t GlobalSearchClient.__allocating_init(client:session:featureFlagService:xpcClient:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v10 = a1[3];
  v11 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  OUTLINED_FUNCTION_19_14();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = OUTLINED_FUNCTION_40_19(v15, v20);
  v17(v16);
  v18 = specialized GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)(v4, a2, a3, a4, v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v18;
}

uint64_t protocol witness for SageSearchClient.search(query:clientEntities:location:) in conformance SageSearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = *(MEMORY[0x277D565C8] + 4);
  v14 = (*MEMORY[0x277D565C8] + MEMORY[0x277D565C8]);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for AnswerResolvable.extractInfo(query:results:assistantLocale:) in conformance AnswerResolver;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchToolGlobalSearchXPC.searchToolGlobalSearch(request:) in conformance PommesSearchClient(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D565E0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return MEMORY[0x2821B9270](a1);
}

uint64_t *GlobalSearchClient.webDomains.unsafeMutableAddressor()
{
  if (one-time initialization token for webDomains != -1)
  {
    OUTLINED_FUNCTION_2_45();
  }

  return &static GlobalSearchClient.webDomains;
}

uint64_t static GlobalSearchClient.webDomains.getter()
{
  if (one-time initialization token for webDomains != -1)
  {
    OUTLINED_FUNCTION_2_45();
  }
}

uint64_t one-time initialization function for kGlobalSearchTimeout()
{
  result = AFIsInternalInstall();
  v1 = 5.0;
  if (result)
  {
    v1 = 30.0;
  }

  static GlobalSearchClient.kGlobalSearchTimeout = *&v1;
  return result;
}

uint64_t key path setter for GlobalSearchClient.xpcClient : GlobalSearchClient(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of Date?(a1, v5, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(v5, v3 + 88);
  return swift_endAccess();
}

uint64_t GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  OUTLINED_FUNCTION_19_14();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = OUTLINED_FUNCTION_40_19(v15, v20);
  v17(v16);
  v18 = specialized GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)(v5, a2, a3, a4, v4, v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v18;
}

uint64_t GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  *(v1 + 40) = v6;
  *(v1 + 48) = v0;
  *(v1 + 32) = v7;
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v1 + 56) = v8;
  OUTLINED_FUNCTION_21(v8);
  *(v1 + 64) = v9;
  v11 = *(v10 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_199();
  v12 = type metadata accessor for OSSignpostID();
  *(v1 + 80) = v12;
  OUTLINED_FUNCTION_21(v12);
  *(v1 + 88) = v13;
  v15 = *(v14 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  v16 = swift_task_alloc();
  v17 = *v5;
  *(v1 + 104) = v16;
  *(v1 + 112) = v17;
  v18 = *v3;
  *(v1 + 224) = *(v3 + 8);
  v19 = v3[2];
  *(v1 + 120) = v18;
  *(v1 + 128) = v19;
  *(v1 + 225) = *(v3 + 24);
  v20 = v3[9];
  *(v1 + 136) = v3[8];
  *(v1 + 144) = v20;
  *(v1 + 226) = *(v3 + 96);
  v21 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

{
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v3 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v3, static Logging.searchComponentSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 104);
    v7 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_157_0(v7);
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v4, v5, v8, "SearchTool.PegasusSearch", "", v1, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);

  (*(v12 + 16))(v9, v10, v11);
  v13 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v13);
  *(v0 + 152) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 136);
  v15 = *(v0 + 144);
  v16 = *(v0 + 225);
  v17 = *(v0 + 224);
  *(v0 + 160) = static MetricsLogger.shared;
  OUTLINED_FUNCTION_133();
  (*(v18 + 216))();
  v19 = swift_allocObject();
  *(v0 + 168) = v19;
  *(v19 + 16) = 0;
  if ((v17 & 1) == 0 && (v16 & 1) == 0)
  {
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    if (v21 != 0.0 || v20 != 0.0)
    {
      *(v19 + 16) = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v21 longitude:v20];
    }
  }

  v22 = *(v0 + 226);
  v23 = *(*(v0 + 48) + 80);
  OUTLINED_FUNCTION_133();
  if (((*(v24 + 80))(0) & 1) != 0 && v22 && ((v25 = *(v0 + 40), *v25 == v25[2]) ? (v26 = v25[1] == v25[3]) : (v26 = 0), !v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v49, static Logging.search);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v51))
    {
      v52 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v52);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    v58 = *(v0 + 112);
    v63 = *(v0 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMd, &_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMR);
    v59 = swift_task_alloc();
    *(v0 + 176) = v59;
    v59[1] = vextq_s8(v63, v63, 8uLL);
    v59[2].i64[0] = v58;
    v59[2].i64[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10OmniSearch06GlobalB6ClientC9QueryTypeOs6ResultOySayAA0bG0VGs5Error_pGGMd, &_sSDy10OmniSearch06GlobalB6ClientC9QueryTypeOs6ResultOySayAA0bG0VGs5Error_pGGMR);
    v60 = *(MEMORY[0x277D858E8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 184) = v61;
    *v61 = v62;
    v61[1] = GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:);

    return MEMORY[0x282200600](v0 + 24);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v27, static Logging.search);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v29))
    {
      v30 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v30);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    v36 = *(v0 + 112);
    v37 = *(v0 + 40);
    v38 = *(v0 + 48);

    v40 = *(v37 + 16);
    v39 = *(v37 + 24);
    *(v0 + 16) = v36;
    v41 = *(v19 + 16);
    *(v0 + 192) = v41;
    v42 = *(*v38 + 176);
    v43 = v41;
    v65 = (v42 + *v42);
    v44 = v42[1];
    v45 = swift_task_alloc();
    *(v0 + 200) = v45;
    *v45 = v0;
    v45[1] = GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:);
    v46 = *(v0 + 48);
    v47 = MEMORY[0x277D84F90];

    return v65(v40, v39, v47, v0 + 16, v41);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = v0[3];
  specialized Dictionary.subscript.getter(0, v1);
  OUTLINED_FUNCTION_56_14();
  if (!v4)
  {
    v5 = v2;
    if (v3)
    {
      specialized Dictionary.subscript.getter(1, v1);
      OUTLINED_FUNCTION_56_14();
      if (!v4)
      {
        v8 = v6;
        if (v7)
        {
          v9 = v0[20];
          v45 = v0[17];
          v46 = v0[18];
          v10 = v0[9];
          v47 = v0[8];
          v48 = v0[7];
          v49 = v0[21];

          lazy protocol witness table accessor for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError();
          v11 = swift_allocError();
          *v12 = v5;
          v12[1] = v8;
          v13 = *(*v9 + 320);
          v14 = OUTLINED_FUNCTION_53_3();
          outlined copy of Result<[SearchResult], Error>?(v14, v15);
          v16 = OUTLINED_FUNCTION_45_0();
          outlined copy of Result<[SearchResult], Error>?(v16, v17);
          v18 = OUTLINED_FUNCTION_53_3();
          outlined copy of Result<[SearchResult], Error>?(v18, v19);
          v20 = OUTLINED_FUNCTION_45_0();
          outlined copy of Result<[SearchResult], Error>?(v20, v21);
          v13(v11);

          OUTLINED_FUNCTION_133();
          (*(v22 + 232))(v45, v46, v10);
          (*(v47 + 8))(v10, v48);
          swift_allocError();
          *v23 = v5;
          v23[1] = v8;
          swift_willThrow();
          v24 = OUTLINED_FUNCTION_45_0();
          outlined consume of Result<[SearchResult], Error>?(v24, v25);
          v26 = OUTLINED_FUNCTION_53_3();
          outlined consume of Result<[SearchResult], Error>?(v26, v27);

          OUTLINED_FUNCTION_70_11();

          OUTLINED_FUNCTION_127();
          goto LABEL_9;
        }

        v29 = OUTLINED_FUNCTION_45_0();
        outlined consume of Result<[SearchResult], Error>?(v29, v30);
      }
    }

    v31 = OUTLINED_FUNCTION_53_3();
    outlined consume of Result<[SearchResult], Error>?(v31, v32);
  }

  v33 = GlobalSearchClient.rankGlobalResponses(_:)(v1);

  v34 = v0[20];
  v35 = v0[21];
  v36 = v0[18];
  v37 = v0[19];
  v38 = v0[17];
  v40 = v0[12];
  v39 = v0[13];
  v41 = v0[9];
  v42 = v0[4];
  OUTLINED_FUNCTION_133();
  (*(v43 + 224))();

  *v42 = v33;
  v42[1] = 0;
  $defer #1 () in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)();

  OUTLINED_FUNCTION_127();
LABEL_9:

  return v28();
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 216) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[9];
  v10 = v0[4];
  OUTLINED_FUNCTION_133();
  (*(v11 + 224))();

  *v10 = v1;
  v10[1] = 0;
  $defer #1 () in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)();

  OUTLINED_FUNCTION_127();

  return v12();
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 168);

  v2 = *(v0 + 208);
  OUTLINED_FUNCTION_70_11();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_201();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t $defer #1 () in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "SearchTool.PegasusSearch", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy10OmniSearch06GlobalC6ClientC9QueryTypeO_s6ResultOySayAC0cH0VGs5Error_pGt_GMd, &_sScG8IteratorVy10OmniSearch06GlobalC6ClientC9QueryTypeO_s6ResultOySayAC0cH0VGs5Error_pGt_GMR) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVyScGy10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAC0fK0VGs5Error_pGtGAG_ANtGMd, &_ss23AsyncCompactMapSequenceVyScGy10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAC0fK0VGs5Error_pGtGAG_ANtGMR);
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMR);
  v6[14] = v11;
  v12 = *(v11 - 8);
  v6[15] = v12;
  v13 = *(v12 + 64) + 15;
  v6[16] = swift_task_alloc();
  v14 = *(type metadata accessor for UserQuery() - 8);
  v6[17] = v14;
  v6[18] = *(v14 + 64);
  v6[19] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:), 0, 0);
}

uint64_t closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v25 = v0[16];
  v21 = v0[13];
  v24 = v0[12];
  v22 = v0[11];
  v23 = v0[10];
  v5 = v0[8];
  v16 = v0[9];
  v6 = v0[7];
  v19 = v6;
  v15 = v0[6];
  v18 = v0[5];
  v20 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v20);
  _s10OmniSearch0B6ResultVWOcTm_9(v6, v1, type metadata accessor for UserQuery);
  v17 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = (v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v15;
  _s10OmniSearch0B6ResultVWObTm_5(v1, v9 + v17, type metadata accessor for UserQuery);
  *(v9 + v7) = v5;
  *(v9 + v8) = v16;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntF10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAE0fK0VGs5Error_pGt_Tg5(v2, &async function pointer to partial apply for closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:), v9);
  outlined destroy of IntentApplication?(v2, &_sScPSgMd, &_sScPSgMR);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v20);
  _s10OmniSearch0B6ResultVWOcTm_9(v19, v1, type metadata accessor for UserQuery);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v15;
  _s10OmniSearch0B6ResultVWObTm_5(v1, v10 + v17, type metadata accessor for UserQuery);
  *(v10 + v7) = v5;
  *(v10 + v8) = v16;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntF10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAE0fK0VGs5Error_pGt_Tg5(v2, &async function pointer to partial apply for closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:), v10);
  outlined destroy of IntentApplication?(v2, &_sScPSgMd, &_sScPSgMR);
  v0[2] = *v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGy10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtGMd, &_sScGy10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMd, &_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMR);
  lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type TaskGroup<(GlobalSearchClient.QueryType, Result<[SearchResult], Error>)> and conformance TaskGroup<A>, &_sScGy10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtGMd, &_sScGy10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtGMR);
  AsyncCompactMapSequence.init(_:transform:)();
  MEMORY[0x25F8A0490](v22);
  v11 = v0[3];
  TaskGroup.makeAsyncIterator()();
  MEMORY[0x25F8A04D0](v22);
  (*(v24 + 8))(v21, v22);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v0[21] = MEMORY[0x277D84F98];
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_14_27(v12);

  return (_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5)(v13);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v1;
  *(v2 + 184) = v6;
  *(v2 + 192) = v7;
  *(v2 + 200) = v8;

  if (!v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  return result;
}

{
  v1 = *(v0 + 184);
  if (v1 == 2)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 152);
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 32);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    *v7 = v3;

    OUTLINED_FUNCTION_127();

    return v8();
  }

  else
  {
    v10 = *(v0 + 192);
    v11 = *(v0 + 168);
    v12 = *(v0 + 200);
    outlined copy of Result<[SearchResult], Error>(v10, v12 & 1);
    swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v12 & 1, v1 & 1);
    v13 = OUTLINED_FUNCTION_32_0();
    outlined consume of (GlobalSearchClient.QueryType, Result<[SearchResult], Error>)?(v13, v14, v12);
    *(v0 + 168) = v11;
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v16 = OUTLINED_FUNCTION_14_27();

    return _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5(v16, v17);
  }
}

uint64_t closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:), 0, 0);
}

uint64_t closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = *v3;
  v6 = v3[1];
  OUTLINED_FUNCTION_55_15(v0[9]);
  OUTLINED_FUNCTION_68_16();
  v8 = *(v7 + 176);
  v23 = v7 + 176;
  v9 = v1;
  v22 = v8 + *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:);
  v12 = v0[7];
  OUTLINED_FUNCTION_46_19();
  OUTLINED_FUNCTION_61_18();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *(v7 + 88);
  v10 = *v1;
  OUTLINED_FUNCTION_11();
  *v11 = v10;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_201();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  **(v0 + 48) = 0;
  return OUTLINED_FUNCTION_15_29(v1);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v2, static Logging.search);
  v3 = v1;
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_13();
  if (OUTLINED_FUNCTION_143_8())
  {
    v5 = *(v0 + 104);
    OUTLINED_FUNCTION_51_0();
    v6 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_75_14(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v7);
    OUTLINED_FUNCTION_205_3(&dword_25D85C000, v8, v9, "GlobalSearch: Encountered an error when federating with the raw query: %@");
    outlined destroy of IntentApplication?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_65_20();
  *v10 = 0;
  *(v10 + 8) = v11;
  *(v10 + 16) = v12;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_201();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAE0fK0VGs5Error_pGt_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  outlined init with copy of Date?(a1, v22 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of IntentApplication?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    v13 = *(a3 + 24);
    v14 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMd, &_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMR);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a1;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:), 0, 0);
}

uint64_t closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  OUTLINED_FUNCTION_55_15(v0[9]);
  OUTLINED_FUNCTION_68_16();
  v8 = *(v7 + 176);
  v23 = v7 + 176;
  v9 = v1;
  v22 = v8 + *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:);
  v12 = v0[7];
  OUTLINED_FUNCTION_46_19();
  OUTLINED_FUNCTION_61_18();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *(v7 + 88);
  v10 = *v1;
  OUTLINED_FUNCTION_11();
  *v11 = v10;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_201();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  **(v0 + 48) = 1;
  return OUTLINED_FUNCTION_15_29(v1);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v2, static Logging.search);
  v3 = v1;
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_13();
  if (OUTLINED_FUNCTION_143_8())
  {
    v5 = *(v0 + 104);
    OUTLINED_FUNCTION_51_0();
    v6 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_75_14(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v7);
    OUTLINED_FUNCTION_205_3(&dword_25D85C000, v8, v9, "GlobalSearch: Encountered an error when federating with the rewritten query: %@");
    outlined destroy of IntentApplication?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_65_20();
  *v10 = 1;
  *(v10 + 8) = v11;
  *(v10 + 16) = v12;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_201();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t closure #3 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = *a2;
  v3 = *(a2 + 8);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 33) = *(a2 + 16);
  return MEMORY[0x2822009F8](closure #3 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:), 0, 0);
}

uint64_t closure #3 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 33);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *v3 = *(v0 + 32);
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  outlined copy of Result<[SearchResult], Error>(v2, v1);
  OUTLINED_FUNCTION_127();

  return v4();
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[18] = v4;
  v3[19] = v6;

  return MEMORY[0x2822009F8](_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY0_, v4, v6);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY0_()
{
  OUTLINED_FUNCTION_78();
  v1 = v0[17];
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMR);
  v0[21] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  v2 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_24_23(&lazy protocol witness table cache variable for type TaskGroup<(GlobalSearchClient.QueryType, Result<[SearchResult], Error>)>.Iterator and conformance TaskGroup<A>.Iterator);
  v4 = *(MEMORY[0x277D856D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[22] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_31(v5);

  return MEMORY[0x282200310](v7);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TQ1_()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 144);
    v10 = *(v3 + 152);
    v11 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY3_;
  }

  else
  {
    (*(v3 + 168))();
    v9 = *(v3 + 144);
    v10 = *(v3 + 152);
    v11 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY2_;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY2_()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  v3 = *(v0 + 88);
  *(v0 + 65) = v3;
  if (v1 == 2)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 136);
    *(v0 + 48) = v1 & 1;
    *(v0 + 56) = v2;
    *(v0 + 64) = v3 & 1;
    v8 = MEMORY[0x25F8A04B0](v6);
    *(v0 + 200) = v9;
    v13 = (v8 + *v8);
    v10 = v8[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 208) = v11;
    *v11 = v12;
    v11[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TQ4_;

    return v13(v0 + 96, v0 + 48);
  }
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY3_()
{
  OUTLINED_FUNCTION_48();
  (*(v0 + 168))();
  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TQ4_()
{
  OUTLINED_FUNCTION_72();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v3 = v2;
  v4 = v1[26];
  v5 = v1[25];
  v6 = v1[24];
  v7 = v1[23];
  v8 = *v0;
  v9 = *(v2 + 65);
  OUTLINED_FUNCTION_11();
  *v10 = v8;

  outlined consume of (GlobalSearchClient.QueryType, Result<[SearchResult], Error>)?(v7, v6, v9);
  v11 = v1[19];
  v12 = v1[18];

  return MEMORY[0x2822009F8](_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY5_, v12, v11);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY5_()
{
  OUTLINED_FUNCTION_78();
  if (*(v0 + 96) == 2)
  {
    v1 = *(v0 + 136);
    *(v0 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMR);
    *(v0 + 168) = AsyncCompactMapSequence.Iterator.baseIterator.modify();
    v2 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_24_23(&lazy protocol witness table cache variable for type TaskGroup<(GlobalSearchClient.QueryType, Result<[SearchResult], Error>)>.Iterator and conformance TaskGroup<A>.Iterator);
    v4 = *(MEMORY[0x277D856D8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 176) = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_10_31();

    return MEMORY[0x282200310](v7);
  }

  else
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 8);
    v10 = *(v0 + 112);

    return v9();
  }
}

uint64_t GlobalSearchClient.search(content:entities:sources:location:)()
{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v1[2] = v2;
  v1[3] = v3;
  v5 = *v4;
  v1[4] = v0;
  v1[5] = v5;
  v6 = swift_task_alloc();
  v1[6] = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_84(v6);
  OUTLINED_FUNCTION_201();

  return GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_127();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

{
  OUTLINED_FUNCTION_78();
  v8 = v0;
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[3];
    v7 = v0[5];
    v4 = GlobalSearchClient.handleSageResponse(_:associatedQuery:sources:allowClientExperience:)(v1, v2, v3, &v7, 0);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_62();

  return v5(v4);
}

uint64_t GlobalSearchClient.rawResponseSearch(content:location:entities:useXPC:)()
{
  OUTLINED_FUNCTION_72();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_32_27(v4);

  return GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v1;
  *(v2 + 48) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_127();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

{
  OUTLINED_FUNCTION_72();
  v23 = v0;
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
    v3 = dispatch thunk of PommesResponse.experiences.getter();
    if (specialized Array.count.getter(v3))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25F89FFD0](0, v3);
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = v4;

      dispatch thunk of Experience.queryConfidence.getter();
      if (v6 == 1.0)
      {
        v7 = v0[2];
        v8 = v0[3];
        v22 = 2;
        v9 = GlobalSearchClient.handleSageResponse(_:associatedQuery:sources:allowClientExperience:)(v1, v7, v8, &v22, 1);

        v10 = v0[6];
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v11, static Logging.search);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_77_5(v13))
    {
      v14 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v14);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_37_0();
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_15:
  v20 = v0[1];

  return v20(v10, v9);
}

uint64_t GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  *(v1 + 216) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  *(v1 + 88) = v6;
  v7 = type metadata accessor for TimeoutError();
  *(v1 + 128) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 136) = v8;
  v10 = *(v9 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for CancellationError();
  *(v1 + 152) = v11;
  OUTLINED_FUNCTION_21(v11);
  *(v1 + 160) = v12;
  v14 = *(v13 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_199();
  v15 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for kGlobalSearchTimeout != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 216);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = static GlobalSearchClient.kGlobalSearchTimeout;
  v8 = swift_allocObject();
  *(v0 + 176) = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v1;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v4;
  *(v8 + 56) = v2;
  v9 = *(MEMORY[0x277D61CC0] + 4);

  v10 = v2;
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSgMd, &_s21SiriInformationSearch14PommesResponseCSgMR);
  *v11 = v0;
  v11[1] = GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:);
  v13.n128_u64[0] = v7;

  return MEMORY[0x2821C8618](v0 + 64, &async function pointer to partial apply for closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:), v8, v12, v13);
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
  *(v3 + 192) = v0;

  if (!v0)
  {
    v9 = *(v3 + 176);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[8];
  v2 = v0[21];
  v3 = v0[18];

  OUTLINED_FUNCTION_62();

  return v4(v1);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];

  v0[9] = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v6 = v0[24];
    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v7, static Logging.search);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[24];
    if (v11)
    {
      OUTLINED_FUNCTION_51_0();
      v13 = OUTLINED_FUNCTION_152_0();
      *v4 = 138412290;
      v14 = v12;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_57_16(v15);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      outlined destroy of IntentApplication?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {
    }

    v34 = v0[21];
    v35 = v0[18];

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_201();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  else
  {
    v21 = v0[24];
    v22 = v0[18];
    v23 = v0[16];
    v0[10] = v21;
    v24 = v21;
    if (swift_dynamicCast())
    {
      (*(v0[17] + 8))(v0[18], v0[16]);
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v25 = v0[24];
      v26 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v26, static Logging.search);
      v27 = v25;
      v28 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_77_13();
      if (OUTLINED_FUNCTION_143_8())
      {
        v29 = v0[24];
        OUTLINED_FUNCTION_51_0();
        v30 = OUTLINED_FUNCTION_152_0();
        OUTLINED_FUNCTION_75_14(5.7779e-34);
        v31 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_57_16(v31);
        OUTLINED_FUNCTION_205_3(&dword_25D85C000, v32, v33, "GlobalSearch timed out: %@");
        outlined destroy of IntentApplication?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_72_9();
        OUTLINED_FUNCTION_37_0();
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v0[25] = static ContextManager.shared;
    }

    else
    {
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v45 = v0[24];
      v46 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v46, static Logging.search);
      v47 = v45;
      v48 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_77_13();
      if (OUTLINED_FUNCTION_143_8())
      {
        v49 = v0[24];
        OUTLINED_FUNCTION_51_0();
        v50 = OUTLINED_FUNCTION_152_0();
        OUTLINED_FUNCTION_75_14(5.7779e-34);
        v51 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_57_16(v51);
        OUTLINED_FUNCTION_205_3(&dword_25D85C000, v52, v53, "GlobalSearch encountered an unknown error: %@");
        outlined destroy of IntentApplication?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_72_9();
        OUTLINED_FUNCTION_37_0();
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v0[26] = static ContextManager.shared;
    }

    OUTLINED_FUNCTION_201();

    return MEMORY[0x2822009F8](v54, v55, v56);
  }
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_beginAccess();
  MessageAccumulationContext.record(_:from:)(v1, 1);
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_48();

  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = OUTLINED_FUNCTION_3_13();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  swift_beginAccess();
  MessageAccumulationContext.record(_:from:)(v2, 1);
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  swift_willThrow();

  OUTLINED_FUNCTION_127();
  v5 = v0[24];

  return v4();
}

uint64_t closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 96) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return MEMORY[0x2822009F8](closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:), 0, 0);
}

uint64_t closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)()
{
  OUTLINED_FUNCTION_72();
  if (*(v0 + 96) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:);
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 24);

    return GlobalSearchClient.searchInternalXPC(content:clientEntities:location:)();
  }

  else
  {
    v8 = *(v0 + 24);
    v9 = v8[7];
    v10 = v8[8];
    __swift_project_boxed_opaque_existential_1(v8 + 4, v9);
    v11 = *(v10 + 8);
    OUTLINED_FUNCTION_28_0();
    v20 = (v12 + *v12);
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);

    return v20(v19, v18, v16, v17, v9, v10);
  }
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

  if (v0)
  {
    OUTLINED_FUNCTION_51_16();

    return v11();
  }

  else
  {
    *(v5 + 72) = v3;
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

{
  return OUTLINED_FUNCTION_11_35(*(v0 + 72));
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_51_16();

    return v11();
  }

  else
  {
    *(v5 + 88) = v3;
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

{
  return OUTLINED_FUNCTION_11_35(*(v0 + 88));
}

uint64_t GlobalSearchClient.searchInternalXPC(content:clientEntities:location:)()
{
  OUTLINED_FUNCTION_48();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = type metadata accessor for ParseStateXPC();
  v1[22] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[23] = v7;
  v9 = *(v8 + 64);
  v1[24] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for UUID();
  v1[25] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[26] = v11;
  v13 = *(v12 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_133();
  (*(v3 + 128))();
  if (*(v1 + 120))
  {
    outlined init with take of ResponseOverrideMatcherProtocol((v1 + 96), v1 + 56);
    if (*(v1 + 80))
    {
LABEL_3:
      v5 = *(v1 + 224);
      v4 = *(v1 + 232);
      v6 = *(v1 + 208);
      v7 = *(v1 + 216);
      v8 = *(v1 + 192);
      v9 = *(v1 + 200);
      v10 = *(v1 + 184);
      v41 = *(v1 + 176);
      v43 = *(v1 + 160);
      v44 = *(v1 + 152);
      v11 = *(v1 + 144);
      v42 = *(v1 + 136);
      outlined init with take of ResponseOverrideMatcherProtocol((v1 + 56), v1 + 16);
      UUID.init()();
      UUID.uuidString.getter();
      v12 = *(v6 + 8);
      v12(v4, v9);
      UUID.init()();
      UUID.uuidString.getter();
      v12(v5, v9);
      UUID.init()();
      v13 = UUID.uuidString.getter();
      v15 = v14;
      v12(v7, v9);
      *v8 = v13;
      *(v8 + 8) = v15;
      *(v8 + 16) = MEMORY[0x277D84F90];
      *(v8 + 24) = 0;
      (*(v10 + 104))(v8, *MEMORY[0x277D565F8], v41);
      v16 = type metadata accessor for PommesSearchRequestXPCBuilder();
      OUTLINED_FUNCTION_170(v16);

      PommesSearchRequestXPCBuilder.init(domain:assistantId:requestId:parseState:utterance:)();
      v17 = dispatch thunk of PommesSearchRequestXPCBuilder.build()();
      *(v1 + 240) = v17;

      v18 = type metadata accessor for SearchToolGlobalRequestXPCBuilder();
      OUTLINED_FUNCTION_170(v18);
      v19 = v17;
      SearchToolGlobalRequestXPCBuilder.init(pommesSearchRequest:)();
      dispatch thunk of SearchToolGlobalRequestXPCBuilder.withLocation(_:)();

      dispatch thunk of SearchToolGlobalRequestXPCBuilder.withClientEntities(_:)();

      *(v1 + 248) = dispatch thunk of SearchToolGlobalRequestXPCBuilder.build()();

      v20 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v21 = *(v20 + 8);
      OUTLINED_FUNCTION_28_0();
      v45 = (v22 + *v22);
      v24 = *(v23 + 4);
      v25 = swift_task_alloc();
      *(v1 + 256) = v25;
      *v25 = v1;
      OUTLINED_FUNCTION_84(v25);
      v26 = OUTLINED_FUNCTION_32_0();

      return v45(v26);
    }
  }

  else
  {
    v28 = type metadata accessor for PommesSearchClient();
    OUTLINED_FUNCTION_170(v28);
    v29 = PommesSearchClient.init()();
    if (v29)
    {
      v30 = &protocol witness table for PommesSearchClient;
    }

    else
    {
      v28 = 0;
      v30 = 0;
      *(v1 + 64) = 0;
      *(v1 + 72) = 0;
    }

    *(v1 + 56) = v29;
    *(v1 + 80) = v28;
    *(v1 + 88) = v30;
    if (v28)
    {
      goto LABEL_3;
    }
  }

  outlined destroy of IntentApplication?(v1 + 56, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v31 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v31, static Logging.search);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v34);
    _os_log_impl(&dword_25D85C000, v32, v33, "GlobalSearch XPC client failed to initialize", v0, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  v36 = *(v1 + 224);
  v35 = *(v1 + 232);
  v37 = *(v1 + 216);
  v38 = *(v1 + 192);

  v39 = OUTLINED_FUNCTION_3_13();

  return v40(v39);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
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
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);

  OUTLINED_FUNCTION_62();

  return v7(v1);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_127();
  v6 = *(v0 + 264);
  OUTLINED_FUNCTION_201();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t *GlobalSearchClient.handleSageResponse(_:associatedQuery:sources:allowClientExperience:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v57 = a2;
  v9 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_19_14();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  v18 = PommesResponse.metadataDomainName.getter();
  v20 = v19;
  if ((v17 & 8) == 0)
  {
    if (one-time initialization token for webDomains != -1)
    {
      OUTLINED_FUNCTION_2_45();
    }

    if (specialized Set.contains(_:)(v18, v20, static GlobalSearchClient.webDomains))
    {
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v21 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v21, static Logging.search);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_51_0();
        v25 = swift_slowAlloc();
        v58 = v25;
        *v24 = 136315138;
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v24 + 4) = v26;
        OUTLINED_FUNCTION_110_4();
        _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {
      }

      return MEMORY[0x277D84F90];
    }
  }

  v32 = dispatch thunk of PommesResponse.experiences.getter();
  if (!specialized Array.count.getter(v32))
  {

    v34 = 0;
    goto LABEL_27;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v32 & 0xC000000000000001) == 0, v32);
  if ((v32 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x25F89FFD0](0, v32);
  }

  else
  {
    v33 = *(v32 + 32);
  }

  v34 = v33;

  type metadata accessor for GenericExperience();
  if (swift_dynamicCastClass())
  {
    PommesResponse.isLowConfidenceKnowledgeResult.getter();
    static GlobalSearchResponseProcessor.makeGenericItem(experience:domain:lowConfidenceKnowledge:)();
    goto LABEL_18;
  }

  type metadata accessor for AudioExperience();
  if (!swift_dynamicCastClass() || (a5 & 1) == 0)
  {
LABEL_27:

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logging.search);
    v46 = v34;
    v47 = a1;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      swift_slowAlloc();
      v50 = OUTLINED_FUNCTION_152_0();
      v51 = swift_slowAlloc();
      v58 = v51;
      *v9 = 138412546;
      *(v9 + 4) = v46;
      *v50 = v34;
      *(v9 + 12) = 2080;
      v52 = v46;
      PommesResponse.metadataDomainName.getter();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v9 + 14) = v53;
      _os_log_impl(&dword_25D85C000, v48, v49, "GlobalSearch: unhandled experience %@ for domain %s", v9, 0x16u);
      outlined destroy of IntentApplication?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_42_0();
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }

    return MEMORY[0x277D84F90];
  }

  static GlobalSearchResponseProcessor.makeAudioItem(experience:domain:)();
LABEL_18:
  v36 = v35;

  v37 = *(v36 + 16);
  if (!v37)
  {

    return MEMORY[0x277D84F90];
  }

  v56 = v34;
  v58 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v38 = v58;
  v39 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v55 = v36;
  v40 = v36 + v39;
  v41 = *(v11 + 72);
  do
  {
    _s10OmniSearch0B6ResultVWOcTm_9(v40, v16, type metadata accessor for SearchResult);
    v42 = &v16[*(v9 + 40)];
    v43 = *(v42 + 1);

    *v42 = v57;
    *(v42 + 1) = a3;
    v58 = v38;
    v44 = v38[2];
    if (v44 >= v38[3] >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v38 = v58;
    }

    v38[2] = v44 + 1;
    _s10OmniSearch0B6ResultVWObTm_5(v16, v38 + v39 + v44 * v41, type metadata accessor for SearchResult);
    v40 += v41;
    --v37;
  }

  while (v37);

  return v38;
}

void *GlobalSearchClient.rankGlobalResponses(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_109();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v88 - v8;
  v10 = type metadata accessor for SearchResultItem(0);
  v11 = OUTLINED_FUNCTION_17(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v88 - v18;
  v20 = type metadata accessor for GlobalItem();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_109();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v88 - v26;
  specialized Dictionary.subscript.getter(0, a1);
  OUTLINED_FUNCTION_56_14();
  if (v30)
  {
    goto LABEL_11;
  }

  v31 = v28;
  v32 = v29;
  if ((v29 & 1) == 0)
  {
    v89 = v27;
    specialized Collection.first.getter(v28, v9);
    v33 = type metadata accessor for SearchResult(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v33) == 1)
    {
      OUTLINED_FUNCTION_72_13();
      outlined destroy of IntentApplication?(v9, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_23_23();
    _s10OmniSearch0B6ResultVWOcTm_9(v9, v19, v34);
    OUTLINED_FUNCTION_22_22();
    _s10OmniSearch0B6ResultVWOhTm_7(v9, v35);
    if (swift_getEnumCaseMultiPayload() != 25)
    {
      OUTLINED_FUNCTION_72_13();
      OUTLINED_FUNCTION_20_20();
      _s10OmniSearch0B6ResultVWOhTm_7(v19, v43);
      goto LABEL_11;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
    v37 = *&v19[*(v36 + 48)];

    OUTLINED_FUNCTION_21_26();
    _s10OmniSearch0B6ResultVWObTm_5(v19, v89, v38);
    specialized Dictionary.subscript.getter(1, a1);
    OUTLINED_FUNCTION_56_14();
    if (!v30)
    {
      v41 = v39;
      v42 = v40;
      if ((v40 & 1) == 0)
      {
        specialized Collection.first.getter(v39, v6);
        if (__swift_getEnumTagSinglePayload(v6, 1, v33) == 1)
        {
          outlined consume of Result<[SearchResult], Error>?(v41, v42);
          outlined destroy of IntentApplication?(v6, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_23_23();
        _s10OmniSearch0B6ResultVWOcTm_9(v6, v16, v66);
        OUTLINED_FUNCTION_22_22();
        _s10OmniSearch0B6ResultVWOhTm_7(v6, v67);
        if (swift_getEnumCaseMultiPayload() != 25)
        {
          outlined consume of Result<[SearchResult], Error>?(v41, v42);
          OUTLINED_FUNCTION_20_20();
          _s10OmniSearch0B6ResultVWOhTm_7(v16, v72);
          goto LABEL_33;
        }

        v68 = *(v16 + *(v36 + 48));

        OUTLINED_FUNCTION_21_26();
        _s10OmniSearch0B6ResultVWObTm_5(v16, v24, v69);
        if (one-time initialization token for webDomains != -1)
        {
          OUTLINED_FUNCTION_2_45();
        }

        v70 = static GlobalSearchClient.webDomains;
        if (specialized Set.contains(_:)(*(v89 + 4), *(v89 + 5), static GlobalSearchClient.webDomains) && !specialized Set.contains(_:)(*(v24 + 32), *(v24 + 40), v70))
        {
          OUTLINED_FUNCTION_72_13();
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_35_0();
          }

          v79 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v79, static Logging.search);
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_105_6(v81))
          {
            v82 = OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_81_4(v82);
            OUTLINED_FUNCTION_110_4();
            _os_log_impl(v83, v84, v85, v86, v87, 2u);
            OUTLINED_FUNCTION_2_8();
          }

          _s10OmniSearch0B6ResultVWOhTm_7(v24, type metadata accessor for GlobalItem);
          _s10OmniSearch0B6ResultVWOhTm_7(v89, type metadata accessor for GlobalItem);
          return v41;
        }

        OUTLINED_FUNCTION_19_29();
        _s10OmniSearch0B6ResultVWOhTm_7(v24, v71);
      }

      outlined consume of Result<[SearchResult], Error>?(v41, v42);
    }

LABEL_33:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v73 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v73, static Logging.search);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v75))
    {
      v76 = OUTLINED_FUNCTION_172();
      *v76 = 0;
      _os_log_impl(&dword_25D85C000, v74, v32, "GlobalSearch: returning raw query's response", v76, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    OUTLINED_FUNCTION_19_29();
    _s10OmniSearch0B6ResultVWOhTm_7(v89, v77);
    return v31;
  }

  OUTLINED_FUNCTION_72_13();
LABEL_11:
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v44 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v44, static Logging.search);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_157_0(v47);
    _os_log_impl(&dword_25D85C000, v45, v46, "GlobalSearch: no global search result found using the raw query", v24, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  specialized Dictionary.subscript.getter(1, a1);
  OUTLINED_FUNCTION_56_14();
  if (v30)
  {
    goto LABEL_18;
  }

  v41 = v48;
  if (v49)
  {
    outlined consume of Result<[SearchResult], Error>?(v48, v49);
LABEL_18:
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v51))
    {
      v52 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v52);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    return MEMORY[0x277D84F90];
  }

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_105_6(v59))
  {
    v60 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v60);
    OUTLINED_FUNCTION_110_4();
    _os_log_impl(v61, v62, v63, v64, v65, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  return v41;
}

uint64_t GlobalSearchClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v1 = *(v0 + 80);

  outlined destroy of IntentApplication?(v0 + 88, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  return v0;
}

uint64_t GlobalSearchClient.__deallocating_deinit()
{
  GlobalSearchClient.deinit();

  return swift_deallocClassInstance();
}