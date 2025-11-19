void *DefaultModelSession.customizeError(_:)(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for GenerativeError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v44 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v17 = swift_dynamicCast();
  v18 = *(v9 + 56);
  if ((v17 & 1) == 0)
  {
    v18(v7, 1, 1, v8);
    outlined destroy of OnScreenContent.Document?(v7, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
LABEL_9:
    v35 = a1;
    return a1;
  }

  v18(v7, 0, 1, v8);
  (*(v9 + 32))(v15, v7, v8);
  v19 = GenerativeError.userFacingLocalizedMessage.getter();
  if (!v20)
  {
    (*(v9 + 8))(v15, v8);
    goto LABEL_9;
  }

  v42 = v20;
  v43 = v19;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.modelInteraction);
  v22 = *(v9 + 16);
  v22(v13, v15, v8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v40 = v24;
    v26 = v25;
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v26 = 136315650;
    v27 = _typeName(_:qualified:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v44);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000024FE33660, &v44);
    *(v26 + 22) = 2112;
    lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0]);
    swift_allocError();
    v22(v30, v13, v8);
    v31 = _swift_stdlib_bridgeErrorToNSError();
    v32 = *(v9 + 8);
    v32(v13, v8);
    *(v26 + 24) = v31;
    v33 = v39;
    *v39 = v31;
    _os_log_impl(&dword_24FD67000, v23, v40, "%s.%s [GenerativeError] throw CustomErrorWithLocalizedDescription error due to: %@", v26, 0x20u);
    outlined destroy of OnScreenContent.Document?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v33, -1, -1);
    v34 = v41;
    swift_arrayDestroy();
    MEMORY[0x253057F40](v34, -1, -1);
    MEMORY[0x253057F40](v26, -1, -1);
  }

  else
  {

    v32 = *(v9 + 8);
    v32(v13, v8);
  }

  MEMORY[0x253056790](v36);
  v37 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
  a1 = CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
  v32(v15, v8);
  return a1;
}

uint64_t DefaultModelSession.registerImage(_:uploadProgressCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UploadableDocumentData(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v12;
  v4[14] = v11;

  return MEMORY[0x2822009F8](DefaultModelSession.registerImage(_:uploadProgressCallback:), v12, v11);
}

uint64_t DefaultModelSession.registerImage(_:uploadProgressCallback:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = **(v0 + 16);
  IntelligenceFile.fileURL.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 64);

    outlined destroy of OnScreenContent.Document?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v7 = *(v0 + 88);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 72);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 16);
    (*(v13 + 32))(v12, *(v0 + 64), v14);
    (*(v13 + 16))(v15, v12, v14);
    v18 = type metadata accessor for UploadableImageData(0);
    outlined init with copy of UploadableMedia.Source(v17 + *(v18 + 28), v15 + *(v16 + 20), type metadata accessor for UploadableMedia.Source);
    v19 = swift_task_alloc();
    *(v0 + 120) = v19;
    *v19 = v0;
    v19[1] = DefaultModelSession.registerImage(_:uploadProgressCallback:);
    v20 = *(v0 + 56);
    v21 = *(v0 + 32);
    v22 = *(v0 + 40);
    v23 = *(v0 + 24);

    return DefaultModelSession.registerDocument(_:uploadProgressCallback:)(v20, v23, v21);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 128) = v0;

  outlined destroy of UploadableDocumentData(v4, type metadata accessor for UploadableDocumentData);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = DefaultModelSession.registerImage(_:uploadProgressCallback:);
  }

  else
  {
    v8 = DefaultModelSession.registerImage(_:uploadProgressCallback:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];

  (*(v4 + 8))(v2, v3);
  v5 = v0[11];
  v6 = v0[7];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  (*(v4 + 8))(v2, v3);

  v7 = v0[1];
  v8 = v0[16];

  return v7();
}

uint64_t DefaultModelSession.registerDocument(_:uploadProgressCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  v5 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySf_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySf_GMR);
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v8 = *(v7 + 64) + 15;
  v4[22] = swift_task_alloc();
  v9 = type metadata accessor for DocumentRegistration.Progress();
  v4[23] = v9;
  v10 = *(v9 - 8);
  v4[24] = v10;
  v11 = *(v10 + 64) + 15;
  v4[25] = swift_task_alloc();
  v12 = type metadata accessor for DocumentRegistration.Status();
  v4[26] = v12;
  v13 = *(v12 - 8);
  v4[27] = v13;
  v14 = *(v13 + 64) + 15;
  v4[28] = swift_task_alloc();
  v15 = type metadata accessor for DocumentRegistration();
  v4[29] = v15;
  v16 = *(v15 - 8);
  v4[30] = v16;
  v17 = *(v16 + 64) + 15;
  v4[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation20DocumentRegistrationVSgMd, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMR) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_13AsyncIteratorSciQxMd, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_13AsyncIteratorSciQxMR);
  v4[33] = v19;
  v20 = *(v19 - 8);
  v4[34] = v20;
  v21 = *(v20 + 64) + 15;
  v4[35] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
  v4[36] = v22;
  v23 = *(v22 - 8);
  v4[37] = v23;
  v4[38] = *(v23 + 64);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v24 = type metadata accessor for URL();
  v4[41] = v24;
  v25 = *(v24 - 8);
  v4[42] = v25;
  v26 = *(v25 + 64) + 15;
  v4[43] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v28 = type metadata accessor for UploadableMedia.Source(0);
  v4[46] = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = type metadata accessor for MainActor();
  v4[50] = static MainActor.shared.getter();
  v31 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[51] = v31;
  v4[52] = v30;

  return MEMORY[0x2822009F8](DefaultModelSession.registerDocument(_:uploadProgressCallback:), v31, v30);
}

uint64_t DefaultModelSession.registerDocument(_:uploadProgressCallback:)()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v3 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgtGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0;
  v5 = *(type metadata accessor for UploadableDocumentData(0) + 20);
  outlined init with copy of UploadableMedia.Source(v3 + v5, v1, type metadata accessor for UploadableMedia.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 384);
  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of OnScreenContent.Document?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = xmmword_24FE1BE10;
  }

  else
  {
    outlined destroy of UploadableDocumentData(v7, type metadata accessor for UploadableMedia.Source);
    v8 = xmmword_24FE1BE00;
  }

  v10 = *(v0 + 368);
  v9 = *(v0 + 376);
  *(inited + 40) = v8;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of OnScreenContent.Document?(inited + 32, &_s26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgtMd, &_s26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgtMR);
  *(v0 + 88) = v11;
  outlined init with copy of UploadableMedia.Source(v3 + v5, v9, type metadata accessor for UploadableMedia.Source);
  v12 = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + 376);
  if (v12 == 1)
  {
    v14 = *(v0 + 352);
    v15 = *(v0 + 360);
    v16 = *(v0 + 328);
    v17 = *(v0 + 336);
    outlined init with take of URL?(v13, v15);
    outlined init with copy of Date?(v15, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v18 = (*(v17 + 48))(v14, 1, v16);
    v19 = *(v0 + 352);
    if (v18 == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 352), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v20 = 0;
      v21 = 1;
    }

    else
    {
      v29 = *(v0 + 328);
      v30 = *(v0 + 336);
      v31 = URL.absoluteString.getter();
      v33 = v32;
      (*(v30 + 8))(v19, v29);
      v21 = v33;
      v20 = v31;
    }

    v34 = *(v0 + 360);
    specialized Dictionary.subscript.setter(v20, v21, 3);
    outlined destroy of OnScreenContent.Document?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v28._rawValue = *(v0 + 88);
  }

  else
  {
    v22 = *v13;
    v23 = v13[1];
    v24 = v13[2];
    v25 = v13[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v23, 1, isUniquelyReferenced_nonNull_native);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v25, 2, v27);
    v28._rawValue = v11;
    *(v0 + 88) = v11;
  }

  *(v0 + 424) = v28;
  v36 = *(v0 + 336);
  v35 = *(v0 + 344);
  v37 = *(v0 + 328);
  v38 = *(v0 + 136);
  v39 = *(v0 + 112);
  URL.setExtendedAttributes(_:)(v28);
  v40 = *(v38 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMR);
  v41 = *(type metadata accessor for DocumentResource() - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  *(swift_allocObject() + 16) = xmmword_24FE1A560;
  (*(v36 + 16))(v35, v39, v37);
  DocumentResource.init(url:)();
  v44 = GenerativeExperiencesSession.register(documents:)();

  if (specialized Array._getCount()(v44))
  {
    v45 = *(v0 + 288);
    if (_swift_isClassOrObjCExistentialType())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v44 & 0xC000000000000001) == 0, v44, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
      if ((v44 & 0xC000000000000001) != 0)
      {
        v46 = *(v0 + 304);
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v44);
        if (v46 != 8)
        {
          __break(1u);
          return MEMORY[0x282200310](v47, v48, v49);
        }

        v50 = *(v0 + 320);
        v51 = *(v0 + 288);
        v52 = *(v0 + 296);
        *(v0 + 96) = v47;
        v53 = *(v52 + 16);
        v53(v50, v0 + 96, v51);
        swift_unknownObjectRelease();
LABEL_24:

        v70 = *(v0 + 312);
        v69 = *(v0 + 320);
        v72 = *(v0 + 280);
        v71 = *(v0 + 288);
        v74 = *(v0 + 120);
        v73 = *(v0 + 128);
        type metadata accessor for UploadProgressUpdateDebouncer();
        swift_allocObject();
        *(v0 + 432) = UploadProgressUpdateDebouncer.init()();
        v74(0.0);
        v53(v70, v69, v71);
        *(v0 + 440) = swift_getOpaqueTypeConformance2();
        dispatch thunk of AsyncSequence.makeAsyncIterator()();
        *(v0 + 468) = *MEMORY[0x277D0E708];
        *(v0 + 472) = *MEMORY[0x277D0E710];
        v75 = *(v0 + 440);
        v76 = *(v0 + 392);
        v77 = *(v0 + 288);
        v78 = *(v0 + 264);
        v79 = static MainActor.shared.getter();
        *(v0 + 448) = v79;
        swift_getAssociatedConformanceWitness();
        v80 = *(MEMORY[0x277D856D8] + 4);
        v81 = swift_task_alloc();
        *(v0 + 456) = v81;
        *v81 = v0;
        v81[1] = DefaultModelSession.registerDocument(_:uploadProgressCallback:);
        v82 = *(v0 + 280);
        v47 = *(v0 + 256);
        v83 = *(v0 + 264);
        v49 = MEMORY[0x277D85700];
        v48 = v79;

        return MEMORY[0x282200310](v47, v48, v49);
      }
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v44, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
    }

    v68 = *(v0 + 296);
    v53 = *(v68 + 16);
    v53(*(v0 + 320), v44 + ((*(v68 + 80) + 32) & ~*(v68 + 80)), *(v0 + 288));
    goto LABEL_24;
  }

  v54 = *(v0 + 400);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  MetricsUtils.emitSignpostEvent(_:)("Error.RegisterDocument", 22, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  SELFUtils.recordRegisterMediaFailed(code:domain:)(1, 8);
  SELFUtils.recordRequestFailed(code:domain:)(1, 3);
  lazy protocol witness table accessor for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError();
  swift_allocError();
  *v55 = 1;
  swift_willThrow();
  v57 = *(v0 + 376);
  v56 = *(v0 + 384);
  v59 = *(v0 + 352);
  v58 = *(v0 + 360);
  v60 = *(v0 + 344);
  v62 = *(v0 + 312);
  v61 = *(v0 + 320);
  v63 = *(v0 + 280);
  v64 = *(v0 + 248);
  v65 = *(v0 + 256);
  v84 = *(v0 + 224);
  v85 = *(v0 + 200);
  v86 = *(v0 + 176);
  v87 = *(v0 + 152);

  v66 = *(v0 + 8);

  return v66();
}

{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v9 = *v1;

  v4 = v2[56];

  v5 = v2[51];
  v6 = v2[52];
  if (v0)
  {
    v7 = DefaultModelSession.registerDocument(_:uploadProgressCallback:);
  }

  else
  {
    v7 = DefaultModelSession.registerDocument(_:uploadProgressCallback:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{
  v115 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 424);
    v5 = *(v0 + 400);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    MetricsUtils.emitSignpostEvent(_:)("Error.RegisterDocumentNeverFinish", 33, 2);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 432);
    v7 = *(v0 + 320);
    v8 = *(v0 + 288);
    v9 = *(v0 + 296);
    SELFUtils.recordRegisterMediaFailed(code:domain:)(2, 8);
    SELFUtils.recordRequestFailed(code:domain:)(2, 3);
    lazy protocol witness table accessor for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();

    (*(v9 + 8))(v7, v8);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    v14 = *(v0 + 352);
    v13 = *(v0 + 360);
    v15 = *(v0 + 344);
    v17 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = *(v0 + 280);
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v99 = *(v0 + 224);
    v102 = *(v0 + 200);
    v105 = *(v0 + 176);
    v108 = *(v0 + 152);

    v21 = *(v0 + 8);
LABEL_7:

    return v21();
  }

  v23 = *(v0 + 468);
  v25 = *(v0 + 216);
  v24 = *(v0 + 224);
  v26 = *(v0 + 208);
  (*(v3 + 32))(*(v0 + 248), v1, v2);
  DocumentRegistration.status.getter();
  v27 = (*(v25 + 88))(v24, v26);
  if (v27 == v23)
  {
    v28 = *(v0 + 224);
    v29 = *(v0 + 200);
    v30 = *(v0 + 184);
    v31 = *(v0 + 192);
    (*(*(v0 + 216) + 96))(v28, *(v0 + 208));
    (*(v31 + 32))(v29, v28, v30);
    DocumentRegistration.Progress.progress.getter();
    if (one-time initialization token for generativeResponse != -1)
    {
      v113 = v32;
      swift_once();
      v32 = v113;
    }

    v33 = v32 / 100.0;
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.generativeResponse);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v38 = *(v0 + 168);
      v37 = *(v0 + 176);
      v39 = *(v0 + 152);
      v40 = *(v0 + 160);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v114[0] = v42;
      *v41 = 136315138;
      *(v0 + 464) = v33;
      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Float and conformance Float();
      FloatingPointFormatStyle.Percent.init(locale:)();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Float>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySf_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySf_GMR);
      BinaryFloatingPoint.formatted<A>(_:)();
      (*(v38 + 8))(v37, v40);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 72), *(v0 + 80), v114);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_24FD67000, v35, v36, "REGISTERING... progress: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x253057F40](v42, -1, -1);
      MEMORY[0x253057F40](v41, -1, -1);
    }

    v45 = *(v0 + 240);
    v44 = *(v0 + 248);
    v46 = *(v0 + 232);
    v48 = *(v0 + 192);
    v47 = *(v0 + 200);
    v49 = *(v0 + 184);
    v50 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 432), v33);
    (*(v48 + 8))(v47, v49);
    (*(v45 + 8))(v44, v46);
  }

  else
  {
    if (v27 == *(v0 + 472))
    {
      v51 = *(v0 + 424);
      v52 = *(v0 + 400);
      v54 = *(v0 + 216);
      v53 = *(v0 + 224);
      v55 = *(v0 + 208);

      (*(v54 + 96))(v53, v55);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.modelInteraction);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v0 + 432);
      v61 = *(v0 + 320);
      v62 = *(v0 + 288);
      v63 = *(v0 + 296);
      v65 = *(v0 + 272);
      v64 = *(v0 + 280);
      v66 = *(v0 + 264);
      v111 = *(v0 + 248);
      v109 = *(v0 + 232);
      v67 = (*(v0 + 240) + 8);
      if (v59)
      {
        v106 = *(v0 + 280);
        v68 = *(v0 + 144);
        v103 = *(v0 + 320);
        v69 = swift_slowAlloc();
        v100 = v62;
        v70 = swift_slowAlloc();
        v114[0] = v70;
        *v69 = 136315394;
        v71 = _typeName(_:qualified:)();
        v98 = v66;
        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v114);

        *(v69 + 4) = v73;
        *(v69 + 12) = 2080;
        *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x800000024FE33420, v114);
        _os_log_impl(&dword_24FD67000, v57, v58, "%s.%s finished registering document", v69, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v70, -1, -1);
        MEMORY[0x253057F40](v69, -1, -1);

        (*v67)(v111, v109);
        (*(v65 + 8))(v106, v98);
        (*(v63 + 8))(v103, v100);
      }

      else
      {

        (*v67)(v111, v109);
        (*(v65 + 8))(v64, v66);
        (*(v63 + 8))(v61, v62);
      }

      v89 = *(v0 + 376);
      v88 = *(v0 + 384);
      v91 = *(v0 + 352);
      v90 = *(v0 + 360);
      v92 = *(v0 + 344);
      v94 = *(v0 + 312);
      v93 = *(v0 + 320);
      v95 = *(v0 + 280);
      v101 = *(v0 + 256);
      v104 = *(v0 + 248);
      v96 = *(v0 + 224);
      v107 = *(v0 + 200);
      v110 = *(v0 + 176);
      v112 = *(v0 + 152);
      v97 = type metadata accessor for DocumentResourceIdentifier();
      (*(*(v97 - 8) + 8))(v96, v97);

      v21 = *(v0 + 8);
      goto LABEL_7;
    }

    v74 = *(v0 + 224);
    v75 = *(v0 + 208);
    v76 = *(v0 + 216);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    (*(v76 + 8))(v74, v75);
  }

  v77 = *(v0 + 440);
  v78 = *(v0 + 392);
  v79 = *(v0 + 288);
  v80 = *(v0 + 264);
  v81 = static MainActor.shared.getter();
  *(v0 + 448) = v81;
  swift_getAssociatedConformanceWitness();
  v82 = *(MEMORY[0x277D856D8] + 4);
  v83 = swift_task_alloc();
  *(v0 + 456) = v83;
  *v83 = v0;
  v83[1] = DefaultModelSession.registerDocument(_:uploadProgressCallback:);
  v84 = *(v0 + 280);
  v85 = *(v0 + 256);
  v86 = *(v0 + 264);
  v87 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v85, v81, v87);
}

{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[50];
  v4 = v0[40];
  v5 = v0[36];
  v6 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[33];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);

  v11 = v0[47];
  v10 = v0[48];
  v13 = v0[44];
  v12 = v0[45];
  v14 = v0[43];
  v16 = v0[39];
  v15 = v0[40];
  v17 = v0[35];
  v18 = v0[31];
  v19 = v0[32];
  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[22];
  v25 = v0[19];
  v26 = v0[13];

  v20 = v0[1];

  return v20();
}

Swift::Void __swiftcall URL.setExtendedAttributes(_:)(Swift::OpaquePointer a1)
{
  v35 = type metadata accessor for String.Encoding();
  v2 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = a1._rawValue + 64;
  v6 = 1 << *(a1._rawValue + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1._rawValue + 8);
  v9 = (v6 + 63) >> 6;
  v33 = (v3 + 8);

  v10 = 0;
  v32 = 0;
  rawValue = a1._rawValue;
  while (v8)
  {
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(a1._rawValue + 7) + 16 * v13);
    if (v14[1])
    {
      v15 = *v14;
      v16 = *(*(a1._rawValue + 6) + v13);
      v17 = 0x6D696D5F656C6966;
      if (v16 != 2)
      {
        v17 = 0x5F65746973626577;
      }

      v18 = 0xEE00657079745F65;
      if (v16 != 2)
      {
        v18 = 0xEB000000006C7275;
      }

      v19 = 0x745F656372756F73;
      if (v16)
      {
        v19 = 0x6D616E5F656C6966;
      }

      v20 = 0xEB00000000657079;
      if (v16)
      {
        v20 = 0xE900000000000065;
      }

      v21 = v16 <= 1;
      if (v16 <= 1)
      {
        v22 = v19;
      }

      else
      {
        v22 = v17;
      }

      v37 = v22;
      if (v21)
      {
        v23 = v20;
      }

      else
      {
        v23 = v18;
      }

      v24 = v34;
      static String.Encoding.utf8.getter();
      v25 = String.data(using:allowLossyConversion:)();
      v27 = v26;

      (*v33)(v24, v35);
      if (v27 >> 60 == 15)
      {

        a1._rawValue = rawValue;
      }

      else
      {
        v28 = URL.startAccessingSecurityScopedResource()();
        v31 = v28;
        MEMORY[0x28223BE20](v28);
        *&v30[-32] = v25;
        *&v30[-24] = v27;
        *&v30[-16] = v37;
        *&v30[-8] = v23;
        v29 = v32;
        URL.withUnsafeFileSystemRepresentation<A>(_:)();
        v32 = v29;

        if (v31)
        {
          URL.stopAccessingSecurityScopedResource()();
        }

        outlined consume of Data?(v25, v27);
        a1._rawValue = rawValue;
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *&v5[8 * v11];
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t DefaultModelSession.getBlockingResponse(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for ModelResponse() - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = type metadata accessor for PromptCompletion();
  v2[6] = v6;
  v7 = *(v6 - 8);
  v2[7] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v2[8] = v9;
  v2[9] = swift_task_alloc();
  v10 = *(MEMORY[0x277D4B010] + 4);
  v11 = swift_task_alloc();
  v2[10] = v11;
  *v11 = v2;
  v11[1] = DefaultModelSession.getBlockingResponse(_:);

  return MEMORY[0x2821AB608](v5, v9);
}

uint64_t DefaultModelSession.getBlockingResponse(_:)()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = DefaultModelSession.getBlockingResponse(_:);
  }

  else
  {
    outlined destroy of UploadableDocumentData(*(v2 + 40), type metadata accessor for ModelResponse);
    v4 = DefaultModelSession.getBlockingResponse(_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  (*(v0[7] + 32))(v0[9], v0[8], v0[6]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = DefaultModelSession.getBlockingResponse(_:);
  v2 = v0[9];
  v3 = v0[2];
  v4 = v0[3];

  return DefaultModelSession.getModelResponse(from:)(v3, v2);
}

{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](DefaultModelSession.getBlockingResponse(_:), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2, v1);
  outlined destroy of OnScreenContent.Document?(v1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  SELFUtils.recordGenerativeRequestEnded()();
  (*(v6 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

uint64_t specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizer();
  v6[31] = v11;
  v12 = *(v11 - 8);
  v6[32] = v12;
  v13 = *(v12 + 64) + 15;
  v6[33] = swift_task_alloc();
  v14 = type metadata accessor for StringRenderedPromptSanitizer();
  v6[34] = v14;
  v15 = *(v14 - 8);
  v6[35] = v15;
  v16 = *(v15 + 64) + 15;
  v6[36] = swift_task_alloc();
  v17 = type metadata accessor for SamplingParameters();
  v6[37] = v17;
  v18 = *(v17 - 8);
  v6[38] = v18;
  v19 = *(v18 + 64) + 15;
  v6[39] = swift_task_alloc();
  v20 = swift_allocObject();
  v6[40] = v20;
  v21 = *(a6 + 112);
  *(v20 + 112) = *(a6 + 96);
  *(v20 + 128) = v21;
  *(v20 + 144) = *(a6 + 128);
  v22 = *(a6 + 48);
  *(v20 + 48) = *(a6 + 32);
  *(v20 + 64) = v22;
  v23 = *(a6 + 80);
  *(v20 + 80) = *(a6 + 64);
  *(v20 + 96) = v23;
  v24 = *(a6 + 16);
  *(v20 + 16) = *a6;
  *(v20 + 32) = v24;
  v6[41] = type metadata accessor for MainActor();
  outlined init with copy of IntentCallbackManager(a6, (v6 + 2));
  v6[42] = static MainActor.shared.getter();
  v26 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[43] = v26;
  v6[44] = v25;

  return MEMORY[0x2822009F8](specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:), v26, v25);
}

{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizer();
  v6[31] = v11;
  v12 = *(v11 - 8);
  v6[32] = v12;
  v13 = *(v12 + 64) + 15;
  v6[33] = swift_task_alloc();
  v14 = type metadata accessor for StringRenderedPromptSanitizer();
  v6[34] = v14;
  v15 = *(v14 - 8);
  v6[35] = v15;
  v16 = *(v15 + 64) + 15;
  v6[36] = swift_task_alloc();
  v17 = type metadata accessor for SamplingParameters();
  v6[37] = v17;
  v18 = *(v17 - 8);
  v6[38] = v18;
  v19 = *(v18 + 64) + 15;
  v6[39] = swift_task_alloc();
  v20 = swift_allocObject();
  v6[40] = v20;
  v21 = *(a6 + 112);
  *(v20 + 112) = *(a6 + 96);
  *(v20 + 128) = v21;
  *(v20 + 144) = *(a6 + 128);
  v22 = *(a6 + 48);
  *(v20 + 48) = *(a6 + 32);
  *(v20 + 64) = v22;
  v23 = *(a6 + 80);
  *(v20 + 80) = *(a6 + 64);
  *(v20 + 96) = v23;
  v24 = *(a6 + 16);
  *(v20 + 16) = *a6;
  *(v20 + 32) = v24;
  v6[41] = type metadata accessor for MainActor();
  outlined init with copy of IntentCallbackManager(a6, (v6 + 2));
  v6[42] = static MainActor.shared.getter();
  v26 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[43] = v26;
  v6[44] = v25;

  return MEMORY[0x2822009F8](specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:), v26, v25);
}

{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizer();
  v6[31] = v11;
  v12 = *(v11 - 8);
  v6[32] = v12;
  v13 = *(v12 + 64) + 15;
  v6[33] = swift_task_alloc();
  v14 = type metadata accessor for StringRenderedPromptSanitizer();
  v6[34] = v14;
  v15 = *(v14 - 8);
  v6[35] = v15;
  v16 = *(v15 + 64) + 15;
  v6[36] = swift_task_alloc();
  v17 = type metadata accessor for SamplingParameters();
  v6[37] = v17;
  v18 = *(v17 - 8);
  v6[38] = v18;
  v19 = *(v18 + 64) + 15;
  v6[39] = swift_task_alloc();
  v20 = swift_allocObject();
  v6[40] = v20;
  v21 = *(a6 + 112);
  *(v20 + 112) = *(a6 + 96);
  *(v20 + 128) = v21;
  *(v20 + 144) = *(a6 + 128);
  v22 = *(a6 + 48);
  *(v20 + 48) = *(a6 + 32);
  *(v20 + 64) = v22;
  v23 = *(a6 + 80);
  *(v20 + 80) = *(a6 + 64);
  *(v20 + 96) = v23;
  v24 = *(a6 + 16);
  *(v20 + 16) = *a6;
  *(v20 + 32) = v24;
  v6[41] = type metadata accessor for MainActor();
  outlined init with copy of IntentCallbackManager(a6, (v6 + 2));
  v6[42] = static MainActor.shared.getter();
  v26 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[43] = v26;
  v6[44] = v25;

  return MEMORY[0x2822009F8](specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:), v26, v25);
}

{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizer();
  v6[31] = v11;
  v12 = *(v11 - 8);
  v6[32] = v12;
  v13 = *(v12 + 64) + 15;
  v6[33] = swift_task_alloc();
  v14 = type metadata accessor for StringRenderedPromptSanitizer();
  v6[34] = v14;
  v15 = *(v14 - 8);
  v6[35] = v15;
  v16 = *(v15 + 64) + 15;
  v6[36] = swift_task_alloc();
  v17 = type metadata accessor for SamplingParameters();
  v6[37] = v17;
  v18 = *(v17 - 8);
  v6[38] = v18;
  v19 = *(v18 + 64) + 15;
  v6[39] = swift_task_alloc();
  v20 = swift_allocObject();
  v6[40] = v20;
  v21 = *(a6 + 112);
  *(v20 + 112) = *(a6 + 96);
  *(v20 + 128) = v21;
  *(v20 + 144) = *(a6 + 128);
  v22 = *(a6 + 48);
  *(v20 + 48) = *(a6 + 32);
  *(v20 + 64) = v22;
  v23 = *(a6 + 80);
  *(v20 + 80) = *(a6 + 64);
  *(v20 + 96) = v23;
  v24 = *(a6 + 16);
  *(v20 + 16) = *a6;
  *(v20 + 32) = v24;
  v6[41] = type metadata accessor for MainActor();
  outlined init with copy of IntentCallbackManager(a6, (v6 + 2));
  v6[42] = static MainActor.shared.getter();
  v26 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[43] = v26;
  v6[44] = v25;

  return MEMORY[0x2822009F8](specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:), v26, v25);
}

uint64_t specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)()
{
  v56 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v38 = v0[36];
  v40 = v0[33];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v8 = static SELFUtils.shared;
  v0[46] = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v49 = v6[6];
  v50 = v6[7];
  v51 = *(v6 + 16);
  v45 = v6[2];
  v46 = v6[3];
  v47 = v6[4];
  v48 = v6[5];
  v43 = *v6;
  v44 = v6[1];
  v9 = *(v6 + 14);
  v52 = *(v6 + 13);
  v53 = v9;
  v54 = 0;
  v55 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v52);
  outlined consume of GenerativeAssistantProgressLevel(v52, v53, v54, v55);
  v42 = *(v5 + 16);
  (*(v1 + 16))(v2, v5 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v3);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v10 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v8 + v10, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v4, 1, v11);
  v14 = v0[30];
  if (v13 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v15 = v0[30];
    UUID.uuidString.getter();
    (*(v12 + 8))(v14, v11);
  }

  v39 = v0[40];
  v41 = v0[41];
  v16 = v0[38];
  v32 = v0[36];
  v33 = v0[39];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[33];
  v34 = v0[31];
  v36 = v0[37];
  v37 = v0[29];
  v20 = v0[26];
  v35 = v0[34];
  v22 = v0[23];
  v21 = v0[24];
  type metadata accessor for ModelResponse();
  v23 = swift_task_alloc();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = v20;
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse);
  v0[47] = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v18 + 8))(v19, v34);
  (*(v17 + 8))(v32, v35);
  (*(v16 + 8))(v33, v36);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v37, 1, 1, v24);

  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v20;
  v26[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v26[6] = v39;
  v0[48] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v37, &closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)partial apply, v26);
  v28 = swift_task_alloc();
  v0[49] = v28;
  *v28 = v0;
  v28[1] = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  v29 = v0[26];
  v30 = v0[22];

  return DefaultModelSession.getBlockingResponse(_:)(v30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 352);
  v6 = *(v2 + 344);
  if (v0)
  {
    v7 = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  }

  else
  {
    v7 = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[36];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[27];
  v14 = v0[28];

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v1, MEMORY[0x277D84F78] + 8, v11, MEMORY[0x277D84950]);

  outlined destroy of IntentCallbackManager(v10);

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[42];
  v7 = v0[40];
  v15 = v0[39];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[30];
  v19 = v0[29];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v2, MEMORY[0x277D84F78] + 8, v11, MEMORY[0x277D84950]);

  v12 = type metadata accessor for OSSignpostID();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2, v8);
  outlined destroy of OnScreenContent.Document?(v8, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  DefaultModelSession.customizeError(_:)(v1);
  swift_willThrow();

  outlined destroy of IntentCallbackManager(v9);

  v13 = v0[1];

  return v13();
}

