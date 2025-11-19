uint64_t RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR) - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = *(type metadata accessor for AspireApiRequest(0) - 8);
  v3[14] = v11;
  v3[15] = *(v11 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v12 = type metadata accessor for RequestsManager.PECContext();
  v3[18] = v12;
  v13 = *(v12 - 8);
  v3[19] = v13;
  v3[20] = *(v13 + 64);
  v3[21] = swift_task_alloc();
  v14 = swift_task_alloc();
  v3[22] = v14;
  v15 = swift_task_alloc();
  v3[23] = v15;
  *v15 = v3;
  v15[1] = RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v14, a3, 1);
}

uint64_t RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:)()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:);
  }

  else
  {
    v3 = RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v71 = v0;
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[2];
  v4 = *(v0[18] + 24);
  v5 = type metadata accessor for SimilarityClient();
  specialized RequestsManager.convertToFloats(_:embeddingDimension:)(v3, *(v2 + *(v5 + 20) + v4 + 8));
  if (v1)
  {
    outlined destroy of RequestsManager.PECContext(v0[22], type metadata accessor for RequestsManager.PECContext);
    v13 = v0[21];
    v12 = v0[22];
    v15 = v0[16];
    v14 = v0[17];
    v17 = v0[12];
    v16 = v0[13];
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[5];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v7 = v6;
    v8 = v0[17];
    v9 = v0[13];
    v10 = v0[3];
    v11 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    RequestsManager.PECContext.preparePECRequest(elements:shardIndices:keyConfig:)(v7, v10, v9, v8);
    v23 = v0[12];
    v24 = v0[10];
    v25 = v0[11];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[13], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);

    UUID.init()();
    v26 = UUID.uuidString.getter();
    v28 = v27;
    (*(v25 + 8))(v23, v24);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v69 = v26;
    v29 = v0[9];
    v30 = v0[4];
    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.framework);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30, v29, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[9];
    v68 = v28;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v70[0] = v37;
      *v36 = 136446466;
      v38 = [*v35 useCase];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v70);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2082;
      *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v28, v70);
      _os_log_impl(&dword_224E26000, v32, v33, "Async response is requested for '%{public}s', uuid: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA61F40](v37, -1, -1);
      MEMORY[0x22AA61F40](v36, -1, -1);
    }

    else
    {

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
    }

    v44 = v0[21];
    v43 = v0[22];
    v60 = v0[19];
    v61 = v0[20];
    v45 = v0[16];
    v46 = v0[17];
    v47 = v0[14];
    v62 = v0[15];
    v64 = v43;
    v65 = v0[13];
    v48 = v0[8];
    v66 = v0[12];
    v67 = v0[9];
    v49 = v0[6];
    v63 = v46;
    v50 = v0[4];
    v51 = v0[5];
    v52 = type metadata accessor for TaskPriority();
    (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
    outlined init with copy of AspireApiConfig(v43, v44, type metadata accessor for RequestsManager.PECContext);
    v53 = v46;
    v54 = v45;
    outlined init with copy of AspireApiConfig(v53, v45, type metadata accessor for AspireApiRequest);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50, v48, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
    v55 = (*(v60 + 80) + 48) & ~*(v60 + 80);
    v56 = (v61 + *(v47 + 80) + v55) & ~*(v47 + 80);
    v57 = (v62 + *(v49 + 80) + v56) & ~*(v49 + 80);
    v58 = swift_allocObject();
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = v69;
    v58[5] = v68;
    _s8CipherML18AspireApiPECConfigVWObTm_0(v44, v58 + v55, type metadata accessor for RequestsManager.PECContext);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v54, v58 + v56, type metadata accessor for AspireApiRequest);
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v48, v58 + v57, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v51, &async function pointer to partial apply for closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:), v58);

    outlined destroy of RequestsManager.PECContext(v63, type metadata accessor for AspireApiRequest);
    outlined destroy of RequestsManager.PECContext(v64, type metadata accessor for RequestsManager.PECContext);

    v59 = v0[1];

    return v59(v69, v68);
  }
}

{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t RequestsManager.PECContext.useCase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RequestsManager.PECContext.preparePECRequest(elements:shardIndices:keyConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v54 = a3;
  v52 = a4;
  v6 = type metadata accessor for RequestsManager.PECContext();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v58 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AspireApiEvaluationKey(0);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v47 - v17;
  v19 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v53 = *(v19 - 8);
  v20 = *(v53 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AspireApiPECRequest(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v57 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4 + *(v7 + 32);
  v27 = *(v26 + *(type metadata accessor for SimilarityClient() + 20) + 8);
  v28 = a1;
  v29 = *(a1 + 16);
  v30 = v29;
  if (v27)
  {
    v30 = v29 % v27;
  }

  if (v30)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.framework);
    v32 = v58;
    outlined init with copy of AspireApiConfig(v4, v58, type metadata accessor for RequestsManager.PECContext);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59 = v36;
      *v35 = 134349570;
      *(v35 + 4) = v29;

      *(v35 + 12) = 2050;
      *(v35 + 14) = v27;
      *(v35 + 22) = 2082;
      v37 = *v32;
      v38 = v32[1];

      outlined destroy of RequestsManager.PECContext(v32, type metadata accessor for RequestsManager.PECContext);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v59);

      *(v35 + 24) = v39;
      _os_log_impl(&dword_224E26000, v33, v34, "Invalid PEC elements.count '%{public}ld' for embedding dimension '%{public}ld', useCase '%{public}s'.", v35, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA61F40](v36, -1, -1);
      MEMORY[0x22AA61F40](v35, -1, -1);
    }

    else
    {

      outlined destroy of RequestsManager.PECContext(v32, type metadata accessor for RequestsManager.PECContext);
    }

    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v40 = v56;
    result = SimilarityClient.encryptValues(_:shardIndices:)(v28, v55, v57);
    if (!v40)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v54, v18, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      if ((*(v53 + 48))(v18, 1, v19) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v42 = v57;
      }

      else
      {
        _s8CipherML18AspireApiPECConfigVWObTm_0(v18, v22, type metadata accessor for AspireHeEvaluationKeyConfig);
        v43 = v51;
        generateEvaluationKey(secretKey:config:)(v26, v22, v51);
        outlined destroy of RequestsManager.PECContext(v22, type metadata accessor for AspireHeEvaluationKeyConfig);
        v42 = v57;
        v44 = v48;
        _s8CipherML18AspireApiPECConfigVWObTm_0(v43, v48, type metadata accessor for AspireApiEvaluationKey);
        v45 = *(v23 + 36);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v42 + v45, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
        _s8CipherML18AspireApiPECConfigVWObTm_0(v44, v42 + v45, type metadata accessor for AspireApiEvaluationKey);
        (*(v49 + 56))(v42 + v45, 0, 1, v50);
      }

      v46 = type metadata accessor for AspireApiRequest(0);
      MEMORY[0x28223BE20](v46);
      *(&v47 - 2) = v4;
      *(&v47 - 1) = v42;
      lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);
      static Message.with(_:)();
      return outlined destroy of RequestsManager.PECContext(v42, type metadata accessor for AspireApiPECRequest);
    }
  }

  return result;
}

uint64_t closure #1 in RequestsManager.PECContext.preparePECRequest(elements:shardIndices:keyConfig:)(char *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a1 + 1);

  *a1 = v6;
  *(a1 + 1) = v5;
  v8 = *(type metadata accessor for AspireApiRequest(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(&a1[v8], &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  outlined init with copy of AspireApiConfig(a3, &a1[v8], type metadata accessor for AspireApiPECRequest);
  v9 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v9 - 8) + 56))(&a1[v8], 0, 1, v9);
}

uint64_t RequestsManager.PECContext.requestData(request:networkManager:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for AspireApiPECResponse(0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AspireApiResponses(0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.PECContext.requestData(request:networkManager:), 0, 0);
}

uint64_t RequestsManager.PECContext.requestData(request:networkManager:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMd, &_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMR);
  v6 = *(type metadata accessor for AspireApiRequest(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[8] = v9;
  *(v9 + 16) = xmmword_225022960;
  outlined init with copy of AspireApiConfig(v3, v9 + v8, type metadata accessor for AspireApiRequest);
  v10 = type metadata accessor for RequestsManager.PECContext();
  v0[9] = v10;
  v11 = v2 + *(v10 + 20);
  v12 = *(type metadata accessor for UserIdentifier() + 20);
  v13 = *(v5 + 32);
  v18 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = RequestsManager.PECContext.requestData(request:networkManager:);
  v16 = v0[7];

  return v18(v16, v9, v11 + v12, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = RequestsManager.PECContext.requestData(request:networkManager:);
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = RequestsManager.PECContext.requestData(request:networkManager:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = **(v0 + 56);
  v2 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    v19 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
    (*(*(v19 - 8) + 56))(v2, 1, 1, v19);
    goto LABEL_9;
  }

  v3 = *(type metadata accessor for AspireApiResponse(0) - 8);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v4 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
LABEL_9:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 40), &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_10:
    v20 = *(v0 + 56);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of RequestsManager.PECContext(v20, type metadata accessor for AspireApiResponses);
    goto LABEL_11;
  }

  v5 = *(v0 + 40);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of RequestsManager.PECContext(v5, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_10;
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 32);
  _s8CipherML18AspireApiPECConfigVWObTm_0(v5, v9, type metadata accessor for AspireApiPECResponse);
  v11 = v10 + *(v7 + 24);
  SimilarityClient.decryptSimilarityScores(_:)(v9);
  v13 = v12;
  outlined destroy of RequestsManager.PECContext(v9, type metadata accessor for AspireApiPECResponse);
  outlined destroy of RequestsManager.PECContext(v8, type metadata accessor for AspireApiResponses);
  if (!v6)
  {
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);

    v17 = *(v0 + 8);

    return v17(v13);
  }

LABEL_11:
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v23 = *(v0 + 40);

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = v0[8];

  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t RequestsManager.PECContext.init(useCase:userId:client:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for RequestsManager.PECContext();
  _s8CipherML18AspireApiPECConfigVWObTm_0(a3, a5 + *(v8 + 20), type metadata accessor for UserIdentifier);
  return _s8CipherML18AspireApiPECConfigVWObTm_0(a4, a5 + *(v8 + 24), type metadata accessor for SimilarityClient);
}

uint64_t closure #1 in RequestsManager.convertToFloats(_:embeddingDimension:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 16);
  if (v4)
  {
    if ((a4 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_47;
    }

    v6 = result;
    v7 = 4 * a4;
    v8 = (a3 + 40);
    v29 = 4 * a4;
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *v8 >> 62;
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          memset(v31, 0, 14);
          v12 = v31;
          v32 = v31;
LABEL_26:
          v33 = v12;
          lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
          if (DataProtocol.copyBytes(to:)() != v7)
          {
            goto LABEL_39;
          }

          goto LABEL_36;
        }

        v30 = a2;
        v13 = *(v9 + 16);
        v14 = *(v9 + 24);

        v15 = __DataStorage._bytes.getter();
        if (v15)
        {
          v16 = __DataStorage._offset.getter();
          if (__OFSUB__(v13, v16))
          {
            goto LABEL_45;
          }

          v15 += v13 - v16;
        }

        v17 = __OFSUB__(v14, v13);
        v18 = v14 - v13;
        if (v17)
        {
          goto LABEL_44;
        }

        v19 = MEMORY[0x22AA5F1C0]();
        if (v19 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        v21 = (v20 + v15);
        if (!v15)
        {
          v21 = 0;
        }

        v32 = v15;
      }

      else
      {
        if (!v11)
        {
          v31[0] = *(v8 - 1);
          LOWORD(v31[1]) = v10;
          BYTE2(v31[1]) = BYTE2(v10);
          BYTE3(v31[1]) = BYTE3(v10);
          BYTE4(v31[1]) = BYTE4(v10);
          BYTE5(v31[1]) = BYTE5(v10);
          v12 = v31 + BYTE6(v10);
          v32 = v31;
          goto LABEL_26;
        }

        if (v9 >> 32 < v9)
        {
          goto LABEL_43;
        }

        v30 = a2;

        v22 = __DataStorage._bytes.getter();
        if (v22)
        {
          v23 = v22;
          v24 = __DataStorage._offset.getter();
          if (__OFSUB__(v9, v24))
          {
            goto LABEL_46;
          }

          v25 = (v9 - v24 + v23);
        }

        else
        {
          v25 = 0;
        }

        v26 = MEMORY[0x22AA5F1C0]();
        if (v26 >= (v9 >> 32) - v9)
        {
          v27 = (v9 >> 32) - v9;
        }

        else
        {
          v27 = v26;
        }

        v21 = v25 + v27;
        if (!v25)
        {
          v21 = 0;
        }

        v32 = v25;
      }

      v33 = v21;
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      a2 = v30;
      v7 = v29;
      if (DataProtocol.copyBytes(to:)() != v29)
      {
LABEL_39:
        type metadata accessor for CipherMLError();
        lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        result = outlined consume of Data._Representation(v9, v10);
        break;
      }

LABEL_36:
      result = outlined consume of Data._Representation(v9, v10);
      if (v6)
      {
        if (a2 - v6 < v7)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
        }

        v6 += v7;
      }

      else
      {
        if (v7 > 0)
        {
          goto LABEL_42;
        }

        a2 = 0;
        v6 = 0;
      }

      v8 += 2;
      --v4;
    }

    while (v4);
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x277D85DE8];
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:), 0, 0);
}

uint64_t closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:)()
{
  v16 = v0;
  v15[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  v0[16] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v15);
    _os_log_impl(&dword_224E26000, v3, v4, "Async response request '%{public}s' has started", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = v0[15];
  specialized RequestContext.networkManager()((v0 + 2));
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:);
  v12 = v0[13];
  v11 = v0[14];
  v13 = *MEMORY[0x277D85DE8];

  return RequestsManager.PECContext.requestData(request:networkManager:)(v11, (v0 + 2));
}

{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = v0[12];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v33);
    _os_log_impl(&dword_224E26000, v3, v4, "Async response request '%{public}s' has finished", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = v0[18];
  v11 = v0[11];
  v10 = v0[12];
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = MEMORY[0x22AA609C0](v11, v10);
  v0[9] = 0;
  v15 = [v12 sendReplyForBatchPEC:isa requestError:0 uuid:v14 error:v0 + 9];

  v16 = v0[9];
  if (v16)
  {
    v17 = v16;

    swift_willThrow();
    v18 = 0;
  }

  else
  {
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = v0[16];
  v20 = v0[12];

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v24 = v0[11];
    v23 = v0[12];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33[0] = v26;
    *v25 = 136446466;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v33);
    *(v25 + 12) = 2082;
    v0[10] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v33);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_224E26000, v21, v22, "Notified AMD for '%{public}s', response: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v26, -1, -1);
    MEMORY[0x22AA61F40](v25, -1, -1);
  }

  else
  {
  }

  v30 = v0[1];
  v31 = *MEMORY[0x277D85DE8];

  return v30();
}

{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = objc_opt_self();
  v5 = _convertErrorToNSError(_:)();
  v6 = MEMORY[0x22AA609C0](v3, v2);
  *(v0 + 56) = 0;
  v7 = [v4 sendReplyForBatchPEC:0 requestError:v5 uuid:v6 error:v0 + 56];

  if (*(v0 + 56))
  {
    v8 = *(v0 + 56);

    swift_willThrow();
    v9 = 0;
  }

  else
  {
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = *(v0 + 128);
  v11 = *(v0 + 96);

  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v17 = 136446722;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v28);
    *(v17 + 12) = 2080;
    *(v0 + 64) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v28);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2114;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v23;
    *v18 = v23;
    _os_log_impl(&dword_224E26000, v13, v14, "Async response request '%{public}s' has failed, notified AMD: %s, error: %{public}@", v17, 0x20u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v27, -1, -1);
    MEMORY[0x22AA61F40](v17, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 8);
  v25 = *MEMORY[0x277D85DE8];

  return v24();
}

uint64_t closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:)(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = (*v2)[17];
  v9 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  __swift_destroy_boxed_opaque_existential_0(v3 + 2);
  if (v1)
  {
    v5 = closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:);
  }

  else
  {
    v5 = closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:);
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in RequestsManager.encryptDifferentiallyPrivateFakes(batchOfElements:shardIndex:shardCount:pecConfig:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v49 = a7;
  v50 = a5;
  v51 = a4;
  v52 = a3;
  v48[0] = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v48 - v19;
  v21 = type metadata accessor for AspireApiRequests(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *a1;
  *v24 = MEMORY[0x277D84F90];
  v48[1] = v26;
  v27 = v24 + *(v26 + 20);
  UnknownStorage.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMd, &_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMR);
  v28 = *(type metadata accessor for AspireApiRequest(0) - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  v53 = xmmword_225022960;
  *(v31 + 16) = xmmword_225022960;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  if (v25 == a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = v53;
    *(inited + 32) = v50;
    outlined init with copy of AspireApiConfig(a6, v20, type metadata accessor for AspireHeEvaluationKeyConfig);
    v33 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
    (*(*(v33 - 8) + 56))(v20, 0, 1, v33);
    v34 = v54;
    RequestsManager.PECContext.preparePECRequest(elements:shardIndices:keyConfig:)(v51, inited, v20, v31 + v30);
    v35 = v34;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    swift_setDeallocating();
    if (!v34)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v36 = v54;
  v37 = swift_initStackObject();
  *(v37 + 16) = v53;
  v38 = *a8;
  if (!*(*a8 + 16))
  {
    __break(1u);
LABEL_13:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
    v38 = result;
    v41 = *(result + 16);
    if (v41)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v20 = v37;
  v39 = *a8;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v41 = *(v38 + 16);
  if (v41)
  {
LABEL_7:
    v42 = v41 - 1;
    v43 = *(v38 + 8 * v42 + 32);
    *(v38 + 16) = v42;
    *a8 = v38;
    *(v20 + 4) = v43;
    outlined init with copy of AspireApiConfig(a6, v17, type metadata accessor for AspireHeEvaluationKeyConfig);
    v44 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
    (*(*(v44 - 8) + 56))(v17, 0, 1, v44);
    RequestsManager.PECContext.preparePECRequest(elements:shardIndices:keyConfig:)(v49, v20, v17, v31 + v30);
    v35 = v36;
    if (!v36)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      swift_setDeallocating();
LABEL_11:
      *v24 = v31;
      lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests);
      v45 = Message.serializedData(partial:)();
      v46 = v48[0];
      *v48[0] = v45;
      *(v46 + 8) = v47;
      return outlined destroy of RequestsManager.PECContext(v24, type metadata accessor for AspireApiRequests);
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    swift_setDeallocating();
LABEL_9:
    *(v31 + 16) = 0;

    result = outlined destroy of RequestsManager.PECContext(v24, type metadata accessor for AspireApiRequests);
    *a10 = v35;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

void specialized RequestsManager.convertToFloats(_:embeddingDimension:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = a2 * v3;
  if ((a2 * v3) >> 64 != (a2 * v3) >> 63)
  {
    goto LABEL_10;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v4)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v7 + 16) = v4;
    bzero((v7 + 32), 4 * v3 * a2);
    if (!(v4 >> 61))
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v7 = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D84F90] + 16);
  if (v4 >> 61)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_5:
  closure #1 in RequestsManager.convertToFloats(_:embeddingDimension:)(v7 + 32, v7 + 32 + 4 * v4, a1, a2);
  if (v2)
  {
  }
}

uint64_t partial apply for closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RequestsManager.PECContext() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AspireApiRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:)(a1, v13, v14, v15, v16, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t type metadata completion function for RequestsManager.PECContext()
{
  result = type metadata accessor for UserIdentifier();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SimilarityClient();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

uint64_t _s8CipherML18AspireApiPECConfigVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AspireApiConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of RequestsManager.PECContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)partial apply(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t Coordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  Coordinator.init()();
  return v0;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  outlined init with copy of TaskPriority?(a3, &v26[-1] - v11);
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
      v21 = String.utf8CString.getter();
      v22 = *(v21 + 16);
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v21 + 32, v27, v26);

      v23 = v26[0];
      outlined destroy of TaskPriority?(a3);

      return v23;
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
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t key path setter for Coordinator.inProcessTasks : <A, B>Coordinator<A, B>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

uint64_t Coordinator.inProcessTasks.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t Coordinator.inProcessTasks.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t Coordinator.run(key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *v4;
  v5[15] = *v4;
  v7 = *(v6 + 80);
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](Coordinator.run(key:_:), v4, 0);
}

