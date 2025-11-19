uint64_t closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 160);
  v9 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  }

  else
  {
    v5 = closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t RequestsManager.removeCachedKeywords(keywords:context:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for RequestsManager.PIRContext();
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = RequestsManager.removeCachedKeywords(keywords:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v6, a2, 0);
}

uint64_t RequestsManager.removeCachedKeywords(keywords:context:)()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = RequestsManager.removeCachedKeywords(keywords:context:);
  }

  else
  {
    v3 = RequestsManager.removeCachedKeywords(keywords:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[4];
  v2 = (v1 + *(v0[3] + 36));
  if (*v2)
  {
    v3 = v0[6];
    v4 = v0[2];
    v5 = v2[1];
    v6 = *v2;
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 32);
    swift_unknownObjectRetain();
    v9 = v8(v4, ObjectType, v5);
    swift_unknownObjectRelease();
    v1 = v0[4];
    if (v3)
    {
      outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);
      v10 = v0[4];

      v11 = v0[1];

      return v11();
    }
  }

  else
  {
    v9 = 0;
  }

  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v13 = v0[1];

  return v13(v9);
}

{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t RequestsManager.constructPIRRequest(keyword:shardId:pirContext:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v41 = a5;
  if (!a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_225022960;
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;
    v29 = a5 + *(type metadata accessor for RequestsManager.PIRContext() + 24);
    v30 = *(v29 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
    v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30 + v31, v15, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v32 = type metadata accessor for AspirePirBatchPirParameters(0);
    LODWORD(v31) = (*(*(v32 - 8) + 48))(v15, 1, v32);
    outlined copy of Data._Representation(a1, a2);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    if (v31 == 1)
    {
      v33 = v42;
      v34 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v19, MEMORY[0x277D84F90]);
LABEL_11:
      v26 = v34;

      if (v33)
      {
        return result;
      }

      if (!*(v26 + 16))
      {
        __break(1u);
        return result;
      }

      goto LABEL_13;
    }

LABEL_10:
    v33 = v42;
    v34 = RequestsManager.PIRContext.createBatchPIRQueries(_:)(v19);
    goto LABEL_11;
  }

  v39 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v19 = swift_allocObject();
  v40 = xmmword_225022960;
  *(v19 + 16) = xmmword_225022960;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = v40;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v21 = a5 + *(type metadata accessor for RequestsManager.PIRContext() + 24);
  v22 = *(v21 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v23 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22 + v23, v18, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v24 = type metadata accessor for AspirePirBatchPirParameters(0);
  if ((*(*(v24 - 8) + 48))(v18, 1, v24) == 1)
  {

    outlined copy of Data._Representation(a1, a2);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v25 = v42;
    v26 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v19, inited);
    v27 = v25;
    swift_setDeallocating();
    v28 = *(inited + 16);
    swift_arrayDestroy();
  }

  else
  {
    swift_setDeallocating();

    outlined copy of Data._Representation(a1, a2);
    outlined destroy of String(inited + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v35 = v42;
    v26 = RequestsManager.PIRContext.createBatchPIRQueries(_:)(v19);
    v27 = v35;
  }

  if (!v27)
  {
    a6 = v39;
    if (*(v26 + 16))
    {
LABEL_13:
      v37 = *(type metadata accessor for AspireApiRequest(0) - 8);
      outlined init with copy of UserIdentifier(v26 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), a6, type metadata accessor for AspireApiRequest);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 152) = a7;
  *(v9 + 160) = v8;
  *(v9 + 136) = a5;
  *(v9 + 144) = a6;
  *(v9 + 320) = a4;
  *(v9 + 120) = a2;
  *(v9 + 128) = a3;
  *(v9 + 112) = a1;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64) + 15;
  *(v9 + 168) = swift_task_alloc();
  v12 = type metadata accessor for AspireApiPIRRequest(0);
  *(v9 + 176) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v9 + 184) = swift_task_alloc();
  v14 = type metadata accessor for AspireApiEvaluationKey(0);
  *(v9 + 192) = v14;
  v15 = *(v14 - 8);
  *(v9 + 200) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  v17 = type metadata accessor for AspireApiPIRConfig(0);
  *(v9 + 216) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  v19 = *(*(type metadata accessor for SecretKey() - 8) + 64) + 15;
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  v20 = *(*(type metadata accessor for BatchPIRClient() - 8) + 64) + 15;
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  v22 = type metadata accessor for RequestsManager.PIRContext();
  *(v9 + 288) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v24 = swift_task_alloc();
  *(v9 + 296) = v24;
  v25 = swift_task_alloc();
  *(v9 + 304) = v25;
  *v25 = v9;
  v25[1] = RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v24, a8, 0);
}

uint64_t RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:)()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:);
  }

  else
  {
    v3 = RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 144);
  if (!v1)
  {
    v25 = *(v0 + 288);
    v24 = *(v0 + 296);
    v26 = *(v0 + 272);
    v27 = *(v0 + 216);
    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
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
    v35 = *(v0 + 312);
    v36 = *(v0 + 296);
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

    v45 = *(v0 + 288);
    v46 = *(v0 + 256);
    v47 = *(v0 + 240);
    v48 = *(v0 + 224);
    outlined init with copy of UserIdentifier(v36 + *(v45 + 32), v47, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v31, v48, type metadata accessor for AspireApiPIRConfig);
    v49 = (v36 + *(v45 + 28));
    v50 = *v49;
    v51 = v49[1];
    outlined copy of Data._Representation(*v49, v51);
    BatchPIRClient.init(secretKey:config:configID:)(v47, v48, v50, v51, v46);
    if (!v35)
    {
      v52 = *(v0 + 256);
      v23 = BatchPIRClient.constructPIRRequest(with:)(v30);
      goto LABEL_21;
    }

LABEL_13:

    goto LABEL_15;
  }

  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 216);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
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
  v16 = *(v0 + 312);
  v17 = *(v0 + 296);
  if (v15 != 1)
  {
    v106 = *(v0 + 280);
    v107 = *(v0 + 288);
    v108 = *(v0 + 248);
    v109 = *(v0 + 232);
    v112 = *(v0 + 264);
    v39 = *(v0 + 120);
    v38 = *(v0 + 128);
    v115 = *(v0 + 312);
    swift_setDeallocating();

    outlined copy of Data._Representation(v39, v38);
    outlined destroy of String(inited + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v106, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    outlined init with copy of UserIdentifier(v17 + *(v107 + 32), v108, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v11, v109, type metadata accessor for AspireApiPIRConfig);
    v40 = (v17 + *(v107 + 28));
    v41 = *v40;
    v42 = v40[1];
    outlined copy of Data._Representation(*v40, v42);
    BatchPIRClient.init(secretKey:config:configID:)(v108, v109, v41, v42, v112);
    if (!v115)
    {
      v43 = *(v0 + 264);
      v44 = BatchPIRClient.constructPIRRequest(with:)(v9);
      v64 = *(v0 + 296);
      v65 = *(v0 + 264);
      v66 = v44;

      v67 = swift_task_alloc();
      *(v67 + 16) = v64;
      v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)partial apply, v67, v66);

      v23 = outlined destroy of AspirePirKeywordPirParameters(v65, type metadata accessor for BatchPIRClient);
      if (*(v21 + 16))
      {
LABEL_22:
        v72 = *(v0 + 320);
        v73 = *(v0 + 112);
        v74 = type metadata accessor for AspireApiRequest(0);
        outlined init with copy of UserIdentifier(v21 + ((*(*(v74 - 8) + 80) + 32) & ~*(*(v74 - 8) + 80)), v73, type metadata accessor for AspireApiRequest);

        if ((v72 & 1) == 0)
        {
LABEL_29:
          v99 = *(v0 + 272);
          v98 = *(v0 + 280);
          v101 = *(v0 + 256);
          v100 = *(v0 + 264);
          v103 = *(v0 + 240);
          v102 = *(v0 + 248);
          v105 = *(v0 + 224);
          v104 = *(v0 + 232);
          v111 = *(v0 + 208);
          v114 = *(v0 + 184);
          v116 = *(v0 + 168);
          outlined destroy of AspirePirKeywordPirParameters(*(v0 + 296), type metadata accessor for RequestsManager.PIRContext);

          v63 = *(v0 + 8);
          goto LABEL_16;
        }

        RequestsManager.generateEvaluationKey(config:pirContext:)(*(v0 + 152), *(v0 + 296), *(v0 + 208));
        v75 = *(v0 + 168);
        v76 = *(v0 + 112);
        v77 = *(v74 + 20);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v76 + v77, v75, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
        v78 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
        v79 = *(v78 - 8);
        v80 = (*(v79 + 48))(v75, 1, v78);
        v81 = *(v0 + 168);
        if (v80 == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 168), &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
        }

        else
        {
          v82 = *(v0 + 168);
          if (!swift_getEnumCaseMultiPayload())
          {
            outlined init with take of AspirePirSymmetricPirClientConfig(v81, *(v0 + 184), type metadata accessor for AspireApiPIRRequest);
            goto LABEL_28;
          }

          outlined destroy of AspirePirKeywordPirParameters(v81, type metadata accessor for AspireApiRequest.OneOf_Request);
        }

        v83 = *(v0 + 192);
        v84 = *(v0 + 200);
        v86 = *(v0 + 176);
        v85 = *(v0 + 184);
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
        v94 = *(v0 + 200);
        v93 = *(v0 + 208);
        v96 = *(v0 + 184);
        v95 = *(v0 + 192);
        v97 = *(*(v0 + 176) + 40);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v96 + v97, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
        outlined init with take of AspirePirSymmetricPirClientConfig(v93, v96 + v97, type metadata accessor for AspireApiEvaluationKey);
        (*(v94 + 56))(v96 + v97, 0, 1, v95);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v76 + v77, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
        outlined init with take of AspirePirSymmetricPirClientConfig(v96, v76 + v77, type metadata accessor for AspireApiPIRRequest);
        swift_storeEnumTagMultiPayload();
        (*(v79 + 56))(v76 + v77, 0, 1, v78);
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v18 = *(v0 + 280);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);

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
    v68 = *(v0 + 296);
    v69 = *(v0 + 256);
    v70 = v23;

    v71 = swift_task_alloc();
    *(v71 + 16) = v68;
    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)partial apply, v71, v70);

    result = outlined destroy of AspirePirKeywordPirParameters(v69, type metadata accessor for BatchPIRClient);
    if (*(v21 + 16))
    {
      goto LABEL_22;
    }

LABEL_31:
    __break(1u);
    return result;
  }

LABEL_15:
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 296), type metadata accessor for RequestsManager.PIRContext);
  v53 = *(v0 + 296);
  v54 = *(v0 + 272);
  v55 = *(v0 + 280);
  v57 = *(v0 + 256);
  v56 = *(v0 + 264);
  v59 = *(v0 + 240);
  v58 = *(v0 + 248);
  v61 = *(v0 + 224);
  v60 = *(v0 + 232);
  v62 = *(v0 + 208);
  v110 = *(v0 + 184);
  v113 = *(v0 + 168);

  v63 = *(v0 + 8);
LABEL_16:

  return v63();
}

{
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[26];
  v13 = v0[23];
  v14 = v0[21];
  v15 = v0[39];

  v11 = v0[1];

  return v11();
}

uint64_t RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a2;
  v5 = type metadata accessor for AspireApiRequests(0);
  v3[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for AspireApiPIRConfig(0);
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = *(*(type metadata accessor for SecretKey() - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(type metadata accessor for BatchPIRClient() - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = type metadata accessor for RequestsManager.PIRContext();
  v3[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v3[15] = v14;
  v15 = swift_task_alloc();
  v3[16] = v15;
  *v15 = v3;
  v15[1] = RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v14, a3, 0);
}

uint64_t RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:)()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:);
  }

  else
  {
    v3 = RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 120) + *(*(v0 + 112) + 24);
  v3 = *(v2 + *(*(v0 + 72) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3 + v4, v1, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v5 = type metadata accessor for AspirePirBatchPirParameters(0);
  LODWORD(v3) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if (v3 == 1)
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(*(v0 + 40), *(v0 + 48));
    if (!v6)
    {
      v9 = v8;
LABEL_9:
      v34 = *(v0 + 56);
      v33 = *(v0 + 64);
      *(swift_task_alloc() + 16) = v9;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests);
      static Message.with(_:)();

      v35 = Message.serializedData(partial:)();
      v36 = *(v0 + 120);
      v37 = *(v0 + 96);
      v38 = *(v0 + 104);
      v40 = *(v0 + 80);
      v39 = *(v0 + 88);
      v41 = v35;
      v43 = v42;
      outlined destroy of AspirePirKeywordPirParameters(*(v0 + 64), type metadata accessor for AspireApiRequests);
      outlined destroy of AspirePirKeywordPirParameters(v36, type metadata accessor for RequestsManager.PIRContext);

      v44 = *(v0 + 8);

      return v44(v41, v43);
    }
  }

  else
  {
    v10 = *(v0 + 136);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);
    outlined init with copy of UserIdentifier(v11 + *(v12 + 32), v14, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v2, v15, type metadata accessor for AspireApiPIRConfig);
    v16 = (v11 + *(v12 + 28));
    v17 = *v16;
    v18 = v16[1];
    outlined copy of Data._Representation(*v16, v18);
    BatchPIRClient.init(secretKey:config:configID:)(v14, v15, v17, v18, v13);
    if (!v10)
    {
      v19 = *(v0 + 96);
      v20 = BatchPIRClient.constructPIRRequest(with:)(*(v0 + 40));
      v29 = *(v0 + 120);
      v30 = *(v0 + 96);
      v31 = v20;
      v32 = swift_task_alloc();
      *(v32 + 16) = v29;
      v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)partial apply, v32, v31);

      outlined destroy of AspirePirKeywordPirParameters(v30, type metadata accessor for BatchPIRClient);
      goto LABEL_9;
    }
  }

  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 120), type metadata accessor for RequestsManager.PIRContext);
  v21 = *(v0 + 120);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v25 = *(v0 + 80);
  v24 = *(v0 + 88);
  v26 = *(v0 + 64);

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t *RequestsManager.decryptPIRServiceResponse(serviceResponse:keyword:context:shardId:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v31 = a5;
  v29 = a2;
  v8 = type metadata accessor for KeywordPIRClient();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v28 - v17);
  v19 = type metadata accessor for AspireApiPIRResponse(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v18, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v23 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v23 - 8) + 48))(v18, 1, v23) != 1)
  {
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AspirePirKeywordPirParameters(v18, type metadata accessor for AspireApiResponse.OneOf_Response);
      goto LABEL_5;
    }

    outlined init with take of AspirePirSymmetricPirClientConfig(v18, v22, type metadata accessor for AspireApiPIRResponse);
    if (a6)
    {
      v25 = v32;
      RequestsManager.PIRContext.constructPIRClient(shardId:)(v31, a6, v11);
      if (!v25)
      {
        v26 = v29;
        v18 = v30;
LABEL_12:
        outlined init with take of AspirePirSymmetricPirClientConfig(v11, v14, type metadata accessor for KeywordPIRClient);
        v18 = KeywordPIRClient.decryptPIRResponse(_:keyword:)(v22, v26, v18);
        outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for KeywordPIRClient);
        outlined destroy of AspirePirKeywordPirParameters(v22, type metadata accessor for AspireApiPIRResponse);
        return v18;
      }
    }

    else
    {
      v26 = v29;
      v18 = v30;
      v27 = v32;
      RequestsManager.PIRContext.constructPIRClient(keyword:)(v29, v30, v11);
      if (!v27)
      {
        goto LABEL_12;
      }
    }

    outlined destroy of AspirePirKeywordPirParameters(v22, type metadata accessor for AspireApiPIRResponse);
    return v18;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_5:
  v18 = type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v18;
}

