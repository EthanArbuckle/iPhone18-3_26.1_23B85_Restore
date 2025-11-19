uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolIntentRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolIntentRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchToolIntentRequest.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E17ToolIntentRequestV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E17ToolIntentRequestV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = OUTLINED_FUNCTION_70_2();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  v18 = v3[1];
  LOBYTE(v32) = 0;
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v19 = v3[2];
    v20 = v3[3];
    LOBYTE(v32) = 1;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[4];
    v22 = v3[5];
    LOBYTE(v32) = 2;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = type metadata accessor for SearchToolIntentRequest(0);
    v24 = v23[7];
    LOBYTE(v32) = 3;
    type metadata accessor for StructuredQueryEntity(0);
    OUTLINED_FUNCTION_80_7();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v25, v26);
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v32 = *(v3 + v23[8]);
    HIBYTE(v31) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchEntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v3 + v23[11]);
    OUTLINED_FUNCTION_96_7(5);
    v28 = *(v3 + v23[12]);
    OUTLINED_FUNCTION_96_7(6);
    v29 = *(v3 + v23[13]);
    OUTLINED_FUNCTION_96_7(7);
    v32 = *(v3 + v23[15]);
    HIBYTE(v31) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
    lazy protocol witness table accessor for type [SearchPropertyRequest] and conformance <A> [A]();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t SearchToolIntentRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E17ToolIntentRequestV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E17ToolIntentRequestV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMR);
  OUTLINED_FUNCTION_14(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_198_2();
  v59 = type metadata accessor for SearchToolIntentRequest(v18);
  v19 = OUTLINED_FUNCTION_17(v59);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36();
  v61 = v23 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v60 = a1;
  v26 = OUTLINED_FUNCTION_70_2();
  __swift_project_boxed_opaque_existential_1(v26, v27);
  lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    OUTLINED_FUNCTION_177_3();
    return __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  else
  {
    v28 = v14;
    v58 = a2;
    LOBYTE(__src[0]) = 0;
    v29 = v12;
    OUTLINED_FUNCTION_94_5();
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_177_3();
    *a2 = v30;
    a2[1] = v31;
    OUTLINED_FUNCTION_24_15(1);
    a2[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    a2[3] = v32;
    OUTLINED_FUNCTION_24_15(2);
    a2[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    a2[5] = v33;
    type metadata accessor for StructuredQueryEntity(0);
    LOBYTE(__src[0]) = 3;
    OUTLINED_FUNCTION_80_7();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v34, v35);
    OUTLINED_FUNCTION_94_5();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v59;
    outlined init with take of SearchResultItem?(v11, a2 + v59[7], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    LOBYTE(v64) = 4;
    lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchEntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
    OUTLINED_FUNCTION_94_5();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(a2 + v36[8]) = __src[0];
    OUTLINED_FUNCTION_24_15(5);
    *(a2 + v36[11]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_24_15(6);
    *(a2 + v36[12]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_24_15(7);
    *(v61 + v36[13]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
    v63 = 8;
    lazy protocol witness table accessor for type [SearchPropertyRequest] and conformance <A> [A]();
    OUTLINED_FUNCTION_94_5();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v28 + 8))(v3, v29);
    v37 = v61;
    *(v61 + v36[15]) = v64;
    _s10OmniSearch0B7ContextVSgWOi0_(__src);
    memcpy((v37 + v36[9]), __src, 0xA0uLL);
    *(v37 + v36[10]) = 0;
    *(v37 + v36[14]) = 1;
    v38 = v37 + v36[16];
    type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v43 = type metadata accessor for AssistantSystemContext(0);
    v44 = v43[5];
    type metadata accessor for IntentSystemContext.InterfaceIdiom();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    v49 = (v38 + v43[6]);
    *v49 = 0;
    v49[1] = 0;
    v50 = (v38 + v43[7]);
    *v50 = 0;
    v50[1] = 0;
    *(v38 + v43[8]) = 1;
    v51 = v36[17];
    type metadata accessor for SearchEntity(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    OUTLINED_FUNCTION_12_20();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v37, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    OUTLINED_FUNCTION_11_20();
    return outlined destroy of SearchToolIntentRequest(v37, v56);
  }
}

uint64_t AssistantSystemContext.locale.getter()
{
  v1 = (v0 + *(type metadata accessor for AssistantSystemContext(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_94();
}

void AssistantSystemContext.asCATContext.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  SearchCATContext.init()(v3);
  v16 = type metadata accessor for AssistantSystemContext(0);
  if ((*(v0 + *(v16 + 32)) & 1) == 0)
  {
    v17 = DeviceState.deviceClass.getter();
    v19 = v18;
    v20 = type metadata accessor for SearchCATContext();
    v21 = *(v3 + *(v20 + 20));
    v42 = v17;
    v43 = v19;
    EntityProperty.wrappedValue.setter();
    v22 = AFIsDeviceUnlocked();
    v23 = *(v3 + *(v20 + 32));
    LOBYTE(v42) = v22 ^ 1;
    EntityProperty.wrappedValue.setter();
  }

  outlined init with copy of SpotlightRankingItem?(v1 + *(v16 + 20), v15, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v24 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  v25 = OUTLINED_FUNCTION_103_6();
  OUTLINED_FUNCTION_166(v25, v26, v24);
  if (v27)
  {
    outlined destroy of IntentApplication?(v15, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
    v28 = 0;
    v30 = 0;
  }

  else
  {
    v28 = IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v30 = v29;
    OUTLINED_FUNCTION_51(v24);
    (*(v31 + 8))(v15, v24);
  }

  v32 = type metadata accessor for SearchCATContext();
  v33 = *(v3 + *(v32 + 24));
  v42 = v28;
  v43 = v30;
  EntityProperty.wrappedValue.setter();
  outlined init with copy of SpotlightRankingItem?(v1, v9, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v34 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  v35 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v35, v36, v34);
  if (v27)
  {
    outlined destroy of IntentApplication?(v9, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
    v37 = 0;
    v39 = 0;
  }

  else
  {
    v37 = IntentSystemContext.AssistantContext.InteractionMode.asString.getter();
    v39 = v38;
    OUTLINED_FUNCTION_51(v34);
    (*(v40 + 8))(v9, v34);
  }

  v41 = *(v3 + *(v32 + 28));
  v42 = v37;
  v43 = v39;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

uint64_t DialogData.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t DialogData.parameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for DialogData(0) + 24));
}

uint64_t AssistantSystemContext.requestIdentifier.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t DialogData.speakableString.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for DialogData(v0);
  v2 = OUTLINED_FUNCTION_85_1(*(v1 + 32));
  return outlined init with copy of SpotlightRankingItem?(v2, v3, v4, v5);
}

uint64_t DialogData.init(identifier:templateDirectoryURL:parameters:stringLiteral:speakableString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_190_3();
  v13 = v12;
  *v12 = v14;
  v12[1] = v15;
  v16 = type metadata accessor for DialogData(0);
  outlined init with take of SearchResultItem?(v10, v13 + v16[5], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v13 + v16[6]) = v9;
  v17 = (v13 + v16[7]);
  *v17 = v8;
  v17[1] = v7;
  return outlined init with take of SearchResultItem?(a7, v13 + v16[8], &_s10AppIntents16_SpeakableStringVSgMd, &_s10AppIntents16_SpeakableStringVSgMR);
}

uint64_t SearchToolIntentResponse.snippetData.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_94();
  outlined copy of Data._Representation(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchToolIntentResponse.attributionData.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchToolIntentResponse.dialogData.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = *(type metadata accessor for SearchToolIntentResponse(v0) + 28);
  OUTLINED_FUNCTION_86_8();
  v3 = OUTLINED_FUNCTION_85_1(v2);
  return _s10OmniSearch22AssistantSystemContextVWOcTm_0(v3, v4);
}

uint64_t SearchToolIntentResponse.init(results:snippetData:attributionData:dialogData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  v9 = *(type metadata accessor for SearchToolIntentResponse(0) + 28);
  OUTLINED_FUNCTION_7_20();
  return outlined init with take of AssistantSystemContext(a6, a7 + v10);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchToolIntentResponse.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25D86D084(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchToolIntentResponse.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SearchToolIntentResponse.CodingKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance SearchToolIntentResponse.CodingKeys@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_25D86D084(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolIntentResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolIntentResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchToolIntentResponse.encode(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E18ToolIntentResponseV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E18ToolIntentResponseV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = OUTLINED_FUNCTION_70_2();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[1] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
  lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v11, v4);
}

uint64_t SearchToolIntentResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E18ToolIntentResponseV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E18ToolIntentResponseV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v34 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_198_2();
  v11 = type metadata accessor for SearchToolIntentResponse(v10);
  v12 = OUTLINED_FUNCTION_17(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v17 = v16 - v15;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
    lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v34 + 8))(v3, v5);
    *v17 = v35;
    *(v17 + 8) = xmmword_25DBD92A0;
    *(v17 + 24) = xmmword_25DBC9410;
    v19 = (v17 + *(v11 + 28));
    v20 = type metadata accessor for DialogData(0);
    v21 = v20[5];
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = v20[8];
    type metadata accessor for _SpeakableString();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    *v19 = 0;
    v19[1] = 0;
    *(v19 + v20[6]) = 0;
    v31 = (v19 + v20[7]);
    *v31 = 0;
    v31[1] = 0;
    outlined init with take of AssistantSystemContext(v17, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t one-time initialization function for catTemplateDirectoryURL()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static SearchToolIntentController.catTemplateDirectoryURL);
  __swift_project_value_buffer(v0, static SearchToolIntentController.catTemplateDirectoryURL);
  return closure #1 in variable initialization expression of static SearchToolIntentController.catTemplateDirectoryURL();
}

uint64_t closure #1 in variable initialization expression of static SearchToolIntentController.catTemplateDirectoryURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  type metadata accessor for DialogExperience();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = [v13 resourceURL];
  if (v14)
  {
    v15 = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v5 + 32);
    v16(v3, v9, v4);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    v16(v11, v3, v4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    v17 = [v13 bundleURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      outlined destroy of IntentApplication?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  URL.appendingPathComponent(_:)();

  return (*(v5 + 8))(v11, v4);
}

void SearchToolIntentController.init(omniSearchService:metricsLogger:context:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *(v8 + 24);
  v10 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v11);
  OUTLINED_FUNCTION_19_14();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v16 = OUTLINED_FUNCTION_164_1(v15);
  v17(v16);
  v18 = v7[3];
  v19 = v7[4];
  v20 = OUTLINED_FUNCTION_242();
  __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  OUTLINED_FUNCTION_19_14();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  v26 = OUTLINED_FUNCTION_163_2(v25);
  v27(v26);
  specialized SearchToolIntentController.init(omniSearchService:metricsLogger:context:)(v1, v2, v5, v3, v11, v18, v10, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_148();
}

uint64_t SearchToolIntentController.perform(request:progressReporter:)()
{
  OUTLINED_FUNCTION_48();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for SearchToolIntentRequest(0);
  OUTLINED_FUNCTION_21(v6);
  v1[7] = v7;
  v1[8] = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_199();
  v9 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_75();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  OUTLINED_FUNCTION_12_20();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v8, v1);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = v3;
  outlined init with take of AssistantSystemContext(v1, v11 + v9);
  v12 = (v11 + v10);
  *v12 = v5;
  v12[1] = v6;
  v13 = *(MEMORY[0x277D61CC0] + 4);

  swift_unknownObjectRetain();
  v14 = swift_task_alloc();
  v0[11] = v14;
  v15 = type metadata accessor for SearchToolIntentResponse(0);
  *v14 = v0;
  v14[1] = SearchToolIntentController.perform(request:progressReporter:);
  v16 = v0[2];
  v17.n128_u64[0] = 30.0;

  return MEMORY[0x2821C8618](v16, &async function pointer to partial apply for closure #1 in SearchToolIntentController.perform(request:progressReporter:), v11, v15, v17);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[9];
    v12 = v3[10];

    OUTLINED_FUNCTION_106();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_48();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_127();
  v4 = v0[12];

  return v3();
}

uint64_t closure #1 in SearchToolIntentController.perform(request:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*a2 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v14(a1, a3, a4, a5);
}

uint64_t SearchToolIntentController.performInternal(request:progressReporter:)()
{
  OUTLINED_FUNCTION_48();
  v1[137] = v0;
  v1[136] = v2;
  v1[135] = v3;
  v1[134] = v4;
  v1[133] = v5;
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[138] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[139] = v7;
  v9 = *(v8 + 64);
  v1[140] = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  v1[141] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for DialogData(0);
  v1[142] = v13;
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  v1[143] = OUTLINED_FUNCTION_199();
  v16 = type metadata accessor for SearchAppEntity(0);
  v1[144] = v16;
  OUTLINED_FUNCTION_114(v16);
  v18 = *(v17 + 64);
  v1[145] = OUTLINED_FUNCTION_199();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v19);
  v21 = *(v20 + 64);
  v1[146] = OUTLINED_FUNCTION_199();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v22);
  v24 = *(v23 + 64);
  v1[147] = OUTLINED_FUNCTION_199();
  v25 = type metadata accessor for OSSignpostError();
  v1[148] = v25;
  OUTLINED_FUNCTION_21(v25);
  v1[149] = v26;
  v28 = *(v27 + 64);
  v1[150] = OUTLINED_FUNCTION_199();
  v29 = type metadata accessor for SearchToolIntentController.ExperienceData(0);
  v1[151] = v29;
  OUTLINED_FUNCTION_114(v29);
  v31 = *(v30 + 64);
  v1[152] = OUTLINED_FUNCTION_199();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  v1[153] = OUTLINED_FUNCTION_199();
  v35 = type metadata accessor for SearchCATContext();
  v1[154] = v35;
  OUTLINED_FUNCTION_114(v35);
  v37 = *(v36 + 64);
  v1[155] = OUTLINED_FUNCTION_199();
  v38 = type metadata accessor for AssistantSystemContext(0);
  v1[156] = v38;
  OUTLINED_FUNCTION_114(v38);
  v40 = *(v39 + 64);
  v1[157] = OUTLINED_FUNCTION_199();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18RGOverrideResponseVSgMd, &_s10OmniSearch18RGOverrideResponseVSgMR);
  OUTLINED_FUNCTION_114(v41);
  v43 = *(v42 + 64);
  v1[158] = OUTLINED_FUNCTION_199();
  v44 = type metadata accessor for RGOverrideResponse();
  v1[159] = v44;
  OUTLINED_FUNCTION_114(v44);
  v46 = *(v45 + 64);
  v1[160] = OUTLINED_FUNCTION_199();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  OUTLINED_FUNCTION_114(v47);
  v49 = *(v48 + 64);
  v1[161] = OUTLINED_FUNCTION_160();
  v1[162] = swift_task_alloc();
  v50 = type metadata accessor for LocalizedStringResource();
  v1[163] = v50;
  OUTLINED_FUNCTION_114(v50);
  v52 = *(v51 + 64);
  v1[164] = OUTLINED_FUNCTION_199();
  v53 = type metadata accessor for DisplayRepresentation();
  v1[165] = v53;
  OUTLINED_FUNCTION_21(v53);
  v1[166] = v54;
  v56 = *(v55 + 64);
  v1[167] = OUTLINED_FUNCTION_199();
  v57 = type metadata accessor for SearchResultType();
  v1[168] = v57;
  OUTLINED_FUNCTION_21(v57);
  v1[169] = v58;
  v60 = *(v59 + 64);
  v1[170] = OUTLINED_FUNCTION_199();
  v61 = type metadata accessor for SearchEntity(0);
  v1[171] = v61;
  OUTLINED_FUNCTION_21(v61);
  v1[172] = v62;
  v64 = *(v63 + 64);
  v1[173] = OUTLINED_FUNCTION_160();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  v1[176] = swift_task_alloc();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
  v1[177] = v65;
  OUTLINED_FUNCTION_114(v65);
  v67 = *(v66 + 64);
  v1[178] = OUTLINED_FUNCTION_199();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtSgMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtSgMR);
  OUTLINED_FUNCTION_114(v68);
  v70 = *(v69 + 64);
  v1[179] = OUTLINED_FUNCTION_160();
  v1[180] = swift_task_alloc();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v71);
  v73 = *(v72 + 64);
  v1[181] = OUTLINED_FUNCTION_160();
  v1[182] = swift_task_alloc();
  v1[183] = swift_task_alloc();
  v74 = type metadata accessor for SearchToolIntentRequest(0);
  v1[184] = v74;
  OUTLINED_FUNCTION_114(v74);
  v76 = *(v75 + 64);
  v1[185] = OUTLINED_FUNCTION_160();
  v1[186] = swift_task_alloc();
  v1[187] = swift_task_alloc();
  v77 = type metadata accessor for OSSignpostID();
  v1[188] = v77;
  OUTLINED_FUNCTION_21(v77);
  v1[189] = v78;
  v80 = *(v79 + 64);
  v1[190] = OUTLINED_FUNCTION_160();
  v1[191] = swift_task_alloc();
  v1[192] = swift_task_alloc();
  v81 = type metadata accessor for UUID();
  v1[193] = v81;
  OUTLINED_FUNCTION_21(v81);
  v1[194] = v82;
  v84 = *(v83 + 64);
  v1[195] = OUTLINED_FUNCTION_199();
  v85 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v85, v86, v87);
}

