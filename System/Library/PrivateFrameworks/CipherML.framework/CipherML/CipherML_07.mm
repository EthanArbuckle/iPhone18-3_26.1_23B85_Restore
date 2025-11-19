uint64_t RequestsManager.fetchStatus(useCase:)(uint64_t a1, uint64_t a2)
{
  v3[136] = v2;
  v3[135] = a2;
  v3[134] = a1;
  v4 = *(*(type metadata accessor for AspireApiPECConfig(0) - 8) + 64) + 15;
  v3[137] = swift_task_alloc();
  v5 = *(*(type metadata accessor for AspireApiPIRConfig(0) - 8) + 64) + 15;
  v3[138] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML7UseCaseOSg_AA15AspireApiConfigV06OneOf_G0OtMd, &_s8CipherML7UseCaseOSg_AA15AspireApiConfigV06OneOf_G0OtMR);
  v3[139] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[140] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v3[141] = swift_task_alloc();
  v9 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v3[142] = v9;
  v10 = *(v9 - 8);
  v3[143] = v10;
  v11 = *(v10 + 64) + 15;
  v3[144] = swift_task_alloc();
  v12 = type metadata accessor for AspireApiConfig(0);
  v3[145] = v12;
  v13 = *(v12 - 8);
  v3[146] = v13;
  v14 = *(v13 + 64) + 15;
  v3[147] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v3[148] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v3[149] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), 0, 0);
}

uint64_t RequestsManager.fetchStatus(useCase:)()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = type metadata accessor for RequestsManager.CMLUseCaseStatusBuilder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v0[150] = v7;
  RequestsManager.CMLUseCaseStatusBuilder.init(useCase:)(v3, v2);
  v8 = *(v1 + 48);
  v0[151] = v8;

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));
  if (*(*(v9 + 40) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v0[134], v0[135]);
    v11 = v10;

    if (v11)
    {
      v12 = *(v0[136] + 40);
      v0[152] = v12;

      return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), v12, 0);
    }
  }

  else
  {
  }

  v13 = (*(*v7 + 288))(0);

  v14 = v0[149];
  v15 = v0[148];
  v16 = v0[147];
  v17 = v0[144];
  v18 = v0[141];
  v19 = v0[140];
  v20 = v0[138];
  v21 = v0[137];

  v22 = v0[1];

  return v22(v13);
}

{
  v1 = *(v0 + 1216);
  v2 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  *(v0 + 1224) = *(v1 + v2);

  return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), 0, 0);
}

{
  if (*(*(v0 + 1224) + 16))
  {
    v1 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 1072), *(v0 + 1080));
    v2 = *(v0 + 1192);
    if (v3)
    {
      v4 = v1;
      v5 = *(*(v0 + 1224) + 56);
      v6 = type metadata accessor for Date();
      v7 = *(v6 - 8);
      (*(v7 + 16))(v2, v5 + *(v7 + 72) * v4, v6);

      (*(v7 + 56))(v2, 0, 1, v6);
    }

    else
    {
      v11 = *(v0 + 1224);

      v12 = type metadata accessor for Date();
      (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
    }
  }

  else
  {
    v8 = *(v0 + 1192);
    v9 = *(v0 + 1224);

    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v13 = *(v0 + 1216);
  v14 = *(v0 + 1192);
  (*(**(v0 + 1200) + 312))(v14);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), v13, 0);
}

{
  v1 = *(v0 + 1216);
  *(v0 + 137) = ActiveUseCaseTracker.isActive(useCase:)(*(v0 + 1072));

  return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), 0, 0);
}

{
  if (*(v0 + 137))
  {
    *(v0 + 1232) = *(*(*(v0 + 1088) + 16) + 16);

    v1 = swift_task_alloc();
    *(v0 + 1240) = v1;
    *v1 = v0;
    v1[1] = RequestsManager.fetchStatus(useCase:);
    v2 = *(v0 + 1184);
    v3 = *(v0 + 1080);
    v4 = *(v0 + 1072);

    return specialized DatabaseTable<>.get(_:)(v2, v4, v3);
  }

  else
  {
    v6 = (*(**(v0 + 1200) + 288))(1);

    v7 = *(v0 + 1192);
    v8 = *(v0 + 1184);
    v9 = *(v0 + 1176);
    v10 = *(v0 + 1152);
    v11 = *(v0 + 1128);
    v12 = *(v0 + 1120);
    v13 = *(v0 + 1104);
    v14 = *(v0 + 1096);

    v15 = *(v0 + 8);

    return v15(v6);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1240);
  v4 = *v1;
  *(*v1 + 1248) = v0;

  v5 = *(v2 + 1232);

  if (v0)
  {
    v6 = RequestsManager.fetchStatus(useCase:);
  }

  else
  {
    v6 = RequestsManager.fetchStatus(useCase:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 1184);
  if ((*(*(v0 + 1168) + 48))(v1, 1, *(v0 + 1160)) == 1)
  {
    v2 = (*(**(v0 + 1200) + 288))(2);

LABEL_3:
    v3 = *(v0 + 1192);
    v4 = *(v0 + 1184);
    v5 = *(v0 + 1176);
    v6 = *(v0 + 1152);
    v7 = *(v0 + 1128);
    v8 = *(v0 + 1120);
    v9 = *(v0 + 1104);
    v10 = *(v0 + 1096);

    v11 = *(v0 + 8);

    return v11(v2);
  }

  v13 = *(v0 + 1248);
  outlined init with take of AspireApiPECConfig(v1, *(v0 + 1176), type metadata accessor for AspireApiConfig);
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig);
  v14 = Message.serializedData(partial:)();
  v16 = *(v0 + 1176);
  if (v13)
  {
    outlined destroy of AspireApiConfig(*(v0 + 1176), type metadata accessor for AspireApiConfig);

    v17 = *(v0 + 1192);
    v18 = *(v0 + 1184);
    v19 = *(v0 + 1176);
    v20 = *(v0 + 1152);
    v21 = *(v0 + 1128);
    v22 = *(v0 + 1120);
    v23 = *(v0 + 1104);
    v24 = *(v0 + 1096);

    v25 = *(v0 + 8);

    return v25();
  }

  v26 = *(v0 + 1144);
  v27 = *(v0 + 1136);
  v28 = *(v0 + 1128);
  v29 = v14;
  v30 = v15;
  (*(**(v0 + 1200) + 296))();
  outlined consume of Data._Representation(v29, v30);

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v28, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  if ((*(v26 + 48))(v28, 1, v27) == 1)
  {
    v31 = *(v0 + 1200);
    v32 = *(v0 + 1176);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 1128), &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v2 = (*(*v31 + 288))(3);

    outlined destroy of AspireApiConfig(v32, type metadata accessor for AspireApiConfig);
    goto LABEL_3;
  }

  v33 = *(v0 + 1208);
  outlined init with take of AspireApiPECConfig(*(v0 + 1128), *(v0 + 1152), type metadata accessor for AspireApiConfig.OneOf_Config);
  os_unfair_lock_lock((v33 + 24));
  v34 = *(v33 + 16);

  os_unfair_lock_unlock((v33 + 24));
  v35 = *(v34 + 40);
  if (*(v35 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 1072), *(v0 + 1080)), (v37 & 1) != 0))
  {
    v38 = (*(v35 + 56) + (v36 << 6));
    v39 = *v38;
    v40 = v38[1];
    v41 = v38[2];
    *(v0 + 905) = *(v38 + 41);
    *(v0 + 880) = v40;
    *(v0 + 896) = v41;
    *(v0 + 864) = v39;
    v93 = *(v0 + 880);
    v95 = *(v0 + 864);
    v91 = *(v0 + 896);
    v42 = *(v0 + 912);
    v43 = *(v0 + 920);
    outlined init with copy of UseCase(v0 + 864, v0 + 928);

    v45 = v91;
    v44 = v93;
    v46 = v95;
  }

  else
  {

    v42 = 0;
    v46 = 0uLL;
    v43 = -1;
    v44 = 0uLL;
    v45 = 0uLL;
  }

  v47 = *(v0 + 1152);
  v48 = *(v0 + 1120);
  v49 = *(*(v0 + 1112) + 48);
  *v48 = v46;
  v48[1] = v44;
  v48[2] = v45;
  *(v48 + 6) = v42;
  *(v48 + 56) = v43;
  _s8CipherML13NetworkConfigVWOcTm_0(v47, v48 + v49, type metadata accessor for AspireApiConfig.OneOf_Config);
  v51 = v48[1];
  v50 = v48[2];
  v52 = *v48;
  *(v0 + 57) = *(v48 + 41);
  *(v0 + 32) = v51;
  *(v0 + 48) = v50;
  *(v0 + 16) = v52;
  v53 = *(v0 + 16);
  v54 = *(v0 + 24);
  *(v0 + 1256) = v54;
  v55 = *(v0 + 32);
  *(v0 + 217) = v55;
  v56 = *(v0 + 40);
  *(v0 + 1264) = v56;
  v57 = *(v0 + 48);
  *(v0 + 218) = v57;
  v58 = *(v0 + 49);
  *(v0 + 219) = v58;
  v59 = *(v0 + 72);
  v60 = *(v0 + 1120);
  if (v59 == 255)
  {
    goto LABEL_24;
  }

  v92 = v53;
  v94 = v56;
  v61 = *(v0 + 1136);
  v62 = *(v60 + 20);
  *(v0 + 73) = *(v60 + 17);
  *(v0 + 76) = v62;
  v63 = *(v60 + 48);
  *(v0 + 138) = *(v60 + 34);
  *(v0 + 152) = v63;
  v96 = v49;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v59)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined init with take of AspireApiPECConfig(v48 + v49, *(v0 + 1104), type metadata accessor for AspireApiPIRConfig);
      *(v0 + 992) = v92;
      *(v0 + 1000) = v54;
      *(v0 + 1008) = v55;
      *(v0 + 1009) = *(v0 + 73);
      *(v0 + 1012) = *(v0 + 76);
      *(v0 + 1016) = v94;
      *(v0 + 1024) = v57;
      *(v0 + 1025) = v58;
      *(v0 + 1026) = *(v0 + 138);
      *(v0 + 1040) = *(v0 + 152);
      v65 = *(v0 + 16);
      v66 = *(v0 + 32);
      v67 = *(v0 + 48);
      *(v0 + 393) = *(v0 + 57);
      *(v0 + 368) = v66;
      *(v0 + 384) = v67;
      *(v0 + 352) = v65;
      outlined init with copy of UseCase(v0 + 352, v0 + 416);
      v68 = swift_task_alloc();
      *(v0 + 1272) = v68;
      *v68 = v0;
      v68[1] = RequestsManager.fetchStatus(useCase:);
      v69 = *(v0 + 1104);
      v70 = *(v0 + 1088);
      v71 = *(v0 + 1080);
      v72 = *(v0 + 1072);

      return RequestsManager.validate(config:static:useCase:)(v69, (v0 + 992), v72, v71);
    }

LABEL_24:
    v78 = *(v0 + 1176);
    v79 = *(v0 + 1152);
    v2 = (*(**(v0 + 1200) + 288))(3);

    outlined destroy of AspireApiConfig(v79, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined destroy of AspireApiConfig(v78, type metadata accessor for AspireApiConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v60, &_s8CipherML7UseCaseOSg_AA15AspireApiConfigV06OneOf_G0OtMd, &_s8CipherML7UseCaseOSg_AA15AspireApiConfigV06OneOf_G0OtMR);
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_24;
  }

  v73 = *(v0 + 1096);
  v74 = *(v0 + 1088);
  v75 = *(v0 + 1080);
  v76 = *(v0 + 1072);
  outlined init with take of AspireApiPECConfig(v48 + v96, v73, type metadata accessor for AspireApiPECConfig);
  v77 = specialized RequestsManager.validate(config:static:useCase:)(v73, v76, v75);
  if ((v77 & 1) == 0)
  {
    v84 = *(v0 + 1176);
    v85 = *(v0 + 1152);
    v86 = *(v0 + 1120);
    v87 = *(v0 + 1096);
    v2 = (*(**(v0 + 1200) + 288))(3);

    outlined destroy of AspireApiConfig(v87, type metadata accessor for AspireApiPECConfig);
    outlined destroy of AspireApiConfig(v85, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined destroy of AspireApiConfig(v84, type metadata accessor for AspireApiConfig);
    v89 = v86[1];
    v88 = v86[2];
    v90 = *v86;
    *(v0 + 201) = *(v86 + 41);
    *(v0 + 176) = v89;
    *(v0 + 192) = v88;
    *(v0 + 160) = v90;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 160, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
    goto LABEL_3;
  }

  v80 = swift_task_alloc();
  *(v0 + 1312) = v80;
  *v80 = v0;
  v80[1] = RequestsManager.fetchStatus(useCase:);
  v81 = *(v0 + 1200);
  v82 = *(v0 + 1096);
  v83 = *(v0 + 1088);

  return specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:)(v81, v82);
}

{
  v57 = v0;
  v1 = *(v0 + 220);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  if (v1 == 1)
  {
    if (*(v0 + 217))
    {
LABEL_3:
      v2 = swift_task_alloc();
      *(v0 + 1288) = v2;
      *v2 = v0;
      v2[1] = RequestsManager.fetchStatus(useCase:);
      v3 = *(v0 + 1200);
      v4 = *(v0 + 1104);
      v5 = *(v0 + 1088);

      return specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:)(v3, v4);
    }

    v24 = *(v0 + 1280);
    v25 = *(v0 + 1256);
    v26 = *(v0 + 1080);
    v27 = *(v0 + 1072);
    if (*(v0 + 218))
    {
      v28 = 10080;
    }

    else
    {
      v28 = *(v0 + 1264);
    }

    LOBYTE(v54) = *(v0 + 219) & 1;
    v29 = type metadata accessor for SqliteCache();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();

    v32 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v27, v26, v25, v28, &v54, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
    if (!v24)
    {
      (*(*v32 + 208))(&v51);
      v41 = *(v0 + 1200);
      v54 = v51;
      v55 = v52;
      v56 = v53;
      (*(*v41 + 328))(&v54);

      goto LABEL_3;
    }

    v33 = *(v0 + 1200);
    v34 = *(v0 + 1176);
    v35 = *(v0 + 1152);
    v36 = *(v0 + 1120);
    v37 = *(v0 + 1104);

    outlined destroy of AspireApiConfig(v37, type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AspireApiConfig(v35, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined destroy of AspireApiConfig(v34, type metadata accessor for AspireApiConfig);
    v39 = v36[1];
    v38 = v36[2];
    v40 = *v36;
    *(v0 + 777) = *(v36 + 41);
    *(v0 + 752) = v39;
    *(v0 + 768) = v38;
    *(v0 + 736) = v40;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 736, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
    v42 = *(v0 + 1192);
    v43 = *(v0 + 1184);
    v44 = *(v0 + 1176);
    v45 = *(v0 + 1152);
    v46 = *(v0 + 1128);
    v47 = *(v0 + 1120);
    v48 = *(v0 + 1104);
    v49 = *(v0 + 1096);

    v50 = *(v0 + 8);

    return v50();
  }

  else
  {
    v7 = *(v0 + 1176);
    v8 = *(v0 + 1152);
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1104);
    v11 = (*(**(v0 + 1200) + 288))(3);

    outlined destroy of AspireApiConfig(v10, type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AspireApiConfig(v8, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined destroy of AspireApiConfig(v7, type metadata accessor for AspireApiConfig);
    v13 = v9[1];
    v12 = v9[2];
    v14 = *v9;
    *(v0 + 585) = *(v9 + 41);
    *(v0 + 560) = v13;
    *(v0 + 576) = v12;
    *(v0 + 544) = v14;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 544, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
    v15 = *(v0 + 1192);
    v16 = *(v0 + 1184);
    v17 = *(v0 + 1176);
    v18 = *(v0 + 1152);
    v19 = *(v0 + 1128);
    v20 = *(v0 + 1120);
    v21 = *(v0 + 1104);
    v22 = *(v0 + 1096);

    v23 = *(v0 + 8);

    return v23(v11);
  }
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1104);

  outlined destroy of AspireApiConfig(v5, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AspireApiConfig(v3, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig);
  v7 = v4[1];
  v6 = v4[2];
  v8 = *v4;
  *(v0 + 713) = *(v4 + 41);
  *(v0 + 688) = v7;
  *(v0 + 704) = v6;
  *(v0 + 672) = v8;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 672, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  v9 = *(v0 + 1304);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);

  v18 = *(v0 + 8);

  return v18(v9);
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1096);

  outlined destroy of AspireApiConfig(v5, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AspireApiConfig(v3, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig);
  v7 = v4[1];
  v6 = v4[2];
  v8 = *v4;
  *(v0 + 329) = *(v4 + 41);
  *(v0 + 304) = v7;
  *(v0 + 320) = v6;
  *(v0 + 288) = v8;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 288, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  v9 = *(v0 + 1328);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);

  v18 = *(v0 + 8);

  return v18(v9);
}