{
  v56 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v38 = v0[36];
  v40 = v0[33];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v8 = static SELFUtils.shared;
  v0[46] = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v49 = v6[6];
  v50 = v6[7];
  v51 = *(v6 + 16);
  v45 = v6[2];
  v46 = v6[3];
  v47 = v6[4];
  v48 = v6[5];
  v43 = *v6;
  v44 = v6[1];
  v9 = *(v6 + 14);
  v52 = *(v6 + 13);
  v53 = v9;
  v54 = 0;
  v55 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v52);
  outlined consume of GenerativeAssistantProgressLevel(v52, v53, v54, v55);
  v42 = *(v5 + 16);
  (*(v1 + 16))(v2, v5 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v3);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v10 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v8 + v10, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v4, 1, v11);
  v14 = v0[30];
  if (v13 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v15 = v0[30];
    UUID.uuidString.getter();
    (*(v12 + 8))(v14, v11);
  }

  v39 = v0[40];
  v41 = v0[41];
  v16 = v0[38];
  v32 = v0[36];
  v33 = v0[39];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[33];
  v34 = v0[31];
  v36 = v0[37];
  v37 = v0[29];
  v20 = v0[26];
  v35 = v0[34];
  v22 = v0[23];
  v21 = v0[24];
  type metadata accessor for ModelResponse();
  v23 = swift_task_alloc();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = v20;
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse);
  v0[47] = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v18 + 8))(v19, v34);
  (*(v17 + 8))(v32, v35);
  (*(v16 + 8))(v33, v36);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v37, 1, 1, v24);

  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v20;
  v26[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v26[6] = v39;
  v0[48] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v37, &closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)partial apply, v26);
  v28 = swift_task_alloc();
  v0[49] = v28;
  *v28 = v0;
  v28[1] = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  v29 = v0[26];
  v30 = v0[22];

  return DefaultModelSession.getBlockingResponse(_:)(v30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 352);
  v6 = *(v2 + 344);
  if (v0)
  {
    v7 = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  }

  else
  {
    v7 = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v56 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v38 = v0[36];
  v40 = v0[33];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v8 = static SELFUtils.shared;
  v0[46] = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v49 = v6[6];
  v50 = v6[7];
  v51 = *(v6 + 16);
  v45 = v6[2];
  v46 = v6[3];
  v47 = v6[4];
  v48 = v6[5];
  v43 = *v6;
  v44 = v6[1];
  v9 = *(v6 + 14);
  v52 = *(v6 + 13);
  v53 = v9;
  v54 = 0;
  v55 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v52);
  outlined consume of GenerativeAssistantProgressLevel(v52, v53, v54, v55);
  v42 = *(v5 + 16);
  (*(v1 + 16))(v2, v5 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v3);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v10 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v8 + v10, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v4, 1, v11);
  v14 = v0[30];
  if (v13 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v15 = v0[30];
    UUID.uuidString.getter();
    (*(v12 + 8))(v14, v11);
  }

  v39 = v0[40];
  v41 = v0[41];
  v16 = v0[38];
  v32 = v0[36];
  v33 = v0[39];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[33];
  v34 = v0[31];
  v36 = v0[37];
  v37 = v0[29];
  v20 = v0[26];
  v35 = v0[34];
  v22 = v0[23];
  v21 = v0[24];
  type metadata accessor for ModelResponse();
  v23 = swift_task_alloc();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = v20;
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse);
  v0[47] = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v18 + 8))(v19, v34);
  (*(v17 + 8))(v32, v35);
  (*(v16 + 8))(v33, v36);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v37, 1, 1, v24);

  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v20;
  v26[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v26[6] = v39;
  v0[48] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v37, &closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)partial apply, v26);
  v28 = swift_task_alloc();
  v0[49] = v28;
  *v28 = v0;
  v28[1] = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  v29 = v0[26];
  v30 = v0[22];

  return DefaultModelSession.getBlockingResponse(_:)(v30);
}

{
  v56 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v38 = v0[36];
  v40 = v0[33];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v8 = static SELFUtils.shared;
  v0[46] = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v49 = v6[6];
  v50 = v6[7];
  v51 = *(v6 + 16);
  v45 = v6[2];
  v46 = v6[3];
  v47 = v6[4];
  v48 = v6[5];
  v43 = *v6;
  v44 = v6[1];
  v9 = *(v6 + 14);
  v52 = *(v6 + 13);
  v53 = v9;
  v54 = 0;
  v55 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v52);
  outlined consume of GenerativeAssistantProgressLevel(v52, v53, v54, v55);
  v42 = *(v5 + 16);
  (*(v1 + 16))(v2, v5 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v3);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v10 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v8 + v10, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v4, 1, v11);
  v14 = v0[30];
  if (v13 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v15 = v0[30];
    UUID.uuidString.getter();
    (*(v12 + 8))(v14, v11);
  }

  v39 = v0[40];
  v41 = v0[41];
  v16 = v0[38];
  v32 = v0[36];
  v33 = v0[39];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[33];
  v34 = v0[31];
  v36 = v0[37];
  v37 = v0[29];
  v20 = v0[26];
  v35 = v0[34];
  v22 = v0[23];
  v21 = v0[24];
  type metadata accessor for ModelResponse();
  v23 = swift_task_alloc();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = v20;
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse);
  v0[47] = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v18 + 8))(v19, v34);
  (*(v17 + 8))(v32, v35);
  (*(v16 + 8))(v33, v36);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v37, 1, 1, v24);

  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v20;
  v26[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v26[6] = v39;
  v0[48] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v37, &closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)partial apply, v26);
  v28 = swift_task_alloc();
  v0[49] = v28;
  *v28 = v0;
  v28[1] = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  v29 = v0[26];
  v30 = v0[22];

  return DefaultModelSession.getBlockingResponse(_:)(v30);
}

uint64_t closure #1 in DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v24 = a2;
  v32 = a4;
  v28 = type metadata accessor for User();
  v25 = *(v28 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChatMessagePrompt();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ChatMessagesPrompt();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v27);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = v24;
  v17 = v26;
  User.init(_:)();
  v26 = v17;
  MEMORY[0x253056D90](v29 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale);
  (*(v25 + 8))(v7, v28);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v18 = *(v13 + 72);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24FE1A560;
  v21 = v20 + v19;
  v22 = v27;
  (*(v13 + 16))(v21, v16, v27);
  MEMORY[0x253056D00](v20);

  return (*(v13 + 8))(v16, v22);
}

uint64_t DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[37] = a8;
  v9[38] = v8;
  v9[35] = a6;
  v9[36] = a7;
  v9[33] = a4;
  v9[34] = a5;
  v9[31] = a2;
  v9[32] = a3;
  v9[30] = a1;
  v9[39] = *v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v9[40] = swift_task_alloc();
  v11 = type metadata accessor for PromptCompletion();
  v9[41] = v11;
  v12 = *(v11 - 8);
  v9[42] = v12;
  v13 = *(v12 + 64) + 15;
  v9[43] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR) - 8) + 64) + 15;
  v9[44] = swift_task_alloc();
  v9[45] = swift_task_alloc();
  v15 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v9[46] = v15;
  v16 = *(v15 - 8);
  v9[47] = v16;
  v17 = *(v16 + 64) + 15;
  v9[48] = swift_task_alloc();
  v9[49] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v9[50] = swift_task_alloc();
  v19 = type metadata accessor for ModelResponse();
  v9[51] = v19;
  v20 = *(v19 - 8);
  v9[52] = v20;
  v21 = *(v20 + 64) + 15;
  v9[53] = swift_task_alloc();
  v9[54] = swift_task_alloc();
  v9[55] = swift_task_alloc();
  v9[56] = swift_task_alloc();
  v9[57] = swift_task_alloc();
  v22 = type metadata accessor for Field.FieldType();
  v9[58] = v22;
  v23 = *(v22 - 8);
  v9[59] = v23;
  v24 = *(v23 + 64) + 15;
  v9[60] = swift_task_alloc();
  v25 = type metadata accessor for Field();
  v9[61] = v25;
  v26 = *(v25 - 8);
  v9[62] = v26;
  v27 = *(v26 + 64) + 15;
  v9[63] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage5FieldVSgMd, &_s4Sage5FieldVSgMR) - 8) + 64) + 15;
  v9[64] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_13AsyncIteratorSciQxMd, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_13AsyncIteratorSciQxMR);
  v9[65] = v29;
  v30 = *(v29 - 8);
  v9[66] = v30;
  v31 = *(v30 + 64) + 15;
  v9[67] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_Md, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_MR);
  v9[68] = v32;
  v33 = *(v32 - 8);
  v9[69] = v33;
  v9[70] = *(v33 + 64);
  v9[71] = swift_task_alloc();
  v9[72] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v9[73] = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v9[74] = swift_task_alloc();
  v36 = type metadata accessor for StringResponseSanitizer();
  v9[75] = v36;
  v37 = *(v36 - 8);
  v9[76] = v37;
  v38 = *(v37 + 64) + 15;
  v9[77] = swift_task_alloc();
  v39 = type metadata accessor for StringRenderedPromptSanitizer();
  v9[78] = v39;
  v40 = *(v39 - 8);
  v9[79] = v40;
  v41 = *(v40 + 64) + 15;
  v9[80] = swift_task_alloc();
  v42 = type metadata accessor for SamplingParameters();
  v9[81] = v42;
  v43 = *(v42 - 8);
  v9[82] = v43;
  v44 = *(v43 + 64) + 15;
  v9[83] = swift_task_alloc();
  v45 = type metadata accessor for User();
  v9[84] = v45;
  v46 = *(v45 - 8);
  v9[85] = v46;
  v47 = *(v46 + 64) + 15;
  v9[86] = swift_task_alloc();
  v48 = type metadata accessor for ChatMessagePrompt();
  v9[87] = v48;
  v49 = *(v48 - 8);
  v9[88] = v49;
  v50 = *(v49 + 64) + 15;
  v9[89] = swift_task_alloc();
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();
  v9[92] = type metadata accessor for MainActor();
  v9[93] = static MainActor.shared.getter();
  v52 = dispatch thunk of Actor.unownedExecutor.getter();
  v9[94] = v52;
  v9[95] = v51;

  return MEMORY[0x2822009F8](DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:), v52, v51);
}

uint64_t DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 768) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = static SELFUtils.shared;
  *(v0 + 776) = static SELFUtils.shared;
  v91 = v4;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v1();
  v5 = *(v0 + 720);
  v6 = *(v0 + 688);
  v7 = *(v0 + 304);
  if (v3)
  {
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 240);
    v11 = swift_task_alloc();
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = v9;
    v12 = v8;
    User.init(_:)();

    MEMORY[0x253056D90](v7 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale);
  }

  else
  {
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    User.init(_:)();

    MEMORY[0x253056D90](v7 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale);
  }

  v16 = *(v0 + 728);
  v17 = *(v0 + 720);
  v18 = *(v0 + 712);
  v19 = *(v0 + 704);
  v20 = *(v0 + 696);
  (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  v89 = *(v19 + 32);
  v89(v16, v17, v20);
  (*(v19 + 16))(v18, v16, v20);
  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v21);
  }

  v24 = *(v0 + 712);
  v25 = *(v0 + 704);
  v26 = *(v0 + 696);
  v27 = *(v0 + 664);
  v28 = *(v0 + 656);
  v29 = *(v0 + 648);
  v83 = *(v0 + 640);
  v85 = *(v0 + 616);
  v87 = *(v0 + 592);
  v30 = *(v0 + 304);
  v31 = *(v0 + 264);
  v21[2] = v23 + 1;
  v89(v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v24, v26);
  *(v0 + 216) = v21;
  v90 = *(v30 + 16);
  (*(v28 + 16))(v27, v30 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v29);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v32 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v91 + v32, v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v87, 1, v33);
  v36 = *(v0 + 592);
  if (v35 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 592), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v37 = *(v0 + 592);
    UUID.uuidString.getter();
    (*(v34 + 8))(v36, v33);
  }

  v38 = *(v0 + 664);
  v39 = *(v0 + 656);
  v40 = *(v0 + 640);
  v41 = *(v0 + 632);
  v80 = *(v0 + 624);
  v81 = *(v0 + 648);
  v42 = *(v0 + 616);
  v43 = *(v0 + 608);
  v79 = *(v0 + 600);
  v44 = *(v0 + 408);
  v82 = *(v0 + 584);
  v84 = *(v0 + 304);
  v86 = *(v0 + 280);
  v88 = *(v0 + 736);
  v92 = *(v0 + 272);
  *(swift_task_alloc() + 16) = v0 + 216;
  v78 = lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse);
  *(v0 + 784) = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v43 + 8))(v42, v79);
  (*(v41 + 8))(v40, v80);
  (*(v39 + 8))(v38, v81);
  v45 = type metadata accessor for TaskPriority();
  (*(*(v45 - 8) + 56))(v82, 1, 1, v45);

  v46 = static MainActor.shared.getter();
  v47 = swift_allocObject();
  v48 = MEMORY[0x277D85700];
  v47[2] = v46;
  v47[3] = v48;
  v47[4] = v84;
  v47[5] = v92;
  v47[6] = v86;
  *(v0 + 792) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v82, &async function pointer to partial apply for closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), v47);
  if (GenerativeAssistantFeatureFlagManager.isTextContentStreamEnabled.getter())
  {
    v49 = *(v0 + 544);
    v50 = TokenStreamHandler.stream(fields:)();
    if (_swift_isClassOrObjCExistentialType())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v50 & 0xC000000000000001) == 0, v50, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_Md, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_MR);
      if ((v50 & 0xC000000000000001) != 0)
      {
        v51 = *(v0 + 560);
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v50);
        if (v51 != 8)
        {
          __break(1u);
          return MEMORY[0x282200310](v52, v53, v54);
        }

        v55 = *(v0 + 576);
        v56 = *(v0 + 552);
        v57 = *(v0 + 544);
        *(v0 + 224) = v52;
        v58 = *(v56 + 16);
        v58(v55, v0 + 224, v57);
        swift_unknownObjectRelease();
LABEL_23:

        v64 = *(v0 + 576);
        v65 = *(v0 + 568);
        v66 = *(v0 + 544);
        v67 = *(v0 + 536);
        v68 = *(v0 + 408);
        *(v0 + 40) = 0;
        *(v0 + 48) = 0xE000000000000000;
        v58(v65, v64, v66);
        *(v0 + 56) = v68;
        *(v0 + 64) = v78;
        *(v0 + 800) = swift_getOpaqueTypeConformance2();
        dispatch thunk of AsyncSequence.makeAsyncIterator()();
        *(v0 + 864) = *MEMORY[0x277D4B398];
        *(v0 + 808) = 0xE000000000000000;
        v69 = *(v0 + 800);
        v70 = *(v0 + 736);
        v71 = *(v0 + 544);
        v72 = *(v0 + 520);
        v73 = static MainActor.shared.getter();
        *(v0 + 816) = v73;
        swift_getAssociatedConformanceWitness();
        v74 = *(MEMORY[0x277D856D8] + 4);
        v75 = swift_task_alloc();
        *(v0 + 824) = v75;
        *v75 = v0;
        v75[1] = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
        v76 = *(v0 + 536);
        v77 = *(v0 + 520);
        v52 = *(v0 + 512);
        v54 = MEMORY[0x277D85700];
        v53 = v73;

        return MEMORY[0x282200310](v52, v53, v54);
      }
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v50, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_Md, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_MR);
    }

    v63 = *(v0 + 552);
    v58 = *(v63 + 16);
    v58(*(v0 + 576), v50 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), *(v0 + 544));
    goto LABEL_23;
  }

  v59 = swift_task_alloc();
  *(v0 + 848) = v59;
  *v59 = v0;
  v59[1] = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  v60 = *(v0 + 352);
  v61 = *(v0 + 304);

  return DefaultModelSession.getBlockingResponse(_:)(v60);
}

{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v11 = *v1;

  if (v0)
  {
    v4 = v2[102];
    v5 = v2[101];

    v6 = v2[95];
    v7 = v2[94];
    v8 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  else
  {
    v9 = v2[102];

    v6 = v2[95];
    v7 = v2[94];
    v8 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 808);
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

    v5 = *(MEMORY[0x277D4B018] + 4);
    v6 = swift_task_alloc();
    *(v0 + 832) = v6;
    *v6 = v0;
    v6[1] = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
    v7 = *(v0 + 784);
    v8 = *(v0 + 440);
    v9 = *(v0 + 344);

    return MEMORY[0x2821AB610](v8, v9);
  }

  else
  {
    v10 = *(v0 + 864);
    v12 = *(v0 + 472);
    v11 = *(v0 + 480);
    v13 = *(v0 + 464);
    (*(v3 + 32))(*(v0 + 504), v1, v2);
    Field.data.getter();
    if ((*(v12 + 88))(v11, v13) == v10)
    {
      v14 = *(v0 + 480);
      v15 = *(v0 + 456);
      v17 = *(v0 + 400);
      v16 = *(v0 + 408);
      v18 = *(v0 + 392);
      v69 = *(v0 + 368);
      v71 = *(v0 + 384);
      (*(*(v0 + 472) + 96))(v14, *(v0 + 464));
      v19 = v14[1];
      *(v0 + 72) = *v14;
      *(v0 + 80) = v19;
      *(v0 + 88) = 28252;
      *(v0 + 96) = 0xE200000000000000;
      *(v0 + 104) = 10;
      *(v0 + 112) = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v22 = v21;

      *(v0 + 120) = v20;
      *(v0 + 128) = v22;
      *(v0 + 136) = 92;
      *(v0 + 144) = 0xE100000000000000;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0xE000000000000000;
      v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v25 = v24;

      *(v0 + 168) = v23;
      *(v0 + 176) = v25;
      *(v0 + 184) = 8796;
      *(v0 + 192) = 0xE200000000000000;
      *(v0 + 200) = 34;
      *(v0 + 208) = 0xE100000000000000;
      v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v28 = v27;

      MEMORY[0x253056FE0](v26, v28);

      v29 = type metadata accessor for URL();
      v30 = *(*(v29 - 8) + 56);
      v30(v17, 1, 1, v29);
      v31 = v16[8];
      v30(v15 + v31, 1, 1, v29);
      v32 = v16[9];
      *(v15 + 8) = 0;
      *(v15 + 16) = 0xE000000000000000;
      outlined assign with copy of URL?(v17, v15 + v31);
      v33 = MEMORY[0x277D84F90];
      *(v15 + v32) = MEMORY[0x277D84F90];
      *(v15 + 32) = v33;
      *(v15 + v16[10]) = 0;
      *(v15 + v16[11]) = 0;
      v34 = (v15 + v16[12]);
      *v34 = 0;
      v34[1] = 0xE000000000000000;
      outlined destroy of OnScreenContent.Document?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v35 = (v15 + v16[13]);
      *v35 = 0;
      v35[1] = 0xE000000000000000;
      *(v15 + 24) = 0;
      v36 = *(v0 + 48);
      v68 = *(v0 + 40);
      *v18 = v68;
      v18[1] = v36;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of UploadableMedia.Source(v18, v71, type metadata accessor for GeneratedResponse.RichContentEntity);
      swift_bridgeObjectRetain_n();
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v33);
      v39 = v37[2];
      v38 = v37[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v37);
        v40 = v39 + 1;
        v37 = v63;
      }

      v41 = *(v0 + 496);
      v70 = *(v0 + 488);
      v72 = *(v0 + 504);
      v42 = *(v0 + 456);
      v44 = *(v0 + 408);
      v43 = *(v0 + 416);
      v45 = *(v0 + 384);
      v46 = *(v0 + 376);
      v47 = *(v0 + 360);
      v66 = *(v0 + 296);
      v67 = *(v0 + 392);
      v65 = *(v0 + 288);
      v48 = (v42 + *(v44 + 56));
      v37[2] = v40;
      outlined init with take of ModelResponse(v45, v37 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v42 = v37;
      *v48 = v68;
      v48[1] = v36;
      outlined init with copy of UploadableMedia.Source(v42, v47, type metadata accessor for ModelResponse);
      (*(v43 + 56))(v47, 0, 1, v44);
      v65(v47);
      outlined destroy of OnScreenContent.Document?(v47, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
      outlined destroy of UploadableDocumentData(v67, type metadata accessor for GeneratedResponse.RichContentEntity);
      (*(v41 + 8))(v72, v70);
      outlined destroy of UploadableDocumentData(v42, type metadata accessor for ModelResponse);
    }

    else
    {
      v49 = *(v0 + 480);
      v50 = *(v0 + 464);
      v51 = *(v0 + 472);
      (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
      (*(v51 + 8))(v49, v50);
      v36 = *(v0 + 808);
    }

    *(v0 + 808) = v36;
    v52 = *(v0 + 800);
    v53 = *(v0 + 736);
    v54 = *(v0 + 544);
    v55 = *(v0 + 520);
    v56 = static MainActor.shared.getter();
    *(v0 + 816) = v56;
    swift_getAssociatedConformanceWitness();
    v57 = *(MEMORY[0x277D856D8] + 4);
    v58 = swift_task_alloc();
    *(v0 + 824) = v58;
    *v58 = v0;
    v58[1] = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
    v59 = *(v0 + 536);
    v60 = *(v0 + 520);
    v61 = *(v0 + 512);
    v62 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v61, v56, v62);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v8 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v4 = v2[95];
    v5 = v2[94];
    v6 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  else
  {
    (*(v2[42] + 8))(v2[43], v2[41]);
    v4 = v2[95];
    v5 = v2[94];
    v6 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v73 = v0;
  v1 = v0[93];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[51];
  v5 = v0[52];
  v6 = v0[45];
  v8 = v0[36];
  v7 = v0[37];

  outlined init with take of ModelResponse(v2, v3, type metadata accessor for ModelResponse);
  outlined init with copy of UploadableMedia.Source(v3, v6, type metadata accessor for ModelResponse);
  v9 = *(v5 + 56);
  v9(v6, 0, 1, v4);
  v8(v6);
  outlined destroy of OnScreenContent.Document?(v6, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v10 = v0[56];
  v11 = v0[54];
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.modelInteraction);
  outlined init with copy of UploadableMedia.Source(v10, v11, type metadata accessor for ModelResponse);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[54];
  if (v15)
  {
    v17 = v0[53];
    v69 = v0[51];
    v18 = v0[39];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v72[0] = v20;
    *v19 = 136315650;
    v21 = _typeName(_:qualified:)();
    v23 = v9;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v72);

    *(v19 + 4) = v24;
    v9 = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000061, 0x800000024FE335A0, v72);
    *(v19 + 22) = 2080;
    outlined init with copy of UploadableMedia.Source(v16, v17, type metadata accessor for ModelResponse);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    outlined destroy of UploadableDocumentData(v16, type metadata accessor for ModelResponse);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v72);

    *(v19 + 24) = v28;
    _os_log_impl(&dword_24FD67000, v13, v14, "%s.%s FINAL CONTENT: %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v20, -1, -1);
    MEMORY[0x253057F40](v19, -1, -1);
  }

  else
  {

    outlined destroy of UploadableDocumentData(v16, type metadata accessor for ModelResponse);
  }

  v29 = v0[72];
  v30 = v0[69];
  v31 = v0[68];
  v32 = v0[56];
  v33 = v0[45];
  v35 = v0[36];
  v34 = v0[37];
  v9(v33, 1, 1, v0[51]);
  v35(v33);
  outlined destroy of OnScreenContent.Document?(v33, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  outlined destroy of UploadableDocumentData(v32, type metadata accessor for ModelResponse);
  (*(v30 + 8))(v29, v31);
  v36 = v0[99];
  v37 = v0[98];
  v38 = v0[91];
  v39 = v0[90];
  v40 = v0[89];
  v41 = v0[88];
  v42 = v0[87];
  v43 = v0[86];
  v44 = v0[83];
  v49 = v0[80];
  v50 = v0[77];
  v51 = v0[74];
  v52 = v0[73];
  v53 = v0[72];
  v54 = v0[71];
  v55 = v0[67];
  v56 = v0[64];
  v57 = v0[63];
  v58 = v0[60];
  v59 = v0[57];
  v60 = v0[56];
  v61 = v0[55];
  v62 = v0[54];
  v63 = v0[53];
  v64 = v0[50];
  v65 = v0[49];
  v66 = v0[48];
  v67 = v0[45];
  v68 = v0[44];
  v70 = v0[43];
  v71 = v0[40];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v36, MEMORY[0x277D84F78] + 8, v45, MEMORY[0x277D84950]);

  (*(v41 + 8))(v38, v42);
  v46 = v0[27];

  v47 = v0[1];

  return v47();
}

{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *v1;
  *(*v1 + 856) = v0;

  v5 = *(v2 + 760);
  v6 = *(v2 + 752);
  if (v0)
  {
    v7 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  else
  {
    v7 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[93];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[44];
  v6 = v0[36];
  v5 = v0[37];

  (*(v3 + 56))(v4, 0, 1, v2);
  v6(v4);
  outlined destroy of OnScreenContent.Document?(v4, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  v7 = v0[99];
  v8 = v0[98];
  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[89];
  v12 = v0[88];
  v13 = v0[87];
  v14 = v0[86];
  v15 = v0[83];
  v20 = v0[80];
  v21 = v0[77];
  v22 = v0[74];
  v23 = v0[73];
  v24 = v0[72];
  v25 = v0[71];
  v26 = v0[67];
  v27 = v0[64];
  v28 = v0[63];
  v29 = v0[60];
  v30 = v0[57];
  v31 = v0[56];
  v32 = v0[55];
  v33 = v0[54];
  v34 = v0[53];
  v35 = v0[50];
  v36 = v0[49];
  v37 = v0[48];
  v38 = v0[45];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v0[40];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v7, MEMORY[0x277D84F78] + 8, v16, MEMORY[0x277D84950]);

  (*(v12 + 8))(v9, v13);
  v17 = v0[27];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[93];
  v2 = v0[72];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v0[29];
  v9 = v0[99];
  v10 = v0[98];
  v11 = v0[97];
  v12 = v0[96];
  v13 = v0[91];
  v23 = v0[90];
  v24 = v0[89];
  v14 = v0[88];
  v22 = v0[87];
  v25 = v0[86];
  v26 = v0[83];
  v27 = v0[80];
  v28 = v0[77];
  v29 = v0[74];
  v30 = v0[73];
  v31 = v0[72];
  v32 = v0[71];
  v33 = v0[67];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[60];
  v37 = v0[57];
  v38 = v0[56];
  v39 = v0[55];
  v40 = v0[54];
  v41 = v0[53];
  v42 = v0[50];
  v43 = v0[49];
  v44 = v0[48];
  v45 = v0[45];
  v46 = v0[44];
  v47 = v0[43];
  v15 = v0[40];
  v16 = v0[38];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v9, MEMORY[0x277D84F78] + 8, v17, MEMORY[0x277D84950]);

  v18 = type metadata accessor for OSSignpostID();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2, v15);
  outlined destroy of OnScreenContent.Document?(v15, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  DefaultModelSession.customizeError(_:)(v8);
  swift_willThrow();

  (*(v14 + 8))(v13, v22);
  v19 = v0[27];

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[93];
  v2 = v0[72];
  v3 = v0[69];
  v4 = v0[68];

  (*(v3 + 8))(v2, v4);
  v5 = v0[105];
  v6 = v0[99];
  v7 = v0[98];
  v8 = v0[97];
  v9 = v0[96];
  v10 = v0[91];
  v20 = v0[90];
  v21 = v0[89];
  v11 = v0[88];
  v19 = v0[87];
  v22 = v0[86];
  v23 = v0[83];
  v24 = v0[80];
  v25 = v0[77];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[72];
  v29 = v0[71];
  v30 = v0[67];
  v31 = v0[64];
  v32 = v0[63];
  v33 = v0[60];
  v34 = v0[57];
  v35 = v0[56];
  v36 = v0[55];
  v37 = v0[54];
  v38 = v0[53];
  v39 = v0[50];
  v40 = v0[49];
  v41 = v0[48];
  v42 = v0[45];
  v43 = v0[44];
  v44 = v0[43];
  v12 = v0[40];
  v13 = v0[38];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v6, MEMORY[0x277D84F78] + 8, v14, MEMORY[0x277D84950]);

  v15 = type metadata accessor for OSSignpostID();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2, v12);
  outlined destroy of OnScreenContent.Document?(v12, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  DefaultModelSession.customizeError(_:)(v5);
  swift_willThrow();

  (*(v11 + 8))(v10, v19);
  v16 = v0[27];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[93];

  v2 = v0[107];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[91];
  v17 = v0[90];
  v18 = v0[89];
  v8 = v0[88];
  v16 = v0[87];
  v19 = v0[86];
  v20 = v0[83];
  v21 = v0[80];
  v22 = v0[77];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[67];
  v28 = v0[64];
  v29 = v0[63];
  v30 = v0[60];
  v31 = v0[57];
  v32 = v0[56];
  v33 = v0[55];
  v34 = v0[54];
  v35 = v0[53];
  v36 = v0[50];
  v37 = v0[49];
  v38 = v0[48];
  v39 = v0[45];
  v40 = v0[44];
  v41 = v0[43];
  v9 = v0[40];
  v10 = v0[38];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v3, MEMORY[0x277D84F78] + 8, v11, MEMORY[0x277D84950]);

  v12 = type metadata accessor for OSSignpostID();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2, v9);
  outlined destroy of OnScreenContent.Document?(v9, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  DefaultModelSession.customizeError(_:)(v2);
  swift_willThrow();

  (*(v8 + 8))(v7, v16);
  v13 = v0[27];

  v14 = v0[1];

  return v14();
}