{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1072);
  v3 = *(*(v0 + 1472) + 64);
  *(v0 + 764) = v3;
  v4 = (v2 + v3 + *(v1 + 28));
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  v7 = *(v0 + 1560);
  v8 = *(v0 + 1552);
  v9 = *(v0 + 1544);

  UUID.init()();
  *(v0 + 1568) = UUID.uuidString.getter();
  *(v0 + 1576) = v10;
  v11 = *(v8 + 8);
  v12 = OUTLINED_FUNCTION_70_2();
  v13(v12);
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_5_21();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  *(v0 + 1584) = OUTLINED_FUNCTION_200(v14, static Logging.stextension);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_30_7();
    v17 = swift_slowAlloc();
    swift_slowAlloc();
    *v17 = 136315394;
    OUTLINED_FUNCTION_30_5();
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 12) = 2080;
    OUTLINED_FUNCTION_119();
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v15, v16, "SearchTool running clientId: %s for requestId: %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v18 = *(v0 + 1096);
  v19 = v18[11];
  __swift_project_boxed_opaque_existential_1(v18 + 7, v18[10]);
  v20 = *(v19 + 16);
  v21 = OUTLINED_FUNCTION_119();
  v22(v21);

  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 1536);
  v24 = type metadata accessor for OSSignposter();
  *(v0 + 1592) = OUTLINED_FUNCTION_200(v24, static Logging.searchComponentSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = *(v0 + 1536);
    v28 = OUTLINED_FUNCTION_172();
    *v28 = 0;
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v25, v26, v29, "SearchTool.E2ESearch", "", v28, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v30 = *(v0 + 1536);
  v31 = *(v0 + 1528);
  v32 = *(v0 + 1512);
  v33 = *(v0 + 1504);

  v34 = *(v32 + 16);
  v35 = OUTLINED_FUNCTION_88();
  v36(v35);
  v37 = type metadata accessor for OSSignpostIntervalState();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_65();
  *(v0 + 1600) = OSSignpostIntervalState.init(id:isOpen:)();
  *(v0 + 1608) = *(v32 + 8);
  *(v0 + 1616) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40 = OUTLINED_FUNCTION_54_0();
  v41(v40);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v42 = *(v0 + 1472);
  v43 = *(v0 + 1072);
  v44 = static ContextManager.shared;
  *(v0 + 1624) = static ContextManager.shared;
  v45 = *(v42 + 36);
  memcpy((v0 + 176), (v43 + v45), 0xA0uLL);
  memcpy((v0 + 336), (v43 + v45), 0xA0uLL);
  outlined init with copy of SpotlightRankingItem?(v0 + 176, v0 + 496, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);

  return MEMORY[0x2822009F8](SearchToolIntentController.performInternal(request:progressReporter:), v44, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[203];
  ContextManager.set(searchContext:)(v0 + 42);
  memcpy(v0 + 2, v0 + 42, 0xA0uLL);
  outlined destroy of IntentApplication?((v0 + 2), &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 1688);
  *v4 = *v1;
  *(v3 + 1696) = v7;
  *(v3 + 1704) = v0;

  v8 = OUTLINED_FUNCTION_191_3();
  outlined destroy of IntentApplication?(v8, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = v2[216];
  *v4 = *v1;
  v3[217] = v0;

  v6 = v2[215];
  if (v0)
  {
    outlined consume of OmniSearchResponseRenderOption(v3[128], v3[129]);
  }

  else
  {

    outlined consume of OmniSearchResponseRenderOption(v3[128], v3[129]);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1520);
  v4 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v5 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 1600);
    v7 = *(v0 + 1200);
    v8 = *(v0 + 1192);
    v9 = *(v0 + 1184);

    checkForErrorAndConsumeState(state:)();

    v10 = *(v8 + 88);
    v11 = OUTLINED_FUNCTION_64_0();
    if (v12(v11) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 1192) + 8))(*(v0 + 1200), *(v0 + 1184));
      v13 = "";
    }

    v14 = *(v0 + 1520);
    v15 = OUTLINED_FUNCTION_172();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v4, v5, v16, "SearchTool.E2ESearch", v13, v15, 2u);
    v17 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v17);
  }

  v18 = *(v0 + 1696);
  v19 = *(v0 + 1616);
  v20 = *(v0 + 1608);
  v21 = *(v0 + 1520);
  v22 = *(v0 + 1504);

  v23 = OUTLINED_FUNCTION_88();
  v20(v23);
  if (*(v18 + 41) == 1)
  {
    v24 = *(v0 + 1368);
    specialized Collection.first.getter(*(v0 + 1720), *(v0 + 1176));
    v25 = OUTLINED_FUNCTION_11_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, v26, v24);
    v28 = *(v0 + 1176);
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 1176), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    }

    else
    {
      v29 = *(v0 + 1168);
      v30 = *(v0 + 1152);
      v31 = *(v28 + 72);
      *(v0 + 761) = 1;
      EntityProperty.wrappedValue.setter();
      v32 = *(v28 + 16);
      EntityProperty.wrappedValue.getter();
      v33 = OUTLINED_FUNCTION_93_6();
      v35 = __swift_getEnumTagSinglePayload(v33, v34, v30);
      v36 = *(v0 + 1168);
      if (v35)
      {
        outlined destroy of IntentApplication?(*(v0 + 1168), &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      }

      else
      {
        v37 = *(v0 + 1160);
        v38 = OUTLINED_FUNCTION_88();
        _s10OmniSearch22AssistantSystemContextVWOcTm_0(v38, v39);
        outlined destroy of IntentApplication?(v36, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        v40 = *(v28 + 72);
        EntityProperty.wrappedValue.getter();
        v41 = *(v37 + 32);
        *(v0 + 763) = *(v0 + 762);
        EntityProperty.wrappedValue.setter();
        outlined destroy of SearchToolIntentRequest(v37, type metadata accessor for SearchAppEntity);
      }

      v42 = *(v0 + 1176);
      OUTLINED_FUNCTION_2_25();
      outlined destroy of SearchToolIntentRequest(v43, v44);
    }
  }

  v45 = *(v0 + 1584);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_16_11(v47))
  {
    v48 = *(v0 + 1720);
    v49 = *(v0 + 1368);
    OUTLINED_FUNCTION_30_7();
    v50 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v141 = swift_slowAlloc();
    *v50 = 134218243;
    *(v50 + 4) = *(v48 + 16);
    *(v50 + 12) = 2085;

    MEMORY[0x25F89F8A0](v51, v49);
    OUTLINED_FUNCTION_188_3();

    OUTLINED_FUNCTION_179_0();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v50 + 14) = v52;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v141);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v58 = *(v0 + 1136);
  outlined init with copy of SpotlightRankingItem?(*(v0 + 1296), *(v0 + 1288), &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  v59 = OUTLINED_FUNCTION_65();
  v61 = __swift_getEnumTagSinglePayload(v59, v60, v58);
  v62 = *(v0 + 1288);
  if (v61 == 1)
  {
    v63 = *(v0 + 1216);
    v64 = *(v0 + 1144);
    v65 = *(v0 + 1136);
    v66 = *(*(v0 + 1208) + 24);
    OUTLINED_FUNCTION_86_8();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v67 + v68, v69);
    v70 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v70, v71, v65);
    if (!v72)
    {
      outlined destroy of IntentApplication?(*(v0 + 1288), &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
    }
  }

  else
  {
    v73 = *(v0 + 1144);
    OUTLINED_FUNCTION_7_20();
    outlined init with take of AssistantSystemContext(v62, v74);
  }

  v75 = *(v0 + 1144);
  outlined init with copy of ExtractionRule(*(v0 + 1096) + 56, v0 + 960);
  v76 = *(v0 + 992);
  __swift_project_boxed_opaque_existential_1((v0 + 960), *(v0 + 984));
  v140 = *(v0 + 1144);
  if (*(v75 + 8))
  {
    v105 = **(v0 + 1144);
    v107 = *(v75 + 8);
  }

  v77 = *(v0 + 1720);
  v102 = *(v0 + 1712);
  v106 = *(v0 + 1696);
  v78 = *(v0 + 1576);
  v79 = *(v0 + 1568);
  v109 = *(v0 + 1600);
  v110 = *(v0 + 1560);
  v111 = *(v0 + 1536);
  v112 = *(v0 + 1528);
  v113 = *(v0 + 1520);
  v114 = *(v0 + 1496);
  v115 = *(v0 + 1488);
  v116 = *(v0 + 1480);
  v117 = *(v0 + 1464);
  v118 = *(v0 + 1456);
  v119 = *(v0 + 1448);
  v120 = *(v0 + 1440);
  v121 = *(v0 + 1432);
  v122 = *(v0 + 1424);
  v123 = *(v0 + 1408);
  v124 = *(v0 + 1400);
  v125 = *(v0 + 1392);
  v126 = *(v0 + 1384);
  v127 = *(v0 + 1360);
  v128 = *(v0 + 1336);
  v129 = *(v0 + 1312);
  v103 = *(v0 + 1296);
  v130 = *(v0 + 1288);
  v131 = *(v0 + 1280);
  v132 = *(v0 + 1264);
  v133 = *(v0 + 1256);
  v80 = *(v0 + 1240);
  v134 = *(v0 + 1224);
  v104 = *(v0 + 1216);
  v135 = *(v0 + 1200);
  v136 = *(v0 + 1176);
  v137 = *(v0 + 1168);
  v138 = *(v0 + 1160);
  v108 = *(v0 + 1128);
  v139 = *(v0 + 1120);
  v81 = *(v0 + 1064);
  v82 = *(v76 + 24);

  v83 = OUTLINED_FUNCTION_153();
  v82(v83);

  outlined destroy of OmniSearchOptions(v0 + 656);

  OUTLINED_FUNCTION_1_40();
  outlined destroy of SearchToolIntentRequest(v80, v84);
  outlined destroy of IntentApplication?(v103, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 960));
  v86 = *v104;
  v85 = v104[1];
  v87 = v104[2];
  v88 = v104[3];

  v89 = OUTLINED_FUNCTION_107();
  outlined copy of Data._Representation(v89, v90);
  v91 = OUTLINED_FUNCTION_54_0();
  outlined copy of Data?(v91, v92);
  outlined destroy of SearchToolIntentRequest(v104, type metadata accessor for SearchToolIntentController.ExperienceData);
  v93 = *(type metadata accessor for SearchToolIntentResponse(0) + 28);
  OUTLINED_FUNCTION_7_20();
  outlined init with take of AssistantSystemContext(v140, v81 + v94);

  *v81 = v77;
  v81[1] = v86;
  v81[2] = v85;
  v81[3] = v87;
  v81[4] = v88;
  type metadata accessor for TaskPriority();
  v95 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
  OUTLINED_FUNCTION_131();
  v99 = swift_allocObject();
  OUTLINED_FUNCTION_179_3(v99);
  OUTLINED_FUNCTION_133_5();

  OUTLINED_FUNCTION_106();

  return v100();
}

{
  outlined destroy of OmniSearchOptions((v0 + 82));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 110);
  v3 = v0[213];
  OUTLINED_FUNCTION_208_1();
  v4 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_131();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_179_3(v8);
  OUTLINED_FUNCTION_133_5();

  v9 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v10 = v0[197];
  v11 = v0[196];
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_89_8();
  OUTLINED_FUNCTION_63_8();
  (*(v12 + 320))(v3);
  v13 = OUTLINED_FUNCTION_115_5();
  v14(v13);

  v15 = *(v2 + 8);
  v16 = OUTLINED_FUNCTION_64_0();
  v17(v16);
  swift_willThrow();

  OUTLINED_FUNCTION_127();

  return v18();
}

{
  v2 = v0[215];
  v3 = v0[214];
  v4 = v0[212];
  v5 = v0[162];
  v6 = v0[155];

  outlined destroy of OmniSearchOptions((v0 + 82));

  OUTLINED_FUNCTION_1_40();
  outlined destroy of SearchToolIntentRequest(v6, v7);
  outlined destroy of IntentApplication?(v5, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);

  v8 = v0[217];
  OUTLINED_FUNCTION_208_1();
  v9 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_179_3(v13);
  OUTLINED_FUNCTION_133_5();

  v14 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v15 = v0[197];
  v16 = v0[196];
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_89_8();
  OUTLINED_FUNCTION_63_8();
  (*(v17 + 320))(v8);
  v18 = OUTLINED_FUNCTION_115_5();
  v19(v18);

  v20 = *(v1 + 8);
  v21 = OUTLINED_FUNCTION_64_0();
  v22(v21);
  swift_willThrow();

  OUTLINED_FUNCTION_127();

  return v23();
}

void SearchToolIntentController.performInternal(request:progressReporter:)()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v1 = *(v0 + 1584);
  if (byte_28155CFA4)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_170_3(v3))
    {
      goto LABEL_11;
    }

    v4 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_124_7(v4);
    v7 = "SearchTool Intent perform() called while not prewarmed!";
  }

  else
  {
    v8 = static SearchToolControl.prewarmPID;
    v9 = [objc_opt_self() processInfo];
    v10 = [v9 processIdentifier];

    v2 = Logger.logObject.getter();
    if (v8 == v10)
    {
      v11 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_170_3(v11))
      {
        goto LABEL_11;
      }

      v12 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v12);
      OUTLINED_FUNCTION_200_2(&dword_25D85C000, v13, v14, "SearchTool extension was successfully prewarmed");
      goto LABEL_10;
    }

    v15 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_170_3(v15))
    {
      goto LABEL_11;
    }

    v16 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_124_7(v16);
    v7 = "SearchTool Intent perform() called with a different PID than when prewarming!";
  }

  OUTLINED_FUNCTION_200_2(&dword_25D85C000, v5, v6, v7);
LABEL_10:
  OUTLINED_FUNCTION_90();
  MEMORY[0x25F8A1050]();
LABEL_11:
  v17 = *(v0 + 1576);
  v36 = *(v0 + 1568);
  v18 = *(v0 + 1496);
  v19 = *(v0 + 1472);
  v38 = *(v0 + 1464);
  v20 = *(v0 + 1096);
  v37 = *(v0 + 1088);
  v21 = *(v0 + 1080);
  v22 = *(v0 + 1072);

  v23 = v20[11];
  __swift_project_boxed_opaque_existential_1(v20 + 7, v20[10]);
  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_107();
  v26(v25);
  *(v0 + 1632) = *(v22 + v19[15]);
  OUTLINED_FUNCTION_12_20();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v22, v18);
  swift_unknownObjectRetain();

  OmniSearchOptions.init(request:clientId:progressReporter:)(v18, v36, v17, v21, v37, (v0 + 656));
  outlined init with copy of ExtractionRule((v20 + 2), v0 + 880);
  v27 = *(v0 + 912);
  __swift_project_boxed_opaque_existential_1((v0 + 880), *(v0 + 904));
  *(v0 + 1640) = *v22;
  *(v0 + 1648) = v22[1];
  *(v0 + 1656) = v22[2];
  *(v0 + 1664) = v22[3];
  v34 = v22[5];
  v35 = v22[4];
  v28 = v19[7];
  *(v0 + 876) = v28;
  outlined init with copy of SpotlightRankingItem?(v22 + v28, v38, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  *(v0 + 1672) = *(v22 + v19[8]);
  *(v0 + 1680) = *(v22 + v19[10]);
  *(v0 + 1040) = 3;
  memcpy((v0 + 768), (v0 + 656), 0x69uLL);
  v29 = *(v27 + 8);

  v33 = v29 + *v29;
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 1688) = v31;
  *v31 = v0;
  v31[1] = SearchToolIntentController.performInternal(request:progressReporter:);
  v32 = *(v0 + 1464);

  __asm { BRAA            X8, X16 }
}

uint64_t SearchToolIntentController.performInternal(request:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OUTLINED_FUNCTION_199_3();
  v50 = *(v49 + 1704);
  __swift_destroy_boxed_opaque_existential_1Tm((v49 + 880));
  static Task<>.checkCancellation()();
  if (v50)
  {
    v51 = v50;

    outlined destroy of OmniSearchOptions(v49 + 656);
    v94 = *(v49 + 1600);
    v95 = *(v49 + 1128);
    v96 = *(v49 + 1096);
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
    OUTLINED_FUNCTION_131();
    v101 = swift_allocObject();
    OUTLINED_FUNCTION_179_3(v101);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    v102 = v96[10];
    v103 = v96[11];
    a9 = __swift_project_boxed_opaque_existential_1(v96 + 7, v96[10]);
    if (one-time initialization token for shared != -1)
    {
LABEL_59:
      OUTLINED_FUNCTION_2_0();
    }

    v104 = *(v49 + 1576);
    v105 = *(v49 + 1568);
    OUTLINED_FUNCTION_16_17();
    v252 = v106;
    v254 = *(v49 + 1264);
    v256 = *(v49 + 1256);
    v260 = *(v49 + 1240);
    v264 = *(v49 + 1224);
    v267 = *(v49 + 1216);
    v258 = *(v49 + 1200);
    v262 = *(v49 + 1176);
    v265 = *(v49 + 1168);
    v270 = *(v49 + 1160);
    v273 = *(v49 + 1144);
    v277 = *(v49 + 1128);
    v107 = *(v49 + 1120);
    v108 = *(v49 + 1112);
    v109 = *(v49 + 1104);
    OUTLINED_FUNCTION_133();
    (*(v110 + 320))(v51);
    (*(v103 + 32))(v105, v104, v107, v102, v103);

    v111 = *(v108 + 8);
    v112 = OUTLINED_FUNCTION_156();
    v113(v112);
    swift_willThrow();

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_131_3();

    return v115(v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, *(&a31 + 1), v252, v254, v256, v258, v260, v262, v264, v265, v267, v270, v273, v277, a44, a45, a46, a47, a48, a49);
  }

  v52 = *(v49 + 876);
  v53 = *(v49 + 1456);
  v54 = *(v49 + 1072);
  v276 = (*(**(v49 + 1696) + 128))();
  outlined init with copy of SpotlightRankingItem?(v54 + v52, v53, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v56 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v56, v57, Entity) == 1)
  {
    outlined destroy of IntentApplication?(*(v49 + 1456), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    v58 = *(*(v49 + 1456) + *(Entity + 28));
    EntityProperty.wrappedValue.getter();
    v59 = *(v49 + 1056);
    OUTLINED_FUNCTION_93_8();
  }

  outlined init with copy of SpotlightRankingItem?(*(v49 + 1072) + *(v49 + 876), *(v49 + 1448), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v60 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v60, v61, Entity) == 1)
  {
    outlined destroy of IntentApplication?(*(v49 + 1448), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    v62 = *(*(v49 + 1448) + *(Entity + 24));
    EntityProperty.wrappedValue.getter();
    v63 = *(v49 + 1048);
    OUTLINED_FUNCTION_93_8();
  }

  v64 = *(v49 + 1696);
  v65 = *(v49 + 1584);
  v103 = *(v49 + 1488);
  v66 = *(v49 + 1072);
  v67 = OUTLINED_FUNCTION_94();
  static DerivedType.make(preferredType:filterType:)(v67, v68, v69);

  v51 = a44;
  v70 = SearchToolIntentRequest.isAERRequest.getter();
  v71 = OmniSearchResponse.shouldDisableInAppSearch(isAERRequest:)(v70);
  OUTLINED_FUNCTION_12_20();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v66, v103);
  swift_retain_n();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();
  v74 = os_log_type_enabled(v72, v73);
  v75 = *(v49 + 1696);
  v76 = *(v49 + 1488);
  if (v74)
  {
    v272 = a44;
    v77 = *(v49 + 1472);
    v103 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v78 = swift_slowAlloc();
    a44 = v78;
    *v103 = 136315906;
    v269 = v71;
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v103 + 4) = v79;
    *(v103 + 12) = 1024;
    v80 = *(v75 + 40);

    *(v103 + 14) = v80;

    *(v103 + 18) = 1024;
    v81 = *(v76 + *(v77 + 32));
    if (v81)
    {
      v82 = *(v81 + 16) != 0;
    }

    else
    {
      v82 = 0;
    }

    v87 = *(v49 + 1488);
    OUTLINED_FUNCTION_11_20();
    outlined destroy of SearchToolIntentRequest(v88, v89);
    *(v103 + 20) = v82;
    *(v103 + 24) = 1024;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    *(v103 + 26) = static NSUserDefaults.enablePhotosInAppSearch.getter() & 1;
    _os_log_impl(&dword_25D85C000, v72, v73, "In-app search is %s, isQuerySearch: %{BOOL}d, isAERRequest: %{BOOL}d, enablePhotoInAppSearch: %{BOOL}d", v103, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v51 = v272;
    if (v269)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_20();
    outlined destroy of SearchToolIntentRequest(v76, v83);

    if (v71)
    {
LABEL_16:
      v86 = 0;
      goto LABEL_17;
    }
  }

  v84 = *(v49 + 1696);
  v85 = *(v84 + 48);
  v86 = *(v84 + 56);

LABEL_17:
  LOBYTE(a44) = v51;
  type metadata accessor for SearchEntityVisualContext();
  v90 = swift_allocObject();
  *(v49 + 944) = &type metadata for EntityCardBuilder;
  *(v49 + 952) = &protocol witness table for EntityCardBuilder;
  outlined init with take of EntityCardBuilding(v49 + 920, v90 + 16);
  v91 = OUTLINED_FUNCTION_180();
  v123 = Array<A>.createValidEntities(context:inAppSearchString:derivedType:)(v91, v92, v86, v93, v276);
  v124 = *(v49 + 1584);

  v125 = Logger.logObject.getter();
  v102 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v102))
  {
    OUTLINED_FUNCTION_30_7();
    v127 = swift_slowAlloc();
    *v127 = 134218240;
    *(v127 + 4) = *(v123 + 16);

    *(v127 + 12) = 2048;
    v128 = *(v276 + 16);

    *(v127 + 14) = v128;

    _os_log_impl(&dword_25D85C000, v125, v102, "SearchTool creating %ld valid entities from %ld SearchResults.", v127, 0x16u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v129 = 0;
  v274 = *(v49 + 1416);
  v257 = *(v49 + 1400);
  v259 = *(v49 + 1376);
  v130 = *(v123 + 16);
  v255 = (*(v49 + 1352) + 8);
  v253 = (*(v49 + 1328) + 8);
  *&v131 = 134218755;
  a31 = v131;
  v261 = v123;
  v271 = v130;
  while (1)
  {
    if (v129 == v130)
    {
      v132 = 1;
      v133 = v130;
    }

    else
    {
      if (v129 >= *(v123 + 16))
      {
        __break(1u);
        goto LABEL_59;
      }

      v134 = *(v49 + 1432);
      v135 = *(v49 + 1424);
      v133 = v129 + 1;
      OUTLINED_FUNCTION_42_5();
      v139 = v123 + v136 + *(v137 + 72) * v138;
      v140 = *(v274 + 48);
      *v135 = v138;
      OUTLINED_FUNCTION_14_15();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v142, v135 + v141);
      outlined init with take of SearchResultItem?(v135, v134, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
      v132 = 0;
    }

    v143 = *(v49 + 1440);
    v144 = *(v49 + 1432);
    v145 = *(v49 + 1416);
    __swift_storeEnumTagSinglePayload(v144, v132, 1, v145);
    outlined init with take of SearchResultItem?(v144, v143, &_sSi6offset_10OmniSearch0C6EntityV7elementtSgMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtSgMR);
    v146 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v146, v147, v145);
    if (v148)
    {
      break;
    }

    v278 = v133;
    v149 = *(v49 + 1584);
    v150 = *(v49 + 1408);
    v151 = *(v49 + 1400);
    v152 = *(v49 + 1392);
    v103 = *(v49 + 1384);
    v51 = **(v49 + 1440);
    v153 = *(v274 + 48);
    OUTLINED_FUNCTION_8_20();
    outlined init with take of AssistantSystemContext(v154 + v155, v150);
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v150, v151);
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v150, v152);
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v150, v103);
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v156, v157))
    {
      v266 = v157;
      v268 = v156;
      v158 = *(v49 + 1400);
      v159 = *(v49 + 1392);
      v160 = *(v49 + 1360);
      v161 = *(v49 + 1344);
      v162 = swift_slowAlloc();
      a44 = swift_slowAlloc();
      *v162 = a31;
      *(v162 + 4) = v51;
      *(v162 + 12) = 2080;
      v163 = *(v257 + 8);
      EntityProperty.wrappedValue.getter();
      SearchResultType.rawValue.getter();
      OUTLINED_FUNCTION_34_10();
      (*v255)(v160, v161);
      OUTLINED_FUNCTION_2_25();
      outlined destroy of SearchToolIntentRequest(v158, v164);
      OUTLINED_FUNCTION_242();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_176_3();
      *(v162 + 14) = v160;
      *(v162 + 22) = 2085;
      v165 = SearchEntity.card.getter();
      if (v165)
      {
        v166 = v165;
        SFCard.cardDetails.getter();
      }

      v263 = *(v49 + 1408);
      v174 = *(v49 + 1384);
      v175 = *(v49 + 1336);
      v176 = *(v49 + 1320);
      v103 = *(v49 + 1312);
      v51 = *(v49 + 1304);
      v102 = type metadata accessor for SearchEntity;
      outlined destroy of SearchToolIntentRequest(*(v49 + 1392), type metadata accessor for SearchEntity);
      v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v162 + 24) = v177;
      *(v162 + 32) = 2085;
      SearchEntity.displayRepresentation.getter();
      DisplayRepresentation.title.getter();
      v178 = *v253;
      v179 = OUTLINED_FUNCTION_158();
      v180(v179);
      String.init<A>(describing:)();
      v181 = OUTLINED_FUNCTION_32_0();
      outlined destroy of SearchToolIntentRequest(v181, v182);
      v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v162 + 34) = v183;
      _os_log_impl(&dword_25D85C000, v268, v266, "Result %ld---%s---Card: %{sensitive}s---%{sensitive}s\n", v162, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v184 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v184);

      outlined destroy of SearchToolIntentRequest(v263, type metadata accessor for SearchEntity);
      v123 = v261;
    }

    else
    {
      v167 = *(v49 + 1408);
      v168 = *(v49 + 1400);
      v102 = *(v49 + 1392);
      v169 = *(v49 + 1384);

      outlined destroy of SearchToolIntentRequest(v169, type metadata accessor for SearchEntity);
      outlined destroy of SearchToolIntentRequest(v102, type metadata accessor for SearchEntity);
      v170 = OUTLINED_FUNCTION_153();
      outlined destroy of SearchToolIntentRequest(v170, v171);
      v172 = OUTLINED_FUNCTION_156();
      outlined destroy of SearchToolIntentRequest(v172, v173);
    }

    v130 = v271;
    v129 = v278;
  }

  v185 = (*(v49 + 1072) + *(v49 + 764) + *(*(v49 + 1248) + 24));
  if (v185[1])
  {
    v186 = *v185;
    v187 = v185[1];
  }

  else
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    static NSUserDefaults.fallbackLocale.getter();
  }

  v188 = *(v49 + 1696);
  v189 = *(v49 + 1664);
  v190 = *(v49 + 1296);
  v191 = *(v49 + 1136);
  type metadata accessor for RGOverrideMatcher();
  swift_allocObject();

  *(v49 + 1712) = RGOverrideMatcher.init(locale:)();
  v192 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v191);
  v275 = *(v188 + 32);
  v279 = *(v188 + 24);
  if (v189)
  {
    v195 = *(v49 + 1664);
    v196 = (v49 + 1656);
  }

  else
  {
    v197 = *(v49 + 1648);
    v196 = (v49 + 1640);
  }

  v198 = *v196;
  v199 = *(v49 + 1272);
  v200 = *(v49 + 1264);
  OUTLINED_FUNCTION_133();
  v202 = *(v201 + 128);

  outlined copy of OmniSearchResponseRenderOption(v279, v275);

  v203 = OUTLINED_FUNCTION_156();
  v202(v203);

  OUTLINED_FUNCTION_166(v200, 1, v199);
  if (v148)
  {
    outlined destroy of IntentApplication?(*(v49 + 1264), &_s10OmniSearch18RGOverrideResponseVSgMd, &_s10OmniSearch18RGOverrideResponseVSgMR);
    v214 = v261;
  }

  else
  {
    v204 = *(v49 + 1296);
    v205 = *(v49 + 1280);
    v206 = *(v49 + 1272);
    v207 = *(v49 + 1264);
    v208 = OUTLINED_FUNCTION_70_2();
    outlined destroy of IntentApplication?(v208, v209, &_s10OmniSearch10DialogDataVSgMR);
    v210 = OUTLINED_FUNCTION_180();
    outlined init with take of AssistantSystemContext(v210, v211);
    v212 = OUTLINED_FUNCTION_94();
    outlined init with copy of SpotlightRankingItem?(v212, v213, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
    v214 = *(v205 + *(v206 + 24));

    v215 = *(v205 + *(v206 + 20));
    outlined destroy of SearchToolIntentRequest(v205, type metadata accessor for RGOverrideResponse);
    if (v215 == 1)
    {
      outlined consume of OmniSearchResponseRenderOption(v279, v275);
      v275 = 1;
      v279 = 0;
    }
  }

  *(v49 + 1720) = v214;
  v216 = *(v49 + 1584);
  v217 = *(v49 + 1480);
  v218 = *(v49 + 1072);
  OUTLINED_FUNCTION_12_20();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v219, v220);
  v221 = Logger.logObject.getter();
  v222 = static os_log_type_t.info.getter();
  v223 = OUTLINED_FUNCTION_88_0(v222);
  v224 = *(v49 + 1480);
  if (v223)
  {
    v225 = *(v49 + 1472);
    v226 = *(v49 + 1256);
    v227 = *(v49 + 1248);
    OUTLINED_FUNCTION_28_3();
    v228 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v280 = swift_slowAlloc();
    *v228 = 136315138;
    v229 = *(v225 + 64);
    OUTLINED_FUNCTION_82_10();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v224 + v230, v226);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_11_20();
    outlined destroy of SearchToolIntentRequest(v224, v231);
    v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v228 + 4) = v232;
    _os_log_impl(&dword_25D85C000, v221, v222, "SearchTool Intent perform() with systemContext: %s", v228, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v280);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_11_20();
    outlined destroy of SearchToolIntentRequest(v224, v233);
  }

  v234 = *(v49 + 1232);
  static SearchCATContext.overrideCATContext()(*(v49 + 1224));
  v235 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v235, v236, v234);
  if (v148)
  {
    v237 = *(v49 + 1240);
    v238 = *(v49 + 1232);
    v239 = *(v49 + 1224);
    v240 = *(v49 + 1072) + *(v49 + 764);
    AssistantSystemContext.asCATContext.getter();
    v241 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v241, v242, v238);
    if (!v148)
    {
      outlined destroy of IntentApplication?(*(v49 + 1224), &_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
    }
  }

  else
  {
    outlined init with take of AssistantSystemContext(*(v49 + 1224), *(v49 + 1240));
  }

  v243 = *(v49 + 1696);
  *(v49 + 1024) = v279;
  *(v49 + 1032) = v275;
  v244 = *(v243 + 40);
  v245 = *(v243 + 64);

  v246 = swift_task_alloc();
  *(v49 + 1728) = v246;
  *v246 = v49;
  v246[1] = SearchToolIntentController.performInternal(request:progressReporter:);
  v247 = *(v49 + 1240);
  v248 = *(v49 + 1216);
  v249 = *(v49 + 1096);
  v250 = *(v49 + 1072);
  OUTLINED_FUNCTION_131_3();

  return SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)();
}

