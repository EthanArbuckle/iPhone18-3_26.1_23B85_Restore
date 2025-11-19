uint64_t ModalityXSpeechProfileBuildResponse.error.setter()
{
  v1 = OUTLINED_FUNCTION_187();
  v2 = type metadata accessor for ModalityXSpeechProfileBuildResponse(v1);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + *(v2 + 24), &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  OUTLINED_FUNCTION_1_0();
  outlined init with take of ModalityXSessionMetadata();
  type metadata accessor for ModalityXProcessingError(0);
  OUTLINED_FUNCTION_126();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void ModalityXSpeechProfileBuildResponse.error.modify()
{
  OUTLINED_FUNCTION_312();
  v1 = OUTLINED_FUNCTION_346();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71(v2);
  v3 = OUTLINED_FUNCTION_153();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_122(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 8) = v7;
  v8 = type metadata accessor for ModalityXProcessingError(0);
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_54(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_342(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_267(v13);
  v15 = type metadata accessor for ModalityXSpeechProfileBuildResponse(v14);
  v16 = OUTLINED_FUNCTION_308(v15);
  OUTLINED_FUNCTION_283(v16, v7);
  OUTLINED_FUNCTION_83();
  if (v17)
  {
    UnknownStorage.init()();
    v18 = v10 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    OUTLINED_FUNCTION_250(v8[6]);
    *(v10 + v8[7]) = 3;
    OUTLINED_FUNCTION_250(v8[8]);
    OUTLINED_FUNCTION_83();
    if (!v17)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_287();
    outlined init with take of ModalityXSessionMetadata();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_184(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_142();
    outlined init with copy of ModalityXSessionMetadata();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v5 + v4, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
    OUTLINED_FUNCTION_1_0();
    outlined init with take of ModalityXSessionMetadata();
    OUTLINED_FUNCTION_126();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_60();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  else
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v5 + v4, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
    OUTLINED_FUNCTION_1_0();
    outlined init with take of ModalityXSessionMetadata();
    OUTLINED_FUNCTION_126();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_311();

  free(v14);
}

uint64_t ModalityXSpeechProfileBuildResponse.incompleteProfile.getter()
{
  v0 = type metadata accessor for ModalityXSpeechProfileBuildResponse(0);
  OUTLINED_FUNCTION_274(v0);
  return v1 & 1;
}

uint64_t ModalityXSpeechProfileBuildResponse.incompleteProfile.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXSpeechProfileBuildResponse(v0);
  return OUTLINED_FUNCTION_333(v1);
}

uint64_t (*ModalityXSpeechProfileBuildResponse.incompleteProfile.modify(void *a1))()
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXSpeechProfileBuildResponse(v1);
  OUTLINED_FUNCTION_117(*(v2 + 28));
  return ModalityXSessionMetadata.userInterfaceIdiom.modify;
}

uint64_t ModalityXSpeechProfileBuildResponse.languageProfile.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_128(a1);
  v3 = type metadata accessor for ModalityXSpeechProfileBuildResponse(v2);
  v4 = OUTLINED_FUNCTION_46(*(v3 + 32));
  v7 = 0xC000000000000000;
  if (!(!v9 & v8))
  {
    v7 = v5;
  }

  *v1 = v6;
  v1[1] = v7;
  outlined copy of Data?(v4, v5);
  return OUTLINED_FUNCTION_288();
}

double ModalityXStreamingSpeechProfileAddData.clearExistingPronunciationCache()()
{
  v1 = OUTLINED_FUNCTION_176();
  v3 = v2(v1);
  OUTLINED_FUNCTION_327(*(v3 + 32));
  result = 0.0;
  *v0 = xmmword_25A1D8720;
  return result;
}

uint64_t ModalityXSpeechProfileBuildResponse.pronunciationCache.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_128(a1);
  v3 = type metadata accessor for ModalityXSpeechProfileBuildResponse(v2);
  v4 = OUTLINED_FUNCTION_46(*(v3 + 36));
  v7 = 0xC000000000000000;
  if (!(!v9 & v8))
  {
    v7 = v5;
  }

  *v1 = v6;
  v1[1] = v7;
  outlined copy of Data?(v4, v5);
  return OUTLINED_FUNCTION_288();
}

uint64_t ModalityXSpeechProfile.languageProfile.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2] + *(a1 + 6);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_123();
    outlined copy of Data._Representation(v7, v8);
    outlined consume of Data?(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;
    v9 = OUTLINED_FUNCTION_123();

    return outlined consume of Data._Representation(v9, v10);
  }

  else
  {
    result = outlined consume of Data?(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

double ModalityXSpeechProfileBuildRequest.clearExistingLanguageProfile()()
{
  v1 = OUTLINED_FUNCTION_176();
  v3 = v2(v1);
  OUTLINED_FUNCTION_327(*(v3 + 36));
  result = 0.0;
  *v0 = xmmword_25A1D8720;
  return result;
}

uint64_t ModalityXSessionMetadata.unknownFields.getter()
{
  OUTLINED_FUNCTION_242();
  v0 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_131();

  return v4(v3);
}

uint64_t ModalityXSessionMetadata.unknownFields.setter()
{
  OUTLINED_FUNCTION_187();
  v0 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_123();

  return v4(v3);
}

uint64_t ModalityXServerBoundFrame.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_41();
        closure #1 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v27 = OUTLINED_FUNCTION_41();
        closure #2 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v27, v28, v29, v30);
        break;
      case 3:
        v15 = OUTLINED_FUNCTION_41();
        closure #3 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v15, v16, v17, v18);
        break;
      case 4:
        v19 = OUTLINED_FUNCTION_41();
        closure #4 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v19, v20, v21, v22);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_41();
        closure #5 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 6:
        v31 = OUTLINED_FUNCTION_41();
        closure #6 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v31, v32, v33, v34);
        break;
      case 7:
        v35 = OUTLINED_FUNCTION_41();
        closure #7 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v35, v36, v37, v38);
        break;
      case 8:
        v23 = OUTLINED_FUNCTION_41();
        closure #8 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v23, v24, v25, v26);
        break;
      case 9:
        v39 = OUTLINED_FUNCTION_41();
        closure #9 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v39, v40, v41, v42);
        break;
      case 10:
        v11 = OUTLINED_FUNCTION_41();
        closure #10 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXSessionMetadata(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XSessionMetadataVSgMd, &_s16ModalityXObjects0A16XSessionMetadataVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XSessionMetadataVSgMd, &_s16ModalityXObjects0A16XSessionMetadataVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSessionMetadata and conformance ModalityXSessionMetadata, type metadata accessor for ModalityXSessionMetadata);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XSessionMetadataVSgMd, &_s16ModalityXObjects0A16XSessionMetadataVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A16XSessionMetadataVSgMd, &_s16ModalityXObjects0A16XSessionMetadataVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XSessionMetadataVSgMd, &_s16ModalityXObjects0A16XSessionMetadataVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XSessionMetadataVSgMd, &_s16ModalityXObjects0A16XSessionMetadataVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XSessionMetadataVSgMd, &_s16ModalityXObjects0A16XSessionMetadataVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #2 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXBeginRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A13XBeginRequestVSgMd, &_s16ModalityXObjects0A13XBeginRequestVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A13XBeginRequestVSgMd, &_s16ModalityXObjects0A13XBeginRequestVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginRequest and conformance ModalityXBeginRequest, type metadata accessor for ModalityXBeginRequest);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A13XBeginRequestVSgMd, &_s16ModalityXObjects0A13XBeginRequestVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A13XBeginRequestVSgMd, &_s16ModalityXObjects0A13XBeginRequestVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A13XBeginRequestVSgMd, &_s16ModalityXObjects0A13XBeginRequestVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A13XBeginRequestVSgMd, &_s16ModalityXObjects0A13XBeginRequestVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A13XBeginRequestVSgMd, &_s16ModalityXObjects0A13XBeginRequestVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #3 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXAudioFrame(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A11XAudioFrameVSgMd, &_s16ModalityXObjects0A11XAudioFrameVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A11XAudioFrameVSgMd, &_s16ModalityXObjects0A11XAudioFrameVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXAudioFrame and conformance ModalityXAudioFrame, type metadata accessor for ModalityXAudioFrame);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A11XAudioFrameVSgMd, &_s16ModalityXObjects0A11XAudioFrameVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A11XAudioFrameVSgMd, &_s16ModalityXObjects0A11XAudioFrameVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A11XAudioFrameVSgMd, &_s16ModalityXObjects0A11XAudioFrameVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A11XAudioFrameVSgMd, &_s16ModalityXObjects0A11XAudioFrameVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A11XAudioFrameVSgMd, &_s16ModalityXObjects0A11XAudioFrameVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #4 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXSpeechProfile(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XSpeechProfileVSgMd, &_s16ModalityXObjects0A14XSpeechProfileVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A14XSpeechProfileVSgMd, &_s16ModalityXObjects0A14XSpeechProfileVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfile and conformance ModalityXSpeechProfile, type metadata accessor for ModalityXSpeechProfile);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A14XSpeechProfileVSgMd, &_s16ModalityXObjects0A14XSpeechProfileVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A14XSpeechProfileVSgMd, &_s16ModalityXObjects0A14XSpeechProfileVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A14XSpeechProfileVSgMd, &_s16ModalityXObjects0A14XSpeechProfileVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A14XSpeechProfileVSgMd, &_s16ModalityXObjects0A14XSpeechProfileVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A14XSpeechProfileVSgMd, &_s16ModalityXObjects0A14XSpeechProfileVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #5 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXCancelRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XCancelRequestVSgMd, &_s16ModalityXObjects0A14XCancelRequestVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A14XCancelRequestVSgMd, &_s16ModalityXObjects0A14XCancelRequestVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXCancelRequest and conformance ModalityXCancelRequest, type metadata accessor for ModalityXCancelRequest);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A14XCancelRequestVSgMd, &_s16ModalityXObjects0A14XCancelRequestVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A14XCancelRequestVSgMd, &_s16ModalityXObjects0A14XCancelRequestVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A14XCancelRequestVSgMd, &_s16ModalityXObjects0A14XCancelRequestVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A14XCancelRequestVSgMd, &_s16ModalityXObjects0A14XCancelRequestVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A14XCancelRequestVSgMd, &_s16ModalityXObjects0A14XCancelRequestVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #6 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXBeginDictation(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #7 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXSpeechProfileBuildRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #8 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXStreamingSpeechProfileBegin(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #9 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXStreamingSpeechProfileAddData(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #10 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXStreamingSpeechProfileCommit(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t ModalityXServerBoundFrame.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_182();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_122(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_196();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v5, v6, v7, v8);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  OUTLINED_FUNCTION_290(v9);
  if (!v10)
  {
    OUTLINED_FUNCTION_153();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v35 = OUTLINED_FUNCTION_28();
        closure #2 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v35, v36, v37, v38);
        goto LABEL_12;
      case 2u:
        v23 = OUTLINED_FUNCTION_28();
        closure #3 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v23, v24, v25, v26);
        goto LABEL_12;
      case 3u:
        v27 = OUTLINED_FUNCTION_28();
        closure #4 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v27, v28, v29, v30);
        goto LABEL_12;
      case 4u:
        v15 = OUTLINED_FUNCTION_28();
        closure #5 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v15, v16, v17, v18);
        goto LABEL_12;
      case 5u:
        v39 = OUTLINED_FUNCTION_28();
        closure #6 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v39, v40, v41, v42);
        goto LABEL_12;
      case 6u:
        v43 = OUTLINED_FUNCTION_28();
        closure #7 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v43, v44, v45, v46);
        goto LABEL_12;
      case 7u:
        v31 = OUTLINED_FUNCTION_28();
        closure #8 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v31, v32, v33, v34);
        goto LABEL_12;
      case 8u:
        v49 = OUTLINED_FUNCTION_28();
        closure #9 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v49, v50, v51, v52);
        goto LABEL_16;
      case 9u:
        v19 = OUTLINED_FUNCTION_28();
        closure #10 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v19, v20, v21, v22);
LABEL_16:
        if (v0)
        {
          OUTLINED_FUNCTION_4_0();
          return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        }

        OUTLINED_FUNCTION_4_0();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        break;
      default:
        v11 = OUTLINED_FUNCTION_28();
        closure #1 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v11, v12, v13, v14);
LABEL_12:
        OUTLINED_FUNCTION_4_0();
        result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        if (!v0)
        {
          break;
        }

        return result;
    }
  }

  v48 = type metadata accessor for ModalityXServerBoundFrame(0);
  OUTLINED_FUNCTION_336(v48);
  OUTLINED_FUNCTION_125();
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXSessionMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSessionMetadata and conformance ModalityXSessionMetadata, type metadata accessor for ModalityXSessionMetadata);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXBeginRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginRequest and conformance ModalityXBeginRequest, type metadata accessor for ModalityXBeginRequest);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXAudioFrame(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXAudioFrame and conformance ModalityXAudioFrame, type metadata accessor for ModalityXAudioFrame);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXSpeechProfile(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfile and conformance ModalityXSpeechProfile, type metadata accessor for ModalityXSpeechProfile);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #5 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXCancelRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXCancelRequest and conformance ModalityXCancelRequest, type metadata accessor for ModalityXCancelRequest);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #6 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXBeginDictation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #7 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXSpeechProfileBuildRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #8 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXStreamingSpeechProfileBegin(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #9 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXStreamingSpeechProfileAddData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #10 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXStreamingSpeechProfileCommit(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