uint64_t closure #1 in closure #1 in DefaultModelSession.registerImageInLineAndGenerateResponse(userQuery:image:useCaseID:keepAliveCallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = type metadata accessor for Prompt();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25[-1] - v14;
  v26 = &type metadata for PromptImage;
  v27 = lazy protocol witness table accessor for type PromptImage and conformance PromptImage();
  v25[0] = a1;
  v16 = a1;
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v25);
  v26 = MEMORY[0x277D837D0];
  v27 = MEMORY[0x277D42EC0];
  v25[0] = a2;
  v25[1] = a3;

  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v17 = *(v8 + 72);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24FE1A8C0;
  v20 = v19 + v18;
  v21 = *(v9 + 16);
  v21(v20, v15, v7);
  v21(v20 + v17, v13, v7);
  MEMORY[0x253056D20](v19, v7, MEMORY[0x277D42E18]);

  v22 = *(v9 + 8);
  v22(v13, v7);
  return (v22)(v15, v7);
}

uint64_t closure #1 in closure #1 in DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = MEMORY[0x277D42EC0];
  v16[0] = a1;
  v16[1] = a2;

  v10 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v11 = *(v5 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24FE1A560;
  (*(v6 + 16))(v13 + v12, v9, v4);
  MEMORY[0x253056D20](v13, v4, v10);

  return (*(v6 + 8))(v9, v4);
}

uint64_t closure #3 in DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)(void *a1)
{
  v2 = type metadata accessor for ChatMessagesPrompt();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[3] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PromptKit011ChatMessageA0VGMd, &_sSay9PromptKit011ChatMessageA0VGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ChatMessagePrompt] and conformance <A> [A], &_sSay9PromptKit011ChatMessageA0VGMd, &_sSay9PromptKit011ChatMessageA0VGMR);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24FE1A560;
  (*(v3 + 16))(v9 + v8, v6, v2);
  MEMORY[0x253056D00](v9);

  return (*(v3 + 8))(v6, v2);
}

uint64_t implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)()
{
  v1 = *(MEMORY[0x277D71C00] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:);

  return MEMORY[0x2821D9A18]();
}

uint64_t implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t closure #1 in DefaultModelSession.getModelResponse(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for PromptCompletion.Annotation();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v54 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v56 = &v50[-v7];
  v55 = type metadata accessor for URL();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PromptCompletion.URLCitation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for PromptCompletion.Annotation.Type();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v50[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  PromptCompletion.Annotation.type.getter();
  if ((*(v18 + 88))(v21, v17) == *MEMORY[0x277D71BE8])
  {
    (*(v18 + 96))(v21, v17);
    (*(v13 + 32))(v16, v21, v12);
    PromptCompletion.URLCitation.url.getter();
    v22 = URL.absoluteString.getter();
    v24 = v23;
    (*(v8 + 8))(v11, v55);
    v25 = String.asDisplayURL.getter(v22, v24);
    v27 = v26;
    result = (*(v13 + 8))(v16, v12);
    if (!v27)
    {

      v25 = v22;
      v27 = v24;
    }

    v29 = v59;
    *v59 = v25;
    v29[1] = v27;
    v29[2] = v22;
    v29[3] = v24;
  }

  else
  {
    v55 = v17;
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.modelInteraction);
    v32 = v56;
    v31 = v57;
    v33 = *(v57 + 16);
    v34 = v58;
    v33(v56, a1, v58);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v52 = v35;
      v38 = v37;
      v53 = swift_slowAlloc();
      v60 = v53;
      *v38 = 136315138;
      v51 = v36;
      v33(v54, v32, v34);
      v39 = String.init<A>(describing:)();
      v40 = v34;
      v41 = v39;
      v43 = v42;
      (*(v31 + 8))(v32, v40);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v60);

      v45 = v38;
      *(v38 + 4) = v44;
      v46 = v52;
      _os_log_impl(&dword_24FD67000, v52, v51, "Unexpected annotation type: %s", v45, 0xCu);
      v47 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x253057F40](v47, -1, -1);
      MEMORY[0x253057F40](v45, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v32, v34);
    }

    v48 = v55;
    v49 = v59;
    *v59 = 0u;
    *(v49 + 1) = 0u;
    return (*(v18 + 8))(v21, v48);
  }

  return result;
}

uint64_t closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for CancellationError();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock.Instant();
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v13 = type metadata accessor for ContinuousClock();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[21] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[22] = v17;
  v6[23] = v16;

  return MEMORY[0x2822009F8](closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), v17, v16);
}

uint64_t closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)()
{
  v9 = v0;
  if (one-time initialization token for generativeResponse != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 192) = __swift_project_value_buffer(v1, static Logger.generativeResponse);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000024FE336A0, &v8);
    _os_log_impl(&dword_24FD67000, v2, v3, "[keep-alive]: %s starting task for keep-alive callbacks", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  *(v0 + 200) = 1;
  v6 = *(v0 + 160);
  static Clock<>.continuous.getter();
  *(v0 + 40) = xmmword_24FE1BE20;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), 0, 0);
}

{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[26] = v8;
  v0[27] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:);
  v11 = v0[20];
  v13 = v0[17];
  v12 = v0[18];

  return MEMORY[0x2822008C8](v13, v0 + 2, v12, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v12 = *v1;
  *(*v1 + 232) = v0;

  v4 = *(v2 + 216);
  if (v0)
  {
    (*(v2 + 208))(*(v2 + 136), *(v2 + 112));
    v5 = closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v9 = *(v2 + 152);
    v8 = *(v2 + 160);
    v10 = *(v2 + 144);
    (*(v2 + 208))(*(v2 + 136), *(v2 + 112));
    (*(v9 + 8))(v8, v10);
    v6 = *(v2 + 176);
    v7 = *(v2 + 184);
    v5 = closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:);
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  v1 = *(v0 + 232);
  v2 = static Task<>.checkCancellation()();
  if (v1)
  {
    v3 = *(v0 + 168);

    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    *(v0 + 56) = v1;
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_dynamicCast();
    v8 = *(v0 + 192);
    if (v7)
    {

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_24FD67000, v9, v10, "[keep-alive]: keep-alive task canceled, potentially due to receiving response successfully; no longer sending heartbeats", v11, 2u);
        MEMORY[0x253057F40](v11, -1, -1);
      }

      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 88);

      (*(v13 + 8))(v12, v14);
      goto LABEL_19;
    }

    v29 = v1;
    v24 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v30))
    {

LABEL_19:
      v37 = *(v0 + 160);
      v38 = *(v0 + 128);
      v39 = *(v0 + 136);
      v40 = *(v0 + 104);

      v41 = *(v0 + 8);

      return v41();
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v1;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_24FD67000, v24, v30, "[keep-alive]: task encountered error: %@", v31, 0xCu);
    outlined destroy of OnScreenContent.Document?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v32, -1, -1);
    MEMORY[0x253057F40](v31, -1, -1);

LABEL_18:
    goto LABEL_19;
  }

  v15 = *(v0 + 192);
  v16 = *(v0 + 80);
  (*(v0 + 72))(v2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24FD67000, v17, v18, "[keep-alive]: did invoke app intent keep-alive callback", v19, 2u);
    MEMORY[0x253057F40](v19, -1, -1);
  }

  v20 = *(v0 + 200);

  if (v20 == 11)
  {
    v21 = *(v0 + 192);
    v22 = *(v0 + 168);
    v23 = *(v0 + 64);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 64);
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = 60;

      _os_log_impl(&dword_24FD67000, v24, v25, "[keep-alive]: %ld seconds passed, allow app intent to naturally time out", v28, 0xCu);
      MEMORY[0x253057F40](v28, -1, -1);
    }

    else
    {
      v36 = *(v0 + 64);
    }

    goto LABEL_18;
  }

  ++*(v0 + 200);
  v35 = *(v0 + 160);
  static Clock<>.continuous.getter();
  *(v0 + 40) = xmmword_24FE1BE20;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), 0, 0);
}

{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[22];
  v2 = v0[23];

  return MEMORY[0x2822009F8](closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), v1, v2);
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 232);
  *(v0 + 56) = v2;
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 192);
  if (v6)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24FD67000, v8, v9, "[keep-alive]: keep-alive task canceled, potentially due to receiving response successfully; no longer sending heartbeats", v10, 2u);
      MEMORY[0x253057F40](v10, -1, -1);
    }

    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);

    (*(v12 + 8))(v11, v13);
    v14 = *(v0 + 56);
  }

  else
  {

    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24FD67000, v16, v17, "[keep-alive]: task encountered error: %@", v18, 0xCu);
      outlined destroy of OnScreenContent.Document?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v19, -1, -1);
      MEMORY[0x253057F40](v18, -1, -1);

      goto LABEL_9;
    }

    v14 = v2;
  }

LABEL_9:
  v22 = *(v0 + 160);
  v23 = *(v0 + 128);
  v24 = *(v0 + 136);
  v25 = *(v0 + 104);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t DefaultModelSession.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters;
  v3 = type metadata accessor for SamplingParameters();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  outlined destroy of OnScreenContent.Document?(&v0[OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v4 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_modelBundle;
  v5 = type metadata accessor for ModelBundle();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_featureFlagManager;
  v7 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DefaultModelSession()
{
  result = type metadata singleton initialization cache for DefaultModelSession;
  if (!type metadata singleton initialization cache for DefaultModelSession)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DefaultModelSession()
{
  v0 = type metadata accessor for SamplingParameters();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for Locale?();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for ModelBundle();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Locale?()
{
  if (!lazy cache variable for type metadata for Locale?)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Locale?);
    }
  }
}

uint64_t protocol witness for ModelSession.registerDocument(_:uploadProgressCallback:) in conformance DefaultModelSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of ContentLoaderProviding.load();

  return DefaultModelSession.registerDocument(_:uploadProgressCallback:)(a1, a2, a3);
}

uint64_t protocol witness for ModelSession.registerImage(_:uploadProgressCallback:) in conformance DefaultModelSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return DefaultModelSession.registerImage(_:uploadProgressCallback:)(a1, a2, a3);
}

uint64_t getProcessIdenitifierForSiri()()
{
  v0 = MEMORY[0x253056EA0](0x6C7070612E6D6F63, 0xEE00697269732E65);
  v1 = [objc_opt_self() predicateMatchingBundleIdentifier_];

  type metadata accessor for RBSProcessHandle();
  v2 = v1;
  v3 = specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(v2);

  v4 = [v3 pid];
  return v4;
}

void closure #1 in URL.setExtendedAttribute(_:forName:)(const char *a1, uint64_t a2, unint64_t a3)
{
  value[12] = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v5)
    {
      value[0] = a2;
      LOWORD(value[1]) = a3;
      BYTE2(value[1]) = BYTE2(a3);
      BYTE3(value[1]) = BYTE3(a3);
      BYTE4(value[1]) = BYTE4(a3);
      v6 = BYTE6(a3);
      BYTE5(value[1]) = BYTE5(a3);
      v7 = (String.utf8CString.getter() + 32);
      v8 = value;
      v9 = a1;
LABEL_18:
      v16 = v6;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v10 = *(a2 + 16);
    v11 = __DataStorage._bytes.getter();
    if (v11)
    {
      v12 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_30;
      }

      v11 += v10 - v12;
    }

    MEMORY[0x2530551C0]();
    v14 = *(a2 + 16);
    v13 = *(a2 + 24);
    v6 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_11:
    if (a2 > a2 >> 32)
    {
      __break(1u);
    }

    else
    {
      v11 = __DataStorage._bytes.getter();
      if (v11)
      {
        v15 = __DataStorage._offset.getter();
        if (__OFSUB__(a2, v15))
        {
          goto LABEL_31;
        }

        v11 += a2 - v15;
      }

      MEMORY[0x2530551C0]();
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v6 = HIDWORD(a2) - a2;
LABEL_17:
        v7 = (String.utf8CString.getter() + 32);
        v9 = a1;
        v8 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  memset(value, 0, 14);
  v7 = (String.utf8CString.getter() + 32);
  v8 = value;
  v9 = a1;
  v16 = 0;
LABEL_20:
  v17 = setxattr(v9, v7, v8, v16, 0, 0);

  if ((v17 & 0x80000000) == 0)
  {
LABEL_27:
    v38 = *MEMORY[0x277D85DE8];
    return;
  }

  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.modelInteraction);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v19, v20))
  {

    goto LABEL_27;
  }

  v21 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  value[0] = v39;
  *v21 = 136315650;
  *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(5001813, 0xE300000000000000, value);
  *(v21 + 12) = 2080;
  *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000024FE33570, value);
  *(v21 + 22) = 2080;
  v22 = MEMORY[0x253056B60]();
  v23 = *MEMORY[0x277CCA5B8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  v25 = *MEMORY[0x277CCA450];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v26;
  v27 = v23;
  if (strerror(v22))
  {
    v28 = String.init(cString:)();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v28;
    *(inited + 56) = v29;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of OnScreenContent.Document?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    v30 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = [v30 initWithDomain:v27 code:v22 userInfo:isa];

    v33 = [v32 localizedDescription];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, value);

    *(v21 + 24) = v37;
    _os_log_impl(&dword_24FD67000, v19, v20, "%s.%s Extended attribute could not be set: %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v39, -1, -1);
    MEMORY[0x253057F40](v21, -1, -1);

    goto LABEL_27;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExtendedAttributeUtils()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExtendedAttributeUtils()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExtendedAttributeUtils()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExtendedAttributeUtils@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExtendedAttributeUtils.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ExtendedAttributeUtils(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657079;
  v3 = 0x745F656372756F73;
  v4 = 0xEE00657079745F65;
  v5 = 0x6D696D5F656C6966;
  if (*v1 != 2)
  {
    v5 = 0x5F65746973626577;
    v4 = 0xEB000000006C7275;
  }

  if (*v1)
  {
    v3 = 0x6D616E5F656C6966;
    v2 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a1 >> 62)
  {

    JUMPOUT(0x253057520);
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v3 = a1;
  }

  return *(v3 + 16);
}

uint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(uint64_t result, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v6 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = _swift_isClassOrObjCExistentialType();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = a3 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v7 = a3;
  }

  if (*(v7 + 16) <= v6)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_Md, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_MR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a2 >> 62)
  {
    v12 = _CocoaArrayWrapper.subscript.getter();
    v19 = v12;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v9, v4);
      return v12;
    }

    goto LABEL_15;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v16 = "ce>) -> Array<some>>>.0";
    v17 = 0xD000000000000046;
    goto LABEL_17;
  }

  if (isClassOrObjCExistentialType)
  {
    v14 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v14 = a2;
  }

  if (*(v14 + 16) <= a1)
  {
    goto LABEL_14;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v19 = v12;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v11, v4);
    return v12;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v16 = "";
  v17 = 0xD000000000000043;
LABEL_17:
  MEMORY[0x253056FE0](v17, v16 | 0x8000000000000000);
  MEMORY[0x253056FE0](0xD000000000000048, 0x800000024FE33610);
  MEMORY[0x253056FE0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v18 = _typeName(_:qualified:)();
  MEMORY[0x253056FE0](v18);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a2 >> 62)
  {
    v12 = _CocoaArrayWrapper.subscript.getter();
    v19 = v12;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v9, v4);
      return v12;
    }

    goto LABEL_15;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v16 = "ce>) -> Array<some>>>.0";
    v17 = 0xD000000000000046;
    goto LABEL_17;
  }

  if (isClassOrObjCExistentialType)
  {
    v14 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v14 = a2;
  }

  if (*(v14 + 16) <= a1)
  {
    goto LABEL_14;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v19 = v12;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v11, v4);
    return v12;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v16 = "";
  v17 = 0xD000000000000043;
LABEL_17:
  MEMORY[0x253056FE0](v17, v16 | 0x8000000000000000);
  MEMORY[0x253056FE0](0xD000000000000057, 0x800000024FE334C0);
  MEMORY[0x253056FE0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v18 = _typeName(_:qualified:)();
  MEMORY[0x253056FE0](v18);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError()
{
  result = lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError;
  if (!lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError;
  if (!lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

void partial apply for closure #1 in URL.setExtendedAttribute(_:forName:)(const char *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  closure #1 in URL.setExtendedAttribute(_:forName:)(a1, v1[2], v1[3]);
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t partial apply for closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ModelResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PromptImage and conformance PromptImage()
{
  result = lazy protocol witness table cache variable for type PromptImage and conformance PromptImage;
  if (!lazy protocol witness table cache variable for type PromptImage and conformance PromptImage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptImage and conformance PromptImage);
  }

  return result;
}

uint64_t outlined consume of Attribution?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined assign with take of ExternalPartnerAuthenticator?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5Anvil28ExternalPartnerAuthenticatorVSgMd, &_s5Anvil28ExternalPartnerAuthenticatorVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModelResponseText and conformance ModelResponseText()
{
  result = lazy protocol witness table cache variable for type ModelResponseText and conformance ModelResponseText;
  if (!lazy protocol witness table cache variable for type ModelResponseText and conformance ModelResponseText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText and conformance ModelResponseText);
  }

  return result;
}

uint64_t sub_24FDD5DF4()
{
  v1 = type metadata accessor for PromptCompletion.ImageContent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)()
{
  v1 = *(type metadata accessor for PromptCompletion.ImageContent() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = partial apply for implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:);

  return implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of UploadableDocumentData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of UploadableMedia.Source(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *specialized static DefaultModelSession.getTools(tooling:enableBrowserTool:)(uint64_t a1, int a2)
{
  v82 = a2;
  v3 = type metadata accessor for FileGenerationParameters();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v87 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageGenerationParameters.Size();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v81 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImageGenerationParameters.Count();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](v11);
  v80 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ImageGenerationParameters.Detail();
  v74 = *(v76 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v77 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ImageGenerationParameters.Shape();
  v69 = *(v70 - 8);
  v16 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v72 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ImageGenerationParameters();
  v73 = *(v75 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v71 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ToolType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v88 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v86 = &v65 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v91 = &v65 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v68 = &v65 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v90 = &v65 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v65 - v33;
  v35 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v84 = *(v35 - 8);
  v85 = v35;
  v36 = *(v84 + 64);
  MEMORY[0x28223BE20](v35);
  v83 = &v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 + 16);
  v39 = MEMORY[0x277D84F90];
  v89 = v3;
  if (v38)
  {
    v65 = v8;
    v66 = v7;
    v67 = v4;
    v93 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = v93;
    v40 = a1 + 32;
    do
    {
      outlined init with copy of GenerativeAssistantFeatureFlagManaging(v40, v92);
      static ToolType.tooling(_:)();
      __swift_destroy_boxed_opaque_existential_0(v92);
      v93 = v39;
      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
        v39 = v93;
      }

      v39[2] = v42 + 1;
      (*(v21 + 32))(v39 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v42, v34, v20);
      v40 += 40;
      --v38;
    }

    while (v38);
    v3 = v89;
    v4 = v67;
    v7 = v66;
    v8 = v65;
  }

  v43 = v83;
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v44 = GenerativeAssistantFeatureFlagManager.isMultiImageGenerationEnabled.getter();
  (*(v84 + 8))(v43, v85);
  if (v44)
  {
    (*(v69 + 104))(v72, *MEMORY[0x277D0DCE0], v70);
    (*(v74 + 104))(v77, *MEMORY[0x277D0DCE8], v76);
    (*(v78 + 104))(v80, *MEMORY[0x277D0DCD8], v79);
    (*(v8 + 104))(v81, *MEMORY[0x277D0DCD0], v7);
    v45 = v71;
    ImageGenerationParameters.init(size:shape:detail:count:modelName:)();
    static ToolType.imageGenerationTool(parameters:)();
    (*(v73 + 8))(v45, v75);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    }

    v47 = v39[2];
    v46 = v39[3];
    v48 = v47 + 1;
    v3 = v89;
    v49 = v90;
    if (v47 >= v46 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v39);
      v49 = v90;
      v39 = v50;
    }
  }

  else
  {
    v51 = v68;
    static ToolType.imageGenerator.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    }

    v47 = v39[2];
    v52 = v39[3];
    v48 = v47 + 1;
    if (v47 >= v52 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v47 + 1, 1, v39);
    }

    v49 = v51;
  }

  v39[2] = v48;
  v53 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v54 = *(v21 + 72);
  v90 = *(v21 + 32);
  (v90)(v39 + v53 + v54 * v47, v49, v20);
  v55 = v87;
  FileGenerationParameters.init()();
  v56 = v91;
  static ToolType.fileGenerationTool(parameters:)();
  (*(v4 + 8))(v55, v3);
  v57 = v86;
  (*(v21 + 16))(v86, v56, v20);
  v59 = v39[2];
  v58 = v39[3];
  if (v59 >= v58 >> 1)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1, v39);
  }

  v39[2] = v59 + 1;
  (v90)(v39 + v53 + v54 * v59, v57, v20);
  if (one-time initialization token for _enableWebSources != -1)
  {
    swift_once();
  }

  if (byte_27F39FB50)
  {
    v60 = unk_27F39FB40;
    v61 = static Overrides._enableWebSources;

    v60(v92, v61);

    if (LOBYTE(v92[0]) != 2 && (v92[0] & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  if (v82)
  {
LABEL_26:
    static ToolType.browser.getter();
    v63 = v39[2];
    v62 = v39[3];
    if (v63 >= v62 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1, v39);
    }

    (*(v21 + 8))(v91, v20);
    v39[2] = v63 + 1;
    (v90)(v39 + v53 + v63 * v54, v88, v20);
  }

  else
  {
    (*(v21 + 8))(v91, v20);
  }

  return v39;
}

unint64_t type metadata accessor for RBSProcessHandle()
{
  result = lazy cache variable for type metadata for RBSProcessHandle;
  if (!lazy cache variable for type metadata for RBSProcessHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBSProcessHandle);
  }

  return result;
}

id specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t objectdestroy_39Tm()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for ExtendedAttributeUtils(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtendedAttributeUtils(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExtendedAttributeUtils and conformance ExtendedAttributeUtils()
{
  result = lazy protocol witness table cache variable for type ExtendedAttributeUtils and conformance ExtendedAttributeUtils;
  if (!lazy protocol witness table cache variable for type ExtendedAttributeUtils and conformance ExtendedAttributeUtils)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtendedAttributeUtils and conformance ExtendedAttributeUtils);
  }

  return result;
}

unint64_t specialized ExtendedAttributeUtils.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExtendedAttributeUtils.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelOrchestrator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for ModelOrchestrator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26GenerativeAssistantActions17ModelOrchestratorV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelOrchestrator.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ModelOrchestrator.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ModelOrchestrator.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v40 = *MEMORY[0x277D85DE8];
  *(v9 + 1656) = v8;
  *(v9 + 1648) = v42;
  *(v9 + 1640) = a8;
  *(v9 + 1545) = a7;
  *(v9 + 1632) = a5;
  *(v9 + 1624) = a4;
  *(v9 + 1616) = a3;
  *(v9 + 1608) = a2;
  *(v9 + 1600) = a1;
  v11 = type metadata accessor for GATError();
  *(v9 + 1664) = v11;
  v12 = *(v11 - 8);
  *(v9 + 1672) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 1680) = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock.Instant();
  *(v9 + 1688) = v14;
  v15 = *(v14 - 8);
  *(v9 + 1696) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  v17 = type metadata accessor for ContinuousClock();
  *(v9 + 1720) = v17;
  v18 = *(v17 - 8);
  *(v9 + 1728) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 1736) = swift_task_alloc();
  v20 = type metadata accessor for UploadableMedia.Source(0);
  *(v9 + 1744) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v9 + 1752) = swift_task_alloc();
  v22 = type metadata accessor for UploadableImageData(0);
  *(v9 + 1760) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v9 + 1768) = swift_task_alloc();
  v24 = *(*(type metadata accessor for UploadableDocumentData(0) - 8) + 64) + 15;
  *(v9 + 1776) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR) - 8) + 64) + 15;
  *(v9 + 1784) = swift_task_alloc();
  *(v9 + 1792) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v9 + 1800) = swift_task_alloc();
  v27 = type metadata accessor for ModelResponse();
  *(v9 + 1808) = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  *(v9 + 1816) = swift_task_alloc();
  *(v9 + 1824) = swift_task_alloc();
  v29 = *(*(type metadata accessor for GenerativeAssistantFeatureFlagManager() - 8) + 64) + 15;
  *(v9 + 1832) = swift_task_alloc();
  v30 = type metadata accessor for GenerativeRequestMetadata();
  *(v9 + 1840) = v30;
  v31 = *(v30 - 8);
  *(v9 + 1848) = v31;
  *(v9 + 1856) = *(v31 + 64);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  v32 = *(a6 + 112);
  *(v9 + 112) = *(a6 + 96);
  *(v9 + 128) = v32;
  *(v9 + 144) = *(a6 + 128);
  v33 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v33;
  v34 = *(a6 + 80);
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = v34;
  v35 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v35;
  *(v9 + 1880) = type metadata accessor for MainActor();
  *(v9 + 1888) = static MainActor.shared.getter();
  v36 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 1896) = v36;
  *(v9 + 1904) = v37;
  v38 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v36, v37);
}

uint64_t ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1840);
  v24 = *(v0 + 1648);
  v22 = *(v0 + 1656);
  v23 = *(v0 + 1640);
  v2 = *(v0 + 1624);
  v3 = type metadata accessor for CallEmergencyServicesTool(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  *(v0 + 1912) = v6;
  v6[2] = 0xD000000000000017;
  v6[3] = 0x800000024FE33A40;
  v6[4] = 0xD000000000000B1ELL;
  v6[5] = 0x800000024FE33A60;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = 0;
  *(v0 + 1920) = OBJC_IVAR____TtC26GenerativeAssistantActions25CallEmergencyServicesTool___observationRegistrar;
  ObservationRegistrar.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24FE1A560;
  *(v7 + 56) = v3;
  *(v7 + 64) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  *(v7 + 32) = v6;
  v8 = type metadata accessor for UseDeviceAssistantTool(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v0 + 1928) = v11;
  *(v11 + 16) = 0xD000000000000014;
  *(v11 + 24) = 0x800000024FE34580;
  *(v11 + 32) = 0x100000000000019ALL;
  *(v11 + 40) = 0x800000024FE345A0;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v0 + 1936) = OBJC_IVAR____TtC26GenerativeAssistantActions22UseDeviceAssistantTool___observationRegistrar;

  ObservationRegistrar.init()();
  v12 = v1[11];
  *(v0 + 1548) = v12;
  v13 = (v2 + v1[13]);
  v14 = *v13;
  *(v0 + 1944) = *v13;
  v15 = v13[1];
  *(v0 + 1952) = v15;
  v16 = *(v2 + 40);
  *(v0 + 1546) = v16;
  v17 = *(v2 + v1[12]);
  *(v0 + 1547) = v17;
  if ((specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(v23, v24) & 1) == 0 && (specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(v14, v15, v2 + v12) & 1) == 0)
  {
    v18 = *(v0 + 1656);
    v19 = *(v18 + 112);
    __swift_project_boxed_opaque_existential_1((v22 + 80), *(v18 + 104));
    if (!(v16 & 1 | ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) == 0) | v17 & 1))
    {

      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v7);
      *(v0 + 1264) = v8;
      *(v0 + 1272) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
      *(v0 + 1240) = v11;
      *(v7 + 16) = 2;
      outlined init with take of TypedValueAsyncResolvable((v0 + 1240), v7 + 72);
    }
  }

  *(v0 + 1960) = v7;
  *(v0 + 1968) = swift_allocObject();
  v20 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
}

