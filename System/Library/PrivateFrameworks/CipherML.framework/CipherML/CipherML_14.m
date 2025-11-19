void AspirePirPirParameters.vectorizedPirInternalBatchingSize.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v13 = v7 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  *v13 = v2;
  *(v13 + 8) = 0;

  free(v1);
}

BOOL AspirePirPirParameters.hasVectorizedPirInternalBatchingSize.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  return (*(v1 + 8) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirParameters.clearVectorizedPirInternalBatchingSize()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = AspirePirPirParameters._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v5;
  }

  v9 = v5 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  *v9 = 0;
  *(v9 + 8) = 1;
}

uint64_t AspirePirPirParameters.batchPirParams.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v8 = type metadata accessor for AspirePirBatchPirParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspirePirBatchPirParameters);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = 0;
  v10 = a1 + *(v8 + 32);
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirParameters.batchPirParams : AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AspirePirBatchPirParameters(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v12, type metadata accessor for AspirePirBatchPirParameters);
  v13 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = AspirePirPirParameters._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of AspirePirPIRShardingFunction(v12, v7, type metadata accessor for AspirePirBatchPirParameters);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v20, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.batchPirParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspirePirPirParameters._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of AspirePirPIRShardingFunction(a1, v7, type metadata accessor for AspirePirBatchPirParameters);
  v15 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v16, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return swift_endAccess();
}

void (*AspirePirPirParameters.batchPirParams.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirBatchPirParameters(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
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
  v15 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x277D84F90];
    v14[3] = 0;
    v19 = v14 + *(v9 + 32);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirBatchPirParameters);
  }

  return AspirePirPirParameters.batchPirParams.modify;
}

void AspirePirPirParameters.batchPirParams.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v2 + 120), *(v2 + 112), type metadata accessor for AspirePirBatchPirParameters);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v14, v18, type metadata accessor for AspirePirBatchPirParameters);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v7 + v19, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspirePirBatchPirParameters);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = AspirePirPirParameters._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v13, v18, type metadata accessor for AspirePirBatchPirParameters);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v23 + v31, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t AspirePirCuckooTableConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspirePirCuckooTableConfig(0) + 44);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspirePirCuckooTableConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirCuckooTableConfig(0) + 44);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspirePirCuckooTableConfig.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for AspirePirCuckooTableConfig(0);
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 26) = 0u;
  v3 = a1 + *(v2 + 44);
  return UnknownStorage.init()();
}

uint64_t AspirePirBatchKeywordPirConfig.cuckooConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 40), v6, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v8 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirCuckooTableConfig);
  }

  *(a1 + 26) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v10 = a1 + *(v8 + 44);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  return result;
}

uint64_t key path getter for AspirePirBatchKeywordPirConfig.cuckooConfig : AspirePirBatchKeywordPirConfig@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 40), v7, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v9 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirCuckooTableConfig);
  }

  *(a2 + 26) = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v11 = a2 + *(v9 + 44);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirBatchKeywordPirConfig.cuckooConfig : AspirePirBatchKeywordPirConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v8, type metadata accessor for AspirePirCuckooTableConfig);
  v9 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v8, a2 + v9, type metadata accessor for AspirePirCuckooTableConfig);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspirePirBatchKeywordPirConfig.cuckooConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1 + v3, type metadata accessor for AspirePirCuckooTableConfig);
  v4 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspirePirBatchKeywordPirConfig.cuckooConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirCuckooTableConfig(0);
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
  v15 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *(v14 + 26) = 0u;
    *v14 = 0u;
    v14[1] = 0u;
    v17 = v14 + *(v9 + 44);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirCuckooTableConfig);
  }

  return AspirePirBatchKeywordPirConfig.cuckooConfig.modify;
}

void AspirePirBatchKeywordPirConfig.cuckooConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[5], v4, type metadata accessor for AspirePirCuckooTableConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v4, v9 + v3, type metadata accessor for AspirePirCuckooTableConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v5, type metadata accessor for AspirePirCuckooTableConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v9 + v3, type metadata accessor for AspirePirCuckooTableConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspirePirBatchKeywordPirConfig.hasCuckooConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 40), v4, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v6 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  return v7;
}

Swift::Void __swiftcall AspirePirBatchKeywordPirConfig.clearCuckooConfig()()
{
  v1 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v2 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspirePirBatchKeywordPirConfig.targetVpirInternalBatchSize.getter()
{
  v1 = (v0 + *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 44));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t AspirePirBatchKeywordPirConfig.targetVpirInternalBatchSize.setter(uint64_t a1)
{
  result = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*AspirePirBatchKeywordPirConfig.targetVpirInternalBatchSize.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 44);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.modify;
}

Swift::Void __swiftcall AspirePirBatchKeywordPirConfig.clearTargetVpirInternalBatchSize()()
{
  v1 = v0 + *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t AspirePirBatchKeywordPirConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspirePirBatchKeywordPirConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspirePirBatchKeywordPirConfig.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = a1 + v2[9];
  UnknownStorage.init()();
  v4 = v2[10];
  v5 = type metadata accessor for AspirePirCuckooTableConfig(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = a1 + v2[11];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t AspirePirBatchPirParameters.batchPirTableSize.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AspirePirBatchPirParameters.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspirePirBatchPirParameters(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspirePirBatchPirParameters.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirBatchPirParameters(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t key path getter for AspirePirKeywordPirParameters.symmetricPirClientConfig : AspirePirKeywordPirParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 28), v7, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v9 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  *a2 = xmmword_225022910;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirKeywordPirParameters.symmetricPirClientConfig : AspirePirKeywordPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v8, type metadata accessor for AspirePirSymmetricPirClientConfig);
  v9 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v8, a2 + v9, type metadata accessor for AspirePirSymmetricPirClientConfig);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspirePirKeywordPirParameters.symmetricPirClientConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1 + v3, type metadata accessor for AspirePirSymmetricPirClientConfig);
  v4 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspirePirSymmetricPirClientConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_225022910;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for AspirePirSymmetricPirClientConfig(0) + 24);
  return UnknownStorage.init()();
}

void (*AspirePirKeywordPirParameters.symmetricPirClientConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
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
  v15 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_225022910;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  return AspirePirKeywordPirParameters.symmetricPirClientConfig.modify;
}

void AspirePirKeywordPirParameters.symmetricPirClientConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[5], v4, type metadata accessor for AspirePirSymmetricPirClientConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v4, v9 + v3, type metadata accessor for AspirePirSymmetricPirClientConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v5, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v9 + v3, type metadata accessor for AspirePirSymmetricPirClientConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall AspirePirKeywordPirParameters.clearSymmetricPirClientConfig()()
{
  v1 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v2 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t key path getter for AspirePirKeywordPirParameters.shardingFunction : AspirePirKeywordPirParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 32), v7, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v9 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirPIRShardingFunction);
  }

  v11 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirKeywordPirParameters.shardingFunction : AspirePirKeywordPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v8, type metadata accessor for AspirePirPIRShardingFunction);
  v9 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v8, a2 + v9, type metadata accessor for AspirePirPIRShardingFunction);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspirePirKeywordPirParameters.shardingFunction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1 + v3, type metadata accessor for AspirePirPIRShardingFunction);
  v4 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with take of AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*AspirePirKeywordPirParameters.shardingFunction.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirPIRShardingFunction(0);
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
  v15 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirPIRShardingFunction);
  }

  return AspirePirKeywordPirParameters.shardingFunction.modify;
}

void AspirePirKeywordPirParameters.shardingFunction.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[5], v4, type metadata accessor for AspirePirPIRShardingFunction);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v4, v9 + v3, type metadata accessor for AspirePirPIRShardingFunction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v5, type metadata accessor for AspirePirPIRShardingFunction);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v9 + v3, type metadata accessor for AspirePirPIRShardingFunction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall AspirePirKeywordPirParameters.clearShardingFunction()()
{
  v1 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v2 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspirePirPIRShardingFunction.sha256.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v6, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v8 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    return UnknownStorage.init()();
  }

  return outlined init with take of AspirePirPIRShardingFunction(v7, a1, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
}

uint64_t key path getter for AspirePirPIRShardingFunction.sha256 : AspirePirPIRShardingFunction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v10 - v6, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v8 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    return UnknownStorage.init()();
  }

  return outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
}

uint64_t key path setter for AspirePirPIRShardingFunction.sha256 : AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunctionSHA256(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v7, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  v8 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspirePirPIRShardingFunction.sha256.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  v3 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspirePirPIRShardingFunction.sha256.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspirePirPIRShardingFunctionSHA256(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v12 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(v8, v11, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      return AspirePirPIRShardingFunction.sha256.modify;
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  }

  UnknownStorage.init()();
  return AspirePirPIRShardingFunction.sha256.modify;
}

void AspirePirPIRShardingFunction.sha256.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v5, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v8, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v8, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspirePirPIRShardingFunction.doubleMod.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v11 - v6, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v8 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v7, a1, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspirePirPIRShardingFunction.doubleMod : AspirePirPIRShardingFunction@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v11 - v6, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v8 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspirePirPIRShardingFunction.doubleMod : AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v7, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  v8 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspirePirPIRShardingFunction.doubleMod.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  v3 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspirePirPIRShardingFunctionDoubleMod.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0) + 20);
  return UnknownStorage.init()();
}