{
  v1 = v0[150];

  v2 = v0[156];
  v3 = v0[149];
  v4 = v0[148];
  v5 = v0[147];
  v6 = v0[144];
  v7 = v0[141];
  v8 = v0[140];
  v9 = v0[138];
  v10 = v0[137];

  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1104);

  outlined destroy of AspireApiConfig(v5, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AspireApiConfig(v3, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  v7 = v4[1];
  v6 = v4[2];
  v8 = *v4;
  *(v0 + 521) = *(v4 + 41);
  *(v0 + 496) = v7;
  *(v0 + 512) = v6;
  *(v0 + 480) = v8;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 480, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  v9 = *(v0 + 1280);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);

  v18 = *(v0 + 8);

  return v18();
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1104);

  outlined destroy of AspireApiConfig(v5, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AspireApiConfig(v3, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig);
  v7 = v4[1];
  v6 = v4[2];
  v8 = *v4;
  *(v0 + 649) = *(v4 + 41);
  *(v0 + 624) = v7;
  *(v0 + 640) = v6;
  *(v0 + 608) = v8;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 608, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  v9 = *(v0 + 1296);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);

  v18 = *(v0 + 8);

  return v18();
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1096);

  outlined destroy of AspireApiConfig(v5, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AspireApiConfig(v3, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig);
  v7 = v4[1];
  v6 = v4[2];
  v8 = *v4;
  *(v0 + 265) = *(v4 + 41);
  *(v0 + 240) = v7;
  *(v0 + 256) = v6;
  *(v0 + 224) = v8;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 224, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  v9 = *(v0 + 1320);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1096);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t RequestsManager.fetchStatus(useCase:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1272);
  v6 = *v2;
  *(*v2 + 1280) = v1;

  if (v1)
  {
    v7 = RequestsManager.fetchStatus(useCase:);
  }

  else
  {
    *(v4 + 220) = a1 & 1;
    v7 = RequestsManager.fetchStatus(useCase:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t RequestsManager.fetchStatus(useCase:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1288);
  v6 = *v2;
  *(*v2 + 1296) = v1;

  if (v1)
  {
    v7 = RequestsManager.fetchStatus(useCase:);
  }

  else
  {
    *(v4 + 1304) = a1;
    v7 = RequestsManager.fetchStatus(useCase:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 1312);
  v6 = *v2;
  *(*v2 + 1320) = v1;

  if (v1)
  {
    v7 = RequestsManager.fetchStatus(useCase:);
  }

  else
  {
    *(v4 + 1328) = a1;
    v7 = RequestsManager.fetchStatus(useCase:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = *(type metadata accessor for SecretKey() - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v12 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[21] = v12;
  v13 = *(v12 - 8);
  v3[22] = v13;
  v14 = *(v13 + 64) + 15;
  v3[23] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:), 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(type metadata accessor for SecretKey() - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v12 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[18] = v12;
  v13 = *(v12 - 8);
  v3[19] = v13;
  v14 = *(v13 + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:), 0, 0);
}

uint64_t specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:)()
{
  v1 = v0[6];
  v0[25] = *(*(v0[7] + 16) + 24);
  v2 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v3 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash;
  v0[26] = v2;
  v0[27] = v3;
  v4 = (v2 + v3);
  swift_beginAccess();
  v5 = *v4;
  v0[28] = *v4;
  v6 = v4[1];
  v0[29] = v6;

  outlined copy of Data._Representation(v5, v6);
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  v8 = v0[24];

  return specialized DatabaseTable<>.get(_:)(v8, v5, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[25];

  outlined consume of Data._Representation(v6, v5);
  if (v0)
  {
    v8 = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  }

  else
  {
    v8 = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = *(v0 + 192);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) == 1)
  {
    v2 = (*(**(v0 + 40) + 288))(7);
    goto LABEL_3;
  }

  v15 = *(v0 + 248);
  outlined init with take of AspireApiPECConfig(v1, *(v0 + 184), type metadata accessor for AspireHeEvaluationKeyConfig);
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);
  v16 = Message.serializedData(partial:)();
  v18 = *(v0 + 184);
  if (v15)
  {
    outlined destroy of AspireApiConfig(*(v0 + 184), type metadata accessor for AspireHeEvaluationKeyConfig);
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v26 = *(v0 + 120);
    v25 = *(v0 + 128);
    v27 = *(v0 + 112);
    v86 = *(v0 + 104);
    v88 = *(v0 + 80);
    v90 = *(v0 + 64);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v29 = *(v0 + 56);
    v30 = *(v0 + 40);
    v31 = v16;
    v32 = v17;
    (*(*v30 + 304))();
    outlined consume of Data._Representation(v31, v32);

    outlined destroy of AspireApiConfig(v18, type metadata accessor for AspireHeEvaluationKeyConfig);
    v33 = *(v29 + 48);
    *(v0 + 256) = v33;
    os_unfair_lock_lock((v33 + 24));
    v34 = *(v33 + 16);

    os_unfair_lock_unlock((v33 + 24));
    v35 = *(v34 + 48);

    v36 = v30[2];
    *(v0 + 264) = v36;
    v37 = v30[3];
    *(v0 + 272) = v37;
    if (!*(v35 + 16) || (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37), (v39 & 1) == 0))
    {

      v52 = *(v0 + 160);
      v53 = *(v0 + 88);
      v54 = *(v0 + 96);
      v55 = *(**(v0 + 40) + 208);
      v55(v51);
      v56 = *(v54 + 48);
      v57 = v56(v52, 1, v53);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v52, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v57 == 1)
      {
        v2 = (*(**(v0 + 40) + 288))(4);
      }

      else
      {
        v58 = *(v0 + 264);
        v59 = *(v0 + 272);
        v60 = *(v0 + 256);
        v61 = *(v0 + 128);
        os_unfair_lock_lock((v60 + 24));
        v62 = *(v60 + 16);

        os_unfair_lock_unlock((v60 + 24));
        AllowList.group(useCase:)(v58, v59, v61);

        v63 = type metadata accessor for UseCaseGroup();
        if ((*(*(v63 - 8) + 48))(v61, 1, v63) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 128), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
        }

        else
        {
          v64 = *(v0 + 152);
          v65 = *(v0 + 128);
          v66 = *(v0 + 88);
          v67 = *(v0 + 40);
          v68 = *(v65 + *(v63 + 20));
          v69 = outlined destroy of AspireApiConfig(v65, type metadata accessor for UseCaseGroup);
          v55(v69);
          v70 = v56(v64, 1, v66);
          v71 = *(v0 + 152);
          if (v70 == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 152), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

          else
          {
            v72 = *(v0 + 144);
            v73 = *(v0 + 112);
            v75 = *(v0 + 96);
            v74 = *(v0 + 104);
            v76 = *(v0 + 88);
            v77 = *(v0 + 56);
            v78 = *(v0 + 40);
            (*(v75 + 32))(*(v0 + 120), *(v0 + 152), v76);
            Date.addingTimeInterval(_:)();
            (*(v75 + 16))(v72, v73, v76);
            (*(v75 + 56))(v72, 0, 1, v76);
            v79 = (*(*v78 + 240))(v72);
            v80 = *(v77 + 64);
            (*(v77 + 56))(v79);
            lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
            LOBYTE(v80) = dispatch thunk of static Comparable.<= infix(_:_:)();
            v81 = *(v75 + 8);
            v81(v74, v76);
            v83 = *(v0 + 112);
            v82 = *(v0 + 120);
            v84 = *(v0 + 88);
            if (v80)
            {
              v89 = (*(**(v0 + 40) + 288))(5);
              v81(v83, v84);
              v81(v82, v84);
              goto LABEL_4;
            }

            v81(*(v0 + 112), *(v0 + 88));
            v81(v82, v84);
          }
        }

        v2 = (*(**(v0 + 40) + 288))(6);
      }

LABEL_3:
      v89 = v2;
LABEL_4:
      v4 = *(v0 + 184);
      v3 = *(v0 + 192);
      v6 = *(v0 + 152);
      v5 = *(v0 + 160);
      v8 = *(v0 + 136);
      v7 = *(v0 + 144);
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);
      v11 = *(v0 + 104);
      v12 = *(v0 + 112);
      v85 = *(v0 + 80);
      v87 = *(v0 + 64);

      v13 = *(v0 + 8);

      return v13(v89);
    }

    v40 = *(v0 + 56);
    v41 = (*(v35 + 56) + 16 * v38);
    v42 = *v41;
    v43 = v41[1];
    *(v0 + 280) = v43;

    v44 = *(v40 + 24);
    v45 = *(v40 + 32);
    ObjectType = swift_getObjectType();
    v47 = *(v45 + 8);
    v91 = (v47 + *v47);
    v48 = v47[1];
    v49 = swift_task_alloc();
    *(v0 + 288) = v49;
    *v49 = v0;
    v49[1] = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
    v50 = *(v0 + 64);

    return v91(v50, v42, v43, ObjectType, v45);
  }
}

{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[13];
  v10 = v0[14];
  v13 = v0[10];
  v14 = v0[8];
  v15 = v0[31];

  v11 = v0[1];

  return v11();
}

{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:), 0, 0);
}

{
  v1 = v0[8];
  v2 = type metadata accessor for UserIdentifier();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v4 = v0[26];
    v3 = v0[27];
    v5 = *(v1 + *(v2 + 24));

    outlined destroy of AspireApiConfig(v1, type metadata accessor for UserIdentifier);
    if (*(v5 + 16))
    {
      v6 = *(v4 + v3);
      v7 = *(v4 + v3 + 8);
      outlined copy of Data._Representation(v6, v7);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v9)
      {
        v10 = v0[17];
        v11 = v0[10];
        _s8CipherML13NetworkConfigVWOcTm_0(*(v5 + 56) + *(v0[9] + 72) * v8, v11, type metadata accessor for SecretKey);
        outlined consume of Data._Representation(v6, v7);

        v12 = *v11;
        outlined destroy of AspireApiConfig(v11, type metadata accessor for SecretKey);
        Date.init(timeIntervalSince1970:)();
        v13 = 0;
        goto LABEL_9;
      }

      outlined consume of Data._Representation(v6, v7);
    }

    else
    {
    }
  }

  v13 = 1;
LABEL_9:
  v14 = v0[17];
  v15 = v0[5];
  (*(v0[12] + 56))(v14, v13, 1, v0[11]);
  (*(*v15 + 320))(v14);

  v16 = outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = v0[20];
  v18 = v0[11];
  v19 = v0[12];
  v20 = *(*v0[5] + 208);
  v20(v16);
  v21 = *(v19 + 48);
  LODWORD(v15) = v21(v17, 1, v18);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v15 == 1)
  {
    v22 = (*(*v0[5] + 288))(4);
  }

  else
  {
    v23 = v0[33];
    v24 = v0[34];
    v25 = v0[32];
    v26 = v0[16];
    os_unfair_lock_lock((v25 + 24));
    v27 = *(v25 + 16);

    os_unfair_lock_unlock((v25 + 24));
    AllowList.group(useCase:)(v23, v24, v26);

    v28 = type metadata accessor for UseCaseGroup();
    if ((*(*(v28 - 8) + 48))(v26, 1, v28) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[16], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v29 = v0[19];
      v30 = v0[16];
      v31 = v0[11];
      v32 = v0[5];
      v33 = *(v30 + *(v28 + 20));
      v34 = outlined destroy of AspireApiConfig(v30, type metadata accessor for UseCaseGroup);
      v20(v34);
      v35 = v21(v29, 1, v31);
      v36 = v0[19];
      if (v35 == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[19], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v37 = v0[18];
        v38 = v0[14];
        v40 = v0[12];
        v39 = v0[13];
        v41 = v0[11];
        v42 = v0[7];
        v43 = v0[5];
        (*(v40 + 32))(v0[15], v0[19], v41);
        Date.addingTimeInterval(_:)();
        (*(v40 + 16))(v37, v38, v41);
        (*(v40 + 56))(v37, 0, 1, v41);
        v44 = (*(*v43 + 240))(v37);
        v45 = *(v42 + 64);
        (*(v42 + 56))(v44);
        lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        LOBYTE(v45) = dispatch thunk of static Comparable.<= infix(_:_:)();
        v46 = *(v40 + 8);
        v46(v39, v41);
        v48 = v0[14];
        v47 = v0[15];
        v49 = v0[11];
        if (v45)
        {
          v64 = (*(*v0[5] + 288))(5);
          v46(v48, v49);
          v46(v47, v49);
          goto LABEL_20;
        }

        v46(v0[14], v0[11]);
        v46(v47, v49);
      }
    }

    v22 = (*(*v0[5] + 288))(6);
  }

  v64 = v22;
LABEL_20:
  v51 = v0[23];
  v50 = v0[24];
  v53 = v0[19];
  v52 = v0[20];
  v55 = v0[17];
  v54 = v0[18];
  v57 = v0[15];
  v56 = v0[16];
  v58 = v0[13];
  v59 = v0[14];
  v62 = v0[10];
  v63 = v0[8];

  v60 = v0[1];

  return v60(v64);
}

{
  v1 = v0[3];
  v0[22] = *(*(v0[4] + 16) + 24);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  v5 = v0[21];

  return specialized DatabaseTable<>.get(_:)(v5, v2, v3);
}

{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  }

  else
  {
    v4 = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 168);
  if ((*(*(v0 + 152) + 48))(v1, 1, *(v0 + 144)) == 1)
  {
    v2 = (*(**(v0 + 16) + 288))(7);
    goto LABEL_3;
  }

  v15 = *(v0 + 192);
  outlined init with take of AspireApiPECConfig(v1, *(v0 + 160), type metadata accessor for AspireHeEvaluationKeyConfig);
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);
  v16 = Message.serializedData(partial:)();
  v18 = *(v0 + 160);
  if (v15)
  {
    outlined destroy of AspireApiConfig(*(v0 + 160), type metadata accessor for AspireHeEvaluationKeyConfig);
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 88);
    v86 = *(v0 + 80);
    v88 = *(v0 + 56);
    v90 = *(v0 + 40);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v29 = *(v0 + 32);
    v30 = *(v0 + 16);
    v31 = v16;
    v32 = v17;
    (*(*v30 + 304))();
    outlined consume of Data._Representation(v31, v32);

    outlined destroy of AspireApiConfig(v18, type metadata accessor for AspireHeEvaluationKeyConfig);
    v33 = *(v29 + 48);
    *(v0 + 200) = v33;
    os_unfair_lock_lock((v33 + 24));
    v34 = *(v33 + 16);

    os_unfair_lock_unlock((v33 + 24));
    v35 = *(v34 + 48);

    v36 = v30[2];
    *(v0 + 208) = v36;
    v37 = v30[3];
    *(v0 + 216) = v37;
    if (!*(v35 + 16) || (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37), (v39 & 1) == 0))
    {

      v52 = *(v0 + 136);
      v53 = *(v0 + 64);
      v54 = *(v0 + 72);
      v55 = *(**(v0 + 16) + 208);
      v55(v51);
      v56 = *(v54 + 48);
      v57 = v56(v52, 1, v53);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v52, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v57 == 1)
      {
        v2 = (*(**(v0 + 16) + 288))(4);
      }

      else
      {
        v58 = *(v0 + 208);
        v59 = *(v0 + 216);
        v60 = *(v0 + 200);
        v61 = *(v0 + 104);
        os_unfair_lock_lock((v60 + 24));
        v62 = *(v60 + 16);

        os_unfair_lock_unlock((v60 + 24));
        AllowList.group(useCase:)(v58, v59, v61);

        v63 = type metadata accessor for UseCaseGroup();
        if ((*(*(v63 - 8) + 48))(v61, 1, v63) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 104), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
        }

        else
        {
          v64 = *(v0 + 128);
          v65 = *(v0 + 104);
          v66 = *(v0 + 64);
          v67 = *(v0 + 16);
          v68 = *(v65 + *(v63 + 20));
          v69 = outlined destroy of AspireApiConfig(v65, type metadata accessor for UseCaseGroup);
          v55(v69);
          v70 = v56(v64, 1, v66);
          v71 = *(v0 + 128);
          if (v70 == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 128), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

          else
          {
            v72 = *(v0 + 120);
            v73 = *(v0 + 88);
            v75 = *(v0 + 72);
            v74 = *(v0 + 80);
            v76 = *(v0 + 64);
            v77 = *(v0 + 32);
            v78 = *(v0 + 16);
            (*(v75 + 32))(*(v0 + 96), *(v0 + 128), v76);
            Date.addingTimeInterval(_:)();
            (*(v75 + 16))(v72, v73, v76);
            (*(v75 + 56))(v72, 0, 1, v76);
            v79 = (*(*v78 + 240))(v72);
            v80 = *(v77 + 64);
            (*(v77 + 56))(v79);
            lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
            LOBYTE(v80) = dispatch thunk of static Comparable.<= infix(_:_:)();
            v81 = *(v75 + 8);
            v81(v74, v76);
            v83 = *(v0 + 88);
            v82 = *(v0 + 96);
            v84 = *(v0 + 64);
            if (v80)
            {
              v89 = (*(**(v0 + 16) + 288))(5);
              v81(v83, v84);
              v81(v82, v84);
              goto LABEL_4;
            }

            v81(*(v0 + 88), *(v0 + 64));
            v81(v82, v84);
          }
        }

        v2 = (*(**(v0 + 16) + 288))(6);
      }

LABEL_3:
      v89 = v2;
LABEL_4:
      v4 = *(v0 + 160);
      v3 = *(v0 + 168);
      v6 = *(v0 + 128);
      v5 = *(v0 + 136);
      v8 = *(v0 + 112);
      v7 = *(v0 + 120);
      v10 = *(v0 + 96);
      v9 = *(v0 + 104);
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      v85 = *(v0 + 56);
      v87 = *(v0 + 40);

      v13 = *(v0 + 8);

      return v13(v89);
    }

    v40 = *(v0 + 32);
    v41 = (*(v35 + 56) + 16 * v38);
    v42 = *v41;
    v43 = v41[1];
    *(v0 + 224) = v43;

    v44 = *(v40 + 24);
    v45 = *(v40 + 32);
    ObjectType = swift_getObjectType();
    v47 = *(v45 + 8);
    v91 = (v47 + *v47);
    v48 = v47[1];
    v49 = swift_task_alloc();
    *(v0 + 232) = v49;
    *v49 = v0;
    v49[1] = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
    v50 = *(v0 + 40);

    return v91(v50, v42, v43, ObjectType, v45);
  }
}

{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v13 = v0[7];
  v14 = v0[5];
  v15 = v0[24];

  v11 = v0[1];

  return v11();
}

{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:), 0, 0);
}

{
  v1 = v0[5];
  v2 = type metadata accessor for UserIdentifier();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v3 = *(v1 + *(v2 + 24));

    outlined destroy of AspireApiConfig(v1, type metadata accessor for UserIdentifier);
    if (*(v3 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0[3] + 32), *(v0[3] + 40));
      if (v5)
      {
        v6 = v0[14];
        v7 = v0[7];
        _s8CipherML13NetworkConfigVWOcTm_0(*(v3 + 56) + *(v0[6] + 72) * v4, v7, type metadata accessor for SecretKey);

        v8 = *v7;
        outlined destroy of AspireApiConfig(v7, type metadata accessor for SecretKey);
        Date.init(timeIntervalSince1970:)();
        v9 = 0;
        goto LABEL_8;
      }
    }
  }

  v9 = 1;
LABEL_8:
  v10 = v0[14];
  v11 = v0[2];
  (*(v0[9] + 56))(v10, v9, 1, v0[8]);
  (*(*v11 + 320))(v10);

  v12 = outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = v0[17];
  v14 = v0[8];
  v15 = v0[9];
  v16 = *(*v0[2] + 208);
  v16(v12);
  v17 = *(v15 + 48);
  LODWORD(v11) = v17(v13, 1, v14);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v11 == 1)
  {
    v18 = (*(*v0[2] + 288))(4);
  }

  else
  {
    v19 = v0[26];
    v20 = v0[27];
    v21 = v0[25];
    v22 = v0[13];
    os_unfair_lock_lock((v21 + 24));
    v23 = *(v21 + 16);

    os_unfair_lock_unlock((v21 + 24));
    AllowList.group(useCase:)(v19, v20, v22);

    v24 = type metadata accessor for UseCaseGroup();
    if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[13], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v25 = v0[16];
      v26 = v0[13];
      v27 = v0[8];
      v28 = v0[2];
      v29 = *(v26 + *(v24 + 20));
      v30 = outlined destroy of AspireApiConfig(v26, type metadata accessor for UseCaseGroup);
      v16(v30);
      v31 = v17(v25, 1, v27);
      v32 = v0[16];
      if (v31 == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[16], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v33 = v0[15];
        v34 = v0[11];
        v36 = v0[9];
        v35 = v0[10];
        v37 = v0[8];
        v38 = v0[4];
        v39 = v0[2];
        (*(v36 + 32))(v0[12], v0[16], v37);
        Date.addingTimeInterval(_:)();
        (*(v36 + 16))(v33, v34, v37);
        (*(v36 + 56))(v33, 0, 1, v37);
        v40 = (*(*v39 + 240))(v33);
        v41 = *(v38 + 64);
        (*(v38 + 56))(v40);
        lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        LOBYTE(v41) = dispatch thunk of static Comparable.<= infix(_:_:)();
        v42 = *(v36 + 8);
        v42(v35, v37);
        v44 = v0[11];
        v43 = v0[12];
        v45 = v0[8];
        if (v41)
        {
          v60 = (*(*v0[2] + 288))(5);
          v42(v44, v45);
          v42(v43, v45);
          goto LABEL_19;
        }

        v42(v0[11], v0[8]);
        v42(v43, v45);
      }
    }

    v18 = (*(*v0[2] + 288))(6);
  }

  v60 = v18;