{
  v41 = v0;
  v40 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1547);
  v37 = *(v0 + 1546);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1548);
  v5 = *(v0 + 1840);
  v6 = *(v0 + 1656);
  v7 = *(v0 + 1648);
  v8 = *(v0 + 1640);
  v9 = *(v0 + 1624);
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v39 = *(v9 + 41);
  v10 = DefaultPromptFactory.createPrompt(appBundleID:interactionMode:directInvocationClientId:sessionID:partnerInfo:isExplicitRequest:isFirstRequest:)(v8, v7, &v39, v9 + v4, v3, v2, v9 + *(v5 + 40), v37, v1);
  v11 = *(v0 + 1960);
  v31 = *(v0 + 1546);
  v32 = *(v0 + 1547);
  v30 = *(v0 + 1952);
  v12 = *(v0 + 1944);
  v13 = *(v0 + 1548);
  v33 = *(v0 + 1872);
  v34 = *(v0 + 1832);
  v14 = *(v0 + 1648);
  v15 = *(v0 + 1640);
  v38 = *(v0 + 1545);
  v16 = *(v0 + 1624);
  v35 = v17;
  v36 = v10;
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v39 = *(v9 + 41);
  v18 = DefaultPromptFactory.getTemplateID(appBundleID:interactionMode:directInvocationClientId:sessionID:isExplicitRequest:isFirstRequest:)(v15, v14, &v39, v16 + v13, v12, v30, v31, v32);
  v20 = v19;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v16, v33, type metadata accessor for GenerativeRequestMetadata);

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v21 = type metadata accessor for DefaultModelSession();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = DefaultModelSession.init(systemPrompt:tools:requestMetadata:enableBrowserTool:templateID:featureFlagManager:)(v36, v35, v11, v33, v38, v18, v20, v34);
  *(v0 + 1976) = 0;
  v26 = *(v0 + 1968);
  *(v0 + 1304) = v21;
  *(v0 + 1312) = &protocol witness table for DefaultModelSession;
  *(v0 + 1280) = v24;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1280), v26 + 16);
  v27 = *(v0 + 1904);
  v28 = *(v0 + 1896);
  v25 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v28, v27);
}

{
  v90 = v0;
  v89[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1968);
  v2 = *(v0 + 1880);
  v3 = *(v0 + 1800);
  v4 = swift_allocObject();
  *(v0 + 1984) = v4;
  *(v4 + 16) = 0;
  v5 = type metadata accessor for TaskPriority();
  *(v0 + 1992) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  *(v0 + 2000) = v7;
  *(v0 + 2008) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  (v7)(v3, 1, 1, v5);
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v0 + 2016) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v9);
  v11 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + 16);
  v12 = *(GenerativeExperiencesSession.registeredDocuments()() + 16);

  if (v12)
  {
    v86 = v0 + 560;
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v87 = v7;
    v88 = v4;
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.modelInteraction);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v89[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v89);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v89);
      _os_log_impl(&dword_24FD67000, v14, v15, "%s.%s Session has registered documents, skipping registration", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v17, -1, -1);
      MEMORY[0x253057F40](v16, -1, -1);
    }

    v85 = &async function pointer to partial apply for closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
LABEL_13:
    v25 = *(v0 + 1968);
    v26 = *(v0 + 1880);
    v27 = *(v0 + 1864);
    v28 = *(v0 + 1856);
    v29 = *(v0 + 1848);
    v84 = *(v0 + 1800);
    v30 = *(v0 + 1624);
    v31 = *(v0 + 1616);
    v32 = *(v0 + 1608);
    v87();
    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v30, v27, type metadata accessor for GenerativeRequestMetadata);

    outlined init with copy of IntentCallbackManager(v0 + 16, v86);
    v33 = static MainActor.shared.getter();
    v34 = (*(v29 + 80) + 64) & ~*(v29 + 80);
    v35 = swift_allocObject();
    v35[2] = v33;
    v35[3] = MEMORY[0x277D85700];
    v35[4] = v88;
    v35[5] = v25;
    v35[6] = v32;
    v35[7] = v31;
    outlined init with take of GeneratedResponse(v27, v35 + v34, type metadata accessor for GenerativeRequestMetadata);
    v36 = v35 + ((v28 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
    v37 = *(v0 + 128);
    *(v36 + 6) = *(v0 + 112);
    *(v36 + 7) = v37;
    *(v36 + 16) = *(v0 + 144);
    v38 = *(v0 + 64);
    *(v36 + 2) = *(v0 + 48);
    *(v36 + 3) = v38;
    v39 = *(v0 + 96);
    *(v36 + 4) = *(v0 + 80);
    *(v36 + 5) = v39;
    v40 = *(v0 + 32);
    *v36 = *(v0 + 16);
    *(v36 + 1) = v40;
    v41 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v84, v85, v35);

    *(v0 + 1592) = v41;
    v42 = *(v0 + 1976);
    *(v0 + 2088) = v41;
    v43 = *(v0 + 1984);
    v44 = *(v0 + 1936);
    v45 = *(v0 + 1928);
    swift_getKeyPath();
    v46 = swift_task_alloc();
    *(v46 + 16) = v45;
    *(v46 + 24) = v41;
    *(v0 + 1584) = v45;
    *(v0 + 2096) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_beginAccess();
    v47 = *(v0 + 1736);
    static Clock<>.continuous.getter();
    *(v0 + 1552) = xmmword_24FE1C1D0;
    *(v0 + 1528) = 0u;
    *(v0 + 1544) = 1;
    v48 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
  }

  v18 = *(v0 + 1792);
  outlined init with copy of Date?(*(v0 + 1632), v18, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  v19 = type metadata accessor for UploadableMedia(0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    v86 = v0 + 968;
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v87 = v7;
    v88 = v4;
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.modelInteraction);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v89[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v89);
      *(v23 + 12) = 2080;
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v89);
      _os_log_impl(&dword_24FD67000, v21, v22, "%s.%s Generating for text creation.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v24, -1, -1);
      MEMORY[0x253057F40](v23, -1, -1);
    }

    v85 = &async function pointer to partial apply for closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    goto LABEL_13;
  }

  v49 = *(v0 + 1792);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *(v0 + 1968);
    outlined init with take of GeneratedResponse(v49, *(v0 + 1776), type metadata accessor for UploadableDocumentData);
    v51 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v51;
    *(v0 + 416) = *(v0 + 144);
    v52 = *(v0 + 64);
    *(v0 + 320) = *(v0 + 48);
    *(v0 + 336) = v52;
    v53 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v53;
    v54 = *(v0 + 32);
    *(v0 + 288) = *(v0 + 16);
    *(v0 + 304) = v54;
    v55 = swift_task_alloc();
    *(v0 + 2032) = v55;
    *v55 = v0;
    v55[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    v56 = *(v0 + 1776);
    v57 = *(v0 + 1656);
    v58 = *MEMORY[0x277D85DE8];

    return ModelOrchestrator.registerDocument(_:_:_:)(v50 + 16, v56, v0 + 288);
  }

  else
  {
    v59 = *(v0 + 1768);
    v60 = *(v0 + 1760);
    v61 = *(v0 + 1752);
    v62 = *(v0 + 1744);
    outlined init with take of GeneratedResponse(v49, v59, type metadata accessor for UploadableImageData);
    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v59 + *(v60 + 28), v61, type metadata accessor for UploadableMedia.Source);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v64 = *(v0 + 1752);
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of OnScreenContent.Document?(v64, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v65 = v64[1];
      v66 = v64[2];
      v67 = v64[3];
    }

    v68 = *(v0 + 1768);
    v69 = specialized static GATSchemaGATMediaType.from(fileExtension:)();

    if (ModelOrchestrator.shouldUploadImage(image:)(v68))
    {
      v70 = *(v0 + 1968);
      v71 = *(v0 + 128);
      *(v0 + 792) = *(v0 + 112);
      *(v0 + 808) = v71;
      *(v0 + 824) = *(v0 + 144);
      v72 = *(v0 + 64);
      *(v0 + 728) = *(v0 + 48);
      *(v0 + 744) = v72;
      v73 = *(v0 + 96);
      *(v0 + 760) = *(v0 + 80);
      *(v0 + 776) = v73;
      v74 = *(v0 + 32);
      *(v0 + 696) = *(v0 + 16);
      *(v0 + 712) = v74;
      v75 = swift_task_alloc();
      *(v0 + 2048) = v75;
      *v75 = v0;
      v75[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
      v76 = *(v0 + 1768);
      v77 = *(v0 + 1656);
      v78 = *MEMORY[0x277D85DE8];

      return ModelOrchestrator.registerImage(_:_:_:_:)(v76, v69, v70 + 16, v0 + 696);
    }

    else
    {
      v79 = swift_task_alloc();
      *(v0 + 2064) = v79;
      *v79 = v0;
      v79[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
      v80 = *(v0 + 1768);
      v81 = *(v0 + 1656);
      v82 = *MEMORY[0x277D85DE8];

      return ModelOrchestrator.prepareInlineImage(_:_:)(v80, v69);
    }
  }
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[246];
  v2 = v0[241];
  v3 = v0[239];
  v4 = v0[236];

  swift_deallocUninitializedObject();
  v5 = v0[234];
  v6 = v0[233];
  v7 = v0[229];
  v8 = v0[228];
  v9 = v0[227];
  v10 = v0[225];
  v11 = v0[224];
  v12 = v0[223];
  v13 = v0[222];
  v14 = v0[221];
  v18 = v0[253];
  v19 = v0[219];
  v20 = v0[217];
  v21 = v0[214];
  v22 = v0[213];
  v23 = v0[210];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2032);
  v11 = *v1;
  *(*v1 + 2040) = v0;

  if (v0)
  {
    v4 = v2[245];

    v5 = v2[238];
    v6 = v2[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v5 = v2[238];
    v6 = v2[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v34 = *MEMORY[0x277D85DE8];
  v33 = *(v0 + 2016);
  v1 = *(v0 + 2008);
  v2 = *(v0 + 1992);
  v3 = *(v0 + 1984);
  v4 = *(v0 + 1968);
  v5 = *(v0 + 1880);
  v6 = *(v0 + 1864);
  v7 = *(v0 + 1856);
  v8 = *(v0 + 1848);
  v9 = *(v0 + 1800);
  v31 = v9;
  v32 = *(v0 + 1776);
  v10 = *(v0 + 1624);
  v11 = *(v0 + 1616);
  v12 = *(v0 + 1608);
  (*(v0 + 2000))();
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v10, v6, type metadata accessor for GenerativeRequestMetadata);

  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 152);
  v13 = static MainActor.shared.getter();
  v14 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v13;
  v15[3] = v16;
  v15[4] = v3;
  v15[5] = v4;
  v15[6] = v12;
  v15[7] = v11;
  outlined init with take of GeneratedResponse(v6, v15 + v14, type metadata accessor for GenerativeRequestMetadata);
  v17 = v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = *(v0 + 128);
  *(v17 + 6) = *(v0 + 112);
  *(v17 + 7) = v18;
  *(v17 + 16) = *(v0 + 144);
  v19 = *(v0 + 64);
  *(v17 + 2) = *(v0 + 48);
  *(v17 + 3) = v19;
  v20 = *(v0 + 96);
  *(v17 + 4) = *(v0 + 80);
  *(v17 + 5) = v20;
  v21 = *(v0 + 32);
  *v17 = *(v0 + 16);
  *(v17 + 1) = v21;
  v22 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v15);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v32, type metadata accessor for UploadableDocumentData);

  *(v0 + 1592) = v22;
  v23 = *(v0 + 2040);
  *(v0 + 2088) = v22;
  v24 = *(v0 + 1984);
  v25 = *(v0 + 1936);
  v26 = *(v0 + 1928);
  swift_getKeyPath();
  v27 = swift_task_alloc();
  *(v27 + 16) = v26;
  *(v27 + 24) = v22;
  *(v0 + 1584) = v26;
  *(v0 + 2096) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_beginAccess();
  v28 = *(v0 + 1736);
  static Clock<>.continuous.getter();
  *(v0 + 1552) = xmmword_24FE1C1D0;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 1;
  v29 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2048);
  v11 = *v1;
  *(*v1 + 2056) = v0;

  if (v0)
  {
    v4 = v2[245];

    v5 = v2[238];
    v6 = v2[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v5 = v2[238];
    v6 = v2[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v34 = *MEMORY[0x277D85DE8];
  v33 = *(v0 + 2016);
  v1 = *(v0 + 2008);
  v2 = *(v0 + 1992);
  v3 = *(v0 + 1984);
  v4 = *(v0 + 1968);
  v5 = *(v0 + 1880);
  v6 = *(v0 + 1864);
  v7 = *(v0 + 1856);
  v8 = *(v0 + 1848);
  v9 = *(v0 + 1800);
  v31 = v9;
  v32 = *(v0 + 1768);
  v10 = *(v0 + 1624);
  v11 = *(v0 + 1616);
  v12 = *(v0 + 1608);
  (*(v0 + 2000))();
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v10, v6, type metadata accessor for GenerativeRequestMetadata);

  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 424);
  v13 = static MainActor.shared.getter();
  v14 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v13;
  v15[3] = v16;
  v15[4] = v3;
  v15[5] = v4;
  v15[6] = v12;
  v15[7] = v11;
  outlined init with take of GeneratedResponse(v6, v15 + v14, type metadata accessor for GenerativeRequestMetadata);
  v17 = v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = *(v0 + 128);
  *(v17 + 6) = *(v0 + 112);
  *(v17 + 7) = v18;
  *(v17 + 16) = *(v0 + 144);
  v19 = *(v0 + 64);
  *(v17 + 2) = *(v0 + 48);
  *(v17 + 3) = v19;
  v20 = *(v0 + 96);
  *(v17 + 4) = *(v0 + 80);
  *(v17 + 5) = v20;
  v21 = *(v0 + 32);
  *v17 = *(v0 + 16);
  *(v17 + 1) = v21;
  v22 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v15);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v32, type metadata accessor for UploadableImageData);

  *(v0 + 1592) = v22;
  v23 = *(v0 + 2056);
  *(v0 + 2088) = v22;
  v24 = *(v0 + 1984);
  v25 = *(v0 + 1936);
  v26 = *(v0 + 1928);
  swift_getKeyPath();
  v27 = swift_task_alloc();
  *(v27 + 16) = v26;
  *(v27 + 24) = v22;
  *(v0 + 1584) = v26;
  *(v0 + 2096) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_beginAccess();
  v28 = *(v0 + 1736);
  static Clock<>.continuous.getter();
  *(v0 + 1552) = xmmword_24FE1C1D0;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 1;
  v29 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
}

{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2080);
  v35 = *(v0 + 2016);
  v2 = *(v0 + 2008);
  v3 = *(v0 + 1992);
  v4 = *(v0 + 1984);
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1880);
  v7 = *(v0 + 1864);
  v8 = *(v0 + 1856);
  v9 = *(v0 + 1848);
  v10 = *(v0 + 1800);
  v33 = v10;
  v34 = *(v0 + 1768);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1616);
  v32 = *(v0 + 1608);
  (*(v0 + 2000))();
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v11, v7, type metadata accessor for GenerativeRequestMetadata);

  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 832);
  v13 = v1;
  v14 = static MainActor.shared.getter();
  v15 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v14;
  v16[3] = v17;
  v16[4] = v4;
  v16[5] = v5;
  v16[6] = v32;
  v16[7] = v12;
  v16[8] = v13;
  outlined init with take of GeneratedResponse(v7, v16 + v15, type metadata accessor for GenerativeRequestMetadata);
  v18 = v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = *(v0 + 128);
  *(v18 + 6) = *(v0 + 112);
  *(v18 + 7) = v19;
  *(v18 + 16) = *(v0 + 144);
  v20 = *(v0 + 64);
  *(v18 + 2) = *(v0 + 48);
  *(v18 + 3) = v20;
  v21 = *(v0 + 96);
  *(v18 + 4) = *(v0 + 80);
  *(v18 + 5) = v21;
  v22 = *(v0 + 32);
  *v18 = *(v0 + 16);
  *(v18 + 1) = v22;
  v23 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v16);

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v34, type metadata accessor for UploadableImageData);

  *(v0 + 1592) = v23;
  v24 = *(v0 + 2072);
  *(v0 + 2088) = v23;
  v25 = *(v0 + 1984);
  v26 = *(v0 + 1936);
  v27 = *(v0 + 1928);
  swift_getKeyPath();
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = v23;
  *(v0 + 1584) = v27;
  *(v0 + 2096) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_beginAccess();
  v29 = *(v0 + 1736);
  static Clock<>.continuous.getter();
  *(v0 + 1552) = xmmword_24FE1C1D0;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 1;
  v30 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[217];
  v2 = v0[215];
  v3 = v0[214];
  v4 = v0[213];
  v5 = v0[212];
  v6 = v0[211];
  v7 = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[263] = v8;
  v0[264] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[265] = v10;
  *v10 = v0;
  v10[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v11 = v0[217];
  v12 = v0[215];
  v13 = v0[214];
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008C8](v13, v0 + 191, v12, v7);
}

{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2120);
  v19 = *v1;

  if (v0)
  {
    v4 = v2[264];
    v5 = v2[263];
    v6 = v2[214];
    v7 = v2[211];

    v5(v6, v7);
    v8 = *MEMORY[0x277D85DE8];
    v9 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = v2[264];
    v13 = v2[217];
    v14 = v2[216];
    v15 = v2[215];
    (v2[263])(v2[214], v2[211]);
    (*(v14 + 8))(v13, v15);
    v11 = v2[238];
    v10 = v2[237];
    v16 = *MEMORY[0x277D85DE8];
    v9 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v142 = v0;
  v141[1] = *MEMORY[0x277D85DE8];
  if ((*(*(v0 + 1984) + 16) & 1) == 0)
  {
    v1 = *(v0 + 2088);
    if ((swift_task_isCancelled() & 1) == 0)
    {
      v48 = *(v0 + 1736);
      static Clock<>.continuous.getter();
      *(v0 + 1552) = xmmword_24FE1C1D0;
      *(v0 + 1528) = 0u;
      *(v0 + 1544) = 1;
      v49 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
    }
  }

  v2 = *(v0 + 2088);
  if ((swift_task_isCancelled() & 1) == 0)
  {
    v43 = swift_task_alloc();
    *(v0 + 2128) = v43;
    *v43 = v0;
    v43[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    v44 = *(v0 + 1816);
    v45 = *(v0 + 1656);
    v46 = *MEMORY[0x277D85DE8];

    return specialized ModelOrchestrator.convertError<A>(_:)(v44, v45, v0 + 1592);
  }

  static ModelResponse.emptyModelResponse()(*(v0 + 1824));
  v3 = *(v0 + 1920);
  v4 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1576) = v4;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 64);
  if (v5)
  {
    v6 = *(v4 + 56);
    v7 = *(v0 + 1960);
    v8 = *(v0 + 1888);
    v9 = *(*(v0 + 1912) + 48);

    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.modelInteraction);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v141[0] = v14;
      *v13 = 136315650;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v141);
      *(v13 + 12) = 2080;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v141);
      *(v13 + 22) = 2080;
      *(v0 + 1456) = v9;
      *(v0 + 1464) = v6;
      *(v0 + 1472) = v5;

      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v141);

      *(v13 + 24) = v17;
      _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s Invoking callEmergencyServies Tool: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v14, -1, -1);
      MEMORY[0x253057F40](v13, -1, -1);
    }

    v18 = *(v0 + 1680);
    v19 = *(v0 + 1672);
    v20 = *(v0 + 1664);
    *v18 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(v9);
    v18[1] = v21;
    (*(v19 + 104))(v18, *MEMORY[0x277D0D718], v20);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 1680);
    v23 = GATError.errorCode.getter();
    if (v23 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v23 <= 0x7FFFFFFF)
    {
      v24 = *(v0 + 2088);
      v137 = *(v0 + 1968);
      v25 = *(v0 + 1928);
      v26 = *(v0 + 1912);
      v131 = *(v0 + 1984);
      v134 = *(v0 + 1824);
      v27 = *(v0 + 1680);
      v28 = *(v0 + 1672);
      v29 = *(v0 + 1664);
      SELFUtils.recordRequestFailed(code:domain:)(v23, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v28 + 32))(v30, v27, v29);

      swift_willThrow();

      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v134, type metadata accessor for ModelResponse);

      v31 = *(v0 + 1872);
      v32 = *(v0 + 1864);
      v33 = *(v0 + 1832);
      v34 = *(v0 + 1824);
      v35 = *(v0 + 1816);
      v36 = *(v0 + 1800);
      v37 = *(v0 + 1792);
      v38 = *(v0 + 1784);
      v39 = *(v0 + 1776);
      v40 = *(v0 + 1768);
      v127 = *(v0 + 1752);
      v129 = *(v0 + 1736);
      v132 = *(v0 + 1712);
      v135 = *(v0 + 1704);
      v138 = *(v0 + 1680);

      v41 = *(v0 + 8);
      v42 = *MEMORY[0x277D85DE8];
LABEL_43:

      return v41();
    }

    __break(1u);
    goto LABEL_48;
  }

  v50 = *(v0 + 2096);
  v51 = *(v0 + 1936);
  v52 = *(v0 + 1928);
  swift_getKeyPath();
  *(v0 + 1568) = v52;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *(v52 + 64);
  if (v53)
  {
    v54 = *(v0 + 1928);
    v55 = *(v0 + 1824);
    v56 = *(v0 + 1656);
    v57 = *(v0 + 1616);
    v58 = *(v0 + 1608);
    v59 = *(v54 + 72);
    v60 = *(v54 + 80);
    v61 = *(v54 + 56);
    *(v0 + 1320) = *(v54 + 48) & 1;
    *(v0 + 1328) = v61;
    *(v0 + 1336) = v53;
    *(v0 + 1344) = v59;
    *(v0 + 1352) = v60;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v58, v57, (v0 + 1320), v55);
  }

  if (one-time initialization token for modelInteraction != -1)
  {
LABEL_48:
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  *(v0 + 2144) = __swift_project_value_buffer(v62, static Logger.modelInteraction);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 1824);
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v141[0] = v67;
    *v66 = 136315650;
    *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v141);
    *(v66 + 12) = 2080;
    *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v141);
    *(v66 + 22) = 2080;
    swift_beginAccess();
    v68 = *v65;
    v69 = type metadata accessor for GeneratedResponse.RichContentEntity(0);

    v71 = MEMORY[0x2530570A0](v70, v69);
    v73 = v72;

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v141);

    *(v66 + 24) = v74;
    _os_log_impl(&dword_24FD67000, v63, v64, "%s.%s Received response %s", v66, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v67, -1, -1);
    MEMORY[0x253057F40](v66, -1, -1);
  }

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 1824);
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v141[0] = v79;
    *v78 = 136315650;
    *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v141);
    *(v78 + 12) = 2080;
    *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v141);
    *(v78 + 22) = 2080;
    swift_beginAccess();
    v80 = *(v77 + 32);

    v82 = MEMORY[0x2530570A0](v81, &type metadata for Attribution);
    v84 = v83;

    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v141);

    *(v78 + 24) = v85;
    _os_log_impl(&dword_24FD67000, v75, v76, "%s.%s Received attribution %s", v78, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v79, -1, -1);
    MEMORY[0x253057F40](v78, -1, -1);
  }

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = *(v0 + 1824);
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v141[0] = v90;
    *v89 = 136315650;
    *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v141);
    *(v89 + 12) = 2080;
    *(v89 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v141);
    *(v89 + 22) = 1024;
    swift_beginAccess();
    v91 = *(v88 + 24);
    v92 = v91 != 2 && (v91 & 1) != 0;
    *(v89 + 24) = v92;
    _os_log_impl(&dword_24FD67000, v86, v87, "%s.%s Received isRequestingUserInput %{BOOL}d", v89, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v90, -1, -1);
    MEMORY[0x253057F40](v89, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v93 = *(v0 + 1824);
  v94 = *(v0 + 1808);
  v95 = static SELFUtils.shared;
  swift_beginAccess();
  v96 = (v93 + *(v94 + 56));
  v98 = *v96;
  v97 = v96[1];
  *(v0 + 2152) = v97;

  v99 = String.count.getter();

  if ((v99 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
  }

  if (HIDWORD(v99))
  {
    goto LABEL_50;
  }

  v100 = *(v0 + 1960);
  v101 = *(v0 + 1824);
  v102 = &v95[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  swift_beginAccess();
  *v102 = v99;
  v102[4] = 0;
  v103 = *(v101 + 24);

  if (v103 == 2 || (v103 & 1) == 0)
  {
    v109 = *(v0 + 2088);
    v110 = *(v0 + 1984);
    v111 = *(v0 + 1928);
    v112 = *(v0 + 1912);
    v113 = *(v0 + 1888);
    v114 = *(v0 + 1824);
    v115 = *(v0 + 1600);

    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v114, v115, type metadata accessor for ModelResponse);

    v116 = *(v0 + 1968);
    v117 = *(v0 + 1872);
    v118 = *(v0 + 1864);
    v119 = *(v0 + 1832);
    v120 = *(v0 + 1816);
    v121 = *(v0 + 1800);
    v122 = *(v0 + 1792);
    v123 = *(v0 + 1784);
    v125 = *(v0 + 1776);
    v126 = *(v0 + 1768);
    v128 = *(v0 + 1752);
    v130 = *(v0 + 1736);
    v133 = *(v0 + 1712);
    v136 = *(v0 + 1704);
    v140 = *(v0 + 1680);
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(*(v0 + 1824), type metadata accessor for ModelResponse);

    v41 = *(v0 + 8);
    v124 = *MEMORY[0x277D85DE8];
    goto LABEL_43;
  }

  v105 = *(v0 + 40);
  v104 = *(v0 + 48);

  v139 = (v105 + *v105);
  v106 = v105[1];
  v107 = swift_task_alloc();
  *(v0 + 2160) = v107;
  *v107 = v0;
  v107[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v108 = *MEMORY[0x277D85DE8];

  return v139(v98, v97);
}

{
  v5 = *MEMORY[0x277D85DE8];
  (*(v0[216] + 8))(v0[217], v0[215]);
  v1 = v0[238];
  v2 = v0[237];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v2, v1);
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2128);
  v11 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v4 = v2[245];

    v5 = v2[238];
    v6 = v2[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v5 = v2[238];
    v6 = v2[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v134 = v0;
  v133[1] = *MEMORY[0x277D85DE8];
  outlined init with take of GeneratedResponse(*(v0 + 1816), *(v0 + 1824), type metadata accessor for ModelResponse);
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1576) = v2;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = *(v2 + 56);
    v5 = *(v0 + 1960);
    v6 = *(v0 + 1888);
    v7 = *(*(v0 + 1912) + 48);

    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.modelInteraction);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v133[0] = v12;
      *v11 = 136315650;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v133);
      *(v11 + 12) = 2080;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v133);
      *(v11 + 22) = 2080;
      *(v0 + 1456) = v7;
      *(v0 + 1464) = v4;
      *(v0 + 1472) = v3;

      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v133);

      *(v11 + 24) = v15;
      _os_log_impl(&dword_24FD67000, v9, v10, "%s.%s Invoking callEmergencyServies Tool: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v12, -1, -1);
      MEMORY[0x253057F40](v11, -1, -1);
    }

    v16 = *(v0 + 1680);
    v17 = *(v0 + 1672);
    v18 = *(v0 + 1664);
    *v16 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(v7);
    v16[1] = v19;
    (*(v17 + 104))(v16, *MEMORY[0x277D0D718], v18);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 1680);
    v21 = GATError.errorCode.getter();
    if (v21 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v21 <= 0x7FFFFFFF)
    {
      v22 = *(v0 + 2088);
      v129 = *(v0 + 1968);
      v23 = *(v0 + 1928);
      v24 = *(v0 + 1912);
      v123 = *(v0 + 1984);
      v126 = *(v0 + 1824);
      v25 = *(v0 + 1680);
      v26 = *(v0 + 1672);
      v27 = *(v0 + 1664);
      SELFUtils.recordRequestFailed(code:domain:)(v21, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v26 + 32))(v28, v25, v27);

      swift_willThrow();

      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v126, type metadata accessor for ModelResponse);

      v29 = *(v0 + 1872);
      v30 = *(v0 + 1864);
      v31 = *(v0 + 1832);
      v32 = *(v0 + 1824);
      v33 = *(v0 + 1816);
      v34 = *(v0 + 1800);
      v35 = *(v0 + 1792);
      v36 = *(v0 + 1784);
      v37 = *(v0 + 1776);
      v38 = *(v0 + 1768);
      v119 = *(v0 + 1752);
      v121 = *(v0 + 1736);
      v124 = *(v0 + 1712);
      v127 = *(v0 + 1704);
      v130 = *(v0 + 1680);

      v39 = *(v0 + 8);
      v40 = *MEMORY[0x277D85DE8];
