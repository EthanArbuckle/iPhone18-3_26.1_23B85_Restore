id _mo_log_facility_get_os_log(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, _mo_log_facility_prepare);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t _mo_log_facility_prepare(uint64_t a1)
{
  result = os_log_create("com.apple.MomentsIntelligenceService", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MIService,Starting MomentsIntelligenceService delegate and attempting connection to XPC listener", v7, 2u);
  }

  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v3];
  [v5 resume];

  return 0;
}

uint64_t one-time initialization function for nameForNewModel()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  __swift_allocate_value_buffer(v0, nameForNewModel);
  __swift_project_value_buffer(v0, nameForNewModel);
  type metadata accessor for AssetBackedLLMBundle();
  lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type AssetBackedLLMBundle and conformance AssetBackedLLMBundle, &type metadata accessor for AssetBackedLLMBundle);
  return ResourceBundleIdentifier.init(stringLiteral:)();
}

uint64_t nameForNewModel.unsafeMutableAddressor()
{
  if (one-time initialization token for nameForNewModel != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);

  return __swift_project_value_buffer(v0, nameForNewModel);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ClassificationQueryRunner.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v2 = type metadata accessor for ClassificationQueryRunner._ClientInfo();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = ClassificationQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000002ELL, 0x800000010000D7D0, 0, 1, v1);
  return v0;
}

uint64_t ClassificationQueryRunner.init()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v3 = type metadata accessor for ClassificationQueryRunner._ClientInfo();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v1 + 16) = ClassificationQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000002ELL, 0x800000010000D7D0, 0, 1, v2);
  return v1;
}

uint64_t ClassificationQueryRunner.classify(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v5[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[4] = v13;
  v14 = swift_task_alloc();
  v5[5] = v14;
  *v14 = v5;
  v14[1] = ClassificationQueryRunner.classify(systemPrompt:input:);

  return closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(v13, a1, a2, a3, a4, v4);
}

uint64_t ClassificationQueryRunner.classify(systemPrompt:input:)()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(ClassificationQueryRunner.classify(systemPrompt:input:), 0, 0);
  }

  else
  {
    v4 = async function pointer to GenerativeConfigurationRunnable<>.run(returning:)[1];
    v5 = swift_task_alloc();
    v3[7] = v5;
    v6 = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator, &type metadata accessor for TokenGenerator);
    *v5 = v3;
    v5[1] = ClassificationQueryRunner.classify(systemPrompt:input:);
    v7 = v3[4];
    v8 = v3[2];

    return GenerativeConfigurationRunnable<>.run(returning:)(v8, v6);
  }
}

