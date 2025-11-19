uint64_t XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v13 = *(v0 + 48);
  v4 = *(v0 + 112);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v13;
  *(v7 + 64) = v3;

  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n(v0 + 16, v2, 0xD000000000000052, 0x8000000225036D40, v10, v10, v11, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a8;
  *(v8 + 168) = v27;
  *(v8 + 368) = a6;
  *(v8 + 144) = a5;
  *(v8 + 152) = a7;
  *(v8 + 128) = a3;
  *(v8 + 136) = a4;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v10 = type metadata accessor for AspireApiPIRRequest(0);
  *(v8 + 184) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v12 = type metadata accessor for AspireApiEvaluationKey(0);
  *(v8 + 200) = v12;
  v13 = *(v12 - 8);
  *(v8 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v15 = type metadata accessor for AspireApiPIRConfig(0);
  *(v8 + 224) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v17 = *(*(type metadata accessor for SecretKey() - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v18 = *(*(type metadata accessor for BatchPIRClient() - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v20 = type metadata accessor for RequestsManager.PIRContext();
  *(v8 + 296) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v22 = type metadata accessor for AspireApiRequest(0);
  *(v8 + 312) = v22;
  v23 = *(v22 - 8);
  *(v8 + 320) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)()
{
  v0[43] = *(v0[16] + 16);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  v2 = v0[38];
  v3 = v0[15];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v2, v3, 0);
}

{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  }

  else
  {
    v3 = closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 160);
  if (!v1)
  {
    v25 = *(v0 + 296);
    v24 = *(v0 + 304);
    v26 = *(v0 + 280);
    v27 = *(v0 + 224);
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_225022960;
    *(v30 + 32) = v29;
    *(v30 + 40) = v28;
    v31 = v24 + *(v25 + 24);
    v32 = *(v31 + *(v27 + 20));
    v33 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v32 + v33, v26, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v34 = type metadata accessor for AspirePirBatchPirParameters(0);
    LODWORD(v32) = (*(*(v34 - 8) + 48))(v26, 1, v34);
    outlined copy of Data._Representation(v29, v28);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v35 = *(v0 + 360);
    v36 = *(v0 + 304);
    if (v32 == 1)
    {
      v21 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v30, MEMORY[0x277D84F90]);

      if (!v35)
      {
        if (*(v21 + 16))
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }

      goto LABEL_15;
    }

    v45 = *(v0 + 296);
    v46 = *(v0 + 264);
    v47 = *(v0 + 248);
    v48 = *(v0 + 232);
    _s8CipherML13NetworkConfigVWOcTm_1(v36 + *(v45 + 32), v47, type metadata accessor for SecretKey);
    _s8CipherML13NetworkConfigVWOcTm_1(v31, v48, type metadata accessor for AspireApiPIRConfig);
    v49 = (v36 + *(v45 + 28));
    v50 = *v49;
    v51 = v49[1];
    outlined copy of Data._Representation(*v49, v51);
    BatchPIRClient.init(secretKey:config:configID:)(v47, v48, v50, v51, v46);
    if (!v35)
    {
      v52 = *(v0 + 264);
      v23 = BatchPIRClient.constructPIRRequest(with:)(v30);
      goto LABEL_21;
    }

LABEL_13:

    goto LABEL_15;
  }

  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 224);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_225022960;
  *(v9 + 32) = v8;
  *(v9 + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022960;
  *(inited + 32) = v7;
  *(inited + 40) = v1;
  v11 = v2 + *(v3 + 24);
  v12 = *(v11 + *(v5 + 20));
  v13 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v12 + v13, v4, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v14 = type metadata accessor for AspirePirBatchPirParameters(0);
  v15 = (*(*(v14 - 8) + 48))(v4, 1, v14);
  v16 = *(v0 + 360);
  v17 = *(v0 + 304);
  if (v15 != 1)
  {
    v112 = *(v0 + 288);
    v114 = *(v0 + 296);
    v117 = *(v0 + 256);
    v120 = *(v0 + 240);
    v123 = *(v0 + 272);
    v39 = *(v0 + 136);
    v38 = *(v0 + 144);
    v126 = *(v0 + 360);
    swift_setDeallocating();

    outlined copy of Data._Representation(v39, v38);
    outlined destroy of String(inited + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v112, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    _s8CipherML13NetworkConfigVWOcTm_1(v17 + *(v114 + 32), v117, type metadata accessor for SecretKey);
    _s8CipherML13NetworkConfigVWOcTm_1(v11, v120, type metadata accessor for AspireApiPIRConfig);
    v40 = (v17 + *(v114 + 28));
    v41 = *v40;
    v42 = v40[1];
    outlined copy of Data._Representation(*v40, v42);
    BatchPIRClient.init(secretKey:config:configID:)(v117, v120, v41, v42, v123);
    if (!v126)
    {
      v43 = *(v0 + 272);
      v44 = BatchPIRClient.constructPIRRequest(with:)(v9);
      v64 = *(v0 + 304);
      v65 = *(v0 + 272);
      v66 = v44;

      v67 = swift_task_alloc();
      *(v67 + 16) = v64;
      v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)partial apply, v67, v66);

      v23 = outlined destroy of UseCaseGroup(v65, type metadata accessor for BatchPIRClient);
      if (*(v21 + 16))
      {
LABEL_22:
        v72 = *(v0 + 368);
        v73 = *(*(v0 + 320) + 80);
        _s8CipherML13NetworkConfigVWOcTm_1(v21 + ((v73 + 32) & ~v73), *(v0 + 328), type metadata accessor for AspireApiRequest);

        if (v72 != 1)
        {
LABEL_29:
          v98 = *(v0 + 328);
          v99 = *(v0 + 336);
          v100 = *(v0 + 312);
          outlined destroy of UseCaseGroup(*(v0 + 304), type metadata accessor for RequestsManager.PIRContext);
          _s8CipherML12UseCaseGroupVWObTm_0(v98, v99, type metadata accessor for AspireApiRequest);
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);
          v101 = Message.serializedData(partial:)();
          v103 = v102;
          v104 = *(v0 + 328);
          v105 = *(v0 + 304);
          v107 = *(v0 + 280);
          v106 = *(v0 + 288);
          v108 = *(v0 + 272);
          v110 = *(v0 + 264);
          v111 = *(v0 + 256);
          v113 = *(v0 + 248);
          v116 = *(v0 + 240);
          v119 = *(v0 + 232);
          v122 = *(v0 + 216);
          v125 = *(v0 + 192);
          v127 = *(v0 + 176);
          v109 = *(v0 + 112);
          outlined destroy of UseCaseGroup(*(v0 + 336), type metadata accessor for AspireApiRequest);
          *v109 = v101;
          v109[1] = v103;

          v63 = *(v0 + 8);
          goto LABEL_16;
        }

        v74 = *(v0 + 344);
        RequestsManager.generateEvaluationKey(config:pirContext:)(*(v0 + 168), *(v0 + 304), *(v0 + 216));
        v75 = *(v0 + 328);
        v76 = *(v0 + 176);
        v77 = *(*(v0 + 312) + 20);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v75 + v77, v76, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
        v78 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
        v79 = *(v78 - 8);
        v80 = (*(v79 + 48))(v76, 1, v78);
        v81 = *(v0 + 176);
        if (v80 == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 176), &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
        }

        else
        {
          v82 = *(v0 + 176);
          if (!swift_getEnumCaseMultiPayload())
          {
            _s8CipherML12UseCaseGroupVWObTm_0(v81, *(v0 + 192), type metadata accessor for AspireApiPIRRequest);
            goto LABEL_28;
          }

          outlined destroy of UseCaseGroup(v81, type metadata accessor for AspireApiRequest.OneOf_Request);
        }

        v83 = *(v0 + 200);
        v84 = *(v0 + 208);
        v86 = *(v0 + 184);
        v85 = *(v0 + 192);
        *v85 = 0;
        *(v85 + 8) = xmmword_225022910;
        v87 = v85 + v86[6];
        UnknownStorage.init()();
        v88 = v86[7];
        v89 = type metadata accessor for AspirePirEncryptedIndices(0);
        (*(*(v89 - 8) + 56))(v85 + v88, 1, 1, v89);
        v90 = v86[8];
        v91 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
        (*(*(v91 - 8) + 56))(v85 + v90, 1, 1, v91);
        v92 = (v85 + v86[9]);
        *v92 = 0;
        v92[1] = 0;
        (*(v84 + 56))(v85 + v86[10], 1, 1, v83);
LABEL_28:
        v94 = *(v0 + 208);
        v93 = *(v0 + 216);
        v96 = *(v0 + 192);
        v95 = *(v0 + 200);
        v97 = *(*(v0 + 184) + 40);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v96 + v97, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
        _s8CipherML12UseCaseGroupVWObTm_0(v93, v96 + v97, type metadata accessor for AspireApiEvaluationKey);
        (*(v94 + 56))(v96 + v97, 0, 1, v95);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v75 + v77, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
        _s8CipherML12UseCaseGroupVWObTm_0(v96, v75 + v77, type metadata accessor for AspireApiPIRRequest);
        swift_storeEnumTagMultiPayload();
        (*(v79 + 56))(v75 + v77, 0, 1, v78);
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v18 = *(v0 + 288);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);

  outlined copy of Data._Representation(v20, v19);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v21 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v9, inited);
  swift_setDeallocating();
  v22 = *(inited + 16);
  swift_arrayDestroy();

  if (!v16)
  {
    if (*(v21 + 16))
    {
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    v68 = *(v0 + 304);
    v69 = *(v0 + 264);
    v70 = v23;

    v71 = swift_task_alloc();
    *(v71 + 16) = v68;
    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(partial apply for closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:), v71, v70);

    result = outlined destroy of UseCaseGroup(v69, type metadata accessor for BatchPIRClient);
    if (*(v21 + 16))
    {
      goto LABEL_22;
    }

LABEL_31:
    __break(1u);
    return result;
  }

LABEL_15:
  outlined destroy of UseCaseGroup(*(v0 + 304), type metadata accessor for RequestsManager.PIRContext);
  v54 = *(v0 + 328);
  v53 = *(v0 + 336);
  v55 = *(v0 + 304);
  v57 = *(v0 + 280);
  v56 = *(v0 + 288);
  v59 = *(v0 + 264);
  v58 = *(v0 + 272);
  v61 = *(v0 + 248);
  v60 = *(v0 + 256);
  v62 = *(v0 + 240);
  v115 = *(v0 + 232);
  v118 = *(v0 + 216);
  v121 = *(v0 + 192);
  v124 = *(v0 + 176);

  v63 = *(v0 + 8);
LABEL_16:

  return v63();
}