void (*AspirePirPIRShardingFunction.doubleMod.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v13 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return AspirePirPIRShardingFunction.doubleMod.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    goto LABEL_15;
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v12, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  return AspirePirPIRShardingFunction.doubleMod.modify;
}

void AspirePirPIRShardingFunction.doubleMod.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v5, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v8, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v8, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AspirePirPIRShardingFunctionSHA256.== infix(_:_:)()
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static AspirePirPIRShardingFunctionDoubleMod.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirPIRShardingFunction.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspirePirPIRShardingFunction.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspirePirEncryptedIndices.ciphertexts.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AspirePirKeywordPirParameters.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspirePirKeywordPirParameters.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspirePirSerializedKeywordDbRow.value.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t AspirePirSerializedKeywordDbRow.value.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*AspirePirSerializedKeywordDbRow.shardID.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for AspirePirSerializedKeywordDbRow(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return AspireApiPIRShardConfig.shardID.modify;
}

uint64_t AspirePirSerializedKeywordDbRow.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_225022910;
  a1[1] = xmmword_225022910;
  v2 = type metadata accessor for AspirePirSerializedKeywordDbRow(0);
  v3 = a1 + *(v2 + 24);
  result = UnknownStorage.init()();
  v5 = (a1 + *(v2 + 28));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t AspirePirSerializedKeywordDb.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for AspirePirSerializedKeywordDb(0) + 20);
  return UnknownStorage.init()();
}

uint64_t AspirePirPirPreprocessDbArgs.inputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
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

uint64_t key path getter for AspirePirPirPreprocessDbArgs.inputDatabase : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
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

uint64_t key path setter for AspirePirPirPreprocessDbArgs.inputDatabase : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 24);
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.inputDatabase.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 24);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
}

void (*AspirePirPirPreprocessDbArgs.inputDatabase.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
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

  return AspirePirPirPreprocessDbArgs.inputDatabase.modify;
}

void AspirePirPirPreprocessDbArgs.inputDatabase.modify(uint64_t *a1, char a2)
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
      v13 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 24);
    *(v10 + 16) = v3;
    *(v10 + 24) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 24);
    *(v20 + 16) = v3;
    *(v20 + 24) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasInputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearInputDatabase()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  v8 = *(v4 + 24);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.valuesProtoPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
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

uint64_t key path getter for AspirePirPirPreprocessDbArgs.valuesProtoPath : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
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

uint64_t key path setter for AspirePirPirPreprocessDbArgs.valuesProtoPath : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 40);
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.valuesProtoPath.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 40);
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
}

void (*AspirePirPirPreprocessDbArgs.valuesProtoPath.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
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

  return AspirePirPirPreprocessDbArgs.valuesProtoPath.modify;
}

void AspirePirPirPreprocessDbArgs.valuesProtoPath.modify(uint64_t *a1, char a2)
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
      v13 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 40);
    *(v10 + 32) = v3;
    *(v10 + 40) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 40);
    *(v20 + 32) = v3;
    *(v20 + 40) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasValuesProtoPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearValuesProtoPath()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  v8 = *(v4 + 40);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  if (*(v3 + 57))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.algorithm : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 57);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.algorithm : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 48) = v3;
  *(v8 + 56) = v4;
  *(v8 + 57) = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.algorithm.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 48) = v3;
  *(v8 + 56) = v4;
  *(v8 + 57) = 0;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.algorithm.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 57))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return AspirePirPirPreprocessDbArgs.algorithm.modify;
}

void AspirePirPirPreprocessDbArgs.algorithm.modify(uint64_t *a1)
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
    v11 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 48) = v2;
  *(v8 + 56) = v5;
  *(v8 + 57) = 0;

  free(v1);
}

BOOL AspirePirPirPreprocessDbArgs.hasAlgorithm.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return (*(v1 + 57) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearAlgorithm()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 56) = 256;
}

uint64_t AspirePirPirPreprocessDbArgs.sharding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v3 + 80);
  *(a1 + 16) = v6;

  return outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v4, v5, v6);
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.sharding : AspirePirPirPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v3, v4, v5);
  v7 = *(a2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(a2 + v6) = v9;
  }

  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  v15 = *(v9 + 80);
  *(v9 + 80) = v5;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v13, v14, v15);
}

uint64_t AspirePirPirPreprocessDbArgs.sharding.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v2 + v6) = v9;
  }

  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  v15 = *(v9 + 80);
  *(v9 + 80) = v5;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v13, v14, v15);
}

uint64_t (*AspirePirPirPreprocessDbArgs.sharding.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(a1 + 20) = v3;
  v4 = *(v1 + v3);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  v7 = *(v4 + 80);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v5, v6, v7);
  return AspirePirPirPreprocessDbArgs.sharding.modify;
}

uint64_t AspirePirPirPreprocessDbArgs.sharding.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  if (a2)
  {
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(*a1, v2, v4);
    v7 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
      *(v6 + v5) = v9;
    }

    v13 = *(v9 + 64);
    v14 = *(v9 + 72);
    *(v9 + 64) = v3;
    *(v9 + 72) = v2;
    v15 = *(v9 + 80);
    *(v9 + 80) = v4;
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v13, v14, v15);
    v16 = v3;
    v17 = v2;
    v18 = v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v21 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v21);
      *(v6 + v5) = v21;
    }

    v16 = *(v21 + 64);
    v17 = *(v21 + 72);
    *(v21 + 64) = v3;
    *(v21 + 72) = v2;
    v18 = *(v21 + 80);
    *(v21 + 80) = v4;
  }

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v16, v17, v18);
}

uint64_t AspirePirPirPreprocessDbArgs.numShards.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  if (*(v1 + 80))
  {
    return 0;
  }

  v2 = *(v1 + 64);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, *(v1 + 72), 0);
  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.numShards : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for AspirePirPirPreprocessDbArgs(0);
  v5 = *(a1 + *(result + 20));
  if (*(v5 + 80))
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = *(v5 + 64);
    result = outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v6, *(v5 + 72), 0);
  }

  *a2 = v6;
  return result;
}

uint64_t (*AspirePirPirPreprocessDbArgs.numShards.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(a1 + 12) = v3;
  v4 = *(v1 + v3);
  if (*(v4 + 80))
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = *(v4 + 64);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, *(v4 + 72), 0);
  }

  *(a1 + 8) = v5;
  return AspirePirPirPreprocessDbArgs.numShards.modify;
}

uint64_t AspirePirPirPreprocessDbArgs.numEntriesPerShard.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  if (*(v1 + 80) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 64);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, *(v1 + 72), 1);
  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.numEntriesPerShard : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for AspirePirPirPreprocessDbArgs(0);
  v5 = *(a1 + *(result + 20));
  if (*(v5 + 80) == 1)
  {
    v6 = *(v5 + 64);
    result = outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v6, *(v5 + 72), 1);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.numShards : AspirePirPirPreprocessDbArgs(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v11);
    *(a2 + v8) = v11;
  }

  v15 = *(v11 + 64);
  v16 = *(v11 + 72);
  *(v11 + 64) = v7;
  *(v11 + 72) = 0;
  v17 = *(v11 + 80);
  *(v11 + 80) = a5;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v15, v16, v17);
}

uint64_t AspirePirPirPreprocessDbArgs.numShards.setter(unsigned int a1, char a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v4 + v6) = v9;
  }

  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 64) = a1;
  *(v9 + 72) = 0;
  v15 = *(v9 + 80);
  *(v9 + 80) = a2;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v13, v14, v15);
}

uint64_t (*AspirePirPirPreprocessDbArgs.numEntriesPerShard.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(a1 + 12) = v3;
  v4 = *(v1 + v3);
  if (*(v4 + 80) == 1)
  {
    v5 = *(v4 + 64);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, *(v4 + 72), 1);
  }

  else
  {
    LODWORD(v5) = 0;
  }

  *(a1 + 8) = v5;
  return AspirePirPirPreprocessDbArgs.numEntriesPerShard.modify;
}

uint64_t AspirePirPirPreprocessDbArgs.numShards.modify(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 3);
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *(*a1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v5 + v4) = v9;
  }

  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 64) = v6;
  *(v9 + 72) = 0;
  v15 = *(v9 + 80);
  *(v9 + 80) = a3;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v13, v14, v15);
}

uint64_t AspirePirPirPreprocessDbArgs.shardID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  if (*(v1 + 80) != 2)
  {
    return 0;
  }

  v2 = *(v1 + 64);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, *(v1 + 72), 2);
  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.shardID : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = type metadata accessor for AspirePirPirPreprocessDbArgs(0);
  v5 = *(a1 + *(result + 20));
  if (*(v5 + 80) == 2)
  {
    v7 = *(v5 + 64);
    v6 = *(v5 + 72);
    result = outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v7, v6, 2);
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.shardID : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  v12 = *(v8 + 64);
  v13 = *(v8 + 72);
  *(v8 + 64) = v4;
  *(v8 + 72) = v3;
  v14 = *(v8 + 80);
  *(v8 + 80) = 2;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v12, v13, v14);
}