{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[8];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t ClassificationQueryRunner.classify(systemPrompt:input:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return _swift_task_switch(ClassificationQueryRunner.classify(systemPrompt:input:), 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t ClassificationQueryRunner._classify(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v5[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[4] = v13;
  v14 = swift_task_alloc();
  v5[5] = v14;
  *v14 = v5;
  v14[1] = ClassificationQueryRunner._classify(systemPrompt:input:);

  return closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(v13, a1, a2, a3, a4, v4);
}

uint64_t ClassificationQueryRunner._classify(systemPrompt:input:)()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(ClassificationQueryRunner._classify(systemPrompt:input:), 0, 0);
  }

  else
  {
    v4 = async function pointer to GenerativeConfigurationRunnable<>.run(returning:)[1];
    v5 = swift_task_alloc();
    v3[7] = v5;
    v6 = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator, &type metadata accessor for TokenGenerator);
    *v5 = v3;
    v5[1] = ClassificationQueryRunner._classify(systemPrompt:input:);
    v7 = v3[4];
    v8 = v3[2];

    return GenerativeConfigurationRunnable<>.run(returning:)(v8, v6);
  }
}

uint64_t ClassificationQueryRunner._classify(systemPrompt:input:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return _swift_task_switch(ClassificationQueryRunner._classify(systemPrompt:input:), 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(a1, a2, a3, a4, a5, v5);
}

uint64_t ClassificationQueryRunner._classify_runnable(systemPrompt:input:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v6[31] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v10 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v6[33] = v10;
  v11 = *(v10 - 8);
  v6[34] = v11;
  v12 = *(v11 + 64) + 15;
  v6[35] = swift_task_alloc();
  v13 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v6[36] = v13;
  v14 = *(v13 - 8);
  v6[37] = v14;
  v15 = *(v14 + 64) + 15;
  v6[38] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v17 = type metadata accessor for FunctionIdentifier();
  v6[40] = v17;
  v18 = *(v17 - 8);
  v6[41] = v18;
  v19 = *(v18 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v20 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v6[44] = v20;
  v21 = *(v20 - 8);
  v6[45] = v21;
  v22 = *(v21 + 64) + 15;
  v6[46] = swift_task_alloc();
  v23 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v6[47] = v23;
  v24 = *(v23 - 8);
  v6[48] = v24;
  v25 = *(v24 + 64) + 15;
  v6[49] = swift_task_alloc();
  v26 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v6[50] = v26;
  v27 = *(v26 - 8);
  v6[51] = v27;
  v28 = *(v27 + 64) + 15;
  v6[52] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v6[53] = v29;
  v30 = *(v29 - 8);
  v6[54] = v30;
  v31 = *(v30 + 64) + 15;
  v6[55] = swift_task_alloc();
  v32 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v6[56] = v32;
  v33 = *(v32 - 8);
  v6[57] = v33;
  v34 = *(v33 + 64) + 15;
  v6[58] = swift_task_alloc();
  v35 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v6[59] = v35;
  v36 = *(v35 - 8);
  v6[60] = v36;
  v37 = *(v36 + 64) + 15;
  v6[61] = swift_task_alloc();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v6[62] = v38;
  v39 = *(v38 - 8);
  v6[63] = v39;
  v40 = *(v39 + 64) + 15;
  v6[64] = swift_task_alloc();
  v41 = type metadata accessor for ChatMessagesPrompt();
  v6[65] = v41;
  v42 = *(v41 - 8);
  v6[66] = v42;
  v43 = *(v42 + 64) + 15;
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:), 0, 0);
}

uint64_t closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)()
{
  v46 = *(v0 + 568);
  v41 = *(v0 + 560);
  v39 = *(v0 + 552);
  v29 = *(v0 + 544);
  v24 = *(v0 + 536);
  v48 = *(v0 + 528);
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 488);
  v27 = *(v0 + 496);
  v28 = *(v0 + 520);
  v4 = *(v0 + 480);
  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v25 = *(v0 + 472);
  v26 = *(v0 + 448);
  v36 = *(v0 + 440);
  v37 = *(v0 + 432);
  v38 = *(v0 + 424);
  v30 = *(v0 + 416);
  v31 = *(v0 + 408);
  v32 = *(v0 + 400);
  v33 = *(v0 + 392);
  v34 = *(v0 + 384);
  v35 = *(v0 + 376);
  v42 = *(v0 + 360);
  v43 = *(v0 + 352);
  v44 = *(v0 + 368);
  v47 = *(v0 + 344);
  v23 = *(v0 + 200);
  v45 = *(v0 + 312);
  v7 = *(v0 + 224);
  v40 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = swift_task_alloc();
  *(v9 + 16) = v23;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  ChatMessagesPrompt.init(_:)();

  v10 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v4 + 104))(v3, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v25);
  v11 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  (*(v5 + 104))(v6, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v26);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  v12 = enum case for OverrideHint.constant<A>(_:);
  (*(v1 + 104))(v2, enum case for OverrideHint.constant<A>(_:), v27);
  *(v0 + 576) = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, &type metadata accessor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  (*(v1 + 8))(v2, v27);
  v13 = *(v48 + 8);
  *(v0 + 584) = v13;
  *(v0 + 592) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v24, v28);
  v14 = type metadata accessor for StringResponseSanitizer.Overrides();
  (*(*(v14 - 8) + 56))(v30, 1, 1, v14);
  (*(v31 + 104))(v30, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v32);
  v15 = type metadata accessor for StringResponseSanitizer.Guardrails();
  (*(*(v15 - 8) + 56))(v33, 1, 1, v15);
  (*(v34 + 104))(v33, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v35);
  StringResponseSanitizer.init(overrides:guardrails:)();
  (*(v37 + 104))(v36, v12, v38);
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v37 + 8))(v36, v38);
  v13(v29, v28);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();

  v13(v39, v28);
  v16 = *(v40 + 16);
  *(v0 + 600) = v16;
  v17 = OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v42 + 16))(v44, v16 + v17, v43);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v42 + 8))(v44, v43);
  v13(v41, v28);
  v18 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v18 - 8) + 56))(v45, 1, 1, v18);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v19 = async function pointer to static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)[1];
  v20 = swift_task_alloc();
  *(v0 + 608) = v20;
  *v20 = v0;
  v20[1] = closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:);
  v21 = *(v0 + 240);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v21, 0xD00000000000001CLL, 0x800000010000D800);
}

{
  v2 = *(*v1 + 608);
  v5 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:);
  }

  else
  {
    v3 = closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[30];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of (chatMessagesPrompt: _GenerativeFunctionOverridableInternals_ChatMessagesPrompt, metadata: _GenerativeFunctionInternals_Metadata)?(v1);
  }

  else
  {
    v57 = v0[73];
    v59 = v0[74];
    v47 = v0[70];
    v49 = v0[71];
    v53 = v0[65];
    v55 = v0[66];
    v3 = v0[42];
    v29 = v3;
    v31 = v0[41];
    v33 = v0[40];
    v35 = v0[43];
    v25 = v0[38];
    v51 = v0[37];
    v4 = v0[36];
    v27 = v0[35];
    v6 = v0[33];
    v5 = v0[34];
    v8 = v0[31];
    v7 = v0[32];
    v37 = v0[27];
    v39 = v0[28];
    v41 = v0[25];
    v43 = v0[26];
    v23 = *(v8 + 48);
    v24 = *(v2 + 48);
    v9 = *(v51 + 32);
    v9(v7, v1, v4);
    v10 = *(v5 + 32);
    v10(v7 + v23, v1 + v24, v6);
    v11 = *(v8 + 48);
    v9(v25, v7, v4);
    v10(v27, v7 + v11, v6);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v31 + 8))(v35, v33);
    (*(v31 + 32))(v35, v29, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000DC90;
    *(inited + 32) = 0x7475706E69;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v37;
    *(inited + 56) = v39;
    strcpy((inited + 88), "systemPrompt");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v41;
    *(inited + 112) = v43;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9PromptKit0A25ComponentValueConvertible_ptMd, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMR);
    swift_arrayDestroy();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit012ChatMessagesC11Convertible_pTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v5 + 8))(v27, v6);
    (*(v51 + 8))(v25, v4);
    v57(v49, v53);
    (*(v55 + 32))(v49, v47, v53);
  }

  v13 = v0[75];
  v28 = v0[73];
  v30 = v0[74];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v32 = v0[69];
  v34 = v0[68];
  v17 = v0[65];
  v36 = v0[67];
  v38 = v0[64];
  v40 = v0[61];
  v42 = v0[58];
  v44 = v0[55];
  v45 = v0[52];
  v46 = v0[49];
  v48 = v0[46];
  v18 = v0[43];
  v50 = v0[42];
  v19 = v0[41];
  v26 = v0[40];
  v52 = v0[39];
  v54 = v0[38];
  v56 = v0[35];
  v58 = v0[32];
  v60 = v0[30];
  v20 = v0[24];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  v0[23] = *(v13 + OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v28(v16, v17);
  (*(v19 + 8))(v18, v26);
  v28(v15, v17);

  v21 = v0[1];

  return v21();
}