{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  v13 = v0[29];
  v14 = v0[27];
  v15 = v0[24];
  v16 = v0[22];
  v17 = v0[45];

  v11 = v0[1];

  return v11();
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(void *a1, char a2, void *a3, void *a4, void *a5, void *aBlock, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a7;
  v7[2] = a4;
  v7[5] = _Block_copy(aBlock);
  v13 = a3;
  v14 = a1;
  v15 = a4;
  v16 = a5;

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v7[6] = v17;
  v7[7] = v19;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v7[8] = v21;
  v22 = swift_task_alloc();
  v7[9] = v22;
  *v22 = v7;
  v22[1] = @objc closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);

  return XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(v17, v19, a2 & 1, a3, v21, v15, v16);
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 64);
  v9 = *(*v3 + 56);
  v10 = *(*v3 + 48);
  v11 = *(*v3 + 32);
  v12 = *(*v3 + 24);
  v13 = *(*v3 + 16);
  v14 = *v3;

  outlined consume of Data._Representation(v10, v9);
  if (v4)
  {
    v15 = _convertErrorToNSError(_:)();

    v16 = v15;
    v17 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v17 = isa;
    v16 = 0;
    v15 = isa;
  }

  v19 = *(v6 + 40);
  (v19)[2](v19, v17, v16);

  _Block_release(v19);
  v20 = *(v14 + 8);

  return v20();
}

uint64_t XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;

  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n(v0 + 16, v2, 0xD00000000000003DLL, 0x8000000225036DA0, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];

  return RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:)(v4, v3, v5);
}

{
  **(v0 + 16) = vextq_s8(*(v0 + 64), *(v0 + 64), 8uLL);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(int a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v7;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v8;
  v9 = a3;

  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = @objc closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);

  return XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(v7, v8, v9);
}

uint64_t @objc closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 56);
  v9 = *(*v3 + 48);
  v10 = *(*v3 + 40);
  v11 = *(*v3 + 24);
  v12 = *(*v3 + 16);
  v13 = *v3;

  if (v4)
  {
    v14 = _convertErrorToNSError(_:)();

    v15 = v14;
    v16 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v16 = isa;
    v15 = 0;
    v14 = isa;
  }

  v18 = *(v7 + 32);
  (v18)[2](v18, v16, v15);

  _Block_release(v18);
  v19 = *(v13 + 8);

  return v19();
}

uint64_t XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v7 = *(v0 + 32);
  v6 = *(v0 + 48);
  *(v5 + 16) = v1;
  *(v5 + 24) = v7;
  *(v5 + 40) = v6;
  *(v5 + 56) = v4;
  *(v5 + 64) = v3;

  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n(v0 + 16, v2, 0xD000000000000033, 0x8000000225036DE0, v10, v10, v11, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[3];

  return RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:)(v8, v7, v5, v6, v9, v3, v4);
}

{
  **(v0 + 16) = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(void *a1, void *a2, void *a3, void *a4, void *aBlock, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  v11 = a3;
  v12 = a1;
  v13 = a2;
  v14 = a4;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v6[5] = v15;
  v6[6] = v17;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v6[7] = v18;
  v6[8] = v20;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v6[9] = v22;
  v23 = swift_task_alloc();
  v6[10] = v23;
  *v23 = v6;
  v23[1] = @objc closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);

  return XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(v15, v17, v18, v20, a3, v22, v14);
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 64);
  v9 = *(*v3 + 56);
  v10 = *(*v3 + 48);
  v11 = *(*v3 + 40);
  v12 = *(*v3 + 24);
  v13 = *(*v3 + 16);
  v14 = *v3;

  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v11, v10);
  if (v4)
  {
    v15 = _convertErrorToNSError(_:)();

    v16 = v15;
    v17 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v17 = isa;
    v16 = 0;
    v15 = isa;
  }

  v19 = *(v5 + 32);
  (v19)[2](v19, v17, v16);

  _Block_release(v19);
  v20 = *(v14 + 8);

  return v20();
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v10 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v10;
  *(v4 + 40) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000031, 0x8000000225036E20, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), v4);
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.setPIRConfig(_:clientConfig:), 0, 0);
  }

  else
  {
    v9 = *(v4 + 56);

    v10 = *(v8 + 8);

    return v10(a1);
  }
}

uint64_t closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[3];

  return RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:)(v5, v3, v4, v6);
}

{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (v1 + 40);
    do
    {
      v5 = *v3;
      if (*v3 >> 60 == 15)
      {
        [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      }

      else
      {
        v6 = *(v3 - 1);
        outlined copy of Data._Representation(v6, *v3);
        Data._bridgeToObjectiveC()();
        outlined consume of Data?(v6, v5);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = *(v12 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 2;
      --v2;
    }

    while (v2);
    v7 = *(v0 + 72);

    v8 = v12;
  }

  else
  {
    v9 = *(v0 + 72);

    v8 = MEMORY[0x277D84F90];
  }

  **(v0 + 16) = v8;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1)
{
  v3 = *(*v2 + 64);
  v4 = *v2;
  *(v4 + 72) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(void *a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a3;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v5[5] = v12;
  v5[6] = v14;
  v5[7] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)()
{
  v1 = *(v0 + 56);
  v10 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 40) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD000000000000031, 0x8000000225036E20, v7, v8, &closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)partial apply, v4);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);

  outlined consume of Data._Representation(v3, v2);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = *(v0 + 32);
  (v6)[2](v6, isa, 0);

  _Block_release(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v12 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v6 = *(v4 + 24);

    v7 = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  }

  else
  {
    v9 = *(v4 + 56);
    v8 = *(v4 + 64);
    v10 = *(v4 + 24);

    *(v4 + 88) = a1;

    v7 = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:), 0, 0);
}

uint64_t XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v9 = v0[6];
  v8 = v0[7];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000039, 0x8000000225036E60, v8, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:));
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)(void *a1, void *aBlock, uint64_t a3, double a4, double a5)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;

  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = @objc closure #1 in XPCHandler.requestData(by:clientConfig:);

  return XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)(v9, a4, a5);
}

uint64_t XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 64) = a3;
  *(v6 + 72) = v5;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v0[10] = v7;
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v3;

  v8 = v2;
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:);
  v11 = v0[8];
  v10 = v0[9];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000036, 0x8000000225036EA0, v10, v10, v11, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:);
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4, double a5, double a6)
{
  v6[2] = a2;
  v6[3] = a4;
  v6[4] = _Block_copy(aBlock);
  v11 = a1;
  v12 = a2;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v6[5] = v13;
  v6[6] = v15;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = @objc closure #1 in XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:);

  return XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)(v13, v15, v12, a5, a6);
}

uint64_t XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.asyncResponseData(byKeywords:clientConfig:), 0, 0);
}

{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 24);
  v10 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byIndices:clientConfig:), 0, 0);
  }

  else
  {
    v11 = *(v6 + 40);

    v12 = *(v10 + 8);

    return v12(a1, a2);
  }
}

uint64_t XPCHandler.asyncResponseData(byKeywords:clientConfig:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  v8 = v0[3];
  v7 = v0[4];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD00000000000002BLL, 0x8000000225036EE0, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:), v4);
}