uint64_t AspirePirPirPreprocessDbArgs.shardID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 64) = a1;
  *(v9 + 72) = a2;
  v15 = *(v9 + 80);
  *(v9 + 80) = 2;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v13, v14, v15);
}

uint64_t (*AspirePirPirPreprocessDbArgs.shardID.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  if (*(v4 + 80) == 2)
  {
    v6 = *(v4 + 64);
    v5 = *(v4 + 72);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v6, v5, 2);
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  return AspirePirPirPreprocessDbArgs.shardID.modify;
}

uint64_t AspirePirPirPreprocessDbArgs.shardID.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 6);
  v5 = a1[2];
  if (a2)
  {
    v6 = a1[1];

    v7 = *(v5 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
      *(v5 + v4) = v9;
    }

    v13 = *(v9 + 64);
    v14 = *(v9 + 72);
    *(v9 + 64) = v3;
    *(v9 + 72) = v2;
    v15 = *(v9 + 80);
    *(v9 + 80) = 2;
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v13, v14, v15);
  }

  else
  {
    v17 = *(v5 + v4);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v5 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v19 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v19);
      *(v5 + v4) = v19;
    }

    v23 = *(v19 + 64);
    v24 = *(v19 + 72);
    *(v19 + 64) = v3;
    *(v19 + 72) = v2;
    v25 = *(v19 + 80);
    *(v19 + 80) = 2;

    return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v23, v24, v25);
  }
}

uint64_t AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 96))
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 96))
  {
    v4 = *(v3 + 88);
    v5 = *(v3 + 96);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 96);
  *(v8 + 88) = v4;
  *(v8 + 96) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 96);
  *(v9 + 88) = a1;
  *(v9 + 96) = a2;
}

void (*AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 96))
  {
    v7 = *(v6 + 88);
    v8 = *(v6 + 96);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.modify;
}

void AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.modify(uint64_t *a1, char a2)
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
      v13 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 96);
    *(v10 + 88) = v3;
    *(v10 + 96) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 96);
    *(v20 + 88) = v3;
    *(v20 + 96) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasPredefinedEncryptionParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 96) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearPredefinedEncryptionParameters()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  v8 = *(v4 + 96);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.heScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  if (*(v3 + 113))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *(v3 + 104);
    v6 = *(v3 + 112);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.heScheme : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 113);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.heScheme : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 104) = v3;
  *(v8 + 112) = v4;
  *(v8 + 113) = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.heScheme.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 104) = v3;
  *(v8 + 112) = v4;
  *(v8 + 113) = 0;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.heScheme.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 113))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *(v6 + 104);
    v8 = *(v6 + 112);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return AspirePirPirPreprocessDbArgs.heScheme.modify;
}

void AspirePirPirPreprocessDbArgs.heScheme.modify(uint64_t *a1)
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
    v11 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 104) = v2;
  *(v8 + 112) = v5;
  *(v8 + 113) = 0;

  free(v1);
}

BOOL AspirePirPirPreprocessDbArgs.hasHeScheme.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return (*(v1 + 113) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearHeScheme()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 104) = 0;
  *(v4 + 112) = 256;
}

uint64_t AspirePirPirPreprocessDbArgs.outputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 128))
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.outputDatabase : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 128))
  {
    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.outputDatabase : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 128);
  *(v8 + 120) = v4;
  *(v8 + 128) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.outputDatabase.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 128);
  *(v9 + 120) = a1;
  *(v9 + 128) = a2;
}

void (*AspirePirPirPreprocessDbArgs.outputDatabase.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 128))
  {
    v7 = *(v6 + 120);
    v8 = *(v6 + 128);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspirePirPirPreprocessDbArgs.outputDatabase.modify;
}

void AspirePirPirPreprocessDbArgs.outputDatabase.modify(uint64_t *a1, char a2)
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
      v13 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 128);
    *(v10 + 120) = v3;
    *(v10 + 128) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 128);
    *(v20 + 120) = v3;
    *(v20 + 128) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasOutputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 128) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearOutputDatabase()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  v8 = *(v4 + 128);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.outputPirParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 144))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.outputPirParameters : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 144))
  {
    v4 = *(v3 + 136);
    v5 = *(v3 + 144);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.outputPirParameters : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 144);
  *(v8 + 136) = v4;
  *(v8 + 144) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.outputPirParameters.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 144);
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
}

void (*AspirePirPirPreprocessDbArgs.outputPirParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 144))
  {
    v7 = *(v6 + 136);
    v8 = *(v6 + 144);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspirePirPirPreprocessDbArgs.outputPirParameters.modify;
}

void AspirePirPirPreprocessDbArgs.outputPirParameters.modify(uint64_t *a1, char a2)
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
      v13 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 144);
    *(v10 + 136) = v3;
    *(v10 + 144) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 144);
    *(v20 + 136) = v3;
    *(v20 + 144) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasOutputPirParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 144) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearOutputPirParameters()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  v8 = *(v4 + 144);
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.outputKeyConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 160))
  {
    v2 = *(v1 + 152);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.outputKeyConfig : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 160))
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 160);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.outputKeyConfig : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 160);
  *(v8 + 152) = v4;
  *(v8 + 160) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.outputKeyConfig.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 160);
  *(v9 + 152) = a1;
  *(v9 + 160) = a2;
}

void (*AspirePirPirPreprocessDbArgs.outputKeyConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 160))
  {
    v7 = *(v6 + 152);
    v8 = *(v6 + 160);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspirePirPirPreprocessDbArgs.outputKeyConfig.modify;
}

void AspirePirPirPreprocessDbArgs.outputKeyConfig.modify(uint64_t *a1, char a2)
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
      v13 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 160);
    *(v10 + 152) = v3;
    *(v10 + 160) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 160);
    *(v20 + 152) = v3;
    *(v20 + 160) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasOutputKeyConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 160) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearOutputKeyConfig()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  v8 = *(v4 + 160);
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.keyCompressionStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  if (*(v3 + 177))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *(v3 + 168);
    v6 = *(v3 + 176);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.keyCompressionStrategy : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 168);
  v6 = *(v3 + 176);
  v7 = *(v3 + 177);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.keyCompressionStrategy : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 168) = v3;
  *(v8 + 176) = v4;
  *(v8 + 177) = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.keyCompressionStrategy.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 168) = v3;
  *(v8 + 176) = v4;
  *(v8 + 177) = 0;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.keyCompressionStrategy.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 177))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *(v6 + 168);
    v8 = *(v6 + 176);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return AspirePirPirPreprocessDbArgs.keyCompressionStrategy.modify;
}

void AspirePirPirPreprocessDbArgs.keyCompressionStrategy.modify(uint64_t *a1)
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
    v11 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 168) = v2;
  *(v8 + 176) = v5;
  *(v8 + 177) = 0;

  free(v1);
}

BOOL AspirePirPirPreprocessDbArgs.hasKeyCompressionStrategy.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return (*(v1 + 177) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearKeyCompressionStrategy()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 168) = 0;
  *(v4 + 176) = 256;
}

uint64_t AspirePirPirPreprocessDbArgs.splitLargeEntry.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 178) & 1;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.splitLargeEntry : AspirePirPirPreprocessDbArgs(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 178) = v3;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.splitLargeEntry.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 178) = a1 & 1;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.splitLargeEntry.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 178) & 1;
  return AspirePirPirPreprocessDbArgs.splitLargeEntry.modify;
}

void AspirePirPirPreprocessDbArgs.splitLargeEntry.modify(uint64_t *a1)
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
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 178) = v4;

  free(v1);
}

BOOL AspirePirPirPreprocessDbArgs.hasSplitLargeEntry.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 178) != 2;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearSplitLargeEntry()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 178) = 2;
}

uint64_t AspirePirPirPreprocessDbArgs.skipLargeEntrySize.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 184))
  {
    return 0;
  }

  else
  {
    return *(v1 + 180);
  }
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.skipLargeEntrySize : AspirePirPirPreprocessDbArgs(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 180) = v3;
  *(v7 + 184) = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.skipLargeEntrySize.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 180) = a1;
  *(v7 + 184) = 0;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.skipLargeEntrySize.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 180);
  if (*(v6 + 184))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return AspirePirPirPreprocessDbArgs.skipLargeEntrySize.modify;
}

void AspirePirPirPreprocessDbArgs.skipLargeEntrySize.modify(uint64_t *a1)
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
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 180) = v2;
  *(v7 + 184) = 0;

  free(v1);
}

BOOL AspirePirPirPreprocessDbArgs.hasSkipLargeEntrySize.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return (*(v1 + 184) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearSkipLargeEntrySize()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 180) = 0;
  *(v4 + 184) = 1;
}

uint64_t AspirePirPirPreprocessDbArgs.unevenDimensions.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 185) & 1;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.unevenDimensions : AspirePirPirPreprocessDbArgs(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 185) = v3;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.unevenDimensions.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 185) = a1 & 1;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.unevenDimensions.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 185) & 1;
  return AspirePirPirPreprocessDbArgs.unevenDimensions.modify;
}