void static ModalityXServerBoundFrame.== infix(_:_:)()
{
  OUTLINED_FUNCTION_248();
  v3 = OUTLINED_FUNCTION_87();
  v4 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(v3);
  v5 = OUTLINED_FUNCTION_54(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_316();
  v8 = OUTLINED_FUNCTION_153();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_122(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_110();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSg_AFtMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSg_AFtMR);
  OUTLINED_FUNCTION_122(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_205();
  v19 = *(v18 + 56);
  OUTLINED_FUNCTION_151(v1);
  OUTLINED_FUNCTION_283(v0, v2 + v19);
  OUTLINED_FUNCTION_139(v2, 1, v4);
  if (v24)
  {
    OUTLINED_FUNCTION_139(v2 + v19, 1, v4);
    if (v24)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
LABEL_12:
      v28 = *(type metadata accessor for ModalityXServerBoundFrame(0) + 20);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v29, v30);
      v25 = OUTLINED_FUNCTION_178();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v20 = OUTLINED_FUNCTION_140();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v20, v21, v22, v23);
  OUTLINED_FUNCTION_139(v2 + v19, 1, v4);
  if (v24)
  {
    OUTLINED_FUNCTION_4_0();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_9:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSg_AFtMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSg_AFtMR);
    goto LABEL_10;
  }

  outlined init with take of ModalityXSessionMetadata();
  OUTLINED_FUNCTION_287();
  static ModalityXServerBoundFrame.OneOf_Payload.== infix(_:_:)();
  v27 = v26;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  OUTLINED_FUNCTION_315();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_10:
  v25 = 0;
LABEL_13:
  OUTLINED_FUNCTION_284(v25);
  OUTLINED_FUNCTION_247();
}

Swift::Int ModalityXServerBoundFrame.hashValue.getter()
{
  return ModalityXServerBoundFrame.hashValue.getter();
}

{
  OUTLINED_FUNCTION_307();
  v1 = v0;
  Hasher.init(_seed:)();
  v1(0);
  v2 = OUTLINED_FUNCTION_136();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v2, v3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance ModalityXServerBoundFrame(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ModalityXUserInterfaceIdiom;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXServerBoundFrame(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXServerBoundFrame and conformance ModalityXServerBoundFrame, type metadata accessor for ModalityXServerBoundFrame);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXServerBoundFrame(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXServerBoundFrame and conformance ModalityXServerBoundFrame, type metadata accessor for ModalityXServerBoundFrame);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXServerBoundFrame()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXServerBoundFrame and conformance ModalityXServerBoundFrame, type metadata accessor for ModalityXServerBoundFrame);

  return Message.hash(into:)();
}

uint64_t ModalityXClientBoundFrame.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_41();
        closure #1 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_41();
        closure #2 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_41();
        closure #3 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_41();
        closure #4 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_41();
        closure #5 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_41();
        closure #6 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXRequestComplete(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #2 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXProcessingError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #3 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXASRResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #4 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXSpeechProfileRebuildNeeded(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #5 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXRequestMitigated(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #6 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXSpeechProfileBuildResponse(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t ModalityXClientBoundFrame.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_182();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_122(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_196();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v5, v6, v7, v8);
  v9 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  OUTLINED_FUNCTION_290(v9);
  if (v10)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_153();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = OUTLINED_FUNCTION_28();
      closure #2 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v27, v28, v29, v30);
      break;
    case 2u:
      v19 = OUTLINED_FUNCTION_28();
      closure #3 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v19, v20, v21, v22);
      break;
    case 3u:
      v23 = OUTLINED_FUNCTION_28();
      closure #4 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v23, v24, v25, v26);
      break;
    case 4u:
      v15 = OUTLINED_FUNCTION_28();
      closure #5 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v15, v16, v17, v18);
      break;
    case 5u:
      v31 = OUTLINED_FUNCTION_28();
      closure #6 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v31, v32, v33, v34);
      break;
    default:
      v11 = OUTLINED_FUNCTION_28();
      closure #1 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v11, v12, v13, v14);
      break;
  }

  OUTLINED_FUNCTION_34();
  result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  if (!v0)
  {
LABEL_10:
    v36 = type metadata accessor for ModalityXClientBoundFrame(0);
    OUTLINED_FUNCTION_336(v36);
    OUTLINED_FUNCTION_125();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXRequestComplete(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXProcessingError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXASRResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXSpeechProfileRebuildNeeded(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #5 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXRequestMitigated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #6 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXSpeechProfileBuildResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

void static ModalityXClientBoundFrame.== infix(_:_:)()
{
  OUTLINED_FUNCTION_248();
  v3 = OUTLINED_FUNCTION_87();
  v4 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(v3);
  v5 = OUTLINED_FUNCTION_54(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_316();
  v8 = OUTLINED_FUNCTION_153();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_122(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_110();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSg_AFtMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSg_AFtMR);
  OUTLINED_FUNCTION_122(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_205();
  v19 = *(v18 + 56);
  OUTLINED_FUNCTION_151(v1);
  OUTLINED_FUNCTION_283(v0, v2 + v19);
  OUTLINED_FUNCTION_139(v2, 1, v4);
  if (v24)
  {
    OUTLINED_FUNCTION_139(v2 + v19, 1, v4);
    if (v24)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
LABEL_12:
      v28 = *(type metadata accessor for ModalityXClientBoundFrame(0) + 20);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v29, v30);
      v25 = OUTLINED_FUNCTION_178();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v20 = OUTLINED_FUNCTION_140();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v20, v21, v22, v23);
  OUTLINED_FUNCTION_139(v2 + v19, 1, v4);
  if (v24)
  {
    OUTLINED_FUNCTION_34();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_9:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSg_AFtMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSg_AFtMR);
    goto LABEL_10;
  }

  outlined init with take of ModalityXSessionMetadata();
  OUTLINED_FUNCTION_287();
  static ModalityXClientBoundFrame.OneOf_Payload.== infix(_:_:)();
  v27 = v26;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  OUTLINED_FUNCTION_315();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_10:
  v25 = 0;
LABEL_13:
  OUTLINED_FUNCTION_284(v25);
  OUTLINED_FUNCTION_247();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXClientBoundFrame(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXClientBoundFrame and conformance ModalityXClientBoundFrame, type metadata accessor for ModalityXClientBoundFrame);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXClientBoundFrame(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXClientBoundFrame and conformance ModalityXClientBoundFrame, type metadata accessor for ModalityXClientBoundFrame);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXClientBoundFrame()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXClientBoundFrame and conformance ModalityXClientBoundFrame, type metadata accessor for ModalityXClientBoundFrame);

  return Message.hash(into:)();
}

uint64_t ModalityXSessionMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 12:
        OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      case 10:
        OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      case 11:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      case 1:
        OUTLINED_FUNCTION_31();
        closure #1 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
    }
  }

  return result;
}

uint64_t closure #1 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ModalityXSessionMetadata(0) + 20);
  type metadata accessor for ModalityXDeviceInfo(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXDeviceInfo and conformance ModalityXDeviceInfo, type metadata accessor for ModalityXDeviceInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ModalityXSessionMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXSessionMetadata.traverse<A>(visitor:)(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXSessionMetadata.traverse<A>(visitor:)(v6);
    v7 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXSessionMetadata.traverse<A>(visitor:)(v7);
    OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXSessionMetadata.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXSessionMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXDeviceInfo(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for ModalityXSessionMetadata(0);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + *(v11 + 20), v8, &_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXDeviceInfo and conformance ModalityXDeviceInfo, type metadata accessor for ModalityXDeviceInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
}

uint64_t closure #2 in ModalityXSessionMetadata.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXSessionMetadata(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXSessionMetadata.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXSessionMetadata(0);
  if (*(a1 + *(result + 28)) != 8)
  {
    v3 = *(a1 + *(result + 28));
    lazy protocol witness table accessor for type ModalityXUserInterfaceIdiom and conformance ModalityXUserInterfaceIdiom();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSessionMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSessionMetadata and conformance ModalityXSessionMetadata, type metadata accessor for ModalityXSessionMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSessionMetadata(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSessionMetadata and conformance ModalityXSessionMetadata, type metadata accessor for ModalityXSessionMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSessionMetadata()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSessionMetadata and conformance ModalityXSessionMetadata, type metadata accessor for ModalityXSessionMetadata);

  return Message.hash(into:)();
}

uint64_t ModalityXSpeechProfile.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_31();
      closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_31();
      closure #1 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t ModalityXSpeechProfile.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXSpeechProfile.traverse<A>(visitor:)(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXSpeechProfile.traverse<A>(visitor:)(v3);
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXSpeechProfile.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXSpeechProfile(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXSpeechProfile.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXSpeechProfile(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechProfile(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfile and conformance ModalityXSpeechProfile, type metadata accessor for ModalityXSpeechProfile);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechProfile(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfile and conformance ModalityXSpeechProfile, type metadata accessor for ModalityXSpeechProfile);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechProfile()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfile and conformance ModalityXSpeechProfile, type metadata accessor for ModalityXSpeechProfile);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1)
{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for ModalityXBeginRequest._StorageClass, ModalityXBeginRequest._StorageClass.init(), &static ModalityXBeginRequest._StorageClass.defaultInstance);
}

{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for ModalityXBeginDictation._StorageClass, ModalityXBeginDictation._StorageClass.init(), &static ModalityXBeginDictation._StorageClass.defaultInstance);
}

{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for ModalityXRecognitionCandidate._StorageClass, ModalityXRecognitionCandidate._StorageClass.init(), &static ModalityXRecognitionCandidate._StorageClass.defaultInstance);
}

{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for ModalityXFinalSpeechRecognitionResponse._StorageClass, ModalityXFinalSpeechRecognitionResponse._StorageClass.init(), &static ModalityXFinalSpeechRecognitionResponse._StorageClass.defaultInstance);
}

uint64_t outlined init with take of ModalityXSessionMetadata()
{
  v1 = OUTLINED_FUNCTION_87();
  v3 = v2(v1);
  OUTLINED_FUNCTION_54(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_131();
  v7(v6);
  return v0;
}

uint64_t outlined init with copy of ModalityXSessionMetadata()
{
  v1 = OUTLINED_FUNCTION_87();
  v3 = v2(v1);
  OUTLINED_FUNCTION_54(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_131();
  v7(v6);
  return v0;
}

uint64_t ModalityXBeginRequest._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 19;
  v1 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  v2 = type metadata accessor for ModalityXAudioMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation) = 2;
  v3 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t ModalityXBeginRequest._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 19;
  v7 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  v8 = type metadata accessor for ModalityXAudioMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v31 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults) = 2;
  v32 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation) = 2;
  v33 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation) = 2;
  v9 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
  *v9 = 0;
  v9[1] = 0;
  v34 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled) = 2;
  v35 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v10;
  *(v1 + 24) = v11;
  swift_beginAccess();
  LOBYTE(v10) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v10;
  v12 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v12, v6, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  swift_beginAccess();

  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v6, v1 + v7, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + v13);
  v14 = v31;
  swift_beginAccess();
  *(v1 + v14) = v13;
  v15 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation;
  swift_beginAccess();
  LOBYTE(v15) = *(a1 + v15);
  v16 = v32;
  swift_beginAccess();
  *(v1 + v16) = v15;
  v17 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + v17);
  v18 = v33;
  swift_beginAccess();
  *(v1 + v18) = v17;
  v19 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
  swift_beginAccess();
  v21 = *v19;
  v20 = v19[1];
  swift_beginAccess();
  v22 = v9[1];
  *v9 = v21;
  v9[1] = v20;

  v23 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v34;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  swift_beginAccess();
  v26 = *(a1 + v25);

  v27 = v35;
  swift_beginAccess();
  v28 = *(v1 + v27);
  *(v1 + v27) = v26;

  return v1;
}

uint64_t ModalityXBeginRequest._StorageClass.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems);

  return v0;
}

void closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    v1 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 20:
        closure #3 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        break;
      case 21:
      case 22:
      case 23:
      case 25:
        closure #4 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        break;
      case 24:
        closure #7 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        break;
      case 26:
        closure #9 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        break;
      default:
        if (v1 == 2)
        {
          closure #2 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        }

        else if (v1 == 1)
        {
          closure #1 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        }

        break;
    }
  }
}