uint64_t closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  v3 = v0[5];
  v4 = v0[3];

  return RequestsManager.requestDataWithAsyncResponse(keywords:context:)(v3, v4);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 64);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  v8 = v0[2];
  v7 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD00000000000002BLL, 0x8000000225036EE0, v7, v8, &closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)partial apply, v4);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 24);

  v4 = MEMORY[0x22AA609C0](v2, v1);

  v5 = *(v0 + 32);
  (v5)[2](v5, v4, 0);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v14 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v8 = *(v6 + 24);

    v9 = @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  }

  else
  {
    v11 = *(v6 + 40);
    v10 = *(v6 + 48);
    v12 = *(v6 + 24);

    *(v6 + 72) = a2;
    *(v6 + 80) = a1;

    v9 = @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[4];
  v8 = v0[5];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000038, 0x8000000225036F10, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), v5);
}

uint64_t XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), 0, 0);
  }

  else
  {
    v9 = *(v4 + 48);

    v10 = *(v8 + 8);

    return v10(a1);
  }
}

uint64_t closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

char *closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = v0[4];
    }

    else
    {
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x22AA610B0](v18);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v19;
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = [MEMORY[0x22AA60F70](i v0[4])];
        swift_unknownObjectRelease();
        v8 = *(v19 + 16);
        v7 = *(v19 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        }

        *(v19 + 16) = v8 + 1;
        *(v19 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (v0[4] + 32);
      do
      {
        v10 = [*v9 integerValue];
        v20 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v13;
          v3 = v20;
        }

        *(v3 + 16) = v12 + 1;
        *(v3 + 8 * v12 + 32) = v10;
        ++v9;
        --v2;
      }

      while (v2);
    }
  }

  v0[7] = v3;
  v14 = *(v0[5] + 16);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v16 = v0[6];
  v17 = v0[3];

  return RequestsManager.similarityScores(elements:shardIndices:context:)(v16, v3, v17);
}

uint64_t closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(int a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v5[6] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = v4;

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[2];
  v8 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v4, 0xD000000000000038, 0x8000000225036F10, v8, v9, &closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)partial apply, v5);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = *(v0 + 32);
  (v4)[2](v4, isa, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v13 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v6 = *(v4 + 24);

    v7 = @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  else
  {
    v9 = *(v4 + 48);
    v8 = *(v4 + 56);
    v10 = *(v4 + 40);
    v11 = *(v4 + 24);

    *(v4 + 80) = a1;

    v7 = @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.setPECConfig(_:clientConfig:), 0, 0);
}

uint64_t XPCHandler.setPECConfig(_:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.setPIRConfig(_:clientConfig:);
  v8 = v0[5];
  v7 = v0[6];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD00000000000001DLL, 0x8000000225036F50, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.setPECConfig(_:clientConfig:));
}

uint64_t closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.setPECConfig(_:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.setPECConfig(_:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.setPECConfig(_:clientConfig:);
  v3 = v0[5];
  v4 = v0[3];

  return RequestsManager.setPECConfig(config:context:)(v3, v4);
}

{
  **(v0 + 16) = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.setPECConfig(_:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = @objc closure #1 in XPCHandler.setPECConfig(_:clientConfig:);

  return XPCHandler.setPECConfig(_:clientConfig:)(v7, v8);
}

uint64_t @objc closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 32);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  if (v4)
  {
    v13 = _convertErrorToNSError(_:)();

    v14 = v13;
    v15 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v14 = 0;
    v15 = 0;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v15 = isa;
    v14 = 0;
    v13 = isa;
  }

  v17 = *(v7 + 40);
  (v17)[2](v17, v15, v14);

  _Block_release(v17);
  v18 = *(v12 + 8);

  return v18();
}

uint64_t XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v9 = v0[6];
  v8 = v0[7];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000033, 0x8000000225036F70, v8, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:));
}

uint64_t closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:), 0, 0);
}

char *closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = v0[4];
    }

    else
    {
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x22AA610B0](v18);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v19;
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = [MEMORY[0x22AA60F70](i v0[4])];
        swift_unknownObjectRelease();
        v8 = *(v19 + 16);
        v7 = *(v19 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        }

        *(v19 + 16) = v8 + 1;
        *(v19 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (v0[4] + 32);
      do
      {
        v10 = [*v9 integerValue];
        v20 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v13;
          v3 = v20;
        }

        *(v3 + 16) = v12 + 1;
        *(v3 + 8 * v12 + 32) = v10;
        ++v9;
        --v2;
      }

      while (v2);
    }
  }

  v0[7] = v3;
  v14 = *(v0[5] + 16);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);
  v16 = v0[6];
  v17 = v0[3];

  return RequestsManager.encryptBatch(batchOfElements:shardIndices:context:)(v16, v3, v17);
}

uint64_t closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);
  }

  else
  {
    v10 = v6[7];

    v6[10] = a2;
    v6[11] = a1;
    v9 = closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)()
{
  **(v0 + 16) = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  return (*(v0 + 8))();
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t @objc closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(int a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v7;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v8;
  v9 = a3;

  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = @objc closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);

  return XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(v7, v8, v9);
}

uint64_t @objc closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 56);
  v9 = *(*v3 + 48);
  v10 = *(*v3 + 40);
  v11 = *(*v3 + 24);
  v12 = *(*v3 + 16);
  v13 = *v3;

  if (v4)
  {
    v14 = _convertErrorToNSError(_:)();

    v15 = v14;
    v16 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(a1, a2);
    v16 = isa;
    v15 = 0;
    v14 = isa;
  }

  v18 = *(v7 + 32);
  (v18)[2](v18, v16, v15);

  _Block_release(v18);
  v19 = *(v13 + 8);

  return v19();
}

uint64_t XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), 0, 0);
}

uint64_t XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v11 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v11;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000052, 0x8000000225036FB0, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), v5);
}

uint64_t XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byLatitude:longitude:clientConfig:), 0, 0);
  }

  else
  {
    v9 = *(v4 + 64);

    v10 = *(v8 + 8);

    return v10(a1);
  }
}

uint64_t closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];

  return RequestsManager.encryptDifferentiallyPrivateFakes(batchOfElements:shardIndex:shardCount:pecConfig:context:)(v6, v5, v3, v4, v7);
}

uint64_t closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 80) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(int a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *aBlock, uint64_t a7)
{
  v7[5] = a5;
  v7[6] = a7;
  v7[3] = a3;
  v7[4] = a4;
  v7[2] = a2;
  v7[7] = _Block_copy(aBlock);
  v7[8] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = a5;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v11 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v11;
  *(v5 + 48) = v4;
  v6 = v3;

  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD000000000000052, 0x8000000225036FB0, v8, v9, &closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)partial apply, v5);
}

{
  v1 = *(v0 + 96);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = *(v0 + 56);
  (v5)[2](v5, isa, 0);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  v7 = _convertErrorToNSError(_:)();

  v8 = v0[7];
  (v8)[2](v8, 0, v7);

  _Block_release(v8);
  v9 = v0[1];

  return v9();
}

uint64_t @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v12 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v6 = *(v4 + 48);

    v7 = @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  }

  else
  {
    v9 = *(v4 + 64);
    v8 = *(v4 + 72);
    v10 = *(v4 + 48);

    *(v4 + 96) = a1;

    v7 = @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[4];
  v8 = v0[5];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD00000000000002ELL, 0x8000000225037010, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), v5);
}

uint64_t closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];

  return RequestsManager.decryptBatch(batchOfSimilarityScores:context:)(v4, v3, v5);
}

{
  **(v0 + 16) = *(v0 + 64);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v4[5] = v9;
  v4[6] = v11;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = v4;

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  v9 = v0[2];
  v8 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v4, 0xD00000000000002ELL, 0x8000000225037010, v8, v9, &closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)partial apply, v5);
}

{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);

  outlined consume of Data._Representation(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = *(v0 + 32);
  (v6)[2](v6, isa, 0);

  _Block_release(v6);
  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  outlined consume of Data._Representation(v4, v3);
  v7 = _convertErrorToNSError(_:)();

  v8 = v0[4];
  (v8)[2](v8, 0, v7);

  _Block_release(v8);
  v9 = v0[1];

  return v9();
}

uint64_t @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v9 = @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  }

  else
  {
    v10 = *(v4 + 56);
    *(v4 + 80) = a1;

    v9 = @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[4];
  v8 = v0[5];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000045, 0x8000000225037040, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:), v5);
}

uint64_t XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 32);
  v10 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
  }

  else
  {
    v11 = *(v6 + 48);

    v12 = *(v10 + 8);

    return v12(a1, a2);
  }
}

uint64_t closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