uint64_t Coordinator.run(key:_:)()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[11];
  swift_beginAccess();
  v5 = *(v3 + 112);
  v6 = *(v1 + 88);

  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for Task();
  v9 = *(v1 + 96);
  MEMORY[0x22AA60910](v4, v5, v2, v8, v9);

  v10 = v0[8];
  v0[20] = v10;
  if (v10)
  {
    v11 = *(MEMORY[0x277D857C8] + 4);
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = Coordinator.run(key:_:);
    v13 = v0[10];
    v14 = MEMORY[0x277D84950];
    v15 = v10;
    v16 = v6;
    v17 = v7;
  }

  else
  {
    v18 = v0[19];
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[13];
    v28 = v0[12];
    v29 = v0[11];
    v30 = v0[18];
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    v31 = v7;
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v20;
    v23[5] = v6;
    v23[6] = v9;
    v23[7] = v28;
    v23[8] = v21;

    v24 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v18, &async function pointer to partial apply for closure #1 in Coordinator.run(key:_:), v23);
    v0[23] = v24;
    (*(v19 + 16))(v30, v29, v20);
    v0[9] = v24;
    swift_beginAccess();
    type metadata accessor for Dictionary();

    Dictionary.subscript.setter();
    swift_endAccess();
    v25 = *(MEMORY[0x277D857C8] + 4);
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v26[1] = Coordinator.run(key:_:);
    v13 = v0[10];
    v14 = MEMORY[0x277D84950];
    v15 = v24;
    v16 = v6;
    v17 = v31;
  }

  return MEMORY[0x282200430](v13, v15, v16, v17, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = Coordinator.run(key:_:);
  }

  else
  {
    v6 = Coordinator.run(key:_:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[20];

  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = Coordinator.run(key:_:);
  }

  else
  {
    v6 = Coordinator.run(key:_:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);
  $defer #1 <A, B>() in Coordinator.run(key:_:)(*(v0 + 112));

  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[20];

  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);
  $defer #1 <A, B>() in Coordinator.run(key:_:)(*(v0 + 112));

  v3 = *(v0 + 200);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t $defer #1 <A, B>() in Coordinator.run(key:_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*(*(*a1 + 80) - 8) + 64);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v9[-v4], v3);
  v10 = 0;
  swift_beginAccess();
  v6 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Task();
  v7 = *(v1 + 96);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

uint64_t Coordinator.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Coordinator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *Coordinator.init()()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = v1[10];
  v3 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for Task();
  swift_getTupleTypeMetadata2();
  v5 = static Array._allocateUninitialized(_:)();
  v6 = specialized Dictionary.init(dictionaryLiteral:)(v5, v2, v4, v1[12]);

  v0[14] = v6;
  return v0;
}

uint64_t partial apply for closure #1 in Coordinator.run(key:_:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return specialized closure #1 in Coordinator.run(key:_:)(a1, v6, v7, v9);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of Coordinator.run(key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 144);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v14(a1, a2, a3, a4);
}

void specialized static DaemonContainerPathLookup.performSandboxExtension(for:)()
{
  if (container_copy_sandbox_token())
  {
    if (sandbox_extension_consume() == -1)
    {
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v0 = type metadata accessor for Logger();
      __swift_project_value_buffer(v0, static Logger.daemon);
      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v1, v2))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        _os_log_impl(&dword_224E26000, v1, v2, "token/process not valid for extension", v3, 2u);
        MEMORY[0x22AA61F40](v3, -1, -1);
      }
    }

    JUMPOUT(0x22AA61F40);
  }

  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.daemon);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_224E26000, oslog, v5, "token not sent by container", v6, 2u);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }
}

uint64_t specialized static DaemonContainerPathLookup.path(for:)(uint64_t a1, uint64_t a2)
{
  if (!container_query_create())
  {
    lazy protocol witness table accessor for type DaemonContainerPathError and conformance DaemonContainerPathError();
    swift_allocError();
    *v12 = xmmword_2250298B0;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }

  if (a2)
  {
    v3 = String.utf8CString.getter();
    xpc_string_create((v3 + 32));

    container_query_set_group_identifiers();
    swift_unknownObjectRelease();
  }

  v4 = [objc_opt_self() currentPersona];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  if (![v4 isDataSeparatedPersona] || (v6 = objc_msgSend(v5, sel_userPersonaUniqueString)) == 0)
  {

LABEL_13:
    v14 = *MEMORY[0x277D85ED0];
    String.init(cString:)();
    goto LABEL_14;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_13;
  }

LABEL_14:
  String.utf8CString.getter();

  container_query_set_persona_unique_string();

  container_query_set_class();
  container_query_operation_set_flags();
  if (container_query_get_single_result())
  {
    path = container_get_path();
    if (!path)
    {
      if (container_query_get_last_error() && (v22 = container_error_copy_unlocalized_description()) != 0)
      {
        v23 = v22;
        v24 = String.init(cString:)();
        v26 = v25;
        MEMORY[0x22AA61F40](v23, -1, -1);
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      lazy protocol witness table accessor for type DaemonContainerPathError and conformance DaemonContainerPathError();
      swift_allocError();
      *v29 = v24;
      *(v29 + 8) = v26;
      *(v29 + 16) = 0;
      goto LABEL_30;
    }

    if (strlen(path) >= 1)
    {
      specialized static DaemonContainerPathLookup.performSandboxExtension(for:)();
      v16 = String.init(cString:)();
      container_query_free();
      return v16;
    }

    lazy protocol witness table accessor for type DaemonContainerPathError and conformance DaemonContainerPathError();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    v28 = 2;
  }

  else
  {
    if (container_query_get_last_error() && (v17 = container_error_copy_unlocalized_description()) != 0)
    {
      v18 = v17;
      v19 = String.init(cString:)();
      v21 = v20;
      MEMORY[0x22AA61F40](v18, -1, -1);
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    lazy protocol witness table accessor for type DaemonContainerPathError and conformance DaemonContainerPathError();
    swift_allocError();
    *v27 = v19;
    *(v27 + 8) = v21;
    v28 = 1;
  }

  *(v27 + 16) = v28;
LABEL_30:
  swift_willThrow();
  return container_query_free();
}

uint64_t get_enum_tag_for_layout_string_8CipherML24DaemonContainerPathErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t lazy protocol witness table accessor for type DaemonContainerPathError and conformance DaemonContainerPathError()
{
  result = lazy protocol witness table cache variable for type DaemonContainerPathError and conformance DaemonContainerPathError;
  if (!lazy protocol witness table cache variable for type DaemonContainerPathError and conformance DaemonContainerPathError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DaemonContainerPathError and conformance DaemonContainerPathError);
  }

  return result;
}

uint64_t AspireApiPECConfig.cryptokit()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v49 = type metadata accessor for PEC.SimilarityMetric();
  v47 = *(v49 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v45 - v7;
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PEC.PlaintextPacking();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v18 = type metadata accessor for AspireHeEncryptionParameters(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HE.EncryptionParams();
  v51 = *(v23 - 8);
  v52 = v23;
  v24 = *(v51 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AspireApiPECConfig(0);
  v28 = *(v27 + 40);
  v58 = v2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + v28, v17, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v29 = *(v19 + 48);
  if (v29(v17, 1, v18) == 1)
  {
    *v22 = 0;
    *(v22 + 1) = 0;
    *(v22 + 2) = MEMORY[0x277D84F90];
    *(v22 + 3) = 0;
    v22[32] = 1;
    *(v22 + 5) = 0;
    v22[48] = 1;
    *(v22 + 7) = 0;
    v22[64] = 1;
    v30 = &v22[*(v18 + 40)];
    UnknownStorage.init()();
    if (v29(v17, 1, v18) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireSimilarityPlaintextPacking(v17, v22, type metadata accessor for AspireHeEncryptionParameters);
  }

  v31 = v26;
  v32 = v59;
  AspireHeEncryptionParameters.cryptokit()(v26);
  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v22, type metadata accessor for AspireHeEncryptionParameters);
  if (!v32)
  {
    v34 = v58;
    if ((*v58 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v35 = v55;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v58 + *(v27 + 44), v55, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v36 = v54;
      v37 = *(v53 + 48);
      if (v37(v35, 1, v54) == 1)
      {
        v38 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
        v39 = v56;
        (*(*(v38 - 8) + 56))(v56, 1, 1, v38);
        v40 = v39 + *(v36 + 20);
        UnknownStorage.init()();
        v41 = v37(v35, 1, v36);
        v42 = v57;
        if (v41 != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        }
      }

      else
      {
        v39 = v56;
        outlined init with take of AspireSimilarityPlaintextPacking(v35, v56, type metadata accessor for AspireSimilarityPlaintextPacking);
        v42 = v57;
      }

      AspireSimilarityPlaintextPacking.cryptokit()(v42);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v39, type metadata accessor for AspireSimilarityPlaintextPacking);
      if (v34[3])
      {
        v43 = *(v34 + 2);
        (*(v47 + 104))(v48, *MEMORY[0x277D02F90], v49);
        v44 = v34[6];

        return PEC.SimilarityClientConfig.init(encryptionParams:scalingFactor:plaintextPacking:embeddingDimension:galoisElements:similarityMetric:extraPlaintextModuli:)();
      }

      else
      {
        (*(v45 + 8))(v42, v46);
        (*(v51 + 8))(v31, v52);
        type metadata accessor for CipherMLError();
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t PEC.SerializedCiphertextCoeffMatrix.proto()()
{
  type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  return static Message.with(_:)();
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.cryptokit(encryptionParams:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v100 = a2;
  v3 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = (&v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v119 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v117 = &v90 - v11;
  v12 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v121 = *(v12 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for HE.SerializedCiphertext();
  v118 = *(v116 - 8);
  v15 = *(v118 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = (&v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v103 = &v90 - v19;
  v102 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v101 = *(v102 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v105 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PEC.PlaintextPacking();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for HE.EncryptionParams();
  v106 = *(v26 - 8);
  v27 = *(v106 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PEC.PlaintextMatrixDims();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v90 - v36;
  v38 = *v2;
  v39 = v2[1];
  v40 = v122;
  result = PEC.PlaintextMatrixDims.init(rowCount:colCount:)();
  if (!v40)
  {
    v99 = v37;
    v98 = v34;
    v92 = v29;
    v93 = v25;
    v94 = v26;
    v96 = v31;
    v95 = 0;
    v42 = *(v2 + 1);
    v43 = *(v42 + 16);
    v97 = v30;
    if (v43)
    {
      v91 = v2;
      v124 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
      v44 = 0;
      v45 = v124;
      v46 = v120;
      v114 = v42 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
      v108 = *MEMORY[0x277D02F30];
      v47 = v119;
      v112 = (v118 + 104);
      v107 = *MEMORY[0x277D02F28];
      v111 = v118 + 32;
      v48 = v110;
      v113 = v43;
      while (v44 < *(v42 + 16))
      {
        outlined init with copy of AspireHeSerializedCiphertext(v114 + *(v121 + 72) * v44, v46, type metadata accessor for AspireHeSerializedCiphertext);
        v49 = v117;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v46, v117, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
        v50 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
        if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
        {
          type metadata accessor for CipherMLError();
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v46, type metadata accessor for AspireHeSerializedCiphertext);
          (*(v96 + 8))(v99, v97);
        }

        v122 = v45;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined init with take of AspireSimilarityPlaintextPacking(v49, v48, type metadata accessor for AspireHeSerializedFullCiphertext);
          v52 = *v48;
          v51 = v48[1];
          v53 = v48[2];
          v54 = *(v53 + 16);
          if (v54)
          {
            v55 = *v48;
            v109 = v48[1];
            outlined copy of Data._Representation(v55, v51);
            v123 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
            v56 = v123;
            v57 = (v53 + 32);
            v58 = *(v123 + 16);
            do
            {
              v60 = *v57++;
              v59 = v60;
              v123 = v56;
              v61 = *(v56 + 24);
              if (v58 >= v61 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v58 + 1, 1);
                v56 = v123;
              }

              *(v56 + 16) = v58 + 1;
              *(v56 + 8 * v58++ + 32) = v59;
              --v54;
            }

            while (v54);
            _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v120, type metadata accessor for AspireHeSerializedCiphertext);
            v51 = v109;
            v48 = v110;
          }

          else
          {
            outlined copy of Data._Representation(*v48, v48[1]);
            _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v120, type metadata accessor for AspireHeSerializedCiphertext);
            v56 = MEMORY[0x277D84F90];
          }

          v65 = v48[3];
          _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v48, type metadata accessor for AspireHeSerializedFullCiphertext);
          v66 = v115;
          *v115 = v52;
          v66[1] = v51;
          v67 = v107;
          v46 = v120;
        }

        else
        {
          _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v46, type metadata accessor for AspireHeSerializedCiphertext);
          outlined init with take of AspireSimilarityPlaintextPacking(v49, v47, type metadata accessor for AspireHeSerializedSeededCiphertext);
          v62 = *v47;
          v63 = v47[1];
          v64 = v47;
          v56 = v47[2];
          v65 = *(v64 + 24);
          outlined copy of Data._Representation(v62, v63);
          outlined copy of Data._Representation(v56, v65);
          _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v64, type metadata accessor for AspireHeSerializedSeededCiphertext);
          v66 = v115;
          *v115 = v62;
          v66[1] = v63;
          v67 = v108;
        }

        v66[2] = v56;
        v66[3] = v65;
        v68 = v66;
        v69 = v116;
        (*v112)(v66, v67, v116);
        v45 = v122;
        v124 = v122;
        v71 = *(v122 + 16);
        v70 = *(v122 + 24);
        if (v71 >= v70 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1);
          v69 = v116;
          v45 = v124;
        }

        ++v44;
        *(v45 + 16) = v71 + 1;
        result = (*(v118 + 32))(v45 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v71, v68, v69);
        v47 = v119;
        if (v44 == v113)
        {
          v2 = v91;
          v72 = v97;
          v73 = v104;
          v74 = v106;
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
      v73 = v104;
      v74 = v106;
      v72 = v30;
LABEL_22:
      v75 = v92;
      v76 = v94;
      (*(v74 + 16))(v92, v73, v94);
      v77 = v96;
      (*(v96 + 16))(v98, v99, v72);
      v78 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
      v79 = v103;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v78 + 32), v103, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v80 = *(v101 + 48);
      v81 = v102;
      if (v80(v79, 1, v102) == 1)
      {
        v82 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
        v83 = v105;
        (*(*(v82 - 8) + 56))(v105, 1, 1, v82);
        v84 = v83 + *(v81 + 20);
        UnknownStorage.init()();
        if (v80(v79, 1, v81) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v79, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        }
      }

      else
      {
        v83 = v105;
        outlined init with take of AspireSimilarityPlaintextPacking(v79, v105, type metadata accessor for AspireSimilarityPlaintextPacking);
      }

      v85 = v95;
      AspireSimilarityPlaintextPacking.cryptokit()(v93);
      v86 = v98;
      v87 = v99;
      if (v85)
      {

        _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v83, type metadata accessor for AspireSimilarityPlaintextPacking);
        v88 = *(v77 + 8);
        v89 = v97;
        v88(v86, v97);
        (*(v106 + 8))(v75, v76);
        return (v88)(v87, v89);
      }

      else
      {
        _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v83, type metadata accessor for AspireSimilarityPlaintextPacking);
        PEC.SerializedCiphertextCoeffMatrix.init(encryptionParams:dimensions:packing:ciphertexts:)();
        return (*(v77 + 8))(v87, v97);
      }
    }
  }

  return result;
}

uint64_t Message.equalsIgnoringUnknown(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v8 + 16);
  v14(v13, a1, a2, v11);
  dispatch thunk of Message.unknownFields.getter();
  dispatch thunk of Message.unknownFields.setter();
  v18[3] = a2;
  v18[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (v14)(boxed_opaque_existential_1, v13, a2);
  LOBYTE(a1) = dispatch thunk of Message.isEqualTo(message:)();
  (*(v8 + 8))(v13, a2);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return a1 & 1;
}

uint64_t AspireHeEncryptionParameters.cryptokit()@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v26 = type metadata accessor for HE.RlweParams();
  v25 = *(v26 - 8);
  v2 = *(v25 + 64);
  v3 = MEMORY[0x28223BE20](v26);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = type metadata accessor for HE.Scheme();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  v16 = *(v1 + 56);
  v17 = *(v1 + 64);
  if (v17 == 1 && v16)
  {
    v18 = MEMORY[0x277D02F40];
    if (v16 != 1)
    {
      v18 = MEMORY[0x277D02F48];
    }

    (*(v9 + 104))(v24 - v14, *v18, v8);
    v19 = v24[2];
    AspireHeEncryptionParameters.rlweParams()(v7);
    v20 = v26;
    v21 = v25;
    if (!v19)
    {
      (*(v25 + 16))(v5, v7, v26);
      (*(v9 + 16))(v13, v15, v8);
      HE.EncryptionParams.init(rlweParams:scheme:)();
      (*(v21 + 8))(v7, v20);
    }

    return (*(v9 + 8))(v15, v8);
  }

  else
  {
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    *v23 = v16;
    *(v23 + 8) = v17;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t HE.SerializedCiphertext.proto()()
{
  type metadata accessor for AspireHeSerializedCiphertext(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);
  return static Message.with(_:)();
}

size_t AspireHeSerializedCiphertextVec.cryptokit()()
{
  v2 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HE.SerializedCiphertext();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *v0;
  v24 = *(*v0 + 16);
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
    return v25;
  }

  v62 = v5;
  v54 = v1;
  v73 = MEMORY[0x277D84F90];
  v66 = v24;
  v26 = v20;
  v71 = v23;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
  v28 = 0;
  v25 = v73;
  v29 = v71;
  v70 = v71 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v57 = *MEMORY[0x277D02F30];
  v65 = (v26 + 104);
  v56 = *MEMORY[0x277D02F28];
  v67 = v26;
  v68 = v18;
  v64 = v26 + 32;
  v69 = v12;
  v61 = v14;
  v55 = v17;
  while (v28 < *(v29 + 16))
  {
    outlined init with copy of AspireHeSerializedCiphertext(v70 + *(v14 + 72) * v28, v17, type metadata accessor for AspireHeSerializedCiphertext);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v12, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v30 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
    if ((*(*(v30 - 8) + 48))(v12, 1, v30) == 1)
    {
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v17, type metadata accessor for AspireHeSerializedCiphertext);

      return v25;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v62;
      outlined init with take of AspireSimilarityPlaintextPacking(v12, v62, type metadata accessor for AspireHeSerializedFullCiphertext);
      v32 = *v31;
      v33 = v31[1];
      v34 = v31[2];
      v35 = *(v34 + 16);
      v63 = v25;
      if (v35)
      {
        v59 = v33;
        v60 = v32;
        outlined copy of Data._Representation(v32, v33);
        v72 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
        v36 = v72;
        v37 = (v34 + 32);
        v38 = *(v72 + 16);
        do
        {
          v40 = *v37++;
          v39 = v40;
          v72 = v36;
          v41 = *(v36 + 24);
          if (v38 >= v41 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v38 + 1, 1);
            v36 = v72;
          }

          *(v36 + 16) = v38 + 1;
          *(v36 + 8 * v38++ + 32) = v39;
          --v35;
        }

        while (v35);
        v17 = v55;
        _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v55, type metadata accessor for AspireHeSerializedCiphertext);
        v48 = v61;
        v31 = v62;
        v50 = v59;
        v49 = v60;
      }

      else
      {
        v48 = v14;
        v49 = v32;
        v50 = v33;
        outlined copy of Data._Representation(v32, v33);
        _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v17, type metadata accessor for AspireHeSerializedCiphertext);
        v36 = MEMORY[0x277D84F90];
      }

      v45 = v31[3];
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v31, type metadata accessor for AspireHeSerializedFullCiphertext);
      *v22 = v49;
      v22[1] = v50;
      v47 = v56;
      v14 = v48;
      v25 = v63;
    }

    else
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v17, type metadata accessor for AspireHeSerializedCiphertext);
      v42 = v58;
      outlined init with take of AspireSimilarityPlaintextPacking(v12, v58, type metadata accessor for AspireHeSerializedSeededCiphertext);
      v43 = *v42;
      v44 = v42[1];
      v36 = v42[2];
      v45 = v42[3];
      outlined copy of Data._Representation(*v42, v44);
      outlined copy of Data._Representation(v36, v45);
      v46 = v42;
      v14 = v61;
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v46, type metadata accessor for AspireHeSerializedSeededCiphertext);
      *v22 = v43;
      v22[1] = v44;
      v47 = v57;
    }

    v22[2] = v36;
    v22[3] = v45;
    v51 = v68;
    (*v65)(v22, v47, v68);
    v73 = v25;
    v53 = *(v25 + 16);
    v52 = *(v25 + 24);
    if (v53 >= v52 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1);
      v25 = v73;
    }

    ++v28;
    *(v25 + 16) = v53 + 1;
    result = (*(v67 + 32))(v25 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v53, v22, v51);
    v12 = v69;
    v29 = v71;
    if (v28 == v66)
    {
      return v25;
    }
  }

  __break(1u);
  return result;
}

uint64_t AspireHeHeScheme.cryptokit()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 != 1 || v2 == 0)
  {
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    *v5 = v2;
    *(v5 + 8) = v3;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    if (v2 == 1)
    {
      v8 = MEMORY[0x277D02F40];
    }

    else
    {
      v8 = MEMORY[0x277D02F48];
    }

    v9 = *v8;
    v10 = type metadata accessor for HE.Scheme();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }
}

uint64_t AspireHeEvaluationKeyConfig.cryptokit()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v23[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - v6;
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HE.EncryptionParams();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3 + *(v17 + 28), v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v18 = *(v9 + 48);
  if (v18(v7, 1, v8) == 1)
  {
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = MEMORY[0x277D84F90];
    *(v12 + 3) = 0;
    v12[32] = 1;
    *(v12 + 5) = 0;
    v12[48] = 1;
    *(v12 + 7) = 0;
    v12[64] = 1;
    v19 = &v12[*(v8 + 40)];
    UnknownStorage.init()();
    if (v18(v7, 1, v8) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireSimilarityPlaintextPacking(v7, v12, type metadata accessor for AspireHeEncryptionParameters);
  }

  AspireHeEncryptionParameters.cryptokit()(v16);
  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v12, type metadata accessor for AspireHeEncryptionParameters);
  if (!v2)
  {
    v21 = *v3;
    v22 = *(v3 + 8);

    return HE.EvaluationKeyConfig.init(encryptionParams:galoisElements:hasRelinKey:)();
  }

  return result;
}

uint64_t HE.SerializedEvaluationKey.proto()()
{
  type metadata accessor for AspireHeSerializedEvaluationKey(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey);
  return static Message.with(_:)();
}