LABEL_19:
  v47 = v0[20];
  v46 = v0[21];
  v49 = v0[16];
  v48 = v0[17];
  v51 = v0[14];
  v50 = v0[15];
  v53 = v0[12];
  v52 = v0[13];
  v54 = v0[10];
  v55 = v0[11];
  v58 = v0[7];
  v59 = v0[5];

  v56 = v0[1];

  return v56(v60);
}

uint64_t partial apply for closure #1 in RequestsManager.queryStatus(for:options:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in RequestsManager.queryStatus(for:options:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with take of AspireApiConfigResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RequestsManager.CMLUseCaseStatusBuilder()
{
  result = type metadata singleton initialization cache for RequestsManager.CMLUseCaseStatusBuilder;
  if (!type metadata singleton initialization cache for RequestsManager.CMLUseCaseStatusBuilder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RequestsManager.CMLUseCaseStatusBuilder()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t outlined init with take of AspireApiPECConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8CipherML13NetworkConfigVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AspireApiConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AspireApiRequest.amd()@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v82 = type metadata accessor for AspireApiPIRRequest(0);
  v2 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v76 - v14;
  v85 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v93 = *(v85 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = (&v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v76 - v19);
  v81 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v21 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v78 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v77 = &v76 - v24;
  v25 = type metadata accessor for AspireApiPECRequest(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v76 - v31;
  v33 = *(type metadata accessor for AspireApiRequest(0) + 20);
  v87 = v1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v33, v32, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v34 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v34 - 8) + 48))(v32, 1, v34) == 1)
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.networking);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224E26000, v36, v37, "query has neither PecRequest nor PirRequest", v38, 2u);
      MEMORY[0x22AA61F40](v38, -1, -1);
    }

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v41 = v93;
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of AspireApiPIRRequest(v32, v28, type metadata accessor for AspireApiPECRequest);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v28[*(v25 + 32)], v15, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
        v42 = *(v41 + 48);
        v43 = v85;
        if (v42(v15, 1, v85) == 1)
        {
          v44 = v87;
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0xC000000000000000;
          v45 = v20 + *(v43 + 24);
          UnknownStorage.init()();
          if (v42(v15, 1, v43) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
          }
        }

        else
        {
          v44 = v87;
          outlined init with take of AspireApiPIRRequest(v15, v20, type metadata accessor for AspireApiEvaluationKeyMetadata);
        }

        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
        v58 = v86;
        v59 = Message.serializedData(partial:)();
        if (v58)
        {
          v61 = type metadata accessor for AspireApiEvaluationKeyMetadata;
          v62 = v20;
        }

        else
        {
          v68 = v59;
          v69 = v60;
          outlined destroy of AspireApiRequest.OneOf_Request(v20, type metadata accessor for AspireApiEvaluationKeyMetadata);
          v91 = v68;
          v92 = v69;
          v90 = 0;
          v88 = 0u;
          v89 = 0u;
          BinaryDecodingOptions.init()();
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbEvaluationKeyMetadata and conformance AMDPbEvaluationKeyMetadata, type metadata accessor for AMDPbEvaluationKeyMetadata);
          v70 = v77;
          Message.init<A>(serializedBytes:extensions:partial:options:)();
          v74 = type metadata accessor for AMDPbHEQuery(0);
          MEMORY[0x28223BE20](v74);
          *(&v76 - 4) = v44;
          *(&v76 - 3) = v28;
          *(&v76 - 2) = v70;
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbHEQuery and conformance AMDPbHEQuery, type metadata accessor for AMDPbHEQuery);
          static Message.with(_:)();
          v61 = type metadata accessor for AMDPbEvaluationKeyMetadata;
          v62 = v70;
        }

        outlined destroy of AspireApiRequest.OneOf_Request(v62, v61);
        v56 = type metadata accessor for AspireApiPECRequest;
        v57 = v28;
      }

      else
      {
        if (one-time initialization token for networking != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        __swift_project_value_buffer(v52, static Logger.networking);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_224E26000, v53, v54, "OPRF request not supported for AMS networking", v55, 2u);
          MEMORY[0x22AA61F40](v55, -1, -1);
        }

        type metadata accessor for CipherMLError();
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v56 = type metadata accessor for AspireApiRequest.OneOf_Request;
        v57 = v32;
      }
    }

    else
    {
      v46 = v83;
      outlined init with take of AspireApiPIRRequest(v32, v83, type metadata accessor for AspireApiPIRRequest);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v46 + *(v82 + 32), v12, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
      v47 = *(v93 + 48);
      v48 = v85;
      if (v47(v12, 1, v85) == 1)
      {
        v49 = v87;
        v50 = v84;
        *v84 = 0;
        v50[1] = 0;
        v50[2] = 0xC000000000000000;
        v51 = v50 + *(v48 + 24);
        UnknownStorage.init()();
        if (v47(v12, 1, v48) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
        }
      }

      else
      {
        v49 = v87;
        v50 = v84;
        outlined init with take of AspireApiPIRRequest(v12, v84, type metadata accessor for AspireApiEvaluationKeyMetadata);
      }

      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
      v63 = v86;
      v64 = Message.serializedData(partial:)();
      if (v63)
      {
        v66 = type metadata accessor for AspireApiEvaluationKeyMetadata;
        v67 = v50;
      }

      else
      {
        v71 = v64;
        v72 = v65;
        outlined destroy of AspireApiRequest.OneOf_Request(v50, type metadata accessor for AspireApiEvaluationKeyMetadata);
        v91 = v71;
        v92 = v72;
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        BinaryDecodingOptions.init()();
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbEvaluationKeyMetadata and conformance AMDPbEvaluationKeyMetadata, type metadata accessor for AMDPbEvaluationKeyMetadata);
        v73 = v78;
        Message.init<A>(serializedBytes:extensions:partial:options:)();
        v75 = type metadata accessor for AMDPbHEQuery(0);
        MEMORY[0x28223BE20](v75);
        *(&v76 - 4) = v49;
        *(&v76 - 3) = v46;
        *(&v76 - 2) = v73;
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbHEQuery and conformance AMDPbHEQuery, type metadata accessor for AMDPbHEQuery);
        static Message.with(_:)();
        v66 = type metadata accessor for AMDPbEvaluationKeyMetadata;
        v67 = v73;
      }

      outlined destroy of AspireApiRequest.OneOf_Request(v67, v66);
      v56 = type metadata accessor for AspireApiPIRRequest;
      v57 = v46;
    }

    return outlined destroy of AspireApiRequest.OneOf_Request(v57, v56);
  }
}

uint64_t closure #1 in AspireApiRequest.amd()(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18[-v10];
  v13 = *a2;
  v12 = a2[1];
  v14 = a1[1];

  *a1 = v13;
  a1[1] = v12;
  type metadata accessor for AMDPbPECQuery(0);
  v19 = a3;
  v20 = a4;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbPECQuery and conformance AMDPbPECQuery, type metadata accessor for AMDPbPECQuery);
  static Message.with(_:)();
  v15 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  v16 = type metadata accessor for AMDPbHEQuery(0);
  return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v11, a1 + *(v16 + 20), &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
}

uint64_t closure #1 in closure #1 in AspireApiRequest.amd()(char *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v30 = a3;
  v7 = type metadata accessor for AMDPbEvaluationKey(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v17 = *a1;

  *a1 = v16;
  v19 = a2[1];
  if (*(v19 + 16))
  {
    outlined init with copy of AMDPbHEResponse(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v15, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v20 = type metadata accessor for AMDPbPECQuery(0);
    v29 = v4;
    v21 = *(v20 + 28);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&a1[v21], &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    outlined init with take of AspireApiPIRRequest(v15, &a1[v21], type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v22 = (*(v12 + 56))(&a1[v21], 0, 1, v11);
    MEMORY[0x28223BE20](v22);
    *(&v29 - 2) = v30;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey);
    v23 = v31;
    static Message.with(_:)();
    v24 = *(v20 + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&a1[v24], &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
    outlined init with take of AspireApiPIRRequest(v23, &a1[v24], type metadata accessor for AMDPbEvaluationKey);
    (*(v8 + 56))(&a1[v24], 0, 1, v7);
    v25 = a2[2];
    v26 = a2[3];
    v27 = *(a1 + 1);
    v28 = *(a1 + 2);
    outlined copy of Data._Representation(v25, v26);
    result = outlined consume of Data._Representation(v27, v28);
    *(a1 + 1) = v25;
    *(a1 + 2) = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in AspireApiRequest.amd()(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20[-v12];
  v15 = *a2;
  v14 = a2[1];
  v16 = a1[1];

  *a1 = v15;
  a1[1] = v14;
  type metadata accessor for AMDPbPIRQuery(0);
  v21 = a3;
  v22 = a4;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbPIRQuery and conformance AMDPbPIRQuery, type metadata accessor for AMDPbPIRQuery);
  result = static Message.with(_:)();
  if (!v5)
  {
    v18 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    v19 = type metadata accessor for AMDPbHEQuery(0);
    return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v13, a1 + *(v19 + 20), &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  }

  return result;
}

uint64_t closure #1 in closure #2 in AspireApiRequest.amd()(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v43 = a3;
  v5 = type metadata accessor for AMDPbEvaluationKey(0);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BinaryDecodingOptions();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for AspirePirEncryptedIndices(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v48 = a1;
  v49 = &v42 - v20;
  *a1 = *a2;
  v21 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  v47 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v21, v13, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    *v18 = MEMORY[0x277D84F90];
    v18[1] = 0;
    v23 = v18 + *(v14 + 24);
    UnknownStorage.init()();
    if (v22(v13, 1, v14) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiPIRRequest(v13, v18, type metadata accessor for AspirePirEncryptedIndices);
  }

  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices);
  v24 = v55;
  v25 = Message.serializedData(partial:)();
  if (v24)
  {
    return outlined destroy of AspireApiRequest.OneOf_Request(v18, type metadata accessor for AspirePirEncryptedIndices);
  }

  v28 = v25;
  v29 = v26;
  outlined destroy of AspireApiRequest.OneOf_Request(v18, type metadata accessor for AspirePirEncryptedIndices);
  v53 = v28;
  v54 = v29;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  BinaryDecodingOptions.init()();
  v30 = v49;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v31 = type metadata accessor for AMDPbPIRQuery(0);
  v32 = *(v31 + 28);
  v33 = v48;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v48 + v32, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  outlined init with take of AspireApiPIRRequest(v30, v33 + v32, type metadata accessor for AspirePirEncryptedIndices);
  v34 = (*(v15 + 56))(v33 + v32, 0, 1, v14);
  MEMORY[0x28223BE20](v34);
  *(&v42 - 2) = v43;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey);
  v35 = v44;
  v36 = v46;
  static Message.with(_:)();
  v37 = *(v31 + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v33 + v37, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  outlined init with take of AspireApiPIRRequest(v35, v33 + v37, type metadata accessor for AMDPbEvaluationKey);
  (*(v45 + 56))(v33 + v37, 0, 1, v36);
  v38 = *(v47 + 1);
  v39 = *(v47 + 2);
  v40 = *(v33 + 1);
  v41 = *(v33 + 2);
  outlined copy of Data._Representation(v38, v39);
  result = outlined consume of Data._Representation(v40, v41);
  *(v33 + 1) = v38;
  *(v33 + 2) = v39;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in AspireApiRequest.amd()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEResponse(a2, v8, type metadata accessor for AMDPbEvaluationKeyMetadata);
  v9 = *(type metadata accessor for AMDPbEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v9, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiPIRRequest(v8, a1 + v9, type metadata accessor for AMDPbEvaluationKeyMetadata);
  return (*(v5 + 56))(a1 + v9, 0, 1, v4);
}

uint64_t AMDPbHEResponse.validateSuccessResponse()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AMDPbHEResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  if (!*v2)
  {
    return outlined init with copy of AMDPbHEResponse(v2, a1, type metadata accessor for AMDPbHEResponse);
  }

  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.networking);
  outlined init with copy of AMDPbHEResponse(v2, v10, type metadata accessor for AMDPbHEResponse);
  outlined init with copy of AMDPbHEResponse(v2, v7, type metadata accessor for AMDPbHEResponse);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v14 = 136446466;
    v15 = v10[8];
    v33 = *v10;
    v34 = v15;
    v16 = String.init<A>(describing:)();
    v18 = v17;
    outlined destroy of AspireApiRequest.OneOf_Request(v10, type metadata accessor for AMDPbHEResponse);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v35);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v20 = MEMORY[0x22AA60B60](*(v7 + 3), MEMORY[0x277D837D0]);
    v22 = v21;
    outlined destroy of AspireApiRequest.OneOf_Request(v7, type metadata accessor for AMDPbHEResponse);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v35);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_224E26000, v12, v13, "AMDPbHEResponse has non-success status '%{public}s', with error '%{public}s'", v14, 0x16u);
    v24 = v32;
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v24, -1, -1);
    MEMORY[0x22AA61F40](v14, -1, -1);
  }

  else
  {

    outlined destroy of AspireApiRequest.OneOf_Request(v7, type metadata accessor for AMDPbHEResponse);
    outlined destroy of AspireApiRequest.OneOf_Request(v10, type metadata accessor for AMDPbHEResponse);
  }

  v26 = v2[3];
  if (v26[2] == 1)
  {
    v27 = v26[4];
    v28 = v26[5];
  }

  else
  {
    v27 = MEMORY[0x22AA60B60]();
    v28 = v29;
  }

  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  *v30 = v27;
  v30[1] = v28;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t AMDPbHEResponse.validateAPICode(expected:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AMDPbHEResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3 + *(v11 + 44);
  if (*(v12 + 9))
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12;
  }

  if ((a2 & 1) == 0)
  {
    if (v13 != a1)
    {
      goto LABEL_8;
    }

    return outlined init with copy of AMDPbHEResponse(v3, a3, type metadata accessor for AMDPbHEResponse);
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (v13 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v13 != 3)
    {
      goto LABEL_8;
    }

    return outlined init with copy of AMDPbHEResponse(v3, a3, type metadata accessor for AMDPbHEResponse);
  }

  if (a1)
  {
    if (v13 != 1)
    {
      goto LABEL_8;
    }

    return outlined init with copy of AMDPbHEResponse(v3, a3, type metadata accessor for AMDPbHEResponse);
  }

  if (!v13)
  {
    return outlined init with copy of AMDPbHEResponse(v3, a3, type metadata accessor for AMDPbHEResponse);
  }

LABEL_8:
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.networking);
  outlined init with copy of AMDPbHEResponse(v3, v10, type metadata accessor for AMDPbHEResponse);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136446466;
    v19 = v10[8];
    v28 = *v10;
    v29 = v19;
    v20 = String.init<A>(describing:)();
    v22 = v21;
    outlined destroy of AspireApiRequest.OneOf_Request(v10, type metadata accessor for AMDPbHEResponse);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v30);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2082;
    v28 = a1;
    v29 = a2 & 1;
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v30);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_224E26000, v15, v16, "AMDPbHEResponse has incorrect apiCode '%{public}s', expected '%{public}s'", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v18, -1, -1);
    MEMORY[0x22AA61F40](v17, -1, -1);
  }

  else
  {

    outlined destroy of AspireApiRequest.OneOf_Request(v10, type metadata accessor for AMDPbHEResponse);
  }

  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t AMDPbHEReply.aspire()()
{
  v1 = type metadata accessor for AMDPbPIRReply(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AMDPbPECReply(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0, &v23 - v11, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v13 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.networking);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_224E26000, v15, v16, "Response is neither pecReply nor pirReply", v17, 2u);
      MEMORY[0x22AA61F40](v17, -1, -1);
    }

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspireApiPIRRequest(v12, v8, type metadata accessor for AMDPbPECReply);
      v19 = type metadata accessor for AspireApiResponse(0);
      MEMORY[0x28223BE20](v19);
      *(&v23 - 2) = v8;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse);
      static Message.with(_:)();
      v20 = type metadata accessor for AMDPbPECReply;
      v21 = v8;
    }

    else
    {
      outlined init with take of AspireApiPIRRequest(v12, v4, type metadata accessor for AMDPbPIRReply);
      v22 = type metadata accessor for AspireApiResponse(0);
      MEMORY[0x28223BE20](v22);
      *(&v23 - 2) = v4;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse);
      static Message.with(_:)();
      v20 = type metadata accessor for AMDPbPIRReply;
      v21 = v4;
    }

    return outlined destroy of AspireApiRequest.OneOf_Request(v21, v20);
  }
}

uint64_t closure #1 in AMDPbHEReply.aspire()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for AspireApiPECResponse(0);
  v11 = a2;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse);
  static Message.with(_:)();
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
}

uint64_t closure #1 in closure #1 in AMDPbHEReply.aspire()(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AMDPbPECShardReply(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AspireApiPECShardResponse(0);
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(*a2 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v23 = a1;
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v27;
    v16 = v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v24 = *(v5 + 72);
    do
    {
      v17 = outlined init with copy of AMDPbHEResponse(v16, v8, type metadata accessor for AMDPbPECShardReply);
      MEMORY[0x28223BE20](v17);
      *(&v23 - 2) = v8;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse);
      v18 = v26;
      static Message.with(_:)();
      v26 = v18;
      outlined destroy of AspireApiRequest.OneOf_Request(v8, type metadata accessor for AMDPbPECShardReply);
      v27 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v20 + 1;
      outlined init with take of AspireApiPIRRequest(v12, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, type metadata accessor for AspireApiPECShardResponse);
      v16 += v24;
      --v14;
    }

    while (v14);
    a1 = v23;
  }

  v21 = *a1;

  *a1 = v15;
  return result;
}

uint64_t AMDPbPECShardReply.aspire()()
{
  type metadata accessor for AspireApiPECShardResponse(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse);
  return static Message.with(_:)();
}

uint64_t closure #2 in AMDPbHEReply.aspire()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for AspireApiPIRResponse(0);
  v11 = a2;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse);
  static Message.with(_:)();
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
}