char *closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = v0[4];
    }

    else
    {
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x22AA610B0](v18);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v19;
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = [MEMORY[0x22AA60F70](i v0[4])];
        swift_unknownObjectRelease();
        v8 = *(v19 + 16);
        v7 = *(v19 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        }

        *(v19 + 16) = v8 + 1;
        *(v19 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (v0[4] + 32);
      do
      {
        v10 = [*v9 integerValue];
        v20 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v13;
          v3 = v20;
        }

        *(v3 + 16) = v12 + 1;
        *(v3 + 8 * v12 + 32) = v10;
        ++v9;
        --v2;
      }

      while (v2);
    }
  }

  v0[7] = v3;
  v14 = *(v0[5] + 16);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  v16 = v0[6];
  v17 = v0[3];

  return RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:)(v16, v3, v17);
}

uint64_t closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  else
  {
    v10 = v6[7];

    v6[10] = a2;
    v6[11] = a1;
    v9 = closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 88);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(int a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v5[6] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = v4;

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[2];
  v8 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(v4, 0xD000000000000045, 0x8000000225037040, v8, v9, &closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)partial apply, v5);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 24);

  v4 = MEMORY[0x22AA609C0](v2, v1);

  v5 = *(v0 + 32);
  (v5)[2](v5, v4, 0);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v15 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v8 = *(v6 + 24);

    v9 = @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  else
  {
    v11 = *(v6 + 48);
    v10 = *(v6 + 56);
    v12 = *(v6 + 40);
    v13 = *(v6 + 24);

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;

    v9 = @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t XPCHandler.queryStatus(for:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.queryStatus(for:options:), 0, 0);
}

uint64_t XPCHandler.queryStatus(for:options:)()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = XPCHandler.queryStatus(for:options:);
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(v2, 0xD000000000000019, 0x8000000225037090, v5, v7, v6);
}

uint64_t XPCHandler.queryStatus(for:options:)(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t @objc closure #1 in XPCHandler.queryStatus(for:options:)(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v6 = a1;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.queryStatus(for:options:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.queryStatus(for:options:)()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v2;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in XPCHandler.queryStatus(for:options:);
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(v2, 0xD000000000000019, 0x8000000225037090, v5, v7, v6);
}

{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = _convertErrorToNSError(_:)();

  (v2)[2](v2, 0, v4);
  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t @objc closure #1 in XPCHandler.queryStatus(for:options:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v9 = @objc closure #1 in XPCHandler.queryStatus(for:options:);
  }

  else
  {
    *(v4 + 64) = a1;
    v9 = @objc closure #1 in XPCHandler.queryStatus(for:options:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t XPCHandler.dataVaultDirectory()()
{
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static CacheDirectory.url);
  (*(*(v2 - 8) + 16))(v1, v3, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t @objc closure #1 in XPCHandler.dataVaultDirectory()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.dataVaultDirectory(), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.dataVaultDirectory()()
{
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  __swift_project_value_buffer(v2, static CacheDirectory.url);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  (v1)[2](v1, v4);

  _Block_release(v1);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t XPCHandler.cacheFile(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](XPCHandler.cacheFile(for:), 0, 0);
}

uint64_t XPCHandler.cacheFile(for:)()
{
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v10 = v0[4];
  v11 = v0[10];
  __swift_project_value_buffer(v11, static CacheDirectory.url);
  v0[2] = v6;
  v0[3] = v7;
  (*(v5 + 104))(v3, *MEMORY[0x277CC91D8], v4);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v5 + 8))(v3, v4);
  URL.appendingPathExtension(_:)();
  (*(v2 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t @objc closure #1 in XPCHandler.cacheFile(for:)(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = _Block_copy(a2);
  v2[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[5] = v10;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.cacheFile(for:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.cacheFile(for:)()
{
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[12];
  v16 = v0[13];
  v4 = v0[10];
  v15 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  __swift_project_value_buffer(v5, static CacheDirectory.url);
  v0[2] = v1;
  v0[3] = v2;
  (*(v7 + 104))(v6, *MEMORY[0x277CC91D8], v8);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v7 + 8))(v6, v8);

  URL.appendingPathExtension(_:)();
  v9 = *(v4 + 8);
  v9(v15, v5);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v9(v3, v5);
  (v16)[2](v16, v12);

  _Block_release(v16);

  v13 = v0[1];

  return v13();
}

uint64_t XPCHandler.listUseCaseGroups()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](XPCHandler.listUseCaseGroups(), 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = XPCHandler.listUseCaseGroups();
  v3 = *(v0 + 16);

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(0, 0xD000000000000013, 0x80000002250370B0, v3);
}

uint64_t XPCHandler.listUseCaseGroups()(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t @objc closure #1 in XPCHandler.listUseCaseGroups()(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.listUseCaseGroups(), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.listUseCaseGroups()()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = @objc closure #1 in XPCHandler.listUseCaseGroups();
  v3 = *(v0 + 16);

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(0, 0xD000000000000013, 0x80000002250370B0, v3);
}

{
  v1 = v0[6];
  v2 = v0[2];

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for CMLUseCaseGroup, off_278540FD8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = v0[3];
  (v4)[2](v4, isa, 0);

  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

{
  v1 = v0[5];
  v2 = v0[2];

  v3 = _convertErrorToNSError(_:)();

  v4 = v0[3];
  (v4)[2](v4, 0, v3);

  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t @objc closure #1 in XPCHandler.listUseCaseGroups()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v8 = @objc closure #1 in XPCHandler.listUseCaseGroups();
  }

  else
  {
    *(v4 + 48) = a1;
    v8 = @objc closure #1 in XPCHandler.listUseCaseGroups();
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.configureUseCaseGroup(withName:useCaseGroup:), 0, 0);
}

uint64_t XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  v11 = v0[4];

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(v5, 0, 0xD00000000000002DLL, 0x80000002250370D0, v6, v6, v7, v8);
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  }

  else
  {
    v3 = XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 56);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:), 0, 0);
}

uint64_t closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)()
{
  v1 = *(*(v0 + 48) + 24);
  v2 = MEMORY[0x22AA609C0](0xD000000000000030, 0x8000000225037820);
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  *(v0 + 16) = v9;
  *(v0 + 32) = v10;
  if (!*(v0 + 40))
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_sypSgMd, &_sypSgMR);
LABEL_10:
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    *v7 = 0xD000000000000030;
    v7[1] = 0x8000000225037820;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 80) != 1)
  {
    goto LABEL_10;
  }

  v4 = *(*(v0 + 48) + 16);
  RequestsManager.configureUseCaseGroup(name:group:)(*(v0 + 56), *(v0 + 72));
  if (!v5)
  {
    v6 = *(v0 + 8);
    goto LABEL_12;
  }

LABEL_11:
  v6 = *(v0 + 8);
LABEL_12:

  return v6();
}

uint64_t @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[6] = v6;
  v7 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v10 = *(v0 + 16);

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(v4, 0, 0xD00000000000002DLL, 0x80000002250370D0, v7, v7, v5, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);

  v6 = _convertErrorToNSError(_:)();
  (*(v3 + 16))(v3, v6);

  _Block_release(*(v0 + 32));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v10;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTQ1_;
  v10 = v0[32];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)((v0 + 24), v12, v13, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTQ1_()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 296) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY3_()
{
  v1 = *(v0 + 296);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY6_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY7_()
{
  v49 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v48);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[27];
  if (v15)
  {
    v16 = [v0[27] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[36];
  v47 = v0[31];
  v46 = v0[30];
  v26 = v0[28];
  v25 = v0[29];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v26, v25);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_831;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_838;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t partial apply for closure #1 in XPCHandler.requestData(byIndices:clientConfig:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v10;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTQ1_;
  v10 = v0[32];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)((v0 + 24), v12, v13, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTQ1_()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY6_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY7_()
{
  v49 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v48);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[27];
  if (v15)
  {
    v16 = [v0[27] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[36];
  v47 = v0[31];
  v46 = v0[30];
  v26 = v0[28];
  v25 = v0[29];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v26, v25);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_662;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_669;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[30] = v10;
  v8[27] = a6;
  v8[28] = a7;
  v8[25] = a3;
  v8[26] = a4;
  v8[24] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  v0[31] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[32] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTQ1_;
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[28];

  return specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)(v9, v12, v13, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTQ1_()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 272) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY3_()
{
  v1 = *(v0 + 272);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY4_()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = [v1 useCase];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  v6 = v0[27];
  v7 = v0[28];
  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v3, v5, v0[25], v0[26]);

  v8 = v0[1];

  return v8();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 280) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY6_()
{
  v1 = *(v0 + 280);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY7_()
{
  v49 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[26];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[33];
    v9 = v0[25];
    v8 = v0[26];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v48);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[24];
  if (v15)
  {
    v16 = [v0[24] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[33];
  v47 = v0[28];
  v46 = v0[27];
  v26 = v0[25];
  v25 = v0[26];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v26, v25);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_773;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_780;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[30] = v10;
  v8[27] = a6;
  v8[28] = a7;
  v8[25] = a3;
  v8[26] = a4;
  v8[24] = a2;
  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

uint64_t specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  v0[31] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[32] = v9;
  *v9 = v0;
  v9[1] = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[28];

  return closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(v9, v12, v13, v10, v11);
}

{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 272) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v1, 0);
}

