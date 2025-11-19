uint64_t KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 872);
  v6 = *v2;
  *(v4 + 880) = a1;
  *(v4 + 888) = v1;

  v7 = *(v3 + 256);
  if (v1)
  {
    v8 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v8 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for AspireApiConfigResponse(0);
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v13 = type metadata accessor for Data.Iterator();
  v8[17] = v13;
  v14 = *(v13 - 8);
  v8[18] = v14;
  v15 = *(v14 + 64) + 15;
  v8[19] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), 0, 0);
}

uint64_t fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v2[2];
  v0[21] = v3;
  if (v3)
  {
    v0[22] = MEMORY[0x277D84F90];
    v0[23] = 0;
    v4 = v2[4];
    v0[24] = v4;
    v5 = v2[5];
    v0[25] = v5;
    v0[26] = *(*(v1 + 112) + 16);

    v6 = swift_task_alloc();
    v0[27] = v6;
    *v6 = v0;
    v6[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v7 = v0[20];

    return specialized DatabaseTable<>.get(_:)(v7, v4, v5);
  }

  else
  {
    v0[29] = MEMORY[0x277D84F90];

    return MEMORY[0x2822009F8](fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v1, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 208);

  if (v0)
  {
    v6 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v6 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[20];
  v2 = type metadata accessor for AspireApiConfig(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    v3 = 0;
    v4 = 0xC000000000000000;
LABEL_14:
    outlined consume of Data._Representation(v3, v4);
    v13 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v5 = (v1 + *(v2 + 20));
  v3 = *v5;
  v4 = v5[1];
  outlined copy of Data._Representation(*v5, v4);
  v6 = _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for AspireApiConfig);
  v9 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    v10 = v11 - v12;
    if (__OFSUB__(v11, v12))
    {
      goto LABEL_29;
    }

    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else if (v9)
  {
    v15 = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_30:
      __break(1u);
      return MEMORY[0x2822009F8](v6, v7, v8);
    }

    v10 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = BYTE6(v4);
    if (!BYTE6(v4))
    {
      goto LABEL_14;
    }
  }

  if (v10 < 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v10;
    v13[3] = 2 * v14 - 64;
  }

  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  v19 = Data._copyContents(initializing:)();
  outlined consume of Data._Representation(v3, v4);
  v6 = (*(v17 + 8))(v16, v18);
  if (v19 != v10)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_17:
  v20 = v0[25];
  v21 = v0[22];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v0[22];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v0[22]);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  v27 = v0[24];
  v26 = v0[25];
  v28 = v0[23];
  v29 = v0[21];

  v23[2] = v25 + 1;
  v30 = &v23[3 * v25];
  v30[4] = v27;
  v30[5] = v26;
  v30[6] = v13;
  if (v28 + 1 == v29)
  {
    v0[29] = v23;
    v7 = v0[5];
    v6 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v8 = 0;

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  v31 = v0[23] + 1;
  v0[22] = v23;
  v0[23] = v31;
  v32 = v0[5];
  v33 = v0[4] + 16 * v31;
  v34 = *(v33 + 32);
  v0[24] = v34;
  v35 = *(v33 + 40);
  v0[25] = v35;
  v0[26] = *(*(v32 + 112) + 16);

  v36 = swift_task_alloc();
  v0[27] = v36;
  *v36 = v0;
  v36[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v37 = v0[20];

  return specialized DatabaseTable<>.get(_:)(v37, v34, v35);
}

{
  v1 = v0[25];
  v2 = v0[22];

  v3 = v0[28];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

{
  v41 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[3], v3, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    v5 = v0[7];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    v6 = v4[3];
    v7 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v6);
    v8 = *(type metadata accessor for UserIdentifier() + 20);
    v9 = *(v7 + 16);
    v38 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[30] = v11;
    *v11 = v0;
    v11[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v12 = v0[29];
    v13 = v0[16];

    return v38(v13, v12, v5 + v8, v6, v7);
  }

  else
  {
    v15 = v0[29];
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[10];

    _s8CipherML12UseCaseGroupVWObTm_3(v18, v16, type metadata accessor for AspireApiConfigResponse);
    _s8CipherML12UseCaseGroupVWObTm_3(v16, v17, type metadata accessor for AspireApiConfigResponse);
    _s8CipherML12UseCaseGroupVWObTm_3(v0[16], v0[2], type metadata accessor for AspireApiConfigResponse);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v20 = v0[14];
    v21 = v0[9];
    v22 = v0[2];
    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.daemon);
    _s8CipherML12UseCaseGroupVWOcTm_3(v22, v20, type metadata accessor for AspireApiConfigResponse);
    _s8CipherML12UseCaseGroupVWOcTm_3(v22, v19, type metadata accessor for AspireApiConfigResponse);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[13];
    v28 = v0[14];
    if (v26)
    {
      v29 = v0[8];
      v39 = v0[9];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 134349570;
      v32 = *(*v28 + 16);
      _s8CipherML12UseCaseGroupVWOhTm_1(v28, type metadata accessor for AspireApiConfigResponse);
      *(v30 + 4) = v32;
      *(v30 + 12) = 2050;
      v33 = *(*(v27 + 8) + 16);
      _s8CipherML12UseCaseGroupVWOhTm_1(v27, type metadata accessor for AspireApiConfigResponse);
      *(v30 + 14) = v33;
      *(v30 + 22) = 2082;
      *(v30 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v39, &v40);
      _os_log_impl(&dword_224E26000, v24, v25, "Received configurations: %{public}ld usecase(s), %{public}ld key(s) for group '%{public}s'", v30, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA61F40](v31, -1, -1);
      MEMORY[0x22AA61F40](v30, -1, -1);
    }

    else
    {
      _s8CipherML12UseCaseGroupVWOhTm_1(v0[13], type metadata accessor for AspireApiConfigResponse);
      _s8CipherML12UseCaseGroupVWOhTm_1(v28, type metadata accessor for AspireApiConfigResponse);
    }

    v34 = v0[2];
    v0[32] = *(*(v0[5] + 112) + 16);
    v35 = *v34;

    v36 = swift_task_alloc();
    v0[33] = v36;
    *v36 = v0;
    v36[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v37 = v0[4];

    return specialized DatabaseTable<>.update(keys:with:)(v37, v35);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 248) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v7 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v23 = v0;
  _s8CipherML12UseCaseGroupVWObTm_3(v0[16], v0[2], type metadata accessor for AspireApiConfigResponse);
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.daemon);
  _s8CipherML12UseCaseGroupVWOcTm_3(v4, v2, type metadata accessor for AspireApiConfigResponse);
  _s8CipherML12UseCaseGroupVWOcTm_3(v4, v1, type metadata accessor for AspireApiConfigResponse);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  v10 = v0[14];
  if (v8)
  {
    v11 = v0[8];
    v21 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 134349570;
    v14 = *(*v10 + 16);
    _s8CipherML12UseCaseGroupVWOhTm_1(v10, type metadata accessor for AspireApiConfigResponse);
    *(v12 + 4) = v14;
    *(v12 + 12) = 2050;
    v15 = *(*(v9 + 8) + 16);
    _s8CipherML12UseCaseGroupVWOhTm_1(v9, type metadata accessor for AspireApiConfigResponse);
    *(v12 + 14) = v15;
    *(v12 + 22) = 2082;
    *(v12 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v21, &v22);
    _os_log_impl(&dword_224E26000, v6, v7, "Received configurations: %{public}ld usecase(s), %{public}ld key(s) for group '%{public}s'", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA61F40](v13, -1, -1);
    MEMORY[0x22AA61F40](v12, -1, -1);
  }

  else
  {
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[13], type metadata accessor for AspireApiConfigResponse);
    _s8CipherML12UseCaseGroupVWOhTm_1(v10, type metadata accessor for AspireApiConfigResponse);
  }

  v16 = v0[2];
  v0[32] = *(*(v0[5] + 112) + 16);
  v17 = *v16;

  v18 = swift_task_alloc();
  v0[33] = v18;
  *v18 = v0;
  v18[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v19 = v0[4];

  return specialized DatabaseTable<>.update(keys:with:)(v19, v17);
}

{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v4 = *v1;
  v4[34] = v0;

  if (v0)
  {
    v5 = v4[5];

    return MEMORY[0x2822009F8](fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v5, 0);
  }

  else
  {
    v7 = v4[19];
    v6 = v4[20];
    v9 = v4[15];
    v8 = v4[16];
    v11 = v4[13];
    v10 = v4[14];
    v12 = v4[10];

    v13 = v4[1];

    return v13();
  }
}

{
  v1 = v0[31];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

{
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[2], type metadata accessor for AspireApiConfigResponse);
  v1 = v0[34];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t specialized DatabaseTable<>.update(keys:with:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy8CipherML25StoredEvaluationKeyConfigCGMd, &_s9SwiftData15FetchDescriptorVy8CipherML25StoredEvaluationKeyConfigCGMR);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for EvaluationKeyConfigTable();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.update(keys:with:), v12, v11);
}

{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for AspireApiConfig(0);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMR) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMd, &_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMR);
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ConfigTable();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, 255, type metadata accessor for ConfigTable);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.update(keys:with:), v12, v11);
}

uint64_t specialized DatabaseTable<>.update(keys:with:)()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v53 = v0[8];
    v54 = (v0[14] + 8);
    v55 = v0[5];
    v3 = (v1 + 40);
    do
    {
      v56 = v3;
      v57 = v2;
      v5 = v0[15];
      v4 = v0[16];
      v6 = v0[12];
      v7 = v0[6];
      v8 = *(v3 - 1);
      v9 = *v3;
      v10 = swift_task_alloc();
      *(v10 + 16) = v8;
      *(v10 + 24) = v9;
      outlined copy of Data._Representation(v8, v9);
      v11 = type metadata accessor for StoredEvaluationKeyConfig(0);
      v0[2] = v11;
      Predicate.init(_:)();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMR);
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
      FetchDescriptor.init(predicate:sortBy:)();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable);
      ModelActor.modelContext.getter();
      v13 = dispatch thunk of ModelContext.fetch<A>(_:)();

      if (v13 >> 62)
      {
        if (v13 < 0)
        {
          v16 = v13;
        }

        else
        {
          v16 = v13 & 0xFFFFFFFFFFFFFF8;
        }

        result = MEMORY[0x22AA610B0](v16);
        if (!result)
        {
LABEL_15:

          v15 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_15;
        }
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x22AA60F70](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v15 = *(v13 + 32);
      }