Swift::Bool __swiftcall OmniSearchResponse.shouldDisableInAppSearch(isAERRequest:)(Swift::Bool isAERRequest)
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = type metadata accessor for SearchResult(0);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_133();
  v14 = *(v13 + 128);
  v15 = *(v14() + 16);

  if (!v15)
  {
    *(v1 + 40);
LABEL_22:
    OUTLINED_FUNCTION_148();
    return result;
  }

  v17 = (v14)(v16);
  v18 = *(v17 + 16);
  if (!v18)
  {

LABEL_19:
    if ((*(v1 + 40) & 1) == 0 && (v3 & 1) == 0)
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
      static NSUserDefaults.enablePhotosInAppSearch.getter();
    }

    goto LABEL_22;
  }

  v34 = v1;
  v33 = v3;
  v19 = 0;
  v20 = *(v4 + 24);
  v21 = *(v7 + 80);
  OUTLINED_FUNCTION_79();
  while (v19 < *(v17 + 16))
  {
    v23 = *(v7 + 72);
    OUTLINED_FUNCTION_9_21();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v24, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v25 = CodableNSSecureCoding.wrappedValue.getter();
    v26 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v25);
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    if (v26 == 0xD000000000000019 && 0x800000025DBF1E10 == v28)
    {

      OUTLINED_FUNCTION_0_42();
      result = outlined destroy of SearchToolIntentRequest(v12, v32);
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      OUTLINED_FUNCTION_0_42();
      result = outlined destroy of SearchToolIntentRequest(v12, v31);
      if ((v30 & 1) == 0)
      {

        *(v34 + 40);
        goto LABEL_22;
      }
    }

    if (v18 == ++v19)
    {

      v3 = v33;
      v1 = v34;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.createValidEntities(context:inAppSearchString:derivedType:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v253 = a4;
  v247 = a3;
  v246 = a2;
  OUTLINED_FUNCTION_47_1();
  v7 = type metadata accessor for String.Encoding();
  v8 = OUTLINED_FUNCTION_114(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v13 = OUTLINED_FUNCTION_28_2(v12 - v11);
  v249 = type metadata accessor for SearchGlobalEntity(v13);
  v14 = OUTLINED_FUNCTION_17(v249);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v228 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  v24 = OUTLINED_FUNCTION_28_2(&v225 - v23);
  v25 = type metadata accessor for SearchEntity.Builder(v24);
  v26 = OUTLINED_FUNCTION_17(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  v31 = (&v225 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v33 = OUTLINED_FUNCTION_114(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_2();
  v39 = OUTLINED_FUNCTION_28_2(v38);
  v251 = type metadata accessor for SearchResult(v39);
  v40 = OUTLINED_FUNCTION_14(v251);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v48);
  v245 = type metadata accessor for SearchResultType();
  v49 = OUTLINED_FUNCTION_14(v245);
  v51 = v50;
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v49);
  v56 = &v225 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v225 - v57;
  v254 = type metadata accessor for SearchEntity(0);
  v59 = OUTLINED_FUNCTION_14(v254);
  v229 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  v66 = &v225 - v65;
  v67 = *(a5 + 16);
  if (v67)
  {
    v239 = *v253;
    v68 = v67;
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67, 0, MEMORY[0x277D84F90]);
    v234 = v69;
    v70 = *(v42 + 80);
    OUTLINED_FUNCTION_79();
    v72 = a5 + v71;
    _s10OmniSearch18GenericEventEntityVSgWOi0_(__src);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v73 = v72;
    v238 = *(v42 + 72);
    *&v74 = 136642819;
    v230 = v74;
    *&v74 = 136643075;
    v227 = v74;
    v225 = v68;
    v75 = v68;
    v76 = v261;
    v240 = v5;
    v77 = v250;
    do
    {
      v261 = v76;
      v252 = v75;
      v253 = v73;
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v73, v77);
      OUTLINED_FUNCTION_178_3(&v262);
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v78, v79);
      outlined init with copy of ExtractionRule(v240 + 16, &v257);
      OUTLINED_FUNCTION_177_3();
      v80 = v259;
      __swift_project_boxed_opaque_existential_1(&v257, type metadata accessor for SearchResult);
      LOBYTE(v256[0]) = 0;
      v81 = (*(v80 + 24))(v68, v256, v246, v247, type metadata accessor for SearchResult, v80);
      *v31 = 0;
      v31[1] = 0;
      v82 = v25[5];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v251);
      v86 = v25[6];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v245);
      v90 = v25[7];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v249);
      v94 = v25[8];
      type metadata accessor for SearchSpotlightEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
      memcpy(v31 + v25[9], __src, 0x88uLL);
      v99 = v25[10];
      type metadata accessor for SearchAppEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
      v104 = v25[11];
      type metadata accessor for IntentFile();
      OUTLINED_FUNCTION_38_16();
      __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
      v109 = (v31 + v25[12]);
      *v109 = 0;
      v109[1] = 0;
      v110 = v25[13];
      type metadata accessor for EventEntity();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
      v115 = v25[14];
      type metadata accessor for IdCardEntity();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
      v120 = (v31 + v25[15]);
      v120[1] = 0u;
      v120[2] = 0u;
      *v120 = 0u;
      v121 = v25[16];
      OUTLINED_FUNCTION_38_16();
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
      *(v31 + v25[17]) = 5;
      v126 = (v31 + v25[18]);
      *v126 = 0;
      v126[1] = 0;
      OUTLINED_FUNCTION_162_3();
      closure #1 in SearchEntity.init(result:context:searchString:derivedType:)();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v31, v244);
      v127 = v243;
      SearchEntity.init(builder:)();
      outlined destroy of SearchToolIntentRequest(v31, type metadata accessor for SearchEntity.Builder);
      v128 = OUTLINED_FUNCTION_159_2();
      if (__swift_getEnumTagSinglePayload(v128, v129, v254))
      {
        v130 = v261;
        outlined destroy of IntentApplication?(v127, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v131 = 1;
        v132 = v242;
      }

      else
      {
        v130 = v261;
        OUTLINED_FUNCTION_8_20();
        v132 = v242;
        outlined init with take of AssistantSystemContext(v127, v242);
        v131 = 0;
      }

      v77 = v248;
      v133 = v254;
      __swift_storeEnumTagSinglePayload(v132, v131, 1, v254);
      v134 = OUTLINED_FUNCTION_65();
      if (__swift_getEnumTagSinglePayload(v134, v135, v133))
      {

        outlined destroy of IntentApplication?(v132, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(&v257);
        OUTLINED_FUNCTION_0_42();
        outlined destroy of SearchToolIntentRequest(v255, v136);
        v68 = v241;
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v137, v138, v139, v133);
      }

      else
      {
        OUTLINED_FUNCTION_8_20();
        OUTLINED_FUNCTION_178_3(&__src[7]);
        outlined init with take of AssistantSystemContext(v140, v141);
        v142 = (v255 + *(v251 + 40));
        v143 = v142[1];
        v144 = *(v68 + 16);
        v256[0] = *v142;
        v256[1] = v143;

        EntityProperty.wrappedValue.setter();
        v145 = *(v68 + 4);
        v146 = v233;
        EntityProperty.wrappedValue.getter();
        v147 = OUTLINED_FUNCTION_159_2();
        if (__swift_getEnumTagSinglePayload(v147, v148, v249))
        {

          outlined destroy of IntentApplication?(v146, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
        }

        else
        {
          v149 = v228;
          _s10OmniSearch22AssistantSystemContextVWOcTm_0(v146, v228);
          outlined destroy of IntentApplication?(v146, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
          v150 = *(v68 + 16);
          EntityProperty.wrappedValue.getter();
          v151 = *(v149 + 488);
          EntityProperty.wrappedValue.setter();

          v152 = v149;
          v77 = v248;
          outlined destroy of SearchToolIntentRequest(v152, type metadata accessor for SearchGlobalEntity);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v257);
        OUTLINED_FUNCTION_44_0();
        v133 = v254;
        __swift_storeEnumTagSinglePayload(v153, v154, v155, v254);
        OUTLINED_FUNCTION_0_42();
        outlined destroy of SearchToolIntentRequest(v255, v156);
      }

      v157 = OUTLINED_FUNCTION_103_6();
      if (__swift_getEnumTagSinglePayload(v157, v158, v133) == 1)
      {
        outlined destroy of IntentApplication?(v68, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v76 = v130;
        if (one-time initialization token for stextension != -1)
        {
          OUTLINED_FUNCTION_5_21();
          swift_once();
        }

        v159 = type metadata accessor for Logger();
        __swift_project_value_buffer(v159, static Logging.stextension);
        OUTLINED_FUNCTION_9_21();
        OUTLINED_FUNCTION_146_5();
        OUTLINED_FUNCTION_178_3(&__src[2]);
        _s10OmniSearch22AssistantSystemContextVWOcTm_0(v160, v161);
        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v162, v163))
        {
          OUTLINED_FUNCTION_28_3();
          v77 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v164 = swift_slowAlloc();
          OUTLINED_FUNCTION_197_3(v164);
          *v77 = v230;
          if (one-time initialization token for iso8601PrettyPrinted != -1)
          {
            OUTLINED_FUNCTION_15_17();
            swift_once();
          }

          OUTLINED_FUNCTION_88_7();
          _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, v165);
          dispatch thunk of JSONEncoder.encode<A>(_:)();
          if (v76)
          {

            v261 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_169_3();
            v261 = 0;
            static String.Encoding.utf8.getter();
            OUTLINED_FUNCTION_64_0();
            String.init(data:encoding:)();
            if (v190)
            {
              v191 = OUTLINED_FUNCTION_51_9();
            }

            else
            {
              v191 = OUTLINED_FUNCTION_64_0();
            }

            outlined consume of Data._Representation(v191, v192);
          }

          v68 = type metadata accessor for SearchResult;
          outlined destroy of SearchToolIntentRequest(v236, type metadata accessor for SearchResult);
          v193 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v77 + 4) = v193;
          _os_log_impl(&dword_25D85C000, v162, v163, "Failed to construct SearchEntity from result: %{sensitive}s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v235);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();

          v194 = OUTLINED_FUNCTION_146_5();
          outlined destroy of SearchToolIntentRequest(v194, type metadata accessor for SearchResult);
          v76 = v261;
        }

        else
        {

          OUTLINED_FUNCTION_81_10();
          outlined destroy of SearchToolIntentRequest(v68, v178);
          outlined destroy of SearchToolIntentRequest(v77, v162);
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_20();
        OUTLINED_FUNCTION_178_3(&__src[3]);
        outlined init with take of AssistantSystemContext(v166, v167);
        SearchEntity.validateParameters()();
        v76 = v168;
        if (v168)
        {
          if (one-time initialization token for stextension != -1)
          {
            OUTLINED_FUNCTION_5_21();
            swift_once();
          }

          v169 = type metadata accessor for Logger();
          __swift_project_value_buffer(v169, static Logging.stextension);
          OUTLINED_FUNCTION_9_21();
          v68 = v250;
          v170 = OUTLINED_FUNCTION_116_0();
          _s10OmniSearch22AssistantSystemContextVWOcTm_0(v170, v171);
          v172 = v168;
          v173 = Logger.logObject.getter();
          v174 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v173, v174))
          {
            LODWORD(v261) = v174;
            OUTLINED_FUNCTION_30_7();
            v175 = swift_slowAlloc();
            v231 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v176 = swift_slowAlloc();
            OUTLINED_FUNCTION_197_3(v176);
            *v175 = v227;
            if (one-time initialization token for iso8601PrettyPrinted != -1)
            {
              OUTLINED_FUNCTION_15_17();
              swift_once();
            }

            OUTLINED_FUNCTION_88_7();
            _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, v177);
            dispatch thunk of JSONEncoder.encode<A>(_:)();
            OUTLINED_FUNCTION_169_3();
            v226 = 0;
            static String.Encoding.utf8.getter();
            OUTLINED_FUNCTION_64_0();
            String.init(data:encoding:)();
            if (v195)
            {
              v196 = OUTLINED_FUNCTION_51_9();
            }

            else
            {
              v196 = OUTLINED_FUNCTION_64_0();
            }

            outlined consume of Data._Representation(v196, v197);
            v68 = v226;
            outlined destroy of SearchToolIntentRequest(v248, type metadata accessor for SearchResult);
            v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v175 + 4) = v77;
            *(v175 + 12) = 2112;
            v198 = v168;
            v199 = _swift_stdlib_bridgeErrorToNSError();
            *(v175 + 14) = v199;
            v200 = v231;
            *v231 = v199;
            _os_log_impl(&dword_25D85C000, v173, v261, "Failed to construct valid entity from result: %{sensitive}s, error: %@", v175, 0x16u);
            outlined destroy of IntentApplication?(v200, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            __swift_destroy_boxed_opaque_existential_1Tm(v235);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();

            OUTLINED_FUNCTION_2_25();
            outlined destroy of SearchToolIntentRequest(v237, v201);
            v202 = OUTLINED_FUNCTION_146_5();
            outlined destroy of SearchToolIntentRequest(v202, type metadata accessor for SearchResult);
            v76 = v68;
          }

          else
          {

            OUTLINED_FUNCTION_81_10();
            outlined destroy of SearchToolIntentRequest(v77, v186);
            OUTLINED_FUNCTION_2_25();
            outlined destroy of SearchToolIntentRequest(v237, v187);
            v188 = OUTLINED_FUNCTION_53_3();
            outlined destroy of SearchToolIntentRequest(v188, v189);
            v76 = 0;
            v77 = v68;
          }
        }

        else
        {
          OUTLINED_FUNCTION_14_15();
          _s10OmniSearch22AssistantSystemContextVWOcTm_0(v68, v232);
          v180 = *(v234 + 16);
          v179 = *(v234 + 24);
          v77 = v250;
          if (v180 >= v179 >> 1)
          {
            v203 = OUTLINED_FUNCTION_106_6(v179);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v203, v204, v205, v234);
            v234 = v206;
          }

          OUTLINED_FUNCTION_2_25();
          outlined destroy of SearchToolIntentRequest(v68, v181);
          OUTLINED_FUNCTION_0_42();
          outlined destroy of SearchToolIntentRequest(v77, v182);
          *(v234 + 16) = v180 + 1;
          OUTLINED_FUNCTION_42_5();
          v184 = *(v183 + 72);
          OUTLINED_FUNCTION_8_20();
          outlined init with take of AssistantSystemContext(v232, v185);
        }
      }

      v73 = &v253[v238];
      v75 = (v252 - 1);
    }

    while (v252 != 1);
    v207 = v234;
    if (!*(v234 + 16))
    {

      v257 = 0;
      v258 = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v256[0] = v225;
      v208 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x25F89F6C0](v208);

      MEMORY[0x25F89F6C0](0xD000000000000038, 0x800000025DBF2C50);
      v209 = v257;
      v210 = v258;
      if (one-time initialization token for stextension != -1)
      {
        OUTLINED_FUNCTION_5_21();
        swift_once();
      }

      v211 = type metadata accessor for Logger();
      __swift_project_value_buffer(v211, static Logging.stextension);

      v207 = Logger.logObject.getter();
      v212 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v207, v212))
      {
        OUTLINED_FUNCTION_28_3();
        v213 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v214 = swift_slowAlloc();
        v257 = v214;
        *v213 = 136315138;
        *(v213 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v207, v212, "%s", v213, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v214);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v215 = OUTLINED_FUNCTION_4_6();
        MEMORY[0x25F8A1050](v215);
      }

      lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError();
      swift_allocError();
      *v216 = v209;
      v216[1] = v210;
      swift_willThrow();
    }
  }

  else
  {
    v217 = v247;
    if (v247)
    {
      SearchEntity.init()();
      v218 = v245;
      (*(v51 + 104))(v58, *MEMORY[0x277D37048], v245);
      v219 = *(v66 + 1);
      (*(v51 + 16))(v56, v58, v218);
      EntityProperty.wrappedValue.setter();
      (*(v51 + 8))(v58, v218);
      v220 = *(v66 + 14);
      __src[0] = v246;
      __src[1] = v217;

      EntityProperty.wrappedValue.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6EntityVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6EntityVGMR);
      v221 = *(v229 + 72);
      v222 = (*(v229 + 80) + 32) & ~*(v229 + 80);
      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_25DBC8180;
      OUTLINED_FUNCTION_8_20();
      outlined init with take of AssistantSystemContext(v66, v223 + v222);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v207;
}