{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[65];
  v13 = v0[64];
  v14 = v0[61];
  v15 = v0[58];
  v16 = v0[55];
  v17 = v0[52];
  v18 = v0[49];
  v19 = v0[46];
  v20 = v0[42];
  v21 = v0[39];
  v22 = v0[38];
  v9 = v0[35];
  v23 = v0[32];
  v24 = v0[30];
  (*(v0[41] + 8))(v0[43], v0[40]);
  v2(v3, v8);

  v10 = v0[1];
  v11 = v0[77];

  return v10();
}

uint64_t closure #1 in closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v36 = a2;
  v47 = a5;
  v6 = type metadata accessor for User();
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  v8 = *(v7 + 64);
  (__chkstk_darwin)();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for System();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  (__chkstk_darwin)();
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChatMessagesPrompt();
  v37 = *(v16 - 8);
  v17 = v37;
  v18 = *(v37 + 64);
  v19 = (__chkstk_darwin)();
  v34 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = &v33 - v21;
  v45 = a1;
  v46 = v36;
  v22 = v38;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v12 + 8))(v15, v11);
  v43 = v39;
  v44 = v40;
  User.init(_:)();
  v40 = v22;
  v23 = v34;
  v24 = v41;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v42 + 8))(v10, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v25 = *(v37 + 72);
  v26 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10000DC90;
  v28 = v27 + v26;
  v29 = *(v17 + 16);
  v30 = v35;
  v29(v28, v35, v16);
  v29(v28 + v25, v23, v16);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v31 = *(v17 + 8);
  v31(v23, v16);
  return (v31)(v30, v16);
}

uint64_t closure #1 in closure #1 in closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  __chkstk_darwin();
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;

  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v10 = *(v5 + 72);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10000DCA0;
  (*(v6 + 16))(v12 + v11, v9, v4);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v6 + 8))(v9, v4);
}

uint64_t ClassificationQueryRunner._classify_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v60 = *(v0 - 8);
  v61 = v0;
  v1 = *(v60 + 64);
  __chkstk_darwin(v0);
  v59 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  __chkstk_darwin(v3);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v54 = &v48 - v8;
  v9 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v13 = *(v48 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v48);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  v22 = type metadata accessor for ChatMessagesPrompt();
  v62 = *(v22 - 8);
  v23 = *(v62 + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v48 - v28;
  __chkstk_darwin(v27);
  v51 = &v48 - v30;
  v31 = v52;
  ChatMessagesPrompt.init(_:)();
  v52 = v31;
  v32 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  (*(v13 + 104))(v16, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v48);
  v33 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
  (*(v49 + 104))(v12, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v50);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  v34 = enum case for OverrideHint.constant<A>(_:);
  (*(v18 + 104))(v21, enum case for OverrideHint.constant<A>(_:), v17);
  lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, &type metadata accessor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  (*(v18 + 8))(v21, v17);
  v35 = *(v62 + 8);
  v62 += 8;
  v35(v26, v22);
  v36 = type metadata accessor for StringResponseSanitizer.Overrides();
  v37 = v53;
  (*(*(v36 - 8) + 56))(v53, 1, 1, v36);
  (*(v55 + 104))(v37, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v56);
  v38 = type metadata accessor for StringResponseSanitizer.Guardrails();
  v39 = v59;
  (*(*(v38 - 8) + 56))(v59, 1, 1, v38);
  (*(v60 + 104))(v39, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v61);
  v40 = v54;
  StringResponseSanitizer.init(overrides:guardrails:)();
  v41 = v57;
  v42 = v58;
  (*(v57 + 104))(v40, v34, v58);
  v43 = v51;
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v41 + 8))(v40, v42);
  v35(v29, v22);
  v44 = v52;
  v45 = static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v44)
  {
    return (v35)(v43, v22);
  }

  v47 = v45;
  v35(v43, v22);
  return v47;
}

uint64_t closure #1 in ClassificationQueryRunner._classify_generateGenerativeFunctionOverride()@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for User();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for System();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChatMessagesPrompt();
  v30 = *(v12 - 8);
  v13 = v30;
  v14 = *(v30 + 64);
  v15 = __chkstk_darwin(v12);
  v28 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v29 = &v28 - v17;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v8 + 8))(v11, v7);
  User.init(_:)();
  v31 = v1;
  v18 = v28;
  v19 = v32;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v33 + 8))(v6, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v20 = *(v30 + 72);
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10000DC90;
  v23 = v22 + v21;
  v24 = *(v13 + 16);
  v25 = v29;
  v24(v23, v29, v12);
  v24(v23 + v20, v18, v12);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v26 = *(v13 + 8);
  v26(v18, v12);
  return (v26)(v25, v12);
}

uint64_t closure #1 in closure #1 in ClassificationQueryRunner._classify_generateGenerativeFunctionOverride()()
{
  return closure #1 in closure #1 in ClassificationQueryRunner._classify_generateGenerativeFunctionOverride()();
}

{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = type metadata accessor for BindableVariable();
  v10[4] = &protocol witness table for BindableVariable;
  __swift_allocate_boxed_opaque_existential_1(v10);
  BindableVariable.init(name:)();
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10000DCA0;
  (*(v1 + 16))(v7 + v6, v4, v0);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v1 + 8))(v4, v0);
}