LABEL_34:

      return v39();
    }

    __break(1u);
    goto LABEL_39;
  }

  v41 = *(v0 + 2096);
  v42 = *(v0 + 1936);
  v43 = *(v0 + 1928);
  swift_getKeyPath();
  *(v0 + 1568) = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v43 + 64);
  if (v44)
  {
    v45 = *(v0 + 1928);
    v46 = *(v0 + 1824);
    v47 = *(v0 + 1656);
    v48 = *(v0 + 1616);
    v49 = *(v0 + 1608);
    v50 = *(v45 + 72);
    v51 = *(v45 + 80);
    v52 = *(v45 + 56);
    *(v0 + 1320) = *(v45 + 48) & 1;
    *(v0 + 1328) = v52;
    *(v0 + 1336) = v44;
    *(v0 + 1344) = v50;
    *(v0 + 1352) = v51;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v49, v48, (v0 + 1320), v46);
  }

  if (one-time initialization token for modelInteraction != -1)
  {
LABEL_39:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  *(v0 + 2144) = __swift_project_value_buffer(v53, static Logger.modelInteraction);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = *(v0 + 1824);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v133[0] = v58;
    *v57 = 136315650;
    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v133);
    *(v57 + 12) = 2080;
    *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v133);
    *(v57 + 22) = 2080;
    swift_beginAccess();
    v59 = *v56;
    v60 = type metadata accessor for GeneratedResponse.RichContentEntity(0);

    v62 = MEMORY[0x2530570A0](v61, v60);
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v133);

    *(v57 + 24) = v65;
    _os_log_impl(&dword_24FD67000, v54, v55, "%s.%s Received response %s", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v58, -1, -1);
    MEMORY[0x253057F40](v57, -1, -1);
  }

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = *(v0 + 1824);
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v133[0] = v70;
    *v69 = 136315650;
    *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v133);
    *(v69 + 12) = 2080;
    *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v133);
    *(v69 + 22) = 2080;
    swift_beginAccess();
    v71 = *(v68 + 32);

    v73 = MEMORY[0x2530570A0](v72, &type metadata for Attribution);
    v75 = v74;

    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v133);

    *(v69 + 24) = v76;
    _os_log_impl(&dword_24FD67000, v66, v67, "%s.%s Received attribution %s", v69, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v70, -1, -1);
    MEMORY[0x253057F40](v69, -1, -1);
  }

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = *(v0 + 1824);
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v133[0] = v81;
    *v80 = 136315650;
    *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v133);
    *(v80 + 12) = 2080;
    *(v80 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v133);
    *(v80 + 22) = 1024;
    swift_beginAccess();
    v82 = *(v79 + 24);
    v83 = v82 != 2 && (v82 & 1) != 0;
    *(v80 + 24) = v83;
    _os_log_impl(&dword_24FD67000, v77, v78, "%s.%s Received isRequestingUserInput %{BOOL}d", v80, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v81, -1, -1);
    MEMORY[0x253057F40](v80, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v84 = *(v0 + 1824);
  v85 = *(v0 + 1808);
  v86 = static SELFUtils.shared;
  swift_beginAccess();
  v87 = (v84 + *(v85 + 56));
  v89 = *v87;
  v88 = v87[1];
  *(v0 + 2152) = v88;

  v90 = String.count.getter();

  if ((v90 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_41:
    __break(1u);
  }

  if (HIDWORD(v90))
  {
    goto LABEL_41;
  }

  v91 = *(v0 + 1960);
  v92 = *(v0 + 1824);
  v93 = &v86[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  swift_beginAccess();
  *v93 = v90;
  v93[4] = 0;
  v94 = *(v92 + 24);

  if (v94 == 2 || (v94 & 1) == 0)
  {
    v101 = *(v0 + 2088);
    v102 = *(v0 + 1984);
    v103 = *(v0 + 1928);
    v104 = *(v0 + 1912);
    v105 = *(v0 + 1888);
    v106 = *(v0 + 1824);
    v107 = *(v0 + 1600);

    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v106, v107, type metadata accessor for ModelResponse);

    v108 = *(v0 + 1968);
    v109 = *(v0 + 1872);
    v110 = *(v0 + 1864);
    v111 = *(v0 + 1832);
    v112 = *(v0 + 1816);
    v113 = *(v0 + 1800);
    v114 = *(v0 + 1792);
    v115 = *(v0 + 1784);
    v117 = *(v0 + 1776);
    v118 = *(v0 + 1768);
    v120 = *(v0 + 1752);
    v122 = *(v0 + 1736);
    v125 = *(v0 + 1712);
    v128 = *(v0 + 1704);
    v132 = *(v0 + 1680);
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(*(v0 + 1824), type metadata accessor for ModelResponse);

    v39 = *(v0 + 8);
    v116 = *MEMORY[0x277D85DE8];
    goto LABEL_34;
  }

  v96 = *(v0 + 40);
  v95 = *(v0 + 48);

  v131 = (v96 + *v96);
  v97 = v96[1];
  v98 = swift_task_alloc();
  *(v0 + 2160) = v98;
  *v98 = v0;
  v98[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v99 = *MEMORY[0x277D85DE8];

  return v131(v89, v88);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[269];

  v2 = v0[238];
  v3 = v0[237];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v3, v2);
}

{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2144);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2176);
    v6 = *(v0 + 2168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v26);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v26);
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v26);
    _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s Received user input %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v8, -1, -1);
    MEMORY[0x253057F40](v7, -1, -1);
  }

  v9 = *(v0 + 1784);
  v10 = type metadata accessor for UploadableMedia(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *(v0 + 80);
  *(v0 + 1184) = *(v0 + 96);
  v12 = *(v0 + 128);
  *(v0 + 1200) = *(v0 + 112);
  *(v0 + 1216) = v12;
  v13 = *(v0 + 16);
  *(v0 + 1120) = *(v0 + 32);
  v14 = *(v0 + 64);
  *(v0 + 1136) = *(v0 + 48);
  *(v0 + 1152) = v14;
  *(v0 + 1168) = v11;
  *(v0 + 1232) = *(v0 + 144);
  *(v0 + 1104) = v13;
  v15 = swift_task_alloc();
  *(v0 + 2192) = v15;
  *v15 = v0;
  v15[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v16 = *(v0 + 2176);
  v17 = *(v0 + 2168);
  v18 = *(v0 + 1784);
  v19 = *(v0 + 1656);
  v20 = *(v0 + 1640);
  v21 = *(v0 + 1545);
  v22 = *(v0 + 1624);
  v23 = *(v0 + 1600);
  v24 = *MEMORY[0x277D85DE8];
  v29 = *(v0 + 1648);

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v23, v17, v16, v22, v18, v0 + 1104, v21, v20);
}

{
  v27 = *MEMORY[0x277D85DE8];
  v1 = v0[261];
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[241];
  v5 = v0[239];
  v6 = v0[236];
  v7 = v0[228];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v7, type metadata accessor for ModelResponse);

  v8 = v0[234];
  v9 = v0[233];
  v10 = v0[229];
  v11 = v0[228];
  v12 = v0[227];
  v13 = v0[225];
  v14 = v0[224];
  v15 = v0[223];
  v16 = v0[222];
  v17 = v0[221];
  v21 = v0[273];
  v22 = v0[219];
  v23 = v0[217];
  v24 = v0[214];
  v25 = v0[213];
  v26 = v0[210];

  v18 = v0[1];
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = (*v1)[274];
  v12 = *v1;
  (*v1)[275] = v0;

  if (v0)
  {
    v4 = v2[272];
    outlined destroy of OnScreenContent.Document?(v2[223], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);

    v5 = v2[238];
    v6 = v2[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v8 = v2[272];
    outlined destroy of OnScreenContent.Document?(v2[223], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);

    v5 = v2[238];
    v6 = v2[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[261];
  v2 = v0[248];
  v3 = v0[241];
  v4 = v0[239];
  v5 = v0[236];

  v6 = v0[246];
  v7 = v0[234];
  v8 = v0[233];
  v9 = v0[229];
  v10 = v0[227];
  v11 = v0[225];
  v12 = v0[224];
  v13 = v0[223];
  v17 = v0[222];
  v18 = v0[221];
  v19 = v0[219];
  v20 = v0[217];
  v21 = v0[214];
  v22 = v0[213];
  v23 = v0[210];
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v0[228], type metadata accessor for ModelResponse);

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

{
  v27 = *MEMORY[0x277D85DE8];
  v1 = v0[252];
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[241];
  v5 = v0[239];
  v6 = v0[236];
  v7 = v0[222];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v7, type metadata accessor for UploadableDocumentData);

  v8 = v0[234];
  v9 = v0[233];
  v10 = v0[229];
  v11 = v0[228];
  v12 = v0[227];
  v13 = v0[225];
  v14 = v0[224];
  v15 = v0[223];
  v16 = v0[222];
  v17 = v0[221];
  v21 = v0[255];
  v22 = v0[219];
  v23 = v0[217];
  v24 = v0[214];
  v25 = v0[213];
  v26 = v0[210];

  v18 = v0[1];
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

{
  v27 = *MEMORY[0x277D85DE8];
  v1 = v0[252];
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[241];
  v5 = v0[239];
  v6 = v0[236];
  v7 = v0[221];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v7, type metadata accessor for UploadableImageData);

  v8 = v0[234];
  v9 = v0[233];
  v10 = v0[229];
  v11 = v0[228];
  v12 = v0[227];
  v13 = v0[225];
  v14 = v0[224];
  v15 = v0[223];
  v16 = v0[222];
  v17 = v0[221];
  v21 = v0[257];
  v22 = v0[219];
  v23 = v0[217];
  v24 = v0[214];
  v25 = v0[213];
  v26 = v0[210];

  v18 = v0[1];
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

{
  v27 = *MEMORY[0x277D85DE8];
  v1 = v0[252];
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[241];
  v5 = v0[239];
  v6 = v0[236];
  v7 = v0[221];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v7, type metadata accessor for UploadableImageData);

  v8 = v0[234];
  v9 = v0[233];
  v10 = v0[229];
  v11 = v0[228];
  v12 = v0[227];
  v13 = v0[225];
  v14 = v0[224];
  v15 = v0[223];
  v16 = v0[222];
  v17 = v0[221];
  v21 = v0[259];
  v22 = v0[219];
  v23 = v0[217];
  v24 = v0[214];
  v25 = v0[213];
  v26 = v0[210];

  v18 = v0[1];
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

{
  v26 = *MEMORY[0x277D85DE8];
  v1 = v0[261];
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[241];
  v5 = v0[239];
  v6 = v0[236];

  v7 = v0[234];
  v8 = v0[233];
  v9 = v0[229];
  v10 = v0[228];
  v11 = v0[227];
  v12 = v0[225];
  v13 = v0[224];
  v14 = v0[223];
  v15 = v0[222];
  v16 = v0[221];
  v20 = v0[267];
  v21 = v0[219];
  v22 = v0[217];
  v23 = v0[214];
  v24 = v0[213];
  v25 = v0[210];

  v17 = v0[1];
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v27 = *MEMORY[0x277D85DE8];
  v1 = v0[261];
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[241];
  v5 = v0[239];
  v6 = v0[236];
  v7 = v0[228];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v7, type metadata accessor for ModelResponse);

  v8 = v0[234];
  v9 = v0[233];
  v10 = v0[229];
  v11 = v0[228];
  v12 = v0[227];
  v13 = v0[225];
  v14 = v0[224];
  v15 = v0[223];
  v16 = v0[222];
  v17 = v0[221];
  v21 = v0[275];
  v22 = v0[219];
  v23 = v0[217];
  v24 = v0[214];
  v25 = v0[213];
  v26 = v0[210];

  v18 = v0[1];
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)();
}

uint64_t ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 2064);
  v13 = *v2;
  *(*v2 + 2072) = v1;

  if (v1)
  {
    v6 = v4[245];

    v7 = v4[238];
    v8 = v4[237];
    v9 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v4[260] = a1;
    v7 = v4[238];
    v8 = v4[237];
    v9 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = *(*v3 + 2160);
  v14 = *v3;
  v4[271] = a1;
  v4[272] = a2;
  v4[273] = v2;

  if (v2)
  {
    v6 = v4[269];

    v7 = v4[238];
    v8 = v4[237];
    v9 = *MEMORY[0x277D85DE8];
    v10 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v11 = *MEMORY[0x277D85DE8];
    v10 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    v8 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v10, v8, v7);
}

uint64_t ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v49 = *MEMORY[0x277D85DE8];
  *(v9 + 2280) = v8;
  *(v9 + 2272) = v52;
  *(v9 + 2264) = v51;
  *(v9 + 2256) = a8;
  *(v9 + 3284) = a7;
  *(v9 + 2248) = a5;
  *(v9 + 2240) = a4;
  *(v9 + 2232) = a3;
  *(v9 + 2224) = a2;
  *(v9 + 2216) = a1;
  v11 = type metadata accessor for GATError();
  *(v9 + 2288) = v11;
  v12 = *(v11 - 8);
  *(v9 + 2296) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 2304) = swift_task_alloc();
  v14 = type metadata accessor for UploadableMedia.Source(0);
  *(v9 + 2312) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v9 + 2320) = swift_task_alloc();
  v16 = type metadata accessor for UploadableImageData(0);
  *(v9 + 2328) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v9 + 2336) = swift_task_alloc();
  v18 = type metadata accessor for GenerativeAssistantUseCase();
  *(v9 + 2344) = v18;
  v19 = *(v18 - 8);
  *(v9 + 2352) = v19;
  *(v9 + 2360) = *(v19 + 64);
  *(v9 + 2368) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v9 + 2376) = swift_task_alloc();
  v21 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v9 + 2384) = v21;
  v22 = *(v21 - 8);
  *(v9 + 2392) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 2400) = swift_task_alloc();
  *(v9 + 2408) = swift_task_alloc();
  *(v9 + 2416) = swift_task_alloc();
  *(v9 + 2424) = swift_task_alloc();
  *(v9 + 2432) = swift_task_alloc();
  *(v9 + 2440) = swift_task_alloc();
  *(v9 + 2448) = swift_task_alloc();
  *(v9 + 2456) = swift_task_alloc();
  *(v9 + 2464) = swift_task_alloc();
  *(v9 + 2472) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v9 + 2480) = v24;
  v25 = *(v24 - 8);
  *(v9 + 2488) = v25;
  v26 = *(v25 + 64) + 15;
  *(v9 + 2496) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR) - 8) + 64) + 15;
  *(v9 + 2504) = swift_task_alloc();
  *(v9 + 2512) = swift_task_alloc();
  *(v9 + 2520) = swift_task_alloc();
  *(v9 + 2528) = swift_task_alloc();
  *(v9 + 2536) = swift_task_alloc();
  *(v9 + 2544) = swift_task_alloc();
  *(v9 + 2552) = swift_task_alloc();
  *(v9 + 2560) = swift_task_alloc();
  *(v9 + 2568) = swift_task_alloc();
  *(v9 + 2576) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v9 + 2584) = swift_task_alloc();
  *(v9 + 2592) = swift_task_alloc();
  *(v9 + 2600) = swift_task_alloc();
  *(v9 + 2608) = swift_task_alloc();
  *(v9 + 2616) = swift_task_alloc();
  *(v9 + 2624) = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR) - 8) + 64) + 15;
  *(v9 + 2632) = swift_task_alloc();
  *(v9 + 2640) = swift_task_alloc();
  *(v9 + 2648) = swift_task_alloc();
  *(v9 + 2656) = swift_task_alloc();
  *(v9 + 2664) = swift_task_alloc();
  *(v9 + 2672) = swift_task_alloc();
  *(v9 + 2680) = swift_task_alloc();
  *(v9 + 2688) = swift_task_alloc();
  *(v9 + 2696) = swift_task_alloc();
  *(v9 + 2704) = swift_task_alloc();
  v30 = type metadata accessor for GeneratedResponse(0);
  *(v9 + 2712) = v30;
  v31 = *(v30 - 8);
  *(v9 + 2720) = v31;
  v32 = *(v31 + 64) + 15;
  *(v9 + 2728) = swift_task_alloc();
  *(v9 + 2736) = swift_task_alloc();
  *(v9 + 2744) = swift_task_alloc();
  *(v9 + 2752) = swift_task_alloc();
  *(v9 + 2760) = swift_task_alloc();
  *(v9 + 2768) = swift_task_alloc();
  *(v9 + 2776) = swift_task_alloc();
  *(v9 + 2784) = swift_task_alloc();
  *(v9 + 2792) = swift_task_alloc();
  *(v9 + 2800) = swift_task_alloc();
  *(v9 + 2808) = swift_task_alloc();
  v33 = *(*(type metadata accessor for UploadableDocumentData(0) - 8) + 64) + 15;
  *(v9 + 2816) = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR) - 8) + 64) + 15;
  *(v9 + 2824) = swift_task_alloc();
  v35 = type metadata accessor for ModelResponse();
  *(v9 + 2832) = v35;
  v36 = *(*(v35 - 8) + 64) + 15;
  *(v9 + 2840) = swift_task_alloc();
  v37 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v9 + 2848) = v37;
  v38 = *(*(v37 - 8) + 64) + 15;
  *(v9 + 2856) = swift_task_alloc();
  v39 = type metadata accessor for GenerativeRequestMetadata();
  *(v9 + 2864) = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  *(v9 + 2872) = swift_task_alloc();
  v41 = *(a6 + 112);
  *(v9 + 1064) = *(a6 + 96);
  *(v9 + 1080) = v41;
  *(v9 + 1096) = *(a6 + 128);
  v42 = *(a6 + 48);
  *(v9 + 1000) = *(a6 + 32);
  *(v9 + 1016) = v42;
  v43 = *(a6 + 80);
  *(v9 + 1032) = *(a6 + 64);
  *(v9 + 1048) = v43;
  v44 = *(a6 + 16);
  *(v9 + 968) = *a6;
  *(v9 + 984) = v44;
  *(v9 + 2880) = type metadata accessor for MainActor();
  *(v9 + 2888) = static MainActor.shared.getter();
  v45 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 2896) = v45;
  *(v9 + 2904) = v46;
  v47 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v45, v46);
}

uint64_t ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:)()
{
  v21 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for CallEmergencyServicesTool(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 2912) = v4;
  v4[2] = 0xD000000000000017;
  v4[3] = 0x800000024FE33A40;
  v4[4] = 0xD000000000000B1ELL;
  v4[5] = 0x800000024FE33A60;
  v4[7] = 0;
  v4[8] = 0;
  v4[6] = 0;
  *(v0 + 2920) = OBJC_IVAR____TtC26GenerativeAssistantActions25CallEmergencyServicesTool___observationRegistrar;
  ObservationRegistrar.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24FE1A560;
  *(v5 + 56) = v1;
  *(v5 + 64) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  *(v5 + 32) = v4;
  v6 = one-time initialization token for modelInteraction;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  *(v0 + 2928) = __swift_project_value_buffer(v7, static Logger.modelInteraction);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v20);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v20);
    _os_log_impl(&dword_24FD67000, v8, v9, "%s.%s allowing model follow-up", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v11, -1, -1);
    MEMORY[0x253057F40](v10, -1, -1);
  }

  v12 = *(v0 + 2280);
  v13 = type metadata accessor for UseDeviceAssistantTool(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v0 + 2936) = v16;
  *(v16 + 16) = 0xD000000000000014;
  *(v16 + 24) = 0x800000024FE34580;
  *(v16 + 32) = 0x100000000000019ALL;
  *(v16 + 40) = 0x800000024FE345A0;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v0 + 2944) = OBJC_IVAR____TtC26GenerativeAssistantActions22UseDeviceAssistantTool___observationRegistrar;
  ObservationRegistrar.init()();
  v17 = v12[14];
  __swift_project_boxed_opaque_existential_1(v12 + 10, v12[13]);
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) != 0 && (*(*(v0 + 2240) + 40) & 1) == 0)
  {

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v5);
    *(v0 + 1848) = v13;
    *(v0 + 1856) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
    *(v0 + 1824) = v16;
    *(v5 + 16) = 2;
    outlined init with take of TypedValueAsyncResolvable((v0 + 1824), v5 + 72);
  }

  *(v0 + 2952) = v5;
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v41 = v0;
  v40 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2864);
  v2 = *(v0 + 2280);
  v3 = *(v0 + 2264);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2240);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  v39 = *(v5 + 41);
  v6 = (v5 + v1[13]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v1[10];
  v10 = v1[11];
  v11 = *(v5 + 40);
  v12 = *(v5 + v1[12]);
  *(v0 + 3285) = v12;
  v13 = v4;
  v14 = v7;
  v15 = DefaultPromptFactory.createPrompt(appBundleID:interactionMode:directInvocationClientId:sessionID:partnerInfo:isExplicitRequest:isFirstRequest:)(v13, v3, &v39, v5 + v10, v7, v8, v5 + v9, v11, v12);
  v34 = *(v0 + 2872);
  v35 = *(v0 + 2856);
  v16 = *(v0 + 2256);
  v38 = *(v0 + 3284);
  v32 = *(v0 + 2264);
  v33 = *(v0 + 2240);
  v36 = v17;
  v37 = v15;
  v18 = (v2 + 40);
  v19 = *(v2 + 64);
  v20 = *(v0 + 2952);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v39 = *(v5 + 41);
  v21 = DefaultPromptFactory.getTemplateID(appBundleID:interactionMode:directInvocationClientId:sessionID:isExplicitRequest:isFirstRequest:)(v16, v32, &v39, v5 + v10, v14, v8, v11, v12);
  v23 = v22;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v33, v34, type metadata accessor for GenerativeRequestMetadata);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v24 = type metadata accessor for DefaultModelSession();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = DefaultModelSession.init(systemPrompt:tools:requestMetadata:enableBrowserTool:templateID:featureFlagManager:)(v37, v36, v20, v34, v38, v21, v23, v35);
  *(v0 + 1608) = v24;
  *(v0 + 1616) = &protocol witness table for DefaultModelSession;
  *(v0 + 1584) = v27;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1584), v0 + 1344);
  v29 = *(v0 + 2904);
  v30 = *(v0 + 2896);
  v28 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v30, v29);
}

{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];
  v1 = (v0 + 968);
  v2 = *(*__swift_project_boxed_opaque_existential_1((v0 + 1344), *(v0 + 1368)) + 16);
  v3 = *(GenerativeExperiencesSession.registeredDocuments()() + 16);

  if (v3)
  {
    v4 = *(v0 + 2928);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v66[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v66);
      *(v7 + 12) = 2080;
      *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v66);
      _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s Session has registered documents, skipping registration", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v8, -1, -1);
      MEMORY[0x253057F40](v7, -1, -1);
    }

    *(v0 + 3290) = *(*(v0 + 2240) + 41);
    if (one-time initialization token for partnerName != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2864);
    v10 = *(&static Disclaimer.partnerName + 1);
    *(v0 + 3216) = static Disclaimer.partnerName;
    *(v0 + 3224) = v10;
    *(v0 + 3280) = *(v9 + 32);
    v11 = swift_allocObject();
    *(v0 + 3232) = v11;
    v12 = *(v0 + 1080);
    *(v11 + 112) = *(v0 + 1064);
    *(v11 + 128) = v12;
    *(v11 + 144) = *(v0 + 1096);
    v13 = *(v0 + 1016);
    *(v11 + 48) = *(v0 + 1000);
    *(v11 + 64) = v13;
    v14 = *(v0 + 1048);
    *(v11 + 80) = *(v0 + 1032);
    *(v11 + 96) = v14;
    v15 = *(v0 + 984);
    *(v11 + 16) = *v1;
    *(v11 + 32) = v15;
    outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 560);
    v16 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
LABEL_13:
    v31 = v16;

    v32 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](v31, 0, 0);
  }

  v17 = *(v0 + 2824);
  outlined init with copy of Date?(*(v0 + 2248), v17, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  v18 = type metadata accessor for UploadableMedia(0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    v19 = *(v0 + 2928);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v66[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v66);
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v66);
      _os_log_impl(&dword_24FD67000, v20, v21, "%s.%s Generating for streamed text creation.", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v23, -1, -1);
      MEMORY[0x253057F40](v22, -1, -1);
    }

    *(v0 + 3289) = *(*(v0 + 2240) + 41);
    if (one-time initialization token for partnerName != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 2864);
    v25 = *(&static Disclaimer.partnerName + 1);
    *(v0 + 3168) = static Disclaimer.partnerName;
    *(v0 + 3176) = v25;
    *(v0 + 3276) = *(v24 + 32);
    v26 = swift_allocObject();
    *(v0 + 3184) = v26;
    v27 = *(v0 + 1080);
    *(v26 + 112) = *(v0 + 1064);
    *(v26 + 128) = v27;
    *(v26 + 144) = *(v0 + 1096);
    v28 = *(v0 + 1016);
    *(v26 + 48) = *(v0 + 1000);
    *(v26 + 64) = v28;
    v29 = *(v0 + 1048);
    *(v26 + 80) = *(v0 + 1032);
    *(v26 + 96) = v29;
    v30 = *(v0 + 984);
    *(v26 + 16) = *v1;
    *(v26 + 32) = v30;
    outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 16);
    v16 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
    goto LABEL_13;
  }

  v33 = *(v0 + 2824);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of GeneratedResponse(v33, *(v0 + 2816), type metadata accessor for UploadableDocumentData);
    v34 = *(v0 + 1080);
    *(v0 + 384) = *(v0 + 1064);
    *(v0 + 400) = v34;
    *(v0 + 416) = *(v0 + 1096);
    v35 = *(v0 + 1016);
    *(v0 + 320) = *(v0 + 1000);
    *(v0 + 336) = v35;
    v36 = *(v0 + 1048);
    *(v0 + 352) = *(v0 + 1032);
    *(v0 + 368) = v36;
    v37 = *(v0 + 984);
    *(v0 + 288) = *v1;
    *(v0 + 304) = v37;
    v38 = swift_task_alloc();
    *(v0 + 2968) = v38;
    *v38 = v0;
    v38[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
    v39 = *(v0 + 2816);
    v40 = *(v0 + 2280);
    v41 = *MEMORY[0x277D85DE8];

    return ModelOrchestrator.registerDocument(_:_:_:)(v0 + 1344, v39, v0 + 288);
  }

  else
  {
    v42 = *(v0 + 2336);
    v43 = *(v0 + 2328);
    v44 = *(v0 + 2320);
    v45 = *(v0 + 2312);
    outlined init with take of GeneratedResponse(v33, v42, type metadata accessor for UploadableImageData);
    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v42 + *(v43 + 28), v44, type metadata accessor for UploadableMedia.Source);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v47 = *(v0 + 2320);
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of OnScreenContent.Document?(v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v48 = v47[1];
      v49 = v47[2];
      v50 = v47[3];
    }

    v51 = *(v0 + 2336);
    v52 = specialized static GATSchemaGATMediaType.from(fileExtension:)();

    if (ModelOrchestrator.shouldUploadImage(image:)(v51))
    {
      v53 = *(v0 + 1080);
      *(v0 + 792) = *(v0 + 1064);
      *(v0 + 808) = v53;
      *(v0 + 824) = *(v0 + 1096);
      v54 = *(v0 + 1016);
      *(v0 + 728) = *(v0 + 1000);
      *(v0 + 744) = v54;
      v55 = *(v0 + 1048);
      *(v0 + 760) = *(v0 + 1032);
      *(v0 + 776) = v55;
      v56 = *(v0 + 984);
      *(v0 + 696) = *v1;
      *(v0 + 712) = v56;
      v57 = swift_task_alloc();
      *(v0 + 3032) = v57;
      *v57 = v0;
      v57[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
      v58 = *(v0 + 2336);
      v59 = *(v0 + 2280);
      v60 = *MEMORY[0x277D85DE8];

      return ModelOrchestrator.registerImage(_:_:_:_:)(v58, v52, v0 + 1344, v0 + 696);
    }

    else
    {
      v61 = swift_task_alloc();
      *(v0 + 3096) = v61;
      *v61 = v0;
      v61[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
      v62 = *(v0 + 2336);
      v63 = *(v0 + 2280);
      v64 = *MEMORY[0x277D85DE8];

      return ModelOrchestrator.prepareInlineImage(_:_:)(v62, v52);
    }
  }
}

{
  v66 = *MEMORY[0x277D85DE8];
  v1 = v0[367];
  v2 = v0[364];
  v3 = v0[361];

  v4 = v0[359];
  v5 = v0[357];
  v6 = v0[355];
  v7 = v0[353];
  v8 = v0[352];
  v9 = v0[351];
  v10 = v0[350];
  v11 = v0[349];
  v12 = v0[348];
  v13 = v0[347];
  v17 = v0[370];
  v18 = v0[346];
  v19 = v0[345];
  v20 = v0[344];
  v21 = v0[343];
  v22 = v0[342];
  v23 = v0[341];
  v24 = v0[338];
  v25 = v0[337];
  v26 = v0[336];
  v27 = v0[335];
  v28 = v0[334];
  v29 = v0[333];
  v30 = v0[332];
  v31 = v0[331];
  v32 = v0[330];
  v33 = v0[329];
  v34 = v0[328];
  v35 = v0[327];
  v36 = v0[326];
  v37 = v0[325];
  v38 = v0[324];
  v39 = v0[323];
  v40 = v0[322];
  v41 = v0[321];
  v42 = v0[320];
  v43 = v0[319];
  v44 = v0[318];
  v45 = v0[317];
  v46 = v0[316];
  v47 = v0[315];
  v48 = v0[314];
  v49 = v0[313];
  v50 = v0[312];
  v51 = v0[309];
  v52 = v0[308];
  v53 = v0[307];
  v54 = v0[306];
  v55 = v0[305];
  v56 = v0[304];
  v57 = v0[303];
  v58 = v0[302];
  v59 = v0[301];
  v60 = v0[300];
  v61 = v0[297];
  v62 = v0[296];
  v63 = v0[292];
  v64 = v0[290];
  v65 = v0[288];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2968);
  v10 = *v1;
  *(*v1 + 2976) = v0;

  v4 = *(v2 + 2904);
  v5 = *(v2 + 2896);
  if (v0)
  {
    v6 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  else
  {
    v6 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v10 = *MEMORY[0x277D85DE8];
  *(v0 + 3286) = *(*(v0 + 2240) + 41);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2864);
  v2 = *(&static Disclaimer.partnerName + 1);
  *(v0 + 2984) = static Disclaimer.partnerName;
  *(v0 + 2992) = v2;
  *(v0 + 3264) = *(v1 + 32);
  v3 = swift_allocObject();
  *(v0 + 3000) = v3;
  v4 = *(v0 + 1080);
  *(v3 + 112) = *(v0 + 1064);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v0 + 1096);
  v5 = *(v0 + 1016);
  *(v3 + 48) = *(v0 + 1000);
  *(v3 + 64) = v5;
  v6 = *(v0 + 1048);
  *(v3 + 80) = *(v0 + 1032);
  *(v3 + 96) = v6;
  v7 = *(v0 + 984);
  *(v3 + 16) = *(v0 + 968);
  *(v3 + 32) = v7;

  outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 152);
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  v2 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v0[376] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v1 + v2) == 1)
  {
    v3 = v0[374];

    v4 = swift_task_alloc();
    v0[377] = v4;
    *v4 = v0;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
    v5 = v0[284];
    v6 = *MEMORY[0x277D85DE8];

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v8 = v0[366];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24FD67000, v9, v10, "Call to return streamed response before stream started. Starting to stream.", v11, 2u);
      MEMORY[0x253057F40](v11, -1, -1);
    }

    v12 = v0[360];

    v0[378] = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v13, v14);
  }
}