uint64_t SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  *(v1 + 1832) = v0;
  *(v1 + 1824) = v4;
  *(v1 + 1816) = v5;
  *(v1 + 2320) = v6;
  *(v1 + 1808) = v7;
  *(v1 + 1800) = v8;
  *(v1 + 1792) = v9;
  v10 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  *(v1 + 1840) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 1848) = v11;
  v13 = *(v12 + 64);
  *(v1 + 1856) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1864) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  *(v1 + 1872) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1880) = swift_task_alloc();
  v17 = type metadata accessor for SearchResult(0);
  *(v1 + 1888) = v17;
  OUTLINED_FUNCTION_21(v17);
  *(v1 + 1896) = v18;
  v20 = *(v19 + 64);
  *(v1 + 1904) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1912) = swift_task_alloc();
  v21 = type metadata accessor for SearchEntity(0);
  *(v1 + 1920) = v21;
  OUTLINED_FUNCTION_21(v21);
  *(v1 + 1928) = v22;
  v24 = *(v23 + 64);
  *(v1 + 1936) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1944) = swift_task_alloc();
  v25 = type metadata accessor for _SpeakableString();
  *(v1 + 1952) = v25;
  OUTLINED_FUNCTION_21(v25);
  *(v1 + 1960) = v26;
  v28 = *(v27 + 64);
  *(v1 + 1968) = OUTLINED_FUNCTION_199();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v29);
  v31 = *(v30 + 64);
  *(v1 + 1976) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1984) = swift_task_alloc();
  *(v1 + 1992) = swift_task_alloc();
  *(v1 + 2000) = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  *(v1 + 2008) = OUTLINED_FUNCTION_31_17();
  *(v1 + 2016) = swift_task_alloc();
  *(v1 + 2024) = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMR);
  OUTLINED_FUNCTION_114(v35);
  v37 = *(v36 + 64);
  *(v1 + 2032) = OUTLINED_FUNCTION_199();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
  *(v1 + 2040) = v38;
  OUTLINED_FUNCTION_114(v38);
  v40 = *(v39 + 64);
  *(v1 + 2048) = OUTLINED_FUNCTION_31_17();
  *(v1 + 2056) = swift_task_alloc();
  v41 = type metadata accessor for SearchCATContext();
  *(v1 + 2064) = v41;
  OUTLINED_FUNCTION_114(v41);
  v43 = *(v42 + 64);
  *(v1 + 2072) = OUTLINED_FUNCTION_31_17();
  *(v1 + 2080) = swift_task_alloc();
  v44 = type metadata accessor for LocalizedStringResource();
  *(v1 + 2088) = v44;
  OUTLINED_FUNCTION_21(v44);
  *(v1 + 2096) = v45;
  v47 = *(v46 + 64);
  *(v1 + 2104) = OUTLINED_FUNCTION_31_17();
  *(v1 + 2112) = swift_task_alloc();
  v48 = type metadata accessor for DialogData(0);
  *(v1 + 2120) = v48;
  OUTLINED_FUNCTION_114(v48);
  v50 = *(v49 + 64);
  *(v1 + 2128) = OUTLINED_FUNCTION_199();
  *(v1 + 2136) = *v3;
  v51 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v51, v52, v53);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[226];
  if (v1[3])
  {
    v2 = v1[2];
    v3 = v1[3];
  }

  else
  {
    v2 = *v1;
    v3 = v1[1];
  }

  v0[270] = v3;
  v0[269] = v2;
  v4 = one-time initialization token for shared;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v5 = static ContextManager.shared;
  v0[271] = static ContextManager.shared;

  return MEMORY[0x2822009F8](SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:), v5, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[271];
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v2 = v1[35];
  v0[272] = v2;
  v3 = v1[36];
  v0[273] = v3;
  v4 = v1[37];
  v0[274] = v4;
  outlined copy of IndexContext?(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[271];
  if (v0[274] == 1)
  {
    v2 = v0[264];
    LocalizedStringResource.init(stringLiteral:)();
    v3 = SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:);
  }

  else
  {
    v3 = SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:);
  }

  return MEMORY[0x2822009F8](v3, v1, 0);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[271];
  v2 = v0[264];
  v3 = v0[262];
  v4 = v0[261];
  swift_beginAccess();
  MessageAccumulationContext.record(_:severity:from:)(v2, 0, 0);
  swift_endAccess();
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_32_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_78();
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_5_21();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v1, static Logging.stextension);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_11(v3))
  {
    v4 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v4);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v10 = *(v0 + 2168);

  return MEMORY[0x2822009F8](SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:), v10, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 2168);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v0 + 2200) = *(v1 + 272);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  v2 = *(v0 + 2200);
  v3 = MessageAccumulationContext.makeMessageOnlySnippetData()();
  v5 = v4;

  v256 = v3;
  v257 = v5;
  *(v0 + 2208) = v3;
  *(v0 + 2216) = v5;
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_5_21();
    swift_once();
  }

  v6 = *(v0 + 2144);
  v7 = *(v0 + 2136);
  v8 = *(v0 + 2080);
  v9 = *(v0 + 1816);
  v10 = type metadata accessor for Logger();
  *(v0 + 2224) = v10;
  *(v0 + 2232) = OUTLINED_FUNCTION_200(v10, static Logging.stextension);
  OUTLINED_FUNCTION_6_13();
  v11 = OUTLINED_FUNCTION_30_5();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v11, v12);
  v13 = OUTLINED_FUNCTION_119();
  outlined copy of OmniSearchResponseRenderOption(v13, v14);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = OUTLINED_FUNCTION_119();
  outlined consume of OmniSearchResponseRenderOption(v17, v18);
  v19 = &one-time initialization token for typeDisplayRepresentation;
  if (os_log_type_enabled(v15, v16))
  {
    v254 = v2;
    v1 = swift_slowAlloc();
    v252 = swift_slowAlloc();
    __dst = v252;
    *v1 = 136315906;
    if (one-time initialization token for catTemplateDirectoryURL != -1)
    {
      OUTLINED_FUNCTION_10_19();
    }

    v20 = *(v0 + 2144);
    v21 = *(v0 + 2136);
    v22 = *(v0 + 2080);
    LODWORD(v249) = *(v0 + 2320);
    v23 = type metadata accessor for URL();
    OUTLINED_FUNCTION_200(v23, static SearchToolIntentController.catTemplateDirectoryURL);
    URL.path.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v1 + 4) = v24;
    v8 = 2080;
    *(v1 + 12) = 2080;
    SearchCATContext.description.getter();
    OUTLINED_FUNCTION_1_40();
    outlined destroy of SearchToolIntentRequest(v22, v25);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v1 + 14) = v26;
    *(v1 + 22) = 2080;
    *(v0 + 1752) = v21;
    *(v0 + 1760) = v20;
    v27 = OUTLINED_FUNCTION_119();
    outlined copy of OmniSearchResponseRenderOption(v27, v28);
    String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v1 + 24) = v29;
    *(v1 + 32) = 1024;
    *(v1 + 34) = v249;
    _os_log_impl(&dword_25D85C000, v15, v16, "Building dialog using templates at %s, searchCATContext: %s, renderOption: %s, isQuestionQuery: %{BOOL}d", v1, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v19 = &one-time initialization token for typeDisplayRepresentation;
  }

  else
  {
    v37 = *(v0 + 2080);

    OUTLINED_FUNCTION_1_40();
    outlined destroy of SearchToolIntentRequest(v37, v38);
  }

  Array<A>.isEffectivelyEmptySearchResult.getter(*(v0 + 1800), v30, v31, v32, v33, v34, v35, v36, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236);
  if (v39)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v41))
    {
      v42 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v42);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v48 = *(v0 + 2128);
    v49 = *(v0 + 2120);

    v50 = 0x800000025DBF2D70;
    v51 = *(v49 + 20);
    if (v19[39] != -1)
    {
      OUTLINED_FUNCTION_10_19();
    }

    v52 = OUTLINED_FUNCTION_149_4();
    __swift_project_value_buffer(v52, static SearchToolIntentController.catTemplateDirectoryURL);
    OUTLINED_FUNCTION_28_14();
    (*(v53 + 16))(v48 + v51);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10AppIntents12_IntentValue_s8SendableptGMd, &_ss23_ContiguousArrayStorageCySS_10AppIntents12_IntentValue_s8SendableptGMR);
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_112_8(v57, xmmword_25DBC8180);
    v59 = MEMORY[0x277D837D0];
    v58[4].n128_u64[1] = MEMORY[0x277D837D0];
    v57[5].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
    v57[3].n128_u64[0] = v19;
    v57[3].n128_u64[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12_IntentValue_s8SendablepMd, &_s10AppIntents12_IntentValue_s8SendablepMR);
    OUTLINED_FUNCTION_32_0();
    v60 = Dictionary.init(dictionaryLiteral:)();
    v61 = *(v1 + 32);
    OUTLINED_FUNCTION_38_16();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    *v15 = 0xD000000000000017;
    *(v15 + 8) = 0x800000025DBF2D70;
    OUTLINED_FUNCTION_160_2();
    v253 = 0xC000000000000000;
    v255 = 0;
LABEL_14:
    OUTLINED_FUNCTION_34_18();
    v245 = v66;
    OUTLINED_FUNCTION_109_7(v67);
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_183_2();
    v68 = *MEMORY[0x277CBA108];
    v69 = OUTLINED_FUNCTION_53_10();
    v247 = v70;
    v70(v69);
    IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v71 = OUTLINED_FUNCTION_39_11();
    (v60)(v71);
    if (v1)
    {
      v72 = v59 == v50 && v1 == v15;
      if (v72)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_61_10();
      OUTLINED_FUNCTION_175_3();

      if (v59)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_100_6();
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_182_3();
    v97 = *MEMORY[0x277CBA118];
    v98 = OUTLINED_FUNCTION_195_3();
    v247(v98);
    v99 = IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v100 = OUTLINED_FUNCTION_51_9();
    (v60)(v100);
    if (!v1)
    {
      OUTLINED_FUNCTION_76_7();

      goto LABEL_55;
    }

    if (v16 != v99 || v1 != v50)
    {
      OUTLINED_FUNCTION_59_8();
      OUTLINED_FUNCTION_157_2();

      if ((v60 & 1) == 0)
      {
        OUTLINED_FUNCTION_76_7();
LABEL_55:
        v128 = v253;
        v127 = v255;
        goto LABEL_56;
      }

LABEL_37:
      if (one-time initialization token for visual != -1)
      {
        OUTLINED_FUNCTION_21_14();
      }

      v102 = OUTLINED_FUNCTION_98_6();
      v103 = __swift_project_value_buffer(v102, static Logging.visual);
      OUTLINED_FUNCTION_6_13();
      v104 = OUTLINED_FUNCTION_94();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v104, v105);
      v106 = v103;
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_173_2(v108);
      OUTLINED_FUNCTION_99_7();
      v109 = *(v0 + 2072);
      if (v110)
      {
        OUTLINED_FUNCTION_28_3();
        v250 = v111;
        v112 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        __dsta = swift_slowAlloc();
        *v112 = 136315138;
        OUTLINED_FUNCTION_171_2(v245);
        OUTLINED_FUNCTION_52_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        OUTLINED_FUNCTION_211_2();
        OUTLINED_FUNCTION_34_10();
        OUTLINED_FUNCTION_1_40();
        outlined destroy of SearchToolIntentRequest(v109, v113);
        OUTLINED_FUNCTION_242();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_176_3();
        *(v112 + 4) = v106;
        OUTLINED_FUNCTION_134_4(&dword_25D85C000, v114, v115, "Drop visual when in CarPlay, interfaceIdiom: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(__dsta);
        v116 = OUTLINED_FUNCTION_4_6();
        MEMORY[0x25F8A1050](v116);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050](v117, v118, v119, v120);
        outlined consume of Data._Representation(v255, v253);
        v121 = OUTLINED_FUNCTION_113_8();
        outlined consume of IndexContext?(v121, v122, v250);
      }

      else
      {
        v123 = OUTLINED_FUNCTION_113_8();
        outlined consume of IndexContext?(v123, v124, v125);
        outlined consume of Data._Representation(v255, v253);

        OUTLINED_FUNCTION_1_40();
        outlined destroy of SearchToolIntentRequest(v109, v126);
      }

      v127 = 0;
      v128 = 0xC000000000000000;
LABEL_56:
      OUTLINED_FUNCTION_32_18();
      OUTLINED_FUNCTION_54_11();
      v159 = *(v0 + 1792);
      v160 = *(type metadata accessor for SearchToolIntentController.ExperienceData(0) + 24);
      OUTLINED_FUNCTION_7_20();
      outlined init with take of AssistantSystemContext(v16, v159 + v161);
      *v159 = v127;
      v159[1] = v128;
      v159[2] = v256;
      v159[3] = v257;

      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_132_6();

      __asm { BRAA            X1, X16 }
    }

LABEL_36:

    goto LABEL_37;
  }

  v73 = *(v0 + 1920);
  specialized Collection.first.getter(*(v0 + 1800), *(v0 + 2024));
  v74 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v74, v75, v73);
  if (v72)
  {
    v76 = *(v0 + 2040);
    v77 = *(v0 + 2032);
    outlined destroy of IntentApplication?(*(v0 + 2024), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_38_16();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
    v82 = *(v0 + 2016);
    v83 = *(v0 + 1920);
    v84 = *(v0 + 1800);
    outlined destroy of IntentApplication?(*(v0 + 2032), &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMR);
    specialized Collection.first.getter(v84, v82);
    v85 = OUTLINED_FUNCTION_65();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, v86, v83);
    v88 = *(v0 + 2016);
    if (EnumTagSinglePayload == 1)
    {
      v89 = &_s10OmniSearch0B6EntityVSgMd;
      v90 = &_s10OmniSearch0B6EntityVSgMR;
      v91 = *(v0 + 2016);
LABEL_61:
      outlined destroy of IntentApplication?(v91, v89, v90);
LABEL_62:
      v169 = *(v0 + 2232);
      v170 = *(v0 + 1800);

      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_11(v172))
      {
        OUTLINED_FUNCTION_28_3();
        v173 = swift_slowAlloc();
        OUTLINED_FUNCTION_203_2(v173, 3.852e-34);
        OUTLINED_FUNCTION_205_3(&dword_25D85C000, v174, v175, "%ld results. SearchTool will synthesize model data & dialog");
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {
        v176 = *(v0 + 1800);
      }

      OUTLINED_FUNCTION_60(&async function pointer to specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:));
      v177 = swift_task_alloc();
      *(v0 + 2248) = v177;
      *v177 = v0;
      OUTLINED_FUNCTION_48_8(v177);
      OUTLINED_FUNCTION_132_6();

      __asm { BR              X4 }
    }

    v129 = *(v88 + 24);
    EntityProperty.wrappedValue.getter();
    memcpy((v0 + 288), (v0 + 152), 0x88uLL);
    OUTLINED_FUNCTION_2_25();
    outlined destroy of SearchToolIntentRequest(v88, v130);
    memcpy((v0 + 424), (v0 + 288), 0x88uLL);
    if (_s10OmniSearch0B7ContextVSgWOg((v0 + 424)) == 1)
    {
      goto LABEL_62;
    }

    if (*(*(v0 + 1800) + 16) == 1)
    {
      v131 = *(v0 + 432);
      EntityProperty.wrappedValue.getter();
      v1 = *(v0 + 1696);
      if (v1)
      {
        if (*(v0 + 2144) == 2)
        {
          OUTLINED_FUNCTION_144_4();

          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v132, v133))
          {
            OUTLINED_FUNCTION_28_3();
            v134 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v8 = swift_slowAlloc();
            __dst = v8;
            *(v134 + 4) = OUTLINED_FUNCTION_206_2(4.9654e-34);
            OUTLINED_FUNCTION_25_6();
            _os_log_impl(v135, v136, v137, v138, v139, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v8);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          OUTLINED_FUNCTION_202_3(v140, v141, v142, v143, v144, v145, v146, v147, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v238, v239, v240, v241, v242, v243, v244, v246, v249, v252, v254, v256, v257, __dst);
          SearchToolIntentController.buildExpandableLiveFlightComponents(answer:)();
          v251 = v15;
          if (v149 >> 60 == 15)
          {
            v152 = *(v0 + 512);
            v153 = *(v0 + 520);
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
            if (OUTLINED_FUNCTION_55_8())
            {
              OUTLINED_FUNCTION_209_2();
              v154 = type metadata accessor for RGPluginModel();
              v155 = OUTLINED_FUNCTION_103_6();
              v157 = __swift_getEnumTagSinglePayload(v155, v156, v154);
              v158 = *(v0 + 2000);
              if (v157 != 1)
              {
                OUTLINED_FUNCTION_4_26();
                _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v192, v193);
                OUTLINED_FUNCTION_54_5();
                SnippetPluginModel.data.getter();
                OUTLINED_FUNCTION_169_3();

                OUTLINED_FUNCTION_51(v154);
                v195 = *(v194 + 8);
                v196 = OUTLINED_FUNCTION_88();
                v197(v196);
                if (v15 >> 60 == 15)
                {
                  v198 = 0;
                }

                else
                {
                  v198 = v8;
                }

                v199 = 0xC000000000000000;
                if (v15 >> 60 != 15)
                {
                  v199 = v15;
                }

                v253 = v199;
                v255 = v198;
                OUTLINED_FUNCTION_127_8();
                v256 = v200;
                v257 = v201;
                goto LABEL_75;
              }

              outlined destroy of IntentApplication?(v158, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
            }

            v257 = *(v0 + 2216);
            v255 = 0;
            v256 = *(v0 + 2208);
            v253 = 0xC000000000000000;
          }

          else
          {
            v180 = v148;
            v181 = v149;
            v182 = v150;
            v183 = v151;
            OUTLINED_FUNCTION_210_0();
            v184 = OUTLINED_FUNCTION_54_0();
            outlined copy of Data._Representation(v184, v185);
            v186 = OUTLINED_FUNCTION_94();
            outlined copy of Data._Representation(v186, v187);
            v256 = v182;
            v257 = v183;
            v188 = OUTLINED_FUNCTION_94();
            outlined consume of Data._Representation(v188, v189);
            v253 = v181;
            v255 = v180;
            v190 = OUTLINED_FUNCTION_54_0();
            outlined consume of Data._Representation(v190, v191);
          }

LABEL_75:
          v202 = *(v0 + 2128);
          v203 = *(v0 + 2120);
          v50 = *(v0 + 2112);
          v15 = *(v0 + 2104);
          v59 = *(v0 + 1968);
          v204 = *(v0 + 1960);
          v248 = *(v0 + 1952);
          *(v0 + 1704) = v251;
          OUTLINED_FUNCTION_129_6();
          OUTLINED_FUNCTION_28_1();
          StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          LocalizedStringResource.init(stringLiteral:)();
          LocalizedStringResource.init(stringLiteral:)();
          OUTLINED_FUNCTION_64_0();
          _SpeakableString.init(spoken:printed:)();
          outlined destroy of IntentApplication?(v0 + 288, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
          v205 = *(v203 + 20);
          type metadata accessor for URL();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v206, v207, v208, v209);
          v210 = *(v204 + 32);
          v16 = v204 + 32;
          v60 = v248;
          v210(v202 + *(v203 + 32), v59, v248);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v211, v212, v213, v248);
          OUTLINED_FUNCTION_139_4();
          goto LABEL_14;
        }

        v164 = *(v0 + 2136);
        v165 = OUTLINED_FUNCTION_94();
        outlined copy of OmniSearchResponseRenderOption(v165, v166);
        v167 = OUTLINED_FUNCTION_94();
        outlined consume of OmniSearchResponseRenderOption(v167, v168);
        outlined consume of OmniSearchResponseRenderOption(0, 2);
      }
    }

    v89 = &_s10OmniSearch0B12AnswerEntityVSgMd;
    v90 = &_s10OmniSearch0B12AnswerEntityVSgMR;
    v91 = v0 + 288;
    goto LABEL_61;
  }

  v92 = swift_task_alloc();
  *(v0 + 2240) = v92;
  *v92 = v0;
  v92[1] = SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:);
  v93 = *(v0 + 2032);
  v94 = *(v0 + 2024);
  OUTLINED_FUNCTION_132_6();

  return SearchEntity.globalPassthroughResults(removeWebSearchPunchout:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 2240);
  v3 = *(v1 + 2024);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  OUTLINED_FUNCTION_2_25();
  outlined destroy of SearchToolIntentRequest(v3, v6);
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 2248);
  *v2 = *v0;
  *(v1 + 2256) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 2304);
  v5 = *(v3 + 2296);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 2312) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)()
{
  v2 = v0[255];
  v3 = v0[254];
  v4 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v4, v5, v6);
  if (!v59)
  {
    v17 = v0[279];
    v18 = v0[270];
    v19 = v0[257];

    v20 = OUTLINED_FUNCTION_32_0();
    outlined init with take of SearchResultItem?(v20, v21, v22, v23);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v27 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v27);
      _os_log_impl(&dword_25D85C000, v24, v25, "Passing through global snippet and dialog", v3, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v28 = v0[266];
    v29 = v0[265];
    v30 = v0[257];
    v31 = v0[256];
    v32 = v0[255];
    v33 = v0[245];
    v34 = v0[244];

    v35 = &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR;
    v36 = OUTLINED_FUNCTION_53_3();
    outlined init with copy of SpotlightRankingItem?(v36, v37, v38, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
    v217 = *(v31 + 8);
    v219 = *v31;
    (*(v33 + 8))(v31 + *(v32 + 48), v34);
    v39 = v29[5];
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    v44 = v29[8];
    v45 = OUTLINED_FUNCTION_53_3();
    outlined init with take of SearchResultItem?(v45, v46, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
    outlined consume of Data._Representation(*v31, *(v31 + 8));
    (*(v33 + 32))(&v44[v28], v31 + *(v32 + 48), v34);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v34);
    *v28 = 0;
    *(v28 + 1) = 0;
    *&v28[v29[6]] = 0;
    v50 = &v28[v29[7]];
    *v50 = 0;
    *(v50 + 1) = 0;
    OUTLINED_FUNCTION_127_8();
    v213 = v51;
    v215 = v52;
LABEL_8:
    OUTLINED_FUNCTION_34_18();
    v205 = v53;
    OUTLINED_FUNCTION_109_7(v54);
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_183_2();
    v55 = *MEMORY[0x277CBA108];
    v56 = OUTLINED_FUNCTION_53_10();
    v207 = v57;
    v57(v56);
    IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v58 = OUTLINED_FUNCTION_39_11();
    (v31)(v58);
    if (v28)
    {
      v59 = v44 == v30 && v28 == v35;
      if (v59)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_61_10();
      OUTLINED_FUNCTION_175_3();

      if (v44)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_100_6();
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_182_3();
    v92 = *MEMORY[0x277CBA118];
    v93 = OUTLINED_FUNCTION_195_3();
    v207(v93);
    v94 = IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v95 = OUTLINED_FUNCTION_51_9();
    (v31)(v95);
    if (!v28)
    {
      OUTLINED_FUNCTION_76_7();

      goto LABEL_42;
    }

    if (v29 != v94 || v28 != v30)
    {
      OUTLINED_FUNCTION_59_8();
      OUTLINED_FUNCTION_157_2();

      if ((v31 & 1) == 0)
      {
        OUTLINED_FUNCTION_76_7();
LABEL_42:
        v120 = v217;
        v119 = v219;
        goto LABEL_43;
      }

LABEL_35:
      if (one-time initialization token for visual != -1)
      {
        OUTLINED_FUNCTION_21_14();
      }

      v97 = OUTLINED_FUNCTION_98_6();
      __swift_project_value_buffer(v97, static Logging.visual);
      OUTLINED_FUNCTION_6_13();
      v98 = OUTLINED_FUNCTION_94();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v98, v99);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.info.getter();
      os_log_type_enabled(v100, v101);
      OUTLINED_FUNCTION_99_7();
      v102 = v0[259];
      if (v103)
      {
        OUTLINED_FUNCTION_28_3();
        v211 = v104;
        v105 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        __dsta = swift_slowAlloc();
        *v105 = 136315138;
        v106 = *(v102 + *(v205 + 24));
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_52_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        OUTLINED_FUNCTION_211_2();
        OUTLINED_FUNCTION_34_10();
        OUTLINED_FUNCTION_1_40();
        outlined destroy of SearchToolIntentRequest(v102, v107);
        OUTLINED_FUNCTION_242();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_176_3();
        *(v105 + 4) = v106;
        _os_log_impl(&dword_25D85C000, v100, v101, "Drop visual when in CarPlay, interfaceIdiom: %s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(__dsta);
        v108 = OUTLINED_FUNCTION_4_6();
        MEMORY[0x25F8A1050](v108);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050](v109, v110, v111, v112);
        outlined consume of Data._Representation(v219, v217);
        v113 = OUTLINED_FUNCTION_113_8();
        outlined consume of IndexContext?(v113, v114, v211);
      }

      else
      {
        v115 = OUTLINED_FUNCTION_113_8();
        outlined consume of IndexContext?(v115, v116, v117);
        outlined consume of Data._Representation(v219, v217);

        OUTLINED_FUNCTION_1_40();
        outlined destroy of SearchToolIntentRequest(v102, v118);
      }

      v119 = 0;
      v120 = 0xC000000000000000;
LABEL_43:
      v121 = v0[266];
      v122 = v0[264];
      v123 = v0[263];
      v124 = v0[260];
      v125 = v0[259];
      v126 = v0[257];
      v127 = v0[256];
      v128 = v0[254];
      OUTLINED_FUNCTION_54_11();
      v129 = v0[224];
      v130 = *(type metadata accessor for SearchToolIntentController.ExperienceData(0) + 24);
      OUTLINED_FUNCTION_7_20();
      outlined init with take of AssistantSystemContext(v121, v129 + v131);
      *v129 = v119;
      v129[1] = v120;
      v129[2] = v213;
      v129[3] = v215;

      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_132_6();

      __asm { BRAA            X1, X16 }
    }

LABEL_34:

    goto LABEL_35;
  }

  v7 = v0[252];
  v8 = v0[240];
  v9 = v0[225];
  outlined destroy of IntentApplication?(v3, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMR);
  specialized Collection.first.getter(v9, v7);
  v10 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v8);
  v13 = v0[252];
  if (EnumTagSinglePayload == 1)
  {
    v14 = &_s10OmniSearch0B6EntityVSgMd;
    v15 = &_s10OmniSearch0B6EntityVSgMR;
    v16 = v0[252];
LABEL_48:
    outlined destroy of IntentApplication?(v16, v14, v15);
LABEL_49:
    v139 = v0[279];
    v140 = v0[225];

    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v142))
    {
      OUTLINED_FUNCTION_28_3();
      v143 = swift_slowAlloc();
      OUTLINED_FUNCTION_203_2(v143, 3.852e-34);
      OUTLINED_FUNCTION_205_3(&dword_25D85C000, v144, v145, "%ld results. SearchTool will synthesize model data & dialog");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {
      v146 = v0[225];
    }

    OUTLINED_FUNCTION_60(&async function pointer to specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:));
    v147 = swift_task_alloc();
    v0[281] = v147;
    *v147 = v0;
    OUTLINED_FUNCTION_48_8(v147);
    OUTLINED_FUNCTION_132_6();

    __asm { BR              X4 }
  }

  v60 = *(v13 + 24);
  EntityProperty.wrappedValue.getter();
  memcpy(v0 + 36, v0 + 19, 0x88uLL);
  OUTLINED_FUNCTION_2_25();
  outlined destroy of SearchToolIntentRequest(v13, v61);
  memcpy(v0 + 53, v0 + 36, 0x88uLL);
  if (_s10OmniSearch0B7ContextVSgWOg(v0 + 53) == 1)
  {
    goto LABEL_49;
  }

  if (*(v0[225] + 16) == 1)
  {
    v62 = v0[54];
    EntityProperty.wrappedValue.getter();
    v28 = v0[212];
    if (v28)
    {
      if (v0[268] == 2)
      {
        OUTLINED_FUNCTION_144_4();

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v63, v64))
        {
          OUTLINED_FUNCTION_28_3();
          v65 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v9 = swift_slowAlloc();
          __dst = v9;
          *(v65 + 4) = OUTLINED_FUNCTION_206_2(4.9654e-34);
          OUTLINED_FUNCTION_25_6();
          _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v9);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        OUTLINED_FUNCTION_202_3(v71, v72, v73, v74, v75, v76, v77, v78, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v206, v209, v212, v214, v216, v218, __dst);
        SearchToolIntentController.buildExpandableLiveFlightComponents(answer:)();
        v210 = v1;
        if (v80 >> 60 == 15)
        {
          v83 = v0[64];
          v84 = v0[65];
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
          if (OUTLINED_FUNCTION_55_8())
          {
            OUTLINED_FUNCTION_209_2();
            v85 = type metadata accessor for RGPluginModel();
            v86 = OUTLINED_FUNCTION_103_6();
            v88 = __swift_getEnumTagSinglePayload(v86, v87, v85);
            v89 = v0[250];
            if (v88 != 1)
            {
              OUTLINED_FUNCTION_4_26();
              _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v162, v163);
              OUTLINED_FUNCTION_54_5();
              SnippetPluginModel.data.getter();
              OUTLINED_FUNCTION_169_3();

              OUTLINED_FUNCTION_51(v85);
              v165 = *(v164 + 8);
              v166 = OUTLINED_FUNCTION_88();
              v167(v166);
              if (v1 >> 60 == 15)
              {
                v168 = 0;
              }

              else
              {
                v168 = v9;
              }

              v169 = 0xC000000000000000;
              if (v1 >> 60 != 15)
              {
                v169 = v1;
              }

              v217 = v169;
              v219 = v168;
              OUTLINED_FUNCTION_127_8();
              v213 = v170;
              v215 = v171;
              goto LABEL_62;
            }

            outlined destroy of IntentApplication?(v89, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
          }

          OUTLINED_FUNCTION_127_8();
          v213 = v90;
          v215 = v91;
          v217 = 0xC000000000000000;
          v219 = 0;
        }

        else
        {
          v150 = v79;
          v151 = v80;
          v152 = v81;
          v153 = v82;
          OUTLINED_FUNCTION_210_0();
          v154 = OUTLINED_FUNCTION_107();
          outlined copy of Data._Representation(v154, v155);
          v156 = OUTLINED_FUNCTION_116_1();
          outlined copy of Data._Representation(v156, v157);
          v213 = v152;
          v215 = v153;
          v158 = OUTLINED_FUNCTION_116_1();
          outlined consume of Data._Representation(v158, v159);
          v217 = v151;
          v219 = v150;
          v160 = OUTLINED_FUNCTION_107();
          outlined consume of Data._Representation(v160, v161);
        }

LABEL_62:
        v172 = v0[266];
        v173 = v0[265];
        v44 = v0[264];
        v35 = v0[263];
        v174 = v0[246];
        v175 = v0[245];
        v208 = v0[244];
        v30 = v210;
        v0[213] = v210;
        OUTLINED_FUNCTION_129_6();
        OUTLINED_FUNCTION_28_1();
        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        LocalizedStringResource.init(stringLiteral:)();
        LocalizedStringResource.init(stringLiteral:)();
        _SpeakableString.init(spoken:printed:)();
        outlined destroy of IntentApplication?((v0 + 36), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
        v176 = *(v173 + 20);
        type metadata accessor for URL();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
        v181 = *(v175 + 32);
        v29 = (v175 + 32);
        v182 = v174;
        v31 = v208;
        v181(v172 + *(v173 + 32), v182, v208);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v183, v184, v185, v208);
        OUTLINED_FUNCTION_139_4();
        goto LABEL_8;
      }

      v134 = v0[267];
      v135 = OUTLINED_FUNCTION_94();
      outlined copy of OmniSearchResponseRenderOption(v135, v136);
      v137 = OUTLINED_FUNCTION_94();
      outlined consume of OmniSearchResponseRenderOption(v137, v138);
      outlined consume of OmniSearchResponseRenderOption(0, 2);
    }
  }

  v14 = &_s10OmniSearch0B12AnswerEntityVSgMd;
  v15 = &_s10OmniSearch0B12AnswerEntityVSgMR;
  v16 = (v0 + 36);
  goto LABEL_48;
}