uint64_t closure #1 in AMDPbPECShardReply.aspire()(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML42AspireSimilaritySerializedCiphertextMatrixVGMd, &_ss23_ContiguousArrayStorageCy8CipherML42AspireSimilaritySerializedCiphertextMatrixVGMR);
  v8 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_225022960;
  v13 = (v12 + v11);
  v14 = type metadata accessor for AMDPbPECShardReply(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + *(v14 + 28), v7, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = MEMORY[0x277D84F90];
    v16 = &v13[*(v8 + 28)];
    UnknownStorage.init()();
    v17 = *(v8 + 32);
    v18 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiPIRRequest(v7, v13, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  }

  v19 = *a1;

  *a1 = v12;
  v20 = *a2;
  v21 = a1[1];

  a1[1] = v20;
  v22 = a2[1];
  v23 = a1[2];

  a1[2] = v22;
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in AMDPbHEReply.aspire()(uint64_t *a1)
{
  v3 = **(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t outlined init with copy of AMDPbHEResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of AspireApiRequest.OneOf_Request(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AspireApiPIRRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BatchPIRClient.init(secretKey:config:configID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v119 = a3;
  v120 = a4;
  v121 = a1;
  v99 = a5;
  v102 = type metadata accessor for HE.SerializedSecretKey();
  v101 = *(v102 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PIR.BatchKeywordPirClient();
  v97 = *(v98 - 8);
  v8 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v122 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspirePirBatchPirParameters(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v110 = (&v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for PIR.PirAlgorithm();
  v108 = *(v109 - 8);
  v14 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v112 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = &v92 - v18;
  v114 = type metadata accessor for AspireHeEncryptionParameters(0);
  v113 = *(v114 - 8);
  v19 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HE.EncryptionParams();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v118 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for PIR.PirParams();
  v104 = *(v105 - 8);
  v25 = *(v104 + 64);
  v26 = MEMORY[0x28223BE20](v105);
  v106 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v111 = &v92 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v103 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v92 - v33;
  v107 = type metadata accessor for AspireApiPIRShardConfig(0);
  v35 = *(v107 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v107);
  v38 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a2 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v40 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v41 = *(v39 + v40);
  if (!*(v41 + 16))
  {
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v119, v120);
    v44 = type metadata accessor for SecretKey;
    v45 = v121;
LABEL_24:
    outlined destroy of SecretKey(v45, v44);
    return outlined destroy of SecretKey(a2, type metadata accessor for AspireApiPIRConfig);
  }

  v117 = a2;
  outlined init with copy of AspireApiPIRShardConfig(v41 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v38, type metadata accessor for AspireApiPIRShardConfig);
  v42 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  v92 = v42;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + v42, v34, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v43 = *(v11 + 48);
  v95 = v10;
  v94 = v11 + 48;
  v93 = v43;
  LODWORD(v42) = v43(v34, 1, v10);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if (v42 == 1)
  {
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v119, v120);
    outlined destroy of SecretKey(v121, type metadata accessor for SecretKey);
    outlined destroy of SecretKey(v38, type metadata accessor for AspireApiPIRShardConfig);
    a2 = v117;
    return outlined destroy of SecretKey(a2, type metadata accessor for AspireApiPIRConfig);
  }

  v96 = v38;
  v46 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  v47 = v115;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + v46, v115, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v48 = *(v113 + 48);
  v49 = v114;
  if (v48(v47, 1, v114) == 1)
  {
    *v21 = 0;
    *(v21 + 1) = 0;
    *(v21 + 2) = MEMORY[0x277D84F90];
    *(v21 + 3) = 0;
    v21[32] = 1;
    *(v21 + 5) = 0;
    v21[48] = 1;
    *(v21 + 7) = 0;
    v21[64] = 1;
    v50 = &v21[*(v49 + 40)];
    UnknownStorage.init()();
    v51 = v48(v47, 1, v49);
    a2 = v117;
    v52 = v122;
    v53 = v96;
    if (v51 != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v47, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    _s8CipherML9SecretKeyVWObTm_0(v47, v21, type metadata accessor for AspireHeEncryptionParameters);
    a2 = v117;
    v52 = v122;
    v53 = v96;
  }

  v54 = v116;
  AspireHeEncryptionParameters.cryptokit()(v118);
  v56 = v120;
  v55 = v121;
  if (v54)
  {
    outlined consume of Data._Representation(v119, v120);
    outlined destroy of SecretKey(v55, type metadata accessor for SecretKey);
    outlined destroy of SecretKey(v21, type metadata accessor for AspireHeEncryptionParameters);
    v44 = type metadata accessor for AspireApiPIRShardConfig;
    v45 = v53;
    goto LABEL_24;
  }

  outlined destroy of SecretKey(v21, type metadata accessor for AspireHeEncryptionParameters);
  result = (*(v108 + 104))(v112, *MEMORY[0x277D02FA0], v109);
  if (*v53 < 0)
  {
    goto LABEL_43;
  }

  if (v53[1] < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v116 = *v53;
  v58 = v53[2];
  v59 = *(v58 + 16);
  if (v59)
  {
    v123 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
    v60 = v123;
    v61 = (v58 + 32);
    while (1)
    {
      v63 = *v61++;
      v62 = v63;
      if (v63 < 0)
      {
        break;
      }

      v123 = v60;
      v65 = *(v60 + 16);
      v64 = *(v60 + 24);
      if (v65 >= v64 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
        v60 = v123;
      }

      *(v60 + 16) = v65 + 1;
      *(v60 + 8 * v65 + 32) = v62;
      --v59;
      v52 = v122;
      if (!v59)
      {
        v56 = v120;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_20:
  v66 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  result = swift_beginAccess();
  if ((*(v39 + v66) & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v67 = v96 + *(v107 + 40);
  if ((v67[8] & 1) == 0 && (*v67 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v91 = *(v96 + *(v107 + 36));
  PIR.PirParams.init(encryptionParams:algorithm:entriesCount:entrySize:dimensions:batchSize:internalBatchSize:compressResponse:)();
  v68 = v103;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + v92, v103, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v69 = v95;
  v70 = v93;
  if (v93(v68, 1, v95) == 1)
  {
    v71 = v110;
    *v110 = 0;
    v71[1] = 0;
    v71[2] = MEMORY[0x277D84F90];
    v71[3] = 0;
    v72 = v71 + *(v69 + 32);
    UnknownStorage.init()();
    v73 = v70(v68, 1, v69);
    v74 = v111;
    if (v73 != 1)
    {
      v75 = v111;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v68, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      v74 = v75;
    }
  }

  else
  {
    v71 = v110;
    _s8CipherML9SecretKeyVWObTm_0(v68, v110, type metadata accessor for AspirePirBatchPirParameters);
    v74 = v111;
  }

  result = (*(v104 + 16))(v106, v74, v105);
  if ((*v71 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v76 = v71[1];
  if ((v76 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v77 = v71[2];
  v78 = *(v77 + 16);
  if (v78)
  {
    v124 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
    v79 = v124;
    v80 = (v77 + 32);
    while (1)
    {
      v82 = *v80++;
      v81 = v82;
      if (v82 < 0)
      {
        break;
      }

      v124 = v79;
      v84 = *(v79 + 16);
      v83 = *(v79 + 24);
      if (v84 >= v83 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
        v79 = v124;
      }

      *(v79 + 16) = v84 + 1;
      *(v79 + 8 * v84 + 32) = v81;
      --v78;
      v52 = v122;
      if (!v78)
      {
        v56 = v120;
        goto LABEL_39;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_39:
  v122 = v76;
  v85 = v117;
  if ((v110[3] & 0x8000000000000000) == 0)
  {
    v86 = type metadata accessor for SecretKey();
    v87 = v121;
    (*(v101 + 16))(v100, v121 + *(v86 + 20), v102);
    PIR.BatchKeywordPirClient.init(pirParams:queryHashFunctionCount:numHashFunctionsPerTable:tableSizeForHash:numPirPerShard:secretKey:)();
    (*(v104 + 8))(v111, v105);
    outlined destroy of SecretKey(v96, type metadata accessor for AspireApiPIRShardConfig);
    v88 = v99;
    _s8CipherML9SecretKeyVWObTm_0(v87, v99, type metadata accessor for SecretKey);
    v89 = type metadata accessor for BatchPIRClient();
    _s8CipherML9SecretKeyVWObTm_0(v110, v88 + v89[5], type metadata accessor for AspirePirBatchPirParameters);
    v90 = (v88 + v89[6]);
    *v90 = v119;
    v90[1] = v56;
    (*(v97 + 32))(v88 + v89[8], v52, v98);
    return _s8CipherML9SecretKeyVWObTm_0(v85, v88 + v89[7], type metadata accessor for AspireApiPIRConfig);
  }

LABEL_49:
  __break(1u);
  return result;
}

size_t BatchPIRClient.constructPIRRequest(with:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for AspireApiPIRRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for BatchPIRClient() + 32);
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [Data] and conformance [A]();
  v11 = v3 + v10;
  v12 = PIR.BatchKeywordPirClient.queries<A>(_:)();
  if (v2)
  {
    return v11;
  }

  v14 = v12;
  v15 = *(v12 + 16);
  if (!v15)
  {

    return MEMORY[0x277D84F90];
  }

  v21 = v3;
  v23 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v16 = 0;
  v11 = v23;
  v17 = *(v14 + 16);
  if (v17 >= v15)
  {
    v17 = v15;
  }

  v22 = v17;
  while (v22 != v16)
  {
    if (v16 >= *(v14 + 16))
    {
      goto LABEL_15;
    }

    v18 = *(v14 + 8 * v16 + 32);

    closure #1 in BatchPIRClient.constructPIRRequest(with:)(v16, v18, v21, v9);

    v23 = v11;
    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
      v11 = v23;
    }

    ++v16;
    *(v11 + 16) = v20 + 1;
    result = _s8CipherML9SecretKeyVWObTm_0(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, type metadata accessor for AspireApiPIRRequest);
    if (v15 == v16)
    {

      return v11;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t BatchPIRClient.decryptPIRResponse(_:keywords:)(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v3 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v103 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v82 - v12;
  v14 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v113 = *(v14 - 8);
  v15 = *(v113 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HE.SerializedCiphertext();
  v111 = *(v18 - 8);
  v19 = *(v111 + 64);
  MEMORY[0x28223BE20](v18);
  v109 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v97 = *(v21 - 8);
  v22 = *(v97 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AspireApiPIRResponse(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  if (v30)
  {
    v31 = a1;
    v118 = MEMORY[0x277D84F90];
    v85 = v30;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v32 = 0;
    v92 = v118;
    v33 = v31 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v102 = *MEMORY[0x277D02F30];
    v106 = (v111 + 104);
    v101 = *MEMORY[0x277D02F28];
    v105 = v111 + 32;
    v34 = *(v26 + 72);
    v108 = v13;
    v95 = v24;
    v94 = v29;
    v99 = v17;
    v100 = v6;
    v107 = v18;
    v86 = v33;
    v84 = v34;
    while (1)
    {
      outlined init with copy of AspireApiPIRShardConfig(v33 + v34 * v32, v29, type metadata accessor for AspireApiPIRResponse);
      v35 = *v29;
      v36 = *(*v29 + 16);
      if (v36)
      {
        break;
      }

      outlined destroy of SecretKey(v29, type metadata accessor for AspireApiPIRResponse);
      v39 = MEMORY[0x277D84F90];
LABEL_30:
      v74 = v92;
      v118 = v92;
      v76 = *(v92 + 16);
      v75 = *(v92 + 24);
      v33 = v86;
      if (v76 >= v75 >> 1)
      {
        v83 = v32;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
        v33 = v86;
        v32 = v83;
        v74 = v118;
      }

      ++v32;
      *(v74 + 16) = v76 + 1;
      v92 = v74;
      *(v74 + 8 * v76 + 32) = v39;
      v29 = v94;
      v34 = v84;
      if (v32 == v85)
      {
        v81 = v88;
        goto LABEL_36;
      }
    }

    v83 = v32;
    v117 = MEMORY[0x277D84F90];
    v91 = v36;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v38 = 0;
    v39 = v117;
    v93 = v35 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v40 = v35;
    v87 = v35;
    while (v38 < *(v40 + 16))
    {
      v98 = v39;
      v41 = *(v97 + 72);
      v96 = v38;
      outlined init with copy of AspireApiPIRShardConfig(v93 + v41 * v38, v24, type metadata accessor for AspireHeSerializedCiphertextVec);
      v42 = *v24;
      v43 = *(*v24 + 16);
      if (v43)
      {
        v116 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
        v44 = 0;
        v114 = v116;
        v112 = v42 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
        v110 = v42;
        while (v44 < *(v42 + 16))
        {
          v45 = v43;
          outlined init with copy of AspireApiPIRShardConfig(v112 + *(v113 + 72) * v44, v17, type metadata accessor for AspireHeSerializedCiphertext);
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v13, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
          v46 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
          if ((*(*(v46 - 8) + 48))(v13, 1, v46) == 1)
          {
            v77 = type metadata accessor for CipherMLError();
            _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
            swift_allocError();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            outlined destroy of SecretKey(v17, type metadata accessor for AspireHeSerializedCiphertext);
            outlined destroy of SecretKey(v95, type metadata accessor for AspireHeSerializedCiphertextVec);

            outlined destroy of SecretKey(v94, type metadata accessor for AspireApiPIRResponse);

            return v77;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s8CipherML9SecretKeyVWObTm_0(v13, v6, type metadata accessor for AspireHeSerializedFullCiphertext);
            v48 = *v6;
            v47 = v6[1];
            v49 = v6[2];
            v50 = *(v49 + 16);
            if (v50)
            {
              v104 = *v6;
              outlined copy of Data._Representation(v48, v47);
              v115 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
              v51 = v115;
              v52 = (v49 + 32);
              v53 = *(v115 + 16);
              do
              {
                v55 = *v52++;
                v54 = v55;
                v115 = v51;
                v56 = *(v51 + 24);
                if (v53 >= v56 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v53 + 1, 1);
                  v51 = v115;
                }

                *(v51 + 16) = v53 + 1;
                *(v51 + 8 * v53++ + 32) = v54;
                --v50;
              }

              while (v50);
              v17 = v99;
              outlined destroy of SecretKey(v99, type metadata accessor for AspireHeSerializedCiphertext);
              v6 = v100;
              v48 = v104;
            }

            else
            {
              outlined copy of Data._Representation(*v6, v6[1]);
              outlined destroy of SecretKey(v17, type metadata accessor for AspireHeSerializedCiphertext);
              v51 = MEMORY[0x277D84F90];
            }

            v60 = v6[3];
            outlined destroy of SecretKey(v6, type metadata accessor for AspireHeSerializedFullCiphertext);
            v61 = v109;
            *v109 = v48;
            v61[1] = v47;
            v62 = v101;
          }

          else
          {
            outlined destroy of SecretKey(v17, type metadata accessor for AspireHeSerializedCiphertext);
            v57 = v103;
            _s8CipherML9SecretKeyVWObTm_0(v13, v103, type metadata accessor for AspireHeSerializedSeededCiphertext);
            v58 = *v57;
            v59 = v57[1];
            v51 = v57[2];
            v60 = v57[3];
            outlined copy of Data._Representation(*v57, v59);
            outlined copy of Data._Representation(v51, v60);
            outlined destroy of SecretKey(v57, type metadata accessor for AspireHeSerializedSeededCiphertext);
            v61 = v109;
            *v109 = v58;
            v61[1] = v59;
            v62 = v102;
          }

          v63 = v106;
          v64 = v107;
          v61[2] = v51;
          v61[3] = v60;
          v65 = v61;
          (*v63)(v61, v62, v64);
          v66 = v114;
          v116 = v114;
          v68 = *(v114 + 16);
          v67 = *(v114 + 24);
          if (v68 >= v67 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v67 > 1, v68 + 1, 1);
            v66 = v116;
          }

          ++v44;
          *(v66 + 16) = v68 + 1;
          v69 = (*(v111 + 80) + 32) & ~*(v111 + 80);
          v114 = v66;
          result = (*(v111 + 32))(v66 + v69 + *(v111 + 72) * v68, v65, v64);
          v43 = v45;
          v13 = v108;
          v42 = v110;
          if (v44 == v45)
          {
            outlined destroy of SecretKey(v95, type metadata accessor for AspireHeSerializedCiphertextVec);
            v40 = v87;
            v70 = v114;
            goto LABEL_25;
          }
        }

        __break(1u);
        break;
      }

      outlined destroy of SecretKey(v24, type metadata accessor for AspireHeSerializedCiphertextVec);
      v70 = MEMORY[0x277D84F90];
LABEL_25:
      v39 = v98;
      v117 = v98;
      v72 = *(v98 + 16);
      v71 = *(v98 + 24);
      v73 = v96;
      if (v72 >= v71 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
        v73 = v96;
        v39 = v117;
      }

      v38 = v73 + 1;
      *(v39 + 16) = v72 + 1;
      *(v39 + 8 * v72 + 32) = v70;
      v24 = v95;
      result = v94;
      if (v38 == v91)
      {
        outlined destroy of SecretKey(v94, type metadata accessor for AspireApiPIRResponse);
        v32 = v83;
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
    v81 = v88;
LABEL_36:
    v78 = *(type metadata accessor for BatchPIRClient() + 32);
    v118 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [Data] and conformance [A]();
    v77 = v90 + v78;
    v79 = v89;
    v80 = PIR.BatchKeywordPirClient.decrypt<A>(replies:_:)();
    if (!v79)
    {
      v77 = v80;
    }

    return v77;
  }

  return result;
}

uint64_t BatchPIRClient.configID.getter()
{
  v1 = v0 + *(type metadata accessor for BatchPIRClient() + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t BatchPIRClient.client.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BatchPIRClient() + 32);
  v4 = type metadata accessor for PIR.BatchKeywordPirClient();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t closure #1 in BatchPIRClient.constructPIRRequest(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v40 = a3;
  v7 = type metadata accessor for HE.SerializedCiphertext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AspirePirEncryptedIndices(0);
  v15 = *(*(v37 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v37);
  v38 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  if (v18)
  {
    v48 = v4;
    v36[1] = a4;
    v49 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v47 = v49;
    v20 = *(v8 + 16);
    v19 = v8 + 16;
    v21 = a2 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v42 = (v19 - 8);
    v43 = v20;
    v41 = *(v19 + 56);
    while (1)
    {
      v22 = v46;
      v23 = v43(v46, v21, v7);
      MEMORY[0x28223BE20](v23);
      v36[-2] = v22;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);
      v24 = v48;
      static Message.with(_:)();
      v48 = v24;
      if (v24)
      {
        break;
      }

      v25 = v22;
      v26 = v7;
      (*v42)(v25, v7);
      v27 = v47;
      v49 = v47;
      v29 = *(v47 + 16);
      v28 = *(v47 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
        v27 = v49;
      }

      *(v27 + 16) = v29 + 1;
      v30 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = v27;
      v16 = _s8CipherML9SecretKeyVWObTm_0(v14, v27 + v30 + *(v44 + 72) * v29, type metadata accessor for AspireHeSerializedCiphertext);
      v21 += v41;
      --v18;
      v7 = v26;
      if (!v18)
      {
        goto LABEL_9;
      }
    }

    (*v42)(v22, v7);
  }

  else
  {
LABEL_9:
    MEMORY[0x28223BE20](v16);
    v32 = v40;
    v36[-2] = v33;
    v36[-1] = v32;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices);
    v34 = v38;
    static Message.with(_:)();

    v35 = type metadata accessor for AspireApiPIRRequest(0);
    MEMORY[0x28223BE20](v35);
    v36[-4] = v39;
    v36[-3] = v34;
    v36[-2] = v32;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest);
    static Message.with(_:)();
    return outlined destroy of SecretKey(v34, type metadata accessor for AspirePirEncryptedIndices);
  }
}

uint64_t closure #2 in closure #1 in BatchPIRClient.constructPIRRequest(with:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;

  *a1 = a2;
  result = type metadata accessor for BatchPIRClient();
  v8 = a3 + *(result + 20);
  v9 = *(v8 + 8);
  v10 = *(*(v8 + 16) + 16);
  if (is_mul_ok(v9, v10))
  {
    a1[1] = v9 * v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in closure #1 in BatchPIRClient.constructPIRRequest(with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v7 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspirePirEncryptedIndices(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    *a1 = a2;
    outlined init with copy of AspireApiPIRShardConfig(a3, v17, type metadata accessor for AspirePirEncryptedIndices);
    v18 = type metadata accessor for AspireApiPIRRequest(0);
    v19 = *(v18 + 28);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v19, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    _s8CipherML9SecretKeyVWObTm_0(v17, a1 + v19, type metadata accessor for AspirePirEncryptedIndices);
    v20 = (*(v13 + 56))(a1 + v19, 0, 1, v12);
    MEMORY[0x28223BE20](v20);
    v21 = v29;
    *(&v28 - 2) = v29;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
    static Message.with(_:)();
    v22 = *(v18 + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v22, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    _s8CipherML9SecretKeyVWObTm_0(v11, a1 + v22, type metadata accessor for AspireApiEvaluationKeyMetadata);
    (*(v8 + 56))(a1 + v22, 0, 1, v7);
    v23 = (v21 + *(type metadata accessor for BatchPIRClient() + 24));
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

uint64_t closure #1 in closure #3 in closure #1 in BatchPIRClient.constructPIRRequest(with:)(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2 + *(type metadata accessor for BatchPIRClient() + 28);
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

uint64_t type metadata accessor for BatchPIRClient()
{
  result = type metadata singleton initialization cache for BatchPIRClient;
  if (!type metadata singleton initialization cache for BatchPIRClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Data] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Data] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Data] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Data] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for BatchPIRClient()
{
  result = type metadata accessor for SecretKey();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspirePirBatchPirParameters(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AspireApiPIRConfig(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PIR.BatchKeywordPirClient();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t outlined destroy of SecretKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AspireApiPIRShardConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8CipherML9SecretKeyVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RotationTask.requestsManager.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*RotationTask.requestsManager.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return RotationTask.requestsManager.modify;
}

void RotationTask.requestsManager.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t RotationTask.__allocating_init(requestsManager:)()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t RotationTask.init(requestsManager:)()
{
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t RotationTask.run()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x2822009F8](RotationTask.run(), v0, 0);
}

{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v0[7] = RequestsManager.keyRotation(for:)(0, 0);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = RotationTask.run();

    return KeyRotation.run()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = RotationTask.run();
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);

    v5 = RotationTask.run();
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t RotationTask.deinit()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t RotationTask.__deallocating_deinit()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask()
{
  v2 = *v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x2822009F8](protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask, v2, 0);
}

{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v0[7] = RequestsManager.keyRotation(for:)(0, 0);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask;

    return KeyRotation.run()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);

    v5 = protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t dispatch thunk of RotationTask.run()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v6();
}

uint64_t AllowListMigrationV1.AllowListFormat.convertToCurrent()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v4 = type metadata accessor for UseCaseGroup();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v12 = 0;
  v41 = result;
  v42 = a3;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v37 = result + 64;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v43 = (v18 - 1) & v18;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v24 = (*(v42 + 48) + 16 * v23);
      v26 = *v24;
      v25 = v24[1];
      v27 = v39;
      outlined init with copy of AllowListMigrationV1.UseCaseGroup(*(v42 + 56) + *(v40 + 72) * v23, v39, type metadata accessor for AllowListMigrationV1.UseCaseGroup);

      v28 = v44;
      closure #1 in AllowListMigrationV1.AllowListFormat.convertToCurrent()(v27, v7);
      outlined destroy of AllowListMigrationV1.UseCaseGroup(v27, type metadata accessor for AllowListMigrationV1.UseCaseGroup);
      v44 = v28;
      if (v28)
      {
        break;
      }

      *(v37 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v29 = v41;
      v30 = (*(v41 + 48) + 16 * v23);
      *v30 = v26;
      v30[1] = v25;
      result = outlined init with take of UseCaseGroup(v7, *(v29 + 56) + *(v38 + 72) * v23, type metadata accessor for UseCaseGroup);
      v31 = *(v29 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      *(v29 + 16) = v33;
      v18 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }

    return v25;
  }

  else
  {
LABEL_5:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        v25 = v35;

        return v25;
      }

      v22 = *(v14 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AllowListMigrationV1.AllowListFormat.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListMigrationV1.AllowListFormat.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AllowListMigrationV1.AllowListFormat.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListMigrationV1.AllowListFormat.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.AllowListFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.AllowListFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AllowListMigrationV1.AllowListFormat.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O0fG6FormatV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O0fG6FormatV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMd, &_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMR);
  lazy protocol witness table accessor for type [HE.SecurityLevel : [HE.RlweParams]] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CryptoKitPrivate2HEO6SchemeOGMd, &_sSay16CryptoKitPrivate2HEO6SchemeOGMR);
    lazy protocol witness table accessor for type [HE.Scheme] and conformance <A> [A](&lazy protocol witness table cache variable for type [HE.Scheme] and conformance <A> [A], &lazy protocol witness table cache variable for type HE.Scheme and conformance HE.Scheme);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = a4;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML20AllowListMigrationV1O12UseCaseGroupVGMd, &_sSDySS8CipherML20AllowListMigrationV1O12UseCaseGroupVGMR);
    lazy protocol witness table accessor for type [String : AllowListMigrationV1.UseCaseGroup] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t AllowListMigrationV1.AllowListFormat.init(from:)(uint64_t *a1)
{
  result = specialized AllowListMigrationV1.AllowListFormat.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance AllowListMigrationV1.AllowListFormat@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized AllowListMigrationV1.AllowListFormat.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

CipherML::AllowListMigrationV1::UseCaseGroup::CodingKeys_optional __swiftcall AllowListMigrationV1.UseCaseGroup.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys()
{
  AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AllowListMigrationV1.UseCaseGroup.securityLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HE.SecurityLevel();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AllowListMigrationV1.UseCaseGroup.useCases.getter()
{
  v1 = *(v0 + *(type metadata accessor for AllowListMigrationV1.UseCaseGroup(0) + 32));
}

uint64_t AllowListMigrationV1.UseCaseGroup.init(securityLevel:keyExpirationMinutes:keyRotationBeforeExpirationMinutes:keyRotationIgnoreMissingEvaluationKey:useCases:networkConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for HE.SecurityLevel();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
  *(a7 + v15[5]) = a2;
  *(a7 + v15[6]) = a3;
  *(a7 + v15[7]) = a4;
  *(a7 + v15[8]) = a5;
  return outlined init with take of UseCaseGroup(a6, a7 + v15[9], type metadata accessor for AllowListMigrationV1.NetworkConfig);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AllowListMigrationV1.NetworkManagerType.CodingKeys()
{
  v1 = 7564641;
  v2 = 0x656E696C66666FLL;
  if (*v0 != 2)
  {
    v2 = 0x73757361676570;
  }

  if (*v0)
  {
    v1 = 0x657269707361;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AllowListMigrationV1.NetworkManagerType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AllowListMigrationV1.NetworkManagerType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AllowListMigrationV1.NetworkManagerType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17PegasusCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17PegasusCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v54 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17OfflineCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17OfflineCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO16AspireCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO16AspireCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v51 - v13;
  v60 = type metadata accessor for URL();
  v62 = *(v60 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO13AmsCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO13AmsCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v65 = *(v25 - 8);
  v26 = *(v65 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v51 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v64, v24, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v31 = (*(*(v30 - 1) + 48))(v24, 3, v30);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      LOBYTE(v67) = 2;
      lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys();
      v44 = v51;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v46 = v52;
      v45 = v53;
    }

    else
    {
      LOBYTE(v67) = 3;
      lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys();
      v44 = v54;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v46 = v55;
      v45 = v56;
    }

    (*(v46 + 8))(v44, v45);
    return (*(v65 + 8))(v28, v25);
  }

  if (v31)
  {
    LOBYTE(v67) = 0;
    lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v20, v16);
    return (*(v65 + 8))(v28, v25);
  }

  v32 = v30[12];
  v33 = &v24[v30[16]];
  v35 = *v33;
  v34 = v33[1];
  v64 = v35;
  v56 = v34;
  LODWORD(v55) = v24[v30[20]];
  v37 = v61;
  v36 = v62;
  v38 = v60;
  (*(v62 + 32))(v61, v24, v60);
  outlined init with take of URL?(&v24[v32], v63);
  LOBYTE(v67) = 1;
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys();
  v39 = v57;
  v40 = v25;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  LOBYTE(v67) = 0;
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v41 = v59;
  v42 = v66;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v42)
  {
    outlined consume of Data?(v64, v56);
    (*(v58 + 8))(v39, v41);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v36 + 8))(v37, v38);
  }

  else
  {
    v47 = v56;
    v66 = v25;
    LOBYTE(v67) = 1;
    v48 = v64;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v67 = v48;
    v68 = v47;
    v69 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v40 = v66;
    v49 = v61;
    LOBYTE(v67) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v50 = v62;
    outlined consume of Data?(v48, v47);
    (*(v58 + 8))(v39, v41);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v50 + 8))(v49, v60);
  }

  return (*(v65 + 8))(v28, v40);
}

uint64_t AllowListMigrationV1.NetworkManagerType.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v0, v19, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v21 = (*(*(v20 - 1) + 48))(v19, 3, v20);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    return MEMORY[0x22AA61420](v26);
  }

  if (v21)
  {
    v26 = 0;
    return MEMORY[0x22AA61420](v26);
  }

  v22 = v20[12];
  v23 = &v19[v20[16]];
  v24 = *v23;
  v32 = *(v23 + 1);
  v33 = v24;
  v31 = v19[v20[20]];
  v25 = v9;
  v30 = *(v9 + 32);
  v30(v15, v19, v8);
  outlined init with take of URL?(&v19[v22], v7);
  MEMORY[0x22AA61420](1);
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of URL?(v7, v4);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v30(v12, v4, v8);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v12, v8);
  }

  v29 = v32;
  v28 = v33;
  if (v32 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v31);
  outlined consume of Data?(v28, v29);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (*(v25 + 8))(v15, v8);
}

Swift::Int AllowListMigrationV1.NetworkManagerType.hashValue.getter()
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AllowListMigrationV1.NetworkManagerType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17PegasusCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17PegasusCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3);
  v70 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17OfflineCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17OfflineCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v72 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO16AspireCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO16AspireCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v10 = *(v9 - 8);
  v68 = v9;
  v69 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO13AmsCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO13AmsCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v14 = *(v13 - 8);
  v62 = v13;
  v63 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v74 = *(v18 - 8);
  v19 = *(v74 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - v20;
  v22 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys();
  v31 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v31)
  {
    v61 = v17;
    v32 = v71;
    v33 = v72;
    v75 = v28;
    v34 = v73;
    v35 = KeyedDecodingContainer.allKeys.getter();
    v36 = (2 * *(v35 + 16)) | 1;
    v77 = v35;
    v78 = v35 + 32;
    v79 = 0;
    v80 = v36;
    v37 = specialized Collection<>.popFirst()();
    if (v37 == 4 || v79 != v80 >> 1)
    {
      v41 = v21;
      v42 = type metadata accessor for DecodingError();
      swift_allocError();
      v43 = v18;
      v45 = v44;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v45 = v22;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v42 - 8) + 104))(v45, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v74 + 8))(v41, v43);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37 > 1u)
      {
        v48 = v74;
        if (v37 == 2)
        {
          v81 = 2;
          lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v64 + 8))(v33, v65);
          (*(v48 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
          v40 = v75;
          (*(*(v49 - 8) + 56))(v75, 2, 3, v49);
        }

        else
        {
          v81 = 3;
          lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys();
          v50 = v70;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v66 + 8))(v50, v67);
          (*(v48 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
          v40 = v75;
          (*(*(v53 - 8) + 56))(v75, 3, 3, v53);
        }
      }

      else if (v37)
      {
        v81 = 1;
        lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v72 = v18;
        v51 = type metadata accessor for URL();
        v81 = 0;
        _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v70 = v25;
        v52 = v68;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v67 = v21;
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v54 = *(v66 + 48);
        v81 = 1;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v55 = v51;
        v56 = v69;
        v64 = v54;
        v65 = v55;
        v57 = v66;
        v58 = &v70[*(v66 + 64)];
        v81 = 2;
        lazy protocol witness table accessor for type Data and conformance Data();
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v81 = 3;
        LOBYTE(v55) = KeyedDecodingContainer.decode(_:forKey:)();
        v59 = *(v57 + 80);
        (*(v56 + 8))(v32, v52);
        (*(v74 + 8))(v67, v72);
        swift_unknownObjectRelease();
        v25[v59] = v55 & 1;
        (*(*(v57 - 8) + 56))(v25, 0, 3, v57);
        v40 = v75;
        outlined init with take of UseCaseGroup(v25, v75, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
      }

      else
      {
        v81 = 0;
        lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys();
        v38 = v61;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v63 + 8))(v38, v62);
        (*(v74 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v40 = v75;
        (*(*(v39 - 8) + 56))(v75, 1, 3, v39);
      }

      outlined init with take of UseCaseGroup(v40, v34, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v76);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AllowListMigrationV1.NetworkManagerType()
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AllowListMigrationV1.NetworkManagerType()
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AllowListMigrationV1.NetworkConfig.secondaryIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AllowListMigrationV1.NetworkConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O13NetworkConfigV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O13NetworkConfigV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType and conformance AllowListMigrationV1.NetworkManagerType, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void AllowListMigrationV1.NetworkConfig.hash(into:)()
{
  AllowListMigrationV1.NetworkManagerType.hash(into:)();
  v1 = (v0 + *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20));
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
}

Swift::Int AllowListMigrationV1.NetworkConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)();
  v1 = (v0 + *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20));
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

uint64_t AllowListMigrationV1.NetworkConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O13NetworkConfigV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O13NetworkConfigV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v25 - v8;
  v10 = type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v10;
  v15 = v13;
  v16 = v28;
  v32 = 0;
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType and conformance AllowListMigrationV1.NetworkManagerType, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v18 = v29;
  v17 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of UseCaseGroup(v18, v15, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v31 = 1;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v20;
  (*(v16 + 8))(v9, v17);
  v22 = v27;
  v23 = (v15 + *(v26 + 20));
  *v23 = v19;
  v23[1] = v21;
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v15, v22, type metadata accessor for AllowListMigrationV1.NetworkConfig);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of AllowListMigrationV1.UseCaseGroup(v15, type metadata accessor for AllowListMigrationV1.NetworkConfig);
}

uint64_t AllowListMigrationV1.NetworkConfig.init(type:secondaryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of UseCaseGroup(a1, a4, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  result = type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AllowListMigrationV1.NetworkConfig(uint64_t a1)
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)();
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

void protocol witness for Hashable.hash(into:) in conformance AllowListMigrationV1.NetworkConfig(uint64_t a1, uint64_t a2)
{
  AllowListMigrationV1.NetworkManagerType.hash(into:)();
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AllowListMigrationV1.NetworkConfig(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)();
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

uint64_t AllowListMigrationV1.UseCaseGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O12UseCaseGroupV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O12UseCaseGroupV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  type metadata accessor for HE.SecurityLevel();
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
    v12 = *(v3 + v11[5]);
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + v11[6]);
    v20 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + v11[7]);
    v19 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v11[8]);
    v17[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML7UseCaseOGMd, &_sSDySS8CipherML7UseCaseOGMR);
    lazy protocol witness table accessor for type [String : UseCase] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : UseCase] and conformance <> [A : B], lazy protocol witness table accessor for type UseCase and conformance UseCase);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v11[9];
    v17[14] = 5;
    type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
    _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig and conformance AllowListMigrationV1.NetworkConfig, type metadata accessor for AllowListMigrationV1.NetworkConfig);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AllowListMigrationV1.UseCaseGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HE.SecurityLevel();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O12UseCaseGroupV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O12UseCaseGroupV10CodingKeysOGMR);
  v28 = *(v31 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys();
  v30 = v11;
  v17 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18 = v26;
  v32 = v5;
  v39 = 0;
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v15;
  (*(v18 + 32))(v15, v29, v6);
  v38 = 1;
  *&v15[v12[5]] = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = 2;
  v20 = a1;
  *(v19 + v12[6]) = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 3;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v28;
  *(v19 + v12[7]) = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML7UseCaseOGMd, &_sSDySS8CipherML7UseCaseOGMR);
  v35 = 4;
  lazy protocol witness table accessor for type [String : UseCase] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : UseCase] and conformance <> [A : B], lazy protocol witness table accessor for type UseCase and conformance UseCase);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v19 + v12[8]) = v33;
  v34 = 5;
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig and conformance AllowListMigrationV1.NetworkConfig, type metadata accessor for AllowListMigrationV1.NetworkConfig);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 8))(v30, v31);
  outlined init with take of UseCaseGroup(v32, v19 + v12[9], type metadata accessor for AllowListMigrationV1.NetworkConfig);
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v19, v25, type metadata accessor for AllowListMigrationV1.UseCaseGroup);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return outlined destroy of AllowListMigrationV1.UseCaseGroup(v19, type metadata accessor for AllowListMigrationV1.UseCaseGroup);
}