uint64_t RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = *(*(type metadata accessor for AspireApiPIRConfig(0) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SecretKey() - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v11 = *(*(type metadata accessor for KeywordPIRClient() - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v13 = *(*(type metadata accessor for AspireApiPIRResponse(0) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v14 = type metadata accessor for RequestsManager.PIRContext();
  v8[20] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v16 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v17 = type metadata accessor for AspireApiResponse(0);
  v8[23] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:), 0, 0);
}

uint64_t RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:)()
{
  v1 = v0[4];
  v0[2] = v1;
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[5];
  v0[3] = v5;
  outlined copy of Data._Representation(v1, v5);
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:);
  v7 = v0[21];
  v8 = v0[11];
  v9 = v0[8];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v7, v9, 0);
}

{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:);
  }

  else
  {
    v3 = RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 144);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 192), v1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v2 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 144);
  if (v3 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 144), &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_5:
    v6 = *(v0 + 192);
    v7 = *(v0 + 168);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_6:
    outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for RequestsManager.PIRContext);
    outlined destroy of AspirePirKeywordPirParameters(v6, type metadata accessor for AspireApiResponse);
    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v17 = *(v0 + 104);
    v51 = *(v0 + 96);

    v18 = *(v0 + 8);

    return v18();
  }

  v5 = *(v0 + 144);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_5;
  }

  v20 = *(v0 + 80);
  outlined init with take of AspirePirSymmetricPirClientConfig(v4, *(v0 + 152), type metadata accessor for AspireApiPIRResponse);
  v54 = *(v0 + 208);
  v21 = *(v0 + 168);
  if (v20)
  {
    v22 = *(v0 + 160);
    v23 = *(v0 + 120);
    v25 = *(v0 + 104);
    v24 = *(v0 + 112);
    v26 = *(v0 + 96);
    v27 = *(v0 + 80);
    v49 = *(v0 + 72);
    v52 = *(v0 + 128);
    outlined init with copy of UserIdentifier(v21 + v22[8], v23, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v21 + v22[6], v25, type metadata accessor for AspireApiPIRConfig);
    v28 = (v21 + v22[7]);
    v29 = *v28;
    v30 = v28[1];
    outlined init with copy of UserIdentifier(v23, v24, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v25, v26, type metadata accessor for AspireApiPIRConfig);
    outlined copy of Data._Representation(v29, v30);

    KeywordPIRClient.init(secretKey:config:configID:shardLabel:)(v24, v26, v29, v30, v49, v27, 0, v52);
    if (v54)
    {
      v6 = *(v0 + 192);
      v7 = *(v0 + 168);
      v31 = *(v0 + 152);
      v32 = *(v0 + 120);
      outlined destroy of AspirePirKeywordPirParameters(*(v0 + 104), type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AspirePirKeywordPirParameters(v32, type metadata accessor for SecretKey);
      outlined destroy of AspirePirKeywordPirParameters(v31, type metadata accessor for AspireApiPIRResponse);
      goto LABEL_6;
    }

    v33 = *(v0 + 120);
    outlined destroy of AspirePirKeywordPirParameters(*(v0 + 104), type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AspirePirKeywordPirParameters(v33, type metadata accessor for SecretKey);
  }

  else
  {
    RequestsManager.PIRContext.constructPIRClient(keyword:)(*(v0 + 48), *(v0 + 56), *(v0 + 128));
    if (v54)
    {
      v6 = *(v0 + 192);
      v7 = *(v0 + 168);
      outlined destroy of AspirePirKeywordPirParameters(*(v0 + 152), type metadata accessor for AspireApiPIRResponse);
      goto LABEL_6;
    }
  }

  v34 = *(v0 + 152);
  v36 = *(v0 + 48);
  v35 = *(v0 + 56);
  outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 128), *(v0 + 136), type metadata accessor for KeywordPIRClient);
  v37 = KeywordPIRClient.decryptPIRResponse(_:keyword:)(v34, v36, v35);
  v38 = *(v0 + 192);
  v40 = *(v0 + 168);
  v39 = *(v0 + 176);
  v42 = *(v0 + 144);
  v41 = *(v0 + 152);
  v43 = *(v0 + 128);
  v44 = *(v0 + 112);
  v45 = *(v0 + 120);
  v48 = *(v0 + 104);
  v50 = *(v0 + 96);
  v53 = v46;
  v55 = v37;
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 136), type metadata accessor for KeywordPIRClient);
  outlined destroy of AspirePirKeywordPirParameters(v41, type metadata accessor for AspireApiPIRResponse);
  outlined destroy of AspirePirKeywordPirParameters(v40, type metadata accessor for RequestsManager.PIRContext);
  outlined destroy of AspirePirKeywordPirParameters(v38, type metadata accessor for AspireApiResponse);

  v47 = *(v0 + 8);

  return v47(v55, v53);
}

{
  outlined destroy of AspirePirKeywordPirParameters(v0[24], type metadata accessor for AspireApiResponse);
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v13 = v0[12];
  v14 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a3;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a2;
  v7 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = type metadata accessor for AspireApiResponses(0);
  v5[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = *(*(type metadata accessor for RequestsManager.PIRContext() - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v5[11] = v11;
  v12 = swift_task_alloc();
  v5[12] = v12;
  *v12 = v5;
  v12[1] = RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v11, a4, 0);
}

uint64_t RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:)()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:);
  }

  else
  {
    v3 = RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[4];
  v0[2] = v1;
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[5];
  v0[3] = v6;
  outlined copy of Data._Representation(v1, v6);
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
    v7 = v0[11];
LABEL_11:
    outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for RequestsManager.PIRContext);
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[8];

    v28 = v0[1];

    return v28();
  }

  v8 = v0[6];
  v9 = *v0[10];
  v10 = *(v8 + 16);
  if (*(v9 + 16) != v10)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
      v34 = v0[6];
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.daemon);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[6];
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134349312;
      *(v22 + 4) = *(v9 + 16);

      *(v22 + 12) = 2050;
      *(v22 + 14) = v10;

      _os_log_impl(&dword_224E26000, v18, v19, "    encryptedResponses.count '%{public}ld'     does not equal keywords.count '%{public}ld'", v22, 0x16u);
      MEMORY[0x22AA61F40](v22, -1, -1);
    }

    else
    {
      v23 = v0[6];
    }

    v24 = v0[10];
    v7 = v0[11];
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of AspirePirKeywordPirParameters(v24, type metadata accessor for AspireApiResponses);
    goto LABEL_11;
  }

  v11 = v0[11];
  v12 = v0[7];
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;

  v14 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(v9, v8, partial apply for closure #1 in RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:), v13);
  v15 = v0[10];
  v16 = v0[11];
  v30 = v0[8];
  v31 = v0[6];
  v32 = v14;

  outlined destroy of AspirePirKeywordPirParameters(v15, type metadata accessor for AspireApiResponses);
  outlined destroy of AspirePirKeywordPirParameters(v16, type metadata accessor for RequestsManager.PIRContext);

  v33 = v0[1];

  return v33(v32);
}

{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

unint64_t closure #1 in RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v27[1] = a5;
  v8 = type metadata accessor for KeywordPIRClient();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v27 - v17;
  v19 = type metadata accessor for AspireApiPIRResponse(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v18, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v23 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_5:
    v24 = type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v24;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of AspirePirKeywordPirParameters(v18, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_5;
  }

  outlined init with take of AspirePirSymmetricPirClientConfig(v18, v22, type metadata accessor for AspireApiPIRResponse);
  v24 = a3;
  v26 = v27[3];
  RequestsManager.PIRContext.constructPIRClient(keyword:)(a2, a3, v11);
  if (!v26)
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(v11, v14, type metadata accessor for KeywordPIRClient);
    v24 = KeywordPIRClient.decryptPIRResponse(_:keyword:)(v22, a2, a3);
    outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for KeywordPIRClient);
  }

  outlined destroy of AspirePirKeywordPirParameters(v22, type metadata accessor for AspireApiPIRResponse);
  return v24;
}

void closure #1 in RequestsManager.loadCache(requestContext:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [*a1 useCase];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (*(a1 + 24))
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v9 = *(a1 + 41);
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = *(a1 + 16);
    if (v10)
    {
      v13 = 10080;
    }

    else
    {
      v13 = v11;
    }

    v26 = v9 & 1;
    v14 = type metadata accessor for SqliteCache();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v6, v8, v12, v13, &v26, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
    if (v2)
    {
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.daemon);
      v19 = v2;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v2;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_224E26000, v20, v21, "Failed to initialize cache: %@", v22, 0xCu);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x22AA61F40](v23, -1, -1);
        MEMORY[0x22AA61F40](v22, -1, -1);
      }

      else
      {
      }

      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      *a2 = v17;
      a2[1] = &protocol witness table for SqliteCache;
    }
  }
}

uint64_t specialized Coordinator.run(key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized Coordinator.run(key:_:), v5, 0);
}

uint64_t specialized Coordinator.run(key:_:)()
{
  v1 = v0[19];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = *(v1 + 112);

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
    if (v7)
    {
      v8 = *(*(v2 + 56) + 8 * v6);
      v0[21] = v8;

      v9 = *(MEMORY[0x277D857C8] + 4);
      v10 = swift_task_alloc();
      v0[22] = v10;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v10 = v0;
      v10[1] = specialized Coordinator.run(key:_:);
      v12 = v0[14];
      v13 = MEMORY[0x277D84950];
      v14 = MEMORY[0x277D84F78] + 8;
      v15 = v8;
      goto LABEL_6;
    }
  }

  v16 = v0[20];
  v18 = v0[17];
  v17 = v0[18];
  v20 = v0[15];
  v19 = v0[16];
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v18;
  v22[5] = v17;

  v23 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for specialized closure #1 in Coordinator.run(key:_:), v22);
  v0[24] = v23;
  swift_beginAccess();

  v24 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v20, v19, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v29;
  swift_endAccess();
  v26 = *(MEMORY[0x277D857C8] + 4);
  v27 = swift_task_alloc();
  v0[25] = v27;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v27 = v0;
  v27[1] = specialized Coordinator.run(key:_:);
  v12 = v0[14];
  v13 = MEMORY[0x277D84950];
  v14 = MEMORY[0x277D84F78] + 8;
  v15 = v23;