{
  v1 = *(v0 + 272);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

{
  v1 = v0[24];
  if (v1)
  {
    v2 = [v1 useCase];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[27];
  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v3, v5, v0[25], v0[26]);

  v9 = v0[1];

  return v9();
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 280) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v1, 0);
}

{
  v1 = *(v0 + 280);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

{
  v50 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[26];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[33];
    v9 = v0[25];
    v8 = v0[26];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v49 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v49);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[24];
  if (v15)
  {
    v16 = [v0[24] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[33];
  v47 = v0[29];
  v48 = v0[30];
  v25 = v0[26];
  v46 = v0[27];
  v26 = v0[25];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v26, v25);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = _s8CipherML9TelemetryO19reportErrorToServer7useCase10identifier6method5errorySS_SSSgSSs0E0_ptFZSDySSSo8NSObjectCGSgycfU_TA_0;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_1;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = partial apply for closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:);
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_579;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

{
  v15 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v14);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = *(v0[30] + 16);
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  v12 = v0[31];
  v11 = v0[32];

  return RequestsManager.queryStatus(for:options:)(v12, v11);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 288) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v1, 0);
}

{
  v1 = *(v0 + 288);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY4_, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 296) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v1, 0);
}

{
  v1 = *(v0 + 296);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

{
  v47 = v0;
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[29];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[35];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[27];
  if (v15)
  {
    v16 = [v0[27] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[35];
  v25 = v0[28];
  v26 = v0[29];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v26);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_604;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_611;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

{
  v13 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  v0[28] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v12);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = *(v0[27] + 16);
  v0[29] = RequestsManager.listUseCaseGroups()();
  v0[30] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static WorkAroundForIdleMemory.shared;
  v0[31] = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v10, 0);
}

{
  v1 = *(v0 + 248);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

{
  v1 = v0[24];
  if (v1)
  {
    v2 = [v1 useCase];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v3, v5, v0[25], v0[26]);

  v6 = v0[1];
  v7 = v0[29];

  return v6(v7);
}

{
  v1 = *(v0 + 256);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

{
  v47 = v0;
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[26];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[30];
    v9 = v0[25];
    v8 = v0[26];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[24];
  if (v15)
  {
    v16 = [v0[24] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[30];
  v25 = v0[25];
  v26 = v0[26];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v26);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_589;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_596;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v10;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTQ1_;
  v10 = v0[32];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)((v0 + 24), v12, v13, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTQ1_()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY6_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY7_()
{
  v49 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v48);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[27];
  if (v15)
  {
    v16 = [v0[27] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[36];
  v47 = v0[31];
  v46 = v0[30];
  v26 = v0[28];
  v25 = v0[29];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v26, v25);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_753;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_760;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v10;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTQ1_;
  v10 = v0[32];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)((v0 + 24), v12, v13, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTQ1_()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v3 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 296) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY3_()
{
  v1 = *(v0 + 296);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY4_()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  if (v1)
  {
    v4 = [v1 useCase];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE400000000000000;
    v5 = 1701736270;
  }

  v8 = v0[30];
  v9 = v0[31];
  v10 = v0[26];
  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v5, v7, v0[28], v0[29]);

  *v10 = v2;
  v10[1] = v3;

  v11 = v0[1];

  return v11();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY6_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY7_()
{
  v49 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v48);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[27];
  if (v15)
  {
    v16 = [v0[27] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[36];
  v47 = v0[31];
  v46 = v0[30];
  v26 = v0[28];
  v25 = v0[29];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v26, v25);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_682;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_689;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[35] = a4;
  v5[36] = a5;
  v5[33] = a2;
  v5[34] = a3;
  v5[32] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v5[37] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v9 = type metadata accessor for UseCaseGroup();
  v5[40] = v9;
  v10 = *(v9 - 8);
  v5[41] = v10;
  v11 = *(v10 + 64) + 15;
  v5[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:), 0, 0);
}

{
  v5[35] = a4;
  v5[36] = a5;
  v5[33] = a2;
  v5[34] = a3;
  v5[32] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v5[37] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v9 = type metadata accessor for UseCaseGroup();
  v5[40] = v9;
  v10 = *(v9 - 8);
  v5[41] = v10;
  v11 = *(v10 + 64) + 15;
  v5[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:), 0, 0);
}

uint64_t specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)()
{
  v55 = v0;
  v1 = *(v0 + 272);
  v2 = *(*(*(v0 + 264) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(v8 + 56) + (v9 << 6);
  v12 = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  *(v0 + 57) = *(v11 + 41);
  *(v0 + 32) = v13;
  *(v0 + 48) = v14;
  *(v0 + 16) = v12;
  v15 = *v11;
  v16 = *(v11 + 16);
  v17 = *(v11 + 32);
  *(v0 + 192) = *(v11 + 48);
  *(v0 + 160) = v16;
  *(v0 + 176) = v17;
  *(v0 + 144) = v15;
  if ((*(v0 + 72) & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v54);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 312);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v54);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 336);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);

      v35 = *(v0 + 8);

      return v35();
    }

    goto LABEL_14;
  }

  v37 = *(v0 + 336);
  v38 = *(v0 + 312);
  v39 = *(v0 + 320);
  v41 = *(v0 + 296);
  v40 = *(v0 + 304);
  v43 = *(v0 + 272);
  v42 = *(v0 + 280);

  _s8CipherML12UseCaseGroupVWObTm_0(v38, v37, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v37 + *(v39 + 36), v40 + *(v41 + 32), type metadata accessor for NetworkConfig);
  v45 = *(v0 + 160);
  v44 = *(v0 + 176);
  v46 = *(v0 + 192);
  *(v40 + 8) = *(v0 + 144);
  *(v40 + 56) = v46;
  *(v40 + 40) = v44;
  *(v40 + 24) = v45;
  *v40 = v43;
  v47 = v43;
  v53 = (v42 + *v42);
  v48 = v42[1];
  v49 = swift_task_alloc();
  *(v0 + 352) = v49;
  *v49 = v0;
  v49[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v50 = *(v0 + 304);
  v51 = *(v0 + 288);
  v52 = *(v0 + 256);

  return v53(v52, v50);
}

{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v54 = v0;
  v1 = *(v0 + 272);
  v2 = *(*(*(v0 + 264) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(v8 + 56) + (v9 << 6);
  v12 = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  *(v0 + 57) = *(v11 + 41);
  *(v0 + 32) = v13;
  *(v0 + 48) = v14;
  *(v0 + 16) = v12;
  v15 = *v11;
  v16 = *(v11 + 16);
  v17 = *(v11 + 32);
  *(v0 + 192) = *(v11 + 48);
  *(v0 + 160) = v16;
  *(v0 + 176) = v17;
  *(v0 + 144) = v15;
  if ((*(v0 + 72) & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v53);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 312);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v53);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 336);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);

      v35 = *(v0 + 8);

      return v35();
    }

    goto LABEL_14;
  }

  v37 = *(v0 + 336);
  v38 = *(v0 + 312);
  v39 = *(v0 + 320);
  v41 = *(v0 + 296);
  v40 = *(v0 + 304);
  v43 = *(v0 + 272);
  v42 = *(v0 + 280);

  _s8CipherML12UseCaseGroupVWObTm_0(v38, v37, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v37 + *(v39 + 36), v40 + *(v41 + 32), type metadata accessor for NetworkConfig);
  v45 = *(v0 + 160);
  v44 = *(v0 + 176);
  v46 = *(v0 + 192);
  *(v40 + 8) = *(v0 + 144);
  *(v40 + 56) = v46;
  *(v40 + 40) = v44;
  *(v40 + 24) = v45;
  *v40 = v43;
  v47 = v43;
  v52 = (v42 + *v42);
  v48 = v42[1];
  v49 = swift_task_alloc();
  *(v0 + 352) = v49;
  *v49 = v0;
  v49[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v50 = *(v0 + 304);
  v51 = *(v0 + 288);

  return v52(v0 + 256, v50);
}

{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[38];
  v3 = v0[39];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);
  v5 = v0[32];

  v6 = v0[1];

  return v6(v5);
}

{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[38];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);
  v4 = v0[45];
  v5 = v0[42];
  v7 = v0[38];
  v6 = v0[39];

  v8 = v0[1];

  return v8();
}