uint64_t SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *__dst, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t *a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_199_3();
  a57 = v59;
  a58 = v60;
  a56 = v58;
  memcpy(v58 + 121, v58 + 104, 0x88uLL);
  v61 = v58[289];
  v62 = v58[266];
  v63 = v58[265];
  v64 = 0x800000025DBF2DD0;
  v65 = v63[5];
  if (one-time initialization token for catTemplateDirectoryURL == -1)
  {
    v66 = v58[266];
  }

  else
  {
    OUTLINED_FUNCTION_10_19();
    v66 = v58[266];
    v63 = v58[265];
  }

  v67 = v58[282];
  v68 = v58[244];
  v69 = type metadata accessor for URL();
  __swift_project_value_buffer(v69, static SearchToolIntentController.catTemplateDirectoryURL);
  OUTLINED_FUNCTION_51(v69);
  (*(v70 + 16))(v62 + v65);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10AppIntents12_IntentValue_s8SendableptGMd, &_ss23_ContiguousArrayStorageCySS_10AppIntents12_IntentValue_s8SendableptGMR);
  v74 = swift_allocObject();
  v75 = OUTLINED_FUNCTION_66_8(v74, xmmword_25DBC8400);
  v75[2].n128_u64[0] = 0xD000000000000011;
  v75[2].n128_u64[1] = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B9CATEntityVGMd, &_sSay10OmniSearch0B9CATEntityVGMR);
  v74[4].n128_u64[1] = v77;
  lazy protocol witness table accessor for type [SearchCATEntity] and conformance <A> [A]();
  v74[3].n128_u64[0] = v67;
  OUTLINED_FUNCTION_44_6();
  v74[5].n128_u64[0] = v78;
  v74[5].n128_u64[1] = 0xD000000000000011;
  v74[8].n128_u64[0] = v77;
  v74[8].n128_u64[1] = v78;
  v74[6].n128_u64[0] = v79;
  v74[6].n128_u64[1] = v61;
  v74[9].n128_u64[0] = 0xD000000000000013;
  v74[9].n128_u64[1] = 0x800000025DBF2E10;

  Array<A>.isHomogenousResults.getter();
  v81 = v80;

  v74[11].n128_u64[1] = MEMORY[0x277D839B0];
  v74[12].n128_u64[0] = lazy protocol witness table accessor for type Bool and conformance Bool();
  v74[10].n128_u8[0] = v81 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12_IntentValue_s8SendablepMd, &_s10AppIntents12_IntentValue_s8SendablepMR);
  v82 = Dictionary.init(dictionaryLiteral:)();
  v83 = v63[8];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v68);
  *v66 = 0xD00000000000001FLL;
  *(v66 + 8) = 0x800000025DBF2DD0;
  *(v66 + v63[6]) = v82;
  OUTLINED_FUNCTION_148_3();
  if (_s10OmniSearch0B7ContextVSgWOg(v58 + 138) == 1)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_201_3();
  memcpy(&__dst, v58 + 138, 0x88uLL);
  outlined init with copy of SearchAnswerEntity((v58 + 155), (v58 + 172));
  SearchToolIntentController.buildExpandableLiveFlightComponents(answer:)();
  OUTLINED_FUNCTION_188_3();
  v64 = v95;
  v81 = v96;
  outlined destroy of IntentApplication?((v58 + 121), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  if (v66 >> 60 == 15)
  {
    v97 = v58[166];
    v68 = v58[167];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
    v98 = OUTLINED_FUNCTION_55_8();
    if (v98)
    {
      v99 = v58[284];
      v100 = v58[247];
      v68 = v98;
      SFCard.snippetPluginModel.getter(v100);

      v101 = OUTLINED_FUNCTION_103_6();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, v102, v99);
      v74 = v58[286];
      v81 = v58[285];
      if (EnumTagSinglePayload != 1)
      {
        v64 = v58[284];
        v166 = v58[283];
        v87 = v58[247];
        OUTLINED_FUNCTION_4_26();
        _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v167, v168);
        SnippetPluginModel.data.getter();
        OUTLINED_FUNCTION_188_3();
        v169 = OUTLINED_FUNCTION_116_1();
        outlined consume of Data._Representation(v169, v170);

        outlined destroy of IntentApplication?((v58 + 121), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
        OUTLINED_FUNCTION_51(v64);
        v172 = *(v171 + 8);
        v173 = OUTLINED_FUNCTION_153();
        v174(v173);
        if (v66 >> 60 == 15)
        {
          v91 = 0;
        }

        else
        {
          v91 = v63;
        }

        v92 = 0xC000000000000000;
        if (v66 >> 60 != 15)
        {
          v92 = v66;
        }

        goto LABEL_6;
      }

      v64 = v58[283];
      v87 = v58[247];
      v104 = OUTLINED_FUNCTION_116_1();
      outlined consume of Data._Representation(v104, v105);

      outlined destroy of IntentApplication?((v58 + 121), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
      v88 = &_s16IntelligenceFlow13RGPluginModelOSgMd;
      v89 = &_s16IntelligenceFlow13RGPluginModelOSgMR;
      v90 = v87;
LABEL_5:
      outlined destroy of IntentApplication?(v90, v88, v89);
      v91 = 0;
      v92 = 0xC000000000000000;
LABEL_6:
      v182 = v92;
      v184 = v91;
      OUTLINED_FUNCTION_127_8();
      v186 = v93;
      v187 = v94;
      goto LABEL_12;
    }

LABEL_4:
    v87 = v58[283];
    outlined consume of Data._Representation(v58[285], v58[286]);

    v88 = &_s10OmniSearch0B12AnswerEntityVSgMd;
    v89 = &_s10OmniSearch0B12AnswerEntityVSgMR;
    v90 = (v58 + 121);
    goto LABEL_5;
  }

  v87 = v58[286];
  v68 = v58[285];
  v74 = v58[283];
  OUTLINED_FUNCTION_210_0();
  v106 = OUTLINED_FUNCTION_94();
  outlined consume of Data._Representation(v106, v107);

  outlined destroy of IntentApplication?((v58 + 121), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  v108 = OUTLINED_FUNCTION_179_0();
  outlined copy of Data._Representation(v108, v109);
  v110 = OUTLINED_FUNCTION_30_5();
  outlined copy of Data._Representation(v110, v111);
  v186 = v64;
  v187 = v81;
  v112 = OUTLINED_FUNCTION_30_5();
  outlined consume of Data._Representation(v112, v113);
  v182 = v66;
  v184 = v63;
  v114 = OUTLINED_FUNCTION_179_0();
  outlined consume of Data._Representation(v114, v115);
LABEL_12:
  OUTLINED_FUNCTION_34_18();
  v179 = v116;
  OUTLINED_FUNCTION_109_7(v117);
  v181 = v87;
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_183_2();
  v118 = *MEMORY[0x277CBA108];
  v119 = OUTLINED_FUNCTION_53_10();
  v180 = v120;
  v120(v119);
  IntentSystemContext.InterfaceIdiom.rawValue.getter();
  v121 = OUTLINED_FUNCTION_39_11();
  (v68)(v121);
  if (v63)
  {
    if (v74 == v81 && v63 == v64)
    {
LABEL_27:

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_61_10();
    OUTLINED_FUNCTION_175_3();

    if (v74)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_100_6();
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_182_3();
  v123 = *MEMORY[0x277CBA118];
  v124 = OUTLINED_FUNCTION_195_3();
  v180(v124);
  v125 = IntentSystemContext.InterfaceIdiom.rawValue.getter();
  v126 = OUTLINED_FUNCTION_51_9();
  (v68)(v126);
  if (!v63)
  {
    OUTLINED_FUNCTION_76_7();

    goto LABEL_35;
  }

  if (v66 == v125 && v63 == v81)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_59_8();
  OUTLINED_FUNCTION_157_2();

  if ((v68 & 1) == 0)
  {
    OUTLINED_FUNCTION_76_7();
LABEL_35:
    v151 = v182;
    v150 = v184;
    goto LABEL_36;
  }

LABEL_28:
  if (one-time initialization token for visual != -1)
  {
    OUTLINED_FUNCTION_21_14();
  }

  v128 = OUTLINED_FUNCTION_98_6();
  v129 = __swift_project_value_buffer(v128, static Logging.visual);
  OUTLINED_FUNCTION_6_13();
  v130 = OUTLINED_FUNCTION_94();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v130, v131);
  v132 = v129;
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_173_2(v134);
  OUTLINED_FUNCTION_99_7();
  v135 = v58[259];
  if (v136)
  {
    OUTLINED_FUNCTION_28_3();
    v181 = v137;
    v138 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v139 = swift_slowAlloc();
    __dst = v139;
    *v138 = 136315138;
    OUTLINED_FUNCTION_171_2(v179);
    OUTLINED_FUNCTION_52_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    OUTLINED_FUNCTION_211_2();
    OUTLINED_FUNCTION_34_10();
    OUTLINED_FUNCTION_1_40();
    outlined destroy of SearchToolIntentRequest(v135, v140);
    OUTLINED_FUNCTION_242();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_176_3();
    *(v138 + 4) = v132;
    OUTLINED_FUNCTION_134_4(&dword_25D85C000, v141, v142, "Drop visual when in CarPlay, interfaceIdiom: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v139);
    v143 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v143);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    outlined consume of Data._Representation(v184, v182);
    v144 = OUTLINED_FUNCTION_113_8();
    outlined consume of IndexContext?(v144, v145, v181);
  }

  else
  {
    v146 = OUTLINED_FUNCTION_113_8();
    outlined consume of IndexContext?(v146, v147, v148);
    outlined consume of Data._Representation(v184, v182);

    OUTLINED_FUNCTION_1_40();
    outlined destroy of SearchToolIntentRequest(v135, v149);
  }

  v150 = 0;
  v151 = 0xC000000000000000;
LABEL_36:
  OUTLINED_FUNCTION_32_18();
  v175 = v153;
  v176 = v152;
  v177 = v58[253];
  v178 = v58[252];
  OUTLINED_FUNCTION_57_7();
  v183 = v58[233];
  v185 = v58[232];
  v154 = v58[224];
  v155 = *(type metadata accessor for SearchToolIntentController.ExperienceData(0) + 24);
  OUTLINED_FUNCTION_7_20();
  outlined init with take of AssistantSystemContext(v66, v154 + v156);
  *v154 = v150;
  v154[1] = v151;
  v154[2] = v186;
  v154[3] = v187;

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_131_3();

  return v158(v157, v158, v159, v160, v161, v162, v163, v164, a9, v175, v176, v177, v178, a14, a15, a16, a17, a18, a19, a20, a21, a22, v179, v180, v181, v183, v185, v186, v187, __dst, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t SearchEntity.globalPassthroughResults(removeWebSearchPunchout:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  v1[5] = OUTLINED_FUNCTION_160();
  v1[6] = swift_task_alloc();
  v9 = type metadata accessor for _SpeakableString();
  v1[7] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for Searchfoundation_Card();
  v1[10] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[11] = v14;
  v16 = *(v15 + 64);
  v1[12] = OUTLINED_FUNCTION_199();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  v1[13] = OUTLINED_FUNCTION_199();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
  OUTLINED_FUNCTION_114(v20);
  v22 = *(v21 + 64);
  v1[14] = OUTLINED_FUNCTION_199();
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v1[15] = v23;
  OUTLINED_FUNCTION_21(v23);
  v1[16] = v24;
  v26 = *(v25 + 64);
  v1[17] = OUTLINED_FUNCTION_160();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v1[21] = v27;
  OUTLINED_FUNCTION_21(v27);
  v1[22] = v28;
  v30 = *(v29 + 64);
  v1[23] = OUTLINED_FUNCTION_199();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v31);
  v33 = *(v32 + 64);
  v1[24] = OUTLINED_FUNCTION_199();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  OUTLINED_FUNCTION_114(v34);
  v36 = *(v35 + 64);
  v1[25] = OUTLINED_FUNCTION_199();
  v37 = type metadata accessor for GlobalDialog();
  v1[26] = v37;
  OUTLINED_FUNCTION_21(v37);
  v1[27] = v38;
  v40 = *(v39 + 64);
  v1[28] = OUTLINED_FUNCTION_199();
  v41 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

{
  v1 = v0[24];
  v2 = *(v0[3] + 32);
  EntityProperty.wrappedValue.getter();
  v3 = type metadata accessor for SearchGlobalEntity(0);
  v4 = OUTLINED_FUNCTION_11_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, v5, v3);
  v7 = v0[25];
  v8 = v0[26];
  v9 = v0[24];
  if (EnumTagSinglePayload)
  {
    outlined destroy of IntentApplication?(v0[24], &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
    OUTLINED_FUNCTION_38_16();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
LABEL_5:
    v17 = v0[2];
    outlined destroy of IntentApplication?(v0[25], &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
LABEL_7:
    OUTLINED_FUNCTION_92();
    goto LABEL_8;
  }

  outlined init with copy of SpotlightRankingItem?(v9 + *(v3 + 76), v0[25], &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  outlined destroy of IntentApplication?(v9, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v14 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v14, v15, v8);
  if (v16)
  {
    goto LABEL_5;
  }

  v34 = v0[3];
  (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
  type metadata accessor for SearchEntity(0);
  _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchEntity and conformance SearchEntity, type metadata accessor for SearchEntity);
  v35 = ExperienceProviding.experiences.getter();
  if (!specialized Array.count.getter(v35))
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

LABEL_31:
    v84 = v0[2];
    goto LABEL_6;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v35 & 0xC000000000000001) == 0, v35);
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x25F89FFD0](0, v35);
  }

  else
  {
    v36 = *(v35 + 32);
  }

  v37 = v36;

  type metadata accessor for GenericExperience();
  if (!swift_dynamicCastClass())
  {
    v78 = v0[27];
    v79 = v0[28];
    v80 = v0[26];

    v81 = *(v78 + 8);
    v82 = OUTLINED_FUNCTION_88();
    v83(v82);
    goto LABEL_31;
  }

  v173 = v37;
  v38 = *(GenericExperience.components.getter() + 16);
  if (v38)
  {
    v39 = v0[22];
    v40 = v0[16];
    v42 = *(v39 + 16);
    v39 += 16;
    v41 = v42;
    v43 = *(v39 + 64);
    OUTLINED_FUNCTION_79();
    v46 = v44 + v45;
    v47 = *(v39 + 56);
    v190 = (v39 - 8);
    v181 = *MEMORY[0x277D39900];
    v178 = (v48 + 32);
    v49 = MEMORY[0x277D84F90];
    v174 = v42;
    v185 = v47;
    do
    {
      v50 = v0[23];
      v51 = v0[21];
      v52 = v0[13];
      v53 = OUTLINED_FUNCTION_153();
      v41(v53);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      (*v190)(v50, v51);
      v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      if (__swift_getEnumTagSinglePayload(v52, 1, v54) == 1)
      {
        outlined destroy of IntentApplication?(v0[13], &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_19_14();
        v56 = v55;
        if ((*(v57 + 88))() == v181)
        {
          v58 = v0[18];
          v176 = v0[19];
          v59 = v0[17];
          v60 = v0[15];
          v61 = v49;
          v62 = v0[13];
          (*(v56 + 96))(v62, v54);
          v63 = *v178;
          v64 = v62;
          v49 = v61;
          (*v178)(v59, v64, v60);
          v63(v58, v59, v60);
          v63(v176, v58, v60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = OUTLINED_FUNCTION_65_10();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71, v72, v73, v74);
            v49 = v75;
          }

          v66 = *(v49 + 16);
          v65 = *(v49 + 24);
          v41 = v174;
          if (v66 >= v65 >> 1)
          {
            v76 = OUTLINED_FUNCTION_26_3(v65);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v76, v66 + 1, 1, v49);
            v49 = v77;
          }

          v67 = v0[19];
          v68 = v0[15];
          *(v49 + 16) = v66 + 1;
          OUTLINED_FUNCTION_42_5();
          (v63)(v49 + v69 + *(v70 + 72) * v66);
        }

        else
        {
          (*(v56 + 8))(v0[13], v54);
        }

        v47 = v185;
      }

      v46 += v47;
      --v38;
    }

    while (v38);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v85 = v0[15];
  specialized Collection.first.getter(v49, v0[14]);

  v86 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v86, v87, v85);
  if (v16)
  {
    outlined destroy of IntentApplication?(v0[14], &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v88 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v88, static Logging.search);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v90))
    {
      v91 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v91);
      OUTLINED_FUNCTION_174_2(&dword_25D85C000, v92, v90, "Missing experience component in global results");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v94 = v0[27];
    v93 = v0[28];
    v95 = v0[26];
    v96 = v0[2];

    v97 = *(v94 + 8);
    v98 = OUTLINED_FUNCTION_32_0();
    v99(v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
    goto LABEL_7;
  }

  v100 = v0[12];
  (*(v0[16] + 32))(v0[20], v0[14], v0[15]);
  static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)();
  v101 = static GlobalSearchResponseProcessor.makeSFCard(card:)();
  if (!v101)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v110 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v110, static Logging.search);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v112))
    {
      v113 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v113);
      OUTLINED_FUNCTION_174_2(&dword_25D85C000, v114, v112, "Unable to make SFCard from global results");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v115 = v0[27];
    v116 = v0[26];
    v117 = v0[20];
    v118 = v0[15];
    v119 = v0[16];
    v120 = v0[11];
    v121 = v0[12];
    v122 = v0[10];
    v186 = v0[28];
    v192 = v0[2];

    v123 = *(v120 + 8);
    v124 = OUTLINED_FUNCTION_179_0();
    v125(v124);
    v126 = *(v119 + 8);
    v127 = OUTLINED_FUNCTION_64_0();
    v128(v127);
    (*(v115 + 8))(v186, v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
    goto LABEL_7;
  }

  v102 = v101;
  v103 = v0[28];
  v104 = v0[9];
  v106 = v0[5];
  v105 = v0[6];
  v107 = v0[4];
  GlobalDialog.speak.getter();
  LocalizedStringResource.init(stringLiteral:)();
  GlobalDialog.print.getter();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_64_0();
  _SpeakableString.init(spoken:printed:)();
  SFCard.snippetPluginModel.getter(v107);
  v108 = type metadata accessor for RGPluginModel();
  if (__swift_getEnumTagSinglePayload(v107, 1, v108) == 1)
  {
    outlined destroy of IntentApplication?(v0[4], &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
    v191 = 0;
    v109 = 0xF000000000000000;
LABEL_49:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v182 = v109;
    v187 = v102;
    v136 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v136, static Logging.search);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v138))
    {
      v139 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v139);
      OUTLINED_FUNCTION_174_2(&dword_25D85C000, v140, v138, "No snippet model data generated. This is expected for dialog-only Pegasus response.");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v141 = v0[27];
    v179 = v0[28];
    v142 = v0[26];
    v143 = v0[20];
    v145 = v0[15];
    v144 = v0[16];
    v146 = v0[11];
    v147 = v0[12];
    v148 = v0[10];

    v149 = *(v146 + 8);
    v150 = OUTLINED_FUNCTION_162_3();
    v151(v150);
    v152 = *(v144 + 8);
    v153 = OUTLINED_FUNCTION_158();
    v154(v153);
    (*(v141 + 8))(v179, v142);
    outlined consume of Data?(v191, v182);
    v155 = 0;
    v156 = 0xC000000000000000;
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_4_26();
  _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v129, v130);
  v191 = SnippetPluginModel.data.getter();
  v109 = v131;
  OUTLINED_FUNCTION_51(v108);
  v133 = *(v132 + 8);
  v134 = OUTLINED_FUNCTION_70_2();
  v135(v134);
  if (v109 >> 60 == 15)
  {
    goto LABEL_49;
  }

  v157 = v0[27];
  v158 = v109;
  v183 = v0[26];
  v188 = v0[28];
  v159 = v0[20];
  v161 = v0[15];
  v160 = v0[16];
  v162 = v0[11];
  v163 = v0[12];
  v164 = v0[10];

  (*(v162 + 8))(v163, v164);
  v165 = *(v160 + 8);
  v166 = OUTLINED_FUNCTION_179_0();
  v167(v166);
  (*(v157 + 8))(v188, v183);
  v156 = v158;
  v155 = v191;