LABEL_6:

  return MEMORY[0x282200430](v12, v15, v14, v11, v13);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = specialized Coordinator.run(key:_:);
  }

  else
  {
    v6 = specialized Coordinator.run(key:_:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = specialized Coordinator.run(key:_:);
  }

  else
  {
    v6 = specialized Coordinator.run(key:_:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[20];
  v1 = v0[21];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  swift_beginAccess();

  specialized Dictionary.subscript.setter(0, v3, v2);
  swift_endAccess();
  v4 = v0[24];
  v5 = v0[20];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  swift_beginAccess();

  specialized Dictionary.subscript.setter(0, v3, v2);
  swift_endAccess();
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[20];

  v7 = v0[1];

  return v7();
}

uint64_t specialized closure #1 in Coordinator.run(key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v9(a1);
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for AspireApiConfig(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        outlined init with copy of UserIdentifier(*(v5 + 56) + v27, v31, type metadata accessor for AspireApiConfig);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        outlined init with take of AspirePirSymmetricPirClientConfig(v26, *(v28 + 56) + v27, type metadata accessor for AspireApiConfig);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML7UseCaseOGMd, &_ss18_DictionaryStorageCySS8CipherML7UseCaseOGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[9] = *(v19 + v17 + 41);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 41) = *&v34[9];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = outlined init with copy of UseCase(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVAESgGMd, &_ss18_DictionaryStorageCy10Foundation4DataVAESgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        outlined copy of Data._Representation(v18, *(&v18 + 1));
        result = outlined copy of Data?(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTyyts5Error_pGGMd, &_ss18_DictionaryStorageCySSScTyyts5Error_pGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UseCaseGroup();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        outlined init with copy of UserIdentifier(*(v5 + 56) + v27, v31, type metadata accessor for UseCaseGroup);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        outlined init with take of AspirePirSymmetricPirClientConfig(v26, *(v28 + 56) + v27, type metadata accessor for UseCaseGroup);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMd, &_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMd, &_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        outlined init with copy of UserIdentifier(*(v6 + 56) + v23, v5, type metadata accessor for AspireHeSerializedKeySwitchKey);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = outlined init with take of AspirePirSymmetricPirClientConfig(v5, *(v8 + 56) + v23, type metadata accessor for AspireHeSerializedKeySwitchKey);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for SecretKey();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        outlined init with copy of UserIdentifier(*(v5 + 56) + v27, v31, type metadata accessor for SecretKey);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        outlined init with take of AspirePirSymmetricPirClientConfig(v26, *(v28 + 56) + v27, type metadata accessor for SecretKey);
        result = outlined copy of Data._Representation(v24, v25);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        outlined init with copy of UserIdentifier(*(v5 + 56) + v27, v31, type metadata accessor for AspireHeEvaluationKeyConfig);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        outlined init with take of AspirePirSymmetricPirClientConfig(v26, *(v28 + 56) + v27, type metadata accessor for AspireHeEvaluationKeyConfig);
        result = outlined copy of Data._Representation(v24, v25);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v36 = type metadata accessor for Date();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AspireApiConfig(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v31, v45, type metadata accessor for AspireApiConfig);
      }

      else
      {
        outlined init with copy of UserIdentifier(v31, v45, type metadata accessor for AspireApiConfig);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v45, *(v12 + 56) + v30 * v20, type metadata accessor for AspireApiConfig);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v49 = type metadata accessor for Date();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UseCaseGroup();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v31, v45, type metadata accessor for UseCaseGroup);
      }

      else
      {
        outlined init with copy of UserIdentifier(v31, v45, type metadata accessor for UseCaseGroup);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v45, *(v12 + 56) + v30 * v20, type metadata accessor for UseCaseGroup);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMd, &_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v39 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v40)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v28, v9, type metadata accessor for AspireHeSerializedKeySwitchKey);
      }

      else
      {
        outlined init with copy of UserIdentifier(v28, v9, type metadata accessor for AspireHeSerializedKeySwitchKey);
      }

      result = MEMORY[0x22AA61400](*(v13 + 40), v26);
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v9, *(v13 + 56) + v27 * v21, type metadata accessor for AspireHeSerializedKeySwitchKey);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v10 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for SecretKey();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMR);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v26;
      v43 = *(*(v10 + 48) + 16 * v26);
      v29 = *(&v43 + 1);
      if (v42)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v28, v9, type metadata accessor for SecretKey);
      }

      else
      {
        outlined init with copy of UserIdentifier(v28, v9, type metadata accessor for SecretKey);
        outlined copy of Data._Representation(v43, v29);
      }

      v30 = *(v13 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v22 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v22 = v43;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 16 * v21) = v22;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v9, *(v13 + 56) + v27 * v21, type metadata accessor for SecretKey);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMR);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v26;
      v43 = *(*(v10 + 48) + 16 * v26);
      v29 = *(&v43 + 1);
      if (v42)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v28, v9, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      else
      {
        outlined init with copy of UserIdentifier(v28, v9, type metadata accessor for AspireHeEvaluationKeyConfig);
        outlined copy of Data._Representation(v43, v29);
      }

      v30 = *(v13 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v22 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v22 = v43;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 16 * v21) = v22;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v9, *(v13 + 56) + v27 * v21, type metadata accessor for AspireHeEvaluationKeyConfig);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML7UseCaseOGMd, &_ss18_DictionaryStorageCySS8CipherML7UseCaseOGMR);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + (v22 << 6));
      if (v41)
      {
        v45 = *v26;
        v46 = v26[1];
        v47[0] = v26[2];
        v27 = *(v26 + 41);
      }

      else
      {
        v28 = *(v26 + 41);
        v29 = v26[2];
        v30 = *v26;
        v43 = v26[1];
        v44[0] = v29;
        v42 = v30;
        *(v44 + 9) = v28;

        outlined init with copy of UseCase(&v42, &v45);
        v45 = v42;
        v46 = v43;
        v47[0] = v44[0];
        v27 = *(v44 + 9);
      }

      *(v47 + 9) = v27;
      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + (v16 << 6));
      *v18 = v45;
      v18[1] = v46;
      v18[2] = v47[0];
      *(v18 + 41) = *(v47 + 9);
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVAESgGMd, &_ss18_DictionaryStorageCy10Foundation4DataVAESgGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = *(*(v5 + 48) + v22);
      v34 = *(*(v5 + 56) + v22);
      v35 = v23;
      if ((a2 & 1) == 0)
      {
        outlined copy of Data._Representation(v23, *(&v23 + 1));
        outlined copy of Data?(v34, *(&v34 + 1));
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v17 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v17 = v35;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = 16 * v16;
      *(*(v8 + 48) + v18) = v17;
      *(*(v8 + 56) + v18) = v34;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTyyts5Error_pGGMd, &_ss18_DictionaryStorageCySSScTyyts5Error_pGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMd, &_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMR);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t specialized static RequestsManager.cachedAndMissingKeywordsInBatch(keywords:shardIds:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(a1 + 16);
    if (v6 != v7)
    {
      if (one-time initialization token for daemon != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_36;
    }
  }

  if (!a3)
  {
    v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_AESgTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    return v78;
  }

  swift_unknownObjectRetain();
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_AESgTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = *(a1 + 16);
  v78 = v8;
  if (v6)
  {
    if (v9)
    {
      v10 = 0;
      v77 = a1 + 32;
      v11 = a2 + 40;
      v12 = MEMORY[0x277D84F90];
      v13 = MEMORY[0x277D84F90];
      v76 = v6;
      v75 = v11;
      while (2)
      {
        v7 = (v11 + 16 * v10);
        v14 = v10;
        while (1)
        {
          if (v14 >= v9)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          if (__OFADD__(v14, 1))
          {
            goto LABEL_64;
          }

          if (v6 == v14)
          {
            goto LABEL_61;
          }

          if (v14 >= v6)
          {
            goto LABEL_65;
          }

          v80 = v14 + 1;
          v87 = v13;
          v85 = *(v77 + 16 * v14);
          v15 = *v7;
          v79 = *(v7 - 1);
          ObjectType = swift_getObjectType();
          v17 = *(a4 + 40);

          outlined copy of Data._Representation(v85, *(&v85 + 1));
          v18 = v17(v85, *(&v85 + 1), ObjectType, a4);
          if (v19 >> 60 != 11)
          {
            break;
          }

          outlined copy of Data._Representation(v85, *(&v85 + 1));
          v13 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
          }

          v21 = *(v13 + 2);
          v20 = *(v13 + 3);
          if (v21 >= v20 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v13);
          }

          *(v13 + 2) = v21 + 1;
          *&v13[16 * v21 + 32] = v85;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
          }

          v23 = *(v12 + 2);
          v22 = *(v12 + 3);
          if (v23 >= v22 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v12);
          }

          ++v14;
          v7 += 2;
          outlined consume of Data._Representation(v85, *(&v85 + 1));
          *(v12 + 2) = v23 + 1;
          v24 = &v12[16 * v23];
          *(v24 + 4) = v79;
          *(v24 + 5) = v15;
          v6 = v76;
          if (v80 == v9)
          {
            goto LABEL_61;
          }
        }

        v25 = v18;
        v26 = v19;

        outlined copy of Data?(v25, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v85, *(&v85 + 1));
        v30 = v78[2];
        v31 = (v28 & 1) == 0;
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
          __break(1u);
        }

        else
        {
          if (v78[3] >= v32)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v83 = v28;
              v44 = v29;
              specialized _NativeDictionary.copy()();
              v29 = v44;
              v28 = v83;
            }
          }

          else
          {
            v33 = isUniquelyReferenced_nonNull_native;
            v34 = v28;
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v33);
            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v85, *(&v85 + 1));
            if ((v34 & 1) != (v36 & 1))
            {
              goto LABEL_71;
            }

            v29 = v35;
            v28 = v34;
          }

          if (v28)
          {
            v37 = (v78[7] + 16 * v29);
            v38 = *v37;
            v39 = v37[1];
            *v37 = v25;
            v37[1] = v26;
            outlined consume of Data?(v38, v39);
            outlined consume of Data._Representation(v85, *(&v85 + 1));
            outlined consume of Data??(v25, v26);
            goto LABEL_33;
          }

          v78[(v29 >> 6) + 8] |= 1 << v29;
          *(v78[6] + 16 * v29) = v85;
          v40 = (v78[7] + 16 * v29);
          *v40 = v25;
          v40[1] = v26;
          outlined consume of Data??(v25, v26);
          v41 = v78[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (!v42)
          {
            v78[2] = v43;
LABEL_33:
            v13 = v87;
            v6 = v76;
            v10 = v14 + 1;
            v11 = v75;
            if (v80 != v9)
            {
              continue;
            }

            goto LABEL_61;
          }
        }

        break;
      }

      __break(1u);
LABEL_71:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_61:
    swift_unknownObjectRelease();
    return v78;
  }

  if (!v9)
  {
    goto LABEL_61;
  }

  v86 = swift_getObjectType();
  v82 = *(a4 + 40);
  v7 = (a1 + 40);
  v49 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = *(v7 - 1);
    v53 = *v7;
    outlined copy of Data._Representation(v6, *v7);
    v54 = v82(v6, v53, v86, a4);
    if (v55 >> 60 == 11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
      }

      v57 = *(v49 + 2);
      v56 = *(v49 + 3);
      if (v57 >= v56 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v49);
      }

      *(v49 + 2) = v57 + 1;
      v58 = &v49[16 * v57];
      *(v58 + 4) = v6;
      *(v58 + 5) = v53;
      goto LABEL_43;
    }

    v59 = v54;
    v60 = v55;
    v81 = v9;
    v88 = v49;
    outlined copy of Data?(v54, v55);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v63 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v53);
    v64 = v78[2];
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      break;
    }

    v67 = v62;
    if (v78[3] >= v66)
    {
      if ((v61 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v66, v61);
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v53);
      if ((v67 & 1) != (v69 & 1))
      {
        goto LABEL_71;
      }

      v63 = v68;
    }

    if (v67)
    {
      v50 = (v78[7] + 16 * v63);
      v51 = *v50;
      v52 = v50[1];
      *v50 = v59;
      v50[1] = v60;
      outlined consume of Data?(v51, v52);
      outlined consume of Data._Representation(v6, v53);
      outlined consume of Data??(v59, v60);
    }

    else
    {
      v78[(v63 >> 6) + 8] |= 1 << v63;
      v70 = (v78[6] + 16 * v63);
      *v70 = v6;
      v70[1] = v53;
      v71 = (v78[7] + 16 * v63);
      *v71 = v59;
      v71[1] = v60;
      outlined consume of Data??(v59, v60);
      v72 = v78[2];
      v42 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v42)
      {
        goto LABEL_67;
      }

      v78[2] = v73;
    }

    v49 = v88;
    v9 = v81;
LABEL_43:
    v7 += 2;
    if (!--v9)
    {
      goto LABEL_61;
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  swift_once();
LABEL_36:
  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.daemon);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134349312;
    *(v48 + 4) = v6;

    *(v48 + 12) = 2050;
    *(v48 + 14) = v7;

    _os_log_impl(&dword_224E26000, v46, v47, "shardIds (length %{public}ld must be empty or match keywords.count %{public}ld.", v48, 0x16u);
    MEMORY[0x22AA61F40](v48, -1, -1);
  }

  else
  {
  }

  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void *specialized RequestsManager.EmptyAndNonEmptyShards.init(keywords:shardIds:context:)(void *a1, unint64_t a2, uint64_t a3)
{
  v71 = a3;
  v7 = type metadata accessor for AspireApiPIRShardConfig(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v64 - v11);
  v13 = *(a2 + 16);
  v69 = a1;
  if (v13)
  {
    if (v13 != a1[2])
    {
      if (one-time initialization token for daemon == -1)
      {
LABEL_42:
        v56 = type metadata accessor for Logger();
        __swift_project_value_buffer(v56, static Logger.daemon);

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = a2;
          v60 = swift_slowAlloc();
          *v60 = 134349312;
          v61 = *(v59 + 16);

          *(v60 + 4) = v61;

          *(v60 + 12) = 2050;
          v62 = a1[2];

          *(v60 + 14) = v62;

          _os_log_impl(&dword_224E26000, v57, v58, "shardIds (length %{public}ld must be empty or match keywords.count %{public}ld.", v60, 0x16u);
          MEMORY[0x22AA61F40](v60, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        type metadata accessor for CipherMLError();
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        outlined destroy of AspirePirKeywordPirParameters(v71, type metadata accessor for RequestsManager.PIRContext);
        return v4;
      }

LABEL_57:
      swift_once();
      goto LABEL_42;
    }

    v70 = v3;
    v14 = 0;
    v66 = a1 + 4;
    v67 = v10;
    v4 = MEMORY[0x277D84F90];
    v72 = MEMORY[0x277D84F90];
    v15 = v71;
    v68 = a2;
LABEL_4:
    v65 = v4;
    v4 = (16 * v14);
    v16 = v14;
    v17 = v72;
    while (v16 < v13)
    {
      v18 = *(a2 + 16);
      v72 = v17;
      if (v16 == v18)
      {
        goto LABEL_44;
      }

      if (v16 >= v18)
      {
        goto LABEL_55;
      }

      v19 = *(v4 + v66);
      v20 = *(v4 + v66 + 8);
      v21 = v4 + a2;
      v23 = *(v4 + a2 + 32);
      v22 = *(v21 + 5);
      v24 = *(type metadata accessor for RequestsManager.PIRContext() + 24);
      outlined copy of Data._Representation(v19, v20);

      outlined copy of Data._Representation(v19, v20);

      v25 = v67;
      v26 = v70;
      AspireApiPIRConfig.shardConfig(at:)(v23, v22, 0, v67);
      v70 = v26;
      if (v26)
      {

        outlined consume of Data._Representation(v19, v20);

        outlined consume of Data._Representation(v19, v20);
        outlined destroy of AspirePirKeywordPirParameters(v15, type metadata accessor for RequestsManager.PIRContext);

        return v4;
      }

      outlined consume of Data._Representation(v19, v20);

      v27 = *v25;
      outlined destroy of AspirePirKeywordPirParameters(v25, type metadata accessor for AspireApiPIRShardConfig);
      outlined copy of Data._Representation(v19, v20);

      if (!v27)
      {
        v32 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
        }

        v34 = v32[2];
        v33 = v32[3];
        v4 = v32;
        if (v34 >= v33 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
        }

        v14 = v16 + 1;
        outlined consume of Data._Representation(v19, v20);

        v4[2] = v34 + 1;
        v35 = &v4[4 * v34];
        v35[4] = v19;
        v35[5] = v20;
        v35[6] = v23;
        v35[7] = v22;
        a2 = v68;
        a1 = v69;
        v13 = v69[2];
        v15 = v71;
        if (v13 - 1 == v16)
        {
          goto LABEL_45;
        }

        goto LABEL_4;
      }

      v28 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v72 = v28;
      if (v30 >= v29 >> 1)
      {
        v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v72);
      }

      ++v16;
      outlined consume of Data._Representation(v19, v20);

      v17 = v72;
      v72[2] = v30 + 1;
      v31 = &v17[4 * v30];
      v31[4] = v19;
      v31[5] = v20;
      v31[6] = v23;
      v31[7] = v22;
      a2 = v68;
      a1 = v69;
      v13 = v69[2];
      v4 += 2;
      v15 = v71;
      if (v16 == v13)
      {
LABEL_44:
        v4 = v65;
LABEL_45:
        outlined destroy of AspirePirKeywordPirParameters(v15, type metadata accessor for RequestsManager.PIRContext);

        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v36 = a1[2];
  if (v36)
  {
    v70 = v12;
    a2 = 0;
    v37 = a1 + 5;
    v68 = v36;
    v66 = (v36 - 1);
    v38 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v67 = a1 + 5;
LABEL_24:
    v65 = v4;
    v39 = &v37[2 * a2];
    v4 = a2;
    while (v4 < a1[2])
    {
      v72 = v38;
      v40 = *(v39 - 1);
      v41 = *v39;
      v42 = *(type metadata accessor for RequestsManager.PIRContext() + 24);
      outlined copy of Data._Representation(v40, v41);
      outlined copy of Data._Representation(v40, v41);
      v43 = v71;
      v44 = AspireApiPIRConfig.shardIndex(for:)(v40, v41);
      if (v3)
      {
        outlined consume of Data._Representation(v40, v41);
        outlined consume of Data._Representation(v40, v41);

        outlined destroy of AspirePirKeywordPirParameters(v43, type metadata accessor for RequestsManager.PIRContext);

        return v4;
      }

      v45 = v44;
      outlined consume of Data._Representation(v40, v41);
      v46 = v70;
      AspireApiPIRConfig.shardConfig(at:)(v45, 0, 1, v70);
      v47 = *v46;
      outlined destroy of AspirePirKeywordPirParameters(v46, type metadata accessor for AspireApiPIRShardConfig);
      outlined copy of Data._Representation(v40, v41);
      a1 = v69;
      if (!v47)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1, v65);
        }

        v52 = v65[2];
        v51 = v65[3];
        if (v52 >= v51 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v65);
        }

        a2 = v4 + 1;
        outlined consume of Data._Representation(v40, v41);

        v53 = v65;
        v65[2] = v52 + 1;
        v54 = &v53[4 * v52];
        v54[4] = v40;
        v54[5] = v41;
        v54[6] = 0;
        v54[7] = 0;
        v55 = v66 == v4;
        v4 = v53;
        v38 = v72;
        v37 = v67;
        if (v55)
        {
          goto LABEL_51;
        }

        goto LABEL_24;
      }

      v48 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
      }

      a2 = v48[2];
      v49 = v48[3];
      v38 = v48;
      if (a2 >= v49 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), a2 + 1, 1, v48);
      }

      v4 = (v4 + 1);
      outlined consume of Data._Representation(v40, v41);

      v38[2] = a2 + 1;
      v50 = &v38[4 * a2];
      v50[4] = v40;
      v50[5] = v41;
      v50[6] = 0;
      v50[7] = 0;
      v39 += 2;
      if (v68 == v4)
      {
        v4 = v65;
        goto LABEL_51;
      }
    }

    goto LABEL_56;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_51:
  outlined destroy of AspirePirKeywordPirParameters(v71, type metadata accessor for RequestsManager.PIRContext);