{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 3016);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v77 = v0;
  v76 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[375];
    v3 = v0[340];
    v4 = v0[339];
    v5 = v0[338];

    (*(v3 + 56))(v5, 1, 1, v4);
  }

  else
  {
    v6 = v0[340];
    v7 = v0[339];
    v8 = v0[337];
    v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v9, v8, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v10 = *(v6 + 48);
    if (v10(v8, 1, v7) == 1)
    {
      v68 = v10;
      v11 = v0[356];
      v12 = v0[350];
      v13 = v0[339];
      v14 = v0[328];
      v71 = v14;
      v15 = v0[299];
      v16 = v0[298];
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v18 = *(v15 + 72);
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v74 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24FE1A560;
      v67 = v19;
      v21 = (v20 + v19);
      *v21 = 0;
      v21[1] = 0xE000000000000000;
      v73 = v20 + v19;
      swift_storeEnumTagMultiPayload();
      v0[151] = v11;
      v0[152] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 148);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v22 = (v12 + v13[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v75 = 49;
      v23 = MEMORY[0x277D84F90];
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v25 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v75, 0, v24);

      *v22 = v25;
      *v12 = 0;
      *(v12 + 8) = 0xE000000000000000;
      *(v12 + 16) = v20;
      *(v12 + 24) = v23;
      *(v12 + 32) = 64;
      *(v12 + 40) = v23;
      *(v12 + 48) = v23;
      *(v12 + v13[15]) = v23;
      *(v12 + v13[12]) = 1;
      v26 = (v12 + v13[13]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      outlined init with copy of Date?(v71, v12 + v13[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v27 = (v12 + v13[11]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      *(v12 + v13[16]) = 0;
      *(v12 + v13[17]) = 0;
      v28 = (v12 + v13[18]);
      *v28 = 0;
      v28[1] = 0xE000000000000000;
      v29 = (v12 + v13[19]);
      *v29 = 0;
      v29[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 148), v12 + v13[21]);
      *(v12 + v13[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v30 = v0[350];
        v31 = v0[311];
        v32 = v0[310];
        v69 = v0[308];
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        v34 = GeneratedResponse.updateText(_:)(v33);
        *v30 = v34._countAndFlagsBits;
        *(v12 + 8) = v34._object;
        v35 = *(v20 + 16);
        v36 = (v31 + 56);
        v37 = (v31 + 48);

        v38 = 0;
        v70 = v20;
        v72 = v20;
        while (1)
        {
          if (v38 == v35)
          {
            v39 = 1;
            v38 = v35;
          }

          else
          {
            if (v38 >= *(v72 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v40 = v0[321];
            v41 = v0[312];
            v42 = *(v32 + 48);
            *v41 = v38;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v73 + v38 * v74, v41 + v42, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v41, v40, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v39 = 0;
            ++v38;
          }

          v43 = v0[322];
          v44 = v0[321];
          v45 = v0[310];
          (*v36)(v44, v39, 1, v45);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v44, v43, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v37)(v43, 1, v45) == 1)
          {
            break;
          }

          v46 = v0[322];
          v47 = v0[298];
          v48 = *v46;
          outlined init with take of GeneratedResponse(v46 + *(v32 + 48), v0[309], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v50 = v0[309];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v51 = v0[308];
            v66 = v0[298];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v51 = v34._countAndFlagsBits;
            *(v69 + 8) = v34._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v48 >= v52[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[308], v52 + v67 + v48 * v74);
            *(v12 + 16) = v52;
          }
        }

        v57 = v0[375];
      }

      else
      {
        v56 = v0[375];
      }

      v58 = v0[350];
      v59 = v0[339];
      v60 = v0[338];
      v61 = v0[337];
      outlined destroy of OnScreenContent.Document?(v0[328], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v58, v60, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 148);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v58, type metadata accessor for GeneratedResponse);
      if (v68(v61, 1, v59) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[337], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v53 = v0[375];
      v54 = v0[338];
      v55 = v0[337];

      outlined init with take of GeneratedResponse(v55, v54, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[338], 0, 1, v0[339]);
  }

  v62 = v0[363];
  v63 = v0[362];
  v64 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v63, v62);
}

{
  v218 = v0;
  v217[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2888);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2704);

  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = *(v0 + 2936);
    v6 = *(v0 + 2912);
    v7 = *(v0 + 2816);
    v8 = *(v0 + 2296);
    v9 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2704), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
    swift_allocError();
    (*(v8 + 104))(v10, *MEMORY[0x277D0D720], v9);
    swift_willThrow();

    v11 = type metadata accessor for UploadableDocumentData;
    v12 = v7;
LABEL_9:
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v12, v11);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
    v45 = *(v0 + 2872);
    v46 = *(v0 + 2856);
    v47 = *(v0 + 2840);
    v48 = *(v0 + 2824);
    v49 = *(v0 + 2816);
    v50 = *(v0 + 2808);
    v51 = *(v0 + 2800);
    v52 = *(v0 + 2792);
    v53 = *(v0 + 2784);
    v54 = *(v0 + 2776);
    v116 = *(v0 + 2768);
    v118 = *(v0 + 2760);
    v120 = *(v0 + 2752);
    v122 = *(v0 + 2744);
    v124 = *(v0 + 2736);
    v126 = *(v0 + 2728);
    v128 = *(v0 + 2704);
    v130 = *(v0 + 2696);
    v132 = *(v0 + 2688);
    v134 = *(v0 + 2680);
    v136 = *(v0 + 2672);
    v138 = *(v0 + 2664);
    v140 = *(v0 + 2656);
    v142 = *(v0 + 2648);
    v144 = *(v0 + 2640);
    v146 = *(v0 + 2632);
    v148 = *(v0 + 2624);
    v150 = *(v0 + 2616);
    v152 = *(v0 + 2608);
    v154 = *(v0 + 2600);
    v156 = *(v0 + 2592);
    v158 = *(v0 + 2584);
    v160 = *(v0 + 2576);
    v162 = *(v0 + 2568);
    v164 = *(v0 + 2560);
    v166 = *(v0 + 2552);
    v168 = *(v0 + 2544);
    v170 = *(v0 + 2536);
    v172 = *(v0 + 2528);
    v174 = *(v0 + 2520);
    v176 = *(v0 + 2512);
    v178 = *(v0 + 2504);
    v180 = *(v0 + 2496);
    v182 = *(v0 + 2472);
    v184 = *(v0 + 2464);
    v186 = *(v0 + 2456);
    v188 = *(v0 + 2448);
    v190 = *(v0 + 2440);
    v192 = *(v0 + 2432);
    v194 = *(v0 + 2424);
    v196 = *(v0 + 2416);
    v198 = *(v0 + 2408);
    v200 = *(v0 + 2400);
    v203 = *(v0 + 2376);
    v206 = *(v0 + 2368);
    v209 = *(v0 + 2336);
    v212 = *(v0 + 2320);
    v215 = *(v0 + 2304);

    v55 = *(v0 + 8);
    v56 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v13 = *(v0 + 2840);
  v14 = *(v0 + 2832);
  v15 = *(v0 + 2808);
  v211 = v15;
  v214 = *(v0 + 2816);
  v16 = *(v0 + 2792);
  v17 = *(v0 + 2712);
  v18 = *(v0 + 2616);
  outlined init with take of GeneratedResponse(*(v0 + 2704), v15, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v15, v16, type metadata accessor for GeneratedResponse);
  v205 = v16[1];
  v208 = *v16;
  v19 = (v16 + *(v17 + 44));
  v20 = v19[1];
  v202 = *v19;
  v21 = type metadata accessor for URL();
  v22 = *(*(v21 - 8) + 56);
  v22(v18, 1, 1, v21);
  v23 = v14[8];
  v22(v13 + v23, 1, 1, v21);
  v24 = v14[9];
  v25 = MEMORY[0x277D84F90];
  *v13 = MEMORY[0x277D84F90];
  *(v13 + 8) = v202;
  *(v13 + 16) = v20;

  outlined assign with copy of URL?(v18, v13 + v23);
  *(v13 + v24) = v25;
  *(v13 + 32) = v25;
  v26 = (v13 + v14[14]);
  *v26 = v208;
  v26[1] = v205;
  *(v13 + v14[10]) = 0;
  *(v13 + v14[11]) = 0;
  v27 = (v13 + v14[12]);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v16, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = (v13 + v14[13]);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  *(v13 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v211, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v214, type metadata accessor for UploadableDocumentData);
  v29 = *(v0 + 2920);
  v30 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v30;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v30 + 64))
  {
    v31 = *(v0 + 2304);
    v32 = *(v0 + 2296);
    v33 = *(v0 + 2288);
    *v31 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v31[1] = v34;
    (*(v32 + 104))(v31, *MEMORY[0x277D0D718], v33);
    v35 = one-time initialization token for shared;

    if (v35 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 2304);
    v37 = GATError.errorCode.getter();
    if (v37 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v37 <= 0x7FFFFFFF)
    {
      v38 = *(v0 + 2936);
      v39 = *(v0 + 2912);
      v40 = *(v0 + 2840);
      v41 = *(v0 + 2304);
      v42 = *(v0 + 2296);
      v43 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v37, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v42 + 32))(v44, v41, v43);

      swift_willThrow();

      v11 = type metadata accessor for ModelResponse;
      v12 = v40;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v58 = *(v0 + 2944);
  v59 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v59;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = *(v59 + 64);
  if (v60)
  {
    v61 = *(v0 + 2936);
    v62 = *(v0 + 2840);
    v63 = *(v0 + 2280);
    v64 = *(v0 + 2232);
    v65 = *(v0 + 2224);
    v66 = *(v61 + 72);
    v67 = *(v61 + 80);
    v68 = *(v61 + 56);
    *(v0 + 1304) = *(v61 + 48) & 1;
    *(v0 + 1312) = v68;
    *(v0 + 1320) = v60;
    *(v0 + 1328) = v66;
    *(v0 + 1336) = v67;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v65, v64, (v0 + 1304), v62);
  }

  v69 = *(v0 + 2928);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = *(v0 + 2840);
    v73 = *(v0 + 2384);
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v217[0] = v75;
    *v74 = 136315650;
    *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v217);
    *(v74 + 12) = 2080;
    *(v74 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v217);
    *(v74 + 22) = 2080;
    swift_beginAccess();
    v76 = *v72;

    v78 = MEMORY[0x2530570A0](v77, v73);
    v80 = v79;

    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v217);

    *(v74 + 24) = v81;
    _os_log_impl(&dword_24FD67000, v70, v71, "%s.%s Received response %s", v74, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v75, -1, -1);
    MEMORY[0x253057F40](v74, -1, -1);
  }

  v82 = *(v0 + 2928);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = *(v0 + 2840);
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v217[0] = v87;
    *v86 = 136315650;
    *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v217);
    *(v86 + 12) = 2080;
    *(v86 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v217);
    *(v86 + 22) = 2080;
    swift_beginAccess();
    v88 = *(v85 + 32);

    v90 = MEMORY[0x2530570A0](v89, &type metadata for Attribution);
    v92 = v91;

    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v217);

    *(v86 + 24) = v93;
    _os_log_impl(&dword_24FD67000, v83, v84, "%s.%s Received attribution %s", v86, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v87, -1, -1);
    MEMORY[0x253057F40](v86, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v94 = *(v0 + 2936);
  v95 = *(v0 + 2912);
  v96 = *(v0 + 2840);
  v97 = *(v0 + 2832);
  v98 = static SELFUtils.shared;
  swift_beginAccess();
  v99 = (v96 + *(v97 + 56));
  v100 = *v99;
  v101 = v99[1];

  v102 = String.count.getter();

  if ((v102 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v102))
  {
    goto LABEL_27;
  }

  v103 = *(v0 + 2872);
  v104 = *(v0 + 2856);
  v105 = *(v0 + 2840);
  v106 = *(v0 + 2824);
  v107 = *(v0 + 2816);
  v108 = *(v0 + 2808);
  v112 = *(v0 + 2800);
  v113 = *(v0 + 2792);
  v114 = *(v0 + 2784);
  v115 = *(v0 + 2776);
  v117 = *(v0 + 2768);
  v119 = *(v0 + 2760);
  v121 = *(v0 + 2752);
  v123 = *(v0 + 2744);
  v125 = *(v0 + 2736);
  v127 = *(v0 + 2728);
  v129 = *(v0 + 2704);
  v131 = *(v0 + 2696);
  v135 = *(v0 + 2688);
  v139 = *(v0 + 2680);
  v143 = *(v0 + 2672);
  v147 = *(v0 + 2664);
  v151 = *(v0 + 2656);
  v155 = *(v0 + 2648);
  v159 = *(v0 + 2640);
  v163 = *(v0 + 2632);
  v167 = *(v0 + 2624);
  v171 = *(v0 + 2616);
  v175 = *(v0 + 2608);
  v109 = &v98[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v133 = *(v0 + 2600);
  v137 = *(v0 + 2592);
  v141 = *(v0 + 2584);
  v145 = *(v0 + 2576);
  v149 = *(v0 + 2568);
  v153 = *(v0 + 2560);
  v157 = *(v0 + 2552);
  v161 = *(v0 + 2544);
  v165 = *(v0 + 2536);
  v169 = *(v0 + 2528);
  v173 = *(v0 + 2520);
  v177 = *(v0 + 2512);
  v179 = *(v0 + 2504);
  v181 = *(v0 + 2496);
  v183 = *(v0 + 2472);
  v185 = *(v0 + 2464);
  v187 = *(v0 + 2456);
  v189 = *(v0 + 2448);
  v191 = *(v0 + 2440);
  v193 = *(v0 + 2432);
  v195 = *(v0 + 2424);
  v197 = *(v0 + 2416);
  v199 = *(v0 + 2408);
  v201 = *(v0 + 2400);
  v204 = *(v0 + 2376);
  v207 = *(v0 + 2368);
  v210 = *(v0 + 2336);
  v213 = *(v0 + 2320);
  v216 = *(v0 + 2304);
  v110 = *(v0 + 2216);
  swift_beginAccess();
  *v109 = v102;
  v109[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v105, v110, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v105, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v55 = *(v0 + 8);
  v111 = *MEMORY[0x277D85DE8];
LABEL_10:

  return v55();
}

{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3024);
  v2 = *(v0 + 3008);
  v27 = *(v0 + 3000);
  v28 = *(v0 + 3264);
  v35 = *(v0 + 2984);
  v36 = *(v0 + 2992);
  v33 = *(v0 + 3285);
  v34 = *(v0 + 3286);
  v29 = *(v0 + 2880);
  v3 = *(v0 + 2376);
  v4 = *(v0 + 2368);
  v5 = *(v0 + 2352);
  v6 = *(v0 + 2344);
  v26 = v4;
  v7 = *(v0 + 2272);
  v8 = *(v0 + 2240);
  v9 = *(v0 + 2232);
  v31 = *(v0 + 2360);
  v32 = *(v0 + 2224);

  *(v7 + v2) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1264);
  v10 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1264, v7 + v10);
  swift_endAccess();
  v30 = v3;
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1224);
  (*(v5 + 16))(v4, v8 + v28, v6);
  v12 = v9;

  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v15 = (v31 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v13;
  *(v17 + 3) = v18;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1224), (v17 + 32));
  *(v17 + 9) = v32;
  *(v17 + 10) = v12;
  *(v17 + 11) = 0;
  (*(v5 + 32))(&v17[v14], v26, v6);
  v19 = &v17[v15];
  *v19 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  *(v19 + 1) = v27;
  v20 = &v17[v16];
  *v20 = v7;
  v20[8] = v34;
  v20[9] = v33;
  v21 = &v17[(v16 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v21 = v35;
  *(v21 + 1) = v36;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v30, &closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)partial apply, v17);

  v22 = swift_task_alloc();
  *(v0 + 3016) = v22;
  *v22 = v0;
  v22[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v23 = *(v0 + 2272);
  v24 = *MEMORY[0x277D85DE8];

  return PartnerStreamWrapper.waitForResponse()();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 3032);
  v10 = *v1;
  *(*v1 + 3040) = v0;

  v4 = *(v2 + 2904);
  v5 = *(v2 + 2896);
  if (v0)
  {
    v6 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  else
  {
    v6 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v10 = *MEMORY[0x277D85DE8];
  *(v0 + 3287) = *(*(v0 + 2240) + 41);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2864);
  v2 = *(&static Disclaimer.partnerName + 1);
  *(v0 + 3048) = static Disclaimer.partnerName;
  *(v0 + 3056) = v2;
  *(v0 + 3268) = *(v1 + 32);
  v3 = swift_allocObject();
  *(v0 + 3064) = v3;
  v4 = *(v0 + 1080);
  *(v3 + 112) = *(v0 + 1064);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v0 + 1096);
  v5 = *(v0 + 1016);
  *(v3 + 48) = *(v0 + 1000);
  *(v3 + 64) = v5;
  v6 = *(v0 + 1048);
  *(v3 + 80) = *(v0 + 1032);
  *(v3 + 96) = v6;
  v7 = *(v0 + 984);
  *(v3 + 16) = *(v0 + 968);
  *(v3 + 32) = v7;
  outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 424);

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  v2 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v0[384] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v1 + v2) == 1)
  {
    v3 = v0[382];

    v4 = swift_task_alloc();
    v0[385] = v4;
    *v4 = v0;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
    v5 = v0[284];
    v6 = *MEMORY[0x277D85DE8];

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v8 = v0[366];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24FD67000, v9, v10, "Call to return streamed response before stream started. Starting to stream.", v11, 2u);
      MEMORY[0x253057F40](v11, -1, -1);
    }

    v12 = v0[360];

    v0[386] = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v13, v14);
  }
}

{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 3080);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v77 = v0;
  v76 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[383];
    v3 = v0[340];
    v4 = v0[339];
    v5 = v0[336];

    (*(v3 + 56))(v5, 1, 1, v4);
  }

  else
  {
    v6 = v0[340];
    v7 = v0[339];
    v8 = v0[335];
    v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v9, v8, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v10 = *(v6 + 48);
    if (v10(v8, 1, v7) == 1)
    {
      v68 = v10;
      v11 = v0[356];
      v12 = v0[347];
      v13 = v0[339];
      v14 = v0[326];
      v71 = v14;
      v15 = v0[299];
      v16 = v0[298];
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v18 = *(v15 + 72);
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v74 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24FE1A560;
      v67 = v19;
      v21 = (v20 + v19);
      *v21 = 0;
      v21[1] = 0xE000000000000000;
      v73 = v20 + v19;
      swift_storeEnumTagMultiPayload();
      v0[176] = v11;
      v0[177] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 173);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v22 = (v12 + v13[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v75 = 49;
      v23 = MEMORY[0x277D84F90];
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v25 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v75, 0, v24);

      *v22 = v25;
      *v12 = 0;
      *(v12 + 8) = 0xE000000000000000;
      *(v12 + 16) = v20;
      *(v12 + 24) = v23;
      *(v12 + 32) = 64;
      *(v12 + 40) = v23;
      *(v12 + 48) = v23;
      *(v12 + v13[15]) = v23;
      *(v12 + v13[12]) = 1;
      v26 = (v12 + v13[13]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      outlined init with copy of Date?(v71, v12 + v13[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v27 = (v12 + v13[11]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      *(v12 + v13[16]) = 0;
      *(v12 + v13[17]) = 0;
      v28 = (v12 + v13[18]);
      *v28 = 0;
      v28[1] = 0xE000000000000000;
      v29 = (v12 + v13[19]);
      *v29 = 0;
      v29[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 173), v12 + v13[21]);
      *(v12 + v13[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v30 = v0[347];
        v31 = v0[311];
        v32 = v0[310];
        v69 = v0[306];
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        v34 = GeneratedResponse.updateText(_:)(v33);
        *v30 = v34._countAndFlagsBits;
        *(v12 + 8) = v34._object;
        v35 = *(v20 + 16);
        v36 = (v31 + 56);
        v37 = (v31 + 48);

        v38 = 0;
        v70 = v20;
        v72 = v20;
        while (1)
        {
          if (v38 == v35)
          {
            v39 = 1;
            v38 = v35;
          }

          else
          {
            if (v38 >= *(v72 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v40 = v0[319];
            v41 = v0[312];
            v42 = *(v32 + 48);
            *v41 = v38;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v73 + v38 * v74, v41 + v42, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v41, v40, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v39 = 0;
            ++v38;
          }

          v43 = v0[320];
          v44 = v0[319];
          v45 = v0[310];
          (*v36)(v44, v39, 1, v45);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v44, v43, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v37)(v43, 1, v45) == 1)
          {
            break;
          }

          v46 = v0[320];
          v47 = v0[298];
          v48 = *v46;
          outlined init with take of GeneratedResponse(v46 + *(v32 + 48), v0[307], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v50 = v0[307];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v51 = v0[306];
            v66 = v0[298];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v51 = v34._countAndFlagsBits;
            *(v69 + 8) = v34._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v48 >= v52[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[306], v52 + v67 + v48 * v74);
            *(v12 + 16) = v52;
          }
        }

        v57 = v0[383];
      }

      else
      {
        v56 = v0[383];
      }

      v58 = v0[347];
      v59 = v0[339];
      v60 = v0[336];
      v61 = v0[335];
      outlined destroy of OnScreenContent.Document?(v0[326], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v58, v60, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 173);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v58, type metadata accessor for GeneratedResponse);
      if (v68(v61, 1, v59) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[335], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v53 = v0[383];
      v54 = v0[336];
      v55 = v0[335];

      outlined init with take of GeneratedResponse(v55, v54, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[336], 0, 1, v0[339]);
  }

  v62 = v0[363];
  v63 = v0[362];
  v64 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v63, v62);
}

{
  v218 = v0;
  v217[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2888);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2688);

  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = *(v0 + 2936);
    v6 = *(v0 + 2912);
    v7 = *(v0 + 2336);
    v8 = *(v0 + 2296);
    v9 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2688), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
    swift_allocError();
    (*(v8 + 104))(v10, *MEMORY[0x277D0D720], v9);
    swift_willThrow();

    v11 = type metadata accessor for UploadableImageData;
    v12 = v7;
LABEL_9:
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v12, v11);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
    v45 = *(v0 + 2872);
    v46 = *(v0 + 2856);
    v47 = *(v0 + 2840);
    v48 = *(v0 + 2824);
    v49 = *(v0 + 2816);
    v50 = *(v0 + 2808);
    v51 = *(v0 + 2800);
    v52 = *(v0 + 2792);
    v53 = *(v0 + 2784);
    v54 = *(v0 + 2776);
    v116 = *(v0 + 2768);
    v118 = *(v0 + 2760);
    v120 = *(v0 + 2752);
    v122 = *(v0 + 2744);
    v124 = *(v0 + 2736);
    v126 = *(v0 + 2728);
    v128 = *(v0 + 2704);
    v130 = *(v0 + 2696);
    v132 = *(v0 + 2688);
    v134 = *(v0 + 2680);
    v136 = *(v0 + 2672);
    v138 = *(v0 + 2664);
    v140 = *(v0 + 2656);
    v142 = *(v0 + 2648);
    v144 = *(v0 + 2640);
    v146 = *(v0 + 2632);
    v148 = *(v0 + 2624);
    v150 = *(v0 + 2616);
    v152 = *(v0 + 2608);
    v154 = *(v0 + 2600);
    v156 = *(v0 + 2592);
    v158 = *(v0 + 2584);
    v160 = *(v0 + 2576);
    v162 = *(v0 + 2568);
    v164 = *(v0 + 2560);
    v166 = *(v0 + 2552);
    v168 = *(v0 + 2544);
    v170 = *(v0 + 2536);
    v172 = *(v0 + 2528);
    v174 = *(v0 + 2520);
    v176 = *(v0 + 2512);
    v178 = *(v0 + 2504);
    v180 = *(v0 + 2496);
    v182 = *(v0 + 2472);
    v184 = *(v0 + 2464);
    v186 = *(v0 + 2456);
    v188 = *(v0 + 2448);
    v190 = *(v0 + 2440);
    v192 = *(v0 + 2432);
    v194 = *(v0 + 2424);
    v196 = *(v0 + 2416);
    v198 = *(v0 + 2408);
    v200 = *(v0 + 2400);
    v203 = *(v0 + 2376);
    v206 = *(v0 + 2368);
    v209 = *(v0 + 2336);
    v212 = *(v0 + 2320);
    v215 = *(v0 + 2304);

    v55 = *(v0 + 8);
    v56 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v13 = *(v0 + 2840);
  v14 = *(v0 + 2832);
  v15 = *(v0 + 2792);
  v16 = *(v0 + 2784);
  v17 = *(v0 + 2712);
  v18 = *(v0 + 2616);
  v211 = v16;
  v214 = *(v0 + 2336);
  outlined init with take of GeneratedResponse(*(v0 + 2688), v16, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v16, v15, type metadata accessor for GeneratedResponse);
  v205 = v15[1];
  v208 = *v15;
  v19 = (v15 + *(v17 + 44));
  v20 = v19[1];
  v202 = *v19;
  v21 = type metadata accessor for URL();
  v22 = *(*(v21 - 8) + 56);
  v22(v18, 1, 1, v21);
  v23 = v14[8];
  v22(v13 + v23, 1, 1, v21);
  v24 = v14[9];
  v25 = MEMORY[0x277D84F90];
  *v13 = MEMORY[0x277D84F90];
  *(v13 + 8) = v202;
  *(v13 + 16) = v20;

  outlined assign with copy of URL?(v18, v13 + v23);
  *(v13 + v24) = v25;
  *(v13 + 32) = v25;
  v26 = (v13 + v14[14]);
  *v26 = v208;
  v26[1] = v205;
  *(v13 + v14[10]) = 0;
  *(v13 + v14[11]) = 0;
  v27 = (v13 + v14[12]);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v15, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = (v13 + v14[13]);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  *(v13 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v211, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v214, type metadata accessor for UploadableImageData);
  v29 = *(v0 + 2920);
  v30 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v30;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v30 + 64))
  {
    v31 = *(v0 + 2304);
    v32 = *(v0 + 2296);
    v33 = *(v0 + 2288);
    *v31 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v31[1] = v34;
    (*(v32 + 104))(v31, *MEMORY[0x277D0D718], v33);
    v35 = one-time initialization token for shared;

    if (v35 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 2304);
    v37 = GATError.errorCode.getter();
    if (v37 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v37 <= 0x7FFFFFFF)
    {
      v38 = *(v0 + 2936);
      v39 = *(v0 + 2912);
      v40 = *(v0 + 2840);
      v41 = *(v0 + 2304);
      v42 = *(v0 + 2296);
      v43 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v37, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v42 + 32))(v44, v41, v43);

      swift_willThrow();

      v11 = type metadata accessor for ModelResponse;
      v12 = v40;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v58 = *(v0 + 2944);
  v59 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v59;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = *(v59 + 64);
  if (v60)
  {
    v61 = *(v0 + 2936);
    v62 = *(v0 + 2840);
    v63 = *(v0 + 2280);
    v64 = *(v0 + 2232);
    v65 = *(v0 + 2224);
    v66 = *(v61 + 72);
    v67 = *(v61 + 80);
    v68 = *(v61 + 56);
    *(v0 + 1304) = *(v61 + 48) & 1;
    *(v0 + 1312) = v68;
    *(v0 + 1320) = v60;
    *(v0 + 1328) = v66;
    *(v0 + 1336) = v67;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v65, v64, (v0 + 1304), v62);
  }

  v69 = *(v0 + 2928);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = *(v0 + 2840);
    v73 = *(v0 + 2384);
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v217[0] = v75;
    *v74 = 136315650;
    *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v217);
    *(v74 + 12) = 2080;
    *(v74 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v217);
    *(v74 + 22) = 2080;
    swift_beginAccess();
    v76 = *v72;

    v78 = MEMORY[0x2530570A0](v77, v73);
    v80 = v79;

    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v217);

    *(v74 + 24) = v81;
    _os_log_impl(&dword_24FD67000, v70, v71, "%s.%s Received response %s", v74, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v75, -1, -1);
    MEMORY[0x253057F40](v74, -1, -1);
  }

  v82 = *(v0 + 2928);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = *(v0 + 2840);
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v217[0] = v87;
    *v86 = 136315650;
    *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v217);
    *(v86 + 12) = 2080;
    *(v86 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v217);
    *(v86 + 22) = 2080;
    swift_beginAccess();
    v88 = *(v85 + 32);

    v90 = MEMORY[0x2530570A0](v89, &type metadata for Attribution);
    v92 = v91;

    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v217);

    *(v86 + 24) = v93;
    _os_log_impl(&dword_24FD67000, v83, v84, "%s.%s Received attribution %s", v86, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v87, -1, -1);
    MEMORY[0x253057F40](v86, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v94 = *(v0 + 2936);
  v95 = *(v0 + 2912);
  v96 = *(v0 + 2840);
  v97 = *(v0 + 2832);
  v98 = static SELFUtils.shared;
  swift_beginAccess();
  v99 = (v96 + *(v97 + 56));
  v100 = *v99;
  v101 = v99[1];

  v102 = String.count.getter();

  if ((v102 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v102))
  {
    goto LABEL_27;
  }

  v103 = *(v0 + 2872);
  v104 = *(v0 + 2856);
  v105 = *(v0 + 2840);
  v106 = *(v0 + 2824);
  v107 = *(v0 + 2816);
  v108 = *(v0 + 2808);
  v112 = *(v0 + 2800);
  v113 = *(v0 + 2792);
  v114 = *(v0 + 2784);
  v115 = *(v0 + 2776);
  v117 = *(v0 + 2768);
  v119 = *(v0 + 2760);
  v121 = *(v0 + 2752);
  v123 = *(v0 + 2744);
  v125 = *(v0 + 2736);
  v127 = *(v0 + 2728);
  v129 = *(v0 + 2704);
  v131 = *(v0 + 2696);
  v135 = *(v0 + 2688);
  v139 = *(v0 + 2680);
  v143 = *(v0 + 2672);
  v147 = *(v0 + 2664);
  v151 = *(v0 + 2656);
  v155 = *(v0 + 2648);
  v159 = *(v0 + 2640);
  v163 = *(v0 + 2632);
  v167 = *(v0 + 2624);
  v171 = *(v0 + 2616);
  v175 = *(v0 + 2608);
  v109 = &v98[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v133 = *(v0 + 2600);
  v137 = *(v0 + 2592);
  v141 = *(v0 + 2584);
  v145 = *(v0 + 2576);
  v149 = *(v0 + 2568);
  v153 = *(v0 + 2560);
  v157 = *(v0 + 2552);
  v161 = *(v0 + 2544);
  v165 = *(v0 + 2536);
  v169 = *(v0 + 2528);
  v173 = *(v0 + 2520);
  v177 = *(v0 + 2512);
  v179 = *(v0 + 2504);
  v181 = *(v0 + 2496);
  v183 = *(v0 + 2472);
  v185 = *(v0 + 2464);
  v187 = *(v0 + 2456);
  v189 = *(v0 + 2448);
  v191 = *(v0 + 2440);
  v193 = *(v0 + 2432);
  v195 = *(v0 + 2424);
  v197 = *(v0 + 2416);
  v199 = *(v0 + 2408);
  v201 = *(v0 + 2400);
  v204 = *(v0 + 2376);
  v207 = *(v0 + 2368);
  v210 = *(v0 + 2336);
  v213 = *(v0 + 2320);
  v216 = *(v0 + 2304);
  v110 = *(v0 + 2216);
  swift_beginAccess();
  *v109 = v102;
  v109[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v105, v110, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v105, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v55 = *(v0 + 8);
  v111 = *MEMORY[0x277D85DE8];
LABEL_10:

  return v55();
}

{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3088);
  v2 = *(v0 + 3072);
  v3 = *(v0 + 3064);
  v36 = *(v0 + 3048);
  v37 = *(v0 + 3056);
  v34 = *(v0 + 3285);
  v35 = *(v0 + 3287);
  v29 = *(v0 + 3268);
  v30 = *(v0 + 2880);
  v4 = *(v0 + 2376);
  v5 = *(v0 + 2368);
  v28 = v5;
  v6 = *(v0 + 2352);
  v7 = *(v0 + 2344);
  v27 = v3;
  v8 = *(v0 + 2272);
  v9 = *(v0 + 2240);
  v10 = *(v0 + 2232);
  v32 = *(v0 + 2360);
  v33 = *(v0 + 2224);

  *(v8 + v2) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1504);
  v11 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1504, v8 + v11);
  swift_endAccess();
  v31 = v4;
  static TaskPriority.userInitiated.getter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1424);
  (*(v6 + 16))(v5, v9 + v29, v7);
  v13 = v10;

  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v16 = (v32 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v14;
  *(v18 + 3) = v19;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1424), (v18 + 32));
  *(v18 + 9) = v33;
  *(v18 + 10) = v13;
  *(v18 + 11) = 0;
  (*(v6 + 32))(&v18[v15], v28, v7);
  v20 = &v18[v16];
  *v20 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  *(v20 + 1) = v27;
  v21 = &v18[v17];
  *v21 = v8;
  v21[8] = v35;
  v21[9] = v34;
  v22 = &v18[(v17 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v22 = v36;
  *(v22 + 1) = v37;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v31, &closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)partial apply, v18);

  v23 = swift_task_alloc();
  *(v0 + 3080) = v23;
  *v23 = v0;
  v23[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v24 = *(v0 + 2272);
  v25 = *MEMORY[0x277D85DE8];

  return PartnerStreamWrapper.waitForResponse()();
}