uint64_t closure #1 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type ModalityXInputOrigin and conformance ModalityXInputOrigin();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1);
  if (!v4)
  {
    closure #2 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1);
    closure #3 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata, 20);
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    v10 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
    result = swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {

      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 32) != 19)
  {
    lazy protocol witness table accessor for type ModalityXInputOrigin and conformance ModalityXInputOrigin();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static ModalityXBeginRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalityXAudioMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMd, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - v15;
  swift_beginAccess();
  v17 = a1;
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  swift_beginAccess();
  v20 = a2;
  v21 = *(a2 + 24);
  if (v18)
  {
    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = v19 == *(a2 + 16) && v18 == v21;
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v21)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v23 = *(v17 + 32);
  swift_beginAccess();
  v24 = *(a2 + 32);
  if (v23 == 19)
  {
    if (v24 == 19)
    {
      goto LABEL_12;
    }
  }

  else if (v24 != 19 && v23 == v24)
  {
LABEL_12:
    v25 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
    v26 = v17;
    swift_beginAccess();
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v17 + v25, v16, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    v27 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
    swift_beginAccess();
    v28 = *(v7 + 48);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v16, v10, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a2 + v27, &v10[v28], &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
    {

      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v16, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
      if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v4) == 1)
      {
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v10, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
LABEL_27:
        v35 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
        swift_beginAccess();
        v36 = *(v26 + v35);
        v37 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
        swift_beginAccess();
        v38 = *(v20 + v37);
        if (v36 == 2)
        {
          if (v38 != 2)
          {
            goto LABEL_23;
          }
        }

        else if (v38 == 2 || ((v36 ^ v38) & 1) != 0)
        {
          goto LABEL_23;
        }

        v39 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation;
        swift_beginAccess();
        v40 = *(v26 + v39);
        v41 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation;
        swift_beginAccess();
        v42 = *(v20 + v41);
        if (v40 == 2)
        {
          if (v42 != 2)
          {
            goto LABEL_23;
          }
        }

        else if (v42 == 2 || ((v40 ^ v42) & 1) != 0)
        {
          goto LABEL_23;
        }

        v43 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation;
        swift_beginAccess();
        v44 = *(v26 + v43);
        v45 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation;
        swift_beginAccess();
        v46 = *(v20 + v45);
        if (v44 == 2)
        {
          if (v46 != 2)
          {
            goto LABEL_23;
          }
        }

        else if (v46 == 2 || ((v44 ^ v46) & 1) != 0)
        {
          goto LABEL_23;
        }

        v47 = (v26 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
        swift_beginAccess();
        v48 = *v47;
        v49 = v47[1];
        v50 = (v20 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
        swift_beginAccess();
        v51 = v50[1];
        if (v49)
        {
          if (!v51)
          {
            goto LABEL_23;
          }

          v52 = v48 == *v50 && v49 == v51;
          if (!v52 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else if (v51)
        {
          goto LABEL_23;
        }

        v53 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
        swift_beginAccess();
        v54 = *(v26 + v53);
        v55 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
        swift_beginAccess();
        v56 = *(v20 + v55);
        if (v54 == 2)
        {
          if (v56 == 2)
          {
LABEL_56:
            v57 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
            swift_beginAccess();
            v58 = *(v26 + v57);
            v59 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
            swift_beginAccess();
            v30 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v58, *(v20 + v59));
            goto LABEL_24;
          }
        }

        else if (v56 != 2 && ((v54 ^ v56) & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_23:
        v30 = 0;
LABEL_24:

        return v30 & 1;
      }
    }

    else
    {
      v31 = v62;
      outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v10, v62, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
      if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v4) != 1)
      {
        v33 = v61;
        outlined init with take of ModalityXSessionMetadata();

        v26 = v17;

        v34 = static ModalityXAudioMetadata.== infix(_:_:)(v31, v33);
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v16, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v10, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
        if ((v34 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }

      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v16, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v10, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMd, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMR);
    goto LABEL_23;
  }

LABEL_19:
  v30 = 0;
  return v30 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXBeginRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginRequest and conformance ModalityXBeginRequest, type metadata accessor for ModalityXBeginRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXBeginRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginRequest and conformance ModalityXBeginRequest, type metadata accessor for ModalityXBeginRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXBeginRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginRequest and conformance ModalityXBeginRequest, type metadata accessor for ModalityXBeginRequest);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_146(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

{
  v6 = a2(0);
  OUTLINED_FUNCTION_146(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t ModalityXBeginDictation._StorageClass.init()()
{
  v1 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  v2 = type metadata accessor for ModalityXAudioMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType) = 16;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey) = 12;
  v8 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  *v10 = 0;
  v10[1] = 0;
  v11 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages) = v11;
  v12 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken) = xmmword_25A1D8720;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio) = 2;
  v13 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin) = 19;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled) = 2;
  return v0;
}

uint64_t ModalityXBeginDictation._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v102 - v5;
  v7 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  v8 = type metadata accessor for ModalityXAudioMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  v102 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  v103 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  *v13 = 0;
  v13[1] = 0;
  v104 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType) = 16;
  v14 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey) = 12;
  v15 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  v105 = v14;
  v106 = v15;
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  v107 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  v108 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  *v17 = 0;
  v17[1] = 0;
  v109 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  v18 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems) = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages) = v18;
  v20 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  v110 = v19;
  v111 = v20;
  *v20 = 0;
  v20[1] = 0;
  v112 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken) = xmmword_25A1D8720;
  v113 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech) = 2;
  v114 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition) = 2;
  v115 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio) = 2;
  v21 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  v116 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  *v21 = 0;
  v21[1] = 0;
  v117 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults) = 2;
  v22 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin) = 19;
  v118 = v22;
  v119 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled) = 2;
  v23 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v23, v6, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  swift_beginAccess();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v6, v1 + v7, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  v27 = v9[1];
  *v9 = v26;
  v9[1] = v25;

  v28 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  v31 = v10[1];
  *v10 = v30;
  v10[1] = v29;

  v32 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  swift_beginAccess();
  v34 = *v32;
  v33 = v32[1];
  swift_beginAccess();
  v35 = v11[1];
  *v11 = v34;
  v11[1] = v33;

  v36 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  swift_beginAccess();
  v38 = *v36;
  v37 = v36[1];
  v39 = v102;
  swift_beginAccess();
  v40 = v39[1];
  *v39 = v38;
  v39[1] = v37;

  v41 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v103;
  swift_beginAccess();
  v45 = v44[1];
  *v44 = v43;
  v44[1] = v42;

  v46 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v104;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v105;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  v53 = v106;
  swift_beginAccess();
  v54 = v53[1];
  *v53 = v52;
  v53[1] = v51;

  v55 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];
  v58 = v107;
  swift_beginAccess();
  v59 = v58[1];
  *v58 = v57;
  v58[1] = v56;

  v60 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  swift_beginAccess();
  v62 = *v60;
  v61 = v60[1];
  v63 = v108;
  swift_beginAccess();
  v64 = v63[1];
  *v63 = v62;
  v63[1] = v61;

  v65 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  swift_beginAccess();
  v66 = *(a1 + v65);
  v67 = v109;
  swift_beginAccess();
  v68 = *(v1 + v67);
  *(v1 + v67) = v66;

  v69 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = v110;
  swift_beginAccess();
  v72 = *(v1 + v71);
  *(v1 + v71) = v70;

  v73 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  v76 = v111;
  swift_beginAccess();
  v77 = v76[1];
  *v76 = v75;
  v76[1] = v74;

  v78 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = v112;
  swift_beginAccess();
  v82 = *v81;
  v83 = v81[1];
  *v81 = v80;
  v81[1] = v79;
  outlined copy of Data?(v80, v79);
  outlined consume of Data?(v82, v83);
  v84 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech;
  swift_beginAccess();
  LOBYTE(v84) = *(a1 + v84);
  v85 = v113;
  swift_beginAccess();
  *(v1 + v85) = v84;
  v86 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition;
  swift_beginAccess();
  LOBYTE(v86) = *(a1 + v86);
  v87 = v114;
  swift_beginAccess();
  *(v1 + v87) = v86;
  v88 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio;
  swift_beginAccess();
  LOBYTE(v88) = *(a1 + v88);
  v89 = v115;
  swift_beginAccess();
  *(v1 + v89) = v88;
  v90 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  swift_beginAccess();
  v92 = *v90;
  v91 = v90[1];
  v93 = v116;
  swift_beginAccess();
  v94 = v93[1];
  *v93 = v92;
  v93[1] = v91;

  v95 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  swift_beginAccess();
  LOBYTE(v95) = *(a1 + v95);
  v96 = v117;
  swift_beginAccess();
  *(v1 + v96) = v95;
  v97 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  swift_beginAccess();
  LOBYTE(v97) = *(a1 + v97);
  v98 = v118;
  swift_beginAccess();
  *(v1 + v98) = v97;
  v99 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  swift_beginAccess();
  LOBYTE(v99) = *(a1 + v99);

  v100 = v119;
  swift_beginAccess();
  *(v1 + v100) = v99;
  return v1;
}

uint64_t ModalityXBeginDictation._StorageClass.deinit()
{
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems);

  v10 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages);

  v11 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region + 8);

  outlined consume of Data?(*(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken), *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken + 8));
  v12 = *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier + 8);

  return v0;
}

uint64_t ModalityXBeginRequest._StorageClass.__deallocating_deinit(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t ModalityXBeginRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v10 = v7;
  v11 = OUTLINED_FUNCTION_306();
  v13 = *(v12(v11) + 20);
  v14 = *(v7 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a5(0);
    OUTLINED_FUNCTION_146(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_74();
    *(v10 + v13) = a6(v18);
  }

  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_292();
  return a7();
}

void closure #1 in ModalityXBeginDictation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    v1 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        closure #3 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 9:
      case 10:
      case 11:
      case 14:
      case 15:
      case 19:
        closure #7 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        break;
      case 7:
      case 8:
      case 21:
        closure #7 in closure #1 in ModalityXBeginDictation.decodeMessage<A>(decoder:)();
        break;
      case 12:
      case 13:
        closure #9 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        break;
      case 16:
      case 17:
      case 18:
      case 20:
      case 22:
        closure #4 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

void closure #3 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_281();
  type metadata accessor for ModalityXAudioMetadata(0);
  OUTLINED_FUNCTION_206();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v2, v3);
  OUTLINED_FUNCTION_106();
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_357();
}

uint64_t closure #9 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_114();
  dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
  return OUTLINED_FUNCTION_326();
}

void closure #7 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_99();
  v2 = *v1;
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_161();
  v0();
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_357();
}

uint64_t closure #7 in closure #1 in ModalityXBeginDictation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_127();
  v2 = *v1;
  v3 = OUTLINED_FUNCTION_281();
  v0(v3);
  OUTLINED_FUNCTION_177();
  return OUTLINED_FUNCTION_326();
}

uint64_t closure #4 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_114();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return OUTLINED_FUNCTION_326();
}

uint64_t ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_93();
  v9 = *(v5 + *(v8(0) + 20));
  OUTLINED_FUNCTION_135();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

void closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  closure #3 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata, 1);
  if (!v4)
  {
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #7 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(a1);
    closure #8 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(a1);
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    v6 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
    swift_beginAccess();
    if (*(*(a1 + v6) + 16))
    {

      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    v7 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
    swift_beginAccess();
    if (*(*(a1 + v7) + 16))
    {

      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #13 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(a1);
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
    closure #19 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(a1);
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)();
  }
}

uint64_t closure #3 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v22[1] = a6;
  v22[2] = a3;
  v22[7] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  OUTLINED_FUNCTION_122(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v14 = type metadata accessor for ModalityXAudioMetadata(0);
  v15 = OUTLINED_FUNCTION_54(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_64();
  v18 = *a5;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v18, v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  OUTLINED_FUNCTION_206();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v20, v21);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  OUTLINED_FUNCTION_204();
  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
}

uint64_t closure #7 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  result = swift_beginAccess();
  if (*(a1 + v2) != 16)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type ModalityXFieldKeyboardType and conformance ModalityXFieldKeyboardType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  result = swift_beginAccess();
  if (*(a1 + v2) != 12)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type ModalityXFieldKeyboardReturnKey and conformance ModalityXFieldKeyboardReturnKey();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  result = swift_beginAccess();
  v3 = v1[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v1;
    outlined copy of Data._Representation(v4, v3);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v4, v3);
  }

  return result;
}

void closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_81();
  v2 = (v1 + *v0);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];

    OUTLINED_FUNCTION_106();
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  OUTLINED_FUNCTION_357();
}

uint64_t closure #19 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  result = swift_beginAccess();
  if (*(a1 + v2) != 19)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type ModalityXInputOrigin and conformance ModalityXInputOrigin();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

void closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = *v2;
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  if (*(v1 + v3) != 2)
  {
    OUTLINED_FUNCTION_124();
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  OUTLINED_FUNCTION_357();
}