LABEL_52:

  return v4;
}

uint64_t specialized RequestsManager.EmptyAndNonEmptyShards.nonEmptyShardIds.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 56;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 32 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *v5;
    v5 += 4;
    v7 = v8;
    ++v1;
    if (v8)
    {
      v9 = *(v5 - 5);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized RequestsManager.loadCache(requestContext:)(uint64_t a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v24 - v8);
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static OSSignposter.daemon);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v9, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  static OSSignpostID.exclusive.getter();
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v29 = v12;
  *v11 = 136315138;
  v13 = [*v9 useCase];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = a1;
  v15 = v14;
  v17 = v16;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v29);

  *(v11 + 4) = v18;
  v19 = OSSignposter.logHandle.getter();
  LOBYTE(v18) = static os_signpost_type_t.begin.getter();
  v20 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_224E26000, v19, v18, v20, "LRUCache: init", "%s", v11, 0xCu);
  closure #1 in RequestsManager.loadCache(requestContext:)(v25, &v28);
  LOBYTE(v18) = static os_signpost_type_t.end.getter();
  v21 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_224E26000, v19, v18, v21, "LRUCache: init", "%s", v11, 0xCu);

  v22 = v28;
  __swift_destroy_boxed_opaque_existential_0(v12);
  MEMORY[0x22AA61F40](v12, -1, -1);
  MEMORY[0x22AA61F40](v11, -1, -1);
  (*(v26 + 8))(v5, v27);
  return v22;
}

uint64_t specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for PIR.SymmetricPIRClient();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for SymmetricPIRClient();
  v3[18] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:), 0, 0);
}

uint64_t specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)()
{
  v1 = *(v0 + 112);
  RequestsManager.PIRContext.symmetricPirConfig()((v0 + 16));
  v2 = *(v0 + 24);
  if (v2 >> 60 == 15)
  {
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = *(v0 + 136);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 136);
    v5 = *(v0 + 48);
    *(v0 + 64) = *(v0 + 32);
    *(v0 + 80) = v5;
    outlined copy of Data._Representation(v3, v2);
    outlined copy of Data._Representation(v3, v2);
    PIR.SymmetricPIRClient.init(serverPublicKey:)();
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = *(v0 + 96);
    (*(*(v0 + 128) + 32))(v7, *(v0 + 136), *(v0 + 120));
    v10 = v7 + *(v8 + 20);
    *v10 = v3;
    *(v10 + 8) = v2;
    v11 = *(v0 + 80);
    *(v10 + 16) = *(v0 + 64);
    *(v10 + 32) = v11;
    outlined init with take of AspirePirSymmetricPirClientConfig(v7, v6, type metadata accessor for SymmetricPIRClient);
    v12 = swift_task_alloc();
    *(v12 + 16) = v6;
    v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_16CryptoKitPrivate3PIRO14BlindedKeywordVsAE_pTg5(partial apply for closure #1 in SymmetricPIRClient.blind(keywords:), v12, v9);
    *(v0 + 168) = v13;
    v19 = v13;

    v20 = swift_task_alloc();
    *(v0 + 176) = v20;
    *v20 = v0;
    v20[1] = specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);

    return RequestsManager.PIRContext.requestOPRFData(for:networkManager:)(v19, v21);
  }
}

{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  v6 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay16CryptoKitPrivate3PIRO14BlindedKeywordVGSay8CipherML21AspireApiOPRFResponseVGG_10Foundation4DataVsAE_pTg504_s16fg14Private3PIRO14jk2V8l4ML21nop14V10Foundation4r3Vs5C33_pIgnnozo_AE_AHtAKsAL_pIegnrzr_TRAlpUsAE_pIgnnozo_Tf1cn_n(v3, v1, partial apply for closure #1 in SymmetricPIRClient.validateThenHash(blindedKeywords:oprfResponses:), v5);
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[21];
  if (v2)
  {
    v10 = v0[23];

    outlined destroy of AMDPbHEConfig.OneOf_Config?((v0 + 2), &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);

    outlined destroy of AspirePirKeywordPirParameters(v8, type metadata accessor for SymmetricPIRClient);
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[17];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[19];
    v17 = v0[17];
    v18 = v6;

    v19 = swift_task_alloc();
    *(v19 + 16) = v8;
    v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_8CipherML19SymmetricPirKeywordVs5NeverOTg5(partial apply for closure #2 in SymmetricPIRClient.validateThenHash(blindedKeywords:oprfResponses:), v19, v18);

    outlined destroy of AMDPbHEConfig.OneOf_Config?((v0 + 2), &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);

    outlined destroy of AspirePirKeywordPirParameters(v8, type metadata accessor for SymmetricPIRClient);

    v21 = v0[1];

    return v21(v20);
  }
}

{
  v1 = v0[20];
  outlined destroy of AMDPbHEConfig.OneOf_Config?((v0 + 2), &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for SymmetricPIRClient);
  v2 = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v8 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v5 = v3[21];

    v6 = specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:);
  }

  else
  {
    v6 = specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = *(*(type metadata accessor for AspireApiResponses(0) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for RequestsManager.PIRContext();
  v6[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v13 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v6[29] = v13;
  v14 = *(v13 - 8);
  v6[30] = v14;
  v15 = *(v14 + 64) + 15;
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:), 0, 0);
}

uint64_t specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[15] + *(v0[24] + 24);
  v5 = *(v4 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v0[32] = v5;
  v6 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v5 + v6, v3, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v7 = *(v2 + 48);
  v8 = v7(v3, 1, v1);
  v9 = v0[31];
  if (v8 == 1)
  {
    v11 = v0[28];
    v10 = v0[29];
    *v9 = 0;
    *(v9 + 8) = 0;
    v12 = v9 + v10[6];
    UnknownStorage.init()();
    v13 = v10[7];
    v14 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
    v15 = v10[8];
    v16 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v16 - 8) + 56))(v9 + v15, 1, 1, v16);
    if (v7(v11, 1, v10) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[28], &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(v0[28], v0[31], type metadata accessor for AspirePirKeywordPirParameters);
  }

  v17 = v0[31];
  v18 = v0[27];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17 + *(v0[29] + 28), v18, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  outlined destroy of AspirePirKeywordPirParameters(v17, type metadata accessor for AspirePirKeywordPirParameters);
  v19 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  LODWORD(v17) = (*(*(v19 - 8) + 48))(v18, 1, v19);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if (v17 == 1)
  {
    v20 = v0[25];
    v22 = v0[17];
    v21 = v0[18];
    outlined init with copy of UserIdentifier(v0[15], v20, type metadata accessor for RequestsManager.PIRContext);

    v23 = specialized RequestsManager.EmptyAndNonEmptyShards.init(keywords:shardIds:context:)(v22, v21, v20);
    v25 = v24;
    v26 = *(v24 + 16);
    v27 = MEMORY[0x277D84F90];
    v91 = v23;
    if (v26)
    {
      v93 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
      v28 = v93;
      v89 = v25;
      v29 = (v25 + 40);
      do
      {
        v30 = *(v29 - 1);
        v31 = *v29;
        outlined copy of Data._Representation(v30, *v29);
        v33 = *(v93 + 16);
        v32 = *(v93 + 24);
        if (v33 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        }

        v29 += 4;
        *(v93 + 16) = v33 + 1;
        v34 = v93 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        --v26;
      }

      while (v26);
      v25 = v89;
      v23 = v91;
      v27 = MEMORY[0x277D84F90];
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v41 = v0[22];
    v42 = specialized RequestsManager.EmptyAndNonEmptyShards.nonEmptyShardIds.getter(v25);
    v43 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    v0[42] = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v5 + v43, v41, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v44 = type metadata accessor for AspirePirBatchPirParameters(0);
    v0[43] = v44;
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    v0[44] = v46;
    v0[45] = (v45 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v47 = v46(v41, 1, v44);
    v48 = v0[22];
    v49 = v0[15];
    if (v47 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[22], &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      v50 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v28, v42);

      v51 = v50;
    }

    else
    {

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v48, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      v51 = RequestsManager.PIRContext.createBatchPIRQueries(_:)(v28);
    }

    v90 = v51;
    v0[46] = v51;

    v52 = v23[2];
    v53 = v0[16];
    if (v52)
    {

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
      v54 = v27;
      v55 = v23 + 5;
      do
      {
        v56 = *(v55 - 1);
        v57 = *v55;
        outlined copy of Data._Representation(v56, *v55);
        v59 = v54[2];
        v58 = v54[3];
        v60 = v59 + 1;
        if (v59 >= v58 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
        }

        v55 += 4;
        v54[2] = v60;
        v61 = &v54[2 * v59];
        v61[4] = v56;
        v61[5] = v57;
        --v52;
      }

      while (v52);
      v53 = v0[16];
    }

    else
    {
      v60 = v27[2];
      v62 = v0[16];

      v54 = v27;
      if (!v60)
      {
LABEL_33:
        v0[47] = v53;

        v70 = *(v25 + 16);
        if (v70)
        {
          v94 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
          v71 = v94;
          v72 = (v25 + 40);
          do
          {
            v73 = *(v72 - 1);
            v74 = *v72;
            outlined copy of Data._Representation(v73, *v72);
            v76 = *(v94 + 16);
            v75 = *(v94 + 24);
            if (v76 >= v75 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
            }

            v72 += 4;
            *(v94 + 16) = v76 + 1;
            v77 = v94 + 16 * v76;
            *(v77 + 32) = v73;
            *(v77 + 40) = v74;
            --v70;
          }

          while (v70);
        }

        else
        {

          v71 = MEMORY[0x277D84F90];
        }

        v0[48] = v71;
        v78 = v0[24];
        v79 = v0[14];
        v80 = v0[15];
        v81 = v79[3];
        v82 = v79[4];
        __swift_project_boxed_opaque_existential_1(v79, v81);
        v83 = *(v78 + 20);
        v84 = v80 + *(type metadata accessor for UserIdentifier() + 20);
        v85 = *(v82 + 32);
        v92 = (v85 + *v85);
        v86 = v85[1];
        v87 = swift_task_alloc();
        v0[49] = v87;
        *v87 = v0;
        v87[1] = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
        v88 = v0[19];

        return v92(v88, v90, v84 + v83, v81, v82);
      }
    }

    v63 = v25;
    v64 = v54 + 5;
    do
    {
      v65 = *(v64 - 1);
      v66 = *v64;
      outlined copy of Data._Representation(v65, *v64);
      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v66);
      if (v68)
      {
        v69 = v67;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          specialized _NativeDictionary.copy()();
        }

        outlined consume of Data._Representation(*(*(v53 + 48) + 16 * v69), *(*(v53 + 48) + 16 * v69 + 8));
        outlined consume of Data?(*(*(v53 + 56) + 16 * v69), *(*(v53 + 56) + 16 * v69 + 8));
        specialized _NativeDictionary._delete(at:)(v69, v53);
      }

      outlined consume of Data._Representation(v65, v66);
      v64 += 2;
      --v60;
    }

    while (v60);
    v25 = v63;
    goto LABEL_33;
  }

  v35 = v0[17];

  v36 = swift_task_alloc();
  v0[33] = v36;
  *v36 = v0;
  v36[1] = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  v37 = v0[17];
  v38 = v0[14];
  v39 = v0[15];

  return specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(v37, v38, v39);
}