uint64_t closure #1 in AllowListMigrationV1.AllowListFormat.convertToCurrent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for HE.SecurityLevel();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v3);
  v81 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for NetworkConfig(0);
  v6 = *(*(v78 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v78);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v66 - v12;
  v73 = type metadata accessor for URL();
  v14 = *(v73 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v73);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for NetworkManagerType(0);
  v22 = *(*(v75 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v75);
  v77 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v66 - v26;
  MEMORY[0x28223BE20](v25);
  v84 = &v66 - v28;
  v29 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
  v30 = *(v29 + 36);
  v74 = a1;
  v31 = a1 + v30;
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(a1 + v30, v21, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  if (!(*(*(v32 - 1) + 48))(v21, 3, v32))
  {
    v71 = v32[12];
    v33 = &v21[v32[16]];
    v35 = *v33;
    v34 = *(v33 + 1);
    v67 = v35;
    v68 = v34;
    v69 = v21[v32[20]];
    v36 = v73;
    (*(v14 + 32))(v17, v21, v73);
    outlined init with take of URL?(&v21[v71], v13);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
    v38 = v37[12];
    v70 = v17;
    v71 = v14;
    v39 = *(v14 + 16);
    v40 = v13;
    v39(v27, v17, v36);
    v41 = &v27[v38];
    v42 = v68;
    outlined init with copy of URL?(v13, v41);
    if (v42 >> 60 == 15)
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      v45 = v67;
      v46 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v46._countAndFlagsBits;
      object = v46._object;
      outlined consume of Data?(v45, v42);
    }

    v47 = &v27[v37[16]];
    v48 = v37[20];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v71 + 8))(v70, v73);
    *v47 = countAndFlagsBits;
    v47[1] = object;
    v27[v48] = v69;
  }

  swift_storeEnumTagMultiPayload();
  v49 = v84;
  outlined init with take of UseCaseGroup(v27, v84, type metadata accessor for NetworkManagerType);
  v50 = v76;
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v49, v76, type metadata accessor for NetworkManagerType);
  v51 = (v31 + *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20));
  v52 = *v51;
  v53 = v51[1];
  v54 = v79;
  v55 = (v50 + *(v78 + 20));
  *v55 = v52;
  v55[1] = v53;
  v56 = *(v74 + *(v29 + 32));
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v50, v54, type metadata accessor for NetworkConfig);
  v57 = v81;
  v58 = v82;
  v59 = v83;
  (*(v82 + 104))(v81, *MEMORY[0x277D02EE8], v83);
  v60 = v77;
  swift_storeEnumTagMultiPayload();

  specialized static NetworkManagerType.== infix(_:_:)(v54, v60);
  outlined destroy of AllowListMigrationV1.UseCaseGroup(v60, type metadata accessor for NetworkManagerType);
  v61 = v80;
  specialized static UseCaseGroup.validate(useCases:networkConfig:keyExpirationMinutes:keyRotationBeforeExpirationMinutes:securityLevel:)(v56, v54, 0xA8C0uLL, 0);
  if (v61)
  {

    (*(v58 + 8))(v57, v59);
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v54, type metadata accessor for NetworkConfig);
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v50, type metadata accessor for NetworkConfig);
    return outlined destroy of AllowListMigrationV1.UseCaseGroup(v84, type metadata accessor for NetworkManagerType);
  }

  else
  {
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v50, type metadata accessor for NetworkConfig);
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v84, type metadata accessor for NetworkManagerType);
    v63 = type metadata accessor for UseCaseGroup();
    v64 = v57;
    v65 = v72;
    *(v72 + v63[5]) = 43200;
    *(v65 + v63[6]) = 0;
    *(v65 + v63[7]) = 0;
    *(v65 + v63[8]) = v56;
    (*(v58 + 32))(v65, v64, v59);
    return outlined init with take of UseCaseGroup(v54, v65 + v63[9], type metadata accessor for NetworkConfig);
  }
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys);
  }

  return result;
}