{
  v10 = *MEMORY[0x277D85DE8];
  *(v0 + 3288) = *(*(v0 + 2240) + 41);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2864);
  v2 = *(&static Disclaimer.partnerName + 1);
  *(v0 + 3120) = static Disclaimer.partnerName;
  *(v0 + 3128) = v2;
  *(v0 + 3272) = *(v1 + 32);
  v3 = swift_allocObject();
  *(v0 + 3136) = v3;
  v4 = *(v0 + 1080);
  *(v3 + 112) = *(v0 + 1064);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v0 + 1096);
  v5 = *(v0 + 1016);
  *(v3 + 48) = *(v0 + 1000);
  *(v3 + 64) = v5;
  v6 = *(v0 + 1048);
  *(v3 + 80) = *(v0 + 1032);
  *(v3 + 96) = v6;
  v7 = *(v0 + 984);
  *(v3 + 16) = *(v0 + 968);
  *(v3 + 32) = v7;
  outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 832);

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  v2 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v0[393] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v1 + v2) == 1)
  {
    v3 = v0[391];

    v4 = swift_task_alloc();
    v0[394] = v4;
    *v4 = v0;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
    v5 = v0[284];
    v6 = *MEMORY[0x277D85DE8];

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v8 = v0[366];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24FD67000, v9, v10, "Call to return streamed response before stream started. Starting to stream.", v11, 2u);
      MEMORY[0x253057F40](v11, -1, -1);
    }

    v12 = v0[360];

    v0[395] = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v13, v14);
  }
}

{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 3152);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v77 = v0;
  v76 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[392];
    v3 = v0[340];
    v4 = v0[339];
    v5 = v0[334];

    (*(v3 + 56))(v5, 1, 1, v4);
  }

  else
  {
    v6 = v0[340];
    v7 = v0[339];
    v8 = v0[333];
    v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v9, v8, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v10 = *(v6 + 48);
    if (v10(v8, 1, v7) == 1)
    {
      v68 = v10;
      v11 = v0[356];
      v12 = v0[345];
      v13 = v0[339];
      v14 = v0[325];
      v71 = v14;
      v15 = v0[299];
      v16 = v0[298];
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v18 = *(v15 + 72);
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v74 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24FE1A560;
      v67 = v19;
      v21 = (v20 + v19);
      *v21 = 0;
      v21[1] = 0xE000000000000000;
      v73 = v20 + v19;
      swift_storeEnumTagMultiPayload();
      v0[221] = v11;
      v0[222] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 218);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v22 = (v12 + v13[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v75 = 49;
      v23 = MEMORY[0x277D84F90];
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v25 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v75, 0, v24);

      *v22 = v25;
      *v12 = 0;
      *(v12 + 8) = 0xE000000000000000;
      *(v12 + 16) = v20;
      *(v12 + 24) = v23;
      *(v12 + 32) = 64;
      *(v12 + 40) = v23;
      *(v12 + 48) = v23;
      *(v12 + v13[15]) = v23;
      *(v12 + v13[12]) = 1;
      v26 = (v12 + v13[13]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      outlined init with copy of Date?(v71, v12 + v13[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v27 = (v12 + v13[11]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      *(v12 + v13[16]) = 0;
      *(v12 + v13[17]) = 0;
      v28 = (v12 + v13[18]);
      *v28 = 0;
      v28[1] = 0xE000000000000000;
      v29 = (v12 + v13[19]);
      *v29 = 0;
      v29[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 218), v12 + v13[21]);
      *(v12 + v13[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v30 = v0[345];
        v31 = v0[311];
        v32 = v0[310];
        v69 = v0[304];
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        v34 = GeneratedResponse.updateText(_:)(v33);
        *v30 = v34._countAndFlagsBits;
        *(v12 + 8) = v34._object;
        v35 = *(v20 + 16);
        v36 = (v31 + 56);
        v37 = (v31 + 48);

        v38 = 0;
        v70 = v20;
        v72 = v20;
        while (1)
        {
          if (v38 == v35)
          {
            v39 = 1;
            v38 = v35;
          }

          else
          {
            if (v38 >= *(v72 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v40 = v0[317];
            v41 = v0[312];
            v42 = *(v32 + 48);
            *v41 = v38;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v73 + v38 * v74, v41 + v42, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v41, v40, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v39 = 0;
            ++v38;
          }

          v43 = v0[318];
          v44 = v0[317];
          v45 = v0[310];
          (*v36)(v44, v39, 1, v45);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v44, v43, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v37)(v43, 1, v45) == 1)
          {
            break;
          }

          v46 = v0[318];
          v47 = v0[298];
          v48 = *v46;
          outlined init with take of GeneratedResponse(v46 + *(v32 + 48), v0[305], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v50 = v0[305];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v51 = v0[304];
            v66 = v0[298];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v51 = v34._countAndFlagsBits;
            *(v69 + 8) = v34._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v48 >= v52[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[304], v52 + v67 + v48 * v74);
            *(v12 + 16) = v52;
          }
        }

        v57 = v0[392];
      }

      else
      {
        v56 = v0[392];
      }

      v58 = v0[345];
      v59 = v0[339];
      v60 = v0[334];
      v61 = v0[333];
      outlined destroy of OnScreenContent.Document?(v0[325], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v58, v60, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 218);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v58, type metadata accessor for GeneratedResponse);
      if (v68(v61, 1, v59) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[333], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v53 = v0[392];
      v54 = v0[334];
      v55 = v0[333];

      outlined init with take of GeneratedResponse(v55, v54, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[334], 0, 1, v0[339]);
  }

  v62 = v0[363];
  v63 = v0[362];
  v64 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v63, v62);
}

{
  v221 = v0;
  v220[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2888);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2672);

  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = *(v0 + 3104);
    v6 = *(v0 + 2936);
    v7 = *(v0 + 2912);
    v8 = *(v0 + 2336);
    v9 = *(v0 + 2296);
    v10 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2672), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
    swift_allocError();
    (*(v9 + 104))(v11, *MEMORY[0x277D0D720], v10);
    swift_willThrow();

    v12 = type metadata accessor for UploadableImageData;
    v13 = v8;
LABEL_9:
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v13, v12);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
    v47 = *(v0 + 2872);
    v48 = *(v0 + 2856);
    v49 = *(v0 + 2840);
    v50 = *(v0 + 2824);
    v51 = *(v0 + 2816);
    v52 = *(v0 + 2808);
    v53 = *(v0 + 2800);
    v54 = *(v0 + 2792);
    v55 = *(v0 + 2784);
    v56 = *(v0 + 2776);
    v118 = *(v0 + 2768);
    v120 = *(v0 + 2760);
    v122 = *(v0 + 2752);
    v124 = *(v0 + 2744);
    v126 = *(v0 + 2736);
    v128 = *(v0 + 2728);
    v130 = *(v0 + 2704);
    v132 = *(v0 + 2696);
    v134 = *(v0 + 2688);
    v136 = *(v0 + 2680);
    v138 = *(v0 + 2672);
    v140 = *(v0 + 2664);
    v142 = *(v0 + 2656);
    v144 = *(v0 + 2648);
    v146 = *(v0 + 2640);
    v148 = *(v0 + 2632);
    v150 = *(v0 + 2624);
    v152 = *(v0 + 2616);
    v154 = *(v0 + 2608);
    v156 = *(v0 + 2600);
    v158 = *(v0 + 2592);
    v160 = *(v0 + 2584);
    v162 = *(v0 + 2576);
    v164 = *(v0 + 2568);
    v166 = *(v0 + 2560);
    v168 = *(v0 + 2552);
    v170 = *(v0 + 2544);
    v172 = *(v0 + 2536);
    v174 = *(v0 + 2528);
    v176 = *(v0 + 2520);
    v178 = *(v0 + 2512);
    v180 = *(v0 + 2504);
    v182 = *(v0 + 2496);
    v184 = *(v0 + 2472);
    v186 = *(v0 + 2464);
    v188 = *(v0 + 2456);
    v190 = *(v0 + 2448);
    v192 = *(v0 + 2440);
    v194 = *(v0 + 2432);
    v196 = *(v0 + 2424);
    v198 = *(v0 + 2416);
    v200 = *(v0 + 2408);
    v203 = *(v0 + 2400);
    v206 = *(v0 + 2376);
    v209 = *(v0 + 2368);
    v212 = *(v0 + 2336);
    v215 = *(v0 + 2320);
    v218 = *(v0 + 2304);

    v57 = *(v0 + 8);
    v58 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v14 = *(v0 + 2840);
  v15 = *(v0 + 2832);
  v16 = *(v0 + 2792);
  v17 = *(v0 + 2768);
  v211 = v17;
  v214 = *(v0 + 3104);
  v18 = *(v0 + 2712);
  v19 = *(v0 + 2616);
  v202 = v19;
  v217 = *(v0 + 2336);
  outlined init with take of GeneratedResponse(*(v0 + 2672), v17, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v17, v16, type metadata accessor for GeneratedResponse);
  v20 = v16[1];
  v21 = (v16 + *(v18 + 44));
  v22 = v21[1];
  v205 = *v21;
  v208 = *v16;
  v23 = type metadata accessor for URL();
  v24 = *(*(v23 - 8) + 56);
  v24(v19, 1, 1, v23);
  v25 = v15[8];
  v24(v14 + v25, 1, 1, v23);
  v26 = v15[9];
  v27 = MEMORY[0x277D84F90];
  *v14 = MEMORY[0x277D84F90];
  *(v14 + 8) = v205;
  *(v14 + 16) = v22;

  outlined assign with copy of URL?(v202, v14 + v25);
  *(v14 + v26) = v27;
  *(v14 + 32) = v27;
  v28 = (v14 + v15[14]);
  *v28 = v208;
  v28[1] = v20;
  *(v14 + v15[10]) = 0;
  *(v14 + v15[11]) = 0;
  v29 = (v14 + v15[12]);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v16, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v202, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v30 = (v14 + v15[13]);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  *(v14 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v211, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v217, type metadata accessor for UploadableImageData);
  v31 = *(v0 + 2920);
  v32 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v32;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v32 + 64))
  {
    v33 = *(v0 + 2304);
    v34 = *(v0 + 2296);
    v35 = *(v0 + 2288);
    *v33 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v33[1] = v36;
    (*(v34 + 104))(v33, *MEMORY[0x277D0D718], v35);
    v37 = one-time initialization token for shared;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 2304);
    v39 = GATError.errorCode.getter();
    if (v39 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v39 <= 0x7FFFFFFF)
    {
      v40 = *(v0 + 2936);
      v41 = *(v0 + 2912);
      v42 = *(v0 + 2840);
      v43 = *(v0 + 2304);
      v44 = *(v0 + 2296);
      v45 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v39, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v44 + 32))(v46, v43, v45);

      swift_willThrow();

      v12 = type metadata accessor for ModelResponse;
      v13 = v42;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v60 = *(v0 + 2944);
  v61 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v61;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *(v61 + 64);
  if (v62)
  {
    v63 = *(v0 + 2936);
    v64 = *(v0 + 2840);
    v65 = *(v0 + 2280);
    v66 = *(v0 + 2232);
    v67 = *(v0 + 2224);
    v68 = *(v63 + 72);
    v69 = *(v63 + 80);
    v70 = *(v63 + 56);
    *(v0 + 1304) = *(v63 + 48) & 1;
    *(v0 + 1312) = v70;
    *(v0 + 1320) = v62;
    *(v0 + 1328) = v68;
    *(v0 + 1336) = v69;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v67, v66, (v0 + 1304), v64);
  }

  v71 = *(v0 + 2928);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = *(v0 + 2840);
    v75 = *(v0 + 2384);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v220[0] = v77;
    *v76 = 136315650;
    *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v220);
    *(v76 + 12) = 2080;
    *(v76 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v220);
    *(v76 + 22) = 2080;
    swift_beginAccess();
    v78 = *v74;

    v80 = MEMORY[0x2530570A0](v79, v75);
    v82 = v81;

    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v220);

    *(v76 + 24) = v83;
    _os_log_impl(&dword_24FD67000, v72, v73, "%s.%s Received response %s", v76, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v77, -1, -1);
    MEMORY[0x253057F40](v76, -1, -1);
  }

  v84 = *(v0 + 2928);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = *(v0 + 2840);
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v220[0] = v89;
    *v88 = 136315650;
    *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v220);
    *(v88 + 12) = 2080;
    *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v220);
    *(v88 + 22) = 2080;
    swift_beginAccess();
    v90 = *(v87 + 32);

    v92 = MEMORY[0x2530570A0](v91, &type metadata for Attribution);
    v94 = v93;

    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, v220);

    *(v88 + 24) = v95;
    _os_log_impl(&dword_24FD67000, v85, v86, "%s.%s Received attribution %s", v88, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v89, -1, -1);
    MEMORY[0x253057F40](v88, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v96 = *(v0 + 2936);
  v97 = *(v0 + 2912);
  v98 = *(v0 + 2840);
  v99 = *(v0 + 2832);
  v100 = static SELFUtils.shared;
  swift_beginAccess();
  v101 = (v98 + *(v99 + 56));
  v102 = *v101;
  v103 = v101[1];

  v104 = String.count.getter();

  if ((v104 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v104))
  {
    goto LABEL_27;
  }

  v105 = *(v0 + 2872);
  v106 = *(v0 + 2856);
  v107 = *(v0 + 2840);
  v108 = *(v0 + 2824);
  v109 = *(v0 + 2816);
  v110 = *(v0 + 2808);
  v114 = *(v0 + 2800);
  v115 = *(v0 + 2792);
  v116 = *(v0 + 2784);
  v117 = *(v0 + 2776);
  v119 = *(v0 + 2768);
  v121 = *(v0 + 2760);
  v123 = *(v0 + 2752);
  v125 = *(v0 + 2744);
  v127 = *(v0 + 2736);
  v129 = *(v0 + 2728);
  v131 = *(v0 + 2704);
  v133 = *(v0 + 2696);
  v137 = *(v0 + 2688);
  v141 = *(v0 + 2680);
  v145 = *(v0 + 2672);
  v149 = *(v0 + 2664);
  v153 = *(v0 + 2656);
  v157 = *(v0 + 2648);
  v161 = *(v0 + 2640);
  v165 = *(v0 + 2632);
  v169 = *(v0 + 2624);
  v173 = *(v0 + 2616);
  v177 = *(v0 + 2608);
  v111 = &v100[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v135 = *(v0 + 2600);
  v139 = *(v0 + 2592);
  v143 = *(v0 + 2584);
  v147 = *(v0 + 2576);
  v151 = *(v0 + 2568);
  v155 = *(v0 + 2560);
  v159 = *(v0 + 2552);
  v163 = *(v0 + 2544);
  v167 = *(v0 + 2536);
  v171 = *(v0 + 2528);
  v175 = *(v0 + 2520);
  v179 = *(v0 + 2512);
  v181 = *(v0 + 2504);
  v183 = *(v0 + 2496);
  v185 = *(v0 + 2472);
  v187 = *(v0 + 2464);
  v189 = *(v0 + 2456);
  v191 = *(v0 + 2448);
  v193 = *(v0 + 2440);
  v195 = *(v0 + 2432);
  v197 = *(v0 + 2424);
  v199 = *(v0 + 2416);
  v201 = *(v0 + 2408);
  v204 = *(v0 + 2400);
  v207 = *(v0 + 2376);
  v210 = *(v0 + 2368);
  v213 = *(v0 + 2336);
  v216 = *(v0 + 2320);
  v219 = *(v0 + 2304);
  v112 = *(v0 + 2216);
  swift_beginAccess();
  *v111 = v104;
  v111[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v107, v112, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v107, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v57 = *(v0 + 8);
  v113 = *MEMORY[0x277D85DE8];
LABEL_10:

  return v57();
}

{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3160);
  v2 = *(v0 + 3144);
  v3 = *(v0 + 3136);
  v36 = *(v0 + 3120);
  v37 = *(v0 + 3128);
  v34 = *(v0 + 3285);
  v35 = *(v0 + 3288);
  v29 = *(v0 + 3272);
  v30 = *(v0 + 2880);
  v4 = *(v0 + 2376);
  v5 = *(v0 + 2368);
  v28 = v5;
  v6 = *(v0 + 2352);
  v7 = *(v0 + 2344);
  v27 = v3;
  v8 = *(v0 + 2272);
  v9 = *(v0 + 2240);
  v10 = *(v0 + 2232);
  v32 = *(v0 + 2360);
  v33 = *(v0 + 2224);

  *(v8 + v2) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1704);
  v11 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1704, v8 + v11);
  swift_endAccess();
  v31 = v4;
  static TaskPriority.userInitiated.getter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1784);
  (*(v6 + 16))(v5, v9 + v29, v7);
  v13 = v10;

  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v16 = (v32 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v14;
  *(v18 + 3) = v19;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1784), (v18 + 32));
  *(v18 + 9) = v33;
  *(v18 + 10) = v13;
  *(v18 + 11) = 0;
  (*(v6 + 32))(&v18[v15], v28, v7);
  v20 = &v18[v16];
  *v20 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  *(v20 + 1) = v27;
  v21 = &v18[v17];
  *v21 = v8;
  v21[8] = v35;
  v21[9] = v34;
  v22 = &v18[(v17 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v22 = v36;
  *(v22 + 1) = v37;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v31, &closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)partial apply, v18);

  v23 = swift_task_alloc();
  *(v0 + 3152) = v23;
  *v23 = v0;
  v23[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v24 = *(v0 + 2272);
  v25 = *MEMORY[0x277D85DE8];

  return PartnerStreamWrapper.waitForResponse()();
}

{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  v2 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v0[399] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v1 + v2) == 1)
  {
    v3 = v0[397];

    v4 = swift_task_alloc();
    v0[400] = v4;
    *v4 = v0;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
    v5 = v0[284];
    v6 = *MEMORY[0x277D85DE8];

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v8 = v0[366];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24FD67000, v9, v10, "Call to return streamed response before stream started. Starting to stream.", v11, 2u);
      MEMORY[0x253057F40](v11, -1, -1);
    }

    v12 = v0[360];

    v0[401] = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v13, v14);
  }
}