uint64_t closure #1 in static ModalityXBeginDictation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v134 = type metadata accessor for ModalityXAudioMetadata(0);
  v4 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v132 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMd, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMR);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v132 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v133 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v132 - v15;
  v17 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v17, v16, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v18 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  swift_beginAccess();
  v19 = *(v7 + 56);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v16, v10, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v20 = v134;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a2 + v18, &v10[v19], &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  if (__swift_getEnumTagSinglePayload(v10, 1, v20) == 1)
  {

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v16, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    v21 = a2;
    if (__swift_getEnumTagSinglePayload(&v10[v19], 1, v20) == 1)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v10, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v10, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMd, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMR);
    goto LABEL_54;
  }

  v21 = a2;
  v22 = v133;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v10, v133, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  if (__swift_getEnumTagSinglePayload(&v10[v19], 1, v20) == 1)
  {

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v16, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    goto LABEL_6;
  }

  v23 = v132;
  outlined init with take of ModalityXSessionMetadata();

  v24 = static ModalityXAudioMetadata.== infix(_:_:)(v22, v23);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v16, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v10, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  if ((v24 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_9:
  v25 = a1;
  v26 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  v29 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  swift_beginAccess();
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_54;
    }

    v31 = v27 == *v29 && v28 == v30;
    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v30)
  {
    goto LABEL_54;
  }

  v32 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  swift_beginAccess();
  v33 = *v32;
  v34 = v32[1];
  v35 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  swift_beginAccess();
  v36 = v35[1];
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_54;
    }

    v37 = v33 == *v35 && v34 == v36;
    if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v36)
  {
    goto LABEL_54;
  }

  v38 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  swift_beginAccess();
  v39 = *v38;
  v40 = v38[1];
  v41 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  swift_beginAccess();
  v42 = v41[1];
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_54;
    }

    v43 = v39 == *v41 && v40 == v42;
    if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v42)
  {
    goto LABEL_54;
  }

  v44 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v47 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  swift_beginAccess();
  v48 = v47[1];
  if (v46)
  {
    if (!v48)
    {
      goto LABEL_54;
    }

    v49 = v45 == *v47 && v46 == v48;
    if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v48)
  {
    goto LABEL_54;
  }

  v50 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  swift_beginAccess();
  v51 = *v50;
  v52 = v50[1];
  v53 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  swift_beginAccess();
  v54 = v53[1];
  if (v52)
  {
    if (!v54)
    {
      goto LABEL_54;
    }

    v55 = v51 == *v53 && v52 == v54;
    if (!v55 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v54)
  {
    goto LABEL_54;
  }

  v57 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  swift_beginAccess();
  v58 = *(a1 + v57);
  v59 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  swift_beginAccess();
  v60 = *(v21 + v59);
  if (v58 == 16)
  {
    if (v60 != 16)
    {
      goto LABEL_54;
    }
  }

  else if (v60 == 16 || v58 != v60)
  {
    goto LABEL_54;
  }

  v61 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  swift_beginAccess();
  v62 = *(a1 + v61);
  v63 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  swift_beginAccess();
  v64 = *(v21 + v63);
  if (v62 == 12)
  {
    if (v64 != 12)
    {
      goto LABEL_54;
    }
  }

  else if (v64 == 12 || v62 != v64)
  {
    goto LABEL_54;
  }

  v65 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  swift_beginAccess();
  v66 = *v65;
  v67 = v65[1];
  v68 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  swift_beginAccess();
  v69 = v68[1];
  if (v67)
  {
    if (!v69)
    {
      goto LABEL_54;
    }

    v70 = v66 == *v68 && v67 == v69;
    if (!v70 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v69)
  {
    goto LABEL_54;
  }

  v71 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  swift_beginAccess();
  v72 = *v71;
  v73 = v71[1];
  v74 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  swift_beginAccess();
  v75 = v74[1];
  if (v73)
  {
    if (!v75)
    {
      goto LABEL_54;
    }

    v76 = v72 == *v74 && v73 == v75;
    if (!v76 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v75)
  {
    goto LABEL_54;
  }

  v77 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  swift_beginAccess();
  v78 = *v77;
  v79 = v77[1];
  v80 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  swift_beginAccess();
  v81 = v80[1];
  if (!v79)
  {
    if (!v81)
    {
      goto LABEL_93;
    }

LABEL_54:

    return 0;
  }

  if (!v81)
  {
    goto LABEL_54;
  }

  v82 = v78 == *v80 && v79 == v81;
  if (!v82 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_93:
  v83 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  swift_beginAccess();
  v84 = *(a1 + v83);
  v85 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  swift_beginAccess();
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v84, *(v21 + v85)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v86 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
  swift_beginAccess();
  v87 = *(a1 + v86);
  v88 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
  swift_beginAccess();
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v87, *(v21 + v88)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v89 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  swift_beginAccess();
  v90 = *v89;
  v91 = v89[1];
  v92 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  swift_beginAccess();
  v93 = v92[1];
  if (v91)
  {
    if (!v93)
    {
      goto LABEL_54;
    }

    v94 = v90 == *v92 && v91 == v93;
    if (!v94 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v93)
  {
    goto LABEL_54;
  }

  v95 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  swift_beginAccess();
  v97 = *v95;
  v96 = v95[1];
  v98 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  swift_beginAccess();
  v99 = *v98;
  v100 = v98[1];
  outlined copy of Data?(v97, v96);
  outlined copy of Data?(v99, v100);
  if (v96 >> 60 == 15)
  {
    if (v100 >> 60 == 15)
    {
      outlined consume of Data?(v97, v96);
      goto LABEL_114;
    }

LABEL_112:
    outlined consume of Data?(v97, v96);
    outlined consume of Data?(v99, v100);
    return 0;
  }

  outlined copy of Data?(v97, v96);
  outlined copy of Data?(v99, v100);
  if (v100 >> 60 == 15)
  {

    outlined consume of Data?(v99, v100);
    outlined consume of Data?(v97, v96);
    goto LABEL_112;
  }

  v101 = MEMORY[0x25F84E030](v97, v96, v99, v100);
  outlined consume of Data?(v99, v100);
  outlined consume of Data?(v97, v96);
  outlined consume of Data?(v99, v100);
  outlined consume of Data?(v97, v96);
  if ((v101 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_114:
  v102 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech;
  swift_beginAccess();
  v103 = *(v25 + v102);
  v104 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech;
  swift_beginAccess();
  v105 = *(v21 + v104);
  if (v103 == 2)
  {
    if (v105 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v105 == 2 || ((v103 ^ v105) & 1) != 0)
  {
    goto LABEL_54;
  }

  v106 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition;
  swift_beginAccess();
  v107 = *(v25 + v106);
  v108 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition;
  swift_beginAccess();
  v109 = *(v21 + v108);
  if (v107 == 2)
  {
    if (v109 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v109 == 2 || ((v107 ^ v109) & 1) != 0)
  {
    goto LABEL_54;
  }

  v110 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio;
  swift_beginAccess();
  v111 = *(v25 + v110);
  v112 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio;
  swift_beginAccess();
  v113 = *(v21 + v112);
  if (v111 == 2)
  {
    if (v113 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v113 == 2 || ((v111 ^ v113) & 1) != 0)
  {
    goto LABEL_54;
  }

  v114 = (v25 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  swift_beginAccess();
  v115 = *v114;
  v116 = v114[1];
  v117 = (v21 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  swift_beginAccess();
  v118 = v117[1];
  if (v116)
  {
    if (!v118)
    {
      goto LABEL_54;
    }

    v119 = v115 == *v117 && v116 == v118;
    if (!v119 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v118)
  {
    goto LABEL_54;
  }

  v120 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  swift_beginAccess();
  v121 = *(v25 + v120);
  v122 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  swift_beginAccess();
  v123 = *(v21 + v122);
  if (v121 == 2)
  {
    if (v123 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v123 == 2 || ((v121 ^ v123) & 1) != 0)
  {
    goto LABEL_54;
  }

  v124 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  swift_beginAccess();
  v125 = *(v25 + v124);
  v126 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  swift_beginAccess();
  v127 = *(v21 + v126);
  if (v125 == 19)
  {
    if (v127 != 19)
    {
      goto LABEL_54;
    }
  }

  else if (v127 == 19 || v125 != v127)
  {
    goto LABEL_54;
  }

  v128 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  swift_beginAccess();
  v129 = *(v25 + v128);

  v130 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  swift_beginAccess();
  v131 = *(v21 + v130);

  if (v129 == 2)
  {
    if (v131 != 2)
    {
      return 0;
    }
  }

  else if (v131 == 2 || ((v129 ^ v131) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXBeginDictation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXBeginDictation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXBeginDictation()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation);

  return Message.hash(into:)();
}

uint64_t ModalityXCancelRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_202();
  return ModalityXCancelRequest.decodeMessage<A>(decoder:)();
}

{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_289();
      closure #2 in ModalityXCancelRequest.decodeMessage<A>(decoder:)();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_289();
      closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #2 in ModalityXCancelRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXCancelRequest(0);
  if (*(a1 + *(result + 24)) != 3)
  {
    v3 = *(a1 + *(result + 24));
    lazy protocol witness table accessor for type ModalityXCancellationReason and conformance ModalityXCancellationReason();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXCancelRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXCancelRequest and conformance ModalityXCancelRequest, type metadata accessor for ModalityXCancelRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXCancelRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXCancelRequest and conformance ModalityXCancelRequest, type metadata accessor for ModalityXCancelRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXCancelRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXCancelRequest and conformance ModalityXCancelRequest, type metadata accessor for ModalityXCancelRequest);

  return Message.hash(into:)();
}

uint64_t ModalityXAudioFrame.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_200();
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXAudioFrame.decodeMessage<A>(decoder:)();
        break;
      case 2:
        OUTLINED_FUNCTION_135();
        dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        break;
      case 1:
        OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_99();
  v2 = *(v1(0) + 24);
  OUTLINED_FUNCTION_161();
  return v0();
}

uint64_t ModalityXAudioFrame.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_124();
  result = closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)();
  if (!v1)
  {
    if (*(*v0 + 16))
    {
      OUTLINED_FUNCTION_124();
      dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)();
    }

    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_124();
    closure #2 in ModalityXAudioFrame.traverse<A>(visitor:)();
    v3 = v0 + *(type metadata accessor for ModalityXAudioFrame(0) + 20);
    OUTLINED_FUNCTION_135();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXAudioFrame(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXAudioFrame and conformance ModalityXAudioFrame, type metadata accessor for ModalityXAudioFrame);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXAudioFrame(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXAudioFrame and conformance ModalityXAudioFrame, type metadata accessor for ModalityXAudioFrame);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXAudioFrame()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXAudioFrame and conformance ModalityXAudioFrame, type metadata accessor for ModalityXAudioFrame);

  return Message.hash(into:)();
}

uint64_t ModalityXASRResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_41();
        closure #3 in ModalityXASRResult.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_41();
        closure #2 in ModalityXASRResult.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in ModalityXASRResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXRecognitionCandidate(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRecognitionCandidate and conformance ModalityXRecognitionCandidate, type metadata accessor for ModalityXRecognitionCandidate);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t closure #3 in ModalityXASRResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata();
    outlined init with take of ModalityXSessionMetadata();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
      outlined init with take of ModalityXSessionMetadata();
      outlined init with take of ModalityXSessionMetadata();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXFinalSpeechRecognitionResponse and conformance ModalityXFinalSpeechRecognitionResponse, type metadata accessor for ModalityXFinalSpeechRecognitionResponse);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v20, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
    v24 = v20;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  v27 = v29;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v29, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t ModalityXASRResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_122(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_7_0();
  result = closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_289();
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v6, v7, v8, v9);
    v10 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
    OUTLINED_FUNCTION_290(v10);
    if (!v11)
    {
      OUTLINED_FUNCTION_153();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = OUTLINED_FUNCTION_30();
        closure #3 in ModalityXASRResult.traverse<A>(visitor:)(v12, v13, v14, v15);
      }

      else
      {
        v16 = OUTLINED_FUNCTION_30();
        closure #2 in ModalityXASRResult.traverse<A>(visitor:)(v16, v17, v18, v19);
      }

      OUTLINED_FUNCTION_59();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    v20 = type metadata accessor for ModalityXASRResult(0);
    OUTLINED_FUNCTION_336(v20);
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_81();
  v1 = OUTLINED_FUNCTION_306();
  result = v2(v1);
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    v5 = *v4;
    OUTLINED_FUNCTION_106();
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXASRResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXRecognitionCandidate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRecognitionCandidate and conformance ModalityXRecognitionCandidate, type metadata accessor for ModalityXRecognitionCandidate);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ModalityXASRResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v8, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  v11 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of ModalityXSessionMetadata();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXFinalSpeechRecognitionResponse and conformance ModalityXFinalSpeechRecognitionResponse, type metadata accessor for ModalityXFinalSpeechRecognitionResponse);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXASRResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXASRResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXASRResult()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXSpeechProfileRebuildNeeded._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXRequestComplete._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXStreamingSpeechProfileCommit._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXEntityWords._protobuf_nameMap, "words", 5, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXEntities._protobuf_nameMap, "entities", 8, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXSpeechProfileSourceData._protobuf_nameMap, "entities_by_category", 20, MEMORY[0x277D21888]);
}

uint64_t ModalityXSpeechProfileRebuildNeeded.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_241();
  return ModalityXSpeechProfileRebuildNeeded.decodeMessage<A>(decoder:)();
}

{
  while (1)
  {
    OUTLINED_FUNCTION_125();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_292();
      closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0(0) + 20);
  OUTLINED_FUNCTION_114();
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

uint64_t ModalityXSpeechProfileRebuildNeeded.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_241();
  return ModalityXSpeechProfileRebuildNeeded.traverse<A>(visitor:)();
}

{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_45();
  result = v1(0);
  v3 = (v0 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    OUTLINED_FUNCTION_106();
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechProfileRebuildNeeded(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechProfileRebuildNeeded(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechProfileRebuildNeeded()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded);

  return Message.hash(into:)();
}

uint64_t ModalityXProcessingError.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_31();
        closure #1 in ModalityXProcessingError.decodeMessage<A>(decoder:)();
        break;
      case 2:
        OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)();
        break;
      case 3:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      case 4:
        OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #3 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_127();
  v1 = OUTLINED_FUNCTION_329();
  v3 = *(v2(v1) + 28);
  v0();
  return OUTLINED_FUNCTION_177();
}

uint64_t closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_99();
  v2 = *(v1(0) + 32);
  OUTLINED_FUNCTION_161();
  return v0();
}

uint64_t ModalityXProcessingError.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXProcessingError.traverse<A>(visitor:)(v1);
  if (!v0)
  {
    OUTLINED_FUNCTION_7_0();
    closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)();
    v3 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXProcessingError.traverse<A>(visitor:)(v3);
    OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXSessionMetadata.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXProcessingError.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXProcessingError(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXProcessingError.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXProcessingError(0);
  if (*(a1 + *(result + 28)) != 3)
  {
    v3 = *(a1 + *(result + 28));
    lazy protocol witness table accessor for type ModalityXErrorSource and conformance ModalityXErrorSource();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ModalityXSessionMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_81();
  v1 = OUTLINED_FUNCTION_306();
  result = v2(v1);
  v4 = (v0 + *(result + 32));
  if (v4[1])
  {
    v5 = *v4;
    OUTLINED_FUNCTION_106();
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXProcessingError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXProcessingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXProcessingError()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError);

  return Message.hash(into:)();
}

uint64_t closure #2 in ModalityXCancelRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_127();
  v1 = OUTLINED_FUNCTION_329();
  v3 = *(v2(v1) + 24);
  v0();
  return OUTLINED_FUNCTION_177();
}

uint64_t ModalityXCancelRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)();
  if (!v5)
  {
    v8 = OUTLINED_FUNCTION_30();
    a5(v8);
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXRequestMitigated.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXRequestMitigated(0);
  if (*(a1 + *(result + 24)) != 8)
  {
    v3 = *(a1 + *(result + 24));
    lazy protocol witness table accessor for type ModalityXMitigationType and conformance ModalityXMitigationType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRequestMitigated(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRequestMitigated(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRequestMitigated()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRequestComplete(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRequestComplete(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRequestComplete()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete);

  return Message.hash(into:)();
}

uint64_t ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_31();
        closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)();
        break;
      case 2:
        OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)();
        break;
      case 3:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)();
        break;
      case 4:
        OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      case 5:
        OUTLINED_FUNCTION_31();
        closure #5 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)();
        break;
      case 6:
        OUTLINED_FUNCTION_31();
        closure #6 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

void ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_7_0();
  closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)();
  if (!v0)
  {
    v1 = OUTLINED_FUNCTION_7_0();
    closure #2 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v1, v2, v3, v4, v5);
    OUTLINED_FUNCTION_7_0();
    closure #3 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXSessionMetadata.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_7_0();
    closure #5 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)();
    v6 = OUTLINED_FUNCTION_30();
    closure #6 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v6);
    OUTLINED_FUNCTION_98();
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #6 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXSpeechProfileBuildRequest(0);
  v3 = a1 + *(result + 40);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechProfileBuildRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechProfileBuildRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechProfileBuildRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest);

  return Message.hash(into:)();
}