uint64_t AspireHeEncryptionParameters.rlweParams()@<X0>(uint64_t a1@<X8>)
{
  v4 = static HE.RlweParams.allCases.getter();
  v10 = v1;
  result = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in AspireHeEncryptionParameters.rlweParams(), &v9, v4);
  if (!v2)
  {
    if (*(result + 16))
    {
      v6 = result;
      v7 = type metadata accessor for HE.RlweParams();
      (*(*(v7 - 8) + 16))(a1, v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)), v7);
    }

    else
    {

      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      outlined init with copy of AspireHeSerializedCiphertext(v1, v8, type metadata accessor for AspireHeEncryptionParameters);
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for HE.RlweParams();
  v7 = *(*(v40 - 8) + 64);
  v8 = (MEMORY[0x28223BE20])();
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TokenCache.CachedToken(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      outlined init with copy of AspireHeSerializedCiphertext(a3 + v16 + v17 * v14, v13, type metadata accessor for TokenCache.CachedToken);
      v18 = a1(v13);
      if (v3)
      {
        _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v13, type metadata accessor for TokenCache.CachedToken);

        goto LABEL_15;
      }

      if (v18)
      {
        outlined init with take of AspireSimilarityPlaintextPacking(v13, v25, type metadata accessor for TokenCache.CachedToken);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = outlined init with take of AspireSimilarityPlaintextPacking(v25, v15 + v16 + v21 * v17, type metadata accessor for TokenCache.CachedToken);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v13, type metadata accessor for TokenCache.CachedToken);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t HE.Scheme.proto()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HE.Scheme();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 16);
  v9(v8, v1, v3, v6);
  result = (*(v4 + 88))(v8, v3);
  if (result == *MEMORY[0x277D02F40])
  {
    v11 = 1;
LABEL_5:
    *a1 = v11;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D02F48])
  {
    v11 = 2;
    goto LABEL_5;
  }

  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  (v9)(v12, v1, v3);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v4 + 8))(v8, v3);
}

uint64_t HE.SecurityLevel.proto()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HE.SecurityLevel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 16);
  v9(v8, v1, v3, v6);
  result = (*(v4 + 88))(v8, v3);
  v11 = 0;
  if (result == *MEMORY[0x277D02EF0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x277D02EE8])
  {
    v11 = 1;
LABEL_4:
    *a1 = v11;
    *(a1 + 8) = 1;
    return result;
  }

  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  (v9)(v12, v1, v3);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v4 + 8))(v8, v3);
}

uint64_t HE.RlweParams.protoSecurityLevel()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HE.RlweParams();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1, v3, v6);
  result = (*(v4 + 88))(v8, v3);
  if (result == *MEMORY[0x277D02EB8] || result == *MEMORY[0x277D02EC0])
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  else if (result == *MEMORY[0x277D02E68] || result == *MEMORY[0x277D02E88] || result == *MEMORY[0x277D02E78] || result == *MEMORY[0x277D02E60] || result == *MEMORY[0x277D02E58] || result == *MEMORY[0x277D02E50] || result == *MEMORY[0x277D02E48] || result == *MEMORY[0x277D02EA8] || result == *MEMORY[0x277D02EB0] || result == *MEMORY[0x277D02EA0] || result == *MEMORY[0x277D02E80] || result == *MEMORY[0x277D02E90] || (v15 = v4, result == *MEMORY[0x277D02E98]) || result == *MEMORY[0x277D02E70])
  {
    *a1 = 1;
    *(a1 + 8) = 1;
  }

  else
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.daemon);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_224E26000, v11, v12, "Unknown encryption parameters", v13, 2u);
      MEMORY[0x22AA61F40](v13, -1, -1);
    }

    *a1 = 0;
    *(a1 + 8) = 1;
    return (*(v15 + 8))(v8, v3);
  }

  return result;
}

uint64_t HE.EncryptionParams.protoSecurityLevel()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HE.RlweParams();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  HE.EncryptionParams.rlweParams.getter();
  HE.RlweParams.protoSecurityLevel()(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t HE.EncryptionParams.proto()()
{
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  return static Message.with(_:)();
}

uint64_t closure #1 in HE.EncryptionParams.proto()(uint64_t a1)
{
  v31 = type metadata accessor for HE.Scheme();
  v28 = *(v31 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for HE.RlweParams();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  HE.EncryptionParams.rlweParams.getter();
  v13 = HE.RlweParams.polynomialDegree.getter();
  v14 = *(v9 + 8);
  result = v14(v12, v8);
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = v13;
    HE.EncryptionParams.rlweParams.getter();
    v16 = HE.RlweParams.plaintextModulus.getter();
    v14(v12, v8);
    *(a1 + 8) = v16;
    HE.EncryptionParams.rlweParams.getter();
    v17 = HE.RlweParams.coefficientModuli.getter();
    v14(v12, v8);
    v18 = *(a1 + 16);

    *(a1 + 16) = v17;
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
    HE.EncryptionParams.rlweParams.getter();
    HE.RlweParams.protoSecurityLevel()(&v29);
    v14(v12, v8);
    v19 = v30;
    *(a1 + 40) = v29;
    *(a1 + 48) = v19;
    HE.EncryptionParams.scheme.getter();
    v20 = v28;
    v21 = *(v28 + 16);
    v22 = v31;
    v21(v4, v7, v31);
    v23 = (*(v20 + 88))(v4, v22);
    if (v23 == *MEMORY[0x277D02F40])
    {
      v24 = 1;
LABEL_6:
      result = (*(v20 + 8))(v7, v22);
      *(a1 + 56) = v24;
      *(a1 + 64) = 1;
      return result;
    }

    if (v23 == *MEMORY[0x277D02F48])
    {
      v24 = 2;
      goto LABEL_6;
    }

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    v21(v25, v7, v22);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v26 = *(v20 + 8);
    v26(v7, v22);
    return (v26)(v4, v22);
  }

  return result;
}

BOOL closure #1 in AspireHeEncryptionParameters.rlweParams()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HE.SecurityLevel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  v11 = HE.RlweParams.polynomialDegree.getter();
  v12 = 0;
  if ((v11 & 0x8000000000000000) == 0 && v11 == *a2)
  {
    v13 = HE.RlweParams.coefficientModuli.getter();
    v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v13, *(a2 + 16));

    if ((v14 & 1) != 0 && HE.RlweParams.plaintextModulus.getter() == *(a2 + 8))
    {
      HE.RlweParams.securityLevel.getter();
      v15 = *(v4 + 16);
      v15(v8, v10, v3);
      v16 = (*(v4 + 88))(v8, v3);
      if (v16 == *MEMORY[0x277D02EF0])
      {
        v17 = 0;
      }

      else
      {
        if (v16 != *MEMORY[0x277D02EE8])
        {
          type metadata accessor for CipherMLError();
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
          swift_allocError();
          v15(v22, v10, v3);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v23 = *(v4 + 8);
          v23(v10, v3);
          v23(v8, v3);
          return v12;
        }

        v17 = 1;
      }

      v19 = *(a2 + 48);
      v20 = *(a2 + 40);
      (*(v4 + 8))(v10, v3);
      v21 = v20 != 0;
      if (!v19)
      {
        v21 = v20;
      }

      return v17 == v21;
    }

    else
    {
      return 0;
    }
  }

  return v12;
}

uint64_t closure #1 in HE.SerializedCiphertext.proto()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for HE.SerializedCiphertext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v12, a2, v8);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x277D02F30])
  {
    v27 = a1;
    (*(v9 + 96))(v12, v8);
    v14 = *v12;
    v15 = v12[1];
    v17 = v12[2];
    v16 = v12[3];
    v18 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
    MEMORY[0x28223BE20](v18);
    *(&v26 - 4) = v14;
    *(&v26 - 3) = v15;
    *(&v26 - 2) = v17;
    *(&v26 - 1) = v16;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext);
    static Message.with(_:)();
    outlined consume of Data._Representation(v14, v15);
    outlined consume of Data._Representation(v17, v16);
LABEL_5:
    v24 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
    return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v27, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  }

  if (v13 == *MEMORY[0x277D02F28])
  {
    v27 = a1;
    (*(v9 + 96))(v12, v8);
    v19 = *v12;
    v20 = v12[1];
    v21 = v12[2];
    v22 = v12[3];
    v23 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
    MEMORY[0x28223BE20](v23);
    *(&v26 - 4) = v19;
    *(&v26 - 3) = v20;
    *(&v26 - 2) = v21;
    *(&v26 - 1) = v22;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext);
    static Message.with(_:)();
    outlined consume of Data._Representation(v19, v20);

    goto LABEL_5;
  }

  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in closure #1 in HE.SerializedCiphertext.proto()(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = a1[1];
  outlined copy of Data._Representation(a2, a3);
  outlined consume of Data._Representation(v10, v11);
  *a1 = a2;
  a1[1] = a3;
  v12 = a1[2];
  v13 = a1[3];
  outlined copy of Data._Representation(a4, a5);
  result = outlined consume of Data._Representation(v12, v13);
  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t closure #2 in closure #1 in HE.SerializedCiphertext.proto()(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = a1[1];
  outlined copy of Data._Representation(a2, a3);
  outlined consume of Data._Representation(v10, v11);
  *a1 = a2;
  a1[1] = a3;
  v12 = *(a4 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v21 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v21;
    v15 = (a4 + 32);
    while (1)
    {
      v17 = *v15++;
      v16 = v17;
      if ((v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v16))
      {
        goto LABEL_10;
      }

      v19 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      *(v21 + 4 * v19 + 32) = v16;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    v20 = a1[2];

    a1[2] = v13;
    a1[3] = a5;
  }

  return result;
}

uint64_t AspireHeSerializedCiphertext.cryptokit()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - v14;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v35 - v14, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v16 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspireSimilarityPlaintextPacking(v15, v7, type metadata accessor for AspireHeSerializedFullCiphertext);
      v18 = *v7;
      v19 = v7[1];
      v20 = v7[2];
      v21 = *(v20 + 16);
      if (v21)
      {
        v35 = v7[1];
        v36 = v18;
        outlined copy of Data._Representation(v18, v19);
        v37 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
        v22 = v37;
        v23 = (v20 + 32);
        v24 = *(v37 + 16);
        do
        {
          v26 = *v23++;
          v25 = v26;
          v37 = v22;
          v27 = *(v22 + 24);
          if (v24 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v24 + 1, 1);
            v22 = v37;
          }

          *(v22 + 16) = v24 + 1;
          *(v22 + 8 * v24++ + 32) = v25;
          --v21;
        }

        while (v21);
        v19 = v35;
        v18 = v36;
      }

      else
      {
        outlined copy of Data._Representation(*v7, v7[1]);
        v22 = MEMORY[0x277D84F90];
      }

      v31 = v7[3];
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v7, type metadata accessor for AspireHeSerializedFullCiphertext);
      *a1 = v18;
      a1[1] = v19;
      a1[2] = v22;
      v32 = MEMORY[0x277D02F28];
    }

    else
    {
      outlined init with take of AspireSimilarityPlaintextPacking(v15, v11, type metadata accessor for AspireHeSerializedSeededCiphertext);
      v28 = *v11;
      v29 = v11[1];
      v30 = v11[2];
      v31 = v11[3];
      outlined copy of Data._Representation(*v11, v29);
      outlined copy of Data._Representation(v30, v31);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v11, type metadata accessor for AspireHeSerializedSeededCiphertext);
      *a1 = v28;
      a1[1] = v29;
      a1[2] = v30;
      v32 = MEMORY[0x277D02F30];
    }

    a1[3] = v31;
    v33 = *v32;
    v34 = type metadata accessor for HE.SerializedCiphertext();
    return (*(*(v34 - 8) + 104))(a1, v33, v34);
  }
}

uint64_t Array<A>.proto()()
{
  type metadata accessor for AspireHeSerializedCiphertextVec(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec);
  return static Message.with(_:)();
}

uint64_t closure #1 in Array<A>.proto()(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for HE.SerializedCiphertext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v27 = a1;
    v37 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v36 = v37;
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v17 = a2 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v30 = (v15 - 8);
    v31 = v16;
    v29 = *(v15 + 56);
    v18 = v28;
    while (1)
    {
      v35 = v14;
      v19 = v31(v18, v17, v6);
      MEMORY[0x28223BE20](v19);
      *(&v27 - 2) = v18;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);
      static Message.with(_:)();
      if (v3)
      {
        break;
      }

      v34 = 0;
      v20 = v6;
      (*v30)(v18, v6);
      v21 = v36;
      v37 = v36;
      v23 = *(v36 + 16);
      v22 = *(v36 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
        v18 = v28;
        v21 = v37;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v36 = v21;
      outlined init with take of AspireSimilarityPlaintextPacking(v13, v21 + v24 + *(v32 + 72) * v23, type metadata accessor for AspireHeSerializedCiphertext);
      v17 += v29;
      v3 = v34;
      v14 = v35 - 1;
      v6 = v20;
      if (v35 == 1)
      {
        a1 = v27;
        goto LABEL_10;
      }
    }

    (*v30)(v18, v6);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
LABEL_10:
    v26 = *a1;

    *a1 = v36;
  }

  return result;
}

uint64_t HE.SerializedGaloisKey.proto()()
{
  type metadata accessor for AspireHeSerializedGaloisKey(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey);
  return static Message.with(_:)();
}

uint64_t closure #1 in HE.SerializedGaloisKey.proto()(void *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v9 = HE.SerializedGaloisKey.galoisKey.getter();
  v10 = 0;
  v12 = v9 + 64;
  v11 = *(v9 + 64);
  v43 = v9;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v39 = v16;
  v40 = v9 + 64;
  while (v15)
  {
LABEL_11:
    v18 = __clz(__rbit64(v15)) | (v10 << 6);
    v19 = *(*(v43 + 48) + 4 * v18);
    v20 = *(*(v43 + 56) + 8 * v18);
    MEMORY[0x28223BE20](v9);
    *(&v38 - 2) = v20;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey);

    static Message.with(_:)();

    if (v2)
    {
    }

    outlined init with take of AspireSimilarityPlaintextPacking(v8, v45, type metadata accessor for AspireHeSerializedKeySwitchKey);
    v21 = v44;
    v22 = *v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v46 = v24;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

      v26 = v31;
    }

    v2 = 0;
    v33 = v46;
    if (v30)
    {
      v9 = outlined assign with take of AspireHeSerializedKeySwitchKey(v45, v46[7] + *(v41 + 72) * v26);
      v12 = v40;
    }

    else
    {
      v46[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v19;
      v9 = outlined init with take of AspireSimilarityPlaintextPacking(v45, v33[7] + *(v41 + 72) * v26, type metadata accessor for AspireHeSerializedKeySwitchKey);
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      v12 = v40;
      if (v35)
      {
        goto LABEL_25;
      }

      v33[2] = v36;
    }

    v15 &= v15 - 1;
    *v44 = v33;
    v16 = v39;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
    }

    v15 = *(v12 + 8 * v17);
    ++v10;
    if (v15)
    {
      v10 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in HE.SerializedGaloisKey.proto()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a2;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec);
  result = static Message.with(_:)();
  if (!v2)
  {
    v11 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v11, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    outlined init with take of AspireSimilarityPlaintextPacking(v9, a1 + v11, type metadata accessor for AspireHeSerializedCiphertextVec);
    return (*(v6 + 56))(a1 + v11, 0, 1, v5);
  }

  return result;
}

uint64_t HE.SerializedRelinKey.proto()()
{
  type metadata accessor for AspireHeSerializedRelinKey(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey);
  return static Message.with(_:)();
}

uint64_t closure #1 in HE.SerializedRelinKey.proto()(uint64_t a1)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = HE.SerializedRelinKey.relinKey.getter();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec);
  static Message.with(_:)();

  if (!v1)
  {
    v20 = v11;
    v16 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23 + v16, v5, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
    v17 = *(v21 + 48);
    if (v17(v5, 1, v6) == 1)
    {
      UnknownStorage.init()();
      (*(v20 + 56))(&v9[*(v6 + 20)], 1, 1, v10);
      if (v17(v5, 1, v6) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
      }
    }

    else
    {
      outlined init with take of AspireSimilarityPlaintextPacking(v5, v9, type metadata accessor for AspireHeSerializedKeySwitchKey);
    }

    v18 = *(v6 + 20);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v9[v18], &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    outlined init with take of AspireSimilarityPlaintextPacking(v14, &v9[v18], type metadata accessor for AspireHeSerializedCiphertextVec);
    (*(v20 + 56))(&v9[v18], 0, 1, v10);
    v19 = v23;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v23 + v16, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
    outlined init with take of AspireSimilarityPlaintextPacking(v9, v19 + v16, type metadata accessor for AspireHeSerializedKeySwitchKey);
    return (*(v21 + 56))(v19 + v16, 0, 1, v6);
  }

  return result;
}

uint64_t closure #1 in HE.SerializedEvaluationKey.proto()(uint64_t a1)
{
  v40 = a1;
  v42 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v38 = *(v42 - 8);
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CryptoKitPrivate2HEO18SerializedRelinKeyVSgMd, &_s16CryptoKitPrivate2HEO18SerializedRelinKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for HE.SerializedRelinKey();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CryptoKitPrivate2HEO19SerializedGaloisKeyVSgMd, &_s16CryptoKitPrivate2HEO19SerializedGaloisKeyVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for HE.SerializedGaloisKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  HE.SerializedEvaluationKey.galoisKey.getter();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s16CryptoKitPrivate2HEO19SerializedGaloisKeyVSgMd, &_s16CryptoKitPrivate2HEO19SerializedGaloisKeyVSgMR);
  }

  else
  {
    v23 = (*(v19 + 32))(v22, v17, v18);
    MEMORY[0x28223BE20](v23);
    *(&v38 - 2) = v22;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey);
    v24 = v46;
    static Message.with(_:)();
    if (v24)
    {
      return (*(v19 + 8))(v22, v18);
    }

    v46 = 0;
    v26 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 20);
    v27 = v40;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40 + v26, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
    outlined init with take of AspireSimilarityPlaintextPacking(v13, v27 + v26, type metadata accessor for AspireHeSerializedGaloisKey);
    (*(v39 + 56))(v27 + v26, 0, 1, v10);
    (*(v19 + 8))(v22, v18);
  }

  HE.SerializedEvaluationKey.relinKey.getter();
  v29 = v44;
  v28 = v45;
  v30 = (*(v44 + 48))(v6, 1, v45);
  v31 = v43;
  if (v30 == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s16CryptoKitPrivate2HEO18SerializedRelinKeyVSgMd, &_s16CryptoKitPrivate2HEO18SerializedRelinKeyVSgMR);
  }

  v32 = (*(v29 + 32))(v43, v6, v28);
  MEMORY[0x28223BE20](v32);
  *(&v38 - 2) = v31;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey);
  v34 = v41;
  v33 = v42;
  v35 = v46;
  static Message.with(_:)();
  if (!v35)
  {
    v36 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
    v37 = v40;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40 + v36, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
    outlined init with take of AspireSimilarityPlaintextPacking(v34, v37 + v36, type metadata accessor for AspireHeSerializedRelinKey);
    (*(v38 + 56))(v37 + v36, 0, 1, v33);
  }

  return (*(v29 + 8))(v31, v28);
}

uint64_t PIR.PirParams.proto()()
{
  type metadata accessor for AspirePirPirParameters(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspirePirPirParameters and conformance AspirePirPirParameters, type metadata accessor for AspirePirPirParameters);
  return static Message.with(_:)();
}