{
  v54 = v0;
  v1 = *(v0 + 272);
  v2 = *(*(*(v0 + 264) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(v8 + 56) + (v9 << 6);
  v12 = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  *(v0 + 57) = *(v11 + 41);
  *(v0 + 32) = v13;
  *(v0 + 48) = v14;
  *(v0 + 16) = v12;
  v15 = *v11;
  v16 = *(v11 + 16);
  v17 = *(v11 + 32);
  *(v0 + 192) = *(v11 + 48);
  *(v0 + 160) = v16;
  *(v0 + 176) = v17;
  *(v0 + 144) = v15;
  if ((*(v0 + 72) & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v53);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 312);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v53);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 336);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);

      v35 = *(v0 + 8);

      return v35();
    }

    goto LABEL_14;
  }

  v37 = *(v0 + 336);
  v38 = *(v0 + 312);
  v39 = *(v0 + 320);
  v41 = *(v0 + 296);
  v40 = *(v0 + 304);
  v43 = *(v0 + 272);
  v42 = *(v0 + 280);

  _s8CipherML12UseCaseGroupVWObTm_0(v38, v37, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v37 + *(v39 + 36), v40 + *(v41 + 32), type metadata accessor for NetworkConfig);
  v45 = *(v0 + 160);
  v44 = *(v0 + 176);
  v46 = *(v0 + 192);
  *(v40 + 8) = *(v0 + 144);
  *(v40 + 56) = v46;
  *(v40 + 40) = v44;
  *(v40 + 24) = v45;
  *v40 = v43;
  v47 = v43;
  v52 = (v42 + *v42);
  v48 = v42[1];
  v49 = swift_task_alloc();
  *(v0 + 352) = v49;
  *v49 = v0;
  v49[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v50 = *(v0 + 304);
  v51 = *(v0 + 288);

  return v52(v0 + 256, v50);
}

{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v55 = v0;
  v1 = *(v0 + 272);
  v2 = *(*(*(v0 + 264) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(v8 + 56) + (v9 << 6);
  v12 = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  *(v0 + 57) = *(v11 + 41);
  *(v0 + 32) = v13;
  *(v0 + 48) = v14;
  *(v0 + 16) = v12;
  v15 = *v11;
  v16 = *(v11 + 16);
  v17 = *(v11 + 32);
  *(v0 + 192) = *(v11 + 48);
  *(v0 + 160) = v16;
  *(v0 + 176) = v17;
  *(v0 + 144) = v15;
  if ((*(v0 + 72) & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v54);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 312);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v54);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 336);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);

      v35 = *(v0 + 8);

      return v35();
    }

    goto LABEL_14;
  }

  v37 = *(v0 + 336);
  v38 = *(v0 + 312);
  v39 = *(v0 + 320);
  v41 = *(v0 + 296);
  v40 = *(v0 + 304);
  v43 = *(v0 + 272);
  v42 = *(v0 + 280);

  _s8CipherML12UseCaseGroupVWObTm_0(v38, v37, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v37 + *(v39 + 36), v40 + *(v41 + 32), type metadata accessor for NetworkConfig);
  v45 = *(v0 + 160);
  v44 = *(v0 + 176);
  v46 = *(v0 + 192);
  *(v40 + 8) = *(v0 + 144);
  *(v40 + 56) = v46;
  *(v40 + 40) = v44;
  *(v40 + 24) = v45;
  *v40 = v43;
  v47 = v43;
  v53 = (v42 + *v42);
  v48 = v42[1];
  v49 = swift_task_alloc();
  *(v0 + 352) = v49;
  *v49 = v0;
  v49[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v50 = *(v0 + 304);
  v51 = *(v0 + 288);
  v52 = *(v0 + 256);

  return v53(v52, v50);
}

{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[38];
  v3 = v0[39];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);

  v5 = v0[1];

  return v5();
}

{
  v54 = v0;
  v1 = *(v0 + 280);
  v2 = *(*(*(v0 + 272) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 352) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(v8 + 56) + (v9 << 6);
  v12 = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  *(v0 + 57) = *(v11 + 41);
  *(v0 + 32) = v13;
  *(v0 + 48) = v14;
  *(v0 + 16) = v12;
  v15 = *v11;
  v16 = *(v11 + 16);
  v17 = *(v11 + 32);
  *(v0 + 192) = *(v11 + 48);
  *(v0 + 160) = v16;
  *(v0 + 176) = v17;
  *(v0 + 144) = v15;
  if ((*(v0 + 72) & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v53);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 328);
  v19 = *(v0 + 336);
  v20 = *(v0 + 320);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 320);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v53);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 344);
      v34 = *(v0 + 312);
      v33 = *(v0 + 320);

      v35 = *(v0 + 8);

      return v35();
    }

    goto LABEL_14;
  }

  v37 = *(v0 + 344);
  v38 = *(v0 + 320);
  v39 = *(v0 + 328);
  v41 = *(v0 + 304);
  v40 = *(v0 + 312);
  v43 = *(v0 + 280);
  v42 = *(v0 + 288);

  _s8CipherML12UseCaseGroupVWObTm_0(v38, v37, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v37 + *(v39 + 36), v40 + *(v41 + 32), type metadata accessor for NetworkConfig);
  v45 = *(v0 + 160);
  v44 = *(v0 + 176);
  v46 = *(v0 + 192);
  *(v40 + 8) = *(v0 + 144);
  *(v40 + 56) = v46;
  *(v40 + 40) = v44;
  *(v40 + 24) = v45;
  *v40 = v43;
  v47 = v43;
  v52 = (v42 + *v42);
  v48 = v42[1];
  v49 = swift_task_alloc();
  *(v0 + 360) = v49;
  *v49 = v0;
  v49[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v50 = *(v0 + 312);
  v51 = *(v0 + 296);

  return v52(v0 + 256, v50);
}

{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[39];
  v3 = v0[40];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);
  v5 = v0[32];
  v6 = v0[33];

  v7 = v0[1];

  return v7(v5, v6);
}

{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[39];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);
  v4 = v0[46];
  v5 = v0[43];
  v7 = v0[39];
  v6 = v0[40];

  v8 = v0[1];

  return v8();
}

uint64_t specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a3;
  v4[36] = a4;
  v4[33] = a1;
  v4[34] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v4[37] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v8 = type metadata accessor for UseCaseGroup();
  v4[40] = v8;
  v9 = *(v8 - 8);
  v4[41] = v9;
  v10 = *(v9 + 64) + 15;
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:), 0, 0);
}

{
  v4[35] = a3;
  v4[36] = a4;
  v4[33] = a1;
  v4[34] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v4[37] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v8 = type metadata accessor for UseCaseGroup();
  v4[40] = v8;
  v9 = *(v8 - 8);
  v4[41] = v9;
  v10 = *(v9 + 64) + 15;
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:), 0, 0);
}

{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v4[38] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v8 = type metadata accessor for UseCaseGroup();
  v4[41] = v8;
  v9 = *(v8 - 8);
  v4[42] = v9;
  v10 = *(v9 + 64) + 15;
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:), 0, 0);
}

uint64_t specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for UseCaseGroup();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:), 0, 0);
}

{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for UseCaseGroup();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:), 0, 0);
}

{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = type metadata accessor for UseCaseGroup();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:), 0, 0);
}

uint64_t specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)()
{
  v49 = v0;
  v1 = v0[4];
  v2 = *(*(v0[3] + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v0[13] = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), (*(v11 + 56) & 1) != 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48[0] = v16;
      *v15 = 136446210;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v15 + 4) = v17;
      v18 = "Unknown/Invalid PEC use-case '%{public}s'";
LABEL_8:
      _os_log_impl(&dword_224E26000, v13, v14, v18, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA61F40](v16, -1, -1);
      MEMORY[0x22AA61F40](v15, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v26 = v0[12];
      v27 = v0[8];
      v28 = v0[9];

      v29 = v0[1];

      return v29();
    }

    goto LABEL_14;
  }

  v45 = *(v11 + 16);
  v46 = *v11;
  v19 = *(v11 + 32);
  v20 = *(v11 + 40);
  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[9];
  AllowList.group(useCase:)(v5, v7, v23);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[9], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48[0] = v16;
      *v15 = 136446210;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v15 + 4) = v25;
      v18 = "No group found for use-case '%{public}s'";
      goto LABEL_8;
    }

LABEL_14:

    goto LABEL_15;
  }

  v31 = v0[12];
  v32 = v0[9];
  v33 = v0[10];
  v35 = v0[7];
  v34 = v0[8];
  v44 = v20;
  v36 = v19;
  v38 = v0[4];
  v37 = v0[5];

  _s8CipherML12UseCaseGroupVWObTm_0(v32, v31, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v31 + *(v33 + 36), v34 + *(v35 + 32), type metadata accessor for NetworkConfig);
  *(v34 + 24) = v45;
  *(v34 + 8) = v46;
  *(v34 + 40) = v36;
  *(v34 + 48) = v44 & 1;
  *v34 = v38;
  v39 = v38;
  v47 = (v37 + *v37);
  v40 = v37[1];
  v41 = swift_task_alloc();
  v0[14] = v41;
  *v41 = v0;
  v41[1] = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  v42 = v0[8];
  v43 = v0[6];

  return (v47)(v0 + 2, v42);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v50 = v0;
  v1 = v0[4];
  v2 = *(*(v0[3] + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v0[13] = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), (*(v11 + 56) & 1) != 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49[0] = v16;
      *v15 = 136446210;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v49);

      *(v15 + 4) = v17;
      v18 = "Unknown/Invalid PEC use-case '%{public}s'";