void AspirePirPirPreprocessDbArgs.unevenDimensions.modify(uint64_t *a1)
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
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 185) = v4;

  free(v1);
}

BOOL AspirePirPirPreprocessDbArgs.hasUnevenDimensions.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 185) != 2;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearUnevenDimensions()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 185) = 2;
}

uint64_t AspirePirPirPreprocessDbArgs.noValidate.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 186) & 1;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.noValidate : AspirePirPirPreprocessDbArgs(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 186) = v3;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.noValidate.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 186) = a1 & 1;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.noValidate.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 186) & 1;
  return AspirePirPirPreprocessDbArgs.noValidate.modify;
}

void AspirePirPirPreprocessDbArgs.noValidate.modify(uint64_t *a1)
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
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 186) = v4;

  free(v1);
}

BOOL AspirePirPirPreprocessDbArgs.hasNoValidate.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 186) != 2;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearNoValidate()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 186) = 2;
}

uint64_t AspirePirPirPreprocessDbArgs.command.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  v8 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v7 + v8, v6, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v9 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirPirPreprocessDbCommand);
  }

  v11 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  v12 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  }

  return result;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.command : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  v9 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v8 + v9, v7, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v10 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirPirPreprocessDbCommand);
  }

  v12 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  v13 = a2 + *(v10 + 20);
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.command : AspirePirPirPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v12, type metadata accessor for AspirePirPirPreprocessDbCommand);
  v13 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of AspirePirPIRShardingFunction(v12, v7, type metadata accessor for AspirePirPirPreprocessDbCommand);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v20, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirPreprocessDbArgs.command.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of AspirePirPIRShardingFunction(a1, v7, type metadata accessor for AspirePirPirPreprocessDbCommand);
  v15 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v16, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPIRShardingFunction.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return UnknownStorage.init()();
}

void (*AspirePirPirPreprocessDbArgs.command.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
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
  v15 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    v20 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirPirPreprocessDbCommand);
  }

  return AspirePirPirPreprocessDbArgs.command.modify;
}

void AspirePirPirPreprocessDbArgs.command.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v2 + 120), *(v2 + 112), type metadata accessor for AspirePirPirPreprocessDbCommand);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v14, v18, type metadata accessor for AspirePirPirPreprocessDbCommand);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v7 + v19, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspirePirPirPreprocessDbCommand);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v13, v18, type metadata accessor for AspirePirPirPreprocessDbCommand);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v23 + v31, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasCommand.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  v6 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v5 + v6, v4, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return v8;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearCommand()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v5, v9 + v14, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  swift_endAccess();
}

uint64_t AspirePirPirParameters.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t AspirePirPirPreprocessDbCommand.keyword.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v14 - v5, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
LABEL_5:
    v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v9 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
    v10 = a1 + v9[5];
    result = UnknownStorage.init()();
    v12 = (a1 + v9[6]);
    *v12 = 0;
    v12[1] = 0;
    v13 = (a1 + v9[7]);
    *v13 = 0;
    v13[1] = 0;
    return result;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    goto LABEL_5;
  }

  return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.keyword : AspirePirPirPreprocessDbCommand(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v7, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspirePirPirPreprocessDbCommand.keyword.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v4 = a1 + v3[5];
  result = UnknownStorage.init()();
  v6 = (a1 + v3[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v3[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

void (*AspirePirPirPreprocessDbCommand.keyword.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v14 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(v9, v13, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      return AspirePirPirPreprocessDbCommand.keyword.modify;
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v9, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  }

  v16 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = v13 + v10[5];
  UnknownStorage.init()();
  v18 = (v13 + v10[6]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v13 + v10[7]);
  *v19 = 0;
  v19[1] = 0;
  return AspirePirPirPreprocessDbCommand.keyword.modify;
}

void AspirePirPirPreprocessDbCommand.keyword.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v5, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspirePirPirPreprocessDbCommand.index.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v11 - v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v7, a1, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspirePirPirPreprocessDbCommand.index : AspirePirPirPreprocessDbCommand@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v11 - v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.index : AspirePirPirPreprocessDbCommand(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v7, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspirePirPirPreprocessDbCommand.index.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspirePirPirPreprocessDbCommand.Index.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0) + 24);
  return UnknownStorage.init()();
}

void (*AspirePirPirPreprocessDbCommand.index.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return AspirePirPirPreprocessDbCommand.index.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    goto LABEL_15;
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v12, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  return AspirePirPirPreprocessDbCommand.index.modify;
}

void AspirePirPirPreprocessDbCommand.index.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v5, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AspirePirPirPreprocessDbCommand.Index.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.keyword.getter()
{
  v1 = (v0 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbCommand.Keyword.keyword : AspirePirPirPreprocessDbCommand.Keyword@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.Keyword.keyword : AspirePirPirPreprocessDbCommand.Keyword(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.keyword.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*AspirePirPirPreprocessDbCommand.Keyword.keyword.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return AspireApiPIRShardConfig.shardID.modify;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbCommand.Keyword.clearKeyword()()
{
  v1 = (v0 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t AspirePirSerializedKeywordDbRow.shardID.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for AspirePirSerializedKeywordDbRow.shardID : AspirePirSerializedKeywordDbRow@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for AspirePirSerializedKeywordDbRow.shardID : AspirePirSerializedKeywordDbRow(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AspirePirSerializedKeywordDbRow.shardID.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*AspirePirPirPreprocessDbCommand.Keyword.value.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return AspireApiPIRRequest.shardID.modify;
}

uint64_t AspirePirSerializedKeywordDbRow.clearShardID()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v11 - v5, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
LABEL_5:
    v8 = type metadata accessor for AspirePirCuckooTableConfig(0);
    *a1 = 0u;
    a1[1] = 0u;
    *(a1 + 26) = 0u;
    v9 = a1 + *(v8 + 44);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    goto LABEL_5;
  }

  return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirCuckooTableConfig);
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig : AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v7, type metadata accessor for AspirePirCuckooTableConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirCuckooTableConfig);
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirCuckooTableConfig);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(v8, v12, type metadata accessor for AspirePirCuckooTableConfig);
      return AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.modify;
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  }

  *(v12 + 26) = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  v15 = v12 + *(v9 + 44);
  UnknownStorage.init()();
  return AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.modify;
}

void AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v5, type metadata accessor for AspirePirCuckooTableConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v8, type metadata accessor for AspirePirCuckooTableConfig);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirCuckooTableConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v8, type metadata accessor for AspirePirCuckooTableConfig);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v14 - v5, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirBatchKeywordPirConfig);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  }

  v9 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v10 = a1 + v9[9];
  UnknownStorage.init()();
  v11 = v9[10];
  v12 = type metadata accessor for AspirePirCuckooTableConfig(0);
  result = (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v9[11];
  *v13 = 0;
  *(v13 + 8) = 1;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig : AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v7, type metadata accessor for AspirePirBatchKeywordPirConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspirePirBatchKeywordPirConfig);
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirBatchKeywordPirConfig);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v14 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
LABEL_15:
    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    v16 = v13 + v10[9];
    UnknownStorage.init()();
    v17 = v10[10];
    v18 = type metadata accessor for AspirePirCuckooTableConfig(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    v19 = v13 + v10[11];
    *v19 = 0;
    *(v19 + 8) = 1;
    return AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v9, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    goto LABEL_15;
  }

  outlined init with take of AspirePirPIRShardingFunction(v9, v13, type metadata accessor for AspirePirBatchKeywordPirConfig);
  return AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.modify;
}

void AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v5, type metadata accessor for AspirePirBatchKeywordPirConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v8, type metadata accessor for AspirePirBatchKeywordPirConfig);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirBatchKeywordPirConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v8, type metadata accessor for AspirePirBatchKeywordPirConfig);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspirePirSymmetricPirClientConfig.serverPublicKey.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t AspirePirSymmetricPirClientConfig.serverPublicKey.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

void AspirePirSymmetricPirClientConfig.configType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t AspirePirSymmetricPirClientConfig.configType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1)
{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for AspirePirPirParameters._StorageClass, AspirePirPirParameters._StorageClass.init(), &static AspirePirPirParameters._StorageClass.defaultInstance);
}

{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass, AspirePirPirPreprocessDbArgs._StorageClass.init(), &static AspirePirPirPreprocessDbArgs._StorageClass.defaultInstance);
}

uint64_t AspirePirPirParameters._StorageClass.init()()
{
  v1 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  v2 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries) = 0;
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize) = 0;
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  v4 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize) = 0;
  v6 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  v7 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse) = 2;
  v9 = v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  v11 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  return v0;
}