uint64_t closure #1 in PIR.PirParams.proto()(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v3 = type metadata accessor for PIR.PirAlgorithm();
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v3);
  v87 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v88 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v84 - v10;
  v12 = type metadata accessor for HE.EncryptionParams();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AspireHeEncryptionParameters(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  PIR.PirParams.encryptionParams.getter();
  v92 = v16;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  v22 = v94;
  static Message.with(_:)();
  if (v22)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v85 = v18;
  v86 = v11;
  v84 = 0;
  v94 = a2;
  (*(v13 + 8))(v16, v12);
  v24 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v25 = v91;
  v26 = *(v91 + v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v25 + v24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v28 = AspirePirPirParameters._StorageClass.init(copying:)(v28);
    *(v25 + v24) = v28;
  }

  v32 = v86;
  v33 = v85;
  outlined init with take of AspireSimilarityPlaintextPacking(v21, v86, type metadata accessor for AspireHeEncryptionParameters);
  (*(v33 + 56))(v32, 0, 1, v17);
  v34 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v32, v28 + v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  swift_endAccess();
  v35 = PIR.PirParams.entriesCount.getter();
  if (v35 < 0)
  {
    goto LABEL_30;
  }

  v36 = v35;
  v37 = v91;
  v38 = *(v91 + v24);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v37 + v24);
  if ((v39 & 1) == 0)
  {
    v41 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v40 = AspirePirPirParameters._StorageClass.init(copying:)(v40);
    *(v37 + v24) = v40;
  }

  v44 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  swift_beginAccess();
  *(v40 + v44) = v36;
  v45 = PIR.PirParams.entrySize.getter();
  if (v45 < 0)
  {
    goto LABEL_31;
  }

  v46 = v45;
  v47 = *(v37 + v24);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v37 + v24);
  if ((v48 & 1) == 0)
  {
    v50 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v49 = AspirePirPirParameters._StorageClass.init(copying:)(v49);
    *(v37 + v24) = v49;
  }

  v53 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  swift_beginAccess();
  *(v49 + v53) = v46;
  v54 = PIR.PirParams.dimensions.getter();
  v55 = *(v54 + 16);
  if (v55)
  {
    v93 = MEMORY[0x277D84F90];
    v56 = v54;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
    v57 = v56;
    v58 = 32;
    v59 = v93;
    while (1)
    {
      v60 = *(v57 + v58);
      if (v60 < 0)
      {
        break;
      }

      v93 = v59;
      v62 = *(v59 + 16);
      v61 = *(v59 + 24);
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
        v57 = v56;
        v59 = v93;
      }

      *(v59 + 16) = v62 + 1;
      *(v59 + 8 * v62 + 32) = v60;
      v58 += 8;
      if (!--v55)
      {

        v37 = v91;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_19:
  v63 = *(v37 + v24);
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v37 + v24);
  v66 = v87;
  if ((v64 & 1) == 0)
  {
    v67 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    swift_allocObject();
    v65 = AspirePirPirParameters._StorageClass.init(copying:)(v65);
    *(v37 + v24) = v65;
  }

  v70 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  v71 = *(v65 + v70);
  *(v65 + v70) = v59;

  v72 = v88;
  PIR.PirParams.algorithm.getter();
  v74 = v89;
  v73 = v90;
  (*(v89 + 16))(v66, v72, v90);
  v75 = (*(v74 + 88))(v66, v73);
  v76 = 0;
  if (v75 != *MEMORY[0x277D02FB0])
  {
    if (v75 == *MEMORY[0x277D02FA8])
    {
      v76 = 1;
    }

    else
    {
      if (v75 != *MEMORY[0x277D02FA0])
      {
LABEL_32:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v76 = 2;
    }
  }

  (*(v74 + 8))(v72, v73);
  v77 = *(v37 + v24);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(v37 + v24);
  if ((v78 & 1) == 0)
  {
    v80 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v81 = *(v80 + 48);
    v82 = *(v80 + 52);
    swift_allocObject();
    v79 = AspirePirPirParameters._StorageClass.init(copying:)(v79);
    *(v37 + v24) = v79;
  }

  v83 = v79 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
  result = swift_beginAccess();
  *v83 = v76;
  *(v83 + 8) = 1;
  return result;
}

uint64_t PIR.PirAlgorithm.proto()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PIR.PirAlgorithm();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1, v3, v6);
  result = (*(v4 + 88))(v8, v3);
  v10 = 0;
  if (result == *MEMORY[0x277D02FB0])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D02FA8])
  {
    v10 = 1;
LABEL_6:
    *a1 = v10;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D02FA0])
  {
    v10 = 2;
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AspirePirPirAlgorithm.cryptokit()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    v4 = type metadata accessor for PIR.PirAlgorithm();
    v5 = *(*(v4 - 8) + 104);
    v6 = **(&unk_278542220 + v3);

    return v5(a1, v6, v4);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t AspireSimilarityPlaintextPacking.cryptokit()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    outlined init with take of AspireSimilarityPlaintextPacking(v6, v14, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    outlined init with take of AspireSimilarityPlaintextPacking(v14, v12, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = type metadata accessor for PEC.PlaintextPacking();
    (*(*(v17 - 8) + 104))(v19, **(&unk_278542238 + EnumCaseMultiPayload), v17);
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(v12, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }
}

uint64_t PEC.PlaintextPacking.proto()()
{
  v1 = type metadata accessor for PEC.PlaintextPacking();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x277D02F78] || v7 == *MEMORY[0x277D02F80] || v7 == *MEMORY[0x277D02F88])
  {
    type metadata accessor for AspireSimilarityPlaintextPacking(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
    return static Message.with(_:)();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PEC.PlaintextPacking.proto()(uint64_t a1)
{
  return closure #1 in PEC.PlaintextPacking.proto()(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  UnknownStorage.init()();
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v5, a1, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
}

uint64_t AspireSimilaritySimilarityMetric.cryptokit()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *MEMORY[0x277D02F90];
    v4 = type metadata accessor for PEC.SimilarityMetric();
    return (*(*(v4 - 8) + 104))(a1, v3, v4);
  }

  else
  {
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t closure #1 in PEC.SerializedCiphertextCoeffMatrix.proto()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HE.SerializedCiphertext();
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PEC.PlaintextPacking();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v43 - v16;
  v17 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v51 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  v21 = PEC.SerializedCiphertextCoeffMatrix.rowCount.getter();
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v21))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *a1 = v21;
  v22 = PEC.SerializedCiphertextCoeffMatrix.colCount.getter();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!HIDWORD(v22))
  {
    v47 = v12;
    v48 = v18;
    *(a1 + 4) = v22;
    v23 = PEC.SerializedCiphertextCoeffMatrix.ciphertexts.getter();
    v24 = *(v23 + 16);
    if (!v24)
    {

      v26 = MEMORY[0x277D84F90];
LABEL_15:
      v35 = *(a1 + 8);

      *(a1 + 8) = v26;
      v36 = v50;
      PEC.SerializedCiphertextCoeffMatrix.packing.getter();
      v37 = v47;
      v38 = v49;
      (*(v47 + 16))(v49, v36, v11);
      v39 = (*(v37 + 88))(v38, v11);
      if (v39 == *MEMORY[0x277D02F78])
      {
        v40 = v48;
      }

      else
      {
        v40 = v48;
        if (v39 != *MEMORY[0x277D02F80] && v39 != *MEMORY[0x277D02F88])
        {
          goto LABEL_25;
        }
      }

      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
      v41 = v51;
      static Message.with(_:)();
      (*(v37 + 8))(v36, v11);
      v42 = *(type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0) + 32);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v42, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      outlined init with take of AspireSimilarityPlaintextPacking(v41, a1 + v42, type metadata accessor for AspireSimilarityPlaintextPacking);
      return (*(v40 + 56))(a1 + v42, 0, 1, v17);
    }

    v43 = v11;
    v44 = v17;
    v45 = a1;
    v61 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v25 = 0;
    v26 = v61;
    v54 = v23 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v53 = v58 + 16;
    v27 = (v58 + 8);
    v28 = v46;
    while (v25 < *(v23 + 16))
    {
      v29 = v57;
      v30 = (*(v58 + 16))(v28, v54 + *(v58 + 72) * v25, v57);
      MEMORY[0x28223BE20](v30);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);
      v31 = v60;
      static Message.with(_:)();
      if (v31)
      {

        (*v27)(v28, v29);
      }

      v60 = 0;
      (*v27)(v28, v29);
      v61 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v28 = v46;
        v26 = v61;
      }

      ++v25;
      *(v26 + 16) = v33 + 1;
      outlined init with take of AspireSimilarityPlaintextPacking(v59, v26 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v33, type metadata accessor for AspireHeSerializedCiphertext);
      if (v24 == v25)
      {

        v17 = v44;
        a1 = v45;
        v11 = v43;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined assign with take of AspireHeSerializedKeySwitchKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AspireHeSerializedCiphertext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML28AspireHeEncryptionParametersVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AspireSimilarityPlaintextPacking(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ManagedURLSession.__allocating_init(configuration:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = [objc_opt_self() sessionWithConfiguration_];

  *(v2 + 16) = v3;
  return v2;
}

uint64_t ManagedURLSession.data(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](ManagedURLSession.data(for:), 0, 0);
}

uint64_t ManagedURLSession.data(for:)()
{
  v1 = *(v0[3] + 16);
  v2 = *(MEMORY[0x277CC9D18] + 4);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = ManagedURLSession.data(for:);
  v4 = v0[2];

  return MEMORY[0x28211ECF8](v4, 0);
}

uint64_t ManagedURLSession.data(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 32);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t ManagedURLSession.__allocating_init(urlSession:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ManagedURLSession.init(configuration:)(void *a1)
{
  v3 = [objc_opt_self() sessionWithConfiguration_];

  *(v1 + 16) = v3;
  return v1;
}

uint64_t ManagedURLSession.deinit()
{
  [*(v0 + 16) finishTasksAndInvalidate];

  return v0;
}

uint64_t ManagedURLSession.__deallocating_deinit()
{
  [*(v0 + 16) finishTasksAndInvalidate];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IndexPIRClient()
{
  result = type metadata singleton initialization cache for IndexPIRClient;
  if (!type metadata singleton initialization cache for IndexPIRClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IndexPIRClient.configID.getter()
{
  v1 = v0 + *(type metadata accessor for IndexPIRClient() + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t IndexPIRClient.client.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IndexPIRClient() + 32);
  v4 = type metadata accessor for PIR.IndexPirClient();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IndexPIRClient.init(secretKey:config:configID:shardIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v106 = a4;
  v109 = a3;
  v105 = a1;
  v91 = a6;
  v94 = type metadata accessor for HE.SerializedSecretKey();
  v96 = *(v94 - 8);
  v8 = *(v96 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for PIR.IndexPirClient();
  v90 = *(v100 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v100);
  v95 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PIR.PirAlgorithm();
  v103 = *(v12 - 8);
  v104 = v12;
  v13 = *(v103 + 64);
  MEMORY[0x28223BE20](v12);
  v97 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v101 = &v82 - v17;
  v18 = type metadata accessor for AspireHeEncryptionParameters(0);
  v98 = *(v18 - 8);
  v99 = v18;
  v19 = *(v98 + 64);
  MEMORY[0x28223BE20](v18);
  v102 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for HE.EncryptionParams();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PIR.PirParams();
  v92 = *(v25 - 8);
  v26 = *(v92 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  v32 = type metadata accessor for AspireApiPIRShardConfig(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (&v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = v107;
  AspireApiPIRConfig.shardConfig(at:)(a5, 0, 1, v35);
  if (v36)
  {
    _s8CipherML9SecretKeyVWOhTm_0(v105, type metadata accessor for SecretKey);
    outlined consume of Data._Representation(v109, v106);
    v37 = a2;
    return _s8CipherML9SecretKeyVWOhTm_0(v37, type metadata accessor for AspireApiPIRConfig);
  }

  v85 = v32;
  v88 = v24;
  v83 = v28;
  v86 = v31;
  v84 = v25;
  v89 = v35;
  v107 = 0;
  v38 = v100;
  v82 = a5;
  v39 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v87 = a2;
  v40 = *(a2 + v39);
  v41 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  v42 = v101;
  outlined init with copy of AspireHeEncryptionParameters?(v40 + v41, v101);
  v43 = v99;
  v44 = *(v98 + 48);
  if (v44(v42, 1, v99) == 1)
  {
    v45 = v102;
    *v102 = 0;
    v45[1] = 0;
    v45[2] = MEMORY[0x277D84F90];
    v45[3] = 0;
    *(v45 + 32) = 1;
    v45[5] = 0;
    *(v45 + 48) = 1;
    v45[7] = 0;
    *(v45 + 64) = 1;
    v46 = v45 + *(v43 + 40);
    UnknownStorage.init()();
    v47 = v44(v42, 1, v43);
    v48 = v38;
    v49 = v88;
    v51 = v103;
    v50 = v104;
    if (v47 != 1)
    {
      v52 = v88;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v49 = v52;
    }
  }

  else
  {
    v45 = v102;
    _s8CipherML9SecretKeyVWObTm_2(v42, v102, type metadata accessor for AspireHeEncryptionParameters);
    v48 = v38;
    v49 = v88;
    v51 = v103;
    v50 = v104;
  }

  v53 = v107;
  AspireHeEncryptionParameters.cryptokit()(v49);
  v37 = v87;
  if (v53)
  {
    outlined consume of Data._Representation(v109, v106);
    _s8CipherML9SecretKeyVWOhTm_0(v105, type metadata accessor for SecretKey);
    _s8CipherML9SecretKeyVWOhTm_0(v45, type metadata accessor for AspireHeEncryptionParameters);
    _s8CipherML9SecretKeyVWOhTm_0(v89, type metadata accessor for AspireApiPIRShardConfig);
    return _s8CipherML9SecretKeyVWOhTm_0(v37, type metadata accessor for AspireApiPIRConfig);
  }

  v107 = 0;
  _s8CipherML9SecretKeyVWOhTm_0(v45, type metadata accessor for AspireHeEncryptionParameters);
  v54 = v40 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  swift_beginAccess();
  if (*(v54 + 8) == 1)
  {
    (*(v51 + 104))(v97, **(&unk_278542250 + *v54), v50);
    if ((*v89 & 0x8000000000000000) == 0)
    {
      if ((v89[1] & 0x8000000000000000) != 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v104 = v89[1];
      v55 = v89[2];
      v56 = *(v55 + 16);
      if (!v56)
      {
LABEL_19:
        v63 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
        swift_beginAccess();
        v64 = *(v40 + v63);
        v65 = v109;
        v66 = v96;
        if ((v64 & 0x8000000000000000) == 0)
        {
          v67 = v89;
          v68 = v89 + *(v85 + 40);
          v69 = v86;
          if ((v68[8] & 1) != 0 || (*v68 & 0x8000000000000000) == 0)
          {
            v81 = *(v89 + *(v85 + 36));
            v70 = v107;
            PIR.PirParams.init(encryptionParams:algorithm:entriesCount:entrySize:dimensions:batchSize:internalBatchSize:compressResponse:)();
            if (!v70)
            {
              v71 = v92;
              v72 = v84;
              (*(v92 + 16))(v83, v69, v84);
              v73 = type metadata accessor for SecretKey();
              v74 = v105;
              (*(v66 + 16))(v93, v105 + *(v73 + 20), v94);
              v75 = v95;
              PIR.IndexPirClient.init(pirParams:secretKey:)();
              v76 = v106;
              (*(v71 + 8))(v69, v72);
              _s8CipherML9SecretKeyVWOhTm_0(v89, type metadata accessor for AspireApiPIRShardConfig);
              v77 = v91;
              _s8CipherML9SecretKeyVWObTm_2(v74, v91, type metadata accessor for SecretKey);
              v78 = type metadata accessor for IndexPIRClient();
              _s8CipherML9SecretKeyVWObTm_2(v87, v77 + v78[5], type metadata accessor for AspireApiPIRConfig);
              v79 = (v77 + v78[6]);
              *v79 = v109;
              v79[1] = v76;
              *(v77 + v78[7]) = v82;
              return (*(v90 + 32))(v77 + v78[8], v75, v48);
            }

            _s8CipherML9SecretKeyVWOhTm_0(v105, type metadata accessor for SecretKey);
            outlined consume of Data._Representation(v65, v106);
            _s8CipherML9SecretKeyVWOhTm_0(v67, type metadata accessor for AspireApiPIRShardConfig);
            v37 = v87;
            return _s8CipherML9SecretKeyVWOhTm_0(v37, type metadata accessor for AspireApiPIRConfig);
          }

          goto LABEL_30;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v108 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
      v57 = v108;
      v58 = (v55 + 32);
      while (1)
      {
        v60 = *v58++;
        v59 = v60;
        if (v60 < 0)
        {
          break;
        }

        v108 = v57;
        v62 = *(v57 + 16);
        v61 = *(v57 + 24);
        if (v62 >= v61 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
          v57 = v108;
        }

        *(v57 + 16) = v62 + 1;
        *(v57 + 8 * v62 + 32) = v59;
        if (!--v56)
        {
          v48 = v38;
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_31:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t IndexPIRClient.constructPIRRequest(with:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for AspirePirEncryptedIndices(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for IndexPIRClient() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_225022960;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 32) = a1;
    v11 = PIR.IndexPirClient.query(indices:)();

    if (!v2)
    {
      MEMORY[0x28223BE20](result);
      *(&v13 - 2) = v11;
      lazy protocol witness table accessor for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices);
      static Message.with(_:)();

      v12 = type metadata accessor for AspireApiPIRRequest(0);
      MEMORY[0x28223BE20](v12);
      *(&v13 - 2) = v3;
      *(&v13 - 1) = v8;
      lazy protocol witness table accessor for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest);
      static Message.with(_:)();
      return _s8CipherML9SecretKeyVWOhTm_0(v8, type metadata accessor for AspirePirEncryptedIndices);
    }
  }

  return result;
}

uint64_t closure #1 in IndexPIRClient.constructPIRRequest(with:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for HE.SerializedCiphertext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v27 = a1;
    v37 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v36 = v37;
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v17 = a2 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v30 = (v15 - 8);
    v31 = v16;
    v29 = *(v15 + 56);
    v18 = v28;
    while (1)
    {
      v35 = v14;
      v19 = v31(v18, v17, v6);
      MEMORY[0x28223BE20](v19);
      *(&v27 - 2) = v18;
      lazy protocol witness table accessor for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);
      static Message.with(_:)();
      if (v3)
      {
        break;
      }

      v34 = 0;
      v20 = v6;
      (*v30)(v18, v6);
      v21 = v36;
      v37 = v36;
      v23 = *(v36 + 16);
      v22 = *(v36 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
        v18 = v28;
        v21 = v37;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v36 = v21;
      _s8CipherML9SecretKeyVWObTm_2(v13, v21 + v24 + *(v32 + 72) * v23, type metadata accessor for AspireHeSerializedCiphertext);
      v17 += v29;
      v3 = v34;
      v14 = v35 - 1;
      v6 = v20;
      if (v35 == 1)
      {
        a1 = v27;
        goto LABEL_10;
      }
    }

    (*v30)(v18, v6);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
LABEL_10:
    v26 = *a1;

    *a1 = v36;
    a1[1] = 1;
  }

  return result;
}

uint64_t closure #2 in IndexPIRClient.constructPIRRequest(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspirePirEncryptedIndices(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for IndexPIRClient();
  v16 = *(a2 + *(result + 28));
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v16))
  {
    *a1 = v16;
    v29 = result;
    _s8CipherML9SecretKeyVWOcTm_0(a3, v14, type metadata accessor for AspirePirEncryptedIndices);
    v17 = type metadata accessor for AspireApiPIRRequest(0);
    v18 = a2;
    v19 = *(v17 + 28);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v19, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    _s8CipherML9SecretKeyVWObTm_2(v14, a1 + v19, type metadata accessor for AspirePirEncryptedIndices);
    v20 = (*(v11 + 56))(a1 + v19, 0, 1, v10);
    MEMORY[0x28223BE20](v20);
    *(&v28 - 2) = v18;
    lazy protocol witness table accessor for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
    v21 = v30;
    static Message.with(_:)();
    v22 = *(v17 + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v22, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    _s8CipherML9SecretKeyVWObTm_2(v21, a1 + v22, type metadata accessor for AspireApiEvaluationKeyMetadata);
    (*(v7 + 56))(a1 + v22, 0, 1, v6);
    v23 = (v18 + *(v29 + 24));
    v24 = *v23;
    v25 = v23[1];
    v26 = *(a1 + 8);
    v27 = *(a1 + 16);
    outlined copy of Data._Representation(*v23, v25);
    result = outlined consume of Data._Representation(v26, v27);
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #2 in IndexPIRClient.constructPIRRequest(with:)(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2 + *(type metadata accessor for IndexPIRClient() + 20);
  v4 = (*&v3[*(type metadata accessor for AspireApiPIRConfig(0) + 20)] + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = a1[1];
  v8 = a1[2];
  outlined copy of Data._Representation(v6, v5);
  result = outlined consume of Data._Representation(v7, v8);
  a1[1] = v6;
  a1[2] = v5;
  return result;
}

uint64_t IndexPIRClient.decryptPIRResponse(_:index:)(uint64_t *a1, uint64_t a2)
{
  v4 = v3;
  v7 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v28 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v24[1] = v2;
    v25 = a2;
    v29 = MEMORY[0x277D84F90];
    v26 = v12;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v15 = 0;
    v13 = v29;
    v27 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (v15 < *(v11 + 16))
    {
      v16 = v8;
      v17 = v28;
      _s8CipherML9SecretKeyVWOcTm_0(v27 + *(v8 + 72) * v15, v28, type metadata accessor for AspireHeSerializedCiphertextVec);
      v18 = AspireHeSerializedCiphertextVec.cryptokit()();
      if (v4)
      {
        _s8CipherML9SecretKeyVWOhTm_0(v17, type metadata accessor for AspireHeSerializedCiphertextVec);

        return v17;
      }

      v19 = v18;
      v4 = 0;
      result = _s8CipherML9SecretKeyVWOhTm_0(v17, type metadata accessor for AspireHeSerializedCiphertextVec);
      v29 = v13;
      v21 = v13[2];
      v20 = v13[3];
      if (v21 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v13 = v29;
      }

      ++v15;
      v13[2] = v21 + 1;
      v13[v21 + 4] = v19;
      v8 = v16;
      if (v26 == v15)
      {
        a2 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:
  result = type metadata accessor for IndexPIRClient();
  if (!v13[2])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = *(result + 32);
  v23 = v13[4];

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = PIR.IndexPirClient.decrypt(reply:index:)();

  return v17;
}

uint64_t _s8CipherML9SecretKeyVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for IndexPIRClient()
{
  result = type metadata accessor for SecretKey();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspireApiPIRConfig(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PIR.IndexPirClient();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s8CipherML9SecretKeyVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8CipherML9SecretKeyVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CMLClientConfig.networkDelegation.getter()
{
  v1 = [v0 sourceApplicationBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t static NetworkDelegationConfig.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkDelegationConfig.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000021;
  }

  else
  {
    result = 0x6167656C65446F6ELL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkDelegationConfig.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6167656C65446F6ELL && a2 == 0xEC0000006E6F6974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000002250367C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkDelegationConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkDelegationConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkDelegationConfig.NoDelegationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkDelegationConfig.NoDelegationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkDelegationConfig.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML23NetworkDelegationConfigO43SourceApplicationBundleIdentifierCodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML23NetworkDelegationConfigO43SourceApplicationBundleIdentifierCodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMR);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML23NetworkDelegationConfigO02NoG10CodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML23NetworkDelegationConfigO02NoG10CodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMR);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML23NetworkDelegationConfigO10CodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML23NetworkDelegationConfigO10CodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys();
  v18 = v24;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    v26 = 1;
    lazy protocol witness table accessor for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v22 + 8))(v7, v4);
  }

  else
  {
    v25 = 0;
    lazy protocol witness table accessor for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v11, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t lazy protocol witness table accessor for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys);
  }

  return result;
}

uint64_t NetworkDelegationConfig.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x22AA61420](0);
  }

  MEMORY[0x22AA61420](1);

  return String.hash(into:)();
}

Swift::Int NetworkDelegationConfig.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x22AA61420](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x22AA61420](0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance NetworkDelegationConfig@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized NetworkDelegationConfig.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NetworkDelegationConfig(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NetworkDelegationConfig()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x22AA61420](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x22AA61420](0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NetworkDelegationConfig()
{
  if (!v0[1])
  {
    return MEMORY[0x22AA61420](0);
  }

  v1 = *v0;
  MEMORY[0x22AA61420](1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkDelegationConfig()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x22AA61420](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x22AA61420](0);
  }

  return Hasher._finalize()();
}

uint64_t specialized NetworkDelegationConfig.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML23NetworkDelegationConfigO43SourceApplicationBundleIdentifierCodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML23NetworkDelegationConfigO43SourceApplicationBundleIdentifierCodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMR);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML23NetworkDelegationConfigO02NoG10CodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML23NetworkDelegationConfigO02NoG10CodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMR);
  v33 = *(v6 - 8);
  v7 = *(v33 + 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML23NetworkDelegationConfigO10CodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML23NetworkDelegationConfigO10CodingKeys33_71ABF38DB252AE8FC9FE5BEA99326BBCLLOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v37 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type NetworkDelegationConfig.CodingKeys and conformance NetworkDelegationConfig.CodingKeys();
  v18 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v32 = v6;
    v19 = v35;
    v36 = v11;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = specialized Collection<>.popFirst()();
    v23 = v10;
    v17 = v14;
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v25 = v10;
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v28 = &type metadata for NetworkDelegationConfig;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v36 + 8))(v14, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v42 = 1;
      lazy protocol witness table accessor for type NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys and conformance NetworkDelegationConfig.SourceApplicationBundleIdentifierCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v36;
      v33 = v14;
      v17 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v34 + 8))(v5, v19);
      (*(v24 + 8))(v33, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
      lazy protocol witness table accessor for type NetworkDelegationConfig.NoDelegationCodingKeys and conformance NetworkDelegationConfig.NoDelegationCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = v36;
      (*(v33 + 1))(v9, v32);
      (*(v31 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v37);
  return v17;
}

uint64_t getEnumTagSinglePayload for NetworkDelegationConfig(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NetworkDelegationConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NetworkDelegationConfig(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for NetworkDelegationConfig(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NegativeBinomialDistribution.init(successCount:successProbability:)(CipherML::NegativeBinomialDistribution *__return_ptr retstr, Swift::Double successCount, Swift::Double successProbability)
{
  if (successCount > 0.0 && (successProbability > 0.0 ? (v3 = successProbability < 1.0) : (v3 = 0), v3 && (v4 = (1.0 - successProbability) / successProbability, v4 > 0.0)))
  {
    retstr->successCount = successCount;
    retstr->successProbability = successProbability;
    retstr->gamma.shape = successCount;
    retstr->gamma.scale = v4;
    retstr->gamma.cap.value = 0.0;
    retstr->gamma.cap.is_nil = 1;
  }

  else
  {
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void NegativeBinomialDistribution.sample<A>(using:)(uint64_t a1)
{
  GammaDistribution.sample<A>(using:)(*(v1 + 16), *(v1 + 24), a1, *(v1 + 32), *(v1 + 40));

  PoissonDistribution.sample<A>(using:)(v2);
}

CipherML::PoissonDistribution __swiftcall PoissonDistribution.init(mean:cap:)(Swift::Double mean, Swift::Int_optional cap)
{
  cap.is_nil &= 1u;
  result.cap = cap;
  result.mean = mean;
  return result;
}

void PoissonDistribution.sample<A>(using:)(double a1)
{
  if (a1 <= 125.0)
  {
    PoissonDistribution.sampleSmall<A>(using:)(a1);
  }

  else
  {
    PoissonDistribution.sampleLarge<A>(using:)(a1);
  }
}

uint64_t PoissonDistribution.sampleSmall<A>(using:)(double a1)
{
  lazy protocol witness table accessor for type Double and conformance Double();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  static BinaryFloatingPoint<>.random<A>(in:using:)();
  v2 = exp(-a1);
  if (v2 >= v6)
  {
    return 0;
  }

  v3 = 0;
  v4 = v2;
  while (1)
  {
    result = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v2 = v2 * a1 / result;
    v4 = v4 + v2;
    ++v3;
    if (v4 >= v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void PoissonDistribution.sampleLarge<A>(using:)(long double a1)
{
  v2 = 0;
  v3 = 1.0;
  do
  {
    if (__OFADD__(v2++, 1))
    {
      __break(1u);
      goto LABEL_13;
    }

    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>.random<A>(in:using:)();
    v3 = v3 * v5;
    if (v3 < 1.0)
    {
      while (a1 > 0.0)
      {
        if (a1 <= 100.0)
        {
          v3 = v3 * exp(a1);
          a1 = 0.0;
          break;
        }

        a1 = a1 + -100.0;
        v3 = v3 * 2.68811714e43;
        if (v3 >= 1.0)
        {
          break;
        }
      }
    }
  }

  while (v3 > 1.0);
  if (!__OFSUB__(v2, 1))
  {
    return;
  }

LABEL_13:
  __break(1u);
}

void protocol witness for DiscreteDistribution.sample<A>(using:) in conformance PoissonDistribution()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  PoissonDistribution.sample<A>(using:)(*v0);
}

uint64_t NegativeBinomialDistribution.gamma.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

CipherML::GammaDistribution __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GammaDistribution.init(shape:scale:cap:)(Swift::Double shape, Swift::Double scale, Swift::Double_optional cap)
{
  if (shape <= 0.0 || scale <= 0.0)
  {
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    cap.is_nil = swift_willThrow();
  }

  result.cap.value = cap.value;
  result.cap.is_nil = cap.is_nil;
  result.scale = scale;
  result.shape = shape;
  return result;
}

void GammaDistribution.sample<A>(using:)(double a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = GammaDistribution.sampleUncapped<A>(using:)(a1, a2);
  if ((a5 & 1) == 0 && v9 > *&a4)
  {
      ;
    }
  }
}

long double NormalDistribution.sample<A>(using:)(double a1, double a2)
{
  lazy protocol witness table accessor for type Double and conformance Double();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  static BinaryFloatingPoint<>.random<A>(in:using:)();
  static BinaryFloatingPoint<>.random<A>(in:using:)();
  v4 = log(v7);
  v5 = sqrt(v4 * -2.0);
  return v5 * cos(v7 * 6.28318531) * a2 + a1;
}

double GammaDistribution.sampleUncapped<A>(using:)(double a1, double a2)
{
  if (a1 >= 1.0)
  {

    return GammaDistribution.sampleLarge<A>(with:using:)(a1, a1, a2);
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>.random<A>(in:using:)();
    v4 = GammaDistribution.sampleLarge<A>(with:using:)(a1 + 1.0, a1, a2);
    return v4 * pow(v6, 1.0 / a1);
  }
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

double GammaDistribution.sampleLarge<A>(with:using:)(double a1, double a2, double a3)
{
  v3 = a1 + -0.333333333;
  v4 = 1.0 / sqrt((a1 + -0.333333333) * 9.0);
  do
  {
    do
    {
      v5 = NormalDistribution.sample<A>(using:)(0.0, 1.0);
      v6 = v4 * v5 + 1.0;
    }

    while (v6 <= 0.0);
    v7 = v6 * (v6 * v6);
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>.random<A>(in:using:)();
    v8 = v5 * v5;
    if (v12 < v5 * v5 * (v5 * v5 * -0.0331) + 1.0)
    {
      break;
    }

    v9 = log(v12);
  }

  while (v9 >= v8 * 0.5 + v3 * (1.0 - v7 + log(v7)));
  return v3 * v7 * a3;
}

uint64_t getEnumTagSinglePayload for PoissonDistribution(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PoissonDistribution(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NormalDistribution(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NormalDistribution(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GammaDistribution(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GammaDistribution(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

unint64_t specialized RandomAccessCollection<>.binarySearch(target:)(unint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = v2 - 1;
  while (!__OFSUB__(v4, v3))
  {
    v5 = v3 + (v4 - v3) / 2;
    if (__OFADD__(v3, (v4 - v3) / 2))
    {
      goto LABEL_16;
    }

    if (v5 >= v2)
    {
      goto LABEL_17;
    }

    v6 = *(a2 + 32 + 8 * v5);
    if (v6 > result)
    {
      v4 = v5 - 1;
    }

    else
    {
      if (v6 >= result)
      {
        return v3 + (v4 - v3) / 2;
      }

      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return 0;
      }
    }

    if (v4 < v3)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t KeywordPIRClient.init(secretKey:config:configID:shardIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AspireApiPIRConfig(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SecretKey();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8CipherML9SecretKeyVWOcTm_1(a1, v19, type metadata accessor for SecretKey);
  _s8CipherML9SecretKeyVWOcTm_1(a2, v15, type metadata accessor for AspireApiPIRConfig);
  KeywordPIRClient.init(secretKey:config:configID:shardLabel:)(v19, v15, a3, a4, a5, 0, 1, a6);
  outlined destroy of AspireApiPIRConfig(a2, type metadata accessor for AspireApiPIRConfig);
  return outlined destroy of AspireApiPIRConfig(a1, type metadata accessor for SecretKey);
}

uint64_t KeywordPIRClient.init(secretKey:config:configID:shardId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for AspireApiPIRConfig(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SecretKey();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8CipherML9SecretKeyVWOcTm_1(a1, v21, type metadata accessor for SecretKey);
  _s8CipherML9SecretKeyVWOcTm_1(a2, v17, type metadata accessor for AspireApiPIRConfig);
  KeywordPIRClient.init(secretKey:config:configID:shardLabel:)(v21, v17, a3, a4, a5, a6, 0, a7);
  outlined destroy of AspireApiPIRConfig(a2, type metadata accessor for AspireApiPIRConfig);
  return outlined destroy of AspireApiPIRConfig(a1, type metadata accessor for SecretKey);
}

uint64_t KeywordPIRClient.constructPIRRequest(with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a1;
  v36 = a2;
  v4 = type metadata accessor for HE.SerializedCiphertext();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspirePirEncryptedIndices(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + *(type metadata accessor for KeywordPIRClient() + 28);
  v17 = v44;
  result = PIR.KeywordPirClient.query(keyword:)();
  if (!v17)
  {
    v34 = v15;
    v35 = v3;
    v39 = v8;
    v40 = v4;
    v33 = v12;
    v19 = *(result + 16);
    if (v19)
    {
      v44 = v11;
      v45 = MEMORY[0x277D84F90];
      v41 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      result = v41;
      v20 = 0;
      v21 = v45;
      v22 = v43;
      v38 = v41 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v37 = v43 + 16;
      v23 = (v43 + 8);
      while (v20 < *(result + 16))
      {
        v24 = v19;
        v25 = v40;
        v26 = (*(v22 + 16))(v7, v38 + *(v22 + 72) * v20, v40);
        MEMORY[0x28223BE20](v26);
        *(&v33 - 2) = v7;
        lazy protocol witness table accessor for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);
        static Message.with(_:)();
        (*v23)(v7, v25);
        v45 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
          v21 = v45;
        }

        ++v20;
        *(v21 + 16) = v28 + 1;
        outlined init with take of AspireHeSerializedCiphertext(v44, v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28, type metadata accessor for AspireHeSerializedCiphertext);
        v19 = v24;
        v22 = v43;
        result = v41;
        if (v24 == v20)
        {

          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
LABEL_10:
      v30 = v35;
      MEMORY[0x28223BE20](v29);
      *(&v33 - 2) = v21;
      *(&v33 - 1) = v30;
      lazy protocol witness table accessor for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices);
      v31 = v34;
      static Message.with(_:)();

      v32 = type metadata accessor for AspireApiPIRRequest(0);
      MEMORY[0x28223BE20](v32);
      *(&v33 - 2) = v30;
      *(&v33 - 1) = v31;
      lazy protocol witness table accessor for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest);
      static Message.with(_:)();
      return outlined destroy of AspireApiPIRConfig(v31, type metadata accessor for AspirePirEncryptedIndices);
    }
  }

  return result;
}

unint64_t KeywordPIRClient.decryptPIRResponse(_:keyword:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v105 = a3;
  v104 = a2;
  v4 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = (&v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v116 = &v100 - v13;
  v14 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v125 = *(v14 - 8);
  v15 = *(v125 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v126 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for HE.SerializedCiphertext();
  v124 = *(v117 - 8);
  v17 = *(v124 + 64);
  MEMORY[0x28223BE20](v117);
  v122 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v109 = *(v19 - 8);
  v20 = *(v109 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v107 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for SHA256();
  v118 = *(v120 - 8);
  v22 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v113 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for SHA256Digest();
  v119 = *(v121 - 8);
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v121);
  v115 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AspireApiStashOfEntries(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v123 = (&v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v100 - v35;
  v37 = *(type metadata accessor for AspireApiPIRResponse(0) + 24);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v37, v36, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v38 = *(v27 + 48);
  v39 = v38(v36, 1, v26);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v36, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  if (v39 == 1)
  {
    v40 = v116;
LABEL_14:
    v61 = *a1;
    v62 = *(*a1 + 16);
    v63 = MEMORY[0x277D84F90];
    v64 = v117;
    if (v62)
    {
      v129 = MEMORY[0x277D84F90];
      v101 = v62;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0);
      v65 = 0;
      v66 = v129;
      v103 = v61 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      LODWORD(v113) = *MEMORY[0x277D02F30];
      v119 = v124 + 104;
      LODWORD(v112) = *MEMORY[0x277D02F28];
      v118 = v124 + 32;
      v67 = v107;
      v111 = v7;
      v102 = v61;
      while (v65 < *(v61 + 16))
      {
        v108 = v66;
        v68 = *(v109 + 72);
        v106 = v65;
        _s8CipherML9SecretKeyVWOcTm_1(v103 + v68 * v65, v67, type metadata accessor for AspireHeSerializedCiphertextVec);
        v69 = *v67;
        v70 = *(*v67 + 16);
        if (v70)
        {
          v128 = v63;
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
          v71 = 0;
          v63 = v128;
          v123 = (v69 + ((*(v125 + 80) + 32) & ~*(v125 + 80)));
          v120 = v70;
          v121 = v69;
          while (v71 < *(v69 + 16))
          {
            v72 = v126;
            _s8CipherML9SecretKeyVWOcTm_1(v123 + *(v125 + 72) * v71, v126, type metadata accessor for AspireHeSerializedCiphertext);
            outlined init with copy of AMDPbHEConfig.OneOf_Config?(v72, v40, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
            v73 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
            if ((*(*(v73 - 8) + 48))(v40, 1, v73) == 1)
            {
              type metadata accessor for CipherMLError();
              lazy protocol witness table accessor for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
              swift_allocError();
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              outlined destroy of AspireApiPIRConfig(v126, type metadata accessor for AspireHeSerializedCiphertext);
              outlined destroy of AspireApiPIRConfig(v107, type metadata accessor for AspireHeSerializedCiphertextVec);
            }

            if (swift_getEnumCaseMultiPayload() == 1)
            {
              outlined init with take of AspireHeSerializedCiphertext(v40, v7, type metadata accessor for AspireHeSerializedFullCiphertext);
              v74 = *v7;
              v75 = v7[1];
              v76 = v7[2];
              v77 = *(v76 + 16);
              if (v77)
              {
                v115 = *v7;
                outlined copy of Data._Representation(v74, v75);
                v127 = MEMORY[0x277D84F90];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77, 0);
                v78 = v127;
                v79 = (v76 + 32);
                v80 = *(v127 + 16);
                do
                {
                  v82 = *v79++;
                  v81 = v82;
                  v127 = v78;
                  v83 = *(v78 + 24);
                  if (v80 >= v83 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v80 + 1, 1);
                    v78 = v127;
                  }

                  *(v78 + 16) = v80 + 1;
                  *(v78 + 8 * v80++ + 32) = v81;
                  --v77;
                }

                while (v77);
                outlined destroy of AspireApiPIRConfig(v126, type metadata accessor for AspireHeSerializedCiphertext);
                v7 = v111;
                v64 = v117;
                v91 = v115;
              }

              else
              {
                v91 = *v7;
                outlined copy of Data._Representation(v74, v7[1]);
                outlined destroy of AspireApiPIRConfig(v126, type metadata accessor for AspireHeSerializedCiphertext);
                v78 = MEMORY[0x277D84F90];
              }

              v87 = v7[3];
              outlined destroy of AspireApiPIRConfig(v7, type metadata accessor for AspireHeSerializedFullCiphertext);
              v89 = v122;
              *v122 = v91;
              v89[1] = v75;
              v90 = v112;
              v40 = v116;
            }

            else
            {
              outlined destroy of AspireApiPIRConfig(v126, type metadata accessor for AspireHeSerializedCiphertext);
              v84 = v114;
              outlined init with take of AspireHeSerializedCiphertext(v40, v114, type metadata accessor for AspireHeSerializedSeededCiphertext);
              v85 = *v84;
              v86 = v84[1];
              v78 = v84[2];
              v87 = v84[3];
              outlined copy of Data._Representation(*v84, v86);
              outlined copy of Data._Representation(v78, v87);
              outlined destroy of AspireApiPIRConfig(v84, type metadata accessor for AspireHeSerializedSeededCiphertext);
              v88 = v122;
              *v122 = v85;
              v88[1] = v86;
              v64 = v117;
              v89 = v88;
              v90 = v113;
            }

            v89[2] = v78;
            v89[3] = v87;
            (*v119)(v89, v90, v64);
            v128 = v63;
            v93 = *(v63 + 16);
            v92 = *(v63 + 24);
            if (v93 >= v92 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v92 > 1, v93 + 1, 1);
              v63 = v128;
            }

            ++v71;
            *(v63 + 16) = v93 + 1;
            result = (*(v124 + 32))(v63 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v93, v89, v64);
            v69 = v121;
            if (v71 == v120)
            {
              v67 = v107;
              goto LABEL_35;
            }
          }

          __break(1u);
          break;
        }

LABEL_35:
        result = outlined destroy of AspireApiPIRConfig(v67, type metadata accessor for AspireHeSerializedCiphertextVec);
        v66 = v108;
        v129 = v108;
        v95 = *(v108 + 16);
        v94 = *(v108 + 24);
        v96 = v106;
        if (v95 >= v94 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
          v96 = v106;
          v67 = v107;
          v66 = v129;
        }

        v65 = v96 + 1;
        *(v66 + 16) = v95 + 1;
        *(v66 + 8 * v95 + 32) = v63;
        v63 = MEMORY[0x277D84F90];
        v61 = v102;
        if (v65 == v101)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_46;
    }

LABEL_40:
    v97 = v100 + *(type metadata accessor for KeywordPIRClient() + 28);
    v98 = v110;
    v99 = PIR.KeywordPirClient.decrypt(replies:keyword:)();
    if (v98)
    {
    }

    v110 = 0;
    v60 = v99;

    return v60;
  }

  v112 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v37, v34, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  if (v38(v34, 1, v26) == 1)
  {
    v41 = MEMORY[0x277D84F90];
    v42 = v123;
    *v123 = MEMORY[0x277D84F90];
    v42[1] = v41;
    v42[2] = v41;
    v43 = v42 + *(v26 + 28);
    UnknownStorage.init()();
    v44 = v38(v34, 1, v26);
    v45 = v42;
    v40 = v116;
    if (v44 != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
    }
  }

  else
  {
    v45 = v123;
    outlined init with take of AspireHeSerializedCiphertext(v34, v123, type metadata accessor for AspireApiStashOfEntries);
    v40 = v116;
  }

  lazy protocol witness table accessor for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
  v46 = v113;
  v47 = v120;
  dispatch thunk of HashFunction.init()();
  v48 = v104;
  v49 = v105;
  outlined copy of Data._Representation(v104, v105);
  v50 = v110;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v48, v49);
  outlined consume of Data._Representation(v48, v49);
  v51 = v115;
  dispatch thunk of HashFunction.finalize()();
  (*(v118 + 8))(v46, v47);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v110 = v50;
  (*(v119 + 8))(v51, v121);
  v52 = v129;
  specialized RandomAccessCollection<>.binarySearch(target:)(v129, v45[2]);
  if ((v53 & 1) == 0)
  {
    outlined destroy of AspireApiPIRConfig(v45, type metadata accessor for AspireApiStashOfEntries);
    return 0;
  }

  v54 = *v45;
  result = specialized RandomAccessCollection<>.binarySearch(target:)(v52, *v45);
  if ((v56 & 1) != 0 || (v57 = *(v54 + 16), v58 = v45[1], v57 != *(v58 + 16)))
  {
    outlined destroy of AspireApiPIRConfig(v45, type metadata accessor for AspireApiStashOfEntries);
    a1 = v112;
    goto LABEL_14;
  }

  if (result < v57)
  {
    v59 = v58 + 16 * result;
    v60 = *(v59 + 32);
    outlined copy of Data._Representation(v60, *(v59 + 40));
    outlined destroy of AspireApiPIRConfig(v45, type metadata accessor for AspireApiStashOfEntries);
    return v60;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t KeywordPIRClient.configID.getter()
{
  v1 = v0 + *(type metadata accessor for KeywordPIRClient() + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t KeywordPIRClient.client.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KeywordPIRClient() + 28);
  v4 = type metadata accessor for PIR.KeywordPirClient();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KeywordPIRClient.shardLabel.getter()
{
  v1 = v0 + *(type metadata accessor for KeywordPIRClient() + 32);
  v2 = *v1;
  outlined copy of ShardLabel(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t KeywordPIRClient.init(secretKey:config:configID:shardLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v142 = a4;
  v144 = a1;
  v145 = a6;
  v141 = a3;
  v139 = a8;
  v126 = type metadata accessor for HE.SerializedSecretKey();
  v125 = *(v126 - 8);
  v11 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v130 = &v113 - v15;
  v127 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v129 = *(v127 - 8);
  v16 = *(v129 + 64);
  MEMORY[0x28223BE20](v127);
  v128 = (&v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = type metadata accessor for PIR.KeywordPirClient();
  v121 = *(v122 - 8);
  v18 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v123 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for PIR.PirAlgorithm();
  v131 = *(v132 - 8);
  v20 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v134 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v138 = &v113 - v24;
  v137 = type metadata accessor for AspireHeEncryptionParameters(0);
  v136 = *(v137 - 8);
  v25 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v135 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HE.EncryptionParams();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v140 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PIR.PirParams();
  v133 = *(v30 - 8);
  v31 = *(v133 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v113 - v35;
  v37 = type metadata accessor for AspireApiPIRShardConfig(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (&v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = a7;
  v42 = a7 & 1;
  v43 = v145;
  v147 = a2;
  v44 = v143;
  AspireApiPIRConfig.shardConfig(at:)(a5, v145, v42, v40);
  v143 = v44;
  if (v44)
  {
    outlined destroy of AspireApiPIRConfig(v144, type metadata accessor for SecretKey);
    outlined consume of ShardLabel(a5, v43, v41 & 1);
    outlined consume of Data._Representation(v141, v142);
    v45 = v147;
    return outlined destroy of AspireApiPIRConfig(v45, type metadata accessor for AspireApiPIRConfig);
  }

  v46 = v135;
  v116 = v37;
  v115 = v34;
  v117 = v36;
  v114 = v30;
  v119 = v40;
  v47 = v139;
  v120 = v41;
  v48 = a5;
  v49 = *(v147 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v50 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  v118 = v49;
  v51 = v49 + v50;
  v52 = v138;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v51, v138, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v53 = *(v136 + 48);
  v54 = v137;
  if (v53(v52, 1, v137) == 1)
  {
    v55 = v46;
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = MEMORY[0x277D84F90];
    *(v46 + 24) = 0;
    *(v46 + 32) = 1;
    *(v46 + 40) = 0;
    *(v46 + 48) = 1;
    *(v46 + 56) = 0;
    *(v46 + 64) = 1;
    v56 = v46 + *(v54 + 40);
    UnknownStorage.init()();
    v57 = v53(v52, 1, v54);
    v58 = v120;
    v59 = v119;
    v60 = v140;
    if (v57 != 1)
    {
      v61 = v52;
      v62 = v140;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v61, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v60 = v62;
    }
  }

  else
  {
    v55 = v46;
    outlined init with take of AspireHeSerializedCiphertext(v52, v46, type metadata accessor for AspireHeEncryptionParameters);
    v58 = v120;
    v59 = v119;
    v60 = v140;
  }

  v63 = v143;
  AspireHeEncryptionParameters.cryptokit()(v60);
  v64 = v144;
  if (v63)
  {
    outlined consume of ShardLabel(v48, v145, v58 & 1);
    outlined consume of Data._Representation(v141, v142);
    outlined destroy of AspireApiPIRConfig(v64, type metadata accessor for SecretKey);
    outlined destroy of AspireApiPIRConfig(v55, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AspireApiPIRConfig(v59, type metadata accessor for AspireApiPIRShardConfig);
    v45 = v147;
    return outlined destroy of AspireApiPIRConfig(v45, type metadata accessor for AspireApiPIRConfig);
  }

  outlined destroy of AspireApiPIRConfig(v55, type metadata accessor for AspireHeEncryptionParameters);
  v65 = v118 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  swift_beginAccess();
  if (*(v65 + 8) != 1)
  {
    goto LABEL_37;
  }

  (*(v131 + 104))(v134, **(&unk_278542268 + *v65), v132);
  v66 = *v59;
  if ((*v59 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  v67 = v59[1];
  if (v67 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v137 = v48;
  v138 = v67;
  v143 = v66;
  v68 = v59[2];
  v69 = *(v68 + 16);
  if (v69)
  {
    v146 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69, 0);
    v70 = v146;
    v71 = (v68 + 32);
    while (1)
    {
      v73 = *v71++;
      v72 = v73;
      if (v73 < 0)
      {
        break;
      }

      v146 = v70;
      v75 = *(v70 + 16);
      v74 = *(v70 + 24);
      if (v75 >= v74 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
        v70 = v146;
      }

      *(v70 + 16) = v75 + 1;
      *(v70 + 8 * v75 + 32) = v72;
      if (!--v69)
      {
        v76 = v47;
        v59 = v119;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v76 = v47;
LABEL_20:
  v77 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  v78 = v118;
  swift_beginAccess();
  v79 = *(v78 + v77);
  v80 = v130;
  v81 = v129;
  if (v79 < 0)
  {
    goto LABEL_34;
  }

  v82 = v59 + *(v116 + 40);
  v83 = v133;
  v84 = v117;
  if ((v82[8] & 1) != 0 || (*v82 & 0x8000000000000000) == 0)
  {
    v112 = *(v59 + *(v116 + 36));
    PIR.PirParams.init(encryptionParams:algorithm:entriesCount:entrySize:dimensions:batchSize:internalBatchSize:compressResponse:)();
    v86 = v84;
    v87 = v114;
    (*(v83 + 16))(v115, v86);
    v88 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
    v89 = v118;
    swift_beginAccess();
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v89 + v88, v80, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    v90 = *(v81 + 48);
    v91 = v127;
    if (v90(v80, 1, v127) == 1)
    {
      v92 = v128;
      *v128 = 0;
      *(v92 + 8) = 0;
      v93 = v92 + v91[6];
      UnknownStorage.init()();
      v94 = v91[7];
      v95 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
      (*(*(v95 - 8) + 56))(v92 + v94, 1, 1, v95);
      v96 = v91[8];
      v97 = type metadata accessor for AspirePirPIRShardingFunction(0);
      (*(*(v97 - 8) + 56))(v92 + v96, 1, 1, v97);
      v98 = v90(v80, 1, v91);
      v99 = v114;
      v100 = v92;
      v59 = v119;
      v101 = v147;
      if (v98 != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v80, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      }
    }

    else
    {
      v100 = v128;
      outlined init with take of AspireHeSerializedCiphertext(v80, v128, type metadata accessor for AspirePirKeywordPirParameters);
      v101 = v147;
      v99 = v87;
    }

    v102 = v100;
    v103 = *v100;
    outlined destroy of AspireApiPIRConfig(v102, type metadata accessor for AspirePirKeywordPirParameters);
    if ((v103 & 0x8000000000000000) == 0)
    {
      v104 = type metadata accessor for SecretKey();
      v105 = v144;
      (*(v125 + 16))(v124, v144 + *(v104 + 20), v126);
      v106 = v123;
      PIR.KeywordPirClient.init(pirParams:hashFunctionCount:secretKey:)();
      (*(v133 + 8))(v117, v99);
      outlined destroy of AspireApiPIRConfig(v59, type metadata accessor for AspireApiPIRShardConfig);
      outlined init with take of AspireHeSerializedCiphertext(v105, v76, type metadata accessor for SecretKey);
      v107 = type metadata accessor for KeywordPIRClient();
      v108 = v76 + v107[8];
      v109 = v145;
      *v108 = v137;
      *(v108 + 8) = v109;
      *(v108 + 16) = v120 & 1;
      outlined init with take of AspireHeSerializedCiphertext(v101, v76 + v107[5], type metadata accessor for AspireApiPIRConfig);
      v110 = (v76 + v107[6]);
      v111 = v142;
      *v110 = v141;
      v110[1] = v111;
      return (*(v121 + 32))(v76 + v107[7], v106, v122);
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for KeywordPIRClient()
{
  result = type metadata singleton initialization cache for KeywordPIRClient;
  if (!type metadata singleton initialization cache for KeywordPIRClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #2 in KeywordPIRClient.constructPIRRequest(with:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;

  *a1 = a2;
  v16 = a3 + *(type metadata accessor for KeywordPIRClient() + 20);
  v17 = *(v16 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v18 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17 + v18, v9, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v19 = *(v11 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v14 = 0;
    v14[8] = 0;
    v20 = &v14[v10[6]];
    UnknownStorage.init()();
    v21 = v10[7];
    v22 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    v23 = v10[8];
    v24 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v24 - 8) + 56))(&v14[v23], 1, 1, v24);
    if (v19(v9, 1, v10) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireHeSerializedCiphertext(v9, v14, type metadata accessor for AspirePirKeywordPirParameters);
  }

  v25 = *v14;
  result = outlined destroy of AspireApiPIRConfig(v14, type metadata accessor for AspirePirKeywordPirParameters);
  a1[1] = v25;
  return result;
}

uint64_t closure #3 in KeywordPIRClient.constructPIRRequest(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v5 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspirePirEncryptedIndices(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for KeywordPIRClient();
  v15 = a2 + *(result + 32);
  v16 = *v15;
  v17 = *(v15 + 16);
  v37 = v5;
  v35 = result;
  if ((v17 & 1) == 0)
  {
    v18 = *(v15 + 8);
    v19 = v6;
    v20 = a2;
    v21 = (a1 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));
    v22 = v21[1];

    *v21 = v16;
    v21[1] = v18;
    a2 = v20;
    v6 = v19;
    goto LABEL_6;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v16))
  {
    *a1 = v16;
LABEL_6:
    _s8CipherML9SecretKeyVWOcTm_1(v34, v13, type metadata accessor for AspirePirEncryptedIndices);
    v23 = type metadata accessor for AspireApiPIRRequest(0);
    v24 = *(v23 + 28);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v24, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    outlined init with take of AspireHeSerializedCiphertext(v13, a1 + v24, type metadata accessor for AspirePirEncryptedIndices);
    v25 = (*(v10 + 56))(a1 + v24, 0, 1, v9);
    MEMORY[0x28223BE20](v25);
    *(&v34 - 2) = a2;
    lazy protocol witness table accessor for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
    v26 = v36;
    v27 = v37;
    static Message.with(_:)();
    v28 = *(v23 + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v28, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    outlined init with take of AspireHeSerializedCiphertext(v26, a1 + v28, type metadata accessor for AspireApiEvaluationKeyMetadata);
    (*(v6 + 56))(a1 + v28, 0, 1, v27);
    v29 = (a2 + *(v35 + 24));
    v30 = *v29;
    v31 = v29[1];
    v32 = *(a1 + 8);
    v33 = *(a1 + 16);
    outlined copy of Data._Representation(*v29, v31);
    result = outlined consume of Data._Representation(v32, v33);
    *(a1 + 8) = v30;
    *(a1 + 16) = v31;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #3 in KeywordPIRClient.constructPIRRequest(with:)(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2 + *(type metadata accessor for KeywordPIRClient() + 20);
  v4 = (*&v3[*(type metadata accessor for AspireApiPIRConfig(0) + 20)] + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = a1[1];
  v8 = a1[2];
  outlined copy of Data._Representation(v6, v5);
  result = outlined consume of Data._Representation(v7, v8);
  a1[1] = v6;
  a1[2] = v5;
  return result;
}

uint64_t outlined destroy of AspireApiPIRConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShardLabel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShardLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for KeywordPIRClient()
{
  result = type metadata accessor for SecretKey();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspireApiPIRConfig(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PIR.KeywordPirClient();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s8CipherML9SecretKeyVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of AspireHeSerializedCiphertext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t KVSKeyStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v2 = MEMORY[0x22AA609C0](0xD000000000000013, 0x8000000225035D00);
  v3 = [v1 initWithStoreIdentifier:v2 type:1];

  *(v0 + 112) = v3;
  return v0;
}

uint64_t KVSKeyStorage.init()()
{
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v2 = MEMORY[0x22AA609C0](0xD000000000000013, 0x8000000225035D00);
  v3 = [v1 initWithStoreIdentifier:v2 type:1];

  *(v0 + 112) = v3;
  return v0;
}

uint64_t KVSKeyStorage.get(group:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v4 = MEMORY[0x22AA609C0]();
  v5 = [v3 dataForKey_];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = type metadata accessor for PropertyListDecoder();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v12 = type metadata accessor for UserIdentifier();
    lazy protocol witness table accessor for type UserIdentifier and conformance UserIdentifier(&lazy protocol witness table cache variable for type UserIdentifier and conformance UserIdentifier, 255, type metadata accessor for UserIdentifier);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);

    return outlined consume of Data._Representation(v6, v8);
  }

  else
  {
    v14 = type metadata accessor for UserIdentifier();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

void KVSKeyStorage.set(group:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for UserIdentifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of UserIdentifier?(a3, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    v16 = *(v3 + 112);
    v17 = MEMORY[0x22AA609C0](a1, a2);
    [v16 removeObjectForKey_];
  }

  else
  {
    outlined init with take of UserIdentifier(v10, v15);
    v18 = type metadata accessor for PropertyListEncoder();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    lazy protocol witness table accessor for type UserIdentifier and conformance UserIdentifier(&lazy protocol witness table cache variable for type UserIdentifier and conformance UserIdentifier, 255, type metadata accessor for UserIdentifier);
    v21 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v22 = *(v3 + 112);
    v23 = v21;
    v25 = v24;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v27 = MEMORY[0x22AA609C0](a1, a2);
    [v22 setData:isa forKey:v27];
    outlined consume of Data._Representation(v23, v25);

    outlined destroy of UserIdentifier(v15);
  }
}

uint64_t KVSKeyStorage.synchronize()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](KVSKeyStorage.synchronize(), v0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = KVSKeyStorage.synchronize();
  }

  else
  {
    v6 = XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t KVSKeyStorage.synchronize()(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  lazy protocol witness table accessor for type UserIdentifier and conformance UserIdentifier(&lazy protocol witness table cache variable for type KVSKeyStorage and conformance KVSKeyStorage, a2, type metadata accessor for KVSKeyStorage);
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = KVSKeyStorage.synchronize();
  v6 = *(v2 + 16);

  return MEMORY[0x2822008A0]();
}

void closure #1 in KVSKeyStorage.synchronize()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a2 + 112);
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in KVSKeyStorage.synchronize();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_2;
  v12 = _Block_copy(aBlock);

  [v9 synchronizeWithCompletionHandler_];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in KVSKeyStorage.synchronize()(void *a1)
{
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.daemon);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    if (a1)
    {
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      v10 = v9;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v6 + 4) = v9;
    *v7 = v10;
    _os_log_impl(&dword_224E26000, v4, v5, "KVSKeyStorage failed to synchronize: %{public}@", v6, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  if (a1)
  {
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t KVSKeyStorage.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for KeyStorage.get(group:) in conformance KVSKeyStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](protocol witness for KeyStorage.get(group:) in conformance KVSKeyStorage, v3, 0);
}

uint64_t protocol witness for KeyStorage.get(group:) in conformance KVSKeyStorage()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  KVSKeyStorage.get(group:)(v0[2]);
  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for KeyStorage.set(group:userId:) in conformance KVSKeyStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](protocol witness for KeyStorage.set(group:userId:) in conformance KVSKeyStorage, v3, 0);
}

uint64_t protocol witness for KeyStorage.set(group:userId:) in conformance KVSKeyStorage()
{
  v1 = v0[5];
  KVSKeyStorage.set(group:userId:)(v0[2], v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t protocol witness for KeyStorage.synchronize() in conformance KVSKeyStorage()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](protocol witness for KeyStorage.synchronize() in conformance KVSKeyStorage, v0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = protocol witness for KeyStorage.synchronize() in conformance KVSKeyStorage;
  }

  else
  {
    v6 = protocol witness for KeyStorage.synchronize() in conformance KVSKeyStorage;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t protocol witness for KeyStorage.synchronize() in conformance KVSKeyStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  lazy protocol witness table accessor for type UserIdentifier and conformance UserIdentifier(&lazy protocol witness table cache variable for type KVSKeyStorage and conformance KVSKeyStorage, a2, type metadata accessor for KVSKeyStorage);
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = protocol witness for KeyStorage.synchronize() in conformance KVSKeyStorage;
  v6 = *(v2 + 16);

  return MEMORY[0x2822008A0]();
}

uint64_t outlined init with copy of UserIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UserIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UserIdentifier and conformance UserIdentifier(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t dispatch thunk of KVSKeyStorage.synchronize()()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v6();
}

uint64_t partial apply for closure #1 in closure #1 in KVSKeyStorage.synchronize()(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in KVSKeyStorage.synchronize()(a1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AMSNetworking.__allocating_init(networkDelegationConfig:secondaryIdentifier:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  AMSNetworking.init(networkDelegationConfig:secondaryIdentifier:baseURL:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t AMSNetworking.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8CipherML13AMSNetworking_baseURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AMSNetworking.networkDelegationConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML13AMSNetworking_networkDelegationConfig);
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML13AMSNetworking_networkDelegationConfig + 8);

  return v1;
}

uint64_t AMSNetworking.init(networkDelegationConfig:secondaryIdentifier:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC8CipherML13AMSNetworking_baseURL;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5 + v10, a5, v11);
  v13 = objc_opt_self();
  [v13 setPreferEphemeralURLSessions_];
  [v13 setSuppressEngagement_];
  [v13 setForceLoadUrlMetrics_];
  v14 = MEMORY[0x22AA609C0](0x6761676E45534D41, 0xED0000746E656D65);
  v15 = MEMORY[0x22AA609C0](49, 0xE100000000000000);
  v16 = [objc_opt_self() bagForProfile:v14 profileVersion:v15];

  v17 = OBJC_IVAR____TtC8CipherML13AMSNetworking_bag;
  *(v5 + OBJC_IVAR____TtC8CipherML13AMSNetworking_bag) = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  *(v5 + OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder) = v18;
  [v18 setRequestEncoding_];
  v19 = a2;
  v20 = specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(a1, a2, a3, a4);

  v21 = [objc_opt_self() currentProcess];
  [v20 ams:v21 configureWithProcessInfo:*(v5 + v17) bag:?];

  v22 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];
  (*(v12 + 8))(a5, v11);
  *(v5 + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) = v22;
  v23 = (v5 + OBJC_IVAR____TtC8CipherML13AMSNetworking_networkDelegationConfig);
  *v23 = a1;
  v23[1] = v19;
  return v5;
}

uint64_t AMSNetworking.deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession;
  [*(v0 + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) finishTasksAndInvalidate];
  v2 = OBJC_IVAR____TtC8CipherML13AMSNetworking_baseURL;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC8CipherML13AMSNetworking_networkDelegationConfig + 8);

  return v0;
}

uint64_t AMSNetworking.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession;
  [*(v0 + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) finishTasksAndInvalidate];
  v2 = OBJC_IVAR____TtC8CipherML13AMSNetworking_baseURL;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC8CipherML13AMSNetworking_networkDelegationConfig + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AMSNetworking.constructURL(path:userId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[0] = a3;
  v21[1] = a4;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[2] = a1;
  v21[3] = a2;
  (*(v7 + 104))(v10, *MEMORY[0x277CC91D8], v6, v14);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  v17 = *(type metadata accessor for URLQueryItem() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_225022960;
  UUID.uuidString.getter();
  URLQueryItem.init(name:value:)();

  URL.appending(queryItems:)();

  return (*(v12 + 8))(v16, v11);
}

uint64_t default argument 0 of Date.ISO8601Format(_:)@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v31 - v3;
  v35 = type metadata accessor for TimeZone();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  (*(v25 + 104))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460], v23);
  v26 = v16;
  v27 = v35;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v26);
  v28 = v10;
  v29 = v36;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v28, *MEMORY[0x277CC9480], v34);
  TimeZone.init(secondsFromGMT:)();
  result = (*(v4 + 48))(v29, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v32, v29, v27);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t AMSNetworking.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = type metadata accessor for AspireApiConfigResponse(0);
  v4[33] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v8 = type metadata accessor for AMDPbHEConfigsReply(0);
  v4[36] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v10 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v11 = type metadata accessor for AMDPbHEResponse(0);
  v4[42] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo12AMSURLResultCs5Error_pGMd, &_sScCySo12AMSURLResultCs5Error_pGMR);
  v4[46] = v13;
  v14 = *(v13 - 8);
  v4[47] = v14;
  v15 = *(v14 + 64) + 15;
  v4[48] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v4[49] = v16;
  v17 = *(v16 - 8);
  v4[50] = v17;
  v18 = *(v17 + 64) + 15;
  v4[51] = swift_task_alloc();
  v19 = type metadata accessor for URL();
  v4[52] = v19;
  v20 = *(v19 - 8);
  v4[53] = v20;
  v21 = *(v20 + 64) + 15;
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](AMSNetworking.fetchConfigs(useCases:userId:), 0, 0);
}

uint64_t AMSNetworking.fetchConfigs(useCases:userId:)()
{
  v51 = v0;
  v1 = v0 + 18;
  v2 = v0[30];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v50 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v50;
    v5 = *(v50 + 16);
    v6 = 16 * v5;
    v7 = (v2 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v50 = v4;
      v10 = v5 + 1;
      v11 = *(v4 + 24);

      if (v5 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10, 1);
        v4 = v50;
      }

      *(v4 + 16) = v10;
      v12 = v4 + v6;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v6 += 16;
      v7 += 3;
      ++v5;
      --v3;
    }

    while (v3);
    v1 = v0 + 18;
  }

  v0[55] = v4;
  v13 = v0[32];
  AMSNetworking.constructURL(path:userId:)(0xD000000000000015, 0x80000002250380D0, v0[31], v0[54]);
  v14 = *(v13 + OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
  v16 = v15;
  specialized AMSNetworking.requestHeaders()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(*v13 + 152))(v4);
  v18 = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v14 requestWithMethod:2 URL:v16 headers:isa parameters:v18];
  v0[56] = v19;

  v20 = v19;
  v0[22] = closure #1 in AMSNetworking.fetchConfigs(useCases:userId:);
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v0[21] = &block_descriptor_3;
  v21 = _Block_copy(v1);
  [v20 addErrorBlock_];
  _Block_release(v21);
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v23 = v0[50];
  v22 = v0[51];
  v24 = v0[49];
  v25 = v0[31];
  v26 = type metadata accessor for Logger();
  v0[57] = __swift_project_value_buffer(v26, static Logger.networking);
  (*(v23 + 16))(v22, v25, v24);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[50];
  v30 = v0[51];
  v32 = v0[49];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v49 = v20;
    v50 = swift_slowAlloc();
    v34 = v50;
    *v33 = 136446467;
    v35 = MEMORY[0x22AA60B60](v4, MEMORY[0x277D837D0]);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v50);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2081;
    v38 = UUID.uuidString.getter();
    v40 = v39;
    (*(v31 + 8))(v30, v32);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v50);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_224E26000, v27, v28, "Request to fetchConfigs has started for useCases '%{public}s', userId: '%{private}s'", v33, 0x16u);
    swift_arrayDestroy();
    v42 = v34;
    v20 = v49;
    MEMORY[0x22AA61F40](v42, -1, -1);
    MEMORY[0x22AA61F40](v33, -1, -1);
  }

  else
  {

    (*(v31 + 8))(v30, v32);
  }

  v44 = v0[47];
  v43 = v0[48];
  v45 = v0[46];
  v46 = [*(v0[32] + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) dataTaskPromiseWithRequestPromise_];
  v0[58] = v46;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = AMSNetworking.fetchConfigs(useCases:userId:);
  swift_continuation_init();
  v0[17] = v45;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for AMSURLResult, 0x277CEE6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  CheckedContinuation.init(continuation:function:)();
  (*(v44 + 32))(boxed_opaque_existential_1, v43, v45);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AMSURLResult?, @unowned NSError?) -> () with result type AMSURLResult;
  v0[13] = &block_descriptor_3;
  [v46 resultWithCompletion_];
  (*(v44 + 8))(boxed_opaque_existential_1, v45);

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 472) = v3;
  if (v3)
  {
    v4 = *(v1 + 440);

    v5 = AMSNetworking.fetchConfigs(useCases:userId:);
  }

  else
  {
    v5 = AMSNetworking.fetchConfigs(useCases:userId:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v97 = v0;
  v1 = v0[28];
  v2 = specialized AMSURLResult.validateSuccessResponse()();
  v3 = v0[58];
  v4 = v0[57];
  v5 = v2;

  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    v10 = [v6 data];
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = v13;
    v15 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v15 != 2)
      {
        outlined consume of Data._Representation(v11, v13);
        v16 = 0;
        goto LABEL_13;
      }

      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      outlined consume of Data._Representation(v11, v14);
      v16 = v17 - v18;
      if (!__OFSUB__(v17, v18))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v15)
    {
      outlined consume of Data._Representation(v11, v13);
      v16 = BYTE6(v13);
LABEL_13:
      *(v9 + 4) = v16;

      _os_log_impl(&dword_224E26000, v7, v8, "Request to fetchConfigs has finished, response length: %{public}ld", v9, 0xCu);
      MEMORY[0x22AA61F40](v9, -1, -1);
      goto LABEL_14;
    }

    result = outlined consume of Data._Representation(v11, v14);
    LODWORD(v16) = HIDWORD(v11) - v11;
    if (__OFSUB__(HIDWORD(v11), v11))
    {
      __break(1u);
      return result;
    }

    v16 = v16;
    goto LABEL_13;
  }

  v7 = v6;
LABEL_14:
  v20 = v0[42];
  v21 = v0[43];
  v22 = v0[41];

  v23 = [v6 data];
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v0[24] = v24;
  v0[25] = v26;
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v27 = v0[43];
  AMDPbHEResponse.validateSuccessResponse()(v0[44]);
  v28 = v0[44];
  v29 = v0[45];
  outlined destroy of AMDPbHEResponse(v0[43], type metadata accessor for AMDPbHEResponse);
  AMDPbHEResponse.validateAPICode(expected:)(1, 1, v29);
  v30 = v0[45];
  v31 = v0[42];
  v32 = v0[35];
  outlined destroy of AMDPbHEResponse(v0[44], type metadata accessor for AMDPbHEResponse);
  outlined init with copy of AMDPbHEResponse.OneOf_Response?(v30 + *(v31 + 28), v32);
  v33 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
  v35 = v0[35];
  if (v34 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[35], &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    v36 = v0[35];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined init with take of AspireApiConfigResponse(v35, v0[39], type metadata accessor for AMDPbHEConfigsReply);
      goto LABEL_24;
    }

    outlined destroy of AMDPbHEResponse(v35, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v37 = v0[39];
  v38 = v0[36];
  v39 = MEMORY[0x277D84F90];
  *v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML13AMDPbHEConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v37[1] = v39;
  v40 = v37 + *(v38 + 24);
  UnknownStorage.init()();
LABEL_24:
  v41 = v0[57];
  v42 = v0[39];
  v43 = v0[37];
  outlined init with copy of AMDPbHEConfigsReply(v42, v0[38], type metadata accessor for AMDPbHEConfigsReply);
  outlined init with copy of AMDPbHEConfigsReply(v42, v43, type metadata accessor for AMDPbHEConfigsReply);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v0[37];
  v48 = v0[38];
  if (v46)
  {
    v49 = swift_slowAlloc();
    *v49 = 134349312;
    v50 = *(*v48 + 16);
    outlined destroy of AMDPbHEResponse(v48, type metadata accessor for AMDPbHEConfigsReply);
    *(v49 + 4) = v50;
    *(v49 + 12) = 2050;
    v51 = *(*(v47 + 8) + 16);
    outlined destroy of AMDPbHEResponse(v47, type metadata accessor for AMDPbHEConfigsReply);
    *(v49 + 14) = v51;
    _os_log_impl(&dword_224E26000, v44, v45, "Request to fetchConfigs has finished with AMD: %{public}ld configs and %{public}ld keyInfos", v49, 0x16u);
    MEMORY[0x22AA61F40](v49, -1, -1);
  }

  else
  {
    outlined destroy of AMDPbHEResponse(v0[37], type metadata accessor for AMDPbHEConfigsReply);
    outlined destroy of AMDPbHEResponse(v48, type metadata accessor for AMDPbHEConfigsReply);
  }

  v52 = v0[55];
  v53 = v0[39];

  v54 = swift_task_alloc();
  *(v54 + 16) = v53;

  v55 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in AMSNetworking.fetchConfigs(useCases:userId:), v54, v52);

  if (*(v55 + 16))
  {
    v56 = v0[57];
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v94 = v60;
      *v59 = 136446210;
      v61 = MEMORY[0x22AA60B60](v55, MEMORY[0x277D837D0]);
      v62 = v0;
      v64 = v63;

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v64, &v94);
      v0 = v62;

      *(v59 + 4) = v65;
      _os_log_impl(&dword_224E26000, v57, v58, "No configuration found for useCases: %{public}s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x22AA61F40](v60, -1, -1);
      MEMORY[0x22AA61F40](v59, -1, -1);

      goto LABEL_32;
    }
  }

LABEL_32:
  v66 = v0[39];
  v67 = v0[36];
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply);
  v68 = Message.serializedData(partial:)();
  v69 = v0[40];
  v71 = v0[33];
  v70 = v0[34];
  v0[26] = v68;
  v0[27] = v72;
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v73 = v0[55];
  v74 = v0[56];
  v76 = v0[53];
  v75 = v0[54];
  v77 = v0[52];
  v85 = v0[51];
  v86 = v0[48];
  v87 = v0[44];
  v88 = v0[43];
  v89 = v0[41];
  v90 = v0[40];
  v84 = v0[39];
  v91 = v0[38];
  v92 = v0[37];
  v78 = v0[34];
  v93 = v0[35];
  v82 = v0[45];
  v83 = v0[29];
  v79 = *v78;

  v80 = specialized _NativeDictionary.filter(_:)(v79, v73);
  swift_bridgeObjectRelease_n();

  outlined destroy of AMDPbHEResponse(v82, type metadata accessor for AMDPbHEResponse);
  (*(v76 + 8))(v75, v77);

  *v78 = v80;
  outlined init with take of AspireApiConfigResponse(v78, v83, type metadata accessor for AspireApiConfigResponse);
  outlined destroy of AMDPbHEResponse(v84, type metadata accessor for AMDPbHEConfigsReply);

  v81 = v0[1];

  return v81();
}

{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[52];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  v7 = v0[59];
  v8 = v0[57];
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_224E26000, v10, v11, "Request to fetchConfigs has failed: %{public}@", v12, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v13, -1, -1);
    MEMORY[0x22AA61F40](v12, -1, -1);
  }

  v16 = v0[54];
  v17 = v0[51];
  v18 = v0[48];
  v20 = v0[44];
  v19 = v0[45];
  v21 = v0[43];
  v22 = v10;
  v23 = v0[41];
  v26 = v0[40];
  v27 = v0[39];
  v28 = v0[38];
  v29 = v0[37];
  v30 = v0[35];
  v31 = v0[34];

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void *AMSURLResult.validateSuccessResponse()()
{
  result = specialized AMSURLResult.validateSuccessResponse()();
  if (!v0)
  {
    v2 = result;
    v3 = result;
    return v2;
  }

  return result;
}

uint64_t closure #2 in AMSNetworking.fetchConfigs(useCases:userId:)(uint64_t *a1, uint64_t *a2)
{
  if (*(*a2 + 16))
  {
    v3 = *a1;
    v2 = a1[1];
    v4 = *a2;

    specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
    LOBYTE(v2) = v5;

    v6 = v2 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

unint64_t AMSNetworking.fetchConfigParameters(useCases:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = 0x736769666E6F63;
    *(inited + 40) = 0xE700000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    *(inited + 48) = BidirectionalCollection<>.joined(separator:)();
    *(inited + 56) = v3;
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v6);
  }
}

uint64_t AMSNetworking.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  v4 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v5 = type metadata accessor for AMDPbHEResponse(0);
  v3[48] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo12AMSURLResultCs5Error_pGMd, &_sScCySo12AMSURLResultCs5Error_pGMR);
  v3[52] = v7;
  v8 = *(v7 - 8);
  v3[53] = v8;
  v9 = *(v8 + 64) + 15;
  v3[54] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13AMSURLRequestCs5Error_pGMd, &_sScCySo13AMSURLRequestCs5Error_pGMR);
  v3[55] = v10;
  v11 = *(v10 - 8);
  v3[56] = v11;
  v12 = *(v11 + 64) + 15;
  v3[57] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v3[58] = v13;
  v14 = *(v13 - 8);
  v3[59] = v14;
  v15 = *(v14 + 64) + 15;
  v3[60] = swift_task_alloc();
  v16 = type metadata accessor for AspireApiEvaluationKeys(0);
  v3[61] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v18 = type metadata accessor for URL();
  v3[63] = v18;
  v19 = *(v18 - 8);
  v3[64] = v19;
  v20 = *(v19 + 64) + 15;
  v3[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](AMSNetworking.uploadKeys(evaluationKeys:userId:), 0, 0);
}

uint64_t AMSNetworking.uploadKeys(evaluationKeys:userId:)()
{
  v52 = v0;
  v1 = v0[61];
  v2 = v0[44];
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, type metadata accessor for AspireApiEvaluationKeys);
  v3 = Message.serializedData(partial:)();
  v0[66] = 0;
  v0[67] = v3;
  v0[68] = v4;
  v5 = v3;
  v6 = v4;
  v7 = v0[46];
  AMSNetworking.constructURL(path:userId:)(0xD000000000000017, 0x8000000225038150, v0[45], v0[65]);
  v8 = *(v7 + OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
  v10 = v9;
  specialized AMSNetworking.requestHeaders()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = Data._bridgeToObjectiveC()().super.isa;
  v13 = [v8 requestWithMethod:4 URL:v10 headers:isa parameters:v12];
  v0[69] = v13;

  v0[38] = closure #1 in AMSNetworking.uploadKeys(evaluationKeys:userId:);
  v0[39] = 0;
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v0[37] = &block_descriptor_7;
  v14 = _Block_copy(v0 + 34);
  v50 = v13;
  [v13 addErrorBlock_];
  _Block_release(v14);
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v15 = v0[62];
  v16 = v0[59];
  v17 = v0[60];
  v18 = v0[58];
  v20 = v0[44];
  v19 = v0[45];
  v21 = type metadata accessor for Logger();
  v0[70] = __swift_project_value_buffer(v21, static Logger.networking);
  outlined init with copy of AMDPbHEConfigsReply(v20, v15, type metadata accessor for AspireApiEvaluationKeys);
  (*(v16 + 16))(v17, v19, v18);
  outlined copy of Data._Representation(v5, v6);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[62];
  if (!v24)
  {
    v32 = v0[59];
    v33 = v0[60];
    v34 = v0[58];
    outlined destroy of AMDPbHEResponse(v0[62], type metadata accessor for AspireApiEvaluationKeys);
    outlined consume of Data._Representation(v5, v6);

    (*(v32 + 8))(v33, v34);
    goto LABEL_16;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v51 = v27;
  *v26 = 134349571;
  v28 = *(*v25 + 16);
  v29 = outlined destroy of AMDPbHEResponse(v25, type metadata accessor for AspireApiEvaluationKeys);
  *(v26 + 4) = v28;
  *(v26 + 12) = 2050;
  v30 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v30 != 2)
    {
      v31 = 0;
      goto LABEL_15;
    }

    v36 = *(v5 + 16);
    v35 = *(v5 + 24);
    v37 = __OFSUB__(v35, v36);
    v31 = v35 - v36;
    if (!v37)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v31) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      return MEMORY[0x282200938](v29);
    }

    v31 = v31;
    goto LABEL_15;
  }

  if (v30)
  {
    goto LABEL_12;
  }

  v31 = BYTE6(v6);
LABEL_15:
  v38 = v0[59];
  v39 = v0[60];
  v40 = v0[58];
  *(v26 + 14) = v31;
  outlined consume of Data._Representation(v5, v6);
  *(v26 + 22) = 2081;
  v41 = UUID.uuidString.getter();
  v43 = v42;
  (*(v38 + 8))(v39, v40);
  v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v51);

  *(v26 + 24) = v44;
  _os_log_impl(&dword_224E26000, v22, v23, "Request to uploadKeys has started for %{public}ld key(s) with %{public}ld bytes for userId: '%{private}s'", v26, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v27);
  MEMORY[0x22AA61F40](v27, -1, -1);
  MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_16:
  v46 = v0[56];
  v45 = v0[57];
  v47 = v0[55];
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  swift_continuation_init();
  v0[25] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for AMSURLRequest, 0x277CEE6D0);
  v0[71] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  CheckedContinuation.init(continuation:function:)();
  (*(v46 + 32))(boxed_opaque_existential_1, v45, v47);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AMSURLRequest?, @unowned NSError?) -> () with result type AMSURLRequest;
  v0[21] = &block_descriptor_10;
  [v50 resultWithCompletion_];
  (*(v46 + 8))(boxed_opaque_existential_1, v47);
  v29 = (v0 + 2);

  return MEMORY[0x282200938](v29);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 576) = v2;
  if (v2)
  {
    v3 = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  }

  else
  {
    v3 = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[66];
  v2 = v0[42];
  v0[73] = v2;
  static Task<>.checkCancellation()();
  v0[74] = v1;
  if (v1)
  {
    v3 = v1;
    v4 = v0[69];
    v5 = v0[68];
    v6 = v0[67];
    (*(v0[64] + 8))(v0[65], v0[63]);
    outlined consume of Data._Representation(v6, v5);

    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.networking);
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = v3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_224E26000, v9, v10, "Request to uploadKeys has failed: %{public}@", v11, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v12, -1, -1);
      MEMORY[0x22AA61F40](v11, -1, -1);
    }

    v15 = v0[65];
    v16 = v0[62];
    v17 = v0[60];
    v18 = v0[57];
    v19 = v0[54];
    v20 = v9;
    v21 = v0[50];
    v22 = v0[51];
    v35 = v0[49];
    v37 = v0[47];

    swift_willThrow();

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[70];
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_224E26000, v26, v27, "Starting actual upload", v28, 2u);
      MEMORY[0x22AA61F40](v28, -1, -1);
    }

    v36 = v0[71];
    v30 = v0[53];
    v29 = v0[54];
    v31 = v0[52];
    v32 = v0[46];

    v33 = [*(v32 + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) dataTaskPromiseWithRequest_];
    v0[75] = v33;
    v0[10] = v0;
    v0[15] = v0 + 43;
    v0[11] = AMSNetworking.uploadKeys(evaluationKeys:userId:);
    swift_continuation_init();
    v0[33] = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for AMSURLResult, 0x277CEE6E8);
    CheckedContinuation.init(continuation:function:)();
    (*(v30 + 32))(boxed_opaque_existential_1, v29, v31);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AMSURLResult?, @unowned NSError?) -> () with result type AMSURLResult;
    v0[29] = &block_descriptor_13;
    [v33 resultWithCompletion_];
    (*(v30 + 8))(boxed_opaque_existential_1, v31);

    return MEMORY[0x282200938](v0 + 10);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 608) = v2;
  if (v2)
  {
    v3 = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  }

  else
  {
    v3 = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 592);
  v2 = *(v0 + 344);
  v3 = specialized AMSURLResult.validateSuccessResponse()();
  v4 = *(v0 + 600);
  if (v1)
  {
    v5 = v1;
    v6 = *(v0 + 584);
    v7 = *(v0 + 552);
    v8 = *(v0 + 544);
    v9 = *(v0 + 536);
    (*(*(v0 + 512) + 8))(*(v0 + 520), *(v0 + 504));
    outlined consume of Data._Representation(v9, v8);

    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.networking);
    v34 = v5;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      v39 = v5;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_224E26000, v35, v36, "Request to uploadKeys has failed: %{public}@", v37, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v38, -1, -1);
      MEMORY[0x22AA61F40](v37, -1, -1);
    }

    v41 = *(v0 + 520);
    v42 = *(v0 + 496);
    v43 = *(v0 + 480);
    v44 = *(v0 + 456);
    v45 = *(v0 + 432);
    v46 = *(v0 + 400);
    v47 = *(v0 + 408);
    v65 = *(v0 + 392);
    v67 = *(v0 + 376);

    swift_willThrow();

    v60 = *(v0 + 8);
    goto LABEL_22;
  }

  v10 = *(v0 + 560);
  v11 = v3;

  v12 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    v16 = [v12 data];
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = v19;
    v21 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v21 != 2)
      {
        outlined consume of Data._Representation(v17, v19);
        v22 = 0;
        goto LABEL_15;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      outlined consume of Data._Representation(v17, v20);
      v22 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v21)
    {
      outlined consume of Data._Representation(v17, v19);
      v22 = BYTE6(v19);
LABEL_15:
      *(v15 + 4) = v22;

      _os_log_impl(&dword_224E26000, v13, v14, "Request to uploadKeys has finished, response length: %{public}ld", v15, 0xCu);
      MEMORY[0x22AA61F40](v15, -1, -1);
      goto LABEL_16;
    }

    result = outlined consume of Data._Representation(v17, v20);
    LODWORD(v22) = HIDWORD(v17) - v17;
    if (__OFSUB__(HIDWORD(v17), v17))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_15;
  }

  v13 = v12;