uint64_t _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static AllowListMigrationV1.NetworkManagerType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  v4 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v64[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v81 = &v64[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v64[-v13];
  v15 = type metadata accessor for URL();
  v82 = *(v15 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v15);
  v78 = &v64[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v64[-v19];
  v21 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v64[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML20AllowListMigrationV1O18NetworkManagerTypeO_AEtMd, &_s8CipherML20AllowListMigrationV1O18NetworkManagerTypeO_AEtMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v64[-v27];
  v30 = &v64[*(v29 + 56) - v27];
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(a1, &v64[-v27], type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(a2, v30, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v32 = *(*(v31 - 1) + 48);
  v33 = v32(v28, 3, v31);
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      if (v32(v30, 3, v31) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v32(v30, 3, v31) != 3)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v33)
  {
    if (v32(v30, 3, v31) != 1)
    {
      goto LABEL_11;
    }

LABEL_9:
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v28, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
    return 1;
  }

  v72 = v9;
  v74 = v14;
  v75 = v20;
  v77 = v15;
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v28, v24, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v76 = v31[12];
  v34 = v31[16];
  v35 = *&v24[v34];
  v36 = *&v24[v34 + 8];
  v37 = v31[20];
  v73 = v24[v37];
  if (v32(v30, 3, v31))
  {
    outlined consume of Data?(v35, v36);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v24[v76], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v82 + 8))(v24, v77);
LABEL_11:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML20AllowListMigrationV1O18NetworkManagerTypeO_AEtMd, &_s8CipherML20AllowListMigrationV1O18NetworkManagerTypeO_AEtMR);
    return 0;
  }

  v69 = v35;
  v70 = v36;
  v39 = *&v30[v34 + 8];
  v71 = *&v30[v34];
  v65 = v30[v37];
  v40 = v82;
  v41 = *(v82 + 32);
  v42 = v75;
  v43 = v77;
  v67 = v82 + 32;
  v68 = v39;
  v66 = v41;
  v41(v75, v30, v77);
  v44 = v76;
  v45 = v74;
  outlined init with take of URL?(&v24[v76], v74);
  v46 = v81;
  outlined init with take of URL?(&v30[v44], v81);
  LOBYTE(v44) = static URL.== infix(_:_:)();
  v47 = *(v40 + 8);
  v47(v24, v43);
  if ((v44 & 1) == 0)
  {
    outlined consume of Data?(v71, v68);
    outlined consume of Data?(v69, v70);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v56 = v42;
LABEL_23:
    v47(v56, v43);
    goto LABEL_24;
  }

  v48 = v80;
  v49 = *(v79 + 48);
  outlined init with copy of URL?(v45, v80);
  outlined init with copy of URL?(v46, &v48[v49]);
  v50 = *(v40 + 48);
  v51 = v45;
  if (v50(v48, 1, v43) == 1)
  {
    v52 = v50(&v48[v49], 1, v43);
    v53 = v73;
    if (v52 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v55 = v70;
      v54 = v71;
      goto LABEL_26;
    }

    outlined consume of Data?(v69, v70);
    outlined consume of Data?(v71, v68);
    goto LABEL_21;
  }

  v57 = v72;
  outlined init with copy of URL?(v48, v72);
  v58 = v50(&v48[v49], 1, v43);
  v53 = v73;
  if (v58 == 1)
  {
    outlined consume of Data?(v69, v70);
    outlined consume of Data?(v71, v68);
    v47(v57, v43);
LABEL_21:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v48, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
LABEL_22:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v56 = v75;
    goto LABEL_23;
  }

  v59 = v78;
  v66(v78, &v48[v49], v43);
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47(v59, v43);
  v47(v57, v43);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v55 = v70;
  v54 = v71;
  if ((v60 & 1) == 0)
  {
    outlined consume of Data?(v69, v70);
    outlined consume of Data?(v54, v68);
    goto LABEL_22;
  }

LABEL_26:
  v61 = v69;
  if (v55 >> 60 != 15)
  {
    v62 = v68;
    if (v68 >> 60 == 15)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v47(v75, v43);
      goto LABEL_31;
    }

    outlined copy of Data?(v69, v55);
    outlined copy of Data?(v54, v62);
    LODWORD(v82) = specialized static Data.== infix(_:_:)(v61, v55, v54, v62);
    outlined consume of Data?(v54, v62);
    outlined consume of Data?(v54, v62);
    outlined consume of Data?(v61, v55);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v53 = v73;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v47(v75, v43);
    outlined consume of Data?(v61, v55);
    if (v82)
    {
      goto LABEL_34;
    }

LABEL_24:
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v28, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
    return 0;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v47(v75, v43);
  v62 = v68;
  if (v68 >> 60 != 15)
  {
LABEL_31:
    outlined consume of Data?(v61, v55);
    outlined consume of Data?(v71, v62);
    goto LABEL_24;
  }

  outlined consume of Data?(v61, v55);
LABEL_34:
  v63 = v53 ^ v65;
  outlined destroy of AllowListMigrationV1.UseCaseGroup(v28, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  return v63 ^ 1u;
}

uint64_t specialized static AllowListMigrationV1.NetworkConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (specialized static AllowListMigrationV1.NetworkManagerType.== infix(_:_:)(a1, a2))
  {
    v4 = *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20);
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

unint64_t specialized AllowListMigrationV1.AllowListFormat.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AllowListMigrationV1.AllowListFormat.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized AllowListMigrationV1.AllowListFormat.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O0fG6FormatV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O0fG6FormatV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMd, &_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMR);
  v11 = 0;
  lazy protocol witness table accessor for type [HE.SecurityLevel : [HE.RlweParams]] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CryptoKitPrivate2HEO6SchemeOGMd, &_sSay16CryptoKitPrivate2HEO6SchemeOGMR);
  v11 = 1;
  lazy protocol witness table accessor for type [HE.Scheme] and conformance <A> [A](&lazy protocol witness table cache variable for type [HE.Scheme] and conformance <A> [A], &lazy protocol witness table cache variable for type HE.Scheme and conformance HE.Scheme);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML20AllowListMigrationV1O12UseCaseGroupVGMd, &_sSDySS8CipherML20AllowListMigrationV1O12UseCaseGroupVGMR);
  v11 = 2;
  lazy protocol witness table accessor for type [String : AllowListMigrationV1.UseCaseGroup] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t specialized AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of AllowListMigrationV1.UseCaseGroup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of UseCaseGroup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys);
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of AllowListMigrationV1.UseCaseGroup(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys);
  }

  return result;
}

void type metadata completion function for AllowListMigrationV1.UseCaseGroup()
{
  type metadata accessor for HE.SecurityLevel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : UseCase]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AllowListMigrationV1.NetworkConfig(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for AllowListMigrationV1.NetworkManagerType()
{
  type metadata accessor for (endpoint: URL, issuer: URL?, authenticationToken: Data?, privacyProxyFailClosed: Bool)(319);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (endpoint: URL, issuer: URL?, authenticationToken: Data?, privacyProxyFailClosed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (endpoint: URL, issuer: URL?, authenticationToken: Data?, privacyProxyFailClosed: Bool))
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (endpoint: URL, issuer: URL?, authenticationToken: Data?, privacyProxyFailClosed: Bool));
    }
  }
}

void type metadata completion function for AllowListMigrationV1.NetworkConfig()
{
  type metadata accessor for AllowListMigrationV1.NetworkManagerType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t specialized AllowListMigrationV1.NetworkManagerType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7564641 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657269707361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C66666FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73757361676570 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t SqliteCache.__allocating_init(for:pirConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  v10 = *(a3 + 33);
  v11 = *(a3 + 48);

  if (v7 == 1)
  {

    return 0;
  }

  else
  {
    if (v9)
    {
      v13 = 10080;
    }

    else
    {
      v13 = v8;
    }

    v14 = v10 & 1;
    return (*(v3 + 144))(a1, a2, v6, v13, &v14, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
  }
}

uint64_t one-time initialization function for keyword()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
  __swift_allocate_value_buffer(v0, static SqliteCache.Column.keyword);
  __swift_project_value_buffer(v0, static SqliteCache.Column.keyword);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
  return ExpressionType.init(_:)();
}

uint64_t SqliteCache.Column.keyword.unsafeMutableAddressor()
{
  if (one-time initialization token for keyword != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);

  return __swift_project_value_buffer(v0, static SqliteCache.Column.keyword);
}

uint64_t static SqliteCache.Column.keyword.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for keyword != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
  v3 = __swift_project_value_buffer(v2, static SqliteCache.Column.keyword);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for value()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
  __swift_allocate_value_buffer(v0, static SqliteCache.Column.value);
  __swift_project_value_buffer(v0, static SqliteCache.Column.value);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data?> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
  return ExpressionType.init(_:)();
}

uint64_t SqliteCache.Column.value.unsafeMutableAddressor()
{
  if (one-time initialization token for value != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);

  return __swift_project_value_buffer(v0, static SqliteCache.Column.value);
}

uint64_t static SqliteCache.Column.value.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for value != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
  v3 = __swift_project_value_buffer(v2, static SqliteCache.Column.value);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for accessTime()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  __swift_allocate_value_buffer(v0, static SqliteCache.Column.accessTime);
  __swift_project_value_buffer(v0, static SqliteCache.Column.accessTime);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  return ExpressionType.init(_:)();
}

uint64_t SqliteCache.Column.accessTime.unsafeMutableAddressor()
{
  if (one-time initialization token for accessTime != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);

  return __swift_project_value_buffer(v0, static SqliteCache.Column.accessTime);
}

uint64_t static SqliteCache.Column.accessTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for accessTime != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  v3 = __swift_project_value_buffer(v2, static SqliteCache.Column.accessTime);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for expirationTime()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  __swift_allocate_value_buffer(v0, static SqliteCache.Column.expirationTime);
  __swift_project_value_buffer(v0, static SqliteCache.Column.expirationTime);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  return ExpressionType.init(_:)();
}

uint64_t SqliteCache.Column.expirationTime.unsafeMutableAddressor()
{
  if (one-time initialization token for expirationTime != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);

  return __swift_project_value_buffer(v0, static SqliteCache.Column.expirationTime);
}

uint64_t static SqliteCache.Column.expirationTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for expirationTime != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  v3 = __swift_project_value_buffer(v2, static SqliteCache.Column.expirationTime);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SqliteCache.cachedResponses.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v4 = type metadata accessor for Table();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SqliteCache.currentTime.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime);
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime + 8);

  return v1;
}

double SqliteCache.expirationTime.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime);
  v3 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime + 8);
  return v2() + *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_minutesToLive) * 60.0;
}

uint64_t SqliteCache.__allocating_init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v79 = a7;
  v74 = a4;
  v75 = a6;
  v72 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v66 - v12;
  v14 = type metadata accessor for Date();
  v73 = *(v14 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Table();
  v76 = *(v18 - 8);
  v19 = *(v76 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = *a5;
  v22 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v77;
  v24 = static SqliteCache.createTable(useCase:schemaVersion:)(v22, a1, a2, 1uLL);
  if (!v23)
  {
    v25 = v24;
    v69 = v17;
    v70 = v14;
    v71 = v13;
    v68 = v21;
    v77 = v18;

    v26 = Connection.columnNames(tableName:)(0x6552646568636143, 0xEF7365736E6F7073);
    v66 = v22;
    v67 = v25;
    strcpy(v80, "expirationTime");
    HIBYTE(v80[1]) = -18;
    MEMORY[0x28223BE20](v26);
    *(&v66 - 2) = v80;
    v32 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v66 - 4), v31);

    if ((v32 & 1) == 0)
    {
      v34 = v69;
      v75(v33);
      Date.timeIntervalSinceReferenceDate.getter();
      v36 = v35;
      (*(v73 + 8))(v34, v70);
      v37 = v74 * 60.0 + v36;
      if (one-time initialization token for expirationTime != -1)
      {
        swift_once();
      }

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
      __swift_project_value_buffer(v38, static SqliteCache.Column.expirationTime);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
      v40 = v71;
      (*(*(v39 - 8) + 56))(v71, 1, 1, v39);
      *v80 = v37;
      v41 = v66;
      v42 = Table.addColumn<A>(_:check:defaultValue:)();
      v44 = v43;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
      v45._countAndFlagsBits = v42;
      v45._object = v44;
      Connection.execute(_:)(v45);
      if (v46)
      {
        (*(v76 + 8))(v41, v77);

        goto LABEL_4;
      }
    }

    v80[0] = 0;
    v80[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    MEMORY[0x22AA60A80](0x20455441445055, 0xE700000000000000);
    MEMORY[0x22AA60A80](0x6552646568636143, 0xEF7365736E6F7073);
    MEMORY[0x22AA60A80](0x205445530ALL, 0xE500000000000000);
    if (one-time initialization token for accessTime != -1)
    {
      swift_once();
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
    __swift_project_value_buffer(v47, static SqliteCache.Column.accessTime);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
    countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
    MEMORY[0x22AA60A80](countAndFlagsBits);

    MEMORY[0x22AA60A80](0xD000000000000016, 0x80000002250369B0);
    if (one-time initialization token for keyword != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    __swift_project_value_buffer(v49, static SqliteCache.Column.keyword);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    v50 = Expressible.asSQL()()._countAndFlagsBits;
    MEMORY[0x22AA60A80](v50);

    MEMORY[0x22AA60A80](0xD00000000000001FLL, 0x80000002250369D0);
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, static SqliteCache.Column.expirationTime);
    v51 = Expressible.asSQL()()._countAndFlagsBits;
    MEMORY[0x22AA60A80](v51);

    MEMORY[0x22AA60A80](0x494E525554455220, 0xEB0000000020474ELL);
    v52 = v67;
    if (one-time initialization token for value != -1)
    {
      swift_once();
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    __swift_project_value_buffer(v53, static SqliteCache.Column.value);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data?> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    v54 = Expressible.asSQL()()._countAndFlagsBits;
    MEMORY[0x22AA60A80](v54);

    MEMORY[0x22AA60A80](59, 0xE100000000000000);
    v55 = Connection.prepare(_:_:)();
    v56 = v79;
    v57 = v55;

    if (Connection.userVersion.getter() == 1)
    {
      v58 = v77;
      v27 = v78;
      v60 = v75;
      v59 = v76;
      v61 = v72;
      v62 = v68;
    }

    else
    {
      Connection.setUserVersion(_:)(1);
      v60 = v75;
      v61 = v72;
      v62 = v68;
      if (v63)
      {
        (*(v76 + 8))(v66, v77);

        goto LABEL_4;
      }

      v58 = v77;
      v27 = v78;
      v59 = v76;
    }

    (*(v59 + 32))(v27 + OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses, v66, v58);
    *(v27 + OBJC_IVAR____TtC8CipherML11SqliteCache_maximumCount) = v61;
    *(v27 + OBJC_IVAR____TtC8CipherML11SqliteCache_minutesToLive) = v74;
    *(v27 + OBJC_IVAR____TtC8CipherML11SqliteCache_db) = v52;
    *(v27 + OBJC_IVAR____TtC8CipherML11SqliteCache_updateLastAccessAndGetValueForKeyword) = v57;
    *(v27 + OBJC_IVAR____TtC8CipherML11SqliteCache_evictionPolicy) = v62;
    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    *(v64 + 24) = v56;
    v65 = (v27 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime);
    *v65 = partial apply for closure #1 in SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:);
    v65[1] = v64;
    return v27;
  }

LABEL_4:

  v27 = v78;
  type metadata accessor for SqliteCache();
  v28 = *(*v27 + 48);
  v29 = *(*v27 + 52);
  swift_deallocPartialClassInstance();
  return v27;
}

uint64_t static SqliteCache.createTable(useCase:schemaVersion:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v47 - v20;
  if (a4 <= 1)
  {
    v50 = a4;
    v51 = a1;
    if (one-time initialization token for url != -1)
    {
      v46 = v19;
      swift_once();
      v19 = v46;
    }

    v25 = v19;
    __swift_project_value_buffer(v19, static CacheDirectory.url);
    v54._countAndFlagsBits = a2;
    v54._object = a3;
    (*(v9 + 104))(v12, *MEMORY[0x277CC91D8], v8);
    lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(component:directoryHint:)();
    (*(v9 + 8))(v12, v8);
    v26 = v55;
    URL.appendingPathExtension(_:)();
    v29 = *(v14 + 8);
    v27 = v14 + 8;
    v28 = v29;
    v29(v17, v25);
    type metadata accessor for Connection();
    URL.path(percentEncoded:)(0);
    v30 = v52;
    v31 = Connection.__allocating_init(_:readonly:)();
    if (v30)
    {
      v28(v26, v25);
    }

    else
    {
      v8 = v31;
      v48 = v28;
      v49 = v27;
      v52 = v25;
      v32 = v51;
      v33 = MEMORY[0x22AA5FA90](0x6552646568636143, 0xEF7365736E6F7073, 0, 0);
      MEMORY[0x28223BE20](v33);
      *(&v47 - 2) = v50;
      v53._countAndFlagsBits = Table.create(temporary:ifNotExists:withoutRowid:block:)();
      v53._object = v34;

      MEMORY[0x22AA60A80](2619, 0xE200000000000000);

      v54 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite11Expressible_pGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite11Expressible_pGMR);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_225022960;
      if (one-time initialization token for accessTime != -1)
      {
        swift_once();
      }

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
      v37 = __swift_project_value_buffer(v36, static SqliteCache.Column.accessTime);
      *(v35 + 56) = v36;
      *(v35 + 64) = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v35 + 32));
      (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v37, v36);
      v39 = Table.createIndex(_:unique:ifNotExists:)();
      v41 = v40;

      v53._countAndFlagsBits = v39;
      v53._object = v41;

      MEMORY[0x22AA60A80](2619, 0xE200000000000000);

      MEMORY[0x22AA60A80](v53._countAndFlagsBits, v53._object);

      MEMORY[0x22AA60A80](0xD000000000000018, 0x80000002250369F0);
      Connection.execute(_:)(v54);
      v42 = v55;
      if (v43)
      {

        v44 = type metadata accessor for Table();
        (*(*(v44 - 8) + 8))(v32, v44);
        v48(v42, v52);
      }

      else
      {
        v48(v55, v52);
      }
    }
  }

  else
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.daemon);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a4;
      _os_log_impl(&dword_224E26000, v22, v23, "Invalid schemaVersion %ld", v24, 0xCu);
      MEMORY[0x22AA61F40](v24, -1, -1);
    }

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v8;
}