uint64_t ModalityXStreamingSpeechProfileBegin.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)();
        break;
      case 2:
        OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)();
        break;
      case 1:
        OUTLINED_FUNCTION_31();
        closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)();
        break;
    }
  }

  return result;
}

uint64_t closure #3 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_99();
  v2 = *(v1(0) + 28);
  OUTLINED_FUNCTION_161();
  return v0();
}

uint64_t ModalityXStreamingSpeechProfileBegin.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_7_0();
  result = closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_7_0();
    closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_7_0();
    closure #3 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_45();
  result = v1(0);
  v3 = (v0 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    OUTLINED_FUNCTION_106();
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXStreamingSpeechProfileBegin(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXStreamingSpeechProfileBegin(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXStreamingSpeechProfileBegin()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin);

  return Message.hash(into:)();
}

uint64_t ModalityXStreamingSpeechProfileAddData.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_31();
        closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)();
        break;
      case 2:
        OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)();
        break;
      case 3:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)();
        break;
      case 4:
        OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #2 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0(0) + 24);
  type metadata accessor for ModalityXSpeechProfileSourceData(0);
  OUTLINED_FUNCTION_225();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v2, v3);
  OUTLINED_FUNCTION_106();
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

void ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_7_0();
  closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)();
  if (!v0)
  {
    v1 = OUTLINED_FUNCTION_7_0();
    closure #2 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v1, v2, v3, v4, v5);
    v6 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)(v6);
    OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_98();
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #2 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v23[3] = a4;
  v23[1] = a3;
  v7 = OUTLINED_FUNCTION_140();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_122(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  v15 = type metadata accessor for ModalityXSpeechProfileSourceData(0);
  v16 = OUTLINED_FUNCTION_54(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_64();
  v19 = a5(0);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + *(v19 + 24), v14, &_s16ModalityXObjects0A24XSpeechProfileSourceDataVSgMd, &_s16ModalityXObjects0A24XSpeechProfileSourceDataVSgMR);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v14, &_s16ModalityXObjects0A24XSpeechProfileSourceDataVSgMd, &_s16ModalityXObjects0A24XSpeechProfileSourceDataVSgMR);
  }

  OUTLINED_FUNCTION_273();
  outlined init with take of ModalityXSessionMetadata();
  OUTLINED_FUNCTION_225();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v21, v22);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  OUTLINED_FUNCTION_61();
  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
}

uint64_t closure #3 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for ModalityXStreamingSpeechProfileAddData(0);
  v3 = a1 + *(result + 28);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXStreamingSpeechProfileAddData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXStreamingSpeechProfileAddData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXStreamingSpeechProfileAddData()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_123();
  __swift_project_value_buffer(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25A1D8780;
  v10 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v10 = "request_id";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v12 = type metadata accessor for _NameMap.NameDescription();
  OUTLINED_FUNCTION_54(v12);
  (*(v13 + 104))(v10, v11);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXStreamingSpeechProfileCommit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXStreamingSpeechProfileCommit(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXStreamingSpeechProfileCommit()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit);

  return Message.hash(into:)();
}

uint64_t ModalityXSpeechProfileBuildResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_31();
        closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)();
        break;
      case 2:
        OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfileBuildResponse.decodeMessage<A>(decoder:)();
        break;
      case 3:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXAudioFrame.decodeMessage<A>(decoder:)();
        break;
      case 10:
        OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      case 11:
        OUTLINED_FUNCTION_31();
        closure #5 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #2 in ModalityXSpeechProfileBuildResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for ModalityXSpeechProfileBuildResponse(0) + 24);
  type metadata accessor for ModalityXProcessingError(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in ModalityXAudioFrame.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0(0) + 28);
  OUTLINED_FUNCTION_114();
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

uint64_t closure #5 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0(0) + 36);
  OUTLINED_FUNCTION_114();
  return dispatch thunk of Decoder.decodeSingularBytesField(value:)();
}

void ModalityXSpeechProfileBuildResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_7_0();
  closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)();
  if (!v0)
  {
    v1 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXSpeechProfileBuildResponse.traverse<A>(visitor:)(v1, v2, v3, v4);
    OUTLINED_FUNCTION_7_0();
    closure #2 in ModalityXAudioFrame.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_7_0();
    closure #5 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_98();
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #2 in ModalityXSpeechProfileBuildResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ModalityXProcessingError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for ModalityXSpeechProfileBuildResponse(0);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + *(v11 + 24), v8, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
}

uint64_t closure #2 in ModalityXAudioFrame.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_45();
  result = v1(0);
  if (*(v0 + *(result + 28)) != 2)
  {
    OUTLINED_FUNCTION_124();
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

void closure #4 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_81();
  v1 = v0(0);
  OUTLINED_FUNCTION_354(*(v1 + 32));
  if (!(!v4 & v3))
  {
    v5 = *v2;
    v6 = OUTLINED_FUNCTION_273();
    outlined copy of Data._Representation(v6, v7);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_106();
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    v8 = OUTLINED_FUNCTION_273();
    outlined consume of Data?(v8, v9);
  }
}