unsigned __int8 *ClassificationQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v59 = a4;
  v62 = a3;
  v10 = *(*(type metadata accessor for CachePolicy() - 8) + 64);
  __chkstk_darwin();
  v58[2] = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(type metadata accessor for GenerativeModelSessionConfiguration() - 8) + 64);
  __chkstk_darwin();
  v58[1] = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v18 = v58 - v17;
  v19 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v61 = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  (*(v20 + 32))(v6 + OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig, v23, v19);
  if (!*(a5 + 16))
  {
    goto LABEL_66;
  }

  v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000010000D910);
  if ((v25 & 1) == 0)
  {
    goto LABEL_66;
  }

  v26 = (*(a5 + 56) + 16 * v24);
  v28 = *v26;
  v27 = v26[1];

  v30 = HIBYTE(v27) & 0xF;
  v31 = v28 & 0xFFFFFFFFFFFFLL;
  if (!((v27 & 0x2000000000000000) != 0 ? HIBYTE(v27) & 0xF : v28 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  if ((v27 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v28, v27, 10);
    goto LABEL_66;
  }

  if ((v27 & 0x2000000000000000) != 0)
  {
    v63[0] = v28;
    v63[1] = v27 & 0xFFFFFFFFFFFFFFLL;
    if (v28 == 43)
    {
      if (v30)
      {
        if (--v30)
        {
          v46 = 0;
          v47 = v63 + 1;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              break;
            }

            v49 = 10 * v46;
            if ((v46 * 10) >> 64 != (10 * v46) >> 63)
            {
              break;
            }

            v46 = v49 + v48;
            if (__OFADD__(v49, v48))
            {
              break;
            }

            ++v47;
            if (!--v30)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    if (v28 != 45)
    {
      if (v30)
      {
        v53 = 0;
        v54 = v63;
        while (1)
        {
          v55 = *v54 - 48;
          if (v55 > 9)
          {
            break;
          }

          v56 = 10 * v53;
          if ((v53 * 10) >> 64 != (10 * v53) >> 63)
          {
            break;
          }

          v53 = v56 + v55;
          if (__OFADD__(v56, v55))
          {
            break;
          }

          ++v54;
          if (!--v30)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v30)
    {
      if (--v30)
      {
        v38 = 0;
        v39 = v63 + 1;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            break;
          }

          v38 = v41 - v40;
          if (__OFSUB__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v30)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    result = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v33 = *result;
  if (v33 == 43)
  {
    if (v31 < 1)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v30 = v31 - 1;
    if (v31 != 1)
    {
      v42 = 0;
      if (result)
      {
        v43 = result + 1;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            goto LABEL_64;
          }

          v45 = 10 * v42;
          if ((v42 * 10) >> 64 != (10 * v42) >> 63)
          {
            goto LABEL_64;
          }

          v42 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            goto LABEL_64;
          }

          ++v43;
          if (!--v30)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_64:
    LOBYTE(v30) = 1;
    goto LABEL_65;
  }

  if (v33 != 45)
  {
    if (v31)
    {
      v50 = 0;
      if (result)
      {
        while (1)
        {
          v51 = *result - 48;
          if (v51 > 9)
          {
            goto LABEL_64;
          }

          v52 = 10 * v50;
          if ((v50 * 10) >> 64 != (10 * v50) >> 63)
          {
            goto LABEL_64;
          }

          v50 = v52 + v51;
          if (__OFADD__(v52, v51))
          {
            goto LABEL_64;
          }

          ++result;
          if (!--v31)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

    goto LABEL_64;
  }

  if (v31 < 1)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v30 = v31 - 1;
  if (v31 == 1)
  {
    goto LABEL_64;
  }

  v34 = 0;
  if (result)
  {
    v35 = result + 1;
    while (1)
    {
      v36 = *v35 - 48;
      if (v36 > 9)
      {
        goto LABEL_64;
      }

      v37 = 10 * v34;
      if ((v34 * 10) >> 64 != (10 * v34) >> 63)
      {
        goto LABEL_64;
      }

      v34 = v37 - v36;
      if (__OFSUB__(v37, v36))
      {
        goto LABEL_64;
      }

      ++v35;
      if (!--v30)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_56:
  LOBYTE(v30) = 0;
LABEL_65:
  v64 = v30;
LABEL_66:

  type metadata accessor for TokenGenerator();
  if (one-time initialization token for nameForNewModel != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v14, nameForNewModel);
  (*(v15 + 16))(v18, v57, v14);
  static CachePolicy.inMemory.getter();
  GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
  *(v6 + OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo__model) = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
  return v6;
}

uint64_t ClassificationQueryRunner._ClientInfo.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig;
  v3 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo__model];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t protocol witness for _ClientInfoProtocol.useCaseIdentifier.getter in conformance ClassificationQueryRunner._ClientInfo()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t protocol witness for _ClientInfoProtocol.trackingConfig.getter in conformance ClassificationQueryRunner._ClientInfo@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t protocol witness for _ClientInfoProtocol.trackingConfig.setter in conformance ClassificationQueryRunner._ClientInfo(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*protocol witness for _ClientInfoProtocol.trackingConfig.modify in conformance ClassificationQueryRunner._ClientInfo())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for _ClientInfoProtocol.trackingConfig.modify in conformance ClassificationQueryRunner._ClientInfo;
}

uint64_t PersonalizedReflectionQueryRunner.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PersonalizedReflectionQueryRunner.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for ClassificationQueryRunner._ClientInfo()
{
  result = type metadata singleton initialization cache for ClassificationQueryRunner._ClientInfo;
  if (!type metadata singleton initialization cache for ClassificationQueryRunner._ClientInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ClassificationQueryRunner._ClientInfo()
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMd, &_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, ChatMessagesPromptConvertible)(v4, &v13, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMd, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006714(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, ChatMessagesPromptConvertible)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit012ChatMessagesC11Convertible_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9PromptKit012ChatMessagesC11Convertible_pGMd, &_ss18_DictionaryStorageCySS9PromptKit012ChatMessagesC11Convertible_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, ChatMessagesPromptConvertible)(v4, &v13, &_sSS_9PromptKit012ChatMessagesA11Convertible_ptMd, &_sSS_9PromptKit012ChatMessagesA11Convertible_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006714(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100006714(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of (String, ChatMessagesPromptConvertible)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined destroy of (chatMessagesPrompt: _GenerativeFunctionOverridableInternals_ChatMessagesPrompt, metadata: _GenerativeFunctionInternals_Metadata)?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:), v17);
}

uint64_t closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v14;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:), 0, 0);
}

uint64_t closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)()
{
  type metadata accessor for ClassificationQueryRunner();
  inited = swift_initStackObject();
  v0[14] = inited;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v3 = type metadata accessor for ClassificationQueryRunner._ClientInfo();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = ClassificationQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000002ELL, 0x800000010000D7D0, 0, 1, v2);
  v0[15] = v6;
  *(inited + 16) = v6;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
  v8 = v0[13];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];

  return closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(v8, v11, v12, v9, v10, inited);
}

{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:), 0, 0);
  }

  else
  {
    v4 = async function pointer to GenerativeConfigurationRunnable<>.run(returning:)[1];
    v5 = swift_task_alloc();
    v3[18] = v5;
    v6 = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator();
    *v5 = v3;
    v5[1] = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
    v7 = v3[13];
    v8 = v3[11];

    return GenerativeConfigurationRunnable<>.run(returning:)(v8, v6);
  }
}

{
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[9];
  v3 = v0[10];

  swift_errorRetain();
  v4(0, 0, v1);

  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  (*(v0 + 72))(*(v0 + 168), *(v0 + 160), 0);

  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[19];
  v2 = v0[15];
  v4 = v0[9];
  v3 = v0[10];

  swift_errorRetain();
  v4(0, 0, v1);

  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  v6[19] = v2;

  v9 = v6[13];
  v10 = v6[12];
  v11 = v6[11];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
  }

  else
  {
    v6[20] = a2;
    v6[21] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);

  return closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id PersonalizedReflectionPromptGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BundleDataClassifier.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleDataClassifier();
  return objc_msgSendSuper2(&v2, "init");
}

id BundleDataClassifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleDataClassifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007820()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007C64()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

unint64_t lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator()
{
  result = lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator;
  if (!lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator)
  {
    type metadata accessor for TokenGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator);
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:), v17);
}