LABEL_8:
      _os_log_impl(&dword_224E26000, v13, v14, v18, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA61F40](v16, -1, -1);
      MEMORY[0x22AA61F40](v15, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v26 = v0[12];
      v27 = v0[8];
      v28 = v0[9];

      v29 = v0[1];

      return v29();
    }

    goto LABEL_14;
  }

  v46 = *(v11 + 16);
  v47 = *v11;
  v19 = *(v11 + 32);
  v20 = *(v11 + 40);
  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[9];
  AllowList.group(useCase:)(v5, v7, v23);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[9], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49[0] = v16;
      *v15 = 136446210;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v49);

      *(v15 + 4) = v25;
      v18 = "No group found for use-case '%{public}s'";
      goto LABEL_8;
    }

LABEL_14:

    goto LABEL_15;
  }

  v31 = v0[12];
  v32 = v0[9];
  v33 = v0[10];
  v35 = v0[7];
  v34 = v0[8];
  v45 = v20;
  v36 = v19;
  v38 = v0[4];
  v37 = v0[5];

  _s8CipherML12UseCaseGroupVWObTm_0(v32, v31, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v31 + *(v33 + 36), v34 + *(v35 + 32), type metadata accessor for NetworkConfig);
  *(v34 + 24) = v46;
  *(v34 + 8) = v47;
  *(v34 + 40) = v36;
  *(v34 + 48) = v45 & 1;
  *v34 = v38;
  v39 = v38;
  v48 = (v37 + *v37);
  v40 = v37[1];
  v41 = swift_task_alloc();
  v0[14] = v41;
  *v41 = v0;
  v41[1] = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  v42 = v0[8];
  v43 = v0[6];
  v44 = v0[2];

  return v48(v44, v42);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);

  v5 = v0[1];

  return v5();
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);
  v4 = v0[15];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];

  v8 = v0[1];

  return v8();
}

{
  v50 = v0;
  v1 = v0[4];
  v2 = *(*(v0[3] + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v0[13] = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), (*(v11 + 56) & 1) != 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49[0] = v16;
      *v15 = 136446210;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v49);

      *(v15 + 4) = v17;
      v18 = "Unknown/Invalid PEC use-case '%{public}s'";
LABEL_8:
      _os_log_impl(&dword_224E26000, v13, v14, v18, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA61F40](v16, -1, -1);
      MEMORY[0x22AA61F40](v15, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v26 = v0[12];
      v27 = v0[8];
      v28 = v0[9];

      v29 = v0[1];

      return v29();
    }

    goto LABEL_14;
  }

  v46 = *(v11 + 16);
  v47 = *v11;
  v19 = *(v11 + 32);
  v20 = *(v11 + 40);
  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[9];
  AllowList.group(useCase:)(v5, v7, v23);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[9], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49[0] = v16;
      *v15 = 136446210;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v49);

      *(v15 + 4) = v25;
      v18 = "No group found for use-case '%{public}s'";
      goto LABEL_8;
    }

LABEL_14:

    goto LABEL_15;
  }

  v31 = v0[12];
  v32 = v0[9];
  v33 = v0[10];
  v35 = v0[7];
  v34 = v0[8];
  v45 = v20;
  v36 = v19;
  v38 = v0[4];
  v37 = v0[5];

  _s8CipherML12UseCaseGroupVWObTm_0(v32, v31, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v31 + *(v33 + 36), v34 + *(v35 + 32), type metadata accessor for NetworkConfig);
  *(v34 + 24) = v46;
  *(v34 + 8) = v47;
  *(v34 + 40) = v36;
  *(v34 + 48) = v45 & 1;
  *v34 = v38;
  v39 = v38;
  v48 = (v37 + *v37);
  v40 = v37[1];
  v41 = swift_task_alloc();
  v0[14] = v41;
  *v41 = v0;
  v41[1] = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  v42 = v0[8];
  v43 = v0[6];
  v44 = v0[2];

  return v48(v44, v42);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v49 = v0;
  v1 = v0[4];
  v2 = *(*(v0[3] + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v0[13] = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), (*(v11 + 56) & 1) != 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48[0] = v16;
      *v15 = 136446210;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v15 + 4) = v17;
      v18 = "Unknown/Invalid PEC use-case '%{public}s'";
LABEL_8:
      _os_log_impl(&dword_224E26000, v13, v14, v18, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA61F40](v16, -1, -1);
      MEMORY[0x22AA61F40](v15, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v26 = v0[12];
      v27 = v0[8];
      v28 = v0[9];

      v29 = v0[1];

      return v29();
    }

    goto LABEL_14;
  }

  v45 = *(v11 + 16);
  v46 = *v11;
  v19 = *(v11 + 32);
  v20 = *(v11 + 40);
  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[9];
  AllowList.group(useCase:)(v5, v7, v23);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[9], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48[0] = v16;
      *v15 = 136446210;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v15 + 4) = v25;
      v18 = "No group found for use-case '%{public}s'";
      goto LABEL_8;
    }

LABEL_14:

    goto LABEL_15;
  }

  v31 = v0[12];
  v32 = v0[9];
  v33 = v0[10];
  v35 = v0[7];
  v34 = v0[8];
  v44 = v20;
  v36 = v19;
  v38 = v0[4];
  v37 = v0[5];

  _s8CipherML12UseCaseGroupVWObTm_0(v32, v31, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v31 + *(v33 + 36), v34 + *(v35 + 32), type metadata accessor for NetworkConfig);
  *(v34 + 24) = v45;
  *(v34 + 8) = v46;
  *(v34 + 40) = v36;
  *(v34 + 48) = v44 & 1;
  *v34 = v38;
  v39 = v38;
  v47 = (v37 + *v37);
  v40 = v37[1];
  v41 = swift_task_alloc();
  v0[14] = v41;
  *v41 = v0;
  v41[1] = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  v42 = v0[8];
  v43 = v0[6];

  return (v47)(v0 + 2, v42);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);
  v5 = v0[2];

  v6 = v0[1];

  return v6(v5);
}

{
  v49 = v0;
  v1 = v0[5];
  v2 = *(*(v0[4] + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v0[14] = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), (*(v11 + 56) & 1) != 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48[0] = v16;
      *v15 = 136446210;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v15 + 4) = v17;
      v18 = "Unknown/Invalid PEC use-case '%{public}s'";
LABEL_8:
      _os_log_impl(&dword_224E26000, v13, v14, v18, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA61F40](v16, -1, -1);
      MEMORY[0x22AA61F40](v15, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v26 = v0[13];
      v27 = v0[9];
      v28 = v0[10];

      v29 = v0[1];

      return v29();
    }

    goto LABEL_14;
  }

  v45 = *(v11 + 16);
  v46 = *v11;
  v19 = *(v11 + 32);
  v20 = *(v11 + 40);
  v21 = v0[11];
  v22 = v0[12];
  v23 = v0[10];
  AllowList.group(useCase:)(v5, v7, v23);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48[0] = v16;
      *v15 = 136446210;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v15 + 4) = v25;
      v18 = "No group found for use-case '%{public}s'";
      goto LABEL_8;
    }

LABEL_14:

    goto LABEL_15;
  }

  v31 = v0[13];
  v32 = v0[10];
  v33 = v0[11];
  v35 = v0[8];
  v34 = v0[9];
  v44 = v20;
  v36 = v19;
  v38 = v0[5];
  v37 = v0[6];

  _s8CipherML12UseCaseGroupVWObTm_0(v32, v31, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v31 + *(v33 + 36), v34 + *(v35 + 32), type metadata accessor for NetworkConfig);
  *(v34 + 24) = v45;
  *(v34 + 8) = v46;
  *(v34 + 40) = v36;
  *(v34 + 48) = v44 & 1;
  *v34 = v38;
  v39 = v38;
  v47 = (v37 + *v37);
  v40 = v37[1];
  v41 = swift_task_alloc();
  v0[15] = v41;
  *v41 = v0;
  v41[1] = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  v42 = v0[9];
  v43 = v0[7];

  return (v47)(v0 + 2, v42);
}

{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v3 = specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);
  v5 = v0[2];
  v6 = v0[3];

  v7 = v0[1];

  return v7(v5, v6);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  outlined destroy of UseCaseGroup(v2, type metadata accessor for UseCaseGroup);
  v4 = v0[16];
  v5 = v0[13];
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for UseCaseGroup();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:), 0, 0);
}

{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for UseCaseGroup();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:), 0, 0);
}