{
  v111 = v0;
  v1 = *(v0 + 272);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    *&v108 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v108;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      outlined copy of Data._Representation(v5, *v4);
      *&v108 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v3 = v108;
      }

      v4 += 4;
      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      --v2;
    }

    while (v2);
  }

  v10 = v101[35];
  v11 = v101[26];
  v12 = v101[18];
  outlined init with copy of UserIdentifier(v101[15], v11, type metadata accessor for RequestsManager.PIRContext);

  v14 = specialized RequestsManager.EmptyAndNonEmptyShards.init(keywords:shardIds:context:)(v3, v12, v11);
  v15 = v101[34];
  v16 = v101[17];
  if (v10)
  {

    v73 = v101[31];
    v74 = v101[27];
    v75 = v101[28];
    v77 = v101[25];
    v76 = v101[26];
    v79 = v101[22];
    v78 = v101[23];
    v81 = v101[20];
    v80 = v101[21];
    v82 = v101[19];

    v83 = v101[1];

    return v83();
  }

  v17 = v13;
  v107 = v101[17];
  specialized Zip2Sequence.Iterator.next()(&v108);
  v18 = *(&v108 + 1);
  v19 = MEMORY[0x277D84F90];
  v102 = v17;
  v97 = v14;
  if (*(&v108 + 1) >> 60 == 15)
  {
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
  }

  else
  {
    v103 = v101 + 11;
    v20 = v108;
    v99 = MEMORY[0x277D84F90];
    v100 = (v17 + 40);
    v98 = MEMORY[0x277D84F90];
    v21 = v109;
    v104 = v110;
    do
    {
      while (1)
      {
        v22 = *(v17 + 16);
        v105 = v21;
        if (v22)
        {
          v23 = v20;
          *&v108 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
          v19 = v108;
          v24 = v100;
          do
          {
            v25 = *(v24 - 1);
            v26 = *v24;
            outlined copy of Data._Representation(v25, *v24);
            *&v108 = v19;
            v28 = *(v19 + 16);
            v27 = *(v19 + 24);
            if (v28 >= v27 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
              v19 = v108;
            }

            v24 += 4;
            *(v19 + 16) = v28 + 1;
            v29 = v19 + 16 * v28;
            *(v29 + 32) = v25;
            *(v29 + 40) = v26;
            --v22;
          }

          while (v22);
          v17 = v102;
          v20 = v23;
          v21 = v105;
        }

        *v103 = v21;
        v30 = swift_task_alloc();
        *(v30 + 16) = v103;
        v31 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v30, v19);

        if ((v31 & 1) == 0)
        {
          break;
        }

        outlined copy of Data._Representation(v105, *(&v105 + 1));
        outlined copy of Data._Representation(v104, *(&v104 + 1));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v99 + 2) + 1, 1, v99);
        }

        v33 = *(v99 + 2);
        v32 = *(v99 + 3);
        v34 = v105;
        if (v33 >= v32 >> 1)
        {
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v99);
          v34 = v105;
          v99 = v39;
        }

        *(v99 + 2) = v33 + 1;
        v35 = &v99[32 * v33];
        *(v35 + 2) = v34;
        *(v35 + 3) = v104;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1, v98);
        }

        v37 = *(v98 + 2);
        v36 = *(v98 + 3);
        if (v37 >= v36 >> 1)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v98);
        }

        outlined consume of Data._Representation(v105, *(&v105 + 1));
        outlined consume of Data._Representation(v104, *(&v104 + 1));
        *(v98 + 2) = v37 + 1;
        v38 = &v98[16 * v37];
        *(v38 + 4) = v20;
        *(v38 + 5) = v18;
        specialized Zip2Sequence.Iterator.next()(&v108);
        v18 = *(&v108 + 1);
        v20 = v108;
        v21 = v109;
        v104 = v110;
        v14 = v97;
        v19 = MEMORY[0x277D84F90];
        if (*(&v108 + 1) >> 60 == 15)
        {
          goto LABEL_29;
        }
      }

      outlined consume of Data._Representation(v20, v18);
      outlined consume of Data._Representation(v105, *(&v105 + 1));
      outlined consume of Data._Representation(v104, *(&v104 + 1));
      specialized Zip2Sequence.Iterator.next()(&v108);
      v18 = *(&v108 + 1);
      v20 = v108;
      v21 = v109;
      v104 = v110;
      v19 = MEMORY[0x277D84F90];
    }

    while (*(&v108 + 1) >> 60 != 15);
    v14 = v97;
  }

LABEL_29:
  v101[36] = v99;
  v101[37] = v98;

  v40 = v14[2];
  v41 = v101[16];
  if (v40)
  {
    *&v108 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
    v42 = v108;
    v43 = v14 + 5;
    do
    {
      v44 = *(v43 - 1);
      v45 = *v43;
      outlined copy of Data._Representation(v44, *v43);
      *&v108 = v42;
      v47 = v42[2];
      v46 = v42[3];
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
        v42 = v108;
      }

      v43 += 4;
      v42[2] = v48;
      v49 = &v42[2 * v47];
      v49[4] = v44;
      v49[5] = v45;
      --v40;
    }

    while (v40);
    v17 = v102;
    v41 = v101[16];
    goto LABEL_36;
  }

  v42 = MEMORY[0x277D84F90];
  v48 = *(MEMORY[0x277D84F90] + 16);

  if (v48)
  {
LABEL_36:
    v50 = v42 + 5;
    do
    {
      v51 = *(v50 - 1);
      v52 = *v50;
      outlined copy of Data._Representation(v51, *v50);
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
      if (v54)
      {
        v55 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v108 = v41;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v41 = v108;
        }

        outlined consume of Data._Representation(*(*(v41 + 48) + 16 * v55), *(*(v41 + 48) + 16 * v55 + 8));
        outlined consume of Data?(*(*(v41 + 56) + 16 * v55), *(*(v41 + 56) + 16 * v55 + 8));
        specialized _NativeDictionary._delete(at:)(v55, v41);
      }

      outlined consume of Data._Representation(v51, v52);
      v50 += 2;
      --v48;
    }

    while (v48);
  }

  v101[38] = v41;

  v57 = *(v17 + 16);
  v58 = MEMORY[0x277D84F90];
  if (v57)
  {
    *&v108 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57, 0);
    v58 = v108;
    v59 = (v17 + 40);
    do
    {
      v60 = *(v59 - 1);
      v61 = *v59;
      outlined copy of Data._Representation(v60, *v59);
      *&v108 = v58;
      v63 = *(v58 + 16);
      v62 = *(v58 + 24);
      if (v63 >= v62 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
        v58 = v108;
      }

      v59 += 4;
      *(v58 + 16) = v63 + 1;
      v64 = v58 + 16 * v63;
      *(v64 + 32) = v60;
      *(v64 + 40) = v61;
      --v57;
    }

    while (v57);
  }

  v65 = v101[32];
  v66 = v101[23];
  v67 = specialized RequestsManager.EmptyAndNonEmptyShards.nonEmptyShardIds.getter(v102);

  v68 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v65 + v68, v66, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v69 = type metadata accessor for AspirePirBatchPirParameters(0);
  v70 = (*(*(v69 - 8) + 48))(v66, 1, v69);
  v71 = v101[23];
  v72 = v101[15];
  if (v70 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v101[23], &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v85 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v58, v67);
  }

  else
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v85 = RequestsManager.PIRContext.createBatchPIRQueries(_:)(v58);
  }

  v101[39] = v85;
  v86 = v101[24];
  v87 = v101[14];
  v88 = v101[15];

  v89 = v87[3];
  v90 = v87[4];
  __swift_project_boxed_opaque_existential_1(v87, v89);
  v91 = *(v86 + 20);
  v92 = v88 + *(type metadata accessor for UserIdentifier() + 20);
  v93 = *(v90 + 32);
  v106 = (v93 + *v93);
  v94 = v93[1];
  v95 = swift_task_alloc();
  v101[40] = v95;
  *v95 = v101;
  v95[1] = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  v96 = v101[20];

  return v106(v96, v85, v92 + v91, v89, v90);
}

{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  }

  else
  {
    v3 = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v17 = v0[41];
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[37];

  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[22];
  v10 = v0[23];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];

  v15 = v0[1];

  return v15();
}

{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  }

  else
  {
    v3 = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[47];
  v2 = v0[48];

  v16 = v0[50];
  v3 = v0[46];

  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[21];
  v5 = v0[19];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[32] + v0[42], v4, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  LODWORD(v1) = v1(v4, 1, v3);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v6 = *v5;
  v7 = v0[50];
  v8 = v0[48];
  v9 = v0[15];
  if (v1 == 1)
  {
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(v6, v8, closure #1 in RequestsManager.PIRContext.decryptKeywordPIRResponses(_:for:)partial apply, v10);
    if (v7)
    {
      v13 = v0[47];
      v12 = v0[48];
      v14 = v0[19];

      outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for AspireApiResponses);
LABEL_6:

      v20 = v0[46];

      v21 = v0[31];
      v22 = v0[27];
      v23 = v0[28];
      v25 = v0[25];
      v24 = v0[26];
      v27 = v0[22];
      v26 = v0[23];
      v29 = v0[20];
      v28 = v0[21];
      v30 = v0[19];

      v31 = v0[1];

      return v31();
    }

    v33 = v11;
  }

  else
  {
    v15 = *v5;

    v17 = RequestsManager.PIRContext.decryptBatchPIRResponses(_:for:)(v16, v8);
    if (v7)
    {
      v19 = v0[47];
      v18 = v0[48];
      outlined destroy of AspirePirKeywordPirParameters(v0[19], type metadata accessor for AspireApiResponses);

      goto LABEL_6;
    }

    v33 = v17;
  }

  v34 = v0[47];
  v35 = v0[48];
  v36 = *(v35 + 16);

  v89 = v36;
  if (v36)
  {
    v83 = v33;
    v37 = 0;
    v85 = v35 + 32;
    v87 = v0[24];
    result = v33;
    v84 = v0;
    do
    {
      v41 = *(result + 16);
      if (v37 == v41)
      {
        break;
      }

      if (v37 >= v41)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return result;
      }

      v42 = *(v85 + 16 * v37);
      v43 = (v0[15] + *(v87 + 36));
      v93 = v42;
      v95 = *(result + 16 * v37 + 32);
      v44 = *(result + 16 * v37 + 40);
      v45 = *(v85 + 16 * v37 + 8);
      if (*v43)
      {
        v46 = v43[1];
        ObjectType = swift_getObjectType();
        v91 = *(v46 + 48);
        outlined copy of Data._Representation(v93, v45);
        outlined copy of Data?(v95, v44);
        outlined copy of Data._Representation(v93, v45);
        outlined copy of Data?(v95, v44);
        v91(v95, v44, v93, v45, ObjectType, v46);
      }

      else
      {
        outlined copy of Data._Representation(v42, *(&v42 + 1));
        outlined copy of Data?(v95, v44);
      }

      outlined copy of Data?(v95, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v45);
      v51 = v34[2];
      v52 = (v49 & 1) == 0;
      result = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_49;
      }

      v53 = v49;
      if (v34[3] >= result)
      {
        v56 = v95;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v49)
          {
            goto LABEL_13;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v56 = v95;
          if (v53)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, isUniquelyReferenced_nonNull_native);
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v45);
        if ((v53 & 1) != (v55 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v50 = v54;
        v56 = v95;
        if (v53)
        {
LABEL_13:
          v38 = (v34[7] + 16 * v50);
          v39 = *v38;
          v40 = v38[1];
          *v38 = v56;
          outlined consume of Data?(v39, v40);
          outlined consume of Data._Representation(v93, v45);
          outlined consume of Data?(v95, v44);
          goto LABEL_14;
        }
      }

      v34[(v50 >> 6) + 8] |= 1 << v50;
      v57 = 16 * v50;
      *(v34[6] + v57) = v93;
      *(v34[7] + v57) = v56;
      result = outlined consume of Data?(v95, v44);
      v58 = v34[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_50;
      }

      v34[2] = v60;
LABEL_14:
      ++v37;
      result = v83;
      v0 = v84;
    }

    while (v89 != v37);
  }

  v61 = v0[13];
  v62 = *(v61 + 16);
  v63 = MEMORY[0x277D84F90];
  if (v62)
  {
    v97 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0);
    v63 = v97;
    v64 = (v61 + 40);
    do
    {
      if (v34[2])
      {
        v65 = *(v64 - 1);
        v66 = *v64;
        outlined copy of Data._Representation(v65, *v64);
        v67 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v66);
        if (v68)
        {
          v69 = (v34[7] + 16 * v67);
          v70 = *v69;
          v71 = v69[1];
          outlined copy of Data?(*v69, v71);
        }

        else
        {
          v70 = 0;
          v71 = 0xF000000000000000;
        }

        outlined consume of Data._Representation(v65, v66);
      }

      else
      {
        v70 = 0;
        v71 = 0xF000000000000000;
      }

      v73 = *(v97 + 16);
      v72 = *(v97 + 24);
      if (v73 >= v72 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1);
      }

      v64 += 2;
      *(v97 + 16) = v73 + 1;
      v74 = v97 + 16 * v73;
      *(v74 + 32) = v70;
      *(v74 + 40) = v71;
      --v62;
    }

    while (v62);
  }

  outlined destroy of AspirePirKeywordPirParameters(v0[19], type metadata accessor for AspireApiResponses);
  v76 = v0[47];
  v75 = v0[48];
  v77 = v0[46];
  v78 = v0[31];
  v80 = v0[27];
  v79 = v0[28];
  v81 = v0[26];
  v86 = v0[25];
  v88 = v0[23];
  v90 = v0[22];
  v92 = v0[21];
  v94 = v0[20];
  v96 = v0[19];

  v82 = v0[1];

  return v82(v63);
}

uint64_t specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(uint64_t a1)
{
  v3 = *(*v2 + 264);
  v4 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  if (v1)
  {
    v5 = v4[17];

    v6 = v4[31];
    v8 = v4[27];
    v7 = v4[28];
    v10 = v4[25];
    v9 = v4[26];
    v12 = v4[22];
    v11 = v4[23];
    v13 = v4[21];
    v17 = v4[20];
    v14 = v4[19];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:), 0, 0);
  }
}

unint64_t specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)()
{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[15];
  v4 = *v0[20];

  v6 = RequestsManager.PIRContext.decryptSymmetricPIRResponses(_:symmetricPirKeywords:)(v5, v2);
  if (v1)
  {
    outlined destroy of AspirePirKeywordPirParameters(v0[20], type metadata accessor for AspireApiResponses);

    v7 = v0[38];
    v8 = v0[39];
    v9 = v0[36];
    v10 = v0[37];

    v11 = v0[31];
    v12 = v0[27];
    v13 = v0[28];
    v15 = v0[25];
    v14 = v0[26];
    v17 = v0[22];
    v16 = v0[23];
    v19 = v0[20];
    v18 = v0[21];
    v86 = v0[19];

    v20 = v0[1];

    return v20();
  }

  v22 = v6;
  v24 = v0[37];
  v23 = v0[38];

  v25 = *(v24 + 16);

  v80 = v25;
  if (v25)
  {
    v26 = 0;
    v27 = v0[38];
    v76 = v0[37] + 32;
    v78 = v0[24];
    result = v22;
    v74 = v22;
    v75 = v0;
    while (1)
    {
      v31 = *(result + 16);
      if (v26 == v31)
      {
        goto LABEL_26;
      }

      if (v26 >= v31)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      v32 = *(v76 + 16 * v26);
      v33 = (v0[15] + *(v78 + 36));
      v84 = v32;
      v87 = *(result + 16 * v26 + 32);
      v34 = *(result + 16 * v26 + 40);
      v35 = *(v76 + 16 * v26 + 8);
      if (*v33)
      {
        v36 = v33[1];
        ObjectType = swift_getObjectType();
        v82 = *(v36 + 48);
        outlined copy of Data._Representation(v84, v35);
        outlined copy of Data?(v87, v34);
        outlined copy of Data._Representation(v84, v35);
        outlined copy of Data?(v87, v34);
        v82(v87, v34, v84, v35, ObjectType, v36);
      }

      else
      {
        outlined copy of Data._Representation(v32, *(&v32 + 1));
        outlined copy of Data?(v87, v34);
      }

      outlined copy of Data?(v87, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v27;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v84, v35);
      v40 = v27[2];
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_44;
      }

      v44 = v39;
      if (v27[3] >= v43)
      {
        v0 = v75;
        v46 = v87;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v39)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v50 = result;
          specialized _NativeDictionary.copy()();
          v46 = v87;
          result = v50;
          v27 = v89;
          if (v44)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v84, v35);
        v0 = v75;
        if ((v44 & 1) != (v45 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v46 = v87;
        if (v44)
        {
LABEL_7:
          v28 = (v27[7] + 16 * result);
          v29 = *v28;
          v30 = v28[1];
          *v28 = v46;
          outlined consume of Data?(v29, v30);
          outlined consume of Data._Representation(v84, v35);
          outlined consume of Data?(v87, v34);
          goto LABEL_8;
        }
      }

      v27[(result >> 6) + 8] |= 1 << result;
      v47 = 16 * result;
      *(v27[6] + v47) = v84;
      *(v27[7] + v47) = v46;
      result = outlined consume of Data?(v87, v34);
      v48 = v27[2];
      v42 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v42)
      {
        goto LABEL_45;
      }

      v27[2] = v49;
LABEL_8:
      ++v26;
      result = v74;
      if (v80 == v26)
      {
        goto LABEL_26;
      }
    }
  }

  v27 = v0[38];