uint64_t closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v14;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:), 0, 0);
}

uint64_t closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)()
{
  type metadata accessor for PersonalizedReflectionQueryRunner();
  inited = swift_initStackObject();
  v0[14] = inited;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PersonalizedReflectionQueryRunner._ClientInfo();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = PersonalizedReflectionQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000003CLL, 0x800000010000DA50, 0, 1, v2);
  v0[15] = v6;
  *(inited + 16) = v6;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
  v8 = v0[13];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];

  return closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(v8, v11, v12, v9, v10, inited);
}

uint64_t partial apply for closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);

  return closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

id PersonalizedReflectionPromptGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalizedReflectionPromptGenerator();
  return objc_msgSendSuper2(&v2, "init");
}

id PersonalizedReflectionPromptGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalizedReflectionPromptGenerator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008574()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

BOOL static GenerativeModelsAvailable.isGenerativeModelAvailable()()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeModelsAvailability();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v6 + 8))(v9, v5);
  GenerativeModelsAvailability.availability.getter();
  (*(v11 + 8))(v14, v10);
  v15 = (*(v1 + 88))(v4, v0) == enum case for GenerativeModelsAvailability.Availability.available(_:);
  (*(v1 + 8))(v4, v0);
  return v15;
}

id GenerativeModelsAvailable.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsAvailable();
  return objc_msgSendSuper2(&v2, "init");
}

id GenerativeModelsAvailable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsAvailable();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t PersonalizedReflectionQueryRunner.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v2 = type metadata accessor for PersonalizedReflectionQueryRunner._ClientInfo();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = PersonalizedReflectionQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000003CLL, 0x800000010000DA50, 0, 1, v1);
  return v0;
}

uint64_t PersonalizedReflectionQueryRunner.generatePersonalizedReflectionPrompt(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v5[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[4] = v13;
  v14 = swift_task_alloc();
  v5[5] = v14;
  *v14 = v5;
  v14[1] = ClassificationQueryRunner.classify(systemPrompt:input:);

  return closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(v13, a1, a2, a3, a4, v4);
}

uint64_t one-time initialization function for nameForNewModelID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  __swift_allocate_value_buffer(v0, nameForNewModelID);
  __swift_project_value_buffer(v0, nameForNewModelID);
  type metadata accessor for AssetBackedLLMBundle();
  lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type AssetBackedLLMBundle and conformance AssetBackedLLMBundle, &type metadata accessor for AssetBackedLLMBundle);
  return ResourceBundleIdentifier.init(stringLiteral:)();
}

uint64_t nameForNewModelID.unsafeMutableAddressor()
{
  if (one-time initialization token for nameForNewModelID != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);

  return __swift_project_value_buffer(v0, nameForNewModelID);
}

uint64_t PersonalizedReflectionQueryRunner.init()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PersonalizedReflectionQueryRunner._ClientInfo();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v1 + 16) = PersonalizedReflectionQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000003CLL, 0x800000010000DA50, 0, 1, v2);
  return v1;
}

uint64_t PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v5[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[4] = v13;
  v14 = swift_task_alloc();
  v5[5] = v14;
  *v14 = v5;
  v14[1] = ClassificationQueryRunner._classify(systemPrompt:input:);

  return closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(v13, a1, a2, a3, a4, v4);
}

uint64_t PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(a1, a2, a3, a4, a5, v5);
}