LABEL_16:
  v26 = *(v0 + 384);
  v27 = *(v0 + 392);
  v28 = *(v0 + 376);

  v29 = [v12 data];
  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(v0 + 320) = v30;
  *(v0 + 328) = v32;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v48 = *(v0 + 392);
  AMDPbHEResponse.validateSuccessResponse()(*(v0 + 400));
  v49 = *(v0 + 512);
  v50 = *(v0 + 400);
  v51 = *(v0 + 408);
  outlined destroy of AMDPbHEResponse(*(v0 + 392), type metadata accessor for AMDPbHEResponse);
  AMDPbHEResponse.validateAPICode(expected:)(0, 1, v51);
  v52 = (v49 + 8);
  v53 = *(v0 + 584);
  v54 = *(v0 + 544);
  v55 = *(v0 + 536);
  v56 = *(v0 + 520);
  v68 = *(v0 + 504);
  v61 = *(v0 + 496);
  v62 = *(v0 + 480);
  v63 = *(v0 + 456);
  v64 = *(v0 + 432);
  v57 = *(v0 + 400);
  v58 = *(v0 + 408);
  v66 = *(v0 + 392);
  v59 = *(v0 + 376);

  outlined consume of Data._Representation(v55, v54);
  outlined destroy of AMDPbHEResponse(v57, type metadata accessor for AMDPbHEResponse);
  outlined destroy of AMDPbHEResponse(v58, type metadata accessor for AMDPbHEResponse);
  (*v52)(v56, v68);

  v60 = *(v0 + 8);