void closure #5 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_81();
  v1 = v0(0);
  OUTLINED_FUNCTION_354(*(v1 + 36));
  if (!(!v4 & v3))
  {
    v5 = *v2;
    v6 = OUTLINED_FUNCTION_273();
    outlined copy of Data._Representation(v6, v7);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_106();
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    v8 = OUTLINED_FUNCTION_273();
    outlined consume of Data?(v8, v9);
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechProfileBuildResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechProfileBuildResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechProfileBuildResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModalityXServerBoundFrame()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B24XRecognitionPhraseTokensV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_329();
  v5 = type metadata accessor for ModalityXRecognitionToken(v4);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_159();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for ModalityXRecognitionPhraseTokens(0);
  v9 = OUTLINED_FUNCTION_57(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_97();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_309();
  v17 = *(v1 + 16);
  if (v17 == *(v3 + 16) && v17 && v1 != v3)
  {
    v18 = 0;
    OUTLINED_FUNCTION_94(v16);
    v31 = v14;
    v32 = *(v19 + 72);
    v30 = v0;
    v29 = v17;
    while (1)
    {
      OUTLINED_FUNCTION_216();
      outlined init with copy of ModalityXSessionMetadata();
      if (v18 == v17)
      {
        break;
      }

      v33 = v18;
      OUTLINED_FUNCTION_216();
      outlined init with copy of ModalityXSessionMetadata();
      v20 = *v0;
      v21 = *v14;
      v22 = *(*v0 + 16);
      if (v22 != *(v21 + 16))
      {
LABEL_18:
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        goto LABEL_19;
      }

      if (v22 && v20 != v21)
      {
        v23 = 0;
        OUTLINED_FUNCTION_256();
        while (v23 < *(v20 + 16))
        {
          v24 = *(v34 + 72) * v23;
          OUTLINED_FUNCTION_214();
          outlined init with copy of ModalityXSessionMetadata();
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_214();
          outlined init with copy of ModalityXSessionMetadata();
          OUTLINED_FUNCTION_136();
          v25 = static ModalityXRecognitionToken.== infix(_:_:)();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          if ((v25 & 1) == 0)
          {
            goto LABEL_18;
          }

          if (v22 == ++v23)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        break;
      }

LABEL_14:
      v26 = *(v8 + 20);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v27);
      v0 = v30;
      v14 = v31;
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v28)
      {
        v18 = v33 + 1;
        v17 = v29;
        if (v33 + 1 != v29)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B17XRecognitionTokenV_Tt1g5()
{
  OUTLINED_FUNCTION_312();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ModalityXRecognitionToken(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_97();
  MEMORY[0x28223BE20](v6);
  v8 = *(v3 + 16);
  if (v8 == *(v1 + 16) && v8 && v3 != v1)
  {
    OUTLINED_FUNCTION_94(v7);
    v10 = v3 + v9;
    v11 = v1 + v9;
    v13 = *(v12 + 72);
    do
    {
      outlined init with copy of ModalityXSessionMetadata();
      OUTLINED_FUNCTION_155();
      outlined init with copy of ModalityXSessionMetadata();
      OUTLINED_FUNCTION_123();
      v14 = static ModalityXRecognitionToken.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if ((v14 & 1) == 0)
      {
        break;
      }

      v11 += v13;
      v10 += v13;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_311();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B36XRecognitionPhraseTokensAlternativesV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v5 = OUTLINED_FUNCTION_156();
  v6 = type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives(v5);
  v7 = OUTLINED_FUNCTION_57(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_100();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_94(v11);
    OUTLINED_FUNCTION_255(v13);
    while (1)
    {
      OUTLINED_FUNCTION_130();
      outlined init with copy of ModalityXSessionMetadata();
      OUTLINED_FUNCTION_298();
      outlined init with copy of ModalityXSessionMetadata();
      v14 = *v2;
      v15 = *v1;
      _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B24XRecognitionPhraseTokensV_Tt1g5();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = *(v6 + 24);
      v18 = *(v2 + v17);
      v19 = *(v1 + v17);
      if (v18 == 2)
      {
        if (v19 != 2)
        {
          break;
        }
      }

      else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
      {
        break;
      }

      v20 = *(v6 + 20);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v21);
      v22 = OUTLINED_FUNCTION_359();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v22)
      {
        OUTLINED_FUNCTION_116();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    OUTLINED_FUNCTION_155();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

LABEL_18:
  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_247();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B17XCategoryEntitiesV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_329();
  v64 = type metadata accessor for ModalityXEntities(v4);
  v5 = OUTLINED_FUNCTION_54(v64);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_64();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  OUTLINED_FUNCTION_122(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v14);
  v66 = (&v61 - v15);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSg_ADtMd, &_s16ModalityXObjects0A9XEntitiesVSg_ADtMR);
  OUTLINED_FUNCTION_54(v65);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_101();
  v67 = type metadata accessor for ModalityXCategoryEntities(v19);
  v20 = OUTLINED_FUNCTION_57(v67);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_97();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v68 = &v61 - v28;
  v29 = *(v1 + 16);
  if (v29 != *(v3 + 16) || !v29 || v1 == v3)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_94(v27);
  v31 = v1 + v30;
  v32 = v3 + v30;
  v34 = *(v33 + 72);
  v62 = v10;
  v63 = v34;
  v35 = v64;
  v61 = v25;
  while (1)
  {
    v36 = v68;
    outlined init with copy of ModalityXSessionMetadata();
    OUTLINED_FUNCTION_273();
    outlined init with copy of ModalityXSessionMetadata();
    v37 = *(v67 + 20);
    v38 = *(v25 + v37 + 8);
    if (*&v36[v37 + 8])
    {
      if (!v38)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_69(&v36[v37]);
      v41 = v41 && v39 == v40;
      if (!v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (v38)
    {
      goto LABEL_30;
    }

    v42 = *(v67 + 24);
    v43 = *(v65 + 48);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(&v68[v42], v0, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v25 + v42, v0 + v43, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    OUTLINED_FUNCTION_139(v0, 1, v35);
    if (!v41)
    {
      break;
    }

    OUTLINED_FUNCTION_139(v0 + v43, 1, v35);
    if (!v41)
    {
      goto LABEL_27;
    }

    v44 = OUTLINED_FUNCTION_287();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v44, v45, &_s16ModalityXObjects0A9XEntitiesVSgMR);
LABEL_22:
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v57);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    if (v58)
    {
      v32 += v63;
      v31 += v63;
      if (--v29)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v0, v66, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  OUTLINED_FUNCTION_139(v0 + v43, 1, v35);
  if (v46)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_27:
    v59 = &_s16ModalityXObjects0A9XEntitiesVSg_ADtMd;
    v60 = &_s16ModalityXObjects0A9XEntitiesVSg_ADtMR;
    goto LABEL_29;
  }

  v47 = v62;
  outlined init with take of ModalityXSessionMetadata();
  v48 = *v66;
  v49 = *v47;
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B12XEntityWordsV_Tt1g5();
  if (v50)
  {
    v51 = v64;
    v52 = *(v64 + 20);
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v53);
    v54 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = v51;
    v25 = v61;
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    v55 = OUTLINED_FUNCTION_315();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v55, v56, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    if ((v54 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  v59 = &_s16ModalityXObjects0A9XEntitiesVSgMd;
  v60 = &_s16ModalityXObjects0A9XEntitiesVSgMR;
LABEL_29:
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, v59, v60);
LABEL_30:
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_31:
  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_247();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2)
    {
      v3 = a1 == a2;
      if (a1 != a2)
      {
        v4 = (a1 + 40);
        v5 = (a2 + 40);
        do
        {
          v7 = *(v4 - 1);
          v6 = *v4;
          v8 = *v4 >> 62;
          v10 = *(v5 - 1);
          v9 = *v5;
          v11 = *v5 >> 62;
          if (v3)
          {
            v12 = *v4 >> 62;
            if (v7)
            {
              v14 = *v4 >> 62;
              v13 = 0;
            }

            else
            {
              v14 = *v4 >> 62;
              v13 = v6 == 0xC000000000000000;
            }

            v15 = *v4 >> 62;
            v24 = 0;
            if (v13)
            {
              v17 = *v4 >> 62;
              v16 = *v5 >> 62 == 3;
            }

            else
            {
              v17 = *v4 >> 62;
              v16 = 0;
            }

            v18 = *v4 >> 62;
            if (v16)
            {
              v19 = *v4 >> 62;
              if (!v10)
              {
                v20 = *v4 >> 62;
                if (v9 == 0xC000000000000000)
                {
                  v21 = *v4 >> 62;
                  goto LABEL_88;
                }

                v22 = *v4 >> 62;
              }
            }

            else
            {
              v114 = *v4 >> 62;
            }
          }

          else
          {
            v23 = *v4 >> 62;
            v24 = 0;
            v25 = *v4 >> 62;
            switch(v8)
            {
              case 0uLL:
                v24 = BYTE6(v6);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v7), v7))
                {
                  goto LABEL_94;
                }

                v24 = HIDWORD(v7) - v7;
                break;
              case 2uLL:
                v27 = *(v7 + 16);
                v26 = *(v7 + 24);
                v28 = __OFSUB__(v26, v27);
                v24 = v26 - v27;
                if (!v28)
                {
                  break;
                }

                goto LABEL_95;
              case 3uLL:
                break;
              default:
                JUMPOUT(0);
            }
          }

          v29 = *v5 >> 62;
          v30 = *v4 >> 62;
          switch(v11)
          {
            case 1uLL:
              LODWORD(v31) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                __break(1u);
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
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
              }

              v31 = v31;
LABEL_33:
              v35 = *v4 >> 62;
              if (v24 != v31)
              {
                v36 = *v4 >> 62;
                goto LABEL_90;
              }

              v37 = *v4 >> 62;
              if (v24 >= 1)
              {
                v39 = *v4 >> 62;
                v40 = v10 >> 32;
                switch(v8)
                {
                  case 1:
                    if (v7 >> 32 < v7)
                    {
                      goto LABEL_96;
                    }

                    v66 = OUTLINED_FUNCTION_155();
                    outlined copy of Data._Representation(v66, v67);
                    v68 = OUTLINED_FUNCTION_155();
                    outlined copy of Data._Representation(v68, v69);
                    v70 = OUTLINED_FUNCTION_155();
                    outlined copy of Data._Representation(v70, v71);
                    v72 = OUTLINED_FUNCTION_155();
                    outlined copy of Data._Representation(v72, v73);
                    v74 = OUTLINED_FUNCTION_125();
                    outlined copy of Data._Representation(v74, v75);
                    v58 = __DataStorage._bytes.getter();
                    if (!v58)
                    {
                      goto LABEL_62;
                    }

                    v76 = __DataStorage._offset.getter();
                    if (__OFSUB__(v7, v76))
                    {
                      goto LABEL_99;
                    }

                    v58 += v7 - v76;
LABEL_62:
                    MEMORY[0x25F84E010]();
                    closure #1 in static Data.== infix(_:_:)(v58, v10, v9, __s1);
                    v77 = OUTLINED_FUNCTION_155();
                    outlined consume of Data._Representation(v77, v78);
                    v79 = OUTLINED_FUNCTION_155();
                    outlined consume of Data._Representation(v79, v80);
                    v81 = OUTLINED_FUNCTION_125();
                    outlined consume of Data._Representation(v81, v82);
                    v83 = __s1[0];
                    v84 = OUTLINED_FUNCTION_155();
                    outlined consume of Data._Representation(v84, v85);
                    v86 = OUTLINED_FUNCTION_155();
                    outlined consume of Data._Representation(v86, v87);
                    if ((v83 & 1) == 0)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_88;
                  case 2:
                    v47 = *(v7 + 16);
                    v117 = *(v7 + 24);
                    v48 = OUTLINED_FUNCTION_155();
                    outlined copy of Data._Representation(v48, v49);
                    v50 = OUTLINED_FUNCTION_155();
                    outlined copy of Data._Representation(v50, v51);
                    v52 = OUTLINED_FUNCTION_155();
                    outlined copy of Data._Representation(v52, v53);
                    v54 = OUTLINED_FUNCTION_155();
                    outlined copy of Data._Representation(v54, v55);
                    v56 = OUTLINED_FUNCTION_125();
                    outlined copy of Data._Representation(v56, v57);
                    v58 = __DataStorage._bytes.getter();
                    if (!v58)
                    {
                      goto LABEL_47;
                    }

                    v59 = __DataStorage._offset.getter();
                    if (__OFSUB__(v47, v59))
                    {
                      goto LABEL_98;
                    }

                    v58 += v47 - v59;
LABEL_47:
                    if (!__OFSUB__(v117, v47))
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_97;
                  case 3:
                    memset(__s1, 0, 14);
                    if (v11 == 2)
                    {
                      v88 = *(v10 + 16);
                      v120 = *(v10 + 24);
                      v89 = OUTLINED_FUNCTION_155();
                      outlined copy of Data._Representation(v89, v90);
                      v91 = OUTLINED_FUNCTION_125();
                      outlined copy of Data._Representation(v91, v92);
                      v93 = __DataStorage._bytes.getter();
                      if (v93)
                      {
                        v94 = __DataStorage._offset.getter();
                        if (__OFSUB__(v88, v94))
                        {
                          goto LABEL_104;
                        }

                        v93 += v88 - v94;
                      }

                      v28 = __OFSUB__(v120, v88);
                      v95 = &v120[-v88];
                      if (v28)
                      {
                        goto LABEL_103;
                      }

                      v96 = MEMORY[0x25F84E010]();
                      if (!v93)
                      {
                        goto LABEL_111;
                      }

                      goto LABEL_75;
                    }

                    if (v11 != 1)
                    {
LABEL_60:
                      __s2 = v10;
                      v123 = v9;
                      v124 = BYTE2(v9);
                      v125 = BYTE3(v9);
                      v126 = BYTE4(v9);
                      v127 = BYTE5(v9);
                      if (memcmp(__s1, &__s2, BYTE6(v9)))
                      {
                        goto LABEL_90;
                      }

                      goto LABEL_88;
                    }

                    if (v40 < v10)
                    {
                      goto LABEL_100;
                    }

                    v60 = OUTLINED_FUNCTION_155();
                    outlined copy of Data._Representation(v60, v61);
                    v62 = OUTLINED_FUNCTION_125();
                    outlined copy of Data._Representation(v62, v63);
                    v64 = __DataStorage._bytes.getter();
                    if (v64)
                    {
                      v118 = v64;
                      v65 = __DataStorage._offset.getter();
                      if (__OFSUB__(v10, v65))
                      {
                        goto LABEL_107;
                      }

                      v119 = &v118[v10 - v65];
                    }

                    else
                    {
                      v119 = 0;
                    }

                    v105 = MEMORY[0x25F84E010]();
                    v104 = v119;
                    if (!v119)
                    {
                      goto LABEL_109;
                    }

                    goto LABEL_84;
                  default:
                    LOWORD(__s1[0]) = *(v4 - 1);
                    BYTE2(__s1[0]) = BYTE2(v7);
                    BYTE3(__s1[0]) = BYTE3(v7);
                    BYTE4(__s1[0]) = BYTE4(v7);
                    BYTE5(__s1[0]) = BYTE5(v7);
                    BYTE6(__s1[0]) = BYTE6(v7);
                    HIBYTE(__s1[0]) = HIBYTE(v7);
                    LOWORD(__s1[1]) = v6;
                    BYTE2(__s1[1]) = BYTE2(v6);
                    BYTE3(__s1[1]) = BYTE3(v6);
                    BYTE4(__s1[1]) = BYTE4(v6);
                    BYTE5(__s1[1]) = BYTE5(v6);
                    if (!v11)
                    {
                      goto LABEL_60;
                    }

                    if (v11 == 1)
                    {
                      if (v40 < v10)
                      {
                        goto LABEL_101;
                      }

                      v41 = OUTLINED_FUNCTION_155();
                      outlined copy of Data._Representation(v41, v42);
                      v43 = OUTLINED_FUNCTION_125();
                      outlined copy of Data._Representation(v43, v44);
                      v45 = __DataStorage._bytes.getter();
                      if (v45)
                      {
                        v115 = v45;
                        v46 = __DataStorage._offset.getter();
                        if (__OFSUB__(v10, v46))
                        {
                          goto LABEL_106;
                        }

                        v116 = &v115[v10 - v46];
                      }

                      else
                      {
                        v116 = 0;
                      }

                      v105 = MEMORY[0x25F84E010]();
                      v104 = v116;
                      if (!v116)
                      {
                        goto LABEL_110;
                      }

LABEL_84:
                      if (v105 >= v40 - v10)
                      {
                        v103 = v40 - v10;
                      }

                      else
                      {
                        v103 = v105;
                      }
                    }

                    else
                    {
                      v97 = *(v10 + 16);
                      v121 = *(v10 + 24);
                      v98 = OUTLINED_FUNCTION_155();
                      outlined copy of Data._Representation(v98, v99);
                      v100 = OUTLINED_FUNCTION_125();
                      outlined copy of Data._Representation(v100, v101);
                      v93 = __DataStorage._bytes.getter();
                      if (v93)
                      {
                        v102 = __DataStorage._offset.getter();
                        if (__OFSUB__(v97, v102))
                        {
                          goto LABEL_105;
                        }

                        v93 += v97 - v102;
                      }

                      v28 = __OFSUB__(v121, v97);
                      v95 = &v121[-v97];
                      if (v28)
                      {
                        goto LABEL_102;
                      }

                      v96 = MEMORY[0x25F84E010]();
                      if (!v93)
                      {
                        __break(1u);
LABEL_109:
                        __break(1u);
LABEL_110:
                        __break(1u);
LABEL_111:
                        __break(1u);
                        v112 = OUTLINED_FUNCTION_155();
                        outlined consume of Data._Representation(v112, v113);

                        __break(1u);
                        JUMPOUT(0x25A1A5824);
                      }

LABEL_75:
                      if (v96 >= v95)
                      {
                        v103 = v95;
                      }

                      else
                      {
                        v103 = v96;
                      }

                      v104 = v93;
                    }

                    v106 = memcmp(__s1, v104, v103);
                    v107 = OUTLINED_FUNCTION_125();
                    outlined consume of Data._Representation(v107, v108);
                    v109 = OUTLINED_FUNCTION_155();
                    outlined consume of Data._Representation(v109, v110);
                    if (v106)
                    {
                      goto LABEL_90;
                    }

                    break;
                }
              }

              else
              {
                v38 = *v4 >> 62;
              }

              break;
            case 2uLL:
              v34 = *(v10 + 16);
              v33 = *(v10 + 24);
              v28 = __OFSUB__(v33, v34);
              v31 = v33 - v34;
              if (!v28)
              {
                goto LABEL_33;
              }

              goto LABEL_93;
            case 3uLL:
              if (v24)
              {
                goto LABEL_90;
              }

              break;
            default:
              v32 = *v4 >> 62;
              v31 = BYTE6(v9);
              goto LABEL_33;
          }

LABEL_88:
          v4 += 2;
          v5 += 2;
          v3 = --v2 == 0;
        }

        while (v2);
      }
    }

    result = 1;
  }

  else
  {
LABEL_90:
    result = 0;
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
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

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B13XItnAlignmentV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v3 = OUTLINED_FUNCTION_156();
  v4 = type metadata accessor for ModalityXItnAlignment(v3);
  v5 = OUTLINED_FUNCTION_57(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_100();
  if (v10 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_94(v9);
    OUTLINED_FUNCTION_255(v11);
    while (1)
    {
      OUTLINED_FUNCTION_130();
      outlined init with copy of ModalityXSessionMetadata();
      OUTLINED_FUNCTION_298();
      outlined init with copy of ModalityXSessionMetadata();
      OUTLINED_FUNCTION_85(v4[5]);
      if (v13)
      {
        if (!v12)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v14)
        {
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_85(v4[6]);
      if (v16)
      {
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v17)
        {
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_85(v4[7]);
      if (v19)
      {
        if (!v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v20)
        {
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_85(v4[8]);
      if (v22)
      {
        if (!v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v23)
        {
LABEL_27:
          OUTLINED_FUNCTION_201();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          OUTLINED_FUNCTION_155();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          break;
        }
      }

      v24 = type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v25);
      OUTLINED_FUNCTION_136();
      dispatch thunk of static Equatable.== infix(_:_:)();
      OUTLINED_FUNCTION_244();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v24)
      {
        OUTLINED_FUNCTION_116();
        if (!v10)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_247();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B18XRecognitionChoiceV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v5 = OUTLINED_FUNCTION_156();
  v6 = type metadata accessor for ModalityXRecognitionChoice(v5);
  v7 = OUTLINED_FUNCTION_57(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_300();
  if (v20 && v4 && v3 != v0)
  {
    v12 = 0;
    OUTLINED_FUNCTION_94(v11);
    v14 = *(v13 + 72);
    while (1)
    {
      outlined init with copy of ModalityXSessionMetadata();
      if (v12 == v4)
      {
        break;
      }

      outlined init with copy of ModalityXSessionMetadata();
      v15 = *v2;
      v16 = *v1;
      OUTLINED_FUNCTION_305();
      if (!v20)
      {
        goto LABEL_26;
      }

      if (v17)
      {
        v20 = v18 == v19;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v18 + 32);
        v22 = (v19 + 32);
        while (v17)
        {
          if (*v21 != *v22)
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_310();
          if (v20)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        break;
      }

LABEL_18:
      OUTLINED_FUNCTION_85(*(v6 + 24));
      if (v24)
      {
        if (!v23)
        {
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v25)
        {
LABEL_26:
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          OUTLINED_FUNCTION_155();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          goto LABEL_27;
        }
      }

      v26 = *(v6 + 20);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v27);
      v28 = OUTLINED_FUNCTION_360();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      OUTLINED_FUNCTION_166();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if ((v28 & 1) != 0 && ++v12 != v4)
      {
        continue;
      }

      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B16XChoiceAlignmentV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v5 = OUTLINED_FUNCTION_156();
  v6 = type metadata accessor for ModalityXChoiceAlignment(v5);
  v7 = OUTLINED_FUNCTION_57(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_300();
  if (v20 && v4 && v3 != v0)
  {
    v12 = 0;
    OUTLINED_FUNCTION_94(v11);
    v14 = *(v13 + 72);
    while (1)
    {
      outlined init with copy of ModalityXSessionMetadata();
      if (v12 == v4)
      {
        break;
      }

      outlined init with copy of ModalityXSessionMetadata();
      v15 = *v2;
      v16 = *v1;
      OUTLINED_FUNCTION_305();
      if (!v20)
      {
        goto LABEL_23;
      }

      if (v17)
      {
        v20 = v18 == v19;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v18 + 32);
        v22 = (v19 + 32);
        while (v17)
        {
          if (*v21 != *v22)
          {
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_310();
          if (v20)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        break;
      }

LABEL_18:
      v23 = v2[1];
      v24 = v1[1];
      _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B21XRepeatedItnAlignmentV_Tt1g5();
      if ((v25 & 1) == 0)
      {
LABEL_23:
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        OUTLINED_FUNCTION_155();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        goto LABEL_24;
      }

      v26 = *(v6 + 24);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v27);
      v28 = OUTLINED_FUNCTION_360();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      OUTLINED_FUNCTION_166();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if ((v28 & 1) != 0 && ++v12 != v4)
      {
        continue;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B21XRepeatedItnAlignmentV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ModalityXItnAlignment(0);
  v7 = OUTLINED_FUNCTION_317(v6);
  v57 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_253();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_332();
  v13 = type metadata accessor for ModalityXRepeatedItnAlignment(v12);
  v14 = OUTLINED_FUNCTION_57(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v17);
  v20 = (v49 - v19);
  v21 = *(v5 + 16);
  if (v21 == *(v3 + 16) && v21 && v5 != v3)
  {
    v22 = 0;
    OUTLINED_FUNCTION_94(v18);
    v52 = v1;
    v53 = v3 + v23;
    v25 = *(v24 + 72);
    v50 = v13;
    v51 = v20;
    v54 = v26;
    v49[0] = v25;
    v49[1] = v5 + v23;
    while (1)
    {
      outlined init with copy of ModalityXSessionMetadata();
      if (v22 == v54)
      {
        break;
      }

      outlined init with copy of ModalityXSessionMetadata();
      v27 = *v20;
      OUTLINED_FUNCTION_330();
      if (!v28)
      {
LABEL_36:
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        goto LABEL_37;
      }

      if (v20 && v27 != v1)
      {
        v29 = 0;
        OUTLINED_FUNCTION_256();
        v55 = v1 + v30;
        v56 = v27 + v30;
        while (v29 < *(v27 + 16))
        {
          v31 = *(v57 + 72) * v29;
          OUTLINED_FUNCTION_235();
          outlined init with copy of ModalityXSessionMetadata();
          if (v29 >= *(v1 + 16))
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_235();
          outlined init with copy of ModalityXSessionMetadata();
          OUTLINED_FUNCTION_118(v0[5]);
          if (v33)
          {
            if (!v32)
            {
              goto LABEL_35;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v34)
            {
              goto LABEL_35;
            }
          }

          OUTLINED_FUNCTION_118(v0[6]);
          if (v36)
          {
            if (!v35)
            {
              goto LABEL_35;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v37)
            {
              goto LABEL_35;
            }
          }

          OUTLINED_FUNCTION_118(v0[7]);
          if (v39)
          {
            if (!v38)
            {
              goto LABEL_35;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v40)
            {
              goto LABEL_35;
            }
          }

          OUTLINED_FUNCTION_118(v0[8]);
          if (v42)
          {
            if (!v41)
            {
              goto LABEL_35;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v43)
            {
LABEL_35:
              OUTLINED_FUNCTION_201();
              outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
              outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
              goto LABEL_36;
            }
          }

          v44 = type metadata accessor for UnknownStorage();
          OUTLINED_FUNCTION_0_0();
          lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v45);
          OUTLINED_FUNCTION_130();
          dispatch thunk of static Equatable.== infix(_:_:)();
          OUTLINED_FUNCTION_244();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          if ((v44 & 1) == 0)
          {
            goto LABEL_36;
          }

          if (v20 == ++v29)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

LABEL_31:
      v46 = *(v50 + 20);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v47);
      v20 = v51;
      v1 = v52;
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if ((v48 & 1) != 0 && ++v22 != v54)
      {
        continue;
      }

      goto LABEL_37;
    }

    __break(1u);
  }

  else
  {
LABEL_37:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B12XEntityWordsV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for ModalityXWordWithPronunciations(0);
  v10 = OUTLINED_FUNCTION_317(v9);
  v56 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_253();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_332();
  v16 = type metadata accessor for ModalityXEntityWords(v15);
  v17 = OUTLINED_FUNCTION_57(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_309();
  v22 = *(v8 + 16);
  if (v22 == *(v6 + 16) && v22 && v8 != v6)
  {
    OUTLINED_FUNCTION_94(v21);
    v23 = 0;
    v54 = v1;
    v52 = v22;
    v53 = v16;
    v51 = *(v24 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_232();
      outlined init with copy of ModalityXSessionMetadata();
      if (v23 == v22)
      {
        break;
      }

      v55 = v23;
      OUTLINED_FUNCTION_232();
      outlined init with copy of ModalityXSessionMetadata();
      v25 = *v4;
      OUTLINED_FUNCTION_330();
      if (!v34)
      {
LABEL_43:
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        OUTLINED_FUNCTION_343();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        goto LABEL_44;
      }

      if (v16 && v25 != v1)
      {
        v26 = 0;
        OUTLINED_FUNCTION_256();
        while (v26 < *(v25 + 16))
        {
          v27 = *(v56 + 72) * v26;
          OUTLINED_FUNCTION_231();
          outlined init with copy of ModalityXSessionMetadata();
          if (v26 >= *(v1 + 16))
          {
            goto LABEL_46;
          }

          OUTLINED_FUNCTION_231();
          outlined init with copy of ModalityXSessionMetadata();
          v28 = v0[6];
          OUTLINED_FUNCTION_347();
          if (v31)
          {
            if (!v29 || ((OUTLINED_FUNCTION_69(v30), v34) ? (v34 = v32 == v33) : (v34 = 0), !v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
            {
LABEL_42:
              OUTLINED_FUNCTION_228();
              outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
              outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
              goto LABEL_43;
            }
          }

          else if (v29)
          {
            goto LABEL_42;
          }

          if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*v3, *v2) & 1) == 0)
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_118(v0[7]);
          if (v36)
          {
            if (!v35)
            {
              goto LABEL_42;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v37)
            {
              goto LABEL_42;
            }
          }

          v38 = v0[8];
          OUTLINED_FUNCTION_347();
          if (v41)
          {
            if (!v39)
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_69(v40);
            v44 = v34 && v42 == v43;
            if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else if (v39)
          {
            goto LABEL_42;
          }

          v45 = v0[5];
          v46 = type metadata accessor for UnknownStorage();
          OUTLINED_FUNCTION_0_0();
          lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v47);
          dispatch thunk of static Equatable.== infix(_:_:)();
          OUTLINED_FUNCTION_243();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          if ((v46 & 1) == 0)
          {
            goto LABEL_43;
          }

          if (v16 == ++v26)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        break;
      }

LABEL_38:
      v16 = v53;
      v48 = *(v53 + 20);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v49);
      v1 = v54;
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v50)
      {
        v23 = v55 + 1;
        v22 = v52;
        if (v55 + 1 != v52)
        {
          continue;
        }
      }

      goto LABEL_44;
    }

    __break(1u);
  }

  else
  {
LABEL_44:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B23XWordWithPronunciationsV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v5 = OUTLINED_FUNCTION_156();
  v6 = type metadata accessor for ModalityXWordWithPronunciations(v5);
  v7 = OUTLINED_FUNCTION_57(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_100();
  if (v19 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_94(v11);
    OUTLINED_FUNCTION_255(v12);
    while (1)
    {
      OUTLINED_FUNCTION_130();
      outlined init with copy of ModalityXSessionMetadata();
      OUTLINED_FUNCTION_298();
      outlined init with copy of ModalityXSessionMetadata();
      v13 = v6[6];
      OUTLINED_FUNCTION_115();
      if (v16)
      {
        if (!v14 || ((OUTLINED_FUNCTION_69(v15), v19) ? (v19 = v17 == v18) : (v19 = 0), !v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
        {
LABEL_34:
          OUTLINED_FUNCTION_228();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          OUTLINED_FUNCTION_155();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          break;
        }
      }

      else if (v14)
      {
        goto LABEL_34;
      }

      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*v2, *v1) & 1) == 0)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_85(v6[7]);
      if (v21)
      {
        if (!v20)
        {
          goto LABEL_34;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v22)
        {
          goto LABEL_34;
        }
      }

      v23 = v6[8];
      OUTLINED_FUNCTION_115();
      if (v26)
      {
        if (!v24)
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_69(v25);
        v29 = v19 && v27 == v28;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v24)
      {
        goto LABEL_34;
      }

      v30 = v6[5];
      v31 = type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v32);
      OUTLINED_FUNCTION_359();
      OUTLINED_FUNCTION_243();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v31)
      {
        OUTLINED_FUNCTION_116();
        if (!v19)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_247();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B25XSpeechRecognitionFeatureV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v3 = OUTLINED_FUNCTION_156();
  v4 = type metadata accessor for ModalityXSpeechRecognitionFeature(v3);
  v5 = OUTLINED_FUNCTION_57(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_100();
  if (v17 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_94(v9);
    OUTLINED_FUNCTION_255(v10);
    while (1)
    {
      OUTLINED_FUNCTION_130();
      outlined init with copy of ModalityXSessionMetadata();
      OUTLINED_FUNCTION_298();
      outlined init with copy of ModalityXSessionMetadata();
      v11 = *(v4 + 20);
      OUTLINED_FUNCTION_115();
      if (v14)
      {
        if (!v12 || ((OUTLINED_FUNCTION_69(v13), v17) ? (v17 = v15 == v16) : (v17 = 0), !v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
        {
LABEL_24:
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          break;
        }
      }

      else if (v12)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_85(*(v4 + 24));
      if (v19)
      {
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        OUTLINED_FUNCTION_344();
        if (v20)
        {
          goto LABEL_24;
        }
      }

      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v21);
      OUTLINED_FUNCTION_136();
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v22)
      {
        OUTLINED_FUNCTION_116();
        if (!v17)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_247();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B30XAudioAnalyticsAcousticFeatureV_Tt1g5()
{
  OUTLINED_FUNCTION_248();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for ModalityXAcousticFeature(0);
  v9 = OUTLINED_FUNCTION_35(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_43();
  v65 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  OUTLINED_FUNCTION_122(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_158();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMd, &_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMR);
  OUTLINED_FUNCTION_54(v64);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_102();
  v21 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(v20);
  v22 = OUTLINED_FUNCTION_57(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_97();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_309();
  v30 = *(v7 + 16);
  if (v30 != *(v5 + 16) || !v30 || v7 == v5)
  {
LABEL_42:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
    return;
  }

  v31 = 0;
  OUTLINED_FUNCTION_94(v29);
  v61 = v1;
  v62 = *(v32 + 72);
  v63 = v33;
  while (1)
  {
    outlined init with copy of ModalityXSessionMetadata();
    if (v31 == v63)
    {
      goto LABEL_46;
    }

    outlined init with copy of ModalityXSessionMetadata();
    OUTLINED_FUNCTION_80(v3 + *(v21 + 20));
    if (v36)
    {
      if (!v34)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_69(v35);
      v39 = v39 && v37 == v38;
      if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v34)
    {
      goto LABEL_40;
    }

    v40 = *(v21 + 24);
    v41 = *(v64 + 48);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v3 + v40, v1, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v27 + v40, v1 + v41, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    OUTLINED_FUNCTION_38(v1);
    if (v39)
    {
      OUTLINED_FUNCTION_38(v1 + v41);
      if (v39)
      {
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v1, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_58();
      goto LABEL_44;
    }

    v42 = OUTLINED_FUNCTION_166();
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v42, v43, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    OUTLINED_FUNCTION_38(v1 + v41);
    if (v44)
    {
      OUTLINED_FUNCTION_58();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_44:
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v1, &_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMd, &_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMR);
      goto LABEL_41;
    }

    outlined init with take of ModalityXSessionMetadata();
    v45 = *v2;
    v46 = *v65;
    OUTLINED_FUNCTION_305();
    if (!v39)
    {
      goto LABEL_39;
    }

    if (v47 && v48 != v49)
    {
      break;
    }

LABEL_30:
    v52 = *(v0 + 24);
    v53 = *(v2 + v52 + 4);
    v54 = *(v65 + v52 + 4);
    if ((v53 & 1) == 0)
    {
      OUTLINED_FUNCTION_344();
      if ((v55 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_39:
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v1, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
LABEL_40:
      OUTLINED_FUNCTION_58();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_41:
      OUTLINED_FUNCTION_58();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      goto LABEL_42;
    }

    if (!v54)
    {
      goto LABEL_39;
    }

LABEL_34:
    v56 = *(v0 + 20);
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v57);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v1 = v61;
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v61, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    if ((v58 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_35:
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v59);
    OUTLINED_FUNCTION_343();
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    if ((v60 & 1) != 0 && ++v31 != v63)
    {
      continue;
    }

    goto LABEL_42;
  }

  v50 = (v48 + 32);
  v51 = (v49 + 32);
  while (v47)
  {
    if (*v50 != *v51)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_310();
    if (v39)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_356(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_131();
  v9(v8);
  return v4;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25A1A9074()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXSessionMetadata.dataSharingOptInStatus.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A90C8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSessionMetadata.language.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A90F4()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXSpeechProfile.moreDataFollows.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A9140()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfile.languageProfile.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A916C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginRequest.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9208()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXBeginRequest.enablePartialResults.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A9254()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXBeginRequest.isPromptedDictation.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A92A0()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXBeginRequest.isPromptedConfirmation.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A92EC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginRequest.foregroundAppID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9318()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXBeginRequest.isAutoPunctuationEnabled.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A9364()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginRequest.inlineLmeItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1A93F8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9424()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.fieldID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9450()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.fieldLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A947C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.applicationName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A94A8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.applicationVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A94E4()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.selectedText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9510()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.prefixText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A953C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.postfixText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9568()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.inlineLmeItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1A9594()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.languages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1A95C0()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.region.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A95EC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.activationToken.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9618()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXBeginDictation.censorSpeech.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A9664()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXBeginDictation.speakerIndependentRecognition.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A96B0()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXBeginDictation.saveRequestAudio.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A96FC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.keyboardIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9728()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXBeginDictation.enablePartialResults.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A977C()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXBeginDictation.isAutoPunctuationEnabled.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A97C8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXCancelRequest.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A97FC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXAudioFrame.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9828()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXAudioFrame.lastFrame.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A9874()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXASRResult.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9990()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileRebuildNeeded.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A99BC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXProcessingError.code.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1A9A0C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXProcessingError.errorDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9A40()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXProcessingError.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9A6C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRequestMitigated.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9AA0()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRequestComplete.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9ACC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9B60()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9B8C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.phoneSetVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9BB8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.existingLanguageProfile.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9BE4()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.existingPronunciationCache.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9C10()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileBegin.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9C3C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileBegin.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9C68()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileBegin.phoneSetVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9C94()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileAddData.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9D28()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileAddData.existingLanguageProfile.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9D54()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileAddData.existingPronunciationCache.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9D80()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileCommit.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9DAC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildResponse.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9E40()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXSpeechProfileBuildResponse.incompleteProfile.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A9E8C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildResponse.languageProfile.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9EB8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildResponse.pronunciationCache.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void type metadata completion function for ModalityXServerBoundFrame()
{
  type metadata completion function for ModalityXServerBoundFrame();
}

{
  v0 = OUTLINED_FUNCTION_345();
  type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(v0, v1, v2);
  if (v3 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_352();
    }
  }
}

uint64_t type metadata completion function for ModalityXServerBoundFrame.OneOf_Payload()
{
  result = type metadata accessor for ModalityXSessionMetadata(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ModalityXBeginRequest(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ModalityXAudioFrame(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ModalityXSpeechProfile(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ModalityXCancelRequest(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ModalityXBeginDictation(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ModalityXSpeechProfileBuildRequest(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ModalityXStreamingSpeechProfileBegin(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ModalityXStreamingSpeechProfileAddData(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ModalityXStreamingSpeechProfileCommit(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
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

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_191();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_168(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_318();
  }

  else
  {
    type metadata accessor for UnknownStorage();
    v5 = OUTLINED_FUNCTION_264();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_88();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_168(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_172();
  }

  else
  {
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_266();
  }

  OUTLINED_FUNCTION_254();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for ModalityXClientBoundFrame.OneOf_Payload()
{
  result = type metadata accessor for ModalityXRequestComplete(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ModalityXProcessingError(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ModalityXASRResult(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ModalityXSpeechProfileRebuildNeeded(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ModalityXRequestMitigated(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ModalityXSpeechProfileBuildResponse(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25A1AA384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_191();
  v6 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_318();
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
    OUTLINED_FUNCTION_168(v10);
    if (*(v11 + 84) != v3)
    {
      return OUTLINED_FUNCTION_50(v4 + *(a3 + 32));
    }

    v8 = OUTLINED_FUNCTION_264();
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

void sub_25A1AA474()
{
  OUTLINED_FUNCTION_88();
  v2 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_172();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
    OUTLINED_FUNCTION_168(v4);
    if (*(v5 + 84) != v1)
    {
      OUTLINED_FUNCTION_185(*(v0 + 32));
      return;
    }

    OUTLINED_FUNCTION_266();
  }

  OUTLINED_FUNCTION_254();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void type metadata completion function for ModalityXSessionMetadata()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXDeviceInfo?, type metadata accessor for ModalityXDeviceInfo);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for ModalityXUserInterfaceIdiom?, &type metadata for ModalityXUserInterfaceIdiom, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25A1AA6B0(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  v6 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_265();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 20));
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_25A1AA77C()
{
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for UnknownStorage();
  result = OUTLINED_FUNCTION_168(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_162();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 2;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_249Tm(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  v6 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_331(*(v3 + *(a3 + 20)));
  }

  v8 = OUTLINED_FUNCTION_265();

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t __swift_store_extra_inhabitant_index_250Tm()
{
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for UnknownStorage();
  result = OUTLINED_FUNCTION_168(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_162();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t type metadata completion function for ModalityXBeginRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_345();
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_157();
      return OUTLINED_FUNCTION_352();
    }
  }

  return result;
}

void type metadata completion function for ModalityXSpeechProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  OUTLINED_FUNCTION_345();
  type metadata accessor for UnknownStorage();
  if (v9 <= 0x3F)
  {
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_135();
    type metadata accessor for Bool?(v10, v11, v12, v13);
    if (v14 <= 0x3F)
    {
      v15 = OUTLINED_FUNCTION_92();
      type metadata accessor for Bool?(v15, a6, a7, v16);
      if (v17 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_352();
      }
    }
  }
}

uint64_t sub_25A1AAB5C(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_331(*a1);
  }

  type metadata accessor for UnknownStorage();
  v4 = OUTLINED_FUNCTION_264();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void sub_25A1AABE4()
{
  OUTLINED_FUNCTION_191();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_254();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void type metadata completion function for ModalityXAudioFrame()
{
  type metadata accessor for Bool?(319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25A1AAD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_191();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_168(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_318();
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_168(v10);
    if (*(v11 + 84) != v3)
    {
      return OUTLINED_FUNCTION_50(v4 + *(a3 + 24));
    }

    v8 = OUTLINED_FUNCTION_264();
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

void sub_25A1AAE78()
{
  OUTLINED_FUNCTION_88();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_168(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_172();
  }

  else
  {
    v4 = type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_168(v4);
    if (*(v5 + 84) != v1)
    {
      OUTLINED_FUNCTION_185(*(v0 + 24));
      return;
    }

    OUTLINED_FUNCTION_266();
  }

  OUTLINED_FUNCTION_254();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void type metadata completion function for ModalityXASRResult()
{
  type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXASRResult.OneOf_Payload?, type metadata accessor for ModalityXASRResult.OneOf_Payload);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for ModalityXASRResult.OneOf_Payload()
{
  result = type metadata accessor for ModalityXRecognitionCandidate(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for ModalityXStreamingSpeechProfileCommit()
{
  OUTLINED_FUNCTION_345();
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    v1 = OUTLINED_FUNCTION_92();
    type metadata accessor for Bool?(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_352();
    }
  }
}

uint64_t sub_25A1AB144(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  v6 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_50(v3 + *(a3 + 24));
  }

  v8 = OUTLINED_FUNCTION_265();

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_25A1AB1E8()
{
  OUTLINED_FUNCTION_88();
  v2 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_162();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_185(*(v0 + 24));
  }
}

uint64_t type metadata completion function for ModalityXProcessingError()
{
  v0 = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for ModalityXErrorSource?, &type metadata for ModalityXErrorSource, MEMORY[0x277D83D88]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void type metadata accessor for Bool?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for ModalityXSpeechProfileBuildRequest()
{
  v0 = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXSpeechProfileSourceData?, type metadata accessor for ModalityXSpeechProfileSourceData);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void type metadata completion function for ModalityXStreamingSpeechProfileBegin()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for ModalityXStreamingSpeechProfileAddData()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXSpeechProfileSourceData?, type metadata accessor for ModalityXSpeechProfileSourceData);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_267Tm(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  v6 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_50(v3 + *(a3 + 20));
  }

  v8 = OUTLINED_FUNCTION_265();

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_268Tm()
{
  OUTLINED_FUNCTION_88();
  v2 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_162();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_183();
    *(v8 + 8) = v0;
  }
}

uint64_t __swift_get_extra_inhabitant_index_339Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_191();
  v6 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_318();
  }

  else
  {
    if (v3 == 2147483646)
    {
      OUTLINED_FUNCTION_183();
      return OUTLINED_FUNCTION_50(v10);
    }

    v12 = OUTLINED_FUNCTION_130();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v8 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

void __swift_store_extra_inhabitant_index_340Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_191();
  v8 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168(v8);
  if (*(v9 + 84) == a3)
  {
    OUTLINED_FUNCTION_172();
  }

  else
  {
    if (a3 == 2147483646)
    {
      OUTLINED_FUNCTION_183();
      *(v10 + 8) = v4;
      return;
    }

    v11 = OUTLINED_FUNCTION_130();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v13 = v5 + *(a4 + 24);
  }

  OUTLINED_FUNCTION_254();

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void type metadata completion function for ModalityXSpeechProfileBuildResponse()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXProcessingError?, type metadata accessor for ModalityXProcessingError);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for ModalityXBeginRequest._StorageClass()
{
  type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXAudioMetadata?, type metadata accessor for ModalityXAudioMetadata);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for ModalityXBeginDictation._StorageClass()
{
  type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXAudioMetadata?, type metadata accessor for ModalityXAudioMetadata);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_356(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_131();
  v9(v8);
  return v4;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
        JUMPOUT(0x25A1AC04CLL);
      }

      result = 1;
      break;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      break;
  }

  *a4 = result & 1;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x25F84E010]();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_54(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for ModalityXBeginDictation(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_32@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for ModalityXBeginDictation(0);
  v5 = *(result + 20);
  *(a1 + 80) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t **OUTLINED_FUNCTION_39(uint64_t **result)
{
  v1 = (*result)[3];
  v2 = (*result)[4];
  v3 = (*result)[1];
  v4 = (*result)[2];
  v5 = **result;
  return result;
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_46@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 24) = a1;
  v3 = (v2 + a1);
  result = *v3;
  v3[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{
  *(v3 + 24) = a1;

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v2, v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1, unint64_t a2)
{
  outlined copy of Data?(a1, a2);
  outlined copy of Data?(v4, v3);
  return v2;
}

uint64_t OUTLINED_FUNCTION_50@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_52@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1] >> 60;
  return result;
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(a1 + 24);
  return 0;
}

uint64_t OUTLINED_FUNCTION_63()
{
  outlined copy of Data?(v1, v0);
  outlined copy of Data?(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_69@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1)
{
  v3 = *(a1 + 20);
  *(v2 + 32) = v3;
  return *(v1 + v3 + 8);
}

void *OUTLINED_FUNCTION_71(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_72(uint64_t a1, unint64_t a2)
{
  outlined copy of Data?(a1, a2);
  outlined copy of Data?(v4, v3);
  return v2;
}

uint64_t OUTLINED_FUNCTION_79()
{
  result = type metadata accessor for ModalityXBeginDictation(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_82()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_90(uint64_t result)
{
  v2 = (v1 + *(result + 20));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_91(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 80) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, a1);
  v5 = *(v2 + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_96()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_103()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_108()
{
  v2 = (v0 + *(v1 + 20));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_111()
{

  return swift_beginAccess();
}