uint64_t AspirePirPirParameters._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v69 = &v58 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v68 = &v58 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v63 = &v58 - v8;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v58 - v10;
  v12 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  v13 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries) = 0;
  v59 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize) = 0;
  v15 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions) = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  v60 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  v17 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
  *v18 = 0;
  *(v18 + 8) = 1;
  v61 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize) = 0;
  v19 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  v62 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  v20 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  v64 = v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse) = 2;
  v23 = v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  v65 = v22;
  v66 = v23;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  v67 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  v25 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v26, v11, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v11, v1 + v12, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  swift_beginAccess();
  v28 = *(a1 + v27);
  swift_beginAccess();
  *(v1 + v14) = v28;
  v29 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  swift_beginAccess();
  v30 = *(a1 + v29);
  v31 = v59;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  v33 = *(a1 + v32);
  swift_beginAccess();
  v34 = *(v1 + v15);
  *(v1 + v15) = v33;

  v35 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  v36 = v63;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v35, v63, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v37 = v60;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v36, v1 + v37, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  swift_endAccess();
  v38 = (a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  swift_beginAccess();
  *v18 = v39;
  *(v18 + 8) = v38;
  v40 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  swift_beginAccess();
  v41 = *(a1 + v40);
  v42 = v61;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  v44 = v68;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v43, v68, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v45 = v62;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v44, v1 + v45, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  swift_endAccess();
  v46 = (a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy);
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  v48 = v64;
  swift_beginAccess();
  *v48 = v47;
  *(v48 + 8) = v46;
  v49 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  LOBYTE(v49) = *(a1 + v49);
  v50 = v65;
  swift_beginAccess();
  *(v1 + v50) = v49;
  v51 = (a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize);
  swift_beginAccess();
  v52 = *v51;
  LOBYTE(v51) = *(v51 + 8);
  v53 = v66;
  swift_beginAccess();
  *v53 = v52;
  *(v53 + 8) = v51;
  v54 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  v55 = v69;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v54, v69, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);

  v56 = v67;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v55, v1 + v56, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t outlined init with copy of AspireHeEncryptionParameters(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AspirePirPirParameters._StorageClass.__deallocating_deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 6)
      {
        if (result > 9)
        {
          switch(result)
          {
            case 10:
              closure #10 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)();
              break;
            case 11:
              closure #11 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)();
              break;
            case 12:
              closure #12 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)();
              break;
          }
        }

        else
        {
          if (result == 7)
          {
            v11 = MEMORY[0x277D217F8];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
LABEL_5:
            closure #2 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(v12, v13, v14, v15, v16, v11);
            goto LABEL_6;
          }

          if (result != 8)
          {
            v17 = lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
            v18 = a2;
            v19 = a1;
            v20 = a3;
            v21 = a4;
            v22 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
LABEL_21:
            closure #6 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(v18, v19, v20, v21, v22, v17);
            goto LABEL_6;
          }

          closure #8 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)();
        }
      }

      else if (result > 3)
      {
        if (result == 4)
        {
          v11 = MEMORY[0x277D217B8];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
          goto LABEL_5;
        }

        if (result != 5)
        {
          v17 = lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
          v18 = a2;
          v19 = a1;
          v20 = a3;
          v21 = a4;
          v22 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
          goto LABEL_21;
        }

        closure #5 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)();
      }

      else
      {
        switch(result)
        {
          case 1:
            closure #1 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)();
            break;
          case 2:
            v11 = MEMORY[0x277D217F8];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
            goto LABEL_5;
          case 3:
            v11 = MEMORY[0x277D217F8];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspirePirKeywordPirParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  v8 = swift_beginAccess();
  a6(v8);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #12 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspirePirBatchPirParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
    swift_beginAccess();
    if (*(a1 + v10))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
    swift_beginAccess();
    if (*(a1 + v11))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
    swift_beginAccess();
    if (*(*(a1 + v12) + 16))
    {

      dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
    }

    closure #2 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
    v13 = a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
    swift_beginAccess();
    if (*v13)
    {
      v18 = *v13;
      v19 = *(v13 + 8);
      lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
    swift_beginAccess();
    if (*(a1 + v14))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    closure #3 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
    v15 = a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
    swift_beginAccess();
    v16 = *v15;
    v17 = *(v15 + 8);
    lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    closure #4 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1);
    closure #5 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1);
    return closure #6 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v13, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t closure #2 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v13, type metadata accessor for AspirePirKeywordPirParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspirePirKeywordPirParameters);
}

uint64_t closure #3 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v13, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspireHeEvaluationKeyConfig);
}

uint64_t closure #4 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  result = swift_beginAccess();
  if (*(a1 + v2) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspirePirBatchPirParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v13, type metadata accessor for AspirePirBatchPirParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspirePirBatchPirParameters);
}