LABEL_16:
      if (*(v55 + 16) && (v17 = v0[5], v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9), (v19 & 1) != 0))
      {
        v20 = v0[10];
        v21 = v0[11];
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v55 + 56) + *(v53 + 72) * v18, v20, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWObTm_3(v20, v21, type metadata accessor for AspireHeEvaluationKeyConfig);
        if (v15)
        {
          v22 = v0[11];
          v23 = v0[7];
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
          v24 = Message.serializedData(partial:)();
          v25 = v0[13];
          v26 = v0[11];
          v27 = v24;
          v29 = v28;
          v50 = v0[15];
          v0[3] = v15;
          swift_getKeyPath();
          v30 = swift_task_alloc();
          v30[2] = v15;
          v30[3] = v27;
          v30[4] = v29;
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          outlined consume of Data._Representation(v27, v29);

          outlined consume of Data._Representation(v8, v9);

          _s8CipherML12UseCaseGroupVWOhTm_1(v26, type metadata accessor for AspireHeEvaluationKeyConfig);
          (*v54)(v50, v25);
        }

        else
        {
          v35 = v0[16];
          v51 = v0[11];
          v36 = v0[9];
          v37 = v0[6];
          ModelActor.modelContext.getter();
          _s8CipherML12UseCaseGroupVWOcTm_3(v51, v36, type metadata accessor for AspireHeEvaluationKeyConfig);
          v38 = *(v11 + 48);
          v39 = *(v11 + 52);
          swift_allocObject();
          outlined copy of Data._Representation(v8, v9);
          StoredEvaluationKeyConfig.init(key:value:)(v8, v9, v36);
          v52 = v0[13];
          v40 = v0[11];
          v41 = v0[15];
          dispatch thunk of ModelContext.insert<A>(_:)();

          outlined consume of Data._Representation(v8, v9);
          _s8CipherML12UseCaseGroupVWOhTm_1(v40, type metadata accessor for AspireHeEvaluationKeyConfig);
          (*v54)(v41, v52);
        }
      }

      else if (v15)
      {
        v32 = v0[15];
        v31 = v0[16];
        v33 = v0[13];
        v34 = v0[6];
        ModelActor.modelContext.getter();
        dispatch thunk of ModelContext.delete<A>(_:)();

        outlined consume of Data._Representation(v8, v9);
        (*v54)(v32, v33);
      }

      else
      {
        (*v54)(v0[15], v0[13]);
        outlined consume of Data._Representation(v8, v9);
      }

      v3 = v56 + 2;

      v2 = v57 - 1;
    }

    while (v57 != 1);
  }

  v42 = v0[16];
  v43 = v0[6];
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  v44 = v0[15];
  v46 = v0[11];
  v45 = v0[12];
  v48 = v0[9];
  v47 = v0[10];

  v49 = v0[1];

  return v49();
}

{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v44 = v0[6];
    v45 = v0[7];
    v46 = (v0[13] + 8);
    v47 = v0[4];
    v3 = (v1 + 40);
    do
    {
      v48 = v2;
      v4 = v0[14];
      v5 = v0[15];
      v6 = v0[11];
      v7 = v0[5];
      v9 = *(v3 - 1);
      v8 = *v3;
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      v49 = v8;

      v11 = type metadata accessor for StoredConfig(0);
      v0[2] = v11;
      Predicate.init(_:)();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMR);
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
      FetchDescriptor.init(predicate:sortBy:)();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, 255, type metadata accessor for ConfigTable);
      ModelActor.modelContext.getter();
      v13 = dispatch thunk of ModelContext.fetch<A>(_:)();

      if (v13 >> 62)
      {
        if (v13 < 0)
        {
          v16 = v13;
        }

        else
        {
          v16 = v13 & 0xFFFFFFFFFFFFFF8;
        }

        result = MEMORY[0x22AA610B0](v16);
        if (!result)
        {
LABEL_15:

          v15 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_15;
        }
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x22AA60F70](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v15 = *(v13 + 32);
      }

LABEL_16:
      if (*(v47 + 16) && (v17 = v0[4], v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v49), (v19 & 1) != 0))
      {
        v20 = v0[9];
        v21 = v0[10];
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v47 + 56) + *(v45 + 72) * v18, v20, type metadata accessor for AspireApiConfig);
        _s8CipherML12UseCaseGroupVWObTm_3(v20, v21, type metadata accessor for AspireApiConfig);
        if (v15)
        {
          if ((*(v0[10] + *(v44 + 24)) & 1) == 0)
          {
            v22 = v0[6];
            _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig);
            v23 = Message.serializedData(partial:)();
            (*(*v15 + 192))(v23);
          }
        }

        else
        {
          v28 = v0[15];
          v29 = v0[10];
          v30 = v0[8];
          v31 = v0[5];
          ModelActor.modelContext.getter();
          _s8CipherML12UseCaseGroupVWOcTm_3(v29, v30, type metadata accessor for AspireApiConfig);
          v32 = *(v11 + 48);
          v33 = *(v11 + 52);
          swift_allocObject();

          StoredConfig.init(key:value:)(v9, v49, v30);
          dispatch thunk of ModelContext.insert<A>(_:)();
        }

        v34 = v0[14];
        v35 = v0[12];
        _s8CipherML12UseCaseGroupVWOhTm_1(v0[10], type metadata accessor for AspireApiConfig);
        (*v46)(v34, v35);
      }

      else if (v15)
      {
        v25 = v0[14];
        v24 = v0[15];
        v26 = v0[12];
        v27 = v0[5];
        ModelActor.modelContext.getter();
        dispatch thunk of ModelContext.delete<A>(_:)();

        (*v46)(v25, v26);
      }

      else
      {
        (*v46)(v0[14], v0[12]);
      }

      v3 += 2;
      v2 = v48 - 1;
    }

    while (v48 != 1);
  }

  v36 = v0[15];
  v37 = v0[5];
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, 255, type metadata accessor for ConfigTable);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  v38 = v0[14];
  v40 = v0[10];
  v39 = v0[11];
  v42 = v0[8];
  v41 = v0[9];

  v43 = v0[1];

  return v43();
}

uint64_t KeyRotation.run()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Date();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.run(), v0, 0);
}

{
  v1 = *(*(v0 + 40) + 144);
  *(v0 + 80) = v1;
  return MEMORY[0x2822009F8](KeyRotation.run(), v1, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v2 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate + 8);
  (*(v2 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate))();
  Date.addingTimeInterval(_:)();
  v8 = *(v4 + 8);
  v8(v3, v6);
  v9 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = swift_task_alloc();
  *(v11 + 16) = v1;

  specialized _NativeDictionary.filter(_:)(partial apply for closure #1 in ActiveUseCaseTracker.activeUseCases.getter, v11, v10);
  v13 = v12;

  v0[11] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS8CipherML7UseCaseO_GTt0g5(v13);
  v8(v1, v6);

  return MEMORY[0x2822009F8](KeyRotation.run(), v5, 0);
}

{
  v1 = v0[11];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type KeyRotation and conformance KeyRotation, v4, type metadata accessor for KeyRotation);
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = KeyRotation.run();
  v7 = v0[5];

  return MEMORY[0x282200830]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = KeyRotation.run();
  }

  else
  {
    v6 = v2[11];
    v7 = v2[12];
    v8 = v2[5];

    v5 = KeyRotation.run();
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t closure #1 in KeyRotation.run()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in KeyRotation.run(), a2, 0);
}

uint64_t closure #1 in KeyRotation.run()()
{
  v1 = v0[4];
  v2 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = closure #1 in KeyRotation.run();
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return KeyRotation.run(activeUseCases:configResponse:)(v5, v4);
}

{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  if (v0)
  {
    v5 = v4[2];

    return MEMORY[0x2822009F8](closure #1 in KeyRotation.run(), v5, 0);
  }

  else
  {
    v6 = v4[4];

    v7 = v4[1];

    return v7();
  }
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t closure #2 in KeyRotation.run()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #2 in KeyRotation.run(), v7);
}

uint64_t closure #1 in closure #2 in KeyRotation.run()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return KeyRotation.cancel()();
}

uint64_t KeyRotation.runWithCoordinator(useCase:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.runWithCoordinator(useCase:configResponse:), v3, 0);
}

uint64_t KeyRotation.runWithCoordinator(useCase:configResponse:)()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v6 = *(v2 + 184);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[4], v1, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[9] = v8;
  v8[2] = v2;
  v8[3] = v5;
  v8[4] = v4;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v1, v8 + v7, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = KeyRotation.runWithCoordinator(useCase:configResponse:);
  v10 = v0[2];
  v11 = v0[3];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v10, v11, &async function pointer to partial apply for closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = KeyRotation.runWithCoordinator(useCase:configResponse:);
  }

  else
  {
    v7 = KeyRotation.runWithCoordinator(useCase:configResponse:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  return MEMORY[0x2822009F8](closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), 0, 0);
}

uint64_t closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)()
{
  v2 = v0[9];
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022960;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  v0[12] = v4;
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:);
  v6 = v0[11];
  v7 = v0[8];

  return KeyRotation.run(activeUseCases:configResponse:)(v4, v6);
}

{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t KeyRotation.run(activeUseCases:configResponse:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](KeyRotation.run(activeUseCases:configResponse:), v2, 0);
}

uint64_t KeyRotation.run(activeUseCases:configResponse:)()
{
  v15 = v0;
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.daemon);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = Set.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_224E26000, v3, v4, "Running rotation task for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = KeyRotation.run(activeUseCases:configResponse:);
  v12 = v0[4];

  return specialized KeyRotation.activeGroups(activeUseCases:)();
}