LABEL_55:
  v169 = v0[8];
  v168 = v0[9];
  v170 = v0[7];
  v171 = v0[2];
  *v171 = v155;
  v171[1] = v156;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
  (*(v169 + 32))(v171 + *(v172 + 48), v168, v170);
  OUTLINED_FUNCTION_44_0();
  v21 = v172;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = v0[28];
  v23 = v0[24];
  v24 = v0[25];
  v25 = v0[23];
  v27 = v0[19];
  v26 = v0[20];
  v29 = v0[17];
  v28 = v0[18];
  v31 = v0[13];
  v30 = v0[14];
  v175 = v0[12];
  v177 = v0[9];
  v180 = v0[6];
  v184 = v0[5];
  v189 = v0[4];

  OUTLINED_FUNCTION_127();

  return v32();
}

uint64_t closure #1 in SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return SearchEntity.asCATEntity.getter();
}

uint64_t closure #4 in SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return SearchEntity.asCATEntity.getter();
}

void SearchToolIntentController.buildExpandableLiveFlightComponents(answer:)()
{
  OUTLINED_FUNCTION_155();
  v186 = v0;
  OUTLINED_FUNCTION_47_1();
  v1 = type metadata accessor for Layout();
  v2 = OUTLINED_FUNCTION_14(v1);
  v193 = v3;
  v194 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v185 = v7 - v6;
  OUTLINED_FUNCTION_78_0();
  v8 = type metadata accessor for RGPluginModel();
  v9 = OUTLINED_FUNCTION_14(v8);
  v182 = v10;
  v183 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v15 = (v14 - v13);
  v199 = type metadata accessor for SpotlightRankingItem();
  v16 = OUTLINED_FUNCTION_14(v199);
  v203 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v187 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v23 = OUTLINED_FUNCTION_114(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39_0();
  v198 = v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v197 = v28;
  v29 = OUTLINED_FUNCTION_78_0();
  v30 = type metadata accessor for SearchResultItem(v29);
  v31 = OUTLINED_FUNCTION_17(v30);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v180 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  v204 = v37;
  OUTLINED_FUNCTION_78_0();
  v208 = type metadata accessor for FlightReservation();
  v38 = OUTLINED_FUNCTION_21(v208);
  v205 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36();
  v207 = v43 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v47);
  v212 = &v180 - v48;
  v49 = OUTLINED_FUNCTION_78_0();
  v50 = type metadata accessor for SearchResult(v49);
  v51 = OUTLINED_FUNCTION_14(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_39_0();
  v202 = v56;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7_4();
  v196 = v58;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_7_4();
  v209 = v60;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_4();
  v200 = v62;
  OUTLINED_FUNCTION_174();
  v64 = MEMORY[0x28223BE20](v63);
  v66 = &v180 - v65;
  MEMORY[0x28223BE20](v64);
  v68 = &v180 - v67;
  memcpy(v217, v0, sizeof(v217));
  memcpy(v216, v0, sizeof(v216));
  SearchAnswerEntity.sourceResults.getter();
  v70 = v69;
  v71 = *(v69 + 16);
  v210 = v15;
  v211 = v50;
  v213 = v71;
  v188 = v68;
  if (v71)
  {
    v201 = v30;
    v72 = 0;
    v73 = *(v53 + 80);
    OUTLINED_FUNCTION_79();
    while (1)
    {
      if (v72 >= *(v70 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      v74 = *(v53 + 72);
      OUTLINED_FUNCTION_9_21();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v75, v66);
      SearchResultItem.type.getter(&v215);
      SearchResultKey.rawValue.getter();
      v78 = v77 == 0xD000000000000011 && 0x800000025DBEDF90 == v76;
      if (v78)
      {
      }

      else
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
        OUTLINED_FUNCTION_175_3();
        if ((v53 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (SearchResultItem.experience.getter())
      {

        OUTLINED_FUNCTION_3_29();
        v81 = v212;
        outlined init with take of AssistantSystemContext(v66, v212);
        v80 = 0;
        v15 = v210;
        v50 = v211;
        v30 = v201;
        goto LABEL_17;
      }

LABEL_12:
      ++v72;
      OUTLINED_FUNCTION_0_42();
      outlined destroy of SearchToolIntentRequest(v66, v79);
      if (v213 == v72)
      {

        v80 = 1;
        v15 = v210;
        v50 = v211;
        v30 = v201;
        goto LABEL_15;
      }
    }
  }

  v80 = 1;
LABEL_15:
  v81 = v212;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v81, v80, 1, v50);
  v82 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v82, v83, v50);
  v85 = v193;
  v84 = v194;
  v86 = v204;
  if (v78)
  {
    outlined destroy of IntentApplication?(v81, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_3_29();
  outlined init with take of AssistantSystemContext(v81, v188);
  v87 = SearchResultItem.experience.getter();
  if (!v87 || (v88 = (*(*v87 + 128))(v87), , (v181 = v88) == 0))
  {
    OUTLINED_FUNCTION_0_42();
    outlined destroy of SearchToolIntentRequest(v188, v133);
    goto LABEL_58;
  }

  v195 = v53;
  memcpy(v216, v217, sizeof(v216));
  SearchAnswerEntity.sourceResults.getter();
  v90 = v89;
  v91 = *(v89 + 16);
  if (v91)
  {
    v215 = MEMORY[0x277D84F90];
    v213 = v91;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    OUTLINED_FUNCTION_42_5();
    v180 = v90;
    v206 = v92;
    v93 = v90 + v92;
    v94 = v215;
    v191 = (v205 + 16);
    v192 = (v205 + 32);
    v189 = v36;
    v190 = (v205 + 8);
    v205 = *(v95 + 72);
    v184 = (v203 + 32);
    v96 = v209;
    v97 = v200;
    v201 = v30;
    do
    {
      OUTLINED_FUNCTION_9_21();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v93, v96);
      OUTLINED_FUNCTION_85_9();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v96, v86);
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v212 = v94;
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
        v99 = *(v86 + *(v98 + 48));

        v101 = v207;
        v100 = v208;
        (*v192)(v207, v86, v208);
        v102 = *(v98 + 48);
        (*v191)(v36, v101, v100);
        v103 = MEMORY[0x277D84F90];
        *&v36[v102] = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_162_3();
        swift_storeEnumTagMultiPayload();
        v104 = v211;
        LODWORD(v203) = *(v96 + v211[8]);
        v105 = v211[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
        v106 = CodableNSSecureCoding.wrappedValue.getter();
        v107 = v197;
        OUTLINED_FUNCTION_92();
        v108 = v36;
        v109 = v199;
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v199);
        v113 = v196;
        *(v196 + v104[7]) = v103;
        v114 = (v113 + v104[10]);
        *v114 = 0;
        v114[1] = 0;
        OUTLINED_FUNCTION_85_9();
        _s10OmniSearch22AssistantSystemContextVWOcTm_0(v108, v113);
        v115 = v104[6];
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        v116 = v106;
        v117 = v109;
        CodableNSSecureCoding.init(wrappedValue:)();
        v118 = v198;
        outlined init with copy of SpotlightRankingItem?(v107, v198, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_166(v118, 1, v109);
        if (v78)
        {
          outlined destroy of IntentApplication?(v118, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          v119 = v104[5];
          OUTLINED_FUNCTION_153_4();
          OUTLINED_FUNCTION_153_4();
          OUTLINED_FUNCTION_153_4();
          OUTLINED_FUNCTION_153_4();
          OUTLINED_FUNCTION_153_4();
          v214 = 1;
          OUTLINED_FUNCTION_28_1();
          SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

          outlined destroy of IntentApplication?(v107, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_27_13();
          v36 = v189;
          outlined destroy of SearchToolIntentRequest(v189, v120);
          (*v190)(v207, v208);
          OUTLINED_FUNCTION_0_42();
          outlined destroy of SearchToolIntentRequest(v209, v121);
        }

        else
        {

          outlined destroy of IntentApplication?(v107, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_27_13();
          v36 = v189;
          outlined destroy of SearchToolIntentRequest(v189, v123);
          (*v190)(v207, v208);
          OUTLINED_FUNCTION_0_42();
          outlined destroy of SearchToolIntentRequest(v209, v124);
          v125 = *v184;
          v126 = v187;
          v127 = OUTLINED_FUNCTION_158();
          v125(v127);
          (v125)(v113 + v104[5], v126, v117);
        }

        v97 = v200;
        *(v113 + v104[8]) = v203;
        *(v113 + v104[9]) = 1;
        v86 = v204;
        v96 = v209;
        v94 = v212;
      }

      else
      {
        OUTLINED_FUNCTION_27_13();
        outlined destroy of SearchToolIntentRequest(v86, v122);
      }

      OUTLINED_FUNCTION_3_29();
      outlined init with take of AssistantSystemContext(v128, v97);
      v215 = v94;
      v130 = *(v94 + 16);
      v129 = *(v94 + 24);
      if (v130 >= v129 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v129);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v94 = v215;
      }

      *(v94 + 16) = v130 + 1;
      v131 = v205;
      OUTLINED_FUNCTION_3_29();
      outlined init with take of AssistantSystemContext(v97, v132);
      v93 += v131;
      --v213;
      v15 = v210;
    }

    while (v213);

    v85 = v193;
    v84 = v194;
  }

  else
  {

    v94 = MEMORY[0x277D84F90];
  }

  v134 = _s10OmniSearch18EntityCardBuildingPAAE07cardForB7Results_7contextSo6SFCardCSgSayAA0B6ResultVG_AA0bC13VisualContextCtFZAA0cD7BuilderV_Tt1g5(v94, v186[12]);
  if (!v134)
  {
    OUTLINED_FUNCTION_0_42();
    outlined destroy of SearchToolIntentRequest(v188, v144);

    goto LABEL_58;
  }

  v135 = v134;
  v212 = v94;
  v136 = v181;
  v137 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(v181);
  v138 = MEMORY[0x277D84F90];
  if (v137)
  {
    v139 = v137;
  }

  else
  {
    v139 = MEMORY[0x277D84F90];
  }

  v140 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(v135);
  if (!v140)
  {
    v140 = v138;
  }

  v216[0] = v139;
  specialized Array.append<A>(contentsOf:)(v140);
  outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v216[0], v135);
  v141 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ResponseUI11CodableCardV04fullD0_AC07compactD0tMd, &_s10ResponseUI11CodableCardV04fullD0_AC07compactD0tMR) + 48);
  v142 = v135;
  v143 = v185;
  v213 = v142;
  CodableCard.init(wrappedValue:)();
  v210 = v136;
  CodableCard.init(wrappedValue:)();
  (*(v85 + 104))(v143, *MEMORY[0x277D46C30], v84);
  Layout.snippetModel()();
  v145 = *(v85 + 8);
  v146 = OUTLINED_FUNCTION_116_0();
  v147(v146);
  OUTLINED_FUNCTION_4_26();
  _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v148, v149);
  v150 = v183;
  v209 = SnippetPluginModel.data.getter();
  v152 = v151;
  v153 = v150;
  v154 = v152;
  (*(v182 + 8))(v15, v153);
  v155 = *(v212 + 16);
  v156 = v202;
  if (!v155)
  {

    v158 = MEMORY[0x277D84F90];
LABEL_53:
    v216[0] = v158;
    v216[1] = 0;
    lazy protocol witness table accessor for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel();
    v174 = SnippetPluginModel.data.getter();
    v176 = v175;

    OUTLINED_FUNCTION_0_42();
    outlined destroy of SearchToolIntentRequest(v188, v177);

    if (v154 >> 60 == 15)
    {
      v178 = v174;
      v179 = v176;
    }

    else
    {
      if (v176 >> 60 != 15)
      {
        goto LABEL_58;
      }

      v178 = v209;
      v179 = v154;
    }

    outlined consume of Data?(v178, v179);
LABEL_58:
    OUTLINED_FUNCTION_148();
    return;
  }

  v208 = v154;
  v216[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v155, 0);
  v157 = 0;
  v158 = v216[0];
  v159 = *(v195 + 80);
  OUTLINED_FUNCTION_79();
  while (v157 < *(v160 + 16))
  {
    v161 = *(v195 + 72);
    OUTLINED_FUNCTION_9_21();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v162, v156);
    v163 = v211[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v164 = CodableNSSecureCoding.wrappedValue.getter();
    v165 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v164);
    if (!v166)
    {
      goto LABEL_62;
    }

    v167 = v165;
    v168 = v166;
    OUTLINED_FUNCTION_0_42();
    outlined destroy of SearchToolIntentRequest(v156, v169);
    v216[0] = v158;
    v171 = *(v158 + 16);
    v170 = *(v158 + 24);
    v160 = v212;
    if (v171 >= v170 >> 1)
    {
      v173 = OUTLINED_FUNCTION_26_3(v170);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v173, v171 + 1, 1);
      v160 = v212;
      v158 = v216[0];
    }

    ++v157;
    *(v158 + 16) = v171 + 1;
    v172 = v158 + 16 * v171;
    *(v172 + 32) = v167;
    *(v172 + 40) = v168;
    v156 = v202;
    if (v155 == v157)
    {

      v154 = v208;
      goto LABEL_53;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

id _s10OmniSearch18EntityCardBuildingPAAE07cardForB7Results_7contextSo6SFCardCSgSayAA0B6ResultVG_AA0bC13VisualContextCtFZAA0cD7BuilderV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_47_1();
  type metadata accessor for ResultSectionBuilder();
  OUTLINED_FUNCTION_131();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;

  v5 = ResultSectionBuilder.buildCard()();

  return v5;
}

uint64_t *SearchToolIntentController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];

  return v0;
}

uint64_t SearchToolIntentController.__deallocating_deinit()
{
  SearchToolIntentController.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SearchToolIntentControllerProtocol.perform(request:progressReporter:) in conformance SearchToolIntentController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v14(a1, a2, a3, a4);
}

Swift::Bool __swiftcall OmniSearchResponse.needsDisambiguation()()
{
  v1 = v0;
  OUTLINED_FUNCTION_133();
  v3 = *(v2 + 128);
  v4 = *(v3() + 16);

  v5 = *(v1 + 41);
  v6 = *(v1 + 40);
  v7 = v6 == 1 && *(v1 + 32) != 1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v8 = static NSUserDefaults.triggersDisambiguation.getter();
  v9 = (v4 > 1) & (v5 | v7) & v8;
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_5_21();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v10, static Logging.stextension);
  swift_retain_n();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v20 = v3;
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v14 = swift_slowAlloc();
    *v13 = 136316418;
    v21 = v9;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v13 + 4) = v15;
    *(v13 + 12) = 1024;

    *(v13 + 14) = v6;

    *(v13 + 18) = 1024;
    *(v13 + 20) = v5;
    *(v13 + 24) = 2048;
    v17 = *((v20)(v16) + 16);

    *(v13 + 26) = v17;

    *(v13 + 34) = 1024;
    v18 = *(v1 + 32);

    *(v13 + 36) = v18 == 1;

    *(v13 + 40) = 1024;
    v9 = v21;
    *(v13 + 42) = v8 & 1;
    _os_log_impl(&dword_25D85C000, v11, v12, "SearchTool disambiguation %s:\n    isQuestionQuery: %{BOOL}d\n    isOpenQuery: %{BOOL}d\n    count: %ld\n    isContentSearch: %{BOOL}d\n    allowed by UserDefaults: %{BOOL}d", v13, 0x2Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  return v9;
}

uint64_t SearchEntity.groupingId.getter()
{
  v1 = v0;
  v2 = *(v0 + 24);
  EntityProperty.wrappedValue.getter();
  memcpy(__dst, __src, sizeof(__dst));
  if (_s10OmniSearch0B7ContextVSgWOg(__dst) == 1)
  {
    memcpy(v5, __src, sizeof(v5));
    outlined destroy of IntentApplication?(v5, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    v3 = *(v1 + *(type metadata accessor for SearchEntity(0) + 92));
    EntityProperty.wrappedValue.getter();
  }

  else
  {
    memcpy(v5, __src, sizeof(v5));

    outlined destroy of IntentApplication?(v5, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchToolClientType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_20_11();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchToolClientType.typeDisplayRepresentation);
}

uint64_t static SearchToolClientType.typeDisplayRepresentation.getter()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_20_11();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchToolClientType.typeDisplayRepresentation);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_51(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_32_0();
  return v4(v3);
}

uint64_t static SearchToolClientType.typeDisplayRepresentation.setter()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_20_11();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchToolClientType.typeDisplayRepresentation);
  swift_beginAccess();
  v1 = *(v0 - 8);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_119();
  v4(v3);
  swift_endAccess();
  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_94();
  return v7(v6);
}