LABEL_26:

  v51 = v0[13];
  v52 = *(v51 + 16);
  v53 = MEMORY[0x277D84F90];
  if (v52)
  {
    v90 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
    v53 = v90;
    v54 = (v51 + 40);
    do
    {
      if (v27[2])
      {
        v55 = *(v54 - 1);
        v56 = *v54;
        outlined copy of Data._Representation(v55, *v54);
        v57 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v56);
        if (v58)
        {
          v59 = (v27[7] + 16 * v57);
          v60 = *v59;
          v61 = v59[1];
          outlined copy of Data?(*v59, v61);
        }

        else
        {
          v60 = 0;
          v61 = 0xF000000000000000;
        }

        outlined consume of Data._Representation(v55, v56);
      }

      else
      {
        v60 = 0;
        v61 = 0xF000000000000000;
      }

      v63 = *(v90 + 16);
      v62 = *(v90 + 24);
      if (v63 >= v62 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
      }

      v54 += 2;
      *(v90 + 16) = v63 + 1;
      v64 = v90 + 16 * v63;
      *(v64 + 32) = v60;
      *(v64 + 40) = v61;
      --v52;
    }

    while (v52);
  }

  v65 = v0[37];
  outlined destroy of AspirePirKeywordPirParameters(v0[20], type metadata accessor for AspireApiResponses);

  v67 = v0[38];
  v66 = v0[39];
  v68 = v0[36];
  v69 = v0[31];
  v71 = v0[27];
  v70 = v0[28];
  v72 = v0[26];
  v77 = v0[25];
  v79 = v0[23];
  v81 = v0[22];
  v83 = v0[21];
  v85 = v0[20];
  v88 = v0[19];

  v73 = v0[1];

  return v73(v53);
}

uint64_t partial apply for closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RequestsManager.PIRContext() - 8);
  v9 = (*(v8 + 64) + ((*(v8 + 80) + v7 + 8) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 24);
  v20 = *(v1 + 16);
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 8);
  v14 = *(v1 + v6);
  v15 = *(v1 + v7);
  v19 = *(v1 + v9);
  v16 = *(v1 + v9 + 16);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(a1, v20, v10, v1 + v4, v12, v13, v14, v15);
}

uint64_t partial apply for closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(a1, v4, v5, v6, v7, v9, v8);
}

void type metadata completion function for RequestsManager.PIRContext()
{
  type metadata accessor for UserIdentifier();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AspireApiPIRConfig(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SecretKey();
      if (v2 <= 0x3F)
      {
        type metadata accessor for KeyValueCache?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AspireHeEvaluationKeyConfig?();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for KeyValueCache?()
{
  if (!lazy cache variable for type metadata for KeyValueCache?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8CipherML13KeyValueCache_pMd, &_s8CipherML13KeyValueCache_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyValueCache?);
    }
  }
}

void type metadata accessor for AspireHeEvaluationKeyConfig?()
{
  if (!lazy cache variable for type metadata for AspireHeEvaluationKeyConfig?)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AspireHeEvaluationKeyConfig?);
    }
  }
}