{
  v1 = *(v0 + 48);
  v2 = *(v1 + 32);
  *(v0 + 104) = v2;
  v3 = -1;
  v4 = -1 << v2;
  v5 = *(v1 + 56);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  *(v0 + 56) = 0;
  v6 = v3 & v5;
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 64) = v6;
    *(v0 + 72) = v7;
    v10 = (*(v1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];
    *(v0 + 80) = v12;

    static Task<>.checkCancellation()();
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = KeyRotation.run(activeUseCases:configResponse:);
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);
    v16 = *(v0 + 16);

    return KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v11, v12, v16, v14);
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v4) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v1 + 8 * v8++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 32);

  if (v0)
  {
    v7 = KeyRotation.run(activeUseCases:configResponse:);
  }

  else
  {
    v7 = KeyRotation.run(activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t KeyRotation.run(activeUseCases:configResponse:)(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](KeyRotation.run(activeUseCases:configResponse:), v3, 0);
}

void KeyRotation.run(activeUseCases:configResponse:)()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = (*(v0 + 64) - 1) & *(v0 + 64);
  if (!v3)
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= (((1 << *(v0 + 104)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 48);
      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v16 = *(v0 + 48);
    v17 = *(v0 + 56);

    if (v17)
    {
      v18 = *(v0 + 56);
      swift_willThrow();
      goto LABEL_9;
    }

    v11 = *(v0 + 8);
    goto LABEL_10;
  }

  v4 = *(v0 + 48);
LABEL_7:
  *(v0 + 64) = v3;
  *(v0 + 72) = v2;
  v6 = (*(v4 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
  v7 = *v6;
  v8 = v6[1];
  *(v0 + 80) = v8;

  static Task<>.checkCancellation()();
  if (v1)
  {
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);

LABEL_9:
    v11 = *(v0 + 8);
LABEL_10:

    v11();
    return;
  }

  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = KeyRotation.run(activeUseCases:configResponse:);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = *(v0 + 16);

  KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v7, v8, v15, v13);
}

{
  v1 = *(v0 + 96);

  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 56) = v1;
  v4 = (v3 - 1) & v3;
  if (v4)
  {
    v5 = *(v0 + 48);
LABEL_7:
    *(v0 + 64) = v4;
    *(v0 + 72) = v2;
    v7 = (*(v5 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v4)))));
    v8 = *v7;
    v9 = v7[1];
    *(v0 + 80) = v9;

    static Task<>.checkCancellation()();
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = KeyRotation.run(activeUseCases:configResponse:);
    v12 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = *(v0 + 16);

    KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v8, v9, v14, v12);
  }

  else
  {
    while (1)
    {
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return;
      }

      v5 = *(v0 + 48);
      if (v6 >= (((1 << *(v0 + 104)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v2;
      if (v4)
      {
        v2 = v6;
        goto LABEL_7;
      }
    }

    if (v1)
    {
      v15 = *(v0 + 56);
      swift_willThrow();
    }

    v10 = *(v0 + 8);

    v10();
  }
}

uint64_t KeyRotation.cancel()()
{
  *(v1 + 184) = v0;
  return MEMORY[0x2822009F8](KeyRotation.cancel(), v0, 0);
}

{
  v1 = *(v0 + 184);
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + 192, v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  if (*(v0 + 80))
  {
    outlined init with take of LocalizedError((v0 + 56), v0 + 16);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.daemon);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_224E26000, v3, v4, "Canceling key upload", v5, 2u);
      MEMORY[0x22AA61F40](v5, -1, -1);
    }

    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    v8 = *(v7 + 40);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = KeyRotation.cancel();

    return v13(v6, v7);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](KeyRotation.cancel(), v2, 0);
}