uint64_t type metadata accessor for SqliteCache()
{
  result = type metadata singleton initialization cache for SqliteCache;
  if (!type metadata singleton initialization cache for SqliteCache)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Connection.columnNames(tableName:)(uint64_t a1, uint64_t a2)
{
  Connection.prepare(_:_:)();
  if (v2)
  {
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite7Binding_pSgGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite7Binding_pSgGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_225022960;
  v7 = MEMORY[0x277D6AF68];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = v7;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v9 = Statement.run(_:)();

  v22[0] = v9;
  type metadata accessor for Statement();
  v10 = MEMORY[0x277D6AF48];
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type Statement and conformance Statement, MEMORY[0x277D6AF48]);

  dispatch thunk of Sequence.makeIterator()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type Statement and conformance Statement, v10);
  result = dispatch thunk of IteratorProtocol.next()();
  v11 = v24;
  if (!v24)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_18:

    return v3;
  }

  v3 = MEMORY[0x277D84F90];
  while (*(v11 + 16))
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v11 + 32, v22, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);

    if (v22[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite7Binding_pMd, &_s11SwiftSQLite7Binding_pMR);
      if (swift_dynamicCast())
      {
        v12 = v23;
        if (v23)
        {
          v21 = v22[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
          }

          v14 = *(v3 + 2);
          v13 = *(v3 + 3);
          v15 = v14 + 1;
          if (v14 >= v13 >> 1)
          {
            v20 = v14 + 1;
            v17 = v3;
            v18 = *(v3 + 2);
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v17);
            v15 = v20;
            v14 = v18;
            v3 = v19;
          }

          *(v3 + 2) = v15;
          v16 = &v3[16 * v14];
          *(v16 + 4) = v21;
          *(v16 + 5) = v12;
        }
      }
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    }

    result = dispatch thunk of IteratorProtocol.next()();
    v11 = v24;
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t Connection.userVersion.getter()
{
  result = Connection.scalar(_:_:)();
  if (!v0)
  {
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite7Binding_pMd, &_s11SwiftSQLite7Binding_pMR);
      if (swift_dynamicCast())
      {
        return v2;
      }
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    }

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.setUserVersion(_:)(Swift::Int a1)
{
  _StringGuts.grow(_:)(24);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA60A80](v2);

  Connection.run(_:_:)();

  if (!v1)
  {
  }
}

double closure #1 in SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(void (*a1)(double))
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v5);
  Date.timeIntervalSinceReferenceDate.getter();
  v9 = v8;
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t closure #1 in static SqliteCache.createTable(useCase:schemaVersion:)(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGSgMd, &_s11SwiftSQLite10ExpressionVySdGSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  if (one-time initialization token for keyword != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
  __swift_project_value_buffer(v13, static SqliteCache.Column.keyword);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
  v15 = *(*(v14 - 8) + 56);
  v15(v12, 1, 1, v14);
  v16 = *(*(v13 - 8) + 56);
  v16(v8, 1, 1, v13);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  if (one-time initialization token for value != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
  __swift_project_value_buffer(v17, static SqliteCache.Column.value);
  v15(v12, 1, 1, v14);
  v16(v8, 1, 1, v13);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  if (one-time initialization token for accessTime != -1)
  {
    swift_once();
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  __swift_project_value_buffer(v18, static SqliteCache.Column.accessTime);
  v15(v12, 1, 1, v14);
  v19 = *(*(v18 - 8) + 56);
  v20 = v24;
  v19(v24, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s11SwiftSQLite10ExpressionVySdGSgMd, &_s11SwiftSQLite10ExpressionVySdGSgMR);
  result = outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  if (v23 >= 1)
  {
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v18, static SqliteCache.Column.expirationTime);
    v15(v12, 1, 1, v14);
    v22 = v24;
    v19(v24, 1, 1, v18);
    TableBuilder.column<A>(_:unique:check:defaultValue:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s11SwiftSQLite10ExpressionVySdGSgMd, &_s11SwiftSQLite10ExpressionVySdGSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqliteCache.removeExpiredValues()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - v3;
  v5 = type metadata accessor for Table();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Delete();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);
  v22[0] = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v22[1] = v14;
  if (one-time initialization token for expirationTime != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  v16 = __swift_project_value_buffer(v15, static SqliteCache.Column.expirationTime);
  v17 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime);
  v18 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime + 8);
  v26 = v17(v16, v19);
  < infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v24 + 8))(v4, v25);
  QueryType.delete()();
  (*(v6 + 8))(v9, v5);
  v20 = Connection.run(_:)();
  (*(v10 + 8))(v13, v23);
  return v20;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqliteCache.removeAllValues()()
{
  v1 = type metadata accessor for Delete();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);
  type metadata accessor for Table();
  QueryType.delete()();
  Connection.run(_:)();
  (*(v2 + 8))(v5, v1);
}

uint64_t SqliteCache.evictValues(count:)(uint64_t a1)
{
  v22 = a1;
  v2 = type metadata accessor for Table();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = v19 - v7;
  v8 = type metadata accessor for Delete();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite11Expressible_pGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite11Expressible_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_225022960;
  if (one-time initialization token for accessTime != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  v14 = __swift_project_value_buffer(v13, static SqliteCache.Column.accessTime);
  *(v12 + 56) = v13;
  *(v12 + 64) = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
  MEMORY[0x22AA5FB00](v12, v2, MEMORY[0x277D6AF40]);

  v16 = v21;
  QueryType.limit(_:)();
  v17 = *(v25 + 8);
  v17(v5, v2);
  QueryType.delete()();
  v17(v16, v2);
  Connection.run(_:)();
  return (*(v23 + 8))(v11, v24);
}

NSObject *SqliteCache.getValue(keyword:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for OSSignpostID();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, static OSSignposter.daemon);
  v16 = *(v11 + 16);
  v31 = v10;
  v16(v14, v15, v10);
  static OSSignpostID.exclusive.getter();
  v17 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v37 = v30;
  *v17 = 136380675;
  static String.Encoding.utf8.getter();
  v18 = String.init(data:encoding:)();
  if (!v19)
  {
    v18 = Data.hexString.getter(a1, a2);
  }

  v20 = a1;
  v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v37);

  *(v17 + 4) = v21;
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  v24 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_224E26000, v22, v23, v24, "LRUCache: getValue", "%{private}s", v17, 0xCu);
  v25 = v33;
  closure #1 in SqliteCache.getValue(keyword:)(v32, v20, a2, &v36);
  if (v25)
  {
  }

  else
  {
    v26 = static os_signpost_type_t.end.getter();
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_224E26000, v22, v26, v27, "LRUCache: getValue", "%{private}s", v17, 0xCu);

    v22 = v36;
    v28 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AA61F40](v28, -1, -1);
    MEMORY[0x22AA61F40](v17, -1, -1);
  }

  (*(v34 + 8))(v9, v35);
  (*(v11 + 8))(v14, v31);
  return v22;
}

uint64_t closure #1 in SqliteCache.getValue(keyword:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  *(&v110 + 1) = a3;
  *&v110 = a2;
  v101 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite4BlobVSgMd, &_s11SwiftSQLite4BlobVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v107 = &v92 - v9;
  v10 = type metadata accessor for Cursor();
  v95 = *(v10 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x28223BE20](v10);
  v94 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Blob();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v93 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - v18;
  v100 = type metadata accessor for Row();
  v99 = *(v100 - 8);
  v20 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite3RowVSgMd, &_s11SwiftSQLite3RowVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v98 = &v92 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
  v104 = *(v25 - 8);
  v105 = v25;
  v26 = *(v104 + 64);
  MEMORY[0x28223BE20](v25);
  v103 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v92 - v29;
  MEMORY[0x28223BE20](v31);
  v102 = &v92 - v32;
  v109 = type metadata accessor for Table();
  v106 = *(v109 - 8);
  v33 = *(v106 + 64);
  MEMORY[0x28223BE20](v109);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v92 - v37;
  v40 = MEMORY[0x28223BE20](v39);
  v108 = &v92 - v41;
  v42 = *&a1[OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime + 8];
  v43 = (*&a1[OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime])(v40);
  if ((a1[OBJC_IVAR____TtC8CipherML11SqliteCache_evictionPolicy] & 1) == 0)
  {
    v107 = a1;
    if (one-time initialization token for value != -1)
    {
      swift_once();
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    v55 = __swift_project_value_buffer(v54, static SqliteCache.Column.value);
    v115 = v54;
    v116 = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data?> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
    v57 = *(*(v54 - 8) + 16);
    v96 = v55;
    v57(boxed_opaque_existential_1, v55, v54);
    SchemaType.select(_:_:)();
    __swift_destroy_boxed_opaque_existential_0(&v114);
    if (one-time initialization token for keyword != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    __swift_project_value_buffer(v58, static SqliteCache.Column.keyword);
    v114 = v110;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type Blob and conformance Blob, MEMORY[0x277D6AF28]);
    == infix<A>(_:_:)();
    *&v114 = v43;
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
    __swift_project_value_buffer(v59, static SqliteCache.Column.expirationTime);
    v60 = v103;
    < infix<A>(_:_:)();
    v61 = v102;
    && infix(_:_:)();
    v62 = v105;
    v63 = *(v104 + 8);
    v63(v60, v105);
    v63(v30, v62);
    v64 = v38;
    v65 = v109;
    QueryType.filter(_:)();
    v63(v61, v62);
    v66 = v106;
    v67 = *(v106 + 8);
    v67(v35, v65);
    v68 = v108;
    v69 = MEMORY[0x277D6AF40];
    QueryType.limit(_:)();
    v67(v64, v65);
    v70 = *&v107[OBJC_IVAR____TtC8CipherML11SqliteCache_db];
    v115 = v65;
    v116 = v69;
    v71 = __swift_allocate_boxed_opaque_existential_1(&v114);
    (*(v66 + 16))(v71, v68, v65);
    v72 = v111;
    Connection.prepare(_:)();
    if (v72)
    {
      v67(v68, v65);
      return __swift_destroy_boxed_opaque_existential_0(&v114);
    }

    __swift_destroy_boxed_opaque_existential_0(&v114);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    v78 = v98;
    dispatch thunk of _AnyIteratorBoxBase.next()();

    v79 = v99;
    v80 = v100;
    if ((*(v99 + 48))(v78, 1, v100) != 1)
    {
      v82 = v97;
      (*(v79 + 32))(v97, v78, v80);
      Row.get<A>(_:)();

      (*(v79 + 8))(v82, v80);
      result = (v67)(v108, v65);
      v81 = v114;
      goto LABEL_19;
    }

    v67(v108, v65);

LABEL_18:
    v81 = xmmword_225027C80;
LABEL_19:
    *v101 = v81;
    return result;
  }

  v44 = v10;
  Data.datatypeValue.getter();
  v45 = *&a1[OBJC_IVAR____TtC8CipherML11SqliteCache_updateLastAccessAndGetValueForKeyword];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite7Binding_pSgGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite7Binding_pSgGMR);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_225022920;
  v47 = MEMORY[0x277D6AF78];
  *(v46 + 56) = MEMORY[0x277D839F8];
  *(v46 + 64) = v47;
  *(v46 + 32) = v43;
  v48 = MEMORY[0x277D6AF20];
  *(v46 + 96) = v13;
  *(v46 + 104) = v48;
  v49 = __swift_allocate_boxed_opaque_existential_1((v46 + 72));
  (*(v14 + 16))(v49, v19, v13);
  Statement.bind(_:)();

  v50 = Statement.step()();
  v51 = v14;
  if (v52)
  {
    (*(v14 + 8))(v19, v13);
  }

  v73 = v50;

  if (!v73)
  {
    result = (*(v14 + 8))(v19, v13);
    goto LABEL_18;
  }

  v74 = v94;
  Statement.row.getter();
  Cursor.subscript.getter();
  (*(v95 + 8))(v74, v44);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v114, v112, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
  v75 = (v14 + 56);
  if (v113)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite7Binding_pMd, &_s11SwiftSQLite7Binding_pMR);
    v76 = v107;
    v77 = swift_dynamicCast();
    (*v75)(v76, v77 ^ 1u, 1, v13);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v112, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    v76 = v107;
    (*v75)(v107, 1, 1, v13);
  }

  v83 = v96;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v76, v96, &_s11SwiftSQLite4BlobVSgMd, &_s11SwiftSQLite4BlobVSgMR);
  if ((*(v51 + 48))(v83, 1, v13) == 1)
  {
    v84 = 0;
    v85 = 0xF000000000000000;
  }

  else
  {
    v86 = v93;
    (*(v51 + 32))(v93, v83, v13);
    v87 = Blob.bytes.getter();
    v111 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v87);
    v85 = v88;

    v89 = v86;
    v84 = v111;
    (*(v51 + 8))(v89, v13);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v76, &_s11SwiftSQLite4BlobVSgMd, &_s11SwiftSQLite4BlobVSgMR);
  Statement.step()();
  if (v90)
  {
    outlined consume of Data?(v84, v85);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v114, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    return (*(v51 + 8))(v19, v13);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v114, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    result = (*(v51 + 8))(v19, v13);
    v91 = v101;
    *v101 = v84;
    *(v91 + 1) = v85;
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqliteCache.removeValues(for:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for Delete();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = v19 - v8;
  v10 = type metadata accessor for Table();
  v21 = *(v10 - 8);
  v11 = *(v21 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  rawValue = a1._rawValue;
  if (one-time initialization token for keyword != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
  __swift_project_value_buffer(v14, static SqliteCache.Column.keyword);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type [Data] and conformance [A], &_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  Collection<>.contains(_:)();
  v15 = v22;
  QueryType.filter(_:)();
  (*(v6 + 8))(v9, v20);
  v16 = *(v15 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);
  QueryType.delete()();
  v17 = Connection.run(_:)();
  (*(v23 + 8))(v5, v24);
  (*(v21 + 8))(v13, v10);
  return v17;
}

uint64_t SqliteCache.setValue(keyword:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v76 = *&a3;
  v59 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite11ScalarQueryVySiGMd, &_s11SwiftSQLite11ScalarQueryVySiGMR);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = v54 - v10;
  v11 = type metadata accessor for Insert();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v11);
  v58 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v54 - v15;
  v17 = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_evictionPolicy);
  v18 = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);
  v64 = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite6SetterVGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite6SetterVGMR);
  v20 = *(type metadata accessor for Setter() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v60 = *(v20 + 80);
  v61 = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_225022950;
  v62 = v22;
  v63 = v23;
  v65 = a4;
  v66 = v18;
  if (v17)
  {
    if (one-time initialization token for keyword != -1)
    {
      swift_once();
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    v25 = __swift_project_value_buffer(v24, static SqliteCache.Column.keyword);
    v72 = *&a1;
    v73 = v59;
    v59 = v25;
    <- infix<A>(_:_:)();
    if (one-time initialization token for value != -1)
    {
      swift_once();
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    v27 = __swift_project_value_buffer(v26, static SqliteCache.Column.value);
    v72 = v76;
    v73 = a4;
    v54[2] = v27;
    <- infix<A>(_:_:)();
    if (one-time initialization token for accessTime != -1)
    {
      swift_once();
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
    v29 = __swift_project_value_buffer(v28, static SqliteCache.Column.accessTime);
    v30 = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime + 8);
    v54[0] = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime);
    v72 = (v54[0])();
    v54[1] = v29;
    <- infix<A>(_:_:)();
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v28, static SqliteCache.Column.expirationTime);
    v72 = (*(*v5 + 136))();
    <- infix<A>(_:_:)();
    v74 = v24;
    v75 = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v72);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v59, v24);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_225022920;
    v70 = v76;
    v71 = v65;
    v33 = <- infix<A>(_:_:)();
    v70 = (v54[0])(v33);
    <- infix<A>(_:_:)();
    v34 = type metadata accessor for Table();
    v35 = v58;
    MEMORY[0x22AA5FB30](v63, &v72, v32, v34, MEMORY[0x277D6AF40]);

    __swift_destroy_boxed_opaque_existential_0(&v72);
    v36 = v67;
    Connection.run(_:)();
    v37 = v36;
    if (v36)
    {
      return (*(v68 + 8))(v35, v69);
    }

    v41 = v35;
  }

  else
  {
    if (one-time initialization token for keyword != -1)
    {
      swift_once();
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    v40 = __swift_project_value_buffer(v39, static SqliteCache.Column.keyword);
    v72 = *&a1;
    v73 = v59;
    v59 = v40;
    <- infix<A>(_:_:)();
    v41 = v16;
    if (one-time initialization token for value != -1)
    {
      swift_once();
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    v43 = __swift_project_value_buffer(v42, static SqliteCache.Column.value);
    v72 = v76;
    v73 = a4;
    v58 = v43;
    <- infix<A>(_:_:)();
    if (one-time initialization token for accessTime != -1)
    {
      swift_once();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
    __swift_project_value_buffer(v44, static SqliteCache.Column.accessTime);
    v45 = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime + 8);
    v72 = (*(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime))();
    <- infix<A>(_:_:)();
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v44, static SqliteCache.Column.expirationTime);
    v72 = (*(*v5 + 136))();
    <- infix<A>(_:_:)();
    v74 = v39;
    v75 = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    v46 = __swift_allocate_boxed_opaque_existential_1(&v72);
    (*(*(v39 - 8) + 16))(v46, v59, v39);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_225022960;
    v70 = v76;
    v71 = v65;
    <- infix<A>(_:_:)();
    v48 = type metadata accessor for Table();
    MEMORY[0x22AA5FB30](v63, &v72, v47, v48, MEMORY[0x277D6AF40]);

    __swift_destroy_boxed_opaque_existential_0(&v72);
    v49 = v67;
    Connection.run(_:)();
    v37 = v49;
    if (v49)
    {
      return (*(v68 + 8))(v41, v69);
    }
  }

  (*(v68 + 8))(v41, v69);
  type metadata accessor for Table();
  v50 = v55;
  SchemaType.count.getter();
  Connection.scalar<A>(_:)();
  result = (*(v56 + 8))(v50, v57);
  if (!v37)
  {
    v51 = v72;
    v52 = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_maximumCount);
    if (*&v52 < *&v72)
    {
      result = (*(*v5 + 152))(result);
      v53 = *&v51 - result;
      if (__OFSUB__(*&v51, result))
      {
        __break(1u);
      }

      else
      {
        if (*&v52 >= v53)
        {
          return result;
        }

        result = v53 - *&v52;
        if (!__OFSUB__(v53, *&v52))
        {
          return SqliteCache.evictValues(count:)(result);
        }
      }

      __break(1u);
    }
  }

  return result;
}