LABEL_22:

  return v60();
}

{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[65];
  v6 = v0[63];
  v7 = v0[64];
  swift_willThrow();

  outlined consume of Data._Representation(v4, v3);
  (*(v7 + 8))(v5, v6);
  v28 = v0[72];
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.networking);
  v9 = v28;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v28;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_224E26000, v10, v11, "Request to uploadKeys has failed: %{public}@", v12, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v13, -1, -1);
    MEMORY[0x22AA61F40](v12, -1, -1);
  }

  v16 = v0[65];
  v17 = v0[62];
  v18 = v10;
  v19 = v0[60];
  v20 = v0[57];
  v21 = v0[54];
  v22 = v0[50];
  v23 = v0[51];
  v26 = v0[49];
  v27 = v0[47];

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[73];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[65];
  v8 = v0[63];
  v9 = v0[64];
  swift_willThrow();

  outlined consume of Data._Representation(v6, v5);
  (*(v9 + 8))(v7, v8);

  v30 = v0[76];
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.networking);
  v11 = v30;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = v30;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_224E26000, v12, v13, "Request to uploadKeys has failed: %{public}@", v14, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v15, -1, -1);
    MEMORY[0x22AA61F40](v14, -1, -1);
  }

  v18 = v0[65];
  v19 = v0[62];
  v20 = v12;
  v21 = v0[60];
  v22 = v0[57];
  v23 = v0[54];
  v24 = v0[50];
  v25 = v0[51];
  v28 = v0[49];
  v29 = v0[47];

  swift_willThrow();

  v26 = v0[1];

  return v26();
}