{
  v1 = *(v0 + 184);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  swift_beginAccess();
  outlined assign with take of NetworkManager?(v0 + 96, v1 + 192);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

void *KeyRotation.deinit()
{
  v1 = v0[14];

  v2 = v0[15];
  swift_unknownObjectRelease();
  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[20];

  v6 = v0[22];

  v7 = v0[23];

  outlined destroy of AMDPbHEConfig.OneOf_Config?((v0 + 24), &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t KeyRotation.__deallocating_deinit()
{
  KeyRotation.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x22AA5F1C0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x22AA5F1C0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS8CipherML12UseCaseGroupVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_SS_8i4ML12klM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n03_s8i33ML11KeyRotationC12activeGroups0E8k32CasesShySSGAF_tYaFSbSS3key_AA0G9lM15V5valuet_tXEfU_Tf1nnc_n(v8, v4, v2);
      MEMORY[0x22AA61F40](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v41 = a1;
  v51 = type metadata accessor for NetworkManagerType(0);
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
  v6 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = (&v39 - v9);
  v10 = type metadata accessor for UseCaseGroup();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v13 = 0;
  v52 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v54 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = v52[7];
    v26 = (v52[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v44;
    v30 = *(v45 + 72);
    v43 = v24;
    _s8CipherML12UseCaseGroupVWOcTm_3(v25 + v30 * v24, v44, type metadata accessor for UseCaseGroup);
    v31 = v47;
    *v47 = v27;
    *(v31 + 8) = v28;
    v32 = v49;
    _s8CipherML12UseCaseGroupVWOcTm_3(v29, v31 + *(v49 + 48), type metadata accessor for UseCaseGroup);
    v33 = v48;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31, v48, &_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    v34 = *(v33 + 8);
    swift_bridgeObjectRetain_n();

    v35 = v33 + *(v32 + 48);
    v36 = *(v46 + 36);
    v37 = v50;
    swift_storeEnumTagMultiPayload();
    v53 = specialized static NetworkManagerType.== infix(_:_:)(v35 + v36, v37);
    _s8CipherML12UseCaseGroupVWOhTm_1(v37, type metadata accessor for NetworkManagerType);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(v35, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v29, type metadata accessor for UseCaseGroup);

    v19 = v54;
    if (v53)
    {
      *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(v41, v40, v42, v52);
        return;
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_15;
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v54 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS8CipherML12UseCaseGroupVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_SS_8i4ML12klM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n03_s8i33ML11KeyRotationC12activeGroups0E8k32CasesShySSGAF_tYaFSbSS3key_AA0G9lM15V5valuet_tXEfU_Tf1nnc_n(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = type metadata accessor for Date();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    Hasher.init(_seed:)();

    v54 = v28;
    String.hash(into:)();
    result = Hasher._finalize()();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v8 = type metadata accessor for AspireApiConfig(0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    _s8CipherML12UseCaseGroupVWOcTm_3(v23 + v45 * v22, v42, type metadata accessor for AspireApiConfig);
    _s8CipherML12UseCaseGroupVWObTm_3(v27, v18, type metadata accessor for AspireApiConfig);
    v28 = *(v14 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = _s8CipherML12UseCaseGroupVWObTm_3(v18, *(v14 + 56) + v32 * v45, type metadata accessor for AspireApiConfig);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v8 = type metadata accessor for UseCaseGroup();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    _s8CipherML12UseCaseGroupVWOcTm_3(v23 + v45 * v22, v42, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWObTm_3(v27, v18, type metadata accessor for UseCaseGroup);
    v28 = *(v14 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = _s8CipherML12UseCaseGroupVWObTm_3(v18, *(v14 + 56) + v32 * v45, type metadata accessor for UseCaseGroup);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x22AA61F40](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x22AA61F40](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v14 = Hasher._finalize()();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return specialized _NativeSet.extractSubset(using:count:)(v26, a2, v25, a4);
}

uint64_t specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v37 = a4 + 56;

  v32 = 0;
  v33 = v5;
  v12 = 0;
  v35 = v10;
  v36 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v4 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v20 = Hasher._finalize()();
    v21 = -1 << *(v4 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) != 0)
    {
      v25 = v4;
      v26 = (*(v4 + 48) + 16 * v22);
      if (*v26 != v18 || v26[1] != v17)
      {
        v28 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v28;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
          {
            v4 = v25;
            v5 = v33;
            goto LABEL_23;
          }

          v29 = (*(v25 + 48) + 16 * v22);
          if (*v29 == v18 && v29[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v23];
      a1[v23] = v13 | v24;
      v4 = v25;
      v5 = v33;
      v10 = v35;
      v6 = v36;
      if ((v13 & v24) == 0 && __OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_27:

        return specialized _NativeSet.extractSubset(using:count:)(a1, a2, v32, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v35;
      v6 = v36;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized KeyRotation.activeGroups(activeUseCases:)()
{
  v1[5] = v0;
  v2 = type metadata accessor for Date();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
  v1[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized KeyRotation.activeGroups(activeUseCases:), v0, 0);
}

{
  v60 = v0;
  v1 = v0;
  v2 = *(v0[5] + 136);
  v0[14] = v2;
  v3 = *(v2 + 32);

  specialized _NativeDictionary.filter(_:)(v4);
  v6 = v5;
  v0[15] = 0;

  v7 = *(v6 + 16);
  if (v7)
  {
    v54 = v0[11];
    v55 = v0[12];
    v53 = v0[10];
    v59 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v59;
    v9 = v6 + 64;
    v10 = -1 << *(v6 + 32);
    v11 = _HashTable.startBucket.getter();
    v12 = 0;
    v48 = v6 + 72;
    v49 = v7;
    v50 = v0;
    v51 = v6 + 64;
    v52 = v6;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v6 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      v56 = v12;
      v16 = *(v1 + 96);
      v15 = *(v1 + 104);
      v57 = *(v6 + 36);
      v17 = *(v53 + 48);
      v18 = *(v1 + 88);
      v58 = v8;
      v19 = *(v6 + 56);
      v20 = (*(v6 + 48) + 16 * v11);
      v21 = *v20;
      v22 = v20[1];
      v23 = type metadata accessor for UseCaseGroup();
      _s8CipherML12UseCaseGroupVWOcTm_3(v19 + *(*(v23 - 8) + 72) * v11, v15 + v17, type metadata accessor for UseCaseGroup);
      *v16 = v21;
      *(v55 + 8) = v22;
      _s8CipherML12UseCaseGroupVWObTm_3(v15 + v17, v16 + *(v53 + 48), type metadata accessor for UseCaseGroup);
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v16, v18, &_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
      v24 = *v18;
      v25 = *(v54 + 8);
      v26 = *(v53 + 48);

      v27 = v18 + v26;
      v8 = v58;
      _s8CipherML12UseCaseGroupVWOhTm_1(v27, type metadata accessor for UseCaseGroup);
      v59 = v58;
      v1 = *(v58 + 16);
      v28 = *(v58 + 24);
      if (v1 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v1 + 1, 1);
        v8 = v59;
      }

      *(v8 + 16) = v1 + 1;
      v29 = v8 + 16 * v1;
      *(v29 + 32) = v24;
      *(v29 + 40) = v25;
      v6 = v52;
      v13 = 1 << *(v52 + 32);
      if (v11 >= v13)
      {
        goto LABEL_29;
      }

      v9 = v51;
      v30 = *(v51 + 8 * v14);
      if ((v30 & (1 << v11)) == 0)
      {
        goto LABEL_30;
      }

      if (v57 != *(v52 + 36))
      {
        goto LABEL_31;
      }

      v31 = v30 & (-2 << (v11 & 0x3F));
      if (v31)
      {
        v13 = __clz(__rbit64(v31)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v1 = v50;
      }

      else
      {
        v32 = v14 << 6;
        v33 = (v48 + 8 * v14);
        v34 = v14 + 1;
        v1 = v50;
        while (v34 < (v13 + 63) >> 6)
        {
          v36 = *v33++;
          v35 = v36;
          v32 += 64;
          ++v34;
          if (v36)
          {
            outlined consume of [String : UseCaseGroup].Index._Variant(v11, v57, 0);
            v13 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        outlined consume of [String : UseCaseGroup].Index._Variant(v11, v57, 0);
      }

LABEL_4:
      v12 = v56 + 1;
      v11 = v13;
      if (v56 + 1 == v49)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_21:
  *(v1 + 128) = v8;
  if (one-time initialization token for daemon != -1)
  {
LABEL_32:
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.daemon);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v8;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59 = v42;
    *v41 = 136315138;
    v43 = MEMORY[0x22AA60B60](v40, MEMORY[0x277D837D0]);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v59);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_224E26000, v38, v39, "Skipping groups that manage their own networking: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x22AA61F40](v42, -1, -1);
    MEMORY[0x22AA61F40](v41, -1, -1);
  }

  v46 = *(*(v1 + 40) + 144);
  *(v1 + 136) = v46;

  return MEMORY[0x2822009F8](specialized KeyRotation.activeGroups(activeUseCases:), v46, 0);
}

{
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = *(v1 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate + 8);
  (*(v1 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate))();
  Date.addingTimeInterval(_:)();
  v9 = *(v6 + 8);
  v9(v4, v5);
  v10 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = swift_task_alloc();
  *(v12 + 16) = v3;

  specialized _NativeDictionary.filter(_:)(closure #1 in ActiveUseCaseTracker.activeUseCases.getterpartial apply, v12, v11);
  v14 = v13;

  v0[18] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS8CipherML7UseCaseO_GTt0g5(v14);
  v9(v3, v5);

  return MEMORY[0x2822009F8](specialized KeyRotation.activeGroups(activeUseCases:), v7, 0);
}

{
  v1 = v0[18];
  v2 = v0[14];
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v7 = v0[18];

  v9 = 0;
  v36 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
LABEL_11:
      v11 = v0[5];
      v12 = (*(v1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
      v13 = *v12;
      v14 = v12[1];

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v15 = v0[5];
        swift_task_reportUnexpectedExecutor();
      }

      v5 &= v5 - 1;
      v16 = *(v2 + 48);
      if (!*(v16 + 16))
      {
        goto LABEL_6;
      }

      v17 = *(v2 + 48);

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v19)
      {
        v20 = (*(v16 + 56) + 16 * v18);
        v21 = v20[1];
        v35 = *v20;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1, v36);
          v36 = result;
        }

        v23 = *(v36 + 16);
        v22 = *(v36 + 24);
        if (v23 >= v22 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v36);
          v36 = result;
        }

        *(v36 + 16) = v23 + 1;
        v24 = v36 + 16 * v23;
        *(v24 + 32) = v35;
        *(v24 + 40) = v21;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      else
      {

LABEL_6:

        if (!v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v1 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  v25 = v0[18];
  v26 = v0[16];
  v28 = v0[12];
  v27 = v0[13];
  v29 = v0[11];
  v31 = v0[8];
  v30 = v0[9];

  v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v36);

  v33 = specialized _NativeSet.subtracting<A>(_:)(v26, v32);

  v34 = v0[1];

  return v34(v33);
}

uint64_t outlined init with copy of NetworkManager(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of AspireApiConfigResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in KeyRotation.run()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in KeyRotation.run()(a1, v5, v4);
}

uint64_t dispatch thunk of KeyRotation.activeGroups(activeUseCases:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = KeyRotation.activeGroups(activeUseCases:);

  return v8(a1);
}

uint64_t dispatch thunk of KeyRotation.areKeysExpired(groupName:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of XPCHandler.queryStatus(for:options:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KeyRotation.rotateUserId(groupName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 208);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 216);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = dispatch thunk of XPCHandler.queryStatus(for:options:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 232);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 240);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of KeyRotation.run()()
{
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v6();
}

uint64_t dispatch thunk of KeyRotation.runWithCoordinator(useCase:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 256);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of KeyRotation.run(activeUseCases:configResponse:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 264);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2);
}

uint64_t dispatch thunk of KeyRotation.cancel()()
{
  v2 = *(*v0 + 272);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v6();
}

uint64_t partial apply for closure #1 in closure #2 in KeyRotation.run()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in closure #2 in KeyRotation.run()();
}

uint64_t partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, specialized closure #1 in _NativeSet.genericIntersection<A>(_:), a3);
}

{
  return partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, specialized closure #1 in _NativeSet.genericIntersection<A>(_:), a3);
}

uint64_t _s8CipherML12UseCaseGroupVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8CipherML12UseCaseGroupVWOcTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s8CipherML12UseCaseGroupVWObTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t ScheduledActivity.__allocating_init(handler:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

Swift::Void __swiftcall ScheduledActivity.register()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = *(v2 + 88);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = implicit closure #1 in ScheduledActivity.register()(v1 + *(*v1 + 96), v3, v4);
  v10 = v9;
  v11 = [objc_opt_self() sharedScheduler];
  v12 = MEMORY[0x22AA609C0](v5, v7);
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v10;
  v15[4] = partial apply for closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v15[3] = &block_descriptor_6;
  v14 = _Block_copy(v15);

  [v11 registerForTaskWithIdentifier:v12 usingQueue:0 launchHandler:v14];
  _Block_release(v14);
}

uint64_t SendableBGSystemTask.__allocating_init(task:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMR);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t SendableBGSystemTask.init(task:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMR);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  *(v1 + 16) = v3;
  return v1;
}

Swift::Void __swiftcall SendableBGSystemTask.setTaskCompleted()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) setTaskCompleted];

  os_unfair_lock_unlock((v1 + 24));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SendableBGSystemTask.setTaskExpiredWithRetryAfter(_:)(Swift::Double a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  closure #1 in SendableBGSystemTask.setTaskExpiredWithRetryAfter(_:)((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

id closure #1 in SendableBGSystemTask.setTaskExpiredWithRetryAfter(_:)(void **a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v5[0] = 0;
  if ([v1 setTaskExpiredWithRetryAfter:v5 error:?])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void SendableBGSystemTask.setExpirationHandler(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  partial apply for closure #1 in SendableBGSystemTask.setExpirationHandler(_:)((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void closure #1 in SendableBGSystemTask.setExpirationHandler(_:)(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_7_0;
  v4 = _Block_copy(v5);

  [v3 setExpirationHandler_];
  _Block_release(v4);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t SendableBGSystemTask.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SendableBGSystemTask.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *implicit closure #1 in ScheduledActivity.register()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
}

uint64_t implicit closure #2 in implicit closure #1 in ScheduledActivity.register()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v10(a2, a3);
}

uint64_t closure #1 in ScheduledActivity.registerTask(identifier:handler:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v29 - v12;
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.daemon);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v29);
    _os_log_impl(&dword_224E26000, v15, v16, "ScheduledActivity(%{public}s) run", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA61F40](v18, -1, -1);
    MEMORY[0x22AA61F40](v17, -1, -1);
  }

  type metadata accessor for SendableBGSystemTask();
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMR);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = a1;
  *(v19 + 16) = v20;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = v19;
  v22[7] = a4;
  v22[8] = a5;

  v23 = a1;

  v24 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), v22);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = v24;
  v26 = *(v19 + 16);
  MEMORY[0x28223BE20](v25);
  v29[-2] = partial apply for closure #2 in closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  v29[-1] = v27;

  os_unfair_lock_lock((v26 + 24));
  closure #1 in SendableBGSystemTask.setExpirationHandler(_:)partial apply((v26 + 16));
  os_unfair_lock_unlock((v26 + 24));
}

uint64_t closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 24) = a4;
  v9 = type metadata accessor for CancellationError();
  *(v7 + 48) = v9;
  v10 = *(v9 - 8);
  *(v7 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 104) = 0;
  v15 = (a7 + *a7);
  v12 = a7[1];
  v13 = swift_task_alloc();
  *(v7 + 72) = v13;
  *v13 = v7;
  v13[1] = closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:);

  return v15();
}

uint64_t closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  }

  else
  {
    v3 = closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 88) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), v1, 0);
}

{
  v1 = *(v0 + 88);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), 0, 0);
}

{
  v1 = *(v0 + 64);
  $defer #1 <A>() in closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)((v0 + 104), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v2 = *(v0 + 8);

  return v2();
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 96) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), v1, 0);
}

{
  v1 = *(v0 + 96);
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), 0, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  swift_willThrow();
  *(v0 + 16) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    *(v0 + 104) = 1;
    (*(v6 + 8))(v5, v7);
    v8 = *(v0 + 16);
  }

  else
  {

    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 80);
    v10 = *(v0 + 32);
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.daemon);
    v12 = v9;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 80);
    if (v15)
    {
      v18 = *(v0 + 24);
      v17 = *(v0 + 32);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v19 = 136446466;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v27);
      *(v19 + 12) = 2114;
      v22 = v16;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_224E26000, v13, v14, "ScheduledActivity(%{public}s) threw error: %{public}@", v19, 0x16u);
      outlined destroy of NSObject?(v20);
      MEMORY[0x22AA61F40](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA61F40](v21, -1, -1);
      MEMORY[0x22AA61F40](v19, -1, -1);

      goto LABEL_9;
    }

    v8 = v16;
  }

LABEL_9:
  v24 = *(v0 + 64);
  $defer #1 <A>() in closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)((v0 + 104), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v25 = *(v0 + 8);

  return v25();
}