{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 3200);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v77 = v0;
  v76 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[398];
    v3 = v0[340];
    v4 = v0[339];
    v5 = v0[332];

    (*(v3 + 56))(v5, 1, 1, v4);
  }

  else
  {
    v6 = v0[340];
    v7 = v0[339];
    v8 = v0[331];
    v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v9, v8, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v10 = *(v6 + 48);
    if (v10(v8, 1, v7) == 1)
    {
      v68 = v10;
      v11 = v0[356];
      v12 = v0[343];
      v13 = v0[339];
      v14 = v0[324];
      v71 = v14;
      v15 = v0[299];
      v16 = v0[298];
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v18 = *(v15 + 72);
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v74 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24FE1A560;
      v67 = v19;
      v21 = (v20 + v19);
      *v21 = 0;
      v21[1] = 0xE000000000000000;
      v73 = v20 + v19;
      swift_storeEnumTagMultiPayload();
      v0[141] = v11;
      v0[142] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 138);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v22 = (v12 + v13[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v75 = 49;
      v23 = MEMORY[0x277D84F90];
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v25 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v75, 0, v24);

      *v22 = v25;
      *v12 = 0;
      *(v12 + 8) = 0xE000000000000000;
      *(v12 + 16) = v20;
      *(v12 + 24) = v23;
      *(v12 + 32) = 64;
      *(v12 + 40) = v23;
      *(v12 + 48) = v23;
      *(v12 + v13[15]) = v23;
      *(v12 + v13[12]) = 1;
      v26 = (v12 + v13[13]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      outlined init with copy of Date?(v71, v12 + v13[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v27 = (v12 + v13[11]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      *(v12 + v13[16]) = 0;
      *(v12 + v13[17]) = 0;
      v28 = (v12 + v13[18]);
      *v28 = 0;
      v28[1] = 0xE000000000000000;
      v29 = (v12 + v13[19]);
      *v29 = 0;
      v29[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 138), v12 + v13[21]);
      *(v12 + v13[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v30 = v0[343];
        v31 = v0[311];
        v32 = v0[310];
        v69 = v0[302];
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        v34 = GeneratedResponse.updateText(_:)(v33);
        *v30 = v34._countAndFlagsBits;
        *(v12 + 8) = v34._object;
        v35 = *(v20 + 16);
        v36 = (v31 + 56);
        v37 = (v31 + 48);

        v38 = 0;
        v70 = v20;
        v72 = v20;
        while (1)
        {
          if (v38 == v35)
          {
            v39 = 1;
            v38 = v35;
          }

          else
          {
            if (v38 >= *(v72 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v40 = v0[315];
            v41 = v0[312];
            v42 = *(v32 + 48);
            *v41 = v38;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v73 + v38 * v74, v41 + v42, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v41, v40, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v39 = 0;
            ++v38;
          }

          v43 = v0[316];
          v44 = v0[315];
          v45 = v0[310];
          (*v36)(v44, v39, 1, v45);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v44, v43, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v37)(v43, 1, v45) == 1)
          {
            break;
          }

          v46 = v0[316];
          v47 = v0[298];
          v48 = *v46;
          outlined init with take of GeneratedResponse(v46 + *(v32 + 48), v0[303], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v50 = v0[303];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v51 = v0[302];
            v66 = v0[298];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v51 = v34._countAndFlagsBits;
            *(v69 + 8) = v34._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v48 >= v52[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[302], v52 + v67 + v48 * v74);
            *(v12 + 16) = v52;
          }
        }

        v57 = v0[398];
      }

      else
      {
        v56 = v0[398];
      }

      v58 = v0[343];
      v59 = v0[339];
      v60 = v0[332];
      v61 = v0[331];
      outlined destroy of OnScreenContent.Document?(v0[324], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v58, v60, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 138);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v58, type metadata accessor for GeneratedResponse);
      if (v68(v61, 1, v59) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[331], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v53 = v0[398];
      v54 = v0[332];
      v55 = v0[331];

      outlined init with take of GeneratedResponse(v55, v54, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[332], 0, 1, v0[339]);
  }

  v62 = v0[363];
  v63 = v0[362];
  v64 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v63, v62);
}

{
  v215 = v0;
  v214[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2888);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2656);

  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = *(v0 + 2936);
    v6 = *(v0 + 2912);
    v7 = *(v0 + 2296);
    v8 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2656), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
    swift_allocError();
    (*(v7 + 104))(v9, *MEMORY[0x277D0D720], v8);
    swift_willThrow();

LABEL_9:
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
    v43 = *(v0 + 2872);
    v44 = *(v0 + 2856);
    v45 = *(v0 + 2840);
    v46 = *(v0 + 2824);
    v47 = *(v0 + 2816);
    v48 = *(v0 + 2808);
    v49 = *(v0 + 2800);
    v50 = *(v0 + 2792);
    v51 = *(v0 + 2784);
    v52 = *(v0 + 2776);
    v114 = *(v0 + 2768);
    v116 = *(v0 + 2760);
    v118 = *(v0 + 2752);
    v120 = *(v0 + 2744);
    v122 = *(v0 + 2736);
    v124 = *(v0 + 2728);
    v126 = *(v0 + 2704);
    v128 = *(v0 + 2696);
    v130 = *(v0 + 2688);
    v132 = *(v0 + 2680);
    v134 = *(v0 + 2672);
    v136 = *(v0 + 2664);
    v138 = *(v0 + 2656);
    v140 = *(v0 + 2648);
    v142 = *(v0 + 2640);
    v144 = *(v0 + 2632);
    v146 = *(v0 + 2624);
    v148 = *(v0 + 2616);
    v150 = *(v0 + 2608);
    v152 = *(v0 + 2600);
    v154 = *(v0 + 2592);
    v156 = *(v0 + 2584);
    v158 = *(v0 + 2576);
    v160 = *(v0 + 2568);
    v162 = *(v0 + 2560);
    v164 = *(v0 + 2552);
    v166 = *(v0 + 2544);
    v168 = *(v0 + 2536);
    v170 = *(v0 + 2528);
    v172 = *(v0 + 2520);
    v174 = *(v0 + 2512);
    v176 = *(v0 + 2504);
    v178 = *(v0 + 2496);
    v180 = *(v0 + 2472);
    v182 = *(v0 + 2464);
    v184 = *(v0 + 2456);
    v186 = *(v0 + 2448);
    v188 = *(v0 + 2440);
    v190 = *(v0 + 2432);
    v192 = *(v0 + 2424);
    v194 = *(v0 + 2416);
    v196 = *(v0 + 2408);
    v198 = *(v0 + 2400);
    v200 = *(v0 + 2376);
    v203 = *(v0 + 2368);
    v206 = *(v0 + 2336);
    v209 = *(v0 + 2320);
    v212 = *(v0 + 2304);

    v53 = *(v0 + 8);
    v54 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v10 = *(v0 + 2840);
  v11 = *(v0 + 2832);
  v12 = *(v0 + 2792);
  v13 = *(v0 + 2752);
  v211 = v13;
  v14 = *(v0 + 2712);
  v15 = *(v0 + 2616);
  v202 = v15;
  outlined init with take of GeneratedResponse(*(v0 + 2656), v13, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v13, v12, type metadata accessor for GeneratedResponse);
  v16 = v12[1];
  v17 = (v12 + *(v14 + 44));
  v18 = v17[1];
  v205 = *v17;
  v208 = *v12;
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 56);
  v20(v15, 1, 1, v19);
  v21 = v11[8];
  v20(v10 + v21, 1, 1, v19);
  v22 = v11[9];
  v23 = MEMORY[0x277D84F90];
  *v10 = MEMORY[0x277D84F90];
  *(v10 + 8) = v205;
  *(v10 + 16) = v18;

  outlined assign with copy of URL?(v202, v10 + v21);
  *(v10 + v22) = v23;
  *(v10 + 32) = v23;
  v24 = (v10 + v11[14]);
  *v24 = v208;
  v24[1] = v16;
  *(v10 + v11[10]) = 0;
  *(v10 + v11[11]) = 0;
  v25 = (v10 + v11[12]);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v12, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v202, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = (v10 + v11[13]);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  *(v10 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v211, type metadata accessor for GeneratedResponse);
  v27 = *(v0 + 2920);
  v28 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v28;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v28 + 64))
  {
    v29 = *(v0 + 2304);
    v30 = *(v0 + 2296);
    v31 = *(v0 + 2288);
    *v29 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v29[1] = v32;
    (*(v30 + 104))(v29, *MEMORY[0x277D0D718], v31);
    v33 = one-time initialization token for shared;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 2304);
    v35 = GATError.errorCode.getter();
    if (v35 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v35 <= 0x7FFFFFFF)
    {
      v36 = *(v0 + 2936);
      v37 = *(v0 + 2912);
      v38 = *(v0 + 2840);
      v39 = *(v0 + 2304);
      v40 = *(v0 + 2296);
      v41 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v35, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v40 + 32))(v42, v39, v41);

      swift_willThrow();

      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v38, type metadata accessor for ModelResponse);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v56 = *(v0 + 2944);
  v57 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v57;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(v57 + 64);
  if (v58)
  {
    v59 = *(v0 + 2936);
    v60 = *(v0 + 2840);
    v61 = *(v0 + 2280);
    v62 = *(v0 + 2232);
    v63 = *(v0 + 2224);
    v64 = *(v59 + 72);
    v65 = *(v59 + 80);
    v66 = *(v59 + 56);
    *(v0 + 1304) = *(v59 + 48) & 1;
    *(v0 + 1312) = v66;
    *(v0 + 1320) = v58;
    *(v0 + 1328) = v64;
    *(v0 + 1336) = v65;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v63, v62, (v0 + 1304), v60);
  }

  v67 = *(v0 + 2928);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = *(v0 + 2840);
    v71 = *(v0 + 2384);
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v214[0] = v73;
    *v72 = 136315650;
    *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v214);
    *(v72 + 12) = 2080;
    *(v72 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v214);
    *(v72 + 22) = 2080;
    swift_beginAccess();
    v74 = *v70;

    v76 = MEMORY[0x2530570A0](v75, v71);
    v78 = v77;

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v214);

    *(v72 + 24) = v79;
    _os_log_impl(&dword_24FD67000, v68, v69, "%s.%s Received response %s", v72, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v73, -1, -1);
    MEMORY[0x253057F40](v72, -1, -1);
  }

  v80 = *(v0 + 2928);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = *(v0 + 2840);
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v214[0] = v85;
    *v84 = 136315650;
    *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v214);
    *(v84 + 12) = 2080;
    *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v214);
    *(v84 + 22) = 2080;
    swift_beginAccess();
    v86 = *(v83 + 32);

    v88 = MEMORY[0x2530570A0](v87, &type metadata for Attribution);
    v90 = v89;

    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, v214);

    *(v84 + 24) = v91;
    _os_log_impl(&dword_24FD67000, v81, v82, "%s.%s Received attribution %s", v84, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v85, -1, -1);
    MEMORY[0x253057F40](v84, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v92 = *(v0 + 2936);
  v93 = *(v0 + 2912);
  v94 = *(v0 + 2840);
  v95 = *(v0 + 2832);
  v96 = static SELFUtils.shared;
  swift_beginAccess();
  v97 = (v94 + *(v95 + 56));
  v98 = *v97;
  v99 = v97[1];

  v100 = String.count.getter();

  if ((v100 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v100))
  {
    goto LABEL_27;
  }

  v101 = *(v0 + 2872);
  v102 = *(v0 + 2856);
  v103 = *(v0 + 2840);
  v104 = *(v0 + 2824);
  v105 = *(v0 + 2816);
  v106 = *(v0 + 2808);
  v110 = *(v0 + 2800);
  v111 = *(v0 + 2792);
  v112 = *(v0 + 2784);
  v113 = *(v0 + 2776);
  v115 = *(v0 + 2768);
  v117 = *(v0 + 2760);
  v119 = *(v0 + 2752);
  v121 = *(v0 + 2744);
  v123 = *(v0 + 2736);
  v125 = *(v0 + 2728);
  v127 = *(v0 + 2704);
  v129 = *(v0 + 2696);
  v133 = *(v0 + 2688);
  v137 = *(v0 + 2680);
  v141 = *(v0 + 2672);
  v145 = *(v0 + 2664);
  v149 = *(v0 + 2656);
  v153 = *(v0 + 2648);
  v157 = *(v0 + 2640);
  v161 = *(v0 + 2632);
  v165 = *(v0 + 2624);
  v169 = *(v0 + 2616);
  v173 = *(v0 + 2608);
  v107 = &v96[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v131 = *(v0 + 2600);
  v135 = *(v0 + 2592);
  v139 = *(v0 + 2584);
  v143 = *(v0 + 2576);
  v147 = *(v0 + 2568);
  v151 = *(v0 + 2560);
  v155 = *(v0 + 2552);
  v159 = *(v0 + 2544);
  v163 = *(v0 + 2536);
  v167 = *(v0 + 2528);
  v171 = *(v0 + 2520);
  v175 = *(v0 + 2512);
  v177 = *(v0 + 2504);
  v179 = *(v0 + 2496);
  v181 = *(v0 + 2472);
  v183 = *(v0 + 2464);
  v185 = *(v0 + 2456);
  v187 = *(v0 + 2448);
  v189 = *(v0 + 2440);
  v191 = *(v0 + 2432);
  v193 = *(v0 + 2424);
  v195 = *(v0 + 2416);
  v197 = *(v0 + 2408);
  v199 = *(v0 + 2400);
  v201 = *(v0 + 2376);
  v204 = *(v0 + 2368);
  v207 = *(v0 + 2336);
  v210 = *(v0 + 2320);
  v213 = *(v0 + 2304);
  v108 = *(v0 + 2216);
  swift_beginAccess();
  *v107 = v100;
  v107[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v103, v108, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v103, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v53 = *(v0 + 8);
  v109 = *MEMORY[0x277D85DE8];
LABEL_10:

  return v53();
}

{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3208);
  v2 = *(v0 + 3192);
  v3 = *(v0 + 3184);
  v36 = *(v0 + 3168);
  v37 = *(v0 + 3176);
  v34 = *(v0 + 3285);
  v35 = *(v0 + 3289);
  v29 = *(v0 + 3276);
  v30 = *(v0 + 2880);
  v4 = *(v0 + 2376);
  v5 = *(v0 + 2368);
  v28 = v5;
  v6 = *(v0 + 2352);
  v7 = *(v0 + 2344);
  v27 = v3;
  v8 = *(v0 + 2272);
  v9 = *(v0 + 2240);
  v10 = *(v0 + 2232);
  v32 = *(v0 + 2360);
  v33 = *(v0 + 2224);

  *(v8 + v2) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1464);
  v11 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1464, v8 + v11);
  swift_endAccess();
  v31 = v4;
  static TaskPriority.userInitiated.getter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1544);
  (*(v6 + 16))(v5, v9 + v29, v7);
  v13 = v10;

  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v16 = (v32 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v14;
  *(v18 + 3) = v19;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1544), (v18 + 32));
  *(v18 + 9) = v33;
  *(v18 + 10) = v13;
  *(v18 + 11) = 0;
  (*(v6 + 32))(&v18[v15], v28, v7);
  v20 = &v18[v16];
  *v20 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  *(v20 + 1) = v27;
  v21 = &v18[v17];
  *v21 = v8;
  v21[8] = v35;
  v21[9] = v34;
  v22 = &v18[(v17 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v22 = v36;
  *(v22 + 1) = v37;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v31, &closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)partial apply, v18);

  v23 = swift_task_alloc();
  *(v0 + 3200) = v23;
  *v23 = v0;
  v23[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v24 = *(v0 + 2272);
  v25 = *MEMORY[0x277D85DE8];

  return PartnerStreamWrapper.waitForResponse()();
}

{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  v2 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v0[405] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v1 + v2) == 1)
  {
    v3 = v0[403];

    v4 = swift_task_alloc();
    v0[406] = v4;
    *v4 = v0;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
    v5 = v0[284];
    v6 = *MEMORY[0x277D85DE8];

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v8 = v0[366];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24FD67000, v9, v10, "Call to return streamed response before stream started. Starting to stream.", v11, 2u);
      MEMORY[0x253057F40](v11, -1, -1);
    }

    v12 = v0[360];

    v0[407] = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v13, v14);
  }
}

{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 3248);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v77 = v0;
  v76 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[404];
    v3 = v0[340];
    v4 = v0[339];
    v5 = v0[330];

    (*(v3 + 56))(v5, 1, 1, v4);
  }

  else
  {
    v6 = v0[340];
    v7 = v0[339];
    v8 = v0[329];
    v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v9, v8, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v10 = *(v6 + 48);
    if (v10(v8, 1, v7) == 1)
    {
      v68 = v10;
      v11 = v0[356];
      v12 = v0[341];
      v13 = v0[339];
      v14 = v0[323];
      v71 = v14;
      v15 = v0[299];
      v16 = v0[298];
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v18 = *(v15 + 72);
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v74 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24FE1A560;
      v67 = v19;
      v21 = (v20 + v19);
      *v21 = 0;
      v21[1] = 0xE000000000000000;
      v73 = v20 + v19;
      swift_storeEnumTagMultiPayload();
      v0[146] = v11;
      v0[147] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 143);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v22 = (v12 + v13[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v75 = 49;
      v23 = MEMORY[0x277D84F90];
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v25 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v75, 0, v24);

      *v22 = v25;
      *v12 = 0;
      *(v12 + 8) = 0xE000000000000000;
      *(v12 + 16) = v20;
      *(v12 + 24) = v23;
      *(v12 + 32) = 64;
      *(v12 + 40) = v23;
      *(v12 + 48) = v23;
      *(v12 + v13[15]) = v23;
      *(v12 + v13[12]) = 1;
      v26 = (v12 + v13[13]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      outlined init with copy of Date?(v71, v12 + v13[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v27 = (v12 + v13[11]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      *(v12 + v13[16]) = 0;
      *(v12 + v13[17]) = 0;
      v28 = (v12 + v13[18]);
      *v28 = 0;
      v28[1] = 0xE000000000000000;
      v29 = (v12 + v13[19]);
      *v29 = 0;
      v29[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 143), v12 + v13[21]);
      *(v12 + v13[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v30 = v0[341];
        v31 = v0[311];
        v32 = v0[310];
        v69 = v0[300];
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        v34 = GeneratedResponse.updateText(_:)(v33);
        *v30 = v34._countAndFlagsBits;
        *(v12 + 8) = v34._object;
        v35 = *(v20 + 16);
        v36 = (v31 + 56);
        v37 = (v31 + 48);

        v38 = 0;
        v70 = v20;
        v72 = v20;
        while (1)
        {
          if (v38 == v35)
          {
            v39 = 1;
            v38 = v35;
          }

          else
          {
            if (v38 >= *(v72 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v40 = v0[313];
            v41 = v0[312];
            v42 = *(v32 + 48);
            *v41 = v38;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v73 + v38 * v74, v41 + v42, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v41, v40, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v39 = 0;
            ++v38;
          }

          v43 = v0[314];
          v44 = v0[313];
          v45 = v0[310];
          (*v36)(v44, v39, 1, v45);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v44, v43, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v37)(v43, 1, v45) == 1)
          {
            break;
          }

          v46 = v0[314];
          v47 = v0[298];
          v48 = *v46;
          outlined init with take of GeneratedResponse(v46 + *(v32 + 48), v0[301], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v50 = v0[301];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v51 = v0[300];
            v66 = v0[298];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v50, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v51 = v34._countAndFlagsBits;
            *(v69 + 8) = v34._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
              v52 = v70;
              if ((v48 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v48 >= v52[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[300], v52 + v67 + v48 * v74);
            *(v12 + 16) = v52;
          }
        }

        v57 = v0[404];
      }

      else
      {
        v56 = v0[404];
      }

      v58 = v0[341];
      v59 = v0[339];
      v60 = v0[330];
      v61 = v0[329];
      outlined destroy of OnScreenContent.Document?(v0[323], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v58, v60, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 143);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v58, type metadata accessor for GeneratedResponse);
      if (v68(v61, 1, v59) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[329], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v53 = v0[404];
      v54 = v0[330];
      v55 = v0[329];

      outlined init with take of GeneratedResponse(v55, v54, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[330], 0, 1, v0[339]);
  }

  v62 = v0[363];
  v63 = v0[362];
  v64 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v63, v62);
}

{
  v215 = v0;
  v214[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2888);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2640);

  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = *(v0 + 2936);
    v6 = *(v0 + 2912);
    v7 = *(v0 + 2296);
    v8 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2640), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
    swift_allocError();
    (*(v7 + 104))(v9, *MEMORY[0x277D0D720], v8);
    swift_willThrow();

LABEL_9:
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
    v43 = *(v0 + 2872);
    v44 = *(v0 + 2856);
    v45 = *(v0 + 2840);
    v46 = *(v0 + 2824);
    v47 = *(v0 + 2816);
    v48 = *(v0 + 2808);
    v49 = *(v0 + 2800);
    v50 = *(v0 + 2792);
    v51 = *(v0 + 2784);
    v52 = *(v0 + 2776);
    v114 = *(v0 + 2768);
    v116 = *(v0 + 2760);
    v118 = *(v0 + 2752);
    v120 = *(v0 + 2744);
    v122 = *(v0 + 2736);
    v124 = *(v0 + 2728);
    v126 = *(v0 + 2704);
    v128 = *(v0 + 2696);
    v130 = *(v0 + 2688);
    v132 = *(v0 + 2680);
    v134 = *(v0 + 2672);
    v136 = *(v0 + 2664);
    v138 = *(v0 + 2656);
    v140 = *(v0 + 2648);
    v142 = *(v0 + 2640);
    v144 = *(v0 + 2632);
    v146 = *(v0 + 2624);
    v148 = *(v0 + 2616);
    v150 = *(v0 + 2608);
    v152 = *(v0 + 2600);
    v154 = *(v0 + 2592);
    v156 = *(v0 + 2584);
    v158 = *(v0 + 2576);
    v160 = *(v0 + 2568);
    v162 = *(v0 + 2560);
    v164 = *(v0 + 2552);
    v166 = *(v0 + 2544);
    v168 = *(v0 + 2536);
    v170 = *(v0 + 2528);
    v172 = *(v0 + 2520);
    v174 = *(v0 + 2512);
    v176 = *(v0 + 2504);
    v178 = *(v0 + 2496);
    v180 = *(v0 + 2472);
    v182 = *(v0 + 2464);
    v184 = *(v0 + 2456);
    v186 = *(v0 + 2448);
    v188 = *(v0 + 2440);
    v190 = *(v0 + 2432);
    v192 = *(v0 + 2424);
    v194 = *(v0 + 2416);
    v196 = *(v0 + 2408);
    v198 = *(v0 + 2400);
    v200 = *(v0 + 2376);
    v203 = *(v0 + 2368);
    v206 = *(v0 + 2336);
    v209 = *(v0 + 2320);
    v212 = *(v0 + 2304);

    v53 = *(v0 + 8);
    v54 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v10 = *(v0 + 2840);
  v11 = *(v0 + 2832);
  v12 = *(v0 + 2792);
  v13 = *(v0 + 2736);
  v211 = v13;
  v14 = *(v0 + 2712);
  v15 = *(v0 + 2616);
  v202 = v15;
  outlined init with take of GeneratedResponse(*(v0 + 2640), v13, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v13, v12, type metadata accessor for GeneratedResponse);
  v16 = v12[1];
  v17 = (v12 + *(v14 + 44));
  v18 = v17[1];
  v205 = *v17;
  v208 = *v12;
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 56);
  v20(v15, 1, 1, v19);
  v21 = v11[8];
  v20(v10 + v21, 1, 1, v19);
  v22 = v11[9];
  v23 = MEMORY[0x277D84F90];
  *v10 = MEMORY[0x277D84F90];
  *(v10 + 8) = v205;
  *(v10 + 16) = v18;

  outlined assign with copy of URL?(v202, v10 + v21);
  *(v10 + v22) = v23;
  *(v10 + 32) = v23;
  v24 = (v10 + v11[14]);
  *v24 = v208;
  v24[1] = v16;
  *(v10 + v11[10]) = 0;
  *(v10 + v11[11]) = 0;
  v25 = (v10 + v11[12]);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v12, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v202, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = (v10 + v11[13]);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  *(v10 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v211, type metadata accessor for GeneratedResponse);
  v27 = *(v0 + 2920);
  v28 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v28;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v28 + 64))
  {
    v29 = *(v0 + 2304);
    v30 = *(v0 + 2296);
    v31 = *(v0 + 2288);
    *v29 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v29[1] = v32;
    (*(v30 + 104))(v29, *MEMORY[0x277D0D718], v31);
    v33 = one-time initialization token for shared;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 2304);
    v35 = GATError.errorCode.getter();
    if (v35 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v35 <= 0x7FFFFFFF)
    {
      v36 = *(v0 + 2936);
      v37 = *(v0 + 2912);
      v38 = *(v0 + 2840);
      v39 = *(v0 + 2304);
      v40 = *(v0 + 2296);
      v41 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v35, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v40 + 32))(v42, v39, v41);

      swift_willThrow();

      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v38, type metadata accessor for ModelResponse);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v56 = *(v0 + 2944);
  v57 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v57;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(v57 + 64);
  if (v58)
  {
    v59 = *(v0 + 2936);
    v60 = *(v0 + 2840);
    v61 = *(v0 + 2280);
    v62 = *(v0 + 2232);
    v63 = *(v0 + 2224);
    v64 = *(v59 + 72);
    v65 = *(v59 + 80);
    v66 = *(v59 + 56);
    *(v0 + 1304) = *(v59 + 48) & 1;
    *(v0 + 1312) = v66;
    *(v0 + 1320) = v58;
    *(v0 + 1328) = v64;
    *(v0 + 1336) = v65;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v63, v62, (v0 + 1304), v60);
  }

  v67 = *(v0 + 2928);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = *(v0 + 2840);
    v71 = *(v0 + 2384);
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v214[0] = v73;
    *v72 = 136315650;
    *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v214);
    *(v72 + 12) = 2080;
    *(v72 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v214);
    *(v72 + 22) = 2080;
    swift_beginAccess();
    v74 = *v70;

    v76 = MEMORY[0x2530570A0](v75, v71);
    v78 = v77;

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v214);

    *(v72 + 24) = v79;
    _os_log_impl(&dword_24FD67000, v68, v69, "%s.%s Received response %s", v72, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v73, -1, -1);
    MEMORY[0x253057F40](v72, -1, -1);
  }

  v80 = *(v0 + 2928);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = *(v0 + 2840);
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v214[0] = v85;
    *v84 = 136315650;
    *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v214);
    *(v84 + 12) = 2080;
    *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v214);
    *(v84 + 22) = 2080;
    swift_beginAccess();
    v86 = *(v83 + 32);

    v88 = MEMORY[0x2530570A0](v87, &type metadata for Attribution);
    v90 = v89;

    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, v214);

    *(v84 + 24) = v91;
    _os_log_impl(&dword_24FD67000, v81, v82, "%s.%s Received attribution %s", v84, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v85, -1, -1);
    MEMORY[0x253057F40](v84, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v92 = *(v0 + 2936);
  v93 = *(v0 + 2912);
  v94 = *(v0 + 2840);
  v95 = *(v0 + 2832);
  v96 = static SELFUtils.shared;
  swift_beginAccess();
  v97 = (v94 + *(v95 + 56));
  v98 = *v97;
  v99 = v97[1];

  v100 = String.count.getter();

  if ((v100 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v100))
  {
    goto LABEL_27;
  }

  v101 = *(v0 + 2872);
  v102 = *(v0 + 2856);
  v103 = *(v0 + 2840);
  v104 = *(v0 + 2824);
  v105 = *(v0 + 2816);
  v106 = *(v0 + 2808);
  v110 = *(v0 + 2800);
  v111 = *(v0 + 2792);
  v112 = *(v0 + 2784);
  v113 = *(v0 + 2776);
  v115 = *(v0 + 2768);
  v117 = *(v0 + 2760);
  v119 = *(v0 + 2752);
  v121 = *(v0 + 2744);
  v123 = *(v0 + 2736);
  v125 = *(v0 + 2728);
  v127 = *(v0 + 2704);
  v129 = *(v0 + 2696);
  v133 = *(v0 + 2688);
  v137 = *(v0 + 2680);
  v141 = *(v0 + 2672);
  v145 = *(v0 + 2664);
  v149 = *(v0 + 2656);
  v153 = *(v0 + 2648);
  v157 = *(v0 + 2640);
  v161 = *(v0 + 2632);
  v165 = *(v0 + 2624);
  v169 = *(v0 + 2616);
  v173 = *(v0 + 2608);
  v107 = &v96[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v131 = *(v0 + 2600);
  v135 = *(v0 + 2592);
  v139 = *(v0 + 2584);
  v143 = *(v0 + 2576);
  v147 = *(v0 + 2568);
  v151 = *(v0 + 2560);
  v155 = *(v0 + 2552);
  v159 = *(v0 + 2544);
  v163 = *(v0 + 2536);
  v167 = *(v0 + 2528);
  v171 = *(v0 + 2520);
  v175 = *(v0 + 2512);
  v177 = *(v0 + 2504);
  v179 = *(v0 + 2496);
  v181 = *(v0 + 2472);
  v183 = *(v0 + 2464);
  v185 = *(v0 + 2456);
  v187 = *(v0 + 2448);
  v189 = *(v0 + 2440);
  v191 = *(v0 + 2432);
  v193 = *(v0 + 2424);
  v195 = *(v0 + 2416);
  v197 = *(v0 + 2408);
  v199 = *(v0 + 2400);
  v201 = *(v0 + 2376);
  v204 = *(v0 + 2368);
  v207 = *(v0 + 2336);
  v210 = *(v0 + 2320);
  v213 = *(v0 + 2304);
  v108 = *(v0 + 2216);
  swift_beginAccess();
  *v107 = v100;
  v107[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v103, v108, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v103, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v53 = *(v0 + 8);
  v109 = *MEMORY[0x277D85DE8];
LABEL_10:

  return v53();
}

{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3256);
  v2 = *(v0 + 3240);
  v3 = *(v0 + 3232);
  v36 = *(v0 + 3216);
  v37 = *(v0 + 3224);
  v34 = *(v0 + 3285);
  v35 = *(v0 + 3290);
  v29 = *(v0 + 3280);
  v30 = *(v0 + 2880);
  v4 = *(v0 + 2376);
  v5 = *(v0 + 2368);
  v28 = v5;
  v6 = *(v0 + 2352);
  v7 = *(v0 + 2344);
  v27 = v3;
  v8 = *(v0 + 2272);
  v9 = *(v0 + 2240);
  v10 = *(v0 + 2232);
  v32 = *(v0 + 2360);
  v33 = *(v0 + 2224);

  *(v8 + v2) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1664);
  v11 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1664, v8 + v11);
  swift_endAccess();
  v31 = v4;
  static TaskPriority.userInitiated.getter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1624);
  (*(v6 + 16))(v5, v9 + v29, v7);
  v13 = v10;

  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v16 = (v32 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v14;
  *(v18 + 3) = v19;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1624), (v18 + 32));
  *(v18 + 9) = v33;
  *(v18 + 10) = v13;
  *(v18 + 11) = 0;
  (*(v6 + 32))(&v18[v15], v28, v7);
  v20 = &v18[v16];
  *v20 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  *(v20 + 1) = v27;
  v21 = &v18[v17];
  *v21 = v8;
  v21[8] = v35;
  v21[9] = v34;
  v22 = &v18[(v17 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v22 = v36;
  *(v22 + 1) = v37;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:), v18);

  v23 = swift_task_alloc();
  *(v0 + 3248) = v23;
  *v23 = v0;
  v23[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v24 = *(v0 + 2272);
  v25 = *MEMORY[0x277D85DE8];

  return PartnerStreamWrapper.waitForResponse()();
}

{
  v67 = *MEMORY[0x277D85DE8];
  v1 = v0[367];
  v2 = v0[364];
  v3 = v0[361];
  v4 = v0[352];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v4, type metadata accessor for UploadableDocumentData);
  __swift_destroy_boxed_opaque_existential_0(v0 + 168);
  v5 = v0[359];
  v6 = v0[357];
  v7 = v0[355];
  v8 = v0[353];
  v9 = v0[352];
  v10 = v0[351];
  v11 = v0[350];
  v12 = v0[349];
  v13 = v0[348];
  v14 = v0[347];
  v18 = v0[372];
  v19 = v0[346];
  v20 = v0[345];
  v21 = v0[344];
  v22 = v0[343];
  v23 = v0[342];
  v24 = v0[341];
  v25 = v0[338];
  v26 = v0[337];
  v27 = v0[336];
  v28 = v0[335];
  v29 = v0[334];
  v30 = v0[333];
  v31 = v0[332];
  v32 = v0[331];
  v33 = v0[330];
  v34 = v0[329];
  v35 = v0[328];
  v36 = v0[327];
  v37 = v0[326];
  v38 = v0[325];
  v39 = v0[324];
  v40 = v0[323];
  v41 = v0[322];
  v42 = v0[321];
  v43 = v0[320];
  v44 = v0[319];
  v45 = v0[318];
  v46 = v0[317];
  v47 = v0[316];
  v48 = v0[315];
  v49 = v0[314];
  v50 = v0[313];
  v51 = v0[312];
  v52 = v0[309];
  v53 = v0[308];
  v54 = v0[307];
  v55 = v0[306];
  v56 = v0[305];
  v57 = v0[304];
  v58 = v0[303];
  v59 = v0[302];
  v60 = v0[301];
  v61 = v0[300];
  v62 = v0[297];
  v63 = v0[296];
  v64 = v0[292];
  v65 = v0[290];
  v66 = v0[288];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

{
  v67 = *MEMORY[0x277D85DE8];
  v1 = v0[367];
  v2 = v0[364];
  v3 = v0[361];
  v4 = v0[292];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v4, type metadata accessor for UploadableImageData);
  __swift_destroy_boxed_opaque_existential_0(v0 + 168);
  v5 = v0[359];
  v6 = v0[357];
  v7 = v0[355];
  v8 = v0[353];
  v9 = v0[352];
  v10 = v0[351];
  v11 = v0[350];
  v12 = v0[349];
  v13 = v0[348];
  v14 = v0[347];
  v18 = v0[380];
  v19 = v0[346];
  v20 = v0[345];
  v21 = v0[344];
  v22 = v0[343];
  v23 = v0[342];
  v24 = v0[341];
  v25 = v0[338];
  v26 = v0[337];
  v27 = v0[336];
  v28 = v0[335];
  v29 = v0[334];
  v30 = v0[333];
  v31 = v0[332];
  v32 = v0[331];
  v33 = v0[330];
  v34 = v0[329];
  v35 = v0[328];
  v36 = v0[327];
  v37 = v0[326];
  v38 = v0[325];
  v39 = v0[324];
  v40 = v0[323];
  v41 = v0[322];
  v42 = v0[321];
  v43 = v0[320];
  v44 = v0[319];
  v45 = v0[318];
  v46 = v0[317];
  v47 = v0[316];
  v48 = v0[315];
  v49 = v0[314];
  v50 = v0[313];
  v51 = v0[312];
  v52 = v0[309];
  v53 = v0[308];
  v54 = v0[307];
  v55 = v0[306];
  v56 = v0[305];
  v57 = v0[304];
  v58 = v0[303];
  v59 = v0[302];
  v60 = v0[301];
  v61 = v0[300];
  v62 = v0[297];
  v63 = v0[296];
  v64 = v0[292];
  v65 = v0[290];
  v66 = v0[288];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

{
  v67 = *MEMORY[0x277D85DE8];
  v1 = v0[367];
  v2 = v0[364];
  v3 = v0[361];
  v4 = v0[292];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v4, type metadata accessor for UploadableImageData);
  __swift_destroy_boxed_opaque_existential_0(v0 + 168);
  v5 = v0[359];
  v6 = v0[357];
  v7 = v0[355];
  v8 = v0[353];
  v9 = v0[352];
  v10 = v0[351];
  v11 = v0[350];
  v12 = v0[349];
  v13 = v0[348];
  v14 = v0[347];
  v18 = v0[389];
  v19 = v0[346];
  v20 = v0[345];
  v21 = v0[344];
  v22 = v0[343];
  v23 = v0[342];
  v24 = v0[341];
  v25 = v0[338];
  v26 = v0[337];
  v27 = v0[336];
  v28 = v0[335];
  v29 = v0[334];
  v30 = v0[333];
  v31 = v0[332];
  v32 = v0[331];
  v33 = v0[330];
  v34 = v0[329];
  v35 = v0[328];
  v36 = v0[327];
  v37 = v0[326];
  v38 = v0[325];
  v39 = v0[324];
  v40 = v0[323];
  v41 = v0[322];
  v42 = v0[321];
  v43 = v0[320];
  v44 = v0[319];
  v45 = v0[318];
  v46 = v0[317];
  v47 = v0[316];
  v48 = v0[315];
  v49 = v0[314];
  v50 = v0[313];
  v51 = v0[312];
  v52 = v0[309];
  v53 = v0[308];
  v54 = v0[307];
  v55 = v0[306];
  v56 = v0[305];
  v57 = v0[304];
  v58 = v0[303];
  v59 = v0[302];
  v60 = v0[301];
  v61 = v0[300];
  v62 = v0[297];
  v63 = v0[296];
  v64 = v0[292];
  v65 = v0[290];
  v66 = v0[288];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}