uint64_t getEnumTagSinglePayload for RequestsManager.CachedAndMissingKeywords(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestsManager.CachedAndMissingKeywords(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RequestsManager.EmptyAndNonEmptyShards(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestsManager.EmptyAndNonEmptyShards(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t partial apply for specialized closure #1 in Coordinator.run(key:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return specialized closure #1 in Coordinator.run(key:_:)(a1, v4, v5, v7);
}

uint64_t outlined consume of Data??(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return outlined consume of Data?(a1, a2);
  }

  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = (v0 + v3);
  v8 = type metadata accessor for AspireApiConfigResponse(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3, 1, v8))
  {
    v9 = *v7;

    v10 = *(v7 + 1);

    v11 = *(v8 + 24);
    v12 = type metadata accessor for UnknownStorage();
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of AspirePirKeywordPirParameters(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of UserIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AspirePirSymmetricPirClientConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t NetworkManagerError.errorDescription.getter()
{
  v1 = type metadata accessor for NetworkManagerError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of NetworkManagerError(v0, v4, type metadata accessor for NetworkManagerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of AspireApiConfigResponse(v4, type metadata accessor for AspireApiConfigResponse);
      return 0xD00000000000001ALL;
    }

    v11 = *v4;
    v10 = v4[1];
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    MEMORY[0x22AA60A80](0xD000000000000034, 0x8000000225036490);
    MEMORY[0x22AA60A80](v11, v10);
  }

  else
  {
    v7 = *v4;
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v12 = 0xD000000000000019;
    v13 = 0x80000002250364F0;
    if (v7)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (v7)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    MEMORY[0x22AA60A80](v8, v9);

    MEMORY[0x22AA60A80](41, 0xE100000000000000);
  }

  return v12;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.AmsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.AmsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkManagerType.AseCodingKeys()
{
  v1 = 0x746E696F70646E65;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4965727574616566;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkManagerType.AseCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NetworkManagerType.AseCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.AseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.AseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkManagerType.AspireCodingKeys()
{
  v1 = 0x746E696F70646E65;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x726575737369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkManagerType.AspireCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NetworkManagerType.AspireCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.AspireCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.AspireCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NetworkManagerType.AseCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA61420](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkManagerType.AseCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA61420](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkManagerType.CodingKeys()
{
  v1 = *v0;
  v2 = 7564641;
  v3 = 0x657269707361;
  v4 = 0x656E696C66666FLL;
  if (v1 != 3)
  {
    v4 = 0x73757361676570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6648673;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkManagerType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NetworkManagerType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.OfflineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.OfflineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.PegasusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.PegasusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkManagerType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO17PegasusCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO17PegasusCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO17OfflineCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO17OfflineCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x28223BE20](v5);
  v70 = &v67 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO16AspireCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO16AspireCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v76 = *(v82 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v67 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v83 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO13AseCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO13AseCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v69 = *(v80 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO13AmsCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO13AmsCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v67 = *(v68 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v25 = &v67 - v24;
  v26 = type metadata accessor for NetworkManagerType(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v85 = *(v88 - 8);
  v30 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v32 = &v67 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys();
  v87 = v32;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of NetworkManagerError(v84, v29, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v40 = v79;
    v41 = v80;
    v84 = v19;
    v42 = v81;
    v43 = v82;
    v44 = v83;
    if (EnumCaseMultiPayload)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v55 = v54[12];
      v56 = (v29 + v54[16]);
      v58 = *v56;
      v57 = v56[1];
      v79 = v58;
      v80 = v57;
      LODWORD(v75) = *(v29 + v54[20]);
      v60 = v77;
      v59 = v78;
      (*(v78 + 32))(v44, v29, v77);
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v29 + v55, v84, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v98 = 2;
      lazy protocol witness table accessor for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys();
      v61 = v42;
      v62 = v87;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v97 = 0;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v63 = v86;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v63)
      {

        (*(v76 + 8))(v61, v43);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v84, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v59 + 8))(v44, v60);
        return (*(v85 + 8))(v62, v88);
      }

      else
      {
        v96 = 1;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v95 = 2;
        KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
        v65 = v78;

        v94 = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        v66 = v83;
        (*(v76 + 8))(v61, v43);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v84, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v65 + 8))(v66, v60);
        return (*(v85 + 8))(v87, v88);
      }
    }

    else
    {
      v46 = *v29;
      v45 = v29[1];
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      v48 = *(v47 + 48);
      LODWORD(v84) = *(v29 + *(v47 + 64));
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v29 + v48, v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v93 = 1;
      lazy protocol witness table accessor for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys();
      v50 = v87;
      v49 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v92 = 0;
      v51 = v41;
      v52 = v86;
      KeyedEncodingContainer.encode(_:forKey:)();

      if (v52)
      {
        (*(v69 + 8))(v40, v41);
      }

      else
      {
        v91 = 1;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v64 = v69;
        v90 = 2;
        KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
        (*(v64 + 8))(v40, v51);
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return (*(v85 + 8))(v50, v49);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v89 = 0;
      lazy protocol witness table accessor for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys();
      v37 = v87;
      v36 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v67 + 8))(v25, v68);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v99 = 3;
        lazy protocol witness table accessor for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys();
        v35 = v70;
        v37 = v87;
        v36 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v39 = v71;
        v38 = v72;
      }

      else
      {
        v100 = 4;
        lazy protocol witness table accessor for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys();
        v35 = v73;
        v37 = v87;
        v36 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v39 = v74;
        v38 = v75;
      }

      (*(v39 + 8))(v35, v38);
    }

    return (*(v85 + 8))(v37, v36);
  }
}

uint64_t NetworkManagerType.hash(into:)(uint64_t a1)
{
  v58 = a1;
  v2 = type metadata accessor for URL();
  v57 = *(v2 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  v22 = type metadata accessor for NetworkManagerType(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of NetworkManagerError(v1, v25, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v54 = v8;
    v55 = v5;
    v56 = v2;
    v28 = v57;
    if (EnumCaseMultiPayload)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v36 = v35[12];
      v37 = (v25 + v35[16]);
      v39 = *v37;
      v38 = v37[1];
      v51 = v39;
      v52 = v38;
      v53 = *(v25 + v35[20]);
      v40 = v28;
      v41 = *(v28 + 32);
      v43 = v55;
      v42 = v56;
      v50 = v41;
      v41(v55, v25, v56);
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v25 + v36, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      MEMORY[0x22AA61420](2);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      dispatch thunk of Hashable.hash(into:)();
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v15, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if ((*(v40 + 48))(v12, 1, v42) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v47 = v54;
        v50(v54, v12, v42);
        Hasher._combine(_:)(1u);
        dispatch thunk of Hashable.hash(into:)();
        v48 = v47;
        v43 = v55;
        (*(v40 + 8))(v48, v42);
      }

      if (v52)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v53);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return (*(v40 + 8))(v43, v42);
    }

    else
    {
      v30 = *v25;
      v29 = v25[1];
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      v32 = *(v31 + 48);
      LODWORD(v55) = *(v25 + *(v31 + 64));
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v25 + v32, v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      MEMORY[0x22AA61420](1);
      String.hash(into:)();

      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21, v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v33 = v56;
      if ((*(v28 + 48))(v18, 1, v56) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v44 = v54;
        (*(v28 + 32))(v54, v18, v33);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        dispatch thunk of Hashable.hash(into:)();
        (*(v28 + 8))(v44, v33);
      }

      v45 = v55;
      if (v55 == 2)
      {
        v46 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v46 = v45 & 1;
      }

      Hasher._combine(_:)(v46);
      return outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = 0;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    return MEMORY[0x22AA61420](v27);
  }
}

Swift::Int NetworkManagerType.hashValue.getter()
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t NetworkManagerType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO17PegasusCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO17PegasusCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v93 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO17OfflineCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO17OfflineCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v6);
  v92 = &v79 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO16AspireCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO16AspireCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v90 = *(v96 - 8);
  v9 = *(v90 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO13AseCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO13AseCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v12 = *(v11 - 8);
  v88 = v11;
  v89 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v94 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO13AmsCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO13AmsCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v15);
  v91 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v98 = *(v18 - 8);
  v19 = *(v98 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v79 - v20;
  v22 = type metadata accessor for NetworkManagerType(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = (&v79 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = &v79 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys();
  v34 = v99;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v34)
  {
    v79 = v28;
    v35 = v94;
    v36 = v95;
    v80 = v25;
    v99 = v22;
    v81 = v31;
    v37 = v96;
    v38 = v97;
    v39 = v21;
    v40 = KeyedDecodingContainer.allKeys.getter();
    v41 = v40;
    if (*(v40 + 16) != 1 || (v42 = *(v40 + 32), v42 == 5))
    {
      v44 = type metadata accessor for DecodingError();
      swift_allocError();
      v46 = v45;
      v47 = v18;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v46 = v99;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
      swift_willThrow();
      (*(v98 + 8))(v21, v47);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v40 + 32) <= 1u)
      {
        if (*(v40 + 32))
        {
          v105 = 1;
          lazy protocol witness table accessor for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v50 = v38;
          v55 = v35;
          v93 = v39;
          v104 = 0;
          v56 = v88;
          v60 = KeyedDecodingContainer.decode(_:forKey:)();
          v92 = v18;
          v62 = v61;
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
          v91 = 0;
          v64 = v63;
          v65 = *(v63 + 48);
          v66 = v79;
          *v79 = v60;
          v66[1] = v62;
          v96 = v62;
          type metadata accessor for URL();
          v103 = 1;
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
          v67 = v91;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          if (v67)
          {
            (*(v89 + 8))(v55, v56);
            (*(v98 + 8))(v93, v92);

            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v100);
          }

          v102 = 2;
          v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v74 = *(v64 + 64);
          (*(v89 + 8))(v55, v56);
          (*(v98 + 8))(v93, v92);
          swift_unknownObjectRelease();
          v75 = v79;
          *(v79 + v74) = v73;
          swift_storeEnumTagMultiPayload();
          v76 = v75;
          v51 = v81;
          outlined init with take of NetworkManagerType(v76, v81, type metadata accessor for NetworkManagerType);
        }

        else
        {
          v101 = 0;
          lazy protocol witness table accessor for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys();
          v49 = v91;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v50 = v38;
          (*(v82 + 8))(v49, v83);
          (*(v98 + 8))(v39, v18);
          swift_unknownObjectRelease();
          v51 = v81;
          swift_storeEnumTagMultiPayload();
        }
      }

      else if (v42 == 2)
      {
        v110 = 2;
        lazy protocol witness table accessor for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v92 = v18;
        v93 = v21;
        type metadata accessor for URL();
        v109 = 0;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v52 = v36;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v94 = v41;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v58 = v57[12];
        v108 = 1;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v59 = v90;
        v107 = 2;
        v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v69 = v80;
        v70 = &v80[v57[16]];
        *v70 = v68;
        v70[1] = v71;
        v89 = v71;
        v106 = 3;
        v72 = KeyedDecodingContainer.decode(_:forKey:)();
        v91 = 0;
        v77 = v72;
        v78 = v57[20];
        (*(v59 + 8))(v52, v37);
        (*(v98 + 8))(v93, v92);
        swift_unknownObjectRelease();
        *(v69 + v78) = v77 & 1;
        swift_storeEnumTagMultiPayload();
        v51 = v81;
        outlined init with take of NetworkManagerType(v69, v81, type metadata accessor for NetworkManagerType);
        v50 = v38;
      }

      else
      {
        if (v42 == 3)
        {
          v111 = 3;
          lazy protocol witness table accessor for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys();
          v43 = v92;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v84 + 8))(v43, v85);
        }

        else
        {
          v112 = 4;
          lazy protocol witness table accessor for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys();
          v53 = v93;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v86 + 8))(v53, v87);
        }

        (*(v98 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v51 = v81;
        swift_storeEnumTagMultiPayload();
        v50 = v38;
      }

      outlined init with take of NetworkManagerType(v51, v50, type metadata accessor for NetworkManagerType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v100);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NetworkManagerType()
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkManagerType()
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkConfig.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkConfig.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002250365E0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML13NetworkConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML13NetworkConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for NetworkManagerType(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkManagerType and conformance NetworkManagerType, type metadata accessor for NetworkManagerType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for NetworkConfig(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NetworkConfig.hash(into:)(uint64_t a1)
{
  NetworkManagerType.hash(into:)(a1);
  v2 = (v1 + *(type metadata accessor for NetworkConfig(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NetworkConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v4);
  v1 = (v0 + *(type metadata accessor for NetworkConfig(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t NetworkConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for NetworkManagerType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML13NetworkConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML13NetworkConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NetworkConfig(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v10;
  v15 = v13;
  v16 = v28;
  v32 = 0;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkManagerType and conformance NetworkManagerType, type metadata accessor for NetworkManagerType);
  v18 = v29;
  v17 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of NetworkManagerType(v18, v15, type metadata accessor for NetworkManagerType);
  v31 = 1;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v20;
  (*(v16 + 8))(v9, v17);
  v22 = v27;
  v23 = (v15 + *(v26 + 20));
  *v23 = v19;
  v23[1] = v21;
  outlined init with copy of NetworkManagerError(v15, v22, type metadata accessor for NetworkConfig);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of AspireApiConfigResponse(v15, type metadata accessor for NetworkConfig);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NetworkConfig(uint64_t a1)
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v6);
  v3 = (v1 + *(a1 + 20));
  if (v3[1])
  {
    v4 = *v3;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NetworkConfig(uint64_t a1, uint64_t a2)
{
  NetworkManagerType.hash(into:)(a1);
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkConfig(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v7);
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t NetworkConfig.secondaryIdentifier.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkManagerConfig.CodingKeys()
{
  if (*v0)
  {
    result = 0x69746167656C6564;
  }

  else
  {
    result = 0x6769666E6F63;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkManagerConfig.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746167656C6564 && a2 == 0xEA00000000006E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkManagerConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20NetworkManagerConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20NetworkManagerConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for NetworkConfig(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkConfig and conformance NetworkConfig, type metadata accessor for NetworkConfig);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for NetworkManagerConfig(0) + 20));
    v12[15] = 1;
    lazy protocol witness table accessor for type NetworkDelegationConfig and conformance NetworkDelegationConfig();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NetworkManagerConfig.hash(into:)(uint64_t a1)
{
  NetworkManagerType.hash(into:)(a1);
  v2 = (v1 + *(type metadata accessor for NetworkConfig(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = (v1 + *(type metadata accessor for NetworkManagerConfig(0) + 20));
  if (!v4[1])
  {
    return MEMORY[0x22AA61420](0);
  }

  v5 = *v4;
  MEMORY[0x22AA61420](1);

  return String.hash(into:)();
}

Swift::Int NetworkManagerConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v6);
  v1 = (v0 + *(type metadata accessor for NetworkConfig(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = (v0 + *(type metadata accessor for NetworkManagerConfig(0) + 20));
  if (v3[1])
  {
    v4 = *v3;
    MEMORY[0x22AA61420](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x22AA61420](0);
  }

  return Hasher._finalize()();
}

uint64_t NetworkConfig.init(type:secondaryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  outlined init with take of NetworkManagerType(a1, a6, a4);
  result = a5(0);
  v11 = (a6 + *(result + 20));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t NetworkManagerConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for NetworkConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20NetworkManagerConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20NetworkManagerConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for NetworkManagerConfig(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v21;
  v17 = v14;
  LOBYTE(v24) = 0;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkConfig and conformance NetworkConfig, type metadata accessor for NetworkConfig);
  v18 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of NetworkManagerType(v23, v17, type metadata accessor for NetworkConfig);
  v25 = 1;
  lazy protocol witness table accessor for type NetworkDelegationConfig and conformance NetworkDelegationConfig();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v24;
  outlined init with copy of NetworkManagerError(v17, v20, type metadata accessor for NetworkManagerConfig);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of AspireApiConfigResponse(v17, type metadata accessor for NetworkManagerConfig);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NetworkManagerConfig(uint64_t a1, uint64_t a2)
{
  NetworkManagerType.hash(into:)(a1);
  v4 = (v2 + *(type metadata accessor for NetworkConfig(0) + 20));
  if (v4[1])
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = (v2 + *(a2 + 20));
  if (!v6[1])
  {
    return MEMORY[0x22AA61420](0);
  }

  v7 = *v6;
  MEMORY[0x22AA61420](1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkManagerConfig(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v9);
  v4 = (v2 + *(type metadata accessor for NetworkConfig(0) + 20));
  if (v4[1])
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = (v2 + *(a2 + 20));
  if (v6[1])
  {
    v7 = *v6;
    MEMORY[0x22AA61420](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x22AA61420](0);
  }

  return Hasher._finalize()();
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for NetworkManagerHelper();
  v0 = swift_allocObject();
  result = NetworkManagerHelper.init(cacheSize:)(15);
  static NetworkManagerHelper.shared = v0;
  return result;
}

{
  v0 = type metadata accessor for WorkAroundForIdleMemory();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  result = static ContinuousClock.Instant.now.getter();
  *(v3 + OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_transaction) = 0;
  static WorkAroundForIdleMemory.shared = v3;
  return result;
}

{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for tokenCacheFile != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static CacheDirectory.tokenCacheFile);
  (*(v1 + 16))(v4, v5, v0);
  result = specialized TokenCache.__allocating_init(file:currentDate:)(v4, closure #1 in default argument 1 of TokenCache.init(file:currentDate:), 0);
  static TokenCache.shared = result;
  return result;
}

uint64_t NetworkManagerHelper.__allocating_init(cacheSize:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NetworkManagerHelper.init(cacheSize:)(a1);
  return v2;
}

uint64_t *NetworkManagerHelper.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static NetworkManagerHelper.shared;
}

uint64_t static NetworkManagerHelper.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for aseURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v4, static NetworkManagerHelper.aseURL);
  v5 = __swift_project_value_buffer(v4, static NetworkManagerHelper.aseURL);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t NetworkManagerHelper.aseURL.unsafeMutableAddressor()
{
  if (one-time initialization token for aseURL != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return __swift_project_value_buffer(v0, static NetworkManagerHelper.aseURL);
}

uint64_t static NetworkManagerHelper.aseURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for aseURL != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static NetworkManagerHelper.aseURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t NetworkManagerHelper.init(cacheSize:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16InMemoryLRUCacheCyAA20NetworkManagerConfigVAA0fG0_pGMd, &_s8CipherML16InMemoryLRUCacheCyAA20NetworkManagerConfigVAA0fG0_pGMR);
  v3 = swift_allocObject();
  v4 = type metadata accessor for NetworkManagerConfig(0);
  v3[4] = 0;
  v3[3] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16InMemoryLRUCacheC14LinkedListNodeCyAA20NetworkManagerConfigVAA0iJ0_p_GMd, &_s8CipherML16InMemoryLRUCacheC14LinkedListNodeCyAA20NetworkManagerConfigVAA0iJ0_p_GMR);
  v6 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkManagerConfig and conformance NetworkManagerConfig, type metadata accessor for NetworkManagerConfig);
  v3[2] = MEMORY[0x22AA608D0](a1, v4, v5, v6);
  swift_beginAccess();
  v7 = v3[3];
  v3[3] = 0;

  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy8CipherML16InMemoryLRUCacheCyAC20NetworkManagerConfigVAC0hI0_pGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy8CipherML16InMemoryLRUCacheCyAC20NetworkManagerConfigVAC0hI0_pGSo16os_unfair_lock_sVGMR);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v3;
  *(v1 + 16) = v8;
  return v1;
}

uint64_t static NetworkManagerHelper.networkManager(managerConfig:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static NetworkManagerHelper.shared + 96))();
}

uint64_t static NetworkManagerHelper.createNetworkManager(managerConfig:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v167 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v160 = &v151 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v158 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v164 = &v151 - v10;
  MEMORY[0x28223BE20](v11);
  v161 = &v151 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v151 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v151 - v17;
  MEMORY[0x28223BE20](v19);
  v159 = &v151 - v20;
  v163 = type metadata accessor for URL();
  v166 = *(v163 - 8);
  v21 = *(v166 + 64);
  MEMORY[0x28223BE20](v163);
  v23 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v151 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v151 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v151 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v151 - v34;
  v36 = type metadata accessor for NetworkManagerType(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = (&v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = type metadata accessor for NetworkConfig(0);
  v40 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v169 = &v151 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NetworkManagerError(a1, v169, type metadata accessor for NetworkConfig);
  v42 = (a1 + *(type metadata accessor for NetworkManagerConfig(0) + 20));
  v44 = *v42;
  v43 = v42[1];
  v165 = v44;
  v168 = v43;
  outlined init with copy of NetworkManagerError(a1, v39, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v155 = v23;
    v156 = v18;
    v157 = v26;
    v159 = v29;
    v50 = v164;
    if (EnumCaseMultiPayload)
    {
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v83 = v82[12];
      v84 = (v39 + v82[16]);
      v85 = *v84;
      v156 = v84[1];
      v154 = *(v39 + v82[20]);
      v86 = v166;
      v87 = *(v166 + 32);
      v88 = v159;
      v89 = v163;
      v151 = v166 + 32;
      v152 = v87;
      v153 = v85;
      v87(v159, v39, v163);
      v90 = v39 + v83;
      v91 = v161;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v90, v161, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v92 = *(v86 + 16);
      v93 = v157;
      v92(v157, v88, v89);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v91, v50, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v94 = (v169 + *(v162 + 20));
      v95 = *v94;
      v96 = v94[1];
      v97 = type metadata accessor for AspireNetworkManager();
      v98 = *(v97 + 48);
      v99 = *(v97 + 52);
      v162 = v97;
      v100 = swift_allocObject();
      v101 = v168;

      v102 = v165;
      v103 = specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(v165, v101, v95, v96);
      type metadata accessor for ManagedURLSession();
      v104 = swift_allocObject();
      v105 = [objc_opt_self() sessionWithConfiguration_];

      *(v104 + 16) = v105;
      v106 = v89;
      v107 = v93;
      v108 = v92;
      v92((v100 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl), v107, v89);
      v109 = (v100 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);
      v110 = v156;
      *v109 = v153;
      v109[1] = v110;
      v111 = (v100 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
      *v111 = v102;
      v111[1] = v101;
      *(v100 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_privacyProxyFailClosed) = v154;
      if (v110)
      {
        v112 = v158;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v164, v158, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v113 = v166;
        v114 = *(v166 + 48);
        if (v114(v112, 1, v106) == 1)
        {
          v115 = v155;
          v108(v155, v157, v106);
          v116 = v114(v112, 1, v106);
          v117 = v156;
          swift_bridgeObjectRetain_n();
          v118 = v116 == 1;
          v119 = v115;
          v120 = v161;
          v121 = v159;
          v122 = v112;
          v123 = v117;
          if (!v118)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          }
        }

        else
        {
          v119 = v155;
          v152(v155, v112, v106);
          v123 = v156;
          swift_bridgeObjectRetain_n();
          v120 = v161;
          v121 = v159;
        }

        v144 = v160;
        v152(v160, v119, v106);
        v146 = type metadata accessor for TokenFetcher(0);
        v147 = (v144 + v146[5]);
        *v147 = v153;
        v147[1] = v123;
        *(v144 + v146[6]) = v104;
        *(v144 + v146[7]) = v154;
        (*(*(v146 - 1) + 56))(v144, 0, 1, v146);

        v145 = v164;
      }

      else
      {
        v143 = type metadata accessor for TokenFetcher(0);
        v144 = v160;
        (*(*(v143 - 8) + 56))(v160, 1, 1, v143);
        v113 = v166;
        v120 = v161;
        v145 = v164;
        v121 = v159;
      }

      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v144, v100 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
      v148 = (v100 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
      *v148 = 0;
      v148[1] = 0;
      *(v100 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) = v104;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v145, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v149 = *(v113 + 8);
      v149(v157, v106);
      v150 = v167;
      v167[3] = v162;
      v150[4] = &protocol witness table for AspireNetworkManager;
      *v150 = v100;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v120, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v149(v121, v106);
    }

    else
    {
      v51 = v39[1];
      v164 = *v39;
      v161 = v51;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      v53 = *(v39 + *(v52 + 64));
      v54 = v39 + *(v52 + 48);
      v55 = v156;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v54, v156, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v55, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v56 = v166;
      v57 = *(v166 + 48);
      v58 = v163;
      if (v57(v15, 1, v163) == 1)
      {
        v59 = one-time initialization token for aseURL;

        if (v59 != -1)
        {
          swift_once();
        }

        v58 = v163;
        v60 = __swift_project_value_buffer(v163, static NetworkManagerHelper.aseURL);
        v56 = v166;
        (*(v166 + 16))(v32, v60, v58);
        v61 = v32;
        if (v57(v15, 1, v58) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }
      }

      else
      {
        v61 = v32;
        (*(v56 + 32))(v32, v15, v58);
      }

      LODWORD(v163) = (v53 == 2) | v53;
      v124 = (v169 + *(v162 + 20));
      v125 = *v124;
      v126 = v124[1];
      v127 = type metadata accessor for AspireNetworkManager();
      v128 = *(v127 + 48);
      v129 = *(v127 + 52);
      v130 = swift_allocObject();
      v131 = v165;
      v132 = v168;
      v133 = specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(v165, v168, v125, v126);
      type metadata accessor for ManagedURLSession();
      v134 = swift_allocObject();
      v135 = [objc_opt_self() sessionWithConfiguration_];

      *(v134 + 16) = v135;
      (*(v56 + 16))(v130 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl, v61, v58);
      v136 = (v130 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);
      *v136 = 0;
      v136[1] = 0;
      v137 = (v130 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
      *v137 = v131;
      v137[1] = v132;
      *(v130 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_privacyProxyFailClosed) = v163 & 1;
      v138 = OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher;
      v139 = type metadata accessor for TokenFetcher(0);
      (*(*(v139 - 8) + 56))(v130 + v138, 1, 1, v139);
      v140 = (v130 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
      v141 = v161;
      *v140 = v164;
      v140[1] = v141;
      *(v130 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) = v134;
      (*(v56 + 8))(v61, v58);
      v142 = v167;
      v167[3] = v127;
      v142[4] = &protocol witness table for AspireNetworkManager;
      *v142 = v130;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v156, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    v75 = v169;
    return outlined destroy of AspireApiConfigResponse(v75, type metadata accessor for NetworkConfig);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v46 = v168;
    v47 = v169;
    if (EnumCaseMultiPayload == 3)
    {
      result = outlined destroy of AspireApiConfigResponse(v169, type metadata accessor for NetworkConfig);
      v49 = v167;
      *v167 = 0u;
      *(v49 + 1) = 0u;
      v49[4] = 0;
      return result;
    }

    v76 = type metadata accessor for PegasusNetworking();
    v77 = swift_allocObject();

    swift_defaultActor_initialize();
    v77[15] = v165;
    v77[16] = v46;
    v78 = type metadata accessor for PegasusProxyForEncryptedPQAGeo();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();

    v77[14] = PegasusProxyForEncryptedPQAGeo.init(clientBundleId:)();
    v81 = v167;
    v167[3] = v76;
    v81[4] = &protocol witness table for PegasusNetworking;
    *v81 = v77;
    v75 = v47;
    return outlined destroy of AspireApiConfigResponse(v75, type metadata accessor for NetworkConfig);
  }

  v62 = v169;
  v63 = (v169 + *(v162 + 20));
  v64 = *v63;
  v65 = v63[1];

  v66 = v168;

  v67 = v159;
  URL.init(string:)();
  v68 = v166;
  v69 = v163;
  result = (*(v166 + 48))(v67, 1, v163);
  if (result != 1)
  {
    (*(v68 + 32))(v35, v67, v69);
    v70 = type metadata accessor for AMSNetworking();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    v73 = AMSNetworking.init(networkDelegationConfig:secondaryIdentifier:baseURL:)(v165, v66, v64, v65, v35);
    v74 = v167;
    v167[3] = v70;
    v74[4] = &protocol witness table for AMSNetworking;
    *v74 = v73;
    v75 = v62;
    return outlined destroy of AspireApiConfigResponse(v75, type metadata accessor for NetworkConfig);
  }

  __break(1u);
  return result;
}

double NetworkManagerHelper.networkManager(managerConfig:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NetworkManagerConfig(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 16);
  v14 = a1;
  os_unfair_lock_lock((v9 + 24));
  partial apply for closure #1 in NetworkManagerHelper.networkManager(managerConfig:)(v9 + 16);
  os_unfair_lock_unlock((v9 + 24));
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, &v15, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  if (v16)
  {
    outlined init with take of LocalizedError(&v15, a2);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v15, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    type metadata accessor for NetworkManagerHelper();
    static NetworkManagerHelper.createNetworkManager(managerConfig:)(a1, &v15);
    outlined assign with take of NetworkManager?(&v15, v17);
    os_unfair_lock_lock((v9 + 24));
    v11 = *(v9 + 16);
    outlined init with copy of NetworkManagerError(a1, v8, type metadata accessor for NetworkManagerConfig);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, &v15, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    (*(*v11 + 248))(&v15, v8);
    os_unfair_lock_unlock((v9 + 24));
    result = *v17;
    v12 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v18;
  }

  return result;
}

uint64_t NetworkManagerHelper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t NetworkManagerHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized static NetworkManagerConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static NetworkManagerType.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NetworkConfig(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(type metadata accessor for NetworkManagerConfig(0) + 20);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (v14)
    {
      v15 = *v11 == *v13 && v12 == v14;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

uint64_t specialized static NetworkManagerType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v122 = a1;
  v123 = a2;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v118 = v2;
  v119 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v117 = &v104[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v114 = &v104[-v7];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  v8 = *(*(v115 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v115);
  v121 = &v104[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v120 = &v104[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v113 = &v104[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v104[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v104[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v104[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v104[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v104[-v27];
  v29 = type metadata accessor for NetworkManagerType(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v104[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v35 = &v104[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18NetworkManagerTypeO_ACtMd, &_s8CipherML18NetworkManagerTypeO_ACtMR);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v104[-v39];
  v41 = &v104[*(v38 + 56) - v39];
  outlined init with copy of NetworkManagerError(v122, &v104[-v39], type metadata accessor for NetworkManagerType);
  outlined init with copy of NetworkManagerError(v123, v41, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_12:
      v51 = v40;
LABEL_13:
      outlined destroy of AspireApiConfigResponse(v51, type metadata accessor for NetworkManagerType);
      return 1;
    }

LABEL_21:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML18NetworkManagerTypeO_ACtMd, &_s8CipherML18NetworkManagerTypeO_ACtMR);
    return 0;
  }

  v110 = v23;
  v111 = v26;
  v122 = v28;
  v123 = v20;
  v43 = v120;
  v44 = v121;
  v112 = v40;
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of NetworkManagerError(v40, v35, type metadata accessor for NetworkManagerType);
    v46 = *v35;
    v45 = v35[1];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
    v48 = *(v47 + 48);
    v49 = *(v47 + 64);
    v50 = *(v35 + v49);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v35 + v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

LABEL_20:
      v40 = v112;
      goto LABEL_21;
    }

    LODWORD(v121) = v50;
    v77 = *v41;
    v78 = v41[1];
    LODWORD(v123) = *(v41 + v49);
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v35 + v48, v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v79 = v111;
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v41 + v48, v111, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v46 == v77 && v45 == v78)
    {

      v81 = v114;
      v80 = v115;
      v82 = v43;
    }

    else
    {
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v81 = v114;
      v80 = v115;
      v82 = v43;
      if ((v84 & 1) == 0)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v79, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_45;
      }
    }

    v85 = *(v80 + 48);
    v86 = v122;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v122, v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v79, v82 + v85, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v87 = v119;
    v88 = *(v119 + 48);
    v89 = v79;
    v90 = v118;
    if (v88(v82, 1, v118) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v89, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v86, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v88(v82 + v85, 1, v90) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_37;
      }
    }

    else
    {
      v91 = v110;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v82, v110, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v88(v82 + v85, 1, v90) != 1)
      {
        (*(v87 + 32))(v81, v82 + v85, v90);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v93 = dispatch thunk of static Equatable.== infix(_:_:)();
        v94 = *(v87 + 8);
        v94(v81, v90);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v111, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v94(v91, v90);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if (v93)
        {
LABEL_37:
          if (v121 == 2)
          {
            v51 = v112;
            if (v123 == 2)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v51 = v112;
            if (v123 != 2 && ((v123 ^ v121) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

LABEL_46:
          outlined destroy of AspireApiConfigResponse(v51, type metadata accessor for NetworkManagerType);
          return 0;
        }

LABEL_45:
        v51 = v112;
        goto LABEL_46;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v111, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v87 + 8))(v91, v90);
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v82, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    goto LABEL_45;
  }

  v53 = v33;
  outlined init with copy of NetworkManagerError(v40, v33, type metadata accessor for NetworkManagerType);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v55 = v54[12];
  v56 = v54[16];
  v58 = *&v33[v56];
  v57 = *&v33[v56 + 8];
  v59 = v54[20];
  v60 = v53[v59];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v53[v55], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v119 + 8))(v53, v118);
    goto LABEL_20;
  }

  v122 = v57;
  v61 = *(v41 + v56 + 8);
  v107 = *(v41 + v56);
  v108 = v58;
  v120 = v61;
  v109 = *(v41 + v59);
  v63 = v118;
  v62 = v119;
  v64 = v117;
  v110 = *(v119 + 32);
  v111 = (v119 + 32);
  (v110)(v117, v41, v118);
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(&v53[v55], v123, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v65 = v41 + v55;
  v66 = v63;
  v67 = v116;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v65, v116, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v68 = static URL.== infix(_:_:)();
  v69 = *(v62 + 8);
  v69(v53, v66);
  if ((v68 & 1) == 0)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v83 = v123;
LABEL_43:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v83, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v95 = v64;
    goto LABEL_44;
  }

  v105 = v60;
  v106 = v69;
  v70 = *(v115 + 48);
  v71 = v123;
  v72 = v44;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v123, v44, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v73 = v119;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v67, v44 + v70, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v74 = *(v73 + 48);
  v75 = v74(v44, 1, v66);
  v76 = v71;
  if (v75 == 1)
  {
    if (v74(v72 + v70, 1, v66) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v69 = v106;
      goto LABEL_49;
    }

    v69 = v106;
    goto LABEL_41;
  }

  v92 = v113;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v72, v113, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v74(v72 + v70, 1, v66) == 1)
  {

    v69 = v106;
    v106(v92, v66);
LABEL_41:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v72, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
LABEL_42:
    v64 = v117;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v116, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v83 = v71;
    goto LABEL_43;
  }

  v96 = v72 + v70;
  v97 = v92;
  v98 = v114;
  (v110)(v114, v96, v66);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v99 = dispatch thunk of static Equatable.== infix(_:_:)();
  v69 = v106;
  v106(v98, v66);
  v69(v97, v66);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v99 & 1) == 0)
  {

    goto LABEL_42;
  }

LABEL_49:
  v100 = v120;
  if (v122)
  {
    v101 = v105;
    if (v120)
    {
      if (v108 == v107 && v122 == v120)
      {

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v69(v117, v66);
      }

      else
      {
        v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v69(v117, v66);
        if ((v102 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_63;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v95 = v117;
LABEL_44:
    v69(v95, v66);
    goto LABEL_45;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v69(v117, v66);
  v101 = v105;
  if (v100)
  {

    goto LABEL_45;
  }

LABEL_63:
  v103 = v101 ^ v109;
  outlined destroy of AspireApiConfigResponse(v112, type metadata accessor for NetworkManagerType);
  return v103 ^ 1u;
}

uint64_t specialized static NetworkConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (specialized static NetworkManagerType.== infix(_:_:)(a1, a2))
  {
    v4 = *(type metadata accessor for NetworkConfig(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static NetworkManagerError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for AspireApiConfigResponse(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NetworkManagerError(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v34 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML19NetworkManagerErrorO_ACtMd, &_s8CipherML19NetworkManagerErrorO_ACtMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v34 - v20;
  v22 = (&v34 + *(v19 + 56) - v20);
  outlined init with copy of NetworkManagerError(a1, &v34 - v20, type metadata accessor for NetworkManagerError);
  outlined init with copy of NetworkManagerError(a2, v22, type metadata accessor for NetworkManagerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of NetworkManagerError(v21, v14, type metadata accessor for NetworkManagerError);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of NetworkManagerType(v22, v6, type metadata accessor for AspireApiConfigResponse);
        if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML15AspireApiConfigVTt1g5(*v14, *v6) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AspireApiKeyStatusV_Tt1g5(v14[1], v6[1]))
        {
          v24 = *(v35 + 24);
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            outlined destroy of AspireApiConfigResponse(v6, type metadata accessor for AspireApiConfigResponse);
            outlined destroy of AspireApiConfigResponse(v14, type metadata accessor for AspireApiConfigResponse);
LABEL_25:
            outlined destroy of AspireApiConfigResponse(v21, type metadata accessor for NetworkManagerError);
            v26 = 1;
            return v26 & 1;
          }
        }

        outlined destroy of AspireApiConfigResponse(v6, type metadata accessor for AspireApiConfigResponse);
        outlined destroy of AspireApiConfigResponse(v14, type metadata accessor for AspireApiConfigResponse);
LABEL_21:
        outlined destroy of AspireApiConfigResponse(v21, type metadata accessor for NetworkManagerError);
        goto LABEL_22;
      }

      outlined destroy of AspireApiConfigResponse(v14, type metadata accessor for AspireApiConfigResponse);
    }

    else
    {
      outlined init with copy of NetworkManagerError(v21, v11, type metadata accessor for NetworkManagerError);
      v28 = *v11;
      v27 = v11[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v28 == *v22 && v27 == v22[1])
        {
          v33 = v22[1];

          goto LABEL_25;
        }

        v30 = v22[1];
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

LABEL_19:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML19NetworkManagerErrorO_ACtMd, &_s8CipherML19NetworkManagerErrorO_ACtMR);
LABEL_22:
    v26 = 0;
    return v26 & 1;
  }

  outlined init with copy of NetworkManagerError(v21, v16, type metadata accessor for NetworkManagerError);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_19;
  }

  v25 = *v16 ^ *v22;
  outlined destroy of AspireApiConfigResponse(v21, type metadata accessor for NetworkManagerError);
  v26 = v25 ^ 1;
  return v26 & 1;
}

unint64_t specialized static NetworkManagerHelper.inQaEnvironment()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x22AA609C0](0xD00000000000001ALL, 0x8000000225036600);
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = MEMORY[0x22AA609C0](7761509, 0xE300000000000000);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    v2 = *(&v7 + 1) != 0;
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(&v8, &_sypSgMd, &_sypSgMR);
  return v2;
}

void specialized static NetworkManagerHelper.configureSecondaryIdentifier(configuration:secondaryIdentifier:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (specialized static NetworkManagerHelper.inQaEnvironment()())
    {
      if (one-time initialization token for networking != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.networking);

      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v16 = v9;
        *v8 = 136446210;
        *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
        _os_log_impl(&dword_224E26000, oslog, v7, "Skipping setting secondaryIdentifier = %{public}s because we are in a QA environment", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x22AA61F40](v9, -1, -1);
        MEMORY[0x22AA61F40](v8, -1, -1);

        return;
      }
    }

    else
    {
      if (one-time initialization token for networking != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.networking);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
        _os_log_impl(&dword_224E26000, v11, v12, "Setting secondaryIdentifier %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA61F40](v14, -1, -1);
        MEMORY[0x22AA61F40](v13, -1, -1);
      }

      oslog = MEMORY[0x22AA609C0](a2, a3);
      [a1 set:oslog sourceApplicationSecondaryIdentifier:?];
    }
  }
}

id specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() ephemeralSessionConfiguration];
  [v8 setURLCache_];
  [v8 setURLCredentialStorage_];
  [v8 setHTTPCookieStorage_];
  [v8 set:0 alternativeServicesStorage:?];
  if (a2)
  {
    v9 = MEMORY[0x22AA609C0](a1, a2);
    [v8 set:v9 sourceApplicationBundleIdentifier:?];
  }

  specialized static NetworkManagerHelper.configureSecondaryIdentifier(configuration:secondaryIdentifier:)(v8, a3, a4);
  [v8 setUsesClassicLoadingMode_];
  return v8;
}

unint64_t lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys);
  }

  return result;
}