void $defer #1 <A>() in closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.daemon);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
      _os_log_impl(&dword_224E26000, v8, v9, "ScheduledActivity(%{public}s) expired", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AA61F40](v11, -1, -1);
      MEMORY[0x22AA61F40](v10, -1, -1);
    }

    v12 = *(a4 + 16);
    os_unfair_lock_lock((v12 + 24));
    closure #1 in SendableBGSystemTask.setTaskExpiredWithRetryAfter(_:)((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
  }

  else
  {
    v13 = *(a4 + 16);
    os_unfair_lock_lock((v13 + 24));
    [*(v13 + 16) setTaskCompleted];
    os_unfair_lock_unlock((v13 + 24));
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.daemon);

    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136446210;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
      _os_log_impl(&dword_224E26000, oslog, v15, "ScheduledActivity(%{public}s) completed", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA61F40](v17, -1, -1);
      MEMORY[0x22AA61F40](v16, -1, -1);
    }

    else
    {
    }
  }
}

void closure #2 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.daemon);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v9);
    _os_log_impl(&dword_224E26000, v5, v6, "ScheduledActivity(%{public}s) deferred", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  JUMPOUT(0x22AA60CB0);
}

void thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t ScheduledActivity.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void specialized ScheduledActivity.registerTask(identifier:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() sharedScheduler];
  v9 = MEMORY[0x22AA609C0](a1, a2);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v12[4] = closure #1 in ScheduledActivity.registerTask(identifier:handler:)partial apply;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v12[3] = &block_descriptor_23;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of ScheduledActivityHandler.run@Sendable ()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v9(a1, a2);
}

uint64_t type metadata completion function for ScheduledActivity(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in ScheduledActivity.register()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return implicit closure #2 in implicit closure #1 in ScheduledActivity.register()(v0 + v4, v2, v3);
}

uint64_t TokenIssuerDirectory.findTokenKey(tokenKey:currentTime:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TokenIssuerDirectory();
  v17 = *(v5 + *(result + 20));
  v18 = *(v17 + 16);
  v73 = v18;
  if (!v18)
  {
    v45 = 0;
    v46 = 0;
LABEL_65:
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
LABEL_67:
    *a5 = v45;
    *(a5 + 8) = v46;
    *(a5 + 16) = v18;
    *(a5 + 24) = v47;
    *(a5 + 32) = v48;
    *(a5 + 40) = v49;
    *(a5 + 48) = v50;
    return result;
  }

  v55 = v15;
  v56 = v12;
  v57 = a4;
  v58 = a3;
  v59 = v11;
  v60 = a5;
  v19 = 0;
  if (a1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a2 == 0xC000000000000000;
  }

  v21 = !v20;
  v64 = v21;
  v65 = a2 >> 62;
  v22 = __OFSUB__(HIDWORD(a1), a1);
  v62 = v22;
  v61 = HIDWORD(a1) - a1;
  v63 = BYTE6(a2);
  v23 = (v17 + 80);
  v72 = v17;
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v71 = *(v23 - 24);
    v24 = *(v23 - 5);
    v25 = *(v23 - 4);
    v26 = *(v23 - 3);
    v68 = *(v23 - 16);
    v69 = v26;
    v67 = *(v23 - 1);
    v66 = *v23;
    v70 = v24;
    v79 = v24;
    v80 = v25;
    v77 = 45;
    v78 = 0xE100000000000000;
    v75 = 43;
    v76 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v74 = v25;

    v79 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v80 = v27;
    v77 = 95;
    v78 = 0xE100000000000000;
    v75 = 47;
    v76 = 0xE100000000000000;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v28 = Data.init(base64Encoded:options:)();
    v30 = v29;
    outlined copy of Data?(v28, v29);

    if (v30 >> 60 == 15)
    {
      break;
    }

    result = outlined consume of Data?(v28, v30);
    if (a2 >> 60 != 15)
    {
      v31 = v30 >> 62;
      if (v30 >> 62 == 3)
      {
        if (v28)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30 == 0xC000000000000000;
        }

        v34 = !v32 || v65 < 3;
        if (((v34 | v64) & 1) == 0)
        {
          outlined copy of Data._Representation(0, 0xC000000000000000);
          outlined consume of Data?(0, 0xC000000000000000);
          v28 = 0;
          goto LABEL_57;
        }

        v35 = 0;
LABEL_43:
        v36 = v65;
        if (v65 <= 1)
        {
          goto LABEL_44;
        }

LABEL_36:
        if (v36 == 2)
        {
          v38 = *(a1 + 16);
          v37 = *(a1 + 24);
          v39 = __OFSUB__(v37, v38);
          v40 = v37 - v38;
          if (v39)
          {
            goto LABEL_70;
          }

          goto LABEL_46;
        }

        if (!v35)
        {
          goto LABEL_55;
        }

LABEL_50:
        outlined copy of Data._Representation(a1, a2);
        outlined consume of Data?(a1, a2);
        outlined consume of Data?(v28, v30);
      }

      else
      {
        v36 = v65;
        if (!v31)
        {
          v35 = BYTE6(v30);
          if (v65 <= 1)
          {
            goto LABEL_44;
          }

          goto LABEL_36;
        }

        if (v31 != 1)
        {
          v42 = *(v28 + 16);
          v41 = *(v28 + 24);
          v39 = __OFSUB__(v41, v42);
          v35 = v41 - v42;
          if (v39)
          {
            goto LABEL_71;
          }

          goto LABEL_43;
        }

        LODWORD(v35) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
          goto LABEL_72;
        }

        v35 = v35;
        if (v65 > 1)
        {
          goto LABEL_36;
        }

LABEL_44:
        v43 = v36;
        v40 = v63;
        if (v43)
        {
          v40 = v61;
          if (v62)
          {
            goto LABEL_69;
          }
        }

LABEL_46:
        if (v35 != v40)
        {
          goto LABEL_50;
        }

        if (v35 < 1)
        {
LABEL_55:
          outlined copy of Data._Representation(a1, a2);
          outlined consume of Data?(a1, a2);
          goto LABEL_57;
        }

        outlined copy of Data?(v28, v30);
        outlined copy of Data._Representation(a1, a2);
        outlined copy of Data?(a1, a2);
        v44 = specialized Data.withUnsafeBytes<A>(_:)(v28, v30, a1, a2);
        outlined consume of Data?(v28, v30);
        outlined consume of Data?(a1, a2);
        result = outlined consume of Data?(v28, v30);
        if (v44)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_14;
    }

LABEL_13:
    outlined copy of Data._Representation(a1, a2);

    outlined consume of Data?(v28, v30);
    result = outlined consume of Data?(a1, a2);
LABEL_14:
    ++v19;
    v23 += 56;
    v17 = v72;
    if (v73 == v19)
    {
      v45 = 0;
      v46 = 0;
      v18 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      a5 = v60;
      goto LABEL_67;
    }
  }

  if (a2 >> 60 != 15)
  {
    goto LABEL_13;
  }

  outlined copy of Data._Representation(a1, a2);
LABEL_57:
  result = outlined consume of Data?(v28, v30);
LABEL_58:
  a5 = v60;
  v46 = v70;
  v45 = v71;
  v48 = v68;
  v47 = v69;
  v49 = v67;
  v50 = v66;
  if (v68)
  {
LABEL_66:
    v18 = v74;
    goto LABEL_67;
  }

  v51 = v55;
  v58(result);
  Date.timeIntervalSince1970.getter();
  v53 = v52;
  v54 = v52;
  result = (*(v56 + 8))(v51, v59);
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_73;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v53 < 9.22337204e18)
  {
    if (v53 < 0 || v47 > v53)
    {

      v45 = 0;
      v46 = 0;
      v18 = 0;
      goto LABEL_65;
    }

    goto LABEL_66;
  }

LABEL_75:
  __break(1u);
  return result;
}