void closure #1 in AMSNetworking.fetchConfigs(useCases:userId:)(void *a1, const char *a2)
{
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.networking);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224E26000, oslog, v6, a2, v7, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AMSURLResult?, @unowned NSError?) -> () with result type AMSURLResult(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t AMSNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = type metadata accessor for AMDPbHEReplies(0);
  v4[33] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v7 = type metadata accessor for AspireApiConfigResponse(0);
  v4[35] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v9 = type metadata accessor for AMDPbHEConfigsReply(0);
  v4[37] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v12 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v13 = type metadata accessor for AMDPbHEResponse(0);
  v4[44] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo12AMSURLResultCs5Error_pGMd, &_sScCySo12AMSURLResultCs5Error_pGMR);
  v4[48] = v15;
  v16 = *(v15 - 8);
  v4[49] = v16;
  v17 = *(v16 + 64) + 15;
  v4[50] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v4[51] = v18;
  v19 = *(v18 - 8);
  v4[52] = v19;
  v20 = *(v19 + 64) + 15;
  v4[53] = swift_task_alloc();
  v21 = type metadata accessor for URL();
  v4[54] = v21;
  v22 = *(v21 - 8);
  v4[55] = v22;
  v23 = *(v22 + 64) + 15;
  v4[56] = swift_task_alloc();
  v24 = *(type metadata accessor for AspireApiRequest(0) - 8);
  v4[57] = v24;
  v25 = *(v24 + 64) + 15;
  v4[58] = swift_task_alloc();
  v26 = *(type metadata accessor for AMDPbHEQuery(0) - 8);
  v4[59] = v26;
  v27 = *(v26 + 64) + 15;
  v4[60] = swift_task_alloc();
  v28 = type metadata accessor for AMDPbHEQueries(0);
  v4[61] = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  v4[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](AMSNetworking.queries(requests:userId:), 0, 0);
}