uint64_t (*static SearchToolClientType.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_20_11();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_200(v0, static SearchToolClientType.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchToolClientType.typeDisplayRepresentation : SearchToolClientType.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchToolClientType.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchToolClientType.typeDisplayRepresentation : SearchToolClientType.Type(uint64_t a1)
{
  v2 = SearchToolClientType.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static SearchToolClientType.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_17(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E14ToolClientTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E14ToolClientTypeO_10AppIntents21DisplayRepresentationVtGMR);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B14ToolClientTypeO_10AppIntents21DisplayRepresentationVtMd, &_s10OmniSearch0B14ToolClientTypeO_10AppIntents21DisplayRepresentationVtMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_25DBC8180;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);
  type metadata accessor for DisplayRepresentation.Image();
  v20 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  DisplayRepresentation.init(title:subtitle:image:)();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type SearchToolClientType and conformance SearchToolClientType();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t SearchToolClientType.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchToolClientType.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchToolClientType@<X0>(void *a1@<X8>)
{
  result = SearchToolClientType.rawValue.getter();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchToolClientType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolClientType and conformance SearchToolClientType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchToolClientType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolClientType and conformance SearchToolClientType();

  return MEMORY[0x28210C300](a1, v2);
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  outlined init with copy of SpotlightRankingItem?(v5, v29 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(v13, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_51(v14);
    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_153();
    v21(v20);
  }

  v23 = *(v1 + 16);
  v22 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v23)
  {
    swift_getObjectType();
    v24 = v23;
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_34_10();
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v25 = String.utf8CString.getter() + 32;
      OUTLINED_FUNCTION_131();
      v26 = swift_allocObject();
      *(v26 + 16) = v3;
      *(v26 + 24) = v1;

      if (v22 | v24)
      {
        v30[0] = 0;
        v30[1] = 0;
        v27 = v30;
        v30[2] = v24;
        v30[3] = v22;
      }

      else
      {
        v27 = 0;
      }

      v29[1] = 7;
      v29[2] = v27;
      v29[3] = v25;
      swift_task_create();

      outlined destroy of IntentApplication?(v5, &_sScPSgMd, &_sScPSgMR);

      goto LABEL_14;
    }
  }

  else
  {
    v24 = 0;
    v22 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of IntentApplication?(v5, &_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_131();
  v28 = swift_allocObject();
  *(v28 + 16) = v3;
  *(v28 + 24) = v1;
  if (v22 | v24)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v24;
    v30[7] = v22;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)()
{
  return MEMORY[0x2822009F8](closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:), 0, 0);
}

{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v1 = static ContextManager.shared;
  *(v0 + 16) = static ContextManager.shared;

  return MEMORY[0x2822009F8](closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:), v1, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 16);
  ContextManager.clear()();
  OUTLINED_FUNCTION_127();

  return v2();
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
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_106();

  return v5();
}

uint64_t *specialized SearchToolIntentController.init(omniSearchService:metricsLogger:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a4[5] = a5;
  a4[6] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  a4[10] = a6;
  a4[11] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1Tm(a4 + 7);
  (*(*(a6 - 8) + 32))(v16, a2, a6);
  a4[12] = a3;
  return a4;
}

unint64_t lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchPropertyRequest] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest, type metadata accessor for SearchPropertyRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest, type metadata accessor for SearchPropertyRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A]);
  }

  return result;
}

uint64_t _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10OmniSearch22AssistantSystemContextVWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t outlined init with take of AssistantSystemContext(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in SearchToolIntentController.perform(request:progressReporter:)(uint64_t a1)
{
  v3 = type metadata accessor for SearchToolIntentRequest(0);
  OUTLINED_FUNCTION_21(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v1 + 16);
  v8 = (v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  v12[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in SearchToolIntentController.perform(request:progressReporter:)(a1, v7, v1 + v5, v9, v10);
}

uint64_t partial apply for closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_23_14();

  return closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)();
}

uint64_t closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)partial apply()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_23_14();

  return closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)();
}

uint64_t outlined copy of OmniSearchResponseRenderOption(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 4)
  {
  }

  return result;
}

uint64_t outlined consume of OmniSearchResponseRenderOption(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 4)
  {
  }

  return result;
}

uint64_t outlined destroy of SearchToolIntentRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [SearchToolClientType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SearchToolClientType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SearchToolClientType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B14ToolClientTypeOGMd, &_sSay10OmniSearch0B14ToolClientTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchToolClientType] and conformance [A]);
  }

  return result;
}

uint64_t dispatch thunk of SearchToolIntentControllerProtocol.perform(request:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_185_1(a6);
  v19 = (v12 + *v12);
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_23(v15);
  *v16 = v17;
  v16[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v19(a1, a2, a3, a4, a5, a6);
}

void type metadata completion function for SearchToolIntentRequest()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for StructuredQueryEntity?, type metadata accessor for StructuredQueryEntity, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [SearchEntityTypeIdentifier]?(319, &lazy cache variable for type metadata for [SearchEntityTypeIdentifier]?, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchContext?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [SearchEntityTypeIdentifier]?(319, &lazy cache variable for type metadata for [EntityMatch]?, &_sSay10OmniSearch11EntityMatchVGMd, &_sSay10OmniSearch11EntityMatchVGMR);
          if (v4 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
            if (v5 <= 0x3F)
            {
              type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchToolClientType?);
              if (v6 <= 0x3F)
              {
                type metadata accessor for [SearchEntityTypeIdentifier]?(319, &lazy cache variable for type metadata for [SearchPropertyRequest]?, &_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for AssistantSystemContext(319);
                  if (v8 <= 0x3F)
                  {
                    _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for SearchEntity?, type metadata accessor for SearchEntity, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata completion function for AssistantSystemContext()
{
  _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for IntentSystemContext.AssistantContext.InteractionMode?, MEMORY[0x277CBA0C8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for IntentSystemContext.InterfaceIdiom?, MEMORY[0x277CBA120], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for DeviceState?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for DialogData()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for [SearchEntityTypeIdentifier]?(319, &lazy cache variable for type metadata for [String : _IntentValue & Sendable]?, &_sSDySS10AppIntents12_IntentValue_s8SendablepGMd, &_sSDySS10AppIntents12_IntentValue_s8SendablepGMR);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for _SpeakableString?, MEMORY[0x277CB9F78], MEMORY[0x277D83D88]);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void type metadata accessor for [SearchEntityTypeIdentifier]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for SearchToolIntentResponse()
{
  _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for [SearchEntity], type metadata accessor for SearchEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DialogData(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_54_5();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t dispatch thunk of SearchToolIntentController.perform(request:progressReporter:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 112);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_103_8(v4);

  return v8(v6);
}

uint64_t dispatch thunk of SearchToolIntentController.performInternal(request:progressReporter:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 120);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_103_8(v4);

  return v8(v6);
}

void type metadata completion function for SearchToolIntentController.ExperienceData()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DialogData(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchToolClientType(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SearchToolIntentRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchToolIntentRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel()
{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel);
  }

  return result;
}

id outlined copy of IndexContext?(int a1, int a2, id a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

void outlined consume of IndexContext?(int a1, int a2, id a3)
{
  if (a3 != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type [SearchCATEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchCATEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchCATEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B9CATEntityVGMd, &_sSay10OmniSearch0B9CATEntityVGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchCATEntity] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, type metadata accessor for SearchResult);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A]);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  v3 = OUTLINED_FUNCTION_23_14();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type DialogExperience and conformance DialogExperience, type metadata accessor for DialogExperience);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A]);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_19()
{

  return swift_once();
}

void OUTLINED_FUNCTION_16_17()
{
  v3 = v0[195];
  v4 = v0[192];
  v5 = v0[191];
  v6 = v0[190];
  v7 = v0[187];
  v8 = v0[186];
  v9 = v0[185];
  v10 = v0[183];
  v11 = v0[182];
  v12 = v0[181];
  v13 = v0[180];
  v14 = v0[179];
  v15 = v0[178];
  v16 = v0[176];
  v17 = v0[175];
  v18 = v0[174];
  v19 = v0[173];
  v20 = v0[170];
  v21 = v0[167];
  v22 = v0[164];
  v1 = v0[162];
  v23 = v0[161];
  v2 = v0[160];
}

uint64_t OUTLINED_FUNCTION_20_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return swift_once();
}

void OUTLINED_FUNCTION_32_18()
{
  v1 = v0[266];
  v2 = v0[264];
  v3 = v0[263];
  v4 = v0[260];
  v5 = v0[259];
  v6 = v0[257];
  v7 = v0[256];
  v8 = v0[254];
}

void OUTLINED_FUNCTION_34_18()
{
  v1 = v0[258];
  v2 = v0[233];
  v3 = v0[231];
  v4 = v0[230];
  v5 = v0[227];
}

uint64_t OUTLINED_FUNCTION_48_8(uint64_t a1)
{
  *(a1 + 8) = SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:);
  v2 = *(v1 + 1800);
  return 0;
}

void OUTLINED_FUNCTION_52_11()
{
  v1 = v0[206];
  v0[203] = v0[205];
  v0[204] = v1;
}

void OUTLINED_FUNCTION_54_11()
{
  v3 = v0[253];
  v4 = v0[252];
  v5 = v0[251];
  v6 = v0[250];
  v7 = v0[249];
  v8 = v0[248];
  v9 = v0[247];
  v10 = v0[246];
  v11 = v0[243];
  v12 = v0[242];
  v13 = v0[239];
  v14 = v0[238];
  v15 = v0[235];
  v16 = v0[234];
  v1 = v0[233];
  v2 = v0[232];
}

id OUTLINED_FUNCTION_55_8()
{
  outlined copy of Data?(v1, v0);

  return SFCard.init(data:)(v1, v0);
}

void OUTLINED_FUNCTION_57_7()
{
  v2 = v0[251];
  v3 = v0[250];
  v4 = v0[249];
  v5 = v0[248];
  v6 = v0[247];
  v7 = v0[246];
  v8 = v0[243];
  v9 = v0[242];
  v10 = v0[239];
  v11 = v0[238];
  v1 = v0[235];
  v12 = v0[234];
}

uint64_t OUTLINED_FUNCTION_59_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_61_10()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_63_8()
{
  *(v2 - 160) = v1[150];
  *(v2 - 144) = v1[147];
  *(v2 - 128) = v1[146];
  v3 = v1[143];
  *(v2 - 112) = v1[145];
  *(v2 - 104) = v3;
  *(v2 - 96) = v1[141];
  v4 = v1[140];
  v5 = v1[139];
  v6 = v1[138];
  v7 = *v0;
}

void OUTLINED_FUNCTION_76_7()
{
  v2 = v0[274];
  v3 = v0[273];
  v4 = v0[272];

  outlined consume of IndexContext?(v4, v3, v2);
}

void OUTLINED_FUNCTION_78_9()
{
  v1 = v0[241];
  v4 = v0[237];
  v5 = *(v0[240] + 84);
  v2 = v0[225] + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v3 = *(v1 + 72);
}

uint64_t OUTLINED_FUNCTION_84_7(uint64_t result)
{
  v2[6] = v1;
  v2[10] = result;
  v2[11] = 0x6974736575517369;
  v2[12] = 0xEF79726575516E6FLL;
  return result;
}

void OUTLINED_FUNCTION_89_8()
{
  v2 = v0[157];
  *(v1 - 176) = v0[158];
  *(v1 - 168) = v2;
  *(v1 - 152) = v0[155];
  *(v1 - 136) = v0[153];
  *(v1 - 120) = v0[152];
}

uint64_t OUTLINED_FUNCTION_93_8()
{

  return outlined destroy of SearchToolIntentRequest(v0, type metadata accessor for StructuredQueryEntity);
}

uint64_t OUTLINED_FUNCTION_96_7@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_98_6()
{
  result = v0[278];
  v2 = v0[259];
  v3 = v0[227];
  return result;
}

void OUTLINED_FUNCTION_99_7()
{
  v1 = v0[274];
  v2 = v0[273];
  v3 = v0[272];
}

__n128 *OUTLINED_FUNCTION_112_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7265755172657375;
  result[2].n128_u64[1] = 0xE900000000000079;
  return result;
}

unint64_t OUTLINED_FUNCTION_129_6()
{
  v0[214] = v1;
  v0[215] = 10794;
  v0[216] = 0xE200000000000000;
  v0[217] = 0;
  v0[218] = 0xE000000000000000;

  return lazy protocol witness table accessor for type String and conformance String();
}

void OUTLINED_FUNCTION_133_5()
{

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

void OUTLINED_FUNCTION_134_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_135_5(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_139_4()
{
  *v0 = 0;
  v0[1] = 0;
  *(v0 + *(v1 + 24)) = 0;
  v2 = (v0 + *(v1 + 28));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_144_4()
{
  v1 = v0[211];
  v2 = v0[279];
  v3 = v0[270];
  outlined consume of OmniSearchResponseRenderOption(v0[267], 2);
  outlined consume of OmniSearchResponseRenderOption(0, 2);
}

void *OUTLINED_FUNCTION_148_3()
{
  v4 = (v2 + *(v1 + 28));
  *v4 = 0;
  v4[1] = 0;

  return memcpy((v0 + 1104), (v0 + 968), 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_149_4()
{
  v2 = v0[270];
  v3 = v0[269];
  v4 = v0[266];
  v5 = v0[265];
  v6 = v0[244];

  return type metadata accessor for URL();
}

void OUTLINED_FUNCTION_155_4()
{
  v1 = v0[258];
  v3 = v0[244];
  v2 = v0[227];
}

void OUTLINED_FUNCTION_160_2()
{
  *(v1 + *(v2 + 24)) = v0;
  v3 = (v1 + *(v2 + 28));
  *v3 = 0;
  v3[1] = 0;
}

BOOL OUTLINED_FUNCTION_170_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_171_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(a1 + 24));

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_172_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28)
{

  return outlined consume of Data._Representation(a25, a28);
}

BOOL OUTLINED_FUNCTION_173_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_174_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_175_3()
{
}

uint64_t OUTLINED_FUNCTION_176_3()
{
}

uint64_t OUTLINED_FUNCTION_179_3(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_184_2@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_191_3()
{
  v1 = v0[210];
  v2 = v0[209];
  v3 = v0[204];
  return v0[183];
}

uint64_t OUTLINED_FUNCTION_192_3()
{
  result = *(v0 + 2256);
  v2 = *(v0 + 2232);
  return result;
}

uint64_t OUTLINED_FUNCTION_197_3(uint64_t result)
{
  *(v1 - 472) = result;
  *(v1 - 288) = result;
  return result;
}

void OUTLINED_FUNCTION_200_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void *OUTLINED_FUNCTION_201_3()
{
  v2 = v0[229];

  return memcpy(v0 + 155, v0 + 121, 0x88uLL);
}

void *OUTLINED_FUNCTION_202_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char __dst)
{
  v36 = *(v34 + 1832);

  return memcpy(&__dst, (v34 + 424), 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_203_2(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_204_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[17] = a1;
  v3[18] = v2 | 2;
  v3[19] = a2;
}

void OUTLINED_FUNCTION_205_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_206_2(float a1)
{
  *v1 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_208_1()
{
  v2 = v0[200];
  v3 = v0[141];
  v4 = v0[137];

  return type metadata accessor for TaskPriority();
}

uint64_t OUTLINED_FUNCTION_209_2()
{
  v2 = *(v0 + 2000);

  return SFCard.snippetPluginModel.getter(v2);
}

uint64_t OUTLINED_FUNCTION_210_0()
{
  v2 = *(v0 + 2216);
  v3 = *(v0 + 2208);

  return outlined consume of Data?(v3, v2);
}

uint64_t OUTLINED_FUNCTION_211_2()
{

  return String.init<A>(describing:)();
}

Swift::Void __swiftcall SearchToolProgressReporter.setupProgress()()
{
  v2 = v1;
  v3 = v0;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.search);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25D85C000, v5, v6, "Progress reporter setup called", v7, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v8 = type metadata accessor for OmniSearchProgressUpdate();
  swift_allocObject();
  v9 = OmniSearchProgressUpdate.init(totalUnitCount:completedUnitCount:localizedDescription:)(100, 0, 0, 0);
  v13[3] = v8;
  OUTLINED_FUNCTION_1_41();
  v13[4] = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(v10, 255, v11);
  v13[0] = v9;
  v12 = *(v2 + 64);

  v12(v13, v3, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t SearchToolProgressReporter.searchStarted(with:isOnScreenReference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a1;
  v5[8] = a3;
  v6 = *(a4 + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchToolProgressReporter.searchStarted(with:isOnScreenReference:), v8, v7);
}

uint64_t SearchToolProgressReporter.searchStarted(with:isOnScreenReference:)()
{
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.search);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25D85C000, v2, v3, "Progress reporter search started called", v4, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  SearchToolProgressReporter.getSearchDescription(for:)(v8, v7, v5);
  v9 = type metadata accessor for OmniSearchProgressUpdate();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_5_22();
  v0[5] = v9;
  OUTLINED_FUNCTION_1_41();
  v0[6] = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(v11, 255, v12);
  v0[2] = v10;
  v13 = *(v5 + 64);

  v13(v0 + 2, v7, v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v14 = v0[1];

  return v14();
}

uint64_t String.init(localized:)(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_36();
  v4 = type metadata accessor for String.LocalizationValue();
  OUTLINED_FUNCTION_19_14();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  (*(v6 + 16))(v11 - v10, a1, v4);
  type metadata accessor for SearchToolProgressReporterAppIntent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(a1, v4);
  return v14;
}

uint64_t SearchToolProgressReporter.getSearchDescription(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_36();
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_36();
  v12 = v11 - v10;
  if ((*(a3 + 40))(a2, a3))
  {
    goto LABEL_12;
  }

  v35 = a2;
  v13 = *(a1 + 16);
  v14 = (a1 + 40);
  for (i = MEMORY[0x277D84F90]; v13; --v13)
  {
    v16 = *(v14 - 1);
    v17 = *v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = *(i + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = v21;
    }

    v18 = *(i + 16);
    if (v18 >= *(i + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = v22;
    }

    *(i + 16) = v18 + 1;
    v19 = i + 16 * v18;
    *(v19 + 32) = v16;
    *(v19 + 40) = v17;
    v14 += 2;
  }

  v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(i);
  v24 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v23);
  if (v24[2] != 1 || (v26 = v24[4], v25 = v24[5], , , v27 = specialized SearchToolProgressReporter.appName(for:)(v26, v25), !v28))
  {

LABEL_12:
    String.LocalizationValue.init(stringLiteral:)();
    return String.init(localized:)(v12);
  }

  v29 = v27;
  v30 = v28;
  (*(a3 + 24))(v26, v25, v35, a3);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0x6E69686372616553;
  v31._object = 0xED0000206E692067;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
  v32._countAndFlagsBits = v29;
  v32._object = v30;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v32);

  v33._countAndFlagsBits = 10911970;
  v33._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
  String.LocalizationValue.init(stringInterpolation:)();
  return String.init(localized:)(v12);
}

uint64_t SearchToolProgressReporter.answerSynthesisStarted(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(a3 + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchToolProgressReporter.answerSynthesisStarted(with:), v7, v6);
}

uint64_t SearchToolProgressReporter.answerSynthesisStarted(with:)()
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.answerSynthesis);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25D85C000, v2, v3, "Progress reporter answer synthesis started called", v4, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  if (((*(v5 + 40))(v7, v5) & 1) == 0)
  {
    v8 = v0[10];
    SearchToolProgressReporter.getASDescription(for:)(v0[7], v0[8], v0[9]);
    if (v9)
    {
      v10 = v0[9];
      v11 = v0[10];
      v12 = v0[8];
      v13 = type metadata accessor for OmniSearchProgressUpdate();
      swift_allocObject();
      v14 = OUTLINED_FUNCTION_5_22();
      v0[5] = v13;
      OUTLINED_FUNCTION_1_41();
      v0[6] = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(v15, 255, v16);
      v0[2] = v14;
      v17 = *(v10 + 64);

      v17(v0 + 2, v12, v10);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t SearchToolProgressReporter.getASDescription(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v30 = type metadata accessor for SearchResult(0);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  while (v15 != v14)
  {
    outlined init with copy of SearchResult(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v13);
    SearchResultItem.type.getter(&v36);
    v17 = v36;
    outlined destroy of SearchResult(v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = *(v16 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v16 = v20;
    }

    v18 = *(v16 + 16);
    if (v18 >= *(v16 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v16 = v21;
    }

    *(v16 + 16) = v18 + 1;
    *(v16 + v18 + 32) = v17;
    ++v14;
  }

  v22 = *(_sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10OmniSearch0C9ResultKeyO_SayAFGTt0g5(v16) + 16);

  v23 = v32;
  v24 = v31;
  if (v22 > 1)
  {
    goto LABEL_11;
  }

  specialized Collection.first.getter(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v30) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v7, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
LABEL_11:
    v35 = 30;
    return SearchToolProgressReporter.getASDescription(for:)(&v35);
  }

  v26 = v29;
  outlined init with take of SearchResult(v7, v29);
  if (SearchToolProgressReporter.doesSearchAppMatchResult(for:)(v26, v24, v23))
  {
    SearchResultItem.type.getter(&v33);
    v27 = SearchToolProgressReporter.getASDescriptionMatchingSearch(for:)(&v33);
  }

  else
  {
    SearchResultItem.type.getter(&v34);
    v27 = SearchToolProgressReporter.getASDescription(for:)(&v34);
  }

  v25 = v27;
  outlined destroy of SearchResult(v26);
  return v25;
}

uint64_t SearchToolProgressReporter.doesSearchAppMatchResult(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v5(a2, a3);
  if (!v6)
  {
    return 0;
  }

  SearchResultItem.type.getter(&v18);
  if (((1 << v18) & 0x7FFF8010) != 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for SearchResult(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v8 = CodableNSSecureCoding.wrappedValue.getter();
  v9 = [v8 bundleID];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = (v5)(a2, a3);
  if (v12)
  {
    if (v14)
    {
      if (v10 != v13 || v12 != v14)
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v16 & 1;
      }

      return 1;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_14:

    return 0;
  }

  return 1;
}

uint64_t SearchToolProgressReporter.getASDescriptionMatchingSearch(for:)(unsigned __int8 *a1)
{
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*a1)
  {
    case 4u:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
      v8 = *a1;
      result = SearchToolProgressReporter.getASDescription(for:)(&v8);
      break;
    default:
      String.LocalizationValue.init(stringLiteral:)();
      result = String.init(localized:)(v5);
      break;
  }

  return result;
}

uint64_t SearchToolProgressReporter.getASDescription(for:)(unsigned __int8 *a1)
{
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v10 = 0;
  MEMORY[0x25F8A1070](&v10, 8, v4);
  result = 0;
  switch(v7)
  {
    case 29:
      return result;
    default:
      String.LocalizationValue.init(stringLiteral:)();
      result = String.init(localized:)(v6);
      break;
  }

  return result;
}

uint64_t SearchToolProgressReporterXPC.isOnScreenReference.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t SearchToolProgressReporterXPC.__allocating_init(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SearchToolProgressReporterXPC.init(session:)(a1);
  return v2;
}

uint64_t SearchToolProgressReporterXPC.init(session:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 136) = a1;
  *(v1 + 128) = 0;
  return v1;
}

void SearchToolProgressReporterXPC.sendProgressReport(_:)(void *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v1 + 136);
  v5 = *(v3 + 16);
  dispatch thunk of XPCSession.send<A>(_:)();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logging.search);
  outlined init with copy of ChatMessageRecord(a1, v14);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    outlined init with copy of ChatMessageRecord(v14, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch14ProgressUpdate_pMd, &_s10OmniSearch14ProgressUpdate_pMR);
    String.init<A>(describing:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v9 + 4) = v11;
    _os_log_impl(&dword_25D85C000, v7, v8, "Successfully sent progress update: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t SearchToolProgressReporterXPC.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SearchToolProgressReporterXPC.__deallocating_deinit()
{
  SearchToolProgressReporterXPC.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for XPCProgressReporter.init(session:) in conformance SearchToolProgressReporterXPC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SearchToolProgressReporterXPC.__allocating_init(session:)(a1);
  *a2 = result;
  return result;
}

uint64_t key path setter for SearchToolProgressReporterXPC.searchBundleId : SearchToolProgressReporterXPC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t SearchToolProgressReporterXPC.searchBundleId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t SearchToolProgressReporterXPC.searchBundleId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t SearchToolProgressReporterAppIntent.__allocating_init(progressReportingIntent:)(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_19_14();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a2(v12, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v14;
}

uint64_t SearchToolProgressReporterAppIntent.sendProgressReport(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized SearchToolProgressReporterAppIntent.sendProgressReport(_:)(v4, v1, v2, v3);
}

uint64_t SearchToolProgressReporterAppIntent.deinit()
{
  v1 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SearchToolProgressReporterAppIntent.__deallocating_deinit()
{
  SearchToolProgressReporterAppIntent.deinit();

  return MEMORY[0x282200960](v0);
}

void outlined bridged method (mbnn) of @objc NSProgress.localizedDescription.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();

  [a3 setLocalizedDescription_];
}

uint64_t specialized SearchToolProgressReporterAppIntent.__allocating_init(progressReportingIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11);
  type metadata accessor for SearchToolProgressReporterAppIntent();
  v13 = swift_allocObject();
  (*(v6 + 16))(v10, v12, a3);
  v14 = specialized SearchToolProgressReporterAppIntent.init(progressReportingIntent:)(v10, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t specialized SearchToolProgressReporterAppIntent.init(progressReportingIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  swift_defaultActor_initialize();
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  outlined init with take of EntityCardBuilding(v9, a2 + 136);
  *(a2 + 128) = 0;
  return a2;
}

uint64_t specialized SearchToolProgressReporterAppIntent.sendProgressReport(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  OUTLINED_FUNCTION_19_14();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  (*(v8 + 16))(v13 - v12);
  v15 = *(a2 + 160);
  v16 = *(a2 + 168);
  OUTLINED_FUNCTION_6_14();
  v17 = ProgressReportingIntent.progress.getter();
  [v17 setTotalUnitCount_];

  v18 = *(a2 + 160);
  v19 = *(a2 + 168);
  OUTLINED_FUNCTION_6_14();
  v20 = ProgressReportingIntent.progress.getter();
  [v20 setCompletedUnitCount_];

  v21 = a4[7](a3, a4);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = *(a2 + 160);
    v26 = *(a2 + 168);
    OUTLINED_FUNCTION_6_14();
    v27 = ProgressReportingIntent.progress.getter();
    outlined bridged method (mbnn) of @objc NSProgress.localizedDescription.setter(v23, v24, v27);
  }

  return (*(v8 + 8))(v14, a3);
}

uint64_t instantiation function for generic protocol witness table for SearchToolProgressReporterXPC(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(&lazy protocol witness table cache variable for type SearchToolProgressReporterXPC and conformance SearchToolProgressReporterXPC, a2, type metadata accessor for SearchToolProgressReporterXPC);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SearchToolProgressReporterAppIntent(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(&lazy protocol witness table cache variable for type SearchToolProgressReporterAppIntent and conformance SearchToolProgressReporterAppIntent, a2, type metadata accessor for SearchToolProgressReporterAppIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_22()
{

  return OmniSearchProgressUpdate.init(totalUnitCount:completedUnitCount:localizedDescription:)(100, 33, v0, v1);
}

uint64_t Person.name.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t StructuredQueryEntity.people.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 64));
  return v2;
}

uint64_t PersonQueryEntity.unspecified.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for PersonQueryEntity(v0);
  OUTLINED_FUNCTION_17_9(Entity);
  return EntityProperty.wrappedValue.getter();
}

uint64_t PersonQueryEntity.receiver.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for PersonQueryEntity(v0);
  OUTLINED_FUNCTION_10_9(Entity);
  return EntityProperty.wrappedValue.getter();
}

uint64_t PersonQueryEntity.sender.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for PersonQueryEntity(v0);
  OUTLINED_FUNCTION_11_9(Entity);
  return EntityProperty.wrappedValue.getter();
}

uint64_t StructuredQueryEntity.preferredType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_10_9(Entity);
  EntityProperty.wrappedValue.getter();
  return v2;
}

uint64_t StructuredQueryEntity.filterType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_11_9(Entity);
  EntityProperty.wrappedValue.getter();
  return v2;
}

uint64_t StructuredQueryEntity.isQuestion.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_17_9(Entity);
  EntityProperty.wrappedValue.getter();
  return v2;
}

uint64_t StructuredQueryEntity.isQuestion.setter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_17_9(Entity);
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*StructuredQueryEntity.isQuestion.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 20));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.$isQuestion.getter()
{
  return StructuredQueryEntity.$isQuestion.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v2 = v1(v0);
  OUTLINED_FUNCTION_17_9(v2);
  return EntityProperty.projectedValue.getter();
}

uint64_t key path setter for StructuredQueryEntity.filterType : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.filterType.setter();
}

uint64_t StructuredQueryEntity.filterType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 24));
}