CipherML::TokenKey::CodingKeys_optional __swiftcall TokenKey.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenKey.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t TokenKey.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x79742D6E656B6F74;
  v2 = 0x6F6665622D746F6ELL;
  if (a1 != 2)
  {
    v2 = 0x6D696C2D65746172;
  }

  if (a1)
  {
    v1 = 0x656B2D6E656B6F74;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenKey.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x79742D6E656B6F74;
  v4 = *a1;
  v5 = 0x6F6665622D746F6ELL;
  v6 = 0xEA00000000006572;
  if (v4 == 2)
  {
    v7 = 0xEA00000000006572;
  }

  else
  {
    v5 = 0x6D696C2D65746172;
    v7 = 0xEA00000000007469;
  }

  v8 = 0x656B2D6E656B6F74;
  v9 = 0xE900000000000079;
  if (!*a1)
  {
    v8 = 0x79742D6E656B6F74;
    v9 = 0xEA00000000006570;
  }

  if (*a1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x6F6665622D746F6ELL;
  if (*a2 != 2)
  {
    v12 = 0x6D696C2D65746172;
    v6 = 0xEA00000000007469;
  }

  if (*a2)
  {
    v3 = 0x656B2D6E656B6F74;
    v2 = 0xE900000000000079;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v6;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TokenKey.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TokenKey.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TokenKey.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TokenKey.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TokenKey.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TokenKey.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x79742D6E656B6F74;
  v3 = 0xEA00000000006572;
  v4 = 0x6F6665622D746F6ELL;
  if (*v1 != 2)
  {
    v4 = 0x6D696C2D65746172;
    v3 = 0xEA00000000007469;
  }

  v5 = 0xE900000000000079;
  if (*v1)
  {
    v2 = 0x656B2D6E656B6F74;
  }

  else
  {
    v5 = 0xEA00000000006570;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenKey.CodingKeys()
{
  v1 = 0x79742D6E656B6F74;
  v2 = 0x6F6665622D746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x6D696C2D65746172;
  }

  if (*v0)
  {
    v1 = 0x656B2D6E656B6F74;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenKey.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TokenKey.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenKey.tokenKeyBase64Url.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TokenKey.notBefore.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t TokenKey.rateLimit.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t TokenKey.tokenKey.getter()
{
  v5 = *(v0 + 8);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v1 = Data.init(base64Encoded:options:)();
  v3 = v2;
  outlined copy of Data?(v1, v2);

  if (v3 >> 60 != 15)
  {
    outlined consume of Data?(v1, v3);
  }

  return v1;
}

uint64_t type metadata accessor for TokenIssuerDirectory()
{
  result = type metadata singleton initialization cache for TokenIssuerDirectory;
  if (!type metadata singleton initialization cache for TokenIssuerDirectory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TokenKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML8TokenKeyV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML8TokenKeyV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v19[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 1);
  v13 = *(v3 + 2);
  v19[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = *(v3 + 3);
  v15 = *(v3 + 32);
  v19[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = *(v3 + 5);
  v18 = *(v3 + 48);
  v19[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

double TokenKey.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized TokenKey.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t TokenKey.init(tokenType:tokenKeyBase64Url:notBefore:rateLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

double protocol witness for Decodable.init(from:) in conformance TokenKey@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized TokenKey.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

CipherML::TokenIssuerDirectory::CodingKeys_optional __swiftcall TokenIssuerDirectory.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenIssuerDirectory.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CipherML_TokenIssuerDirectory_CodingKeys_tokenKeys;
  }

  else
  {
    v4.value = CipherML_TokenIssuerDirectory_CodingKeys_unknownDefault;
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

CipherML::TokenIssuerDirectory::CodingKeys_optional __swiftcall TokenIssuerDirectory.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenIssuerDirectory.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CipherML_TokenIssuerDirectory_CodingKeys_tokenKeys;
  }

  else
  {
    v4.value = CipherML_TokenIssuerDirectory_CodingKeys_unknownDefault;
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

uint64_t TokenIssuerDirectory.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x656B2D6E656B6F74;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenIssuerDirectory.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656B2D6E656B6F74;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = 0x80000002250355E0;
  }

  else
  {
    v5 = 0xEA00000000007379;
  }

  if (*a2)
  {
    v6 = 0x656B2D6E656B6F74;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007379;
  }

  else
  {
    v7 = 0x80000002250355E0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TokenIssuerDirectory.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TokenIssuerDirectory.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TokenIssuerDirectory.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TokenIssuerDirectory.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenIssuerDirectory.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TokenIssuerDirectory.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000002250355E0;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x656B2D6E656B6F74;
    v2 = 0xEA00000000007379;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenIssuerDirectory.CodingKeys()
{
  if (*v0)
  {
    result = 0x656B2D6E656B6F74;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenIssuerDirectory.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenIssuerDirectory.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenIssuerDirectory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenIssuerDirectory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenIssuerDirectory.issuerRequestUri.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TokenIssuerDirectory.tokenKeys.getter()
{
  v1 = *(v0 + *(type metadata accessor for TokenIssuerDirectory() + 20));
}

uint64_t TokenIssuerDirectory.isValid(tokenKey:tokenType:currentTime:)(uint64_t a1, unint64_t a2, unsigned __int16 a3, void (*a4)(uint64_t), uint64_t a5)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TokenIssuerDirectory();
  v17 = *(v5 + *(result + 20));
  v18 = *(v17 + 16);
  if (!v18)
  {
    return 0;
  }

  v50 = v15;
  v51 = v12;
  v52 = a5;
  v53 = a4;
  v54 = v11;
  v19 = 0;
  v20 = a3;
  v59 = a2 >> 62;
  v21 = __OFSUB__(HIDWORD(a1), a1);
  v56 = v21;
  v55 = HIDWORD(a1) - a1;
  v57 = BYTE6(a2);
  v65 = a1;
  if (a1)
  {
    v22 = 0;
  }

  else
  {
    v22 = a2 == 0xC000000000000000;
  }

  v23 = v22;
  v58 = v23;
  v24 = (v17 + 64);
  v63 = v18;
  v64 = v17;
  v62 = a3;
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (*(v24 - 16) == v20)
    {
      break;
    }

LABEL_15:
    ++v19;
    v24 += 56;
    if (v18 == v19)
    {
      return 0;
    }
  }

  v26 = *(v24 - 2);
  v60 = *(v24 - 1);
  v61 = *v24;
  v70 = *(v24 - 3);
  v71 = v26;
  v68 = 45;
  v69 = 0xE100000000000000;
  v66 = 43;
  v67 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();

  v70 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v71 = v27;
  v68 = 95;
  v69 = 0xE100000000000000;
  v66 = 47;
  v67 = 0xE100000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v28 = Data.init(base64Encoded:options:)();
  v30 = v29;
  outlined copy of Data?(v28, v29);

  if (v30 >> 60 == 15)
  {
    if (a2 >> 60 == 15)
    {
      v43 = v65;
      outlined copy of Data._Representation(v65, a2);
      goto LABEL_52;
    }

    goto LABEL_13;
  }

  result = outlined consume of Data?(v28, v30);
  if (a2 >> 60 == 15)
  {
LABEL_13:
    v25 = v65;
    outlined copy of Data._Representation(v65, a2);

    outlined consume of Data?(v25, a2);
    result = outlined consume of Data?(v28, v30);
LABEL_14:
    v18 = v63;
    v17 = v64;
    v20 = v62;
    goto LABEL_15;
  }

  v31 = v30 >> 62;
  if (v59 != 3)
  {
    if (v59 > 1)
    {
      if (v59 != 2)
      {
        goto LABEL_37;
      }

      v35 = *(v65 + 16);
      v34 = *(v65 + 24);
      v36 = __OFSUB__(v34, v35);
      v33 = v34 - v35;
      if (v36)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v33 = v57;
      if (v59)
      {
        v33 = v55;
        if (v56)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_33:
    if (v31 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v32 = v58;
  if (v30 >> 62 != 3)
  {
    v32 = 0;
  }

  if (v32 != 1)
  {
LABEL_37:
    v33 = 0;
    if (v31 <= 1)
    {
LABEL_34:
      if (!v31)
      {
        if (v33 == BYTE6(v30))
        {
          goto LABEL_44;
        }

        goto LABEL_48;
      }

      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_65;
      }

      if (v33 == HIDWORD(v28) - v28)
      {
LABEL_44:
        if (v33 < 1)
        {
          goto LABEL_51;
        }

        outlined copy of Data?(v28, v30);
        v40 = v65;
        outlined copy of Data._Representation(v65, a2);
        outlined copy of Data?(v28, v30);
        v41 = specialized Data.withUnsafeBytes<A>(_:)(v40, a2, v28, v30);
        outlined consume of Data?(v28, v30);
        outlined consume of Data?(v28, v30);
        outlined consume of Data?(v40, a2);

        if (v41)
        {
          goto LABEL_53;
        }

        goto LABEL_14;
      }

LABEL_48:
      v42 = v65;
      outlined copy of Data._Representation(v65, a2);
      outlined consume of Data?(v28, v30);
      outlined consume of Data?(v42, a2);

      goto LABEL_14;
    }

LABEL_38:
    if (v31 == 2)
    {
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      v36 = __OFSUB__(v37, v38);
      v39 = v37 - v38;
      if (v36)
      {
        goto LABEL_66;
      }

      if (v33 == v39)
      {
        goto LABEL_44;
      }
    }

    else if (!v33)
    {
LABEL_51:
      v43 = v65;
      outlined copy of Data._Representation(v65, a2);
      outlined consume of Data?(v28, v30);
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v33 = 0;
  if (v28 || v30 != 0xC000000000000000)
  {
    goto LABEL_33;
  }

  outlined copy of Data._Representation(0, 0xC000000000000000);
  outlined consume of Data?(0, 0xC000000000000000);
  v43 = v65;
LABEL_52:
  outlined consume of Data?(v43, a2);

LABEL_53:
  if (v61)
  {
    return 1;
  }

  v44 = v50;
  v53(result);
  Date.timeIntervalSince1970.getter();
  v46 = v45;
  v47 = v45;
  result = (*(v51 + 8))(v44, v54);
  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_69;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_71:
    __break(1u);
    return result;
  }

  return v46 >= 0 && v60 <= v46;
}

uint64_t TokenIssuerDirectory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20TokenIssuerDirectoryV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML20TokenIssuerDirectoryV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for URL();
  _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for TokenIssuerDirectory() + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8CipherML8TokenKeyVGMd, &_sSay8CipherML8TokenKeyVGMR);
    lazy protocol witness table accessor for type [TokenKey] and conformance <A> [A](&lazy protocol witness table cache variable for type [TokenKey] and conformance <A> [A], lazy protocol witness table accessor for type TokenKey and conformance TokenKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TokenIssuerDirectory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = type metadata accessor for URL();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20TokenIssuerDirectoryV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML20TokenIssuerDirectoryV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for TokenIssuerDirectory();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL);
  v19 = v30;
  v20 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8CipherML8TokenKeyVGMd, &_sSay8CipherML8TokenKeyVGMR);
  v32 = 1;
  lazy protocol witness table accessor for type [TokenKey] and conformance <A> [A](&lazy protocol witness table cache variable for type [TokenKey] and conformance <A> [A], lazy protocol witness table accessor for type TokenKey and conformance TokenKey);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  outlined init with copy of TokenIssuerDirectory(v22, v26);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of TokenIssuerDirectory(v22);
}

uint64_t TokenIssuerDirectory.init(issuerRequestUri:tokenKeys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TokenIssuerDirectory();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

unint64_t specialized TokenKey.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenKey.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys);
  }

  return result;
}

uint64_t specialized TokenKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML8TokenKeyV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML8TokenKeyV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v24 = v12;
  v27 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v16;
  v23 = v15;
  v26 = 3;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  v22 = v23;
  *(a2 + 8) = v24;
  *(a2 + 16) = v14;
  *(a2 + 24) = v22;
  *(a2 + 32) = v25 & 1;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenKey and conformance TokenKey()
{
  result = lazy protocol witness table cache variable for type TokenKey and conformance TokenKey;
  if (!lazy protocol witness table cache variable for type TokenKey and conformance TokenKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey and conformance TokenKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenKey and conformance TokenKey;
  if (!lazy protocol witness table cache variable for type TokenKey and conformance TokenKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey and conformance TokenKey);
  }

  return result;
}

uint64_t _s10Foundation3URLVACSEAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TokenKey] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8CipherML8TokenKeyVGMd, &_sSay8CipherML8TokenKeyVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of TokenIssuerDirectory(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenIssuerDirectory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TokenIssuerDirectory(uint64_t a1)
{
  v2 = type metadata accessor for TokenIssuerDirectory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TokenKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for TokenIssuerDirectory()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [TokenKey]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [TokenKey]()
{
  if (!lazy cache variable for type metadata for [TokenKey])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TokenKey]);
    }
  }
}

uint64_t AspireSimilarityPlaintextPacking.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for AspireSimilarityPlaintextPacking(0) + 20);
  return UnknownStorage.init()();
}

uint64_t AspireSimilaritySimilarityMetric.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AspireSimilaritySimilarityMetric.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityMetric(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t AspireSimilarityPlaintextPacking.denseRow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a1, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

uint64_t _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t key path getter for AspireSimilarityPlaintextPacking.denseRow : AspireSimilarityPlaintextPacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v10 - v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

void (*AspireSimilarityPlaintextPacking.denseRow.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v11, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      return AspireSimilarityPlaintextPacking.denseRow.modify;
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  UnknownStorage.init()();
  return AspireSimilarityPlaintextPacking.denseRow.modify;
}

uint64_t outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AspireSimilarityPlaintextPacking.diagonal.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a1, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireSimilarityPlaintextPacking.diagonal : AspireSimilarityPlaintextPacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v10 - v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

void (*AspireSimilarityPlaintextPacking.diagonal.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireSimilarityPlaintextPacking.diagonal.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    goto LABEL_15;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v11, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
  return AspireSimilarityPlaintextPacking.diagonal.modify;
}

uint64_t outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AspireSimilarityPlaintextPacking.denseColumn.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a1, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireSimilarityPlaintextPacking.denseColumn : AspireSimilarityPlaintextPacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v10 - v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for AspireSimilarityPlaintextPacking.denseRow : AspireSimilarityPlaintextPacking(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v16 - v12;
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, &v16 - v12, a6);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v13, a2, a7);
  v14 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t AspireSimilarityPlaintextPacking.denseRow.setter(uint64_t a1, uint64_t (*a2)(void))
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v2, a2);
  v5 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*AspireSimilarityPlaintextPacking.denseColumn.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireSimilarityPlaintextPacking.denseColumn.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    goto LABEL_15;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v11, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
  return AspireSimilarityPlaintextPacking.denseColumn.modify;
}

void AspireSimilarityPlaintextPacking.denseRow.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[3], v10, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static AspireSimilarityPlaintextPackingDenseRow.== infix(_:_:)()
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t (*AspireSimilaritySerializedCiphertextMatrix.packing.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireSimilaritySerializedDcrtPlaintextMatrix.packing.modify;
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.packing.getter@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v16 - v8;
  v10 = a1(0, v7);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v10 + 32), v9, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v11 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v9, a2, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v13 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  v14 = a2 + *(v11 + 20);
  UnknownStorage.init()();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireSimilaritySerializedCiphertextMatrix.packing : AspireSimilaritySerializedCiphertextMatrix@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = a2(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v9 + 32), v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v10 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, a3, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v12 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  v13 = a3 + *(v10 + 20);
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySerializedCiphertextMatrix.packing : AspireSimilaritySerializedCiphertextMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v12, type metadata accessor for AspireSimilarityPlaintextPacking);
  v13 = *(a5(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v13, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v12, a2 + v13, type metadata accessor for AspireSimilarityPlaintextPacking);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.packing.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v2 + v4, type metadata accessor for AspireSimilarityPlaintextPacking);
  v5 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*AspireSimilaritySerializedDcrtPlaintextMatrix.packing.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireSimilaritySerializedDcrtPlaintextMatrix.packing.modify;
}

BOOL AspireSimilaritySerializedCiphertextMatrix.hasPacking.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v14 + 32), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, a1, a2);
  return v16;
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.clearPacking()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.init()@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = MEMORY[0x277D84F90];
  v3 = a1(0);
  v4 = &a2[*(v3 + 28)];
  UnknownStorage.init()();
  v5 = *(v3 + 32);
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t AspireSimilaritySimilarityClientConfig.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 40), v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v9 = a1 + *(v7 + 40);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySimilarityClientConfig.encryptionParameters : AspireSimilaritySimilarityClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v8, type metadata accessor for AspireHeEncryptionParameters);
  v9 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, a2 + v9, type metadata accessor for AspireHeEncryptionParameters);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.encryptionParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v1 + v3, type metadata accessor for AspireHeEncryptionParameters);
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireSimilaritySimilarityClientConfig.encryptionParameters.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    v17 = v14 + *(v9 + 40);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspireSimilaritySimilarityClientConfig.encryptionParameters.modify;
}