uint64_t AMSNetworking.queries(requests:userId:)()
{
  v92 = v0;
  v1 = v0[30];
  specialized AMSNetworking.requestHeaders()();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[59];
    v4 = v0[57];
    v5 = (v0[30] + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v6 = *v5;
    v7 = v5[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v7, 0x65736163657375, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v91 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v9 = v91;
    v10 = *(v4 + 72);
    do
    {
      v11 = v0[60];
      outlined init with copy of AMDPbHEConfigsReply(v5, v0[58], type metadata accessor for AspireApiRequest);
      AspireApiRequest.amd()(v11);
      outlined destroy of AMDPbHEResponse(v0[58], type metadata accessor for AspireApiRequest);
      v91 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
        v9 = v91;
      }

      v14 = v0[60];
      *(v9 + 16) = v13 + 1;
      outlined init with take of AspireApiConfigResponse(v14, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, type metadata accessor for AMDPbHEQuery);
      v5 = (v5 + v10);
      --v2;
    }

    while (v2);
    v22 = v0[61];
    v21 = v0[62];
    *(swift_task_alloc() + 16) = v9;
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEQueries and conformance AMDPbHEQueries, type metadata accessor for AMDPbHEQueries);
    static Message.with(_:)();

    v23 = Message.serializedData(partial:)();
    v0[63] = 0;
    v0[64] = v23;
    v0[65] = v24;
    v42 = v23;
    v43 = v24;
    v44 = v0[32];
    AMSNetworking.constructURL(path:userId:)(0xD000000000000010, 0x80000002250381A0, v0[31], v0[56]);
    v45 = *(v44 + OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
    v47 = v46;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v49 = Data._bridgeToObjectiveC()().super.isa;
    v50 = [v45 requestWithMethod:4 URL:v47 headers:isa parameters:v49];
    v0[66] = v50;

    v0[22] = closure #3 in AMSNetworking.queries(requests:userId:);
    v0[23] = 0;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v0[21] = &block_descriptor_17;
    v51 = _Block_copy(v0 + 18);
    v90 = v50;
    [v50 addErrorBlock_];
    _Block_release(v51);
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v53 = v0[52];
    v52 = v0[53];
    v54 = v0[51];
    v55 = v0[31];
    v56 = type metadata accessor for Logger();
    v0[67] = __swift_project_value_buffer(v56, static Logger.networking);
    (*(v53 + 16))(v52, v55, v54);
    outlined copy of Data._Representation(v42, v43);
    outlined copy of Data._Representation(v42, v43);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v59 = os_log_type_enabled(v57, v58);
    v61 = v0[52];
    v60 = v0[53];
    v62 = v0[51];
    if (!v59)
    {
      outlined consume of Data._Representation(v42, v43);
      outlined consume of Data._Representation(v42, v43);

      (*(v61 + 8))(v60, v62);
      goto LABEL_33;
    }

    aBlock = v58;
    v63 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v91 = v86;
    *v63 = 136380931;
    v64 = UUID.uuidString.getter();
    v66 = v65;
    (*(v61 + 8))(v60, v62);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v91);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2050;
    v68 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v68 != 2)
      {
        outlined consume of Data._Representation(v42, v43);
        v69 = 0;
        goto LABEL_32;
      }

      v71 = *(v42 + 16);
      v70 = *(v42 + 24);
      outlined consume of Data._Representation(v42, v43);
      v69 = v70 - v71;
      if (!__OFSUB__(v70, v71))
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v68)
    {
      outlined consume of Data._Representation(v42, v43);
      v69 = BYTE6(v43);
LABEL_32:
      *(v63 + 14) = v69;
      outlined consume of Data._Representation(v42, v43);
      _os_log_impl(&dword_224E26000, v57, aBlock, "Request to queries-batch has started for userId: '%{private}s', length: %{public}ld", v63, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x22AA61F40](v86, -1, -1);
      MEMORY[0x22AA61F40](v63, -1, -1);

LABEL_33:
      v74 = v0[49];
      v73 = v0[50];
      v75 = v0[48];
      v76 = [*(v0[32] + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) dataTaskPromiseWithRequestPromise_];
      v0[68] = v76;
      v0[2] = v0;
      v0[7] = v0 + 28;
      v0[3] = AMSNetworking.queries(requests:userId:);
      swift_continuation_init();
      v0[17] = v75;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
      type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for AMSURLResult, 0x277CEE6E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      CheckedContinuation.init(continuation:function:)();
      (*(v74 + 32))(boxed_opaque_existential_1, v73, v75);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AMSURLResult?, @unowned NSError?) -> () with result type AMSURLResult;
      v0[13] = &block_descriptor_20;
      [v76 resultWithCompletion_];
      (*(v74 + 8))(boxed_opaque_existential_1, v75);
      v72 = (v0 + 2);

      return MEMORY[0x282200938](v72);
    }

    v72 = outlined consume of Data._Representation(v42, v43);
    LODWORD(v69) = HIDWORD(v42) - v42;
    if (__OFSUB__(HIDWORD(v42), v42))
    {
      __break(1u);
      return MEMORY[0x282200938](v72);
    }

    v69 = v69;
    goto LABEL_32;
  }

  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.networking);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_224E26000, v16, v17, "Request to queries-batch has empty request", v18, 2u);
    MEMORY[0x22AA61F40](v18, -1, -1);
  }

  type metadata accessor for CipherMLError();
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  v19 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v20 = v19;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.networking);
  v26 = v19;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    v31 = v20;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_224E26000, v27, v28, "Request to queries-batch has failed: %{public}@", v29, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v30, -1, -1);
    MEMORY[0x22AA61F40](v29, -1, -1);
  }

  v33 = v0[62];
  v34 = v0[60];
  v35 = v0[58];
  v36 = v0[56];
  v37 = v0[53];
  v38 = v0[50];
  v39 = v0[47];
  v78 = v0[46];
  v79 = v0[45];
  v80 = v0[43];
  v81 = v0[42];
  v82 = v0[41];
  v83 = v0[40];
  v84 = v0[39];
  v85 = v0[38];
  aBlocka = v0[36];
  v89 = v0[34];

  swift_willThrow();

  v40 = v0[1];

  return v40();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 552) = v2;
  if (v2)
  {
    v3 = AMSNetworking.queries(requests:userId:);
  }

  else
  {
    v3 = AMSNetworking.queries(requests:userId:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[63];
  v3 = specialized AMSURLResult.validateSuccessResponse()();
  v4 = v0[68];
  v158 = v0;
  v159 = v2;
  if (v2)
  {
    v5 = v0[66];
    v6 = v0[65];
    v7 = v0[64];
    v8 = v0[62];
    v9 = v0[55];
    v10 = v0[56];
    v11 = v0[54];

    outlined consume of Data._Representation(v7, v6);
    (*(v9 + 8))(v10, v11);
    outlined destroy of AMDPbHEResponse(v8, type metadata accessor for AMDPbHEQueries);

    v12 = v159;
LABEL_27:
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.networking);
    v60 = v12;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138543362;
      v65 = v12;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v66;
      *v64 = v66;
      _os_log_impl(&dword_224E26000, v61, v62, "Request to queries-batch has failed: %{public}@", v63, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v64, -1, -1);
      MEMORY[0x22AA61F40](v63, -1, -1);
    }

    v67 = v158[62];
    v68 = v158[60];
    v69 = v61;
    v70 = v158[58];
    v71 = v158[56];
    v72 = v158[53];
    v73 = v158[50];
    v75 = v158[46];
    v74 = v158[47];
    v134 = v158[45];
    v136 = v158[43];
    v138 = v158[42];
    v140 = v158[41];
    v142 = v158[40];
    v145 = v158[39];
    v147 = v158[38];
    v151 = v158[36];
    v155 = v158[34];

    swift_willThrow();

    v76 = v158[1];
    goto LABEL_32;
  }

  v13 = v0[67];
  v14 = v3;

  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v16, v17))
  {

    v16 = v15;
    goto LABEL_18;
  }

  v18 = v0;
  v19 = swift_slowAlloc();
  *v19 = 134349056;
  v20 = v15;
  v21 = [v15 data];
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = v24;
  v26 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v15 = *(v22 + 16);
      v30 = *(v22 + 24);
      outlined consume of Data._Representation(v22, v25);
      v29 = v30 - v15;
      if (__OFSUB__(v30, v15))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      outlined consume of Data._Representation(v22, v24);
      v29 = 0;
    }

    v15 = v20;
    goto LABEL_16;
  }

  v15 = v20;
  if (v26)
  {
LABEL_12:
    result = outlined consume of Data._Representation(v22, v25);
    LODWORD(v29) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      __break(1u);
      return result;
    }

    v0 = v18;
    v29 = v29;
    goto LABEL_17;
  }

  v27 = v22;
  v28 = BYTE6(v25);
  outlined consume of Data._Representation(v27, v25);
  v29 = v28;
LABEL_16:
  v0 = v18;
LABEL_17:
  *(v19 + 4) = v29;

  _os_log_impl(&dword_224E26000, v16, v17, "Request to queries-batch has finished response, length: %{public}ld", v19, 0xCu);
  MEMORY[0x22AA61F40](v19, -1, -1);
LABEL_18:
  v32 = v0[47];
  v34 = v0[43];
  v33 = v0[44];

  v35 = [v15 data];
  v36 = v15;
  v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v0[24] = v37;
  v0[25] = v39;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v160 = v36;
  v40 = v0[47];
  if (*v40 == 4)
  {
    v41 = v0[41];
    outlined init with copy of AMDPbHEResponse.OneOf_Response?(v40 + *(v0[44] + 28), v41);
    v42 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) != 1)
    {
      outlined init with copy of AMDPbHEResponse.OneOf_Response?(v0[41], v0[40]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v44 = v0[40];
      if (EnumCaseMultiPayload == 2)
      {
        v45 = v0[37];
        outlined init with take of AspireApiConfigResponse(v44, v0[38], type metadata accessor for AMDPbHEConfigsReply);
        lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply);
        v46 = Message.serializedData(partial:)();
        v85 = v0;
        v86 = v0[42];
        v88 = v85[35];
        v87 = v85[36];
        v85[26] = v46;
        v85[27] = v89;
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse);
        Message.init<A>(serializedBytes:extensions:partial:options:)();
        v90 = v85[66];
        v91 = v85[65];
        v92 = v85[64];
        v93 = v85[55];
        v152 = v85[56];
        v156 = v85[62];
        v148 = v85[54];
        v94 = v85[41];
        v95 = v85[38];
        v143 = v85[47];
        v97 = v85[36];
        type metadata accessor for NetworkManagerError(0);
        lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError);
        v12 = swift_allocError();
        outlined init with copy of AMDPbHEConfigsReply(v97, v98, type metadata accessor for AspireApiConfigResponse);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        outlined consume of Data._Representation(v92, v91);
        outlined destroy of AMDPbHEResponse(v97, type metadata accessor for AspireApiConfigResponse);
        outlined destroy of AMDPbHEResponse(v95, type metadata accessor for AMDPbHEConfigsReply);
        (*(v93 + 8))(v152, v148);
        outlined destroy of AMDPbHEResponse(v156, type metadata accessor for AMDPbHEQueries);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
        v99 = v143;
LABEL_26:
        outlined destroy of AMDPbHEResponse(v99, type metadata accessor for AMDPbHEResponse);
        goto LABEL_27;
      }

      outlined destroy of AMDPbHEResponse(v44, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    }

    v48 = v0[66];
    v49 = v0;
    v50 = v0[65];
    v51 = v0[64];
    v52 = v0[62];
    v55 = v0 + 55;
    v53 = v0[55];
    v54 = v55[1];
    v56 = v49[54];
    v57 = v49[47];
    v150 = v52;
    v154 = v49[41];
    type metadata accessor for NetworkManagerError(0);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError);
    v12 = swift_allocError();
    *v58 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined consume of Data._Representation(v51, v50);
    (*(v53 + 8))(v54, v56);
    outlined destroy of AMDPbHEResponse(v150, type metadata accessor for AMDPbHEQueries);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v154, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
LABEL_25:
    v99 = v57;
    goto LABEL_26;
  }

  AMDPbHEResponse.validateSuccessResponse()(v0[45]);
  v47 = v0[45];
  AMDPbHEResponse.validateAPICode(expected:)(3, 1, v0[46]);
  v77 = v0;
  v78 = v0[47];
  v79 = v77[46];
  v80 = v77[44];
  v81 = v77[39];
  outlined destroy of AMDPbHEResponse(v77[45], type metadata accessor for AMDPbHEResponse);
  outlined destroy of AMDPbHEResponse(v79, type metadata accessor for AMDPbHEResponse);
  outlined init with copy of AMDPbHEResponse.OneOf_Response?(v78 + *(v80 + 28), v81);
  v82 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
  v84 = v77[39];
  if (v83 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v77[39], &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    v96 = v77[39];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspireApiConfigResponse(v84, v77[34], type metadata accessor for AMDPbHEReplies);
      goto LABEL_41;
    }

    outlined destroy of AMDPbHEResponse(v84, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v101 = v77[33];
  v100 = v77[34];
  *v100 = MEMORY[0x277D84F90];
  v102 = v100 + *(v101 + 20);
  UnknownStorage.init()();
LABEL_41:
  v104 = v77[33];
  v103 = v77[34];
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReplies and conformance AMDPbHEReplies, type metadata accessor for AMDPbHEReplies);
  LOBYTE(v104) = Message.isInitialized.getter();
  outlined destroy of AMDPbHEResponse(v103, type metadata accessor for AMDPbHEReplies);
  if ((v104 & 1) == 0)
  {
    v112 = v77[67];
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_224E26000, v113, v114, "Response heReplies is not initialized", v115, 2u);
      MEMORY[0x22AA61F40](v115, -1, -1);
    }

    v116 = v77[66];
    v117 = v77[65];
    v118 = v77[64];
    v119 = v77[62];
    v120 = v77[55];
    v121 = v77[56];
    v122 = v77[54];
    v57 = v77[47];

    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    v123 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v124 = v117;
    v12 = v123;
    outlined consume of Data._Representation(v118, v124);
    (*(v120 + 8))(v121, v122);
    outlined destroy of AMDPbHEResponse(v119, type metadata accessor for AMDPbHEQueries);
    goto LABEL_25;
  }

  v105 = v77[47];
  v106 = v77[29];
  type metadata accessor for AspireApiResponses(0);
  *(swift_task_alloc() + 16) = v105;
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses);
  static Message.with(_:)();
  v107 = v77[66];
  v108 = v77;
  v109 = v77[65];
  v110 = v77[64];
  v111 = v77[62];
  v130 = v108[60];
  v131 = v108[58];
  v126 = v108[55];
  v125 = v108[56];
  v127 = v108[54];
  v132 = v108[53];
  v133 = v108[50];
  v128 = v108[47];
  v135 = v108[46];
  v137 = v108[45];
  v139 = v108[43];
  v141 = v108[42];
  v144 = v108[41];
  v146 = v108[40];
  v157 = v108[38];
  v129 = v108[36];
  v149 = v108[39];
  v153 = v108[34];

  outlined consume of Data._Representation(v110, v109);

  (*(v126 + 8))(v125, v127);
  outlined destroy of AMDPbHEResponse(v111, type metadata accessor for AMDPbHEQueries);
  outlined destroy of AMDPbHEResponse(v128, type metadata accessor for AMDPbHEResponse);

  v76 = v108[1];
LABEL_32:

  return v76();
}

{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[64];
  v6 = v0[62];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[54];
  swift_willThrow();

  outlined consume of Data._Representation(v5, v4);
  (*(v8 + 8))(v7, v9);
  outlined destroy of AMDPbHEResponse(v6, type metadata accessor for AMDPbHEQueries);

  v10 = v0[69];
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.networking);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_224E26000, v13, v14, "Request to queries-batch has failed: %{public}@", v15, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v16, -1, -1);
    MEMORY[0x22AA61F40](v15, -1, -1);
  }

  v19 = v0[62];
  v20 = v0[60];
  v21 = v0[58];
  v22 = v0[56];
  v23 = v0[53];
  v24 = v0[50];
  v25 = v13;
  v27 = v0[46];
  v26 = v0[47];
  v30 = v0[45];
  v31 = v0[43];
  v32 = v0[42];
  v33 = v0[41];
  v34 = v0[40];
  v35 = v0[39];
  v36 = v0[38];
  v37 = v0[36];
  v38 = v0[34];

  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t closure #4 in AMSNetworking.queries(requests:userId:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for AMDPbHEReply(0);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspireApiResponse(0);
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for AMDPbHEReplies(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEResponse.OneOf_Response?(a2 + *(v20 + 28), v15);
  v21 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v22 = (*(*(v21 - 8) + 48))(v15, 1, v21);
  v23 = MEMORY[0x277D84F90];
  if (v22 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspireApiConfigResponse(v15, v19, type metadata accessor for AMDPbHEReplies);
      goto LABEL_7;
    }

    outlined destroy of AMDPbHEResponse(v15, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  *v19 = v23;
  v24 = v19 + *(v16 + 20);
  UnknownStorage.init()();
LABEL_7:
  v25 = *v19;

  outlined destroy of AMDPbHEResponse(v19, type metadata accessor for AMDPbHEReplies);
  v26 = *(v25 + 16);
  if (v26)
  {
    v35 = a1;
    v36 = v26;
    v40 = v23;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v28 = 0;
    v29 = v40;
    v30 = v25 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    while (v28 < *(v25 + 16))
    {
      outlined init with copy of AMDPbHEConfigsReply(v30 + *(v38 + 72) * v28, v8, type metadata accessor for AMDPbHEReply);
      AMDPbHEReply.aspire()();
      if (v2)
      {
        outlined destroy of AMDPbHEResponse(v8, type metadata accessor for AMDPbHEReply);
      }

      outlined destroy of AMDPbHEResponse(v8, type metadata accessor for AMDPbHEReply);
      v40 = v29;
      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
        v29 = v40;
      }

      ++v28;
      *(v29 + 16) = v32 + 1;
      result = outlined init with take of AspireApiConfigResponse(v39, v29 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32, type metadata accessor for AspireApiResponse);
      if (v36 == v28)
      {

        a1 = v35;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
LABEL_17:
    v33 = *a1;

    *a1 = v29;
  }

  return result;
}