uint64_t closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v6[31] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v10 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v6[33] = v10;
  v11 = *(v10 - 8);
  v6[34] = v11;
  v12 = *(v11 + 64) + 15;
  v6[35] = swift_task_alloc();
  v13 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v6[36] = v13;
  v14 = *(v13 - 8);
  v6[37] = v14;
  v15 = *(v14 + 64) + 15;
  v6[38] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v17 = type metadata accessor for FunctionIdentifier();
  v6[40] = v17;
  v18 = *(v17 - 8);
  v6[41] = v18;
  v19 = *(v18 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v20 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v6[44] = v20;
  v21 = *(v20 - 8);
  v6[45] = v21;
  v22 = *(v21 + 64) + 15;
  v6[46] = swift_task_alloc();
  v23 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v6[47] = v23;
  v24 = *(v23 - 8);
  v6[48] = v24;
  v25 = *(v24 + 64) + 15;
  v6[49] = swift_task_alloc();
  v26 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v6[50] = v26;
  v27 = *(v26 - 8);
  v6[51] = v27;
  v28 = *(v27 + 64) + 15;
  v6[52] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v6[53] = v29;
  v30 = *(v29 - 8);
  v6[54] = v30;
  v31 = *(v30 + 64) + 15;
  v6[55] = swift_task_alloc();
  v32 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v6[56] = v32;
  v33 = *(v32 - 8);
  v6[57] = v33;
  v34 = *(v33 + 64) + 15;
  v6[58] = swift_task_alloc();
  v35 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v6[59] = v35;
  v36 = *(v35 - 8);
  v6[60] = v36;
  v37 = *(v36 + 64) + 15;
  v6[61] = swift_task_alloc();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v6[62] = v38;
  v39 = *(v38 - 8);
  v6[63] = v39;
  v40 = *(v39 + 64) + 15;
  v6[64] = swift_task_alloc();
  v41 = type metadata accessor for ChatMessagesPrompt();
  v6[65] = v41;
  v42 = *(v41 - 8);
  v6[66] = v42;
  v43 = *(v42 + 64) + 15;
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:), 0, 0);
}

uint64_t closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)()
{
  v46 = *(v0 + 568);
  v41 = *(v0 + 560);
  v39 = *(v0 + 552);
  v29 = *(v0 + 544);
  v24 = *(v0 + 536);
  v48 = *(v0 + 528);
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 488);
  v27 = *(v0 + 496);
  v28 = *(v0 + 520);
  v4 = *(v0 + 480);
  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v25 = *(v0 + 472);
  v26 = *(v0 + 448);
  v36 = *(v0 + 440);
  v37 = *(v0 + 432);
  v38 = *(v0 + 424);
  v30 = *(v0 + 416);
  v31 = *(v0 + 408);
  v32 = *(v0 + 400);
  v33 = *(v0 + 392);
  v34 = *(v0 + 384);
  v35 = *(v0 + 376);
  v42 = *(v0 + 360);
  v43 = *(v0 + 352);
  v44 = *(v0 + 368);
  v47 = *(v0 + 344);
  v23 = *(v0 + 200);
  v45 = *(v0 + 312);
  v7 = *(v0 + 224);
  v40 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = swift_task_alloc();
  *(v9 + 16) = v23;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  ChatMessagesPrompt.init(_:)();

  v10 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v4 + 104))(v3, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v25);
  v11 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  (*(v5 + 104))(v6, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v26);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  v12 = enum case for OverrideHint.constant<A>(_:);
  (*(v1 + 104))(v2, enum case for OverrideHint.constant<A>(_:), v27);
  *(v0 + 576) = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, &type metadata accessor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  (*(v1 + 8))(v2, v27);
  v13 = *(v48 + 8);
  *(v0 + 584) = v13;
  *(v0 + 592) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v24, v28);
  v14 = type metadata accessor for StringResponseSanitizer.Overrides();
  (*(*(v14 - 8) + 56))(v30, 1, 1, v14);
  (*(v31 + 104))(v30, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v32);
  v15 = type metadata accessor for StringResponseSanitizer.Guardrails();
  (*(*(v15 - 8) + 56))(v33, 1, 1, v15);
  (*(v34 + 104))(v33, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v35);
  StringResponseSanitizer.init(overrides:guardrails:)();
  (*(v37 + 104))(v36, v12, v38);
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v37 + 8))(v36, v38);
  v13(v29, v28);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();

  v13(v39, v28);
  v16 = *(v40 + 16);
  *(v0 + 600) = v16;
  v17 = OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v42 + 16))(v44, v16 + v17, v43);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v42 + 8))(v44, v43);
  v13(v41, v28);
  v18 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v18 - 8) + 56))(v45, 1, 1, v18);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v19 = async function pointer to static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)[1];
  v20 = swift_task_alloc();
  *(v0 + 608) = v20;
  *v20 = v0;
  v20[1] = closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:);
  v21 = *(v0 + 240);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v21, 0xD00000000000001CLL, 0x800000010000DAE0);
}