void AspireSimilaritySimilarityClientConfig.encryptionParameters.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[5], v4, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v4, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v5, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireSimilaritySimilarityClientConfig.hasEncryptionParameters.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 40), v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v6 = type metadata accessor for AspireHeEncryptionParameters(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireSimilaritySimilarityClientConfig.clearEncryptionParameters()()
{
  v1 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v2 = type metadata accessor for AspireHeEncryptionParameters(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireSimilaritySimilarityClientConfig.plaintextPacking.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 44), v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a1, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v10 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireSimilaritySimilarityClientConfig.plaintextPacking : AspireSimilaritySimilarityClientConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 44), v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v11 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySimilarityClientConfig.plaintextPacking : AspireSimilaritySimilarityClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v8, type metadata accessor for AspireSimilarityPlaintextPacking);
  v9 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, a2 + v9, type metadata accessor for AspireSimilarityPlaintextPacking);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.plaintextPacking.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v1 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AspireSimilaritySimilarityClientConfig.plaintextPacking.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 44);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireSimilaritySimilarityClientConfig.plaintextPacking.modify;
}

BOOL AspireSimilaritySimilarityClientConfig.hasPlaintextPacking.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 44), v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireSimilaritySimilarityClientConfig.clearPlaintextPacking()()
{
  v1 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v2 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireSimilaritySimilarityClientConfig.galoisElts.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void AspireSimilaritySimilarityClientConfig.similarityMetric.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AspireSimilaritySimilarityClientConfig.similarityMetric.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t AspireSimilaritySimilarityClientConfig.extraPlaintextModuli.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t AspireSimilaritySimilarityClientConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v2;
  v3 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v4 = a1 + v3[9];
  UnknownStorage.init()();
  v5 = v3[10];
  v6 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v3[11];
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t AspireSimilaritySimilarityServerConfig.clientConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v16 - v4;
  v6 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 24), v5, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v7 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, a1, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  }

  *a1 = 0;
  v9 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v9;
  v10 = a1 + v7[9];
  UnknownStorage.init()();
  v11 = v7[10];
  v12 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v7[11];
  v14 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySimilarityServerConfig.clientConfig : AspireSimilaritySimilarityServerConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v8, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  v9 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, a2 + v9, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireSimilaritySimilarityServerConfig.clientConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v1 + v3, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  v4 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireSimilaritySimilarityServerConfig.clientConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 16) = v17;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = v17;
    v18 = v14 + v9[9];
    UnknownStorage.init()();
    v19 = v9[10];
    v20 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v9[11];
    v22 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  }

  return AspireSimilaritySimilarityServerConfig.clientConfig.modify;
}

void AspireSimilaritySimilarityServerConfig.clientConfig.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[5], v4, type metadata accessor for AspireSimilaritySimilarityClientConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v4, v9 + v3, type metadata accessor for AspireSimilaritySimilarityClientConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v5, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, v9 + v3, type metadata accessor for AspireSimilaritySimilarityClientConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireSimilaritySimilarityServerConfig.hasClientConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 24), v4, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v6 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireSimilaritySimilarityServerConfig.clearClientConfig()()
{
  v1 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v2 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireSimilaritySimilarityServerConfig.dbPacking.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 28), v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a1, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v10 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireSimilaritySimilarityServerConfig.dbPacking : AspireSimilaritySimilarityServerConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 28), v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v11 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySimilarityServerConfig.dbPacking : AspireSimilaritySimilarityServerConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v8, type metadata accessor for AspireSimilarityPlaintextPacking);
  v9 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, a2 + v9, type metadata accessor for AspireSimilarityPlaintextPacking);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireSimilaritySimilarityServerConfig.dbPacking.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v1 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AspireSimilaritySimilarityServerConfig.dbPacking.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireSimilaritySerializedDcrtPlaintextMatrix.packing.modify;
}

void AspireSimilaritySerializedCiphertextMatrix.packing.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[5], v4, type metadata accessor for AspireSimilarityPlaintextPacking);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v4, v9 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v5, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, v9 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireSimilaritySimilarityServerConfig.hasDbPacking.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 28), v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireSimilaritySimilarityServerConfig.clearDbPacking()()
{
  v1 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v2 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireSimilaritySimilarityServerConfig.babyStep.getter()
{
  v1 = (v0 + *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t AspireSimilaritySimilarityServerConfig.babyStep.setter(int a1)
{
  result = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*AspireSimilaritySimilarityServerConfig.babyStep.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return AspireSimilaritySimilarityServerConfig.babyStep.modify;
}

uint64_t AspireSimilaritySimilarityServerConfig.babyStep.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall AspireSimilaritySimilarityServerConfig.clearBabyStep()()
{
  v1 = v0 + *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t AspireSimilarityPlaintextPacking.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireSimilarityPlaintextPacking.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireSimilaritySimilarityServerConfig.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v3 = &a1[v2[5]];
  UnknownStorage.init()();
  v4 = v2[6];
  v5 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  result = (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v9 = &a1[v2[8]];
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.entryIds.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 32), v6, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v8 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a1, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  *a1 = 0;
  v10 = &a1[v8[5]];
  UnknownStorage.init()();
  v11 = v8[6];
  v12 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v8[7];
  v14 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = &a1[v8[8]];
  *v15 = 0;
  v15[4] = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireSimilaritySerializedProcessedSimilarityDb.serverConfig : AspireSimilaritySerializedProcessedSimilarityDb@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 32), v7, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v9 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  *a2 = 0;
  v11 = &a2[v9[5]];
  UnknownStorage.init()();
  v12 = v9[6];
  v13 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = v9[7];
  v15 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  v16 = &a2[v9[8]];
  *v16 = 0;
  v16[4] = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySerializedProcessedSimilarityDb.serverConfig : AspireSimilaritySerializedProcessedSimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v8, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v9 = *(type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, a2 + v9, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v1 + v3, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v4 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = &v14[v9[5]];
    UnknownStorage.init()();
    v18 = v9[6];
    v19 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    v20 = v9[7];
    v21 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    v22 = &v14[v9[8]];
    *v22 = 0;
    v22[4] = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  return AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.modify;
}

void AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[5], v4, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v4, v9 + v3, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v5, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, v9 + v3, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v2;
  *(a1 + 2) = v2;
  v3 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  v4 = &a1[*(v3 + 28)];
  UnknownStorage.init()();
  v5 = *(v3 + 32);
  v6 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t AspireSimilaritySimilarityDbRow.entryMetadata.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t AspireSimilaritySimilarityDbRow.entryMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AspireSimilaritySimilarityDbRow.embedding.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t AspireSimilaritySimilarityDbRow.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  v1 = MEMORY[0x277D84F90];
  a1[2] = 0xC000000000000000;
  a1[3] = v1;
  v2 = a1 + *(type metadata accessor for AspireSimilaritySimilarityDbRow(0) + 28);
  return UnknownStorage.init()();
}

uint64_t AspireSimilaritySimilarityDb.rows.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AspireSimilaritySimilarityDb.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for AspireSimilaritySimilarityDb(0) + 20);
  return UnknownStorage.init()();
}