uint64_t XPCHandler.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t XPCHandler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a3, v25 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);

    return v23;
  }

LABEL_8:
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_;
  v10 = v0[32];
  v11 = v0[33];
  v13 = v0[30];
  v12 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)(v13, v12, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[24] = v2;
  v4[25] = a1;
  v4[26] = v1;
  v5 = v3[35];
  v8 = *v2;
  v4[36] = v1;

  if (v1)
  {
    v6 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_;
  }

  else
  {
    v6 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 296) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY3_()
{
  v1 = *(v0 + 296);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_()
{
  v47 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[27];
  if (v15)
  {
    v16 = [v0[27] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[36];
  v25 = v0[28];
  v26 = v0[29];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v26);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_813;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_820;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t partial apply for closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(a1, a2, v6, v7, v8);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_;
  v10 = v0[32];
  v11 = v0[33];
  v13 = v0[30];
  v12 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)(v13, v12, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[24] = v2;
  v4[25] = a1;
  v4[26] = v1;
  v5 = v3[35];
  v8 = *v2;
  v4[36] = v1;

  if (v1)
  {
    v6 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_;
  }

  else
  {
    v6 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_()
{
  v47 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[27];
  if (v15)
  {
    v16 = [v0[27] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[36];
  v25 = v0[28];
  v26 = v0[29];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v26);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_793;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_800;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t partial apply for closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:)();
}

uint64_t partial apply for closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t partial apply for closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t partial apply for closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t partial apply for closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t partial apply for closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *(v2 + 64);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t partial apply for closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t partial apply for closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(a1, a2, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t partial apply for closure #1 in XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t partial apply for closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(a1, a2, v7, v6);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = type metadata accessor for Logger();
  v0[35] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_;
  v10 = v0[33];
  v11 = v0[34];
  v13 = v0[31];
  v12 = v0[32];

  return specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)(v13, v12, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[24] = v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;
  v6 = v4[36];
  v9 = *v3;
  v5[37] = v2;

  if (v2)
  {
    v7 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_;
  }

  else
  {
    v7 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY3_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 312) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_()
{
  v1 = *(v0 + 312);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_()
{
  v47 = v0;
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[30];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[37];
    v9 = v0[29];
    v8 = v0[30];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[28];
  if (v15)
  {
    v16 = [v0[28] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[37];
  v25 = v0[29];
  v26 = v0[30];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v26);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_722;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_729;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t partial apply for closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(a1, a2, v6, v7, v8);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_;
  v10 = v0[32];
  v11 = v0[33];
  v13 = v0[30];
  v12 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)(v13, v12, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[24] = v2;
  v4[25] = a1;
  v4[26] = v1;
  v5 = v3[35];
  v8 = *v2;
  v4[36] = v1;

  if (v1)
  {
    v6 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_;
  }

  else
  {
    v6 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_()
{
  v47 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[27];
  if (v15)
  {
    v16 = [v0[27] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[36];
  v25 = v0[28];
  v26 = v0[29];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v26);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_702;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_709;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t partial apply for closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_;
  v10 = v0[32];
  v11 = v0[33];
  v13 = v0[30];
  v12 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)(v13, v12, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[24] = v2;
  v4[25] = a1;
  v4[26] = v1;
  v5 = v3[35];
  v8 = *v2;
  v4[36] = v1;

  if (v1)
  {
    v6 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_;
  }

  else
  {
    v6 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 296) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY3_()
{
  v1 = *(v0 + 296);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY4_()
{
  v1 = v0[27];
  if (v1)
  {
    v2 = [v1 useCase];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  v6 = v0[25];
  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v3, v5, v0[28], v0[29]);

  v7 = v0[1];

  return v7(v6);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_()
{
  v47 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[27];
  if (v15)
  {
    v16 = [v0[27] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[36];
  v25 = v0[28];
  v26 = v0[29];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v26);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_642;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_649;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t partial apply for closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(a1, a2, v6, v7, v8);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY0_()
{
  v16 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = type metadata accessor for Logger();
  v0[35] = __swift_project_value_buffer(v2, static Logger.framework);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_224E26000, v3, v4, "%{public}s method was called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_;
  v10 = v0[33];
  v11 = v0[34];
  v13 = v0[31];
  v12 = v0[32];

  return specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)(v13, v12, v10, v11);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[24] = v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;
  v6 = v4[36];
  v9 = *v3;
  v5[37] = v2;

  if (v2)
  {
    v7 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_;
  }

  else
  {
    v7 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY3_()
{
  v1 = *(v0 + 304);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY4_()
{
  v1 = v0[28];
  if (v1)
  {
    v2 = [v1 useCase];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  v6 = v0[25];
  v7 = v0[26];
  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v3, v5, v0[29], v0[30]);

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 312) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY6_()
{
  v1 = *(v0 + 312);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_nTY7_()
{
  v47 = v0;
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[30];
  swift_willThrow();

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[37];
    v9 = v0[29];
    v8 = v0[30];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_224E26000, v5, v6, "%{public}s threw an error: %{public}@", v10, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v10, -1, -1);
  }

  v15 = v0[28];
  if (v15)
  {
    v16 = [v0[28] useCase];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v15 sourceApplicationBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v23;
      v45 = v22;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v19 = 0xE400000000000000;
    v17 = 1701736270;
  }

  v24 = v0[37];
  v25 = v0[29];
  v26 = v0[30];
  v27 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v29 = MEMORY[0x22AA609C0](v17, v19);

  *(inited + 48) = v29;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v26);
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v32 = swift_allocObject();
  v32[2] = v45;
  v32[3] = v44;
  v32[4] = v27;
  v32[5] = v24;
  v32[6] = v30;
  v0[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[17] = v32;
  v0[12] = MEMORY[0x277D85DD0];
  v0[13] = 1107296256;
  v0[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[15] = &block_descriptor_620;
  v33 = _Block_copy(v0 + 12);
  v34 = v0[17];
  v35 = v24;
  v36 = v27;

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v37 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v30;
  v0[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v0[23] = v38;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[21] = &block_descriptor_627;
  v39 = _Block_copy(v0 + 18);
  v40 = v0[23];
  v41 = v36;

  AnalyticsSendEventLazy();
  _Block_release(v39);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v24);
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

uint64_t specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[24] = v2;
  v4[25] = a1;
  v4[26] = v1;
  v5 = v3[34];
  v8 = *v2;
  v4[35] = v1;

  if (v1)
  {
    v6 = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  }

  else
  {
    v6 = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

uint64_t dispatch thunk of XPCHandler.requestData(by:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of XPCHandler.requestData(byLatitude:longitude:clientConfig:)(uint64_t a1, double a2, double a3)
{
  v8 = *(*v3 + 128);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of XPCHandler.requestData(byLatitude:longitude:clientConfig:);
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;

  return v14(a1, v11, v12);
}

uint64_t dispatch thunk of XPCHandler.requestData(byLatitude:longitude:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.setPIRConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.generateEvaluationKey(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.constructPIRRequest(with:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.decryptPIRResponse(_:index:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 176);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 184);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 192);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 208);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 216);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)(uint64_t a1, double a2, double a3)
{
  v8 = *(*v3 + 224);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;

  return v14(a1, v11, v12);
}

uint64_t dispatch thunk of XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v12 = *(*v5 + 232);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);
  v15.n128_f64[0] = a4;
  v16.n128_f64[0] = a5;

  return v18(a1, a2, a3, v15, v16);
}

uint64_t dispatch thunk of XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 240);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 248);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 256);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 264);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 272);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 280);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 288);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of XPCHandler.requestData(by:clientConfig:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of XPCHandler.queryStatus(for:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 296);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.queryStatus(for:options:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCHandler.queryStatus(for:options:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of XPCHandler.dataVaultDirectory()(uint64_t a1)
{
  v4 = *(*v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v8(a1);
}

uint64_t dispatch thunk of XPCHandler.cacheFile(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 312);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of XPCHandler.listUseCaseGroups()()
{
  v2 = *(*v0 + 320);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of XPCHandler.requestData(byIndices:clientConfig:);

  return v6();
}

uint64_t dispatch thunk of XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 328);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t partial apply for @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(v2, v3, v5, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t partial apply for @objc closure #1 in XPCHandler.listUseCaseGroups()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return @objc closure #1 in XPCHandler.listUseCaseGroups()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in XPCHandler.cacheFile(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return @objc closure #1 in XPCHandler.cacheFile(for:)(v2, v3);
}

uint64_t objectdestroy_136Tm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in XPCHandler.dataVaultDirectory()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return @objc closure #1 in XPCHandler.dataVaultDirectory()(v2);
}

uint64_t partial apply for @objc closure #1 in XPCHandler.queryStatus(for:options:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return @objc closure #1 in XPCHandler.queryStatus(for:options:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(v2, v3, v4, v5, v6, v7, v8);
}