{
  v2 = *(*v1 + 608);
  v5 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:);
  }

  else
  {
    v3 = closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[30];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of (chatMessagesPrompt: _GenerativeFunctionOverridableInternals_ChatMessagesPrompt, metadata: _GenerativeFunctionInternals_Metadata)?(v1);
  }

  else
  {
    v57 = v0[73];
    v59 = v0[74];
    v47 = v0[70];
    v49 = v0[71];
    v53 = v0[65];
    v55 = v0[66];
    v3 = v0[42];
    v29 = v3;
    v31 = v0[41];
    v33 = v0[40];
    v35 = v0[43];
    v25 = v0[38];
    v51 = v0[37];
    v4 = v0[36];
    v27 = v0[35];
    v6 = v0[33];
    v5 = v0[34];
    v8 = v0[31];
    v7 = v0[32];
    v37 = v0[27];
    v39 = v0[28];
    v41 = v0[25];
    v43 = v0[26];
    v23 = *(v8 + 48);
    v24 = *(v2 + 48);
    v9 = *(v51 + 32);
    v9(v7, v1, v4);
    v10 = *(v5 + 32);
    v10(v7 + v23, v1 + v24, v6);
    v11 = *(v8 + 48);
    v9(v25, v7, v4);
    v10(v27, v7 + v11, v6);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v31 + 8))(v35, v33);
    (*(v31 + 32))(v35, v29, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000DC90;
    *(inited + 32) = 0x7475706E69;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v37;
    *(inited + 56) = v39;
    strcpy((inited + 88), "systemPrompt");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v41;
    *(inited + 112) = v43;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9PromptKit0A25ComponentValueConvertible_ptMd, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMR);
    swift_arrayDestroy();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit012ChatMessagesC11Convertible_pTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v5 + 8))(v27, v6);
    (*(v51 + 8))(v25, v4);
    v57(v49, v53);
    (*(v55 + 32))(v49, v47, v53);
  }

  v13 = v0[75];
  v28 = v0[73];
  v30 = v0[74];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v32 = v0[69];
  v34 = v0[68];
  v17 = v0[65];
  v36 = v0[67];
  v38 = v0[64];
  v40 = v0[61];
  v42 = v0[58];
  v44 = v0[55];
  v45 = v0[52];
  v46 = v0[49];
  v48 = v0[46];
  v18 = v0[43];
  v50 = v0[42];
  v19 = v0[41];
  v26 = v0[40];
  v52 = v0[39];
  v54 = v0[38];
  v56 = v0[35];
  v58 = v0[32];
  v60 = v0[30];
  v20 = v0[24];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  v0[23] = *(v13 + OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v28(v16, v17);
  (*(v19 + 8))(v18, v26);
  v28(v15, v17);

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v36 = a2;
  v47 = a5;
  v6 = type metadata accessor for User();
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for System();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChatMessagesPrompt();
  v37 = *(v16 - 8);
  v17 = v37;
  v18 = *(v37 + 64);
  v19 = __chkstk_darwin(v16);
  v34 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = &v33 - v21;
  v45 = a1;
  v46 = v36;
  v22 = v38;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v12 + 8))(v15, v11);
  v43 = v39;
  v44 = v40;
  User.init(_:)();
  v40 = v22;
  v23 = v34;
  v24 = v41;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v42 + 8))(v10, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v25 = *(v37 + 72);
  v26 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10000DC90;
  v28 = v27 + v26;
  v29 = *(v17 + 16);
  v30 = v35;
  v29(v28, v35, v16);
  v29(v28 + v25, v23, v16);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v31 = *(v17 + 8);
  v31(v23, v16);
  return (v31)(v30, v16);
}

uint64_t closure #1 in closure #1 in closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  __chkstk_darwin(v4);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;

  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v10 = *(v5 + 72);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10000DCA0;
  (*(v6 + 16))(v12 + v11, v9, v4);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v6 + 8))(v9, v4);
}

uint64_t PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v60 = *(v0 - 8);
  v61 = v0;
  v1 = *(v60 + 64);
  __chkstk_darwin(v0);
  v59 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  __chkstk_darwin(v3);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v54 = &v48 - v8;
  v9 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v13 = *(v48 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v48);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  v22 = type metadata accessor for ChatMessagesPrompt();
  v62 = *(v22 - 8);
  v23 = *(v62 + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v48 - v28;
  __chkstk_darwin(v27);
  v51 = &v48 - v30;
  v31 = v52;
  ChatMessagesPrompt.init(_:)();
  v52 = v31;
  v32 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  (*(v13 + 104))(v16, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v48);
  v33 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
  (*(v49 + 104))(v12, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v50);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  v34 = enum case for OverrideHint.constant<A>(_:);
  (*(v18 + 104))(v21, enum case for OverrideHint.constant<A>(_:), v17);
  lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, &type metadata accessor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  (*(v18 + 8))(v21, v17);
  v35 = *(v62 + 8);
  v62 += 8;
  v35(v26, v22);
  v36 = type metadata accessor for StringResponseSanitizer.Overrides();
  v37 = v53;
  (*(*(v36 - 8) + 56))(v53, 1, 1, v36);
  (*(v55 + 104))(v37, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v56);
  v38 = type metadata accessor for StringResponseSanitizer.Guardrails();
  v39 = v59;
  (*(*(v38 - 8) + 56))(v59, 1, 1, v38);
  (*(v60 + 104))(v39, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v61);
  v40 = v54;
  StringResponseSanitizer.init(overrides:guardrails:)();
  v41 = v57;
  v42 = v58;
  (*(v57 + 104))(v40, v34, v58);
  v43 = v51;
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v41 + 8))(v40, v42);
  v35(v29, v22);
  v44 = v52;
  v45 = static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v44)
  {
    return (v35)(v43, v22);
  }

  v47 = v45;
  v35(v43, v22);
  return v47;
}

uint64_t closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_generateGenerativeFunctionOverride()@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for User();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for System();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChatMessagesPrompt();
  v30 = *(v12 - 8);
  v13 = v30;
  v14 = *(v30 + 64);
  v15 = __chkstk_darwin(v12);
  v28 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v29 = &v28 - v17;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v8 + 8))(v11, v7);
  User.init(_:)();
  v31 = v1;
  v18 = v28;
  v19 = v32;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v33 + 8))(v6, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v20 = *(v30 + 72);
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10000DC90;
  v23 = v22 + v21;
  v24 = *(v13 + 16);
  v25 = v29;
  v24(v23, v29, v12);
  v24(v23 + v20, v18, v12);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v26 = *(v13 + 8);
  v26(v18, v12);
  return (v26)(v25, v12);
}