uint64_t AspireSimilarityPecPreprocessDbArgs.inputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.inputDatabase : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.inputDatabase : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  swift_beginAccess();
  v13 = v8[3];
  v8[2] = v4;
  v8[3] = v3;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.inputDatabase.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = v9[3];
  v9[2] = a1;
  v9[3] = a2;
}

void (*AspireSimilarityPecPreprocessDbArgs.inputDatabase.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.inputDatabase.modify;
}

void AspireSimilarityPecPreprocessDbArgs.inputDatabase.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = v10[3];
    v10[2] = v3;
    v10[3] = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = v21[3];
    v21[2] = v3;
    v21[3] = v5;
  }

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasInputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearInputDatabase()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = v5[3];
  v5[2] = 0;
  v5[3] = 0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.outputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.outputDatabase : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.outputDatabase : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  swift_beginAccess();
  v13 = v8[5];
  v8[4] = v4;
  v8[5] = v3;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.outputDatabase.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = v9[5];
  v9[4] = a1;
  v9[5] = a2;
}

void (*AspireSimilarityPecPreprocessDbArgs.outputDatabase.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 40))
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.outputDatabase.modify;
}

void AspireSimilarityPecPreprocessDbArgs.outputDatabase.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = v10[5];
    v10[4] = v3;
    v10[5] = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = v21[5];
    v21[4] = v3;
    v21[5] = v5;
  }

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasOutputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearOutputDatabase()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = v5[5];
  v5[4] = 0;
  v5[5] = 0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.outputServerConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 56))
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.outputServerConfig : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 56))
  {
    v4 = *(v3 + 48);
    v5 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.outputServerConfig : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  swift_beginAccess();
  v13 = v8[7];
  v8[6] = v4;
  v8[7] = v3;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.outputServerConfig.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = v9[7];
  v9[6] = a1;
  v9[7] = a2;
}

void (*AspireSimilarityPecPreprocessDbArgs.outputServerConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 56))
  {
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.outputServerConfig.modify;
}

void AspireSimilarityPecPreprocessDbArgs.outputServerConfig.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = v10[7];
    v10[6] = v3;
    v10[7] = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = v21[7];
    v21[6] = v3;
    v21[7] = v5;
  }

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasOutputServerConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 56) != 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearOutputServerConfig()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = v5[7];
  v5[6] = 0;
  v5[7] = 0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.inputServerConfig.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v8 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, a1, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  *a1 = 0;
  v10 = &a1[v8[5]];
  UnknownStorage.init()();
  v11 = v8[6];
  v12 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v8[7];
  v14 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = &a1[v8[8]];
  *v15 = 0;
  v15[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.inputServerConfig : AspireSimilarityPecPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v12, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v13 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v12, v7, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v21, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  return swift_endAccess();
}

uint64_t AspireSimilarityPecPreprocessDbArgs.inputServerConfig.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v7, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v16 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v17, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  return swift_endAccess();
}

void (*AspireSimilarityPecPreprocessDbArgs.inputServerConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v19 = &v14[v9[5]];
    UnknownStorage.init()();
    v20 = v9[6];
    v21 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    v22 = v9[7];
    v23 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v23 - 8) + 56))(&v14[v22], 1, 1, v23);
    v24 = &v14[v9[8]];
    *v24 = 0;
    v24[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  return AspireSimilarityPecPreprocessDbArgs.inputServerConfig.modify;
}

void AspireSimilarityPecPreprocessDbArgs.inputServerConfig.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(*(v2 + 120), *(v2 + 112), type metadata accessor for AspireSimilaritySimilarityServerConfig);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v15, v19, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v19, v7 + v20, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    swift_endAccess();
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v14, v19, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v19, v24 + v33, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasInputServerConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v6 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v5 + v6, v4, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v7 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  return v8;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearInputServerConfig()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v5, v9 + v15, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  swift_endAccess();
}

void (*AspireSimilarityPecPreprocessDbArgs.entryID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.entryID.modify;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.entryID.getter(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.entryID : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + *a2);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a3 = v5;
  a3[1] = v6;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.entryID : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  v10 = *(a2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v12);

    *(a2 + v9) = v16;
    v12 = v16;
  }

  v17 = (v12 + *a5);
  swift_beginAccess();
  v18 = v17[1];
  *v17 = v8;
  v17[1] = v7;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.entryID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v11);

    *(v5 + v8) = v15;
    v11 = v15;
  }

  v16 = (v11 + *a3);
  swift_beginAccess();
  v17 = v16[1];
  *v16 = a1;
  v16[1] = a2;
}

void (*AspireSimilarityPecPreprocessDbArgs.entryMetadataID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.entryMetadataID.modify;
}

void AspireSimilarityPecPreprocessDbArgs.entryID.modify(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    v9 = *(*a1 + 80);

    v10 = *(v8 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 96);
      v14 = *(v4 + 88);
      v15 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v12);

      *(v14 + v13) = v18;
      v12 = v18;
    }

    v19 = (v12 + *a3);
    swift_beginAccess();
    v20 = v19[1];
    *v19 = v5;
    v19[1] = v7;

    v21 = *(v4 + 80);
  }

  else
  {
    v22 = *(v8 + v6);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v6);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 96);
      v26 = *(v4 + 88);
      v27 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v31 = (v24 + *a3);
    swift_beginAccess();
    v32 = v31[1];
    *v31 = v5;
    v31[1] = v7;
  }

  free(v4);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasEntryID.getter(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + *a1;
  swift_beginAccess();
  return *(v2 + 8) != 0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.clearEntryID()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = (v7 + *a1);
  swift_beginAccess();
  v13 = v12[1];
  *v12 = 0;
  v12[1] = 0;
}

void (*AspireSimilarityPecPreprocessDbArgs.embeddingID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.embeddingID.modify;
}

void (*AspireSimilarityPecPreprocessDbArgs.shardID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.shardID.modify;
}

void (*AspireSimilarityPecPreprocessDbArgs.predefinedEncryptionParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.predefinedEncryptionParameters.modify;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.heScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  result = swift_beginAccess();
  if (*(v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.heScheme : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  result = swift_beginAccess();
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.heScheme : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  v13 = v8 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  result = swift_beginAccess();
  *v13 = v3;
  v13[8] = v4;
  v13[9] = 0;
  return result;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.heScheme.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(v2 + v5) = v12;
    v8 = v12;
  }

  v13 = v8 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  result = swift_beginAccess();
  *v13 = v3;
  v13[8] = v4;
  v13[9] = 0;
  return result;
}

void (*AspireSimilarityPecPreprocessDbArgs.heScheme.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  if (*(v6 + 9))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *v6;
    v8 = *(v6 + 8);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return AspireSimilarityPecPreprocessDbArgs.heScheme.modify;
}

void AspireSimilarityPecPreprocessDbArgs.heScheme.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    v11 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(v10 + v9) = v14;
    v8 = v14;
  }

  v15 = v8 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  *v15 = v2;
  v15[8] = v5;
  v15[9] = 0;

  free(v1);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasHeScheme.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  return (*(v1 + 9) & 1) == 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearHeScheme()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = v5 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  *v10 = 0;
  *(v10 + 4) = 256;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  v13 = *(v7 + v12);
  *(v7 + v12) = v3;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  v13 = *(v7 + v12);
  *(v7 + v12) = a1;
}

void (*AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.modify;
}

void AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    v17 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
    swift_beginAccess();
    v18 = *(v10 + v17);
    *(v10 + v17) = v3;

    v19 = *v4;
  }

  else
  {
    v20 = *(v6 + v5);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v5);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 88);
      v24 = *(v2 + 80);
      v25 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v22);

      *(v24 + v23) = v28;
      v22 = v28;
    }

    v29 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
    swift_beginAccess();
    v30 = *(v22 + v29);
    *(v22 + v29) = v3;
  }

  free(v2);
}

uint64_t AspireSimilarityPecPreprocessDbArgs.babyStep.getter()
{
  v1 = (*(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep);
  swift_beginAccess();
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.babyStep : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 4))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.babyStep : AspireSimilarityPecPreprocessDbArgs(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  result = swift_beginAccess();
  *v12 = v3;
  v12[4] = 0;
  return result;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.babyStep.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  result = swift_beginAccess();
  *v12 = a1;
  v12[4] = 0;
  return result;
}

void (*AspireSimilarityPecPreprocessDbArgs.babyStep.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return AspireSimilarityPecPreprocessDbArgs.babyStep.modify;
}

void AspireSimilarityPecPreprocessDbArgs.babyStep.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = v7 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  *v14 = v2;
  v14[4] = 0;

  free(v1);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasBabyStep.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearBabyStep()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = v5 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  *v10 = 0;
  v10[4] = 1;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.parallel.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.parallel : AspireSimilarityPecPreprocessDbArgs(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  result = swift_beginAccess();
  *(v7 + v12) = v3;
  return result;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.parallel.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  result = swift_beginAccess();
  *(v7 + v12) = a1 & 1;
  return result;
}

void (*AspireSimilarityPecPreprocessDbArgs.parallel.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return AspireSimilarityPecPreprocessDbArgs.parallel.modify;
}

void AspireSimilarityPecPreprocessDbArgs.parallel.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  *(v7 + v14) = v4;

  free(v1);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasParallel.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearParallel()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  *(v5 + v10) = 2;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static AspireSimilarityPecPreprocessDbArgs._StorageClass.defaultInstance;
}

uint64_t AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v14, v22, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v22, v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      v34 = v49;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
      v36 = v44;
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v19, v44, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v36, v29, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
  }

  else
  {
    v40 = v45;
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v37, v45, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v40, v41, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}