uint64_t (*StructuredQueryEntity.filterType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 24));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.$filterType.getter()
{
  return StructuredQueryEntity.$filterType.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v2 = v1(v0);
  OUTLINED_FUNCTION_11_9(v2);
  return EntityProperty.projectedValue.getter();
}

uint64_t key path setter for StructuredQueryEntity.preferredType : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.preferredType.setter();
}

uint64_t StructuredQueryEntity.preferredType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 28));
}

uint64_t (*StructuredQueryEntity.preferredType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 28));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.$preferredType.getter()
{
  return StructuredQueryEntity.$preferredType.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v2 = v1(v0);
  OUTLINED_FUNCTION_10_9(v2);
  return EntityProperty.projectedValue.getter();
}

uint64_t StructuredQueryEntity.temporalReference.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  OUTLINED_FUNCTION_216_2(Entity);
  return EntityProperty.wrappedValue.getter();
}

uint64_t key path getter for StructuredQueryEntity.temporalReference : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.temporalReference.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.temporalReference.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 32));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.$temporalReference.getter()
{
  return StructuredQueryEntity.$temporalReference.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v2 = v1(v0);
  OUTLINED_FUNCTION_216_2(v2);
  return EntityProperty.projectedValue.getter();
}

uint64_t StructuredQueryEntity.orderByTime.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(*(Entity + 36));
}

uint64_t key path getter for StructuredQueryEntity.orderByTime : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.orderByTime.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.orderByTime.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 36));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.appEntityStatus.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(*(Entity + 40));
}

uint64_t key path getter for StructuredQueryEntity.appEntityStatus : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.appEntityStatus.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.appEntityStatus.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 40));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.pickOne.getter()
{
  v1 = *(v0 + *(type metadata accessor for StructuredQueryEntity(0) + 44));
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*StructuredQueryEntity.pickOne.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 44));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.searchTerms.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 48));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.searchTerms : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.searchTerms.setter();
}

uint64_t StructuredQueryEntity.searchTerms.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 48));
}

uint64_t (*StructuredQueryEntity.searchTerms.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 48));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.locations.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 52));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.locations : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.locations.setter();
}

uint64_t StructuredQueryEntity.locations.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 52));
}

uint64_t (*StructuredQueryEntity.locations.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 52));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.time.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 56));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.time : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.time.setter();
}

uint64_t StructuredQueryEntity.time.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 56));
}

uint64_t (*StructuredQueryEntity.time.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 56));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.messageTime.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 60));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.messageTime : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.messageTime.setter();
}

uint64_t StructuredQueryEntity.messageTime.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 60));
}

uint64_t (*StructuredQueryEntity.messageTime.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 60));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for StructuredQueryEntity.people : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.people.setter();
}

uint64_t StructuredQueryEntity.people.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 64));
}

uint64_t (*StructuredQueryEntity.people.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 64));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.tagName.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 68));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.tagName : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.tagName.setter();
}

uint64_t StructuredQueryEntity.tagName.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 68));
}

uint64_t (*StructuredQueryEntity.tagName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 68));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.flagColor.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 72));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.flagColor : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.flagColor.setter();
}

uint64_t StructuredQueryEntity.flagColor.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 72));
}

uint64_t (*StructuredQueryEntity.flagColor.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 72));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.sourceType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 76));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.sourceType : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.sourceType.setter();
}

uint64_t StructuredQueryEntity.sourceType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 76));
}

uint64_t (*StructuredQueryEntity.sourceType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 76));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.containsType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 80));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.containsType : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.containsType.setter();
}

uint64_t StructuredQueryEntity.containsType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 80));
}

uint64_t (*StructuredQueryEntity.containsType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 80));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.app.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(*(Entity + 84));
}

uint64_t StructuredQueryEntity.app.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_34_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_4_24();
  v11 = *(v1 + *(type metadata accessor for StructuredQueryEntity(v10) + 84));
  outlined init with copy of ResourceBundle?(a1, v2, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentApplication?(a1, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
}

uint64_t (*StructuredQueryEntity.app.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 84));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.extractedType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 88));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.extractedType : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.extractedType.setter();
}

uint64_t StructuredQueryEntity.extractedType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 88));
}

uint64_t (*StructuredQueryEntity.extractedType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 88));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.returnType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 92));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.returnType : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.returnType.setter();
}

uint64_t StructuredQueryEntity.returnType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 92));
}

uint64_t (*StructuredQueryEntity.returnType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 92));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.objectType.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(*(Entity + 96));
}

uint64_t key path getter for StructuredQueryEntity.objectType : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.objectType.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.objectType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 96));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.utType.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(*(Entity + 100));
}

uint64_t key path getter for StructuredQueryEntity.utType : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.utType.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.utType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 100));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.sortOrder.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(*(Entity + 104));
}

uint64_t key path getter for StructuredQueryEntity.sortOrder : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.sortOrder.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.sortOrder.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 104));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.mediaType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 108));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.mediaType : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.mediaType.setter();
}

uint64_t StructuredQueryEntity.mediaType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 108));
}

uint64_t (*StructuredQueryEntity.mediaType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 108));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.sourceDocumentUtType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(*(Entity + 112));
  return v2;
}

uint64_t key path setter for StructuredQueryEntity.sourceDocumentUtType : StructuredQueryEntity(uint64_t *a1)
{
  v1 = *a1;

  return StructuredQueryEntity.sourceDocumentUtType.setter();
}

uint64_t StructuredQueryEntity.sourceDocumentUtType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5(*(Entity + 112));
}

uint64_t (*StructuredQueryEntity.sourceDocumentUtType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  Entity = type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6(*(Entity + 112));
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.location.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(*(Entity + 116));
}

uint64_t key path setter for StructuredQueryEntity.app : StructuredQueryEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_7();
  v15 = OUTLINED_FUNCTION_64_0();
  outlined init with copy of ResourceBundle?(v15, v16, a5, a6);
  return a7(v7);
}

uint64_t StructuredQueryEntity.location.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_7();
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v6 = OUTLINED_FUNCTION_115_6(*(Entity + 116));
  outlined init with copy of ResourceBundle?(v6, v0, &_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  EntityProperty.wrappedValue.setter();
  StructuredQueryEntity.location.didset();
  v7 = OUTLINED_FUNCTION_34_11();
  return outlined destroy of IntentApplication?(v7, v8, &_s10OmniSearch19LocationQueryEntityVSgMR);
}

uint64_t StructuredQueryEntity.location.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  Entity = type metadata accessor for LocationQueryEntity(0);
  v7 = *(Entity - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Entity);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StructuredQueryEntity(0);
  v12 = *(v0 + *(v11 + 116));
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v5, 1, Entity) == 1)
  {
    return outlined destroy of IntentApplication?(v5, &_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  }

  outlined init with take of StructuredQueryEntity(v5, v10);
  if (one-time initialization token for stextension != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logging.stextension);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    MEMORY[0x25F8A1050](v17, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch19LocationQueryEntityVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch19LocationQueryEntityVGMR);
  v18 = *(v7 + 72);
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25DBC8180;
  outlined init with copy of LocationQueryEntity(v10, v20 + v19);
  v21 = *(v1 + *(v11 + 52));
  v22[1] = v20;
  EntityProperty.wrappedValue.setter();
  return outlined destroy of StructuredQueryEntity();
}

void (*StructuredQueryEntity.location.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  *OUTLINED_FUNCTION_32_1(v3) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v1[1] = __swift_coroFrameAllocStub(v6);
  v1[2] = __swift_coroFrameAllocStub(v6);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v1[4] = *(v0 + *(type metadata accessor for StructuredQueryEntity(0) + 116));
  EntityProperty.wrappedValue.getter();
  return StructuredQueryEntity.location.modify;
}

void StructuredQueryEntity.location.modify()
{
  StructuredQueryEntity.location.modify();
}

{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  outlined init with copy of ResourceBundle?((*v8)[3], (*v8)[2], v4, v2);
  v11 = v9[3];
  v10 = v9[4];
  v12 = v9[1];
  v13 = v9[2];
  v14 = *v9;
  if (v7)
  {
    outlined init with copy of ResourceBundle?(v9[2], v9[1], v5, v3);
    v15 = EntityProperty.wrappedValue.setter();
    v1(v15);
    v16 = OUTLINED_FUNCTION_232();
    outlined destroy of IntentApplication?(v16, v17, v3);
  }

  else
  {
    v18 = EntityProperty.wrappedValue.setter();
    v1(v18);
  }

  outlined destroy of IntentApplication?(v11, v5, v3);
  free(v11);
  free(v13);
  free(v12);
  OUTLINED_FUNCTION_148();

  free(v19);
}

uint64_t StructuredQueryEntity.person.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(*(Entity + 120));
}

uint64_t StructuredQueryEntity.person.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_7();
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v6 = OUTLINED_FUNCTION_115_6(*(Entity + 120));
  outlined init with copy of ResourceBundle?(v6, v0, &_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  EntityProperty.wrappedValue.setter();
  StructuredQueryEntity.person.didset();
  v7 = OUTLINED_FUNCTION_34_11();
  return outlined destroy of IntentApplication?(v7, v8, &_s10OmniSearch17PersonQueryEntityVSgMR);
}

uint64_t StructuredQueryEntity.person.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  Entity = type metadata accessor for PersonQueryEntity(0);
  v7 = *(Entity - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Entity);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StructuredQueryEntity(0);
  v12 = *(v0 + *(v11 + 120));
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v5, 1, Entity) == 1)
  {
    return outlined destroy of IntentApplication?(v5, &_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  }

  outlined init with take of StructuredQueryEntity(v5, v10);
  if (one-time initialization token for stextension != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logging.stextension);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    MEMORY[0x25F8A1050](v17, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch17PersonQueryEntityVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch17PersonQueryEntityVGMR);
  v18 = *(v7 + 72);
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25DBC8180;
  outlined init with copy of LocationQueryEntity(v10, v20 + v19);
  v21 = *(v1 + *(v11 + 64));
  v22[1] = v20;
  EntityProperty.wrappedValue.setter();
  return outlined destroy of StructuredQueryEntity();
}

void (*StructuredQueryEntity.person.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  *OUTLINED_FUNCTION_32_1(v3) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v1[1] = __swift_coroFrameAllocStub(v6);
  v1[2] = __swift_coroFrameAllocStub(v6);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v1[4] = *(v0 + *(type metadata accessor for StructuredQueryEntity(0) + 120));
  EntityProperty.wrappedValue.getter();
  return StructuredQueryEntity.person.modify;
}

void StructuredQueryEntity.init()()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_16();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59_4();
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = OUTLINED_FUNCTION_17(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  OUTLINED_FUNCTION_132_3();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_120_5(v14, v15, v16, v10);
  v17 = OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_334(v17, v18, v19, v20);
  OUTLINED_FUNCTION_34_11();
  DisplayRepresentation.init(title:subtitle:image:)();
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v22 = Entity[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_214_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v22) = EntityProperty<>.init(title:)();
  v23 = Entity[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch10FilterTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch10FilterTypeOGSgGMR);
  OUTLINED_FUNCTION_204_4();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FilterType and conformance FilterType();
  *(v1 + v23) = OUTLINED_FUNCTION_225_2();
  v24 = Entity[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch13PreferredTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch13PreferredTypeOGSgGMR);
  OUTLINED_FUNCTION_121_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type PreferredType and conformance PreferredType();
  *(v1 + v24) = OUTLINED_FUNCTION_225_2();
  v25 = Entity[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch17TemporalReferenceOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch17TemporalReferenceOSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TemporalReference and conformance TemporalReference();
  *(v1 + v25) = OUTLINED_FUNCTION_225_2();
  v26 = Entity[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch11OrderByTimeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch11OrderByTimeOSgGMR);
  OUTLINED_FUNCTION_188_4();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type OrderByTime and conformance OrderByTime();
  *(v1 + v26) = OUTLINED_FUNCTION_225_2();
  v27 = Entity[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0aC6StatusOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0aC6StatusOSgGMR);
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_265_1();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type AppEntityStatus and conformance AppEntityStatus();
  *(v1 + v27) = OUTLINED_FUNCTION_225_2();
  v28 = Entity[11];
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_194_2();
  *(v1 + v28) = EntityProperty<>.init(title:)();
  v29 = Entity[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_203_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v29) = EntityProperty<>.init(title:)();
  v30 = Entity[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch013LocationQueryC0VGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch013LocationQueryC0VGSgGMR);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_23_15();
  lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(v31, v32);
  *(v1 + v30) = EntityProperty<>.init(title:)();
  v33 = Entity[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_181_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v33) = EntityProperty<>.init(title:)();
  v34 = Entity[15];
  OUTLINED_FUNCTION_181_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v34) = EntityProperty<>.init(title:)();
  v35 = Entity[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch011PersonQueryC0VGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch011PersonQueryC0VGSgGMR);
  OUTLINED_FUNCTION_308();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_22_15();
  lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(v36, v37);
  *(v1 + v35) = EntityProperty<>.init(title:)();
  v38 = Entity[17];
  OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_194_2();
  *(v1 + v38) = EntityProperty<>.init(title:)();
  v39 = Entity[18];
  OUTLINED_FUNCTION_289();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v39) = EntityProperty<>.init(title:)();
  v40 = Entity[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch10SourceTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch10SourceTypeOGSgGMR);
  OUTLINED_FUNCTION_259_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SourceType and conformance SourceType();
  *(v1 + v40) = OUTLINED_FUNCTION_225_2();
  v41 = Entity[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch12ContainsTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch12ContainsTypeOGSgGMR);
  OUTLINED_FUNCTION_189_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ContainsType and conformance ContainsType();
  *(v1 + v41) = OUTLINED_FUNCTION_225_2();
  v42 = Entity[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMd, &_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v42) = EntityProperty<>.init(title:)();
  v43 = Entity[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch13ExtractedTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch13ExtractedTypeOGSgGMR);
  OUTLINED_FUNCTION_255_1();
  OUTLINED_FUNCTION_121_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ExtractedType and conformance ExtractedType();
  *(v1 + v43) = OUTLINED_FUNCTION_225_2();
  v44 = Entity[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch10ReturnTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch10ReturnTypeOGSgGMR);
  OUTLINED_FUNCTION_256_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ReturnType and conformance ReturnType();
  *(v1 + v44) = OUTLINED_FUNCTION_225_2();
  v45 = Entity[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch10ObjectTypeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch10ObjectTypeOSgGMR);
  OUTLINED_FUNCTION_260_1();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ObjectType and conformance ObjectType();
  *(v1 + v45) = OUTLINED_FUNCTION_225_2();
  v46 = Entity[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0C6UTTypeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0C6UTTypeOSgGMR);
  OUTLINED_FUNCTION_257_2();
  OUTLINED_FUNCTION_106_2();
  lazy protocol witness table accessor for type EntityUTType and conformance EntityUTType();
  OUTLINED_FUNCTION_34_11();
  *(v1 + v46) = EntityProperty<>.init(title:)();
  v47 = Entity[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch9SortOrderOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch9SortOrderOSgGMR);
  OUTLINED_FUNCTION_258_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SortOrder and conformance SortOrder();
  *(v1 + v47) = OUTLINED_FUNCTION_225_2();
  v48 = Entity[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch9MediaTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch9MediaTypeOGSgGMR);
  OUTLINED_FUNCTION_254_0();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type MediaType and conformance MediaType();
  *(v1 + v48) = OUTLINED_FUNCTION_225_2();
  v49 = Entity[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0C6UTTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0C6UTTypeOGSgGMR);
  OUTLINED_FUNCTION_132_3();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_34_11();
  *(v1 + v49) = EntityProperty<>.init(title:)();
  v50 = Entity[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013LocationQueryC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013LocationQueryC0VSgGMR);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v50) = EntityProperty<>.init(title:)();
  v51 = Entity[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch011PersonQueryC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch011PersonQueryC0VSgGMR);
  OUTLINED_FUNCTION_308();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v51) = EntityProperty<>.init(title:)();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

unint64_t lazy protocol witness table accessor for type FilterType and conformance FilterType()
{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferredType and conformance PreferredType()
{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TemporalReference and conformance TemporalReference()
{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OrderByTime and conformance OrderByTime()
{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppEntityStatus and conformance AppEntityStatus()
{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type SourceType and conformance SourceType()
{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainsType and conformance ContainsType()
{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExtractedType and conformance ExtractedType()
{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}