uint64_t closure #1 in closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_generateGenerativeFunctionOverride()()
{
  return closure #1 in closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_generateGenerativeFunctionOverride()();
}

{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = type metadata accessor for BindableVariable();
  v10[4] = &protocol witness table for BindableVariable;
  __swift_allocate_boxed_opaque_existential_1(v10);
  BindableVariable.init(name:)();
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10000DCA0;
  (*(v1 + 16))(v7 + v6, v4, v0);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v1 + 8))(v4, v0);
}

unsigned __int8 *PersonalizedReflectionQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v61 = a4;
  v64 = a3;
  v10 = type metadata accessor for CachePolicy();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v60[2] = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GenerativeModelSessionConfiguration();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v60[1] = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v60 - v19;
  v21 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v63 = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  (*(v22 + 32))(v6 + OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig, v25, v21);
  if (!*(a5 + 16))
  {
    goto LABEL_66;
  }

  v26 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000010000D910);
  if ((v27 & 1) == 0)
  {
    goto LABEL_66;
  }

  v28 = (*(a5 + 56) + 16 * v26);
  v30 = *v28;
  v29 = v28[1];

  v32 = HIBYTE(v29) & 0xF;
  v33 = v30 & 0xFFFFFFFFFFFFLL;
  if (!((v29 & 0x2000000000000000) != 0 ? HIBYTE(v29) & 0xF : v30 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v30, v29, 10);
    goto LABEL_66;
  }

  if ((v29 & 0x2000000000000000) != 0)
  {
    v65[0] = v30;
    v65[1] = v29 & 0xFFFFFFFFFFFFFFLL;
    if (v30 == 43)
    {
      if (v32)
      {
        if (--v32)
        {
          v48 = 0;
          v49 = v65 + 1;
          while (1)
          {
            v50 = *v49 - 48;
            if (v50 > 9)
            {
              break;
            }

            v51 = 10 * v48;
            if ((v48 * 10) >> 64 != (10 * v48) >> 63)
            {
              break;
            }

            v48 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              break;
            }

            ++v49;
            if (!--v32)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    if (v30 != 45)
    {
      if (v32)
      {
        v55 = 0;
        v56 = v65;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            break;
          }

          v58 = 10 * v55;
          if ((v55 * 10) >> 64 != (10 * v55) >> 63)
          {
            break;
          }

          v55 = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            break;
          }

          ++v56;
          if (!--v32)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v32)
    {
      if (--v32)
      {
        v40 = 0;
        v41 = v65 + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v43 - v42;
          if (__OFSUB__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v32)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if ((v30 & 0x1000000000000000) != 0)
  {
    result = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v35 = *result;
  if (v35 == 43)
  {
    if (v33 < 1)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v32 = v33 - 1;
    if (v33 != 1)
    {
      v44 = 0;
      if (result)
      {
        v45 = result + 1;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            goto LABEL_64;
          }

          v47 = 10 * v44;
          if ((v44 * 10) >> 64 != (10 * v44) >> 63)
          {
            goto LABEL_64;
          }

          v44 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            goto LABEL_64;
          }

          ++v45;
          if (!--v32)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_64:
    LOBYTE(v32) = 1;
    goto LABEL_65;
  }

  if (v35 != 45)
  {
    if (v33)
    {
      v52 = 0;
      if (result)
      {
        while (1)
        {
          v53 = *result - 48;
          if (v53 > 9)
          {
            goto LABEL_64;
          }

          v54 = 10 * v52;
          if ((v52 * 10) >> 64 != (10 * v52) >> 63)
          {
            goto LABEL_64;
          }

          v52 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            goto LABEL_64;
          }

          ++result;
          if (!--v33)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

    goto LABEL_64;
  }

  if (v33 < 1)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v32 = v33 - 1;
  if (v33 == 1)
  {
    goto LABEL_64;
  }

  v36 = 0;
  if (result)
  {
    v37 = result + 1;
    while (1)
    {
      v38 = *v37 - 48;
      if (v38 > 9)
      {
        goto LABEL_64;
      }

      v39 = 10 * v36;
      if ((v36 * 10) >> 64 != (10 * v36) >> 63)
      {
        goto LABEL_64;
      }

      v36 = v39 - v38;
      if (__OFSUB__(v39, v38))
      {
        goto LABEL_64;
      }

      ++v37;
      if (!--v32)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_56:
  LOBYTE(v32) = 0;
LABEL_65:
  v66 = v32;
LABEL_66:

  type metadata accessor for TokenGenerator();
  if (one-time initialization token for nameForNewModelID != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v16, nameForNewModelID);
  (*(v17 + 16))(v20, v59, v16);
  static CachePolicy.inMemory.getter();
  GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
  *(v6 + OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo__model) = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
  return v6;
}

uint64_t PersonalizedReflectionQueryRunner._ClientInfo.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig;
  v3 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo__model];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t protocol witness for _ClientInfoProtocol.trackingConfig.getter in conformance PersonalizedReflectionQueryRunner._ClientInfo@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t protocol witness for _ClientInfoProtocol.trackingConfig.setter in conformance PersonalizedReflectionQueryRunner._ClientInfo(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*protocol witness for _ClientInfoProtocol.trackingConfig.modify in conformance PersonalizedReflectionQueryRunner._ClientInfo())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for _ClientInfoProtocol.trackingConfig.modify in conformance ClassificationQueryRunner._ClientInfo;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
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
    v11 = &_swiftEmptyArrayStorage;
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
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
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t type metadata accessor for PersonalizedReflectionQueryRunner._ClientInfo()
{
  result = type metadata singleton initialization cache for PersonalizedReflectionQueryRunner._ClientInfo;
  if (!type metadata singleton initialization cache for PersonalizedReflectionQueryRunner._ClientInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PersonalizedReflectionQueryRunner._ClientInfo()
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}