CipherML::CacheStatus __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqliteCache.status()()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite11ScalarQueryVySiGMd, &_s11SwiftSQLite11ScalarQueryVySiGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_maximumCount);
  v10 = *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);
  type metadata accessor for Table();
  SchemaType.count.getter();
  Connection.scalar<A>(_:)();
  v11 = (*(v5 + 8))(v8, v4);
  if (!v2)
  {
    v15 = v18[1];
    v16 = *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_minutesToLive);
    v17 = *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_evictionPolicy);
    *v3 = v9;
    *(v3 + 8) = v15;
    *(v3 + 16) = v16;
    *(v3 + 24) = v17;
  }

  result.entryMinutesToLive = v13;
  result.elementCount = v12;
  result.cacheCapacity = v11;
  result.evictionPolicy = v14;
  return result;
}

uint64_t key path setter for SqliteCache.subscript(_:) : SqliteCache(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = *(**a2 + 232);
  outlined copy of Data._Representation(*a3, v4);
  outlined copy of Data??(v5, v6);
  return v7(v5, v6, v3, v4);
}

uint64_t SqliteCache.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_225022960;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
    v10 = *(*v4 + 184);
    outlined copy of Data._Representation(a3, a4);
    v10(v9);

    return outlined consume of Data._Representation(a3, a4);
  }

  else
  {
    SqliteCache.setValue(keyword:newValue:)(a3, a4, a1, a2);
    outlined consume of Data._Representation(a3, a4);

    return outlined consume of Data??(a1, a2);
  }
}

void (*SqliteCache.subscript.modify(void *a1, uint64_t a2, unint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = SqliteCache.subscript.getter(a2, a3);
  v8[1] = v9;
  return SqliteCache.subscript.modify;
}

void SqliteCache.subscript.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  outlined copy of Data._Representation((*a1)[2], (*a1)[3]);
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[2];
  if (a2)
  {
    outlined copy of Data??(v5, v4);
    SqliteCache.subscript.setter(v5, v4, v8, v7);
    outlined consume of Data??(*v3, v3[1]);
  }

  else
  {
    SqliteCache.subscript.setter(v5, v4, v3[2], v3[3]);
  }

  free(v3);
}

uint64_t SqliteCache.deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v2 = type metadata accessor for Table();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);

  v4 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_updateLastAccessAndGetValueForKeyword);

  v5 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime + 8);

  return v0;
}

uint64_t SqliteCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v2 = type metadata accessor for Table();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);

  v4 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_updateLastAccessAndGetValueForKeyword);

  v5 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*protocol witness for KeyValueCache.subscript.modify in conformance SqliteCache(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 240))();
  return protocol witness for KeyValueCache.subscript.modify in conformance SqliteCache;
}

void protocol witness for KeyValueCache.subscript.modify in conformance SqliteCache(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo18CMLSimilarityScoreCGGMd, &_ss23_ContiguousArrayStorageCySaySo18CMLSimilarityScoreCGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataV7keyword_SSSg7shardIdtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataV7keyword_SSSg7shardIdtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV7keyword_SSSg7shardIdtMd, &_s10Foundation4DataV7keyword_SSSg7shardIdtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_Says5UInt8VG16existingConfigIdtGMd, &_ss23_ContiguousArrayStorageCySS4name_Says5UInt8VG16existingConfigIdtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_Says5UInt8VG16existingConfigIdtMd, &_sSS4name_Says5UInt8VG16existingConfigIdtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMd, &_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMR, type metadata accessor for AspireApiKeyStatus);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMd, &_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMR, type metadata accessor for AspireApiRequest);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8CipherML10TokenCacheC06CachedF0VGMd, &_ss23_ContiguousArrayStorageCy8CipherML10TokenCacheC06CachedF0VGMR, type metadata accessor for TokenCache.CachedToken);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      outlined copy of Data._Representation(v9, *(&v9 + 1));
      v10 = a1(&v12);
      outlined consume of Data._Representation(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t outlined copy of Data??(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return outlined copy of Data?(a1, a2);
  }

  return a1;
}

uint64_t type metadata completion function for SqliteCache()
{
  result = type metadata accessor for Table();
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

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t generateEvaluationKey(secretKey:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v47 = a3;
  v50 = type metadata accessor for HE.SerializedSecretKey();
  v48 = *(v50 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HE.EvaluationKeyConfig();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HE.SerializedEvaluationKey();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  v16 = type metadata accessor for AspireHeEncryptionParameters(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for HE.Scheme();
  v56 = *(v55 - 8);
  v21 = *(v56 + 64);
  v22 = MEMORY[0x28223BE20](v55);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  v27 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  outlined init with copy of AspireHeEncryptionParameters?(a2 + *(v27 + 28), v15);
  v28 = *(v17 + 48);
  if (v28(v15, 1, v16) == 1)
  {
    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = MEMORY[0x277D84F90];
    *(v20 + 3) = 0;
    v20[32] = 1;
    *(v20 + 5) = 0;
    v20[48] = 1;
    *(v20 + 7) = 0;
    v20[64] = 1;
    v29 = &v20[*(v16 + 40)];
    UnknownStorage.init()();
    if (v28(v15, 1, v16) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_0(v15, v20, type metadata accessor for AspireHeEncryptionParameters);
  }

  v30 = *(v20 + 7);
  v31 = v20[64];
  outlined destroy of AspireHeEncryptionParameters(v20);
  if (v31 == 1 && v30)
  {
    if (v30 == 1)
    {
      v32 = MEMORY[0x277D02F40];
    }

    else
    {
      v32 = MEMORY[0x277D02F48];
    }

    v35 = a2;
    v36 = v53;
    v37 = v54;
    v38 = v56;
    v39 = v52;
    v40 = v55;
    (*(v56 + 104))(v26, *v32, v55);
    AspireHeEvaluationKeyConfig.cryptokit()(v39);
    if (v36)
    {
      return (*(v38 + 8))(v26, v40);
    }

    else
    {
      v41 = type metadata accessor for SecretKey();
      (*(v48 + 16))(v49, v37 + *(v41 + 20), v50);
      (*(v38 + 16))(v24, v26, v40);
      v42 = v51;
      HE.SerializedEvaluationKey.init(config:secretKey:scheme:)();
      v43 = type metadata accessor for AspireApiEvaluationKey(0);
      MEMORY[0x28223BE20](v43);
      *(&v44 - 4) = v37;
      *(&v44 - 3) = v35;
      *(&v44 - 2) = v42;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);
      static Message.with(_:)();
      (*(v56 + 8))(v26, v40);
      return (*(v45 + 8))(v42, v46);
    }
  }

  else
  {
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    *v33 = v30;
    *(v33 + 8) = v31;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t outlined init with copy of AspireHeEncryptionParameters?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AspireHeEncryptionParameters(uint64_t a1)
{
  v2 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in generateEvaluationKey(secretKey:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v27 = a1;
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v26 = a3;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
  result = static Message.with(_:)();
  if (!v4)
  {
    v23 = v8;
    v18 = type metadata accessor for AspireApiEvaluationKey(0);
    v19 = *(v18 + 20);
    v20 = v27;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v27 + v19, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_0(v16, v20 + v19, type metadata accessor for AspireApiEvaluationKeyMetadata);
    v21 = (*(v13 + 56))(v20 + v19, 0, 1, v12);
    MEMORY[0x28223BE20](v21);
    *(&v23 - 2) = v24;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey);
    static Message.with(_:)();
    v22 = *(v18 + 24);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v20 + v22, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_0(v11, v20 + v22, type metadata accessor for AspireHeSerializedEvaluationKey);
    return (*(v23 + 56))(v20 + v22, 0, 1, v7);
  }

  return result;
}

uint64_t closure #1 in closure #1 in generateEvaluationKey(secretKey:config:)(void *a1, void *a2)
{
  *a1 = *a2;
  result = specialized Message.hash()();
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    result = outlined consume of Data._Representation(a1[1], a1[2]);
    a1[1] = v6;
    a1[2] = v7;
  }

  return result;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8CipherML28AspireHeEncryptionParametersVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t XPCHandler.__allocating_init(requestsManager:connection:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t XPCHandler.init(requestsManager:connection:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t XPCHandler.requestData(by:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.requestData(by:clientConfig:), 0, 0);
}

uint64_t XPCHandler.requestData(by:clientConfig:)()
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
  v6[1] = XPCHandler.requestData(by:clientConfig:);
  v8 = v0[5];
  v7 = v0[6];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD00000000000001DLL, 0x8000000225036B30, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.requestData(by:clientConfig:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = XPCHandler.requestData(by:clientConfig:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t partial apply for closure #1 in XPCHandler.requestData(by:clientConfig:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t @objc closure #1 in XPCHandler.requestData(by:clientConfig:)(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = @objc closure #1 in XPCHandler.requestData(by:clientConfig:);

  return XPCHandler.requestData(by:clientConfig:)(a1, v7);
}

uint64_t XPCHandler.requestData(byIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.requestData(byIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.requestData(byIndices:clientConfig:)()
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
  v6[1] = XPCHandler.requestData(byIndices:clientConfig:);
  v8 = v0[3];
  v7 = v0[4];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000024, 0x8000000225036B50, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.requestData(byIndices:clientConfig:), v4);
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t XPCHandler.requestData(byIndices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byIndices:clientConfig:), 0, 0);
  }

  else
  {
    v9 = *(v4 + 40);

    v10 = *(v8 + 8);

    return v10(a1);
  }
}

uint64_t @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:)(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v4[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:)()
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
  v6[1] = @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:);
  v8 = v0[2];
  v7 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD000000000000024, 0x8000000225036B50, v7, v8, &closure #1 in XPCHandler.requestData(byIndices:clientConfig:)partial apply, v4);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = *(v0 + 32);
  (v4)[2](v4, isa, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  v6 = _convertErrorToNSError(_:)();

  v7 = v0[4];
  (v7)[2](v7, 0, v6);

  _Block_release(v7);
  v8 = v0[1];

  return v8();
}

uint64_t @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v12 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 24);

    v7 = @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:);
  }

  else
  {
    v9 = *(v4 + 40);
    v8 = *(v4 + 48);
    v10 = *(v4 + 24);

    *(v4 + 72) = a1;

    v7 = @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t XPCHandler.requestData(byKeywords:shardIds:clientConfig:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;

  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD00000000000002ELL, 0x8000000225036B80, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:), v3);
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
  }

  else
  {
    v9 = *(v4 + 48);

    v10 = *(v8 + 8);

    return v10(a1);
  }
}

uint64_t closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];

  return RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(v4, v5, v3, 1);
}

{
  v1 = *(v0 + 64);
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
    v7 = *(v0 + 64);

    v8 = v12;
  }

  else
  {
    v9 = *(v0 + 64);

    v8 = MEMORY[0x277D84F90];
  }

  **(v0 + 16) = v8;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  *(v4 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(int a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = v2;

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD00000000000002ELL, 0x8000000225036B80, v7, v8, &closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)partial apply, v3);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = *(v0 + 32);
  (v4)[2](v4, isa, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  v7 = _convertErrorToNSError(_:)();

  v8 = v0[4];
  (v8)[2](v8, 0, v7);

  _Block_release(v8);
  v9 = v0[1];

  return v9();
}

uint64_t @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v13 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v6 = *(v4 + 24);

    v7 = @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  }

  else
  {
    v9 = *(v4 + 48);
    v8 = *(v4 + 56);
    v10 = *(v4 + 40);
    v11 = *(v4 + 24);

    *(v4 + 80) = a1;

    v7 = @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t XPCHandler.requestData(byLatitude:longitude:clientConfig:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  return MEMORY[0x2822009F8](XPCHandler.requestData(byLatitude:longitude:clientConfig:), 0, 0);
}

uint64_t XPCHandler.requestData(byLatitude:longitude:clientConfig:)()
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
  v7[1] = XPCHandler.requestData(byLatitude:longitude:clientConfig:);
  v9 = v0[6];
  v8 = v0[7];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD00000000000002FLL, 0x8000000225036BB0, v8, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = XPCHandler.requestData(byLatitude:longitude:clientConfig:);
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = XPCHandler.requestData(byLatitude:longitude:clientConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16), *(v0 + 24));
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:)()
{
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:), 0, 0);
}

{
  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:)(void *a1, void *aBlock, uint64_t a3, double a4, double a5)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;

  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = @objc closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:);

  return XPCHandler.requestData(byLatitude:longitude:clientConfig:)(v9, a4, a5);
}

uint64_t @objc closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  if (v4)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
    v14 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(a1, a2);
    v14 = isa;
    v13 = 0;
    v12 = isa;
  }

  v16 = *(v7 + 32);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v11 + 8);

  return v17();
}

uint64_t XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](XPCHandler.removeCachedEntries(byKeywords:clientConfig:), 0, 0);
}

uint64_t XPCHandler.removeCachedEntries(byKeywords:clientConfig:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v0 + 2;
  v4[3] = v1;
  v4[4] = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  v8 = v0[4];
  v7 = v0[5];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_n(v6, v2, 0xD00000000000002DLL, 0x8000000225036BE0, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for RequestsManager.PIRContext();
  v5[6] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  v3 = v0[7];
  v4 = v0[2];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v3, v4, 0);
}

{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  }

  else
  {
    v3 = closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[7];
  v2 = (v1 + *(v0[6] + 36));
  if (*v2)
  {
    v3 = v0[9];
    v4 = v0[5];
    v5 = v2[1];
    v6 = *v2;
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 32);
    swift_unknownObjectRetain();
    v9 = v8(v4, ObjectType, v5);
    swift_unknownObjectRelease();
    v1 = v0[7];
    if (v3)
    {
      outlined destroy of UseCaseGroup(v1, type metadata accessor for RequestsManager.PIRContext);
      v10 = v0[7];

      v11 = v0[1];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = v0[3];
  outlined destroy of UseCaseGroup(v1, type metadata accessor for RequestsManager.PIRContext);
  *v12 = v9;

  v11 = v0[1];
LABEL_6:

  return v11();
}

{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t @objc closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  v7 = a2;

  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = @objc closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);

  return XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(v6, v7);
}

uint64_t @objc closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 32);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(*(v5 + 32), a1, 0);
  }

  _Block_release(*(v6 + 32));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t XPCHandler.setPIRConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.setPIRConfig(_:clientConfig:), 0, 0);
}

uint64_t XPCHandler.setPIRConfig(_:clientConfig:)()
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

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD00000000000001DLL, 0x8000000225036C10, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.setPIRConfig(_:clientConfig:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = XPCHandler.setPIRConfig(_:clientConfig:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.setPIRConfig(_:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in XPCHandler.setPIRConfig(_:clientConfig:);
  v3 = v0[5];
  v4 = v0[3];

  return RequestsManager.setPIRConfig(config:context:)(v3, v4);
}

uint64_t closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
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

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.setPIRConfig(_:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4)
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
  v9[1] = @objc closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);

  return XPCHandler.setPIRConfig(_:clientConfig:)(v7, v8);
}

uint64_t XPCHandler.generateEvaluationKey(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.generateEvaluationKey(_:clientConfig:), 0, 0);
}

uint64_t XPCHandler.generateEvaluationKey(_:clientConfig:)()
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

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000026, 0x8000000225036C30, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:));
}

uint64_t closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for RequestsManager.PIRContext() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for AspireApiEvaluationKey(0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:)()
{
  v0[9] = *(v0[4] + 16);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);
  v2 = v0[6];
  v3 = v0[3];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v2, v3, 1);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);
  }

  else
  {
    v3 = closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  RequestsManager.generateEvaluationKey(config:pirContext:)(*(v0 + 40), v3, *(v0 + 64));
  outlined destroy of UseCaseGroup(v3, type metadata accessor for RequestsManager.PIRContext);
  if (v1)
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);
  }

  else
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);
    v9 = Message.serializedData(partial:)();
    v11 = v10;
    v12 = *(v0 + 48);
    v13 = *(v0 + 16);
    outlined destroy of UseCaseGroup(*(v0 + 64), type metadata accessor for AspireApiEvaluationKey);
    *v13 = v9;
    v13[1] = v11;
  }

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t @objc closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4)
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
  v9[1] = @objc closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);

  return XPCHandler.generateEvaluationKey(_:clientConfig:)(v7, v8);
}

uint64_t XPCHandler.constructPIRRequest(with:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRRequest(with:clientConfig:), 0, 0);
}

uint64_t XPCHandler.constructPIRRequest(with:clientConfig:)()
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

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000027, 0x8000000225036C60, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:));
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:)(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = @objc closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:);

  return XPCHandler.constructPIRRequest(with:clientConfig:)(a1, v7);
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  if (v4)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
    v14 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v14 = isa;
    v13 = 0;
    v12 = isa;
  }

  v16 = *(v7 + 32);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v11 + 8);

  return v17();
}

uint64_t XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)()
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

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000033, 0x8000000225036C90, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:));
}

uint64_t @objc closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  v7 = a2;

  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = @objc closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:);

  return XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)(v6, v7);
}

uint64_t @objc closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 40);
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

  v17 = *(v7 + 32);
  (v17)[2](v17, v15, v14);

  _Block_release(v17);
  v18 = *(v12 + 8);

  return v18();
}

uint64_t XPCHandler.decryptPIRResponse(_:index:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRResponse(_:index:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRResponse(_:index:clientConfig:)()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v10 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v10;
  *(v4 + 40) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = XPCHandler.decryptPIRResponse(_:index:clientConfig:);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n(v0 + 16, v2, 0xD000000000000029, 0x8000000225036CD0, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = XPCHandler.decryptPIRResponse(_:index:clientConfig:);
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:)(void *a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a3;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v5[5] = v11;
  v5[6] = v13;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = @objc closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:);

  return XPCHandler.decryptPIRResponse(_:index:clientConfig:)(v11, v13, a2, v10);
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 56);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  outlined consume of Data._Representation(*(v7 + 40), *(v7 + 48));
  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v14 = isa;
    v15 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(a1, a2);
    v15 = isa;
    v14 = 0;
  }

  v16 = *(v8 + 32);
  (v16)[2](v16, v15, v14);

  _Block_release(v16);
  v17 = *(v12 + 8);

  return v17();
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)()
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
  v6[1] = XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000030, 0x8000000225036D00, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:), v4);
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(by:clientConfig:), 0, 0);
  }

  else
  {
    v9 = *(v4 + 56);

    v10 = *(v8 + 8);

    return v10(a1);
  }
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)(void *a1, void *a2, void *a3, void *aBlock, uint64_t a5)
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
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v5[7] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)()
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
  v6[1] = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD000000000000030, 0x8000000225036D00, v7, v8, &closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)partial apply, v4);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);

  outlined consume of Data._Representation(v3, v2);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = *(v0 + 32);
  (v6)[2](v6, isa, 0);

  _Block_release(v6);
  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  outlined consume of Data._Representation(v5, v4);
  v8 = _convertErrorToNSError(_:)();

  v9 = v0[4];
  (v9)[2](v9, 0, v8);

  _Block_release(v9);
  v10 = v0[1];

  return v10();
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v12 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v6 = *(v4 + 24);

    v7 = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  }

  else
  {
    v9 = *(v4 + 56);
    v8 = *(v4 + 64);
    v10 = *(v4 + 24);

    *(v4 + 88) = a1;

    v7 = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = v7;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a4;
  *(v8 + 112) = a3;
  *(v8 + 32) = a1;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:), 0, 0);
}