BOOL closure #1 in static AspirePirPirParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v149 = a2;
  v3 = type metadata accessor for AspirePirBatchPirParameters(0);
  v128 = *(v3 - 8);
  v129 = v3;
  v4 = *(v128 + 64);
  MEMORY[0x28223BE20](v3);
  v125 = (&v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMd, &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMR);
  v6 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v130 = &v125 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v126 = (&v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v131 = &v125 - v12;
  v13 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v134 = *(v13 - 8);
  v135 = v13;
  v14 = *(v134 + 64);
  MEMORY[0x28223BE20](v13);
  v132 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  v16 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v136 = &v125 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v144 = (&v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v138 = &v125 - v22;
  v23 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v141 = *(v23 - 8);
  v142 = v23;
  v24 = *(v141 + 64);
  MEMORY[0x28223BE20](v23);
  v137 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd, &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR);
  v26 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v143 = &v125 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v139 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v145 = &v125 - v32;
  v148 = type metadata accessor for AspireHeEncryptionParameters(0);
  v33 = *(v148 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v125 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v147 = &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v125 - v45;
  v47 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v47, v46, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v48 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  v49 = v149;
  swift_beginAccess();
  v50 = *(v37 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v46, v40, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v51 = v49 + v48;
  v52 = v49;
  v53 = v148;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v51, &v40[v50], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v54 = *(v33 + 48);
  if (v54(v40, 1, v53) == 1)
  {
    v55 = a1;

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    if (v54(&v40[v50], 1, v53) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    v57 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v58 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
LABEL_7:
    v59 = v40;
LABEL_8:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v59, v57, v58);
    goto LABEL_61;
  }

  v55 = a1;
  v56 = v147;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v40, v147, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v54(&v40[v50], 1, v53) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v56, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  v60 = v146;
  outlined init with take of AspirePirPIRShardingFunction(&v40[v50], v146, type metadata accessor for AspireHeEncryptionParameters);

  LODWORD(v148) = static AspireHeEncryptionParameters.== infix(_:_:)(v56, v60);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v60, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v56, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v148 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_10:
  v61 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  swift_beginAccess();
  v62 = *(v55 + v61);
  v63 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  swift_beginAccess();
  if (v62 != *(v52 + v63))
  {
    goto LABEL_61;
  }

  v64 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  swift_beginAccess();
  v65 = *(v55 + v64);
  v66 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  swift_beginAccess();
  if (v65 != *(v52 + v66))
  {
    goto LABEL_61;
  }

  v67 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  v68 = *(v55 + v67);
  v69 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v68, *(v52 + v69)) & 1) == 0)
  {
    goto LABEL_61;
  }

  v70 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  v71 = v145;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v55 + v70, v145, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v72 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  v73 = *(v140 + 48);
  v40 = v143;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v71, v143, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v52 + v72, &v40[v73], &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v74 = v142;
  v75 = *(v141 + 48);
  if (v75(v40, 1, v142) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    v76 = v75(&v40[v73], 1, v74);
    v77 = v144;
    if (v76 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v78 = v139;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v40, v139, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v79 = v75(&v40[v73], 1, v74);
  v77 = v144;
  if (v79 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v145, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v78, type metadata accessor for AspirePirKeywordPirParameters);
LABEL_18:
    v57 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd;
    v58 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR;
    goto LABEL_7;
  }

  v80 = &v40[v73];
  v81 = v137;
  outlined init with take of AspirePirPIRShardingFunction(v80, v137, type metadata accessor for AspirePirKeywordPirParameters);
  v82 = specialized static AspirePirKeywordPirParameters.== infix(_:_:)(v78, v81);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v81, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v145, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v78, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((v82 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_20:
  v83 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
  swift_beginAccess();
  v84 = *(v55 + v83);
  v85 = (v52 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm);
  swift_beginAccess();
  v86 = *v85;
  if (*(v85 + 8) == 1)
  {
    v87 = v138;
    if (v86)
    {
      if (v86 == 1)
      {
        if (v84 != 1)
        {
          goto LABEL_61;
        }
      }

      else if (v84 != 2)
      {
        goto LABEL_61;
      }
    }

    else if (v84)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v87 = v138;
    if (v84 != v86)
    {
      goto LABEL_61;
    }
  }

  v88 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  swift_beginAccess();
  v89 = *(v55 + v88);
  v90 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  swift_beginAccess();
  if (v89 != *(v52 + v90))
  {
    goto LABEL_61;
  }

  v91 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v55 + v91, v87, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v92 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  v93 = *(v133 + 48);
  v94 = v136;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v87, v136, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v52 + v92, v94 + v93, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v95 = v135;
  v96 = *(v134 + 48);
  if (v96(v94, 1, v135) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v87, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v96(v94 + v93, 1, v95) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v94, v77, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v96(v94 + v93, 1, v95) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v138, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v77, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_36:
    v57 = &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd;
    v58 = &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR;
    v59 = v94;
    goto LABEL_8;
  }

  v97 = v132;
  outlined init with take of AspirePirPIRShardingFunction(v94 + v93, v132, type metadata accessor for AspireHeEvaluationKeyConfig);
  v98 = specialized static AspireHeEvaluationKeyConfig.== infix(_:_:)(v77, v97);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v97, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v138, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v77, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if ((v98 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_38:
  v99 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  swift_beginAccess();
  v100 = *(v55 + v99);
  v101 = (v52 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy);
  swift_beginAccess();
  v102 = *v101;
  if (*(v101 + 8) == 1)
  {
    if (v102)
    {
      if (v102 == 1)
      {
        if (v100 != 1)
        {
          goto LABEL_61;
        }
      }

      else if (v100 != 2)
      {
        goto LABEL_61;
      }
    }

    else if (v100)
    {
      goto LABEL_61;
    }
  }

  else if (v100 != v102)
  {
    goto LABEL_61;
  }

  v103 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  v104 = *(v55 + v103);
  v105 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  v106 = *(v52 + v105);
  if (v104 == 2)
  {
    if (v106 != 2)
    {
      goto LABEL_61;
    }
  }

  else if (v106 == 2 || ((v104 ^ v106) & 1) != 0)
  {
    goto LABEL_61;
  }

  v107 = (v55 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize);
  swift_beginAccess();
  v108 = *v107;
  v109 = *(v107 + 8);
  v110 = v52 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  v111 = *(v110 + 8);
  if (v109)
  {
    if (*(v110 + 8))
    {
      goto LABEL_58;
    }

LABEL_61:

    return 0;
  }

  if ((*(v110 + 8) & 1) != 0 || v108 != *v110)
  {
    goto LABEL_61;
  }

LABEL_58:
  v112 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  v113 = v131;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v55 + v112, v131, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v114 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  v115 = *(v127 + 48);
  v116 = v113;
  v117 = v130;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v116, v130, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v52 + v114, v117 + v115, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v118 = v129;
  v119 = *(v128 + 48);
  if (v119(v117, 1, v129) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v131, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    if (v119(v117 + v115, 1, v118) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v117, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      return 1;
    }

LABEL_65:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v117, &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMd, &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMR);
    return 0;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v117, v126, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if (v119(v117 + v115, 1, v118) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v131, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v126, type metadata accessor for AspirePirBatchPirParameters);
    v117 = v130;
    goto LABEL_65;
  }

  v121 = v130;
  v122 = v125;
  outlined init with take of AspirePirPIRShardingFunction(v130 + v115, v125, type metadata accessor for AspirePirBatchPirParameters);
  v123 = v126;
  v124 = specialized static AspirePirBatchPirParameters.== infix(_:_:)(v126, v122);

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v122, type metadata accessor for AspirePirBatchPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v131, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v123, type metadata accessor for AspirePirBatchPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v121, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return (v124 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirParameters and conformance AspirePirPirParameters, type metadata accessor for AspirePirPirParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirParameters(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirParameters and conformance AspirePirPirParameters, type metadata accessor for AspirePirPirParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirParameters and conformance AspirePirPirParameters, type metadata accessor for AspirePirPirParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirCuckooTableConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1)
      {
        goto LABEL_16;
      }

      if (result == 2 || result == 3)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }

    else if (result > 5)
    {
      if (result == 6 || result == 7)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

LABEL_16:
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

uint64_t AspirePirCuckooTableConfig.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
      {
        if (!*(v0 + 24) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
        {
          if (!*(v0 + 32) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
          {
            if (*(v0 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
            {
              if (*(v0 + 41) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
              {
                v3 = v0 + *(type metadata accessor for AspirePirCuckooTableConfig(0) + 44);
                return UnknownStorage.traverse<A>(visitor:)();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirCuckooTableConfig@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *(a2 + 26) = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 44);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AspirePirCuckooTableConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AspirePirCuckooTableConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance AspirePirCuckooTableConfig(uint64_t a1, uint64_t a2))()
{
  result = AMDPbFetchHEConfigs.unknownFields.modify;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirCuckooTableConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirCuckooTableConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirCuckooTableConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirBatchKeywordPirConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          closure #1 in AspirePirBatchKeywordPirConfig.decodeMessage<A>(decoder:)();
          break;
        case 2:
LABEL_2:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
        case 3:
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
      }
    }

    else
    {
      if (result <= 6)
      {
        goto LABEL_2;
      }

      if (result == 7)
      {
        v3 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 44);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }
  }
}

uint64_t closure #1 in AspirePirBatchKeywordPirConfig.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 40);
  type metadata accessor for AspirePirCuckooTableConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (v3[1])
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (v3[2])
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (v3[3])
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (v3[4])
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    closure #2 in AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(v3);
    v6 = v3 + *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 36);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 40), v8, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v13, type metadata accessor for AspirePirCuckooTableConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspirePirCuckooTableConfig);
}

uint64_t closure #2 in AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirBatchKeywordPirConfig@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = a2 + a1[9];
  UnknownStorage.init()();
  v5 = a1[10];
  v6 = type metadata accessor for AspirePirCuckooTableConfig(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a2 + a1[11];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirBatchKeywordPirConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirBatchKeywordPirConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirBatchKeywordPirConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirBatchPirParameters.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }
}

uint64_t AspirePirBatchPirParameters.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v1))
      {
        if (!v0[3] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
        {
          v3 = v0 + *(type metadata accessor for AspirePirBatchPirParameters(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirBatchPirParameters@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x277D84F90];
  a2[3] = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirBatchPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirBatchPirParameters(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirBatchPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)();
      }

      else if (result == 4)
      {
        closure #4 in AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 28);
  type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #4 in AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 32);
  type metadata accessor for AspirePirPIRShardingFunction(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspirePirKeywordPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      result = closure #1 in AspirePirKeywordPirParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        closure #2 in AspirePirKeywordPirParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
        v9 = v3 + *(type metadata accessor for AspirePirKeywordPirParameters(0) + 24);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in AspirePirKeywordPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 28), v8, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v13, type metadata accessor for AspirePirSymmetricPirClientConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspirePirSymmetricPirClientConfig);
}

uint64_t closure #2 in AspirePirKeywordPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 32), v8, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v13, type metadata accessor for AspirePirPIRShardingFunction);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspirePirPIRShardingFunction);
}

uint64_t protocol witness for Message.init() in conformance AspirePirKeywordPirParameters@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = a2 + a1[6];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirKeywordPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirKeywordPirParameters(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirKeywordPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #1 in AspirePirPIRShardingFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspirePirPIRShardingFunctionSHA256(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v14, v22, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    outlined init with take of AspirePirPIRShardingFunction(v22, v19, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v19, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
      v34 = v49;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
      v36 = v45;
      outlined init with take of AspirePirPIRShardingFunction(v19, v45, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      outlined init with take of AspirePirPIRShardingFunction(v36, v29, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspirePirPIRShardingFunction(v37, v44, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v40, v41, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #2 in AspirePirPIRShardingFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v14, v22, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    outlined init with take of AspirePirPIRShardingFunction(v22, v19, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
      v36 = v45;
      outlined init with take of AspirePirPIRShardingFunction(v19, v45, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      outlined init with take of AspirePirPIRShardingFunction(v36, v29, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v19, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspirePirPIRShardingFunction(v37, v44, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v40, v41, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t AspirePirPIRShardingFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v15 - v10, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v12 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AspirePirPIRShardingFunction.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AspirePirPIRShardingFunction.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for AspirePirPIRShardingFunction(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirPIRShardingFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspirePirPIRShardingFunctionSHA256(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v13 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v12, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspirePirPIRShardingFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v13 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v12, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPIRShardingFunction(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirPIRShardingFunctionSHA256.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPIRShardingFunctionSHA256(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPIRShardingFunctionSHA256(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPIRShardingFunctionSHA256(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirPIRShardingFunctionSHA256()
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirPIRShardingFunctionDoubleMod.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t AspirePirPIRShardingFunctionDoubleMod.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirPIRShardingFunctionDoubleMod@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPIRShardingFunctionDoubleMod(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPIRShardingFunctionDoubleMod(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPIRShardingFunctionDoubleMod(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirPIRShardingFunctionDoubleMod(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirEncryptedIndices.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspireHeSerializedCiphertext(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspirePirEncryptedIndices.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for AspireHeSerializedCiphertext(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for AspirePirEncryptedIndices(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static AspirePirEncryptedIndices.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(type metadata accessor for AspirePirEncryptedIndices(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance AspirePirEncryptedIndices@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirEncryptedIndices(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirEncryptedIndices(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirEncryptedIndices(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirEncryptedIndices(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirSerializedKeywordDbRow.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v1 = *(type metadata accessor for AspirePirSerializedKeywordDbRow(0) + 28);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t AspirePirSerializedKeywordDbRow.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v14 = v3[2];
  v15 = v3[3];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_19;
    }

    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
LABEL_17:
    if (v17 == v18)
    {
      goto LABEL_19;
    }

LABEL_18:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v16)
  {
    v17 = v14;
    v18 = v14 >> 32;
    goto LABEL_17;
  }

  if ((v15 & 0xFF000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  result = closure #1 in AspirePirSerializedKeywordDbRow.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspirePirSerializedKeywordDbRow);
  if (!v4)
  {
    v19 = v3 + *(type metadata accessor for AspirePirSerializedKeywordDbRow(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirSerializedKeywordDbRow@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_225022910;
  a2[1] = xmmword_225022910;
  v4 = a2 + *(a1 + 24);
  result = UnknownStorage.init()();
  v6 = (a2 + *(a1 + 28));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirSerializedKeywordDbRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirSerializedKeywordDbRow(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirSerializedKeywordDbRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirSerializedKeywordDb.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspirePirSerializedKeywordDbRow(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspirePirSerializedKeywordDb.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for AspirePirSerializedKeywordDbRow(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for AspirePirSerializedKeywordDb(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AspirePirSerializedKeywordDb.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspirePirSerializedKeywordDbRowV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AspirePirSerializedKeywordDb(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirSerializedKeywordDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDb and conformance AspirePirSerializedKeywordDb, type metadata accessor for AspirePirSerializedKeywordDb);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirSerializedKeywordDb(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDb and conformance AspirePirSerializedKeywordDb, type metadata accessor for AspirePirSerializedKeywordDb);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirSerializedKeywordDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDb and conformance AspirePirSerializedKeywordDb, type metadata accessor for AspirePirSerializedKeywordDb);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirSerializedKeywordDb(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspirePirSerializedKeywordDbRowV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs._StorageClass.init()()
{
  *(v0 + 41) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 57) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = -1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 88) = 0;
  *(v0 + 112) = 256;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 161) = 0u;
  *(v0 + 177) = 513;
  *(v0 + 180) = 0;
  *(v0 + 184) = 1;
  *(v0 + 185) = 514;
  v1 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  v2 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = &v44 - v4;
  *(v1 + 41) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 57) = 1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = -1;
  *(v1 + 96) = 0;
  *(v1 + 112) = 256;
  *(v1 + 104) = 0;
  v47 = (v1 + 104);
  *(v1 + 88) = 0;
  v46 = (v1 + 88);
  *(v1 + 161) = 0u;
  *(v1 + 152) = 0u;
  v50 = (v1 + 152);
  *(v1 + 136) = 0u;
  v49 = (v1 + 136);
  *(v1 + 120) = 0u;
  v48 = (v1 + 120);
  *(v1 + 177) = 513;
  *(v1 + 180) = 0;
  v51 = (v1 + 180);
  *(v1 + 184) = 1;
  *(v1 + 185) = 514;
  v5 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  v52 = (v1 + 185);
  v53 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  v6 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  swift_beginAccess();
  v7 = *(a1 + 16);
  v45 = *(a1 + 24);
  v8 = v45;
  swift_beginAccess();
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  swift_beginAccess();
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v9;
  *(v1 + 40) = v10;
  swift_beginAccess();
  v11 = *(a1 + 48);
  LOBYTE(v8) = *(a1 + 56);
  v12 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 48) = v11;
  *(v1 + 56) = v8;
  *(v1 + 57) = v12;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  v17 = *(a1 + 80);
  *(v1 + 64) = v13;
  *(v1 + 72) = v14;
  v18 = *(v1 + 80);
  *(v1 + 80) = v17;

  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v13, v14, v17);
  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v15, v16, v18);
  swift_beginAccess();
  v20 = *(a1 + 88);
  v19 = *(a1 + 96);
  v21 = v46;
  swift_beginAccess();
  v22 = *(v1 + 96);
  *v21 = v20;
  *(v1 + 96) = v19;

  swift_beginAccess();
  v23 = *(a1 + 104);
  LOBYTE(v22) = *(a1 + 112);
  LOBYTE(v20) = *(a1 + 113);
  v24 = v47;
  swift_beginAccess();
  *v24 = v23;
  *(v1 + 112) = v22;
  *(v1 + 113) = v20;
  swift_beginAccess();
  v26 = *(a1 + 120);
  v25 = *(a1 + 128);
  v27 = v48;
  swift_beginAccess();
  v28 = *(v1 + 128);
  *v27 = v26;
  *(v1 + 128) = v25;

  swift_beginAccess();
  v30 = *(a1 + 136);
  v29 = *(a1 + 144);
  v31 = v49;
  swift_beginAccess();
  v32 = *(v1 + 144);
  *v31 = v30;
  *(v1 + 144) = v29;

  swift_beginAccess();
  v34 = *(a1 + 152);
  v33 = *(a1 + 160);
  v35 = v50;
  swift_beginAccess();
  v36 = *(v1 + 160);
  *v35 = v34;
  *(v1 + 160) = v33;

  swift_beginAccess();
  v37 = *(a1 + 168);
  LOBYTE(v36) = *(a1 + 176);
  LOBYTE(v34) = *(a1 + 177);
  swift_beginAccess();
  *(v1 + 168) = v37;
  *(v1 + 176) = v36;
  *(v1 + 177) = v34;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + 178);
  swift_beginAccess();
  *(v1 + 178) = v37;
  swift_beginAccess();
  LODWORD(v37) = *(a1 + 180);
  LOBYTE(v36) = *(a1 + 184);
  v38 = v51;
  swift_beginAccess();
  *v38 = v37;
  *(v1 + 184) = v36;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + 185);
  v39 = v52;
  swift_beginAccess();
  *v39 = v37;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + 186);
  swift_beginAccess();
  *(v1 + 186) = v37;
  v40 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  v41 = v54;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v40, v54, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);

  v42 = v53;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v41, v1 + v42, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t AspirePirPirPreprocessDbArgs._StorageClass.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  v3 = *(v0 + 96);

  v4 = *(v0 + 128);

  v5 = *(v0 + 144);

  v6 = *(v0 + 160);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return v0;
}

uint64_t AspirePirPirPreprocessDbArgs._StorageClass.__deallocating_deinit()
{
  v0 = *AspirePirPirPreprocessDbArgs._StorageClass.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 2:
        closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 3:
        closure #3 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 4:
      case 5:
        closure #4 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 6:
        closure #6 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 7:
        closure #7 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 8:
        closure #8 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 9:
        closure #9 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 10:
        closure #10 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 11:
        closure #11 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 12:
        closure #12 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 13:
        closure #13 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 14:
        closure #14 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 15:
        closure #15 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 16:
        closure #16 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      case 17:
        closure #17 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v0)
  {
  }

  return result;
}

uint64_t closure #7 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #12 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #13 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #14 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #15 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #16 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #17 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
  if (!v4)
  {
    closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #3 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    if (*(a1 + 80) > 1u)
    {
      if (*(a1 + 80) == 2)
      {
        closure #6 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
      }
    }

    else
    {
      v10 = *(a1 + 64);
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #7 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #8 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #9 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #10 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #11 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #12 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #13 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #14 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #15 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #16 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    return closure #17 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
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

uint64_t closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 57) & 1) == 0)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56) & 1;
    lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t result)
{
  if (*(result + 80) == 2)
  {
    v2 = *(result + 64);
    v1 = *(result + 72);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v1, 2);
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v2, v1, 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #7 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 96))
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 96);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 113) & 1) == 0)
  {
    v3 = *(a1 + 104);
    v4 = *(a1 + 112) & 1;
    lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 128))
  {
    v3 = *(a1 + 120);
    v4 = *(a1 + 128);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 144))
  {
    v3 = *(a1 + 136);
    v4 = *(a1 + 144);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 160))
  {
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 177) & 1) == 0)
  {
    v3 = *(a1 + 168);
    v4 = *(a1 + 176) & 1;
    lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 178) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 184) & 1) == 0)
  {
    v3 = *(a1 + 180);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #15 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 185) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #16 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 186) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v13, type metadata accessor for AspirePirPirPreprocessDbCommand);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspirePirPirPreprocessDbCommand);
}

BOOL closure #1 in static AspirePirPirPreprocessDbArgs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v86 = *(v4 - 8);
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSg_ADtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v87 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  swift_beginAccess();
  v20 = *(a2 + 24);
  if (v19)
  {
    if (!v20 || (v18 != *(a2 + 16) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  v23 = *(a2 + 40);
  if (v22)
  {
    if (!v23 || (v21 != *(a2 + 32) || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 48);
  v25 = *(a1 + 57);
  swift_beginAccess();
  v26 = *(a2 + 57);
  if (v25)
  {
    if (*(a2 + 57))
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (*(a2 + 57))
  {
    return 0;
  }

  v36 = *(a2 + 48);
  if (*(a2 + 56))
  {
    if (v36)
    {
      if (v36 == 1)
      {
        if (v24 != 1)
        {
          return 0;
        }
      }

      else if (v24 != 2)
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }
  }

  else if (v24 != v36)
  {
    return 0;
  }

LABEL_17:
  v28 = *(a1 + 64);
  v27 = *(a1 + 72);
  v29 = *(a1 + 80);
  v30 = *(a2 + 72);
  v84 = *(a2 + 64);
  v85 = v30;
  v31 = *(a2 + 80);
  if (v29 == 255)
  {
    if (v31 == 255)
    {
      v81 = v4;
      v41 = v28;
      v42 = v27;

      outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v41, v42, 255);
      outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v84, v85, 255);
      outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v41, v42, 255);
      goto LABEL_34;
    }

    v37 = v28;
    v38 = v27;
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v28, v27, 255);
    v40 = v84;
    v39 = v85;
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v84, v85, v31);
    goto LABEL_32;
  }

  v91 = v28;
  v92 = v27;
  v93 = v29;
  if (v31 == 255)
  {
    v37 = v28;
    v38 = v27;
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v28, v27, v29);
    v40 = v84;
    v39 = v85;
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v84, v85, 255);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v37, v38, v29);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v37, v38, v29);
LABEL_32:
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v37, v38, v29);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v40, v39, v31);
    return 0;
  }

  v81 = v4;
  v82 = v28;
  v88 = v84;
  v89 = v85;
  v90 = v31;
  v32 = v28;
  v83 = v27;

  v33 = v32;
  v34 = v83;
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v33, v83, v29);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v84, v85, v31);
  v35 = v82;
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v82, v34, v29);
  LOBYTE(v34) = specialized static AspirePirPirPreprocessDbArgs.OneOf_Sharding.== infix(_:_:)(&v91, &v88);
  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v88, v89, v90);
  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v91, v92, v93);
  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v35, v83, v29);
  if ((v34 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_34:
  swift_beginAccess();
  v43 = *(a1 + 88);
  v44 = *(a1 + 96);
  swift_beginAccess();
  v45 = *(a2 + 96);
  if (v44)
  {
    if (!v45 || (v43 != *(a2 + 88) || v44 != v45) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if (v45)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v46 = *(a1 + 104);
  v47 = *(a1 + 113);
  swift_beginAccess();
  v48 = *(a2 + 113);
  if (v47)
  {
    if ((*(a2 + 113) & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else
  {
    if (*(a2 + 113))
    {
      goto LABEL_114;
    }

    v52 = *(a2 + 104);
    if (*(a2 + 112))
    {
      if (v52)
      {
        if (v52 == 1)
        {
          if (v46 != 1)
          {
            goto LABEL_114;
          }
        }

        else if (v46 != 2)
        {
          goto LABEL_114;
        }
      }

      else if (v46)
      {
        goto LABEL_114;
      }
    }

    else if (v46 != v52)
    {
      goto LABEL_114;
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 120);
  v50 = *(a1 + 128);
  swift_beginAccess();
  v51 = *(a2 + 128);
  if (v50)
  {
    if (!v51 || (v49 != *(a2 + 120) || v50 != v51) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if (v51)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v53 = *(a1 + 136);
  v54 = *(a1 + 144);
  swift_beginAccess();
  v55 = *(a2 + 144);
  if (v54)
  {
    if (!v55 || (v53 != *(a2 + 136) || v54 != v55) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if (v55)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v56 = *(a1 + 152);
  v57 = *(a1 + 160);
  swift_beginAccess();
  v58 = *(a2 + 160);
  if (v57)
  {
    if (!v58 || (v56 != *(a2 + 152) || v57 != v58) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if (v58)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v59 = *(a1 + 168);
  v60 = *(a1 + 177);
  swift_beginAccess();
  v61 = *(a2 + 177);
  if (v60)
  {
    if ((*(a2 + 177) & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else
  {
    if (*(a2 + 177))
    {
      goto LABEL_114;
    }

    v64 = *(a2 + 168);
    if (*(a2 + 176))
    {
      if (v64)
      {
        if (v64 == 1)
        {
          if (v59 != 1)
          {
            goto LABEL_114;
          }
        }

        else if (v59 != 2)
        {
          goto LABEL_114;
        }
      }

      else if (v59)
      {
        goto LABEL_114;
      }
    }

    else if (v59 != v64)
    {
      goto LABEL_114;
    }
  }

  swift_beginAccess();
  v62 = *(a1 + 178);
  swift_beginAccess();
  v63 = *(a2 + 178);
  if (v62 == 2)
  {
    if (v63 != 2)
    {
      goto LABEL_114;
    }
  }

  else if (v63 == 2 || ((v62 ^ v63) & 1) != 0)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v65 = *(a1 + 180);
  v66 = *(a1 + 184);
  swift_beginAccess();
  v67 = *(a2 + 184);
  if (v66)
  {
    if ((*(a2 + 184) & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if ((*(a2 + 184) & 1) != 0 || v65 != *(a2 + 180))
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v68 = *(a1 + 185);
  swift_beginAccess();
  v69 = *(a2 + 185);
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      goto LABEL_114;
    }
  }

  else if (v69 == 2 || ((v68 ^ v69) & 1) != 0)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v70 = *(a1 + 186);
  swift_beginAccess();
  v71 = *(a2 + 186);
  if (v70 == 2)
  {
    if (v71 == 2)
    {
      goto LABEL_116;
    }

LABEL_114:

    return 0;
  }

  if (v71 == 2 || ((v70 ^ v71) & 1) != 0)
  {
    goto LABEL_114;
  }

LABEL_116:
  v73 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v73, v17, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v74 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  v75 = *(v8 + 48);
  v76 = v87;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v87, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v85 = v75;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v74, v76 + v75, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v77 = *(v86 + 48);
  if (v77(v76, 1, v81) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    if (v77(v87 + v85, 1, v81) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v87, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
      return 1;
    }

LABEL_121:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v87, &_s8CipherML09AspirePirD19PreprocessDbCommandVSg_ADtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSg_ADtMR);
    return 0;
  }

  v78 = v87;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v87, v14, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  if (v77(v78 + v85, 1, v81) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirPirPreprocessDbCommand);
    goto LABEL_121;
  }

  v79 = v87;
  outlined init with take of AspirePirPIRShardingFunction(v87 + v85, v7, type metadata accessor for AspirePirPirPreprocessDbCommand);
  v80 = specialized static AspirePirPirPreprocessDbCommand.== infix(_:_:)(v14, v7);

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirPirPreprocessDbCommand);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v79, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return (v80 & 1) != 0;
}

uint64_t protocol witness for Message.init() in conformance AspirePirPirParameters@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbArgs and conformance AspirePirPirPreprocessDbArgs, type metadata accessor for AspirePirPirPreprocessDbArgs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirPreprocessDbArgs(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbArgs and conformance AspirePirPirPreprocessDbArgs, type metadata accessor for AspirePirPirPreprocessDbArgs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbArgs and conformance AspirePirPirPreprocessDbArgs, type metadata accessor for AspirePirPirPreprocessDbArgs);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirPIRShardingFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspirePirPirPreprocessDbCommand.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v14, v22, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    outlined init with take of AspirePirPIRShardingFunction(v22, v19, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v19, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
      v34 = v49;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
      v36 = v45;
      outlined init with take of AspirePirPIRShardingFunction(v19, v45, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      outlined init with take of AspirePirPIRShardingFunction(v36, v29, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspirePirPIRShardingFunction(v37, v44, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v40, v41, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #2 in AspirePirPirPreprocessDbCommand.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v14, v22, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    outlined init with take of AspirePirPIRShardingFunction(v22, v19, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
      v36 = v45;
      outlined init with take of AspirePirPIRShardingFunction(v19, v45, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
      outlined init with take of AspirePirPIRShardingFunction(v36, v29, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v19, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspirePirPIRShardingFunction(v37, v44, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v40, v41, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v15 - v10, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v12 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for AspirePirPirPreprocessDbCommand(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v12, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v12, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirPIRShardingFunction@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirPreprocessDbCommand(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirPreprocessDbCommand(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirPreprocessDbCommand(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirPirPreprocessDbCommand.Index.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t AspirePirPirPreprocessDbCommand.Index.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirPirPreprocessDbCommand.Index@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirPreprocessDbCommand.Index(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirPreprocessDbCommand.Index(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirPreprocessDbCommand.Index(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirPirPreprocessDbCommand.Index(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      v12 = *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24);
LABEL_13:
      v4 = 0;
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      v11 = *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 28);
      goto LABEL_13;
    }
  }
}

uint64_t closure #3 in AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v14, v22, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    outlined init with take of AspirePirPIRShardingFunction(v22, v19, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v19, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
      v34 = v49;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
      v36 = v45;
      outlined init with take of AspirePirPIRShardingFunction(v19, v45, type metadata accessor for AspirePirCuckooTableConfig);
      outlined init with take of AspirePirPIRShardingFunction(v36, v29, type metadata accessor for AspirePirCuckooTableConfig);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspirePirPIRShardingFunction(v37, v44, type metadata accessor for AspirePirCuckooTableConfig);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v40, v41, type metadata accessor for AspirePirCuckooTableConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #4 in AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v14, v22, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    outlined init with take of AspirePirPIRShardingFunction(v22, v19, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
      v36 = v45;
      outlined init with take of AspirePirPIRShardingFunction(v19, v45, type metadata accessor for AspirePirBatchKeywordPirConfig);
      outlined init with take of AspirePirPIRShardingFunction(v36, v29, type metadata accessor for AspirePirBatchKeywordPirConfig);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v19, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspirePirPIRShardingFunction(v37, v44, type metadata accessor for AspirePirBatchKeywordPirConfig);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v40, v41, type metadata accessor for AspirePirBatchKeywordPirConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}