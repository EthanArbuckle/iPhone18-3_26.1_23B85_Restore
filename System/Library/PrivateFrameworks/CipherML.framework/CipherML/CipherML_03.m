uint64_t PegasusNetworking.fetchConfigs(useCases:userId:)()
{
  v1 = *(v0[3] + 16);
  v0[11] = v1;
  if (v1)
  {
    v0[12] = *(v0[4] + 112);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = PegasusNetworking.fetchConfigs(useCases:userId:);

    return PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled()();
  }

  else
  {
    v4 = v0[2];
    v5 = MEMORY[0x277D84F90];
    *v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v4[1] = v5;
    v6 = v4 + *(type metadata accessor for AspireApiConfigResponse(0) + 24);
    UnknownStorage.init()();
    v7 = v0[10];
    v8 = v0[7];

    v9 = v0[1];

    return v9();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v5 = v2[10];
    v6 = v2[7];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = v2[4];

    return MEMORY[0x2822009F8](PegasusNetworking.fetchConfigs(useCases:userId:), v9, 0);
  }
}

{
  v36 = v0;
  v1 = v0[11];
  v2 = v0[3];
  v35 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = 0;
  v4 = v35;
  v5 = *(v35 + 16);
  v6 = 16 * v5;
  v7 = (v2 + 40);
  do
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v35 = v4;
    v10 = v5 + 1;
    v11 = *(v4 + 24);

    if (v5 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10, 1);
      v4 = v35;
    }

    v0[17] = v4;
    v12 = v0[11];
    ++v3;
    *(v4 + 16) = v10;
    v13 = v4 + v6;
    *(v13 + 32) = v9;
    *(v13 + 40) = v8;
    v6 += 16;
    v7 += 3;
    ++v5;
  }

  while (v3 != v12);
  v14 = v0[14];
  v15 = v0[10];
  v16 = v0[8];
  v17 = v0[3];
  *(swift_task_alloc() + 16) = v17;
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest, MEMORY[0x277D39B98]);
  static Message.with(_:)();
  v0[15] = v14;

  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v0[16] = __swift_project_value_buffer(v18, static Logger.networking);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136446210;
    v23 = MEMORY[0x22AA60B60](v4, MEMORY[0x277D837D0]);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v35);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_224E26000, v19, v20, "Request to fetchConfigs has started for useCases '%{public}s'", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AA61F40](v22, -1, -1);
    MEMORY[0x22AA61F40](v21, -1, -1);
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10PegasusAPI52Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponseV0B3Kit10ProxyErrorOGMd, &_ss6ResultOy10PegasusAPI52Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponseV0B3Kit10ProxyErrorOGMR);
  v0[18] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v28 = swift_task_alloc();
  v0[19] = v28;
  v29 = *(MEMORY[0x277D39E88] + 4);
  v34 = (*MEMORY[0x277D39E88] + MEMORY[0x277D39E88]);
  v30 = swift_task_alloc();
  v0[20] = v30;
  *v30 = v0;
  v30[1] = PegasusNetworking.fetchConfigs(useCases:userId:);
  v31 = v0[12];
  v32 = v0[10];

  return v34(v28, v32);
}

{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](PegasusNetworking.fetchConfigs(useCases:userId:), v2, 0);
}

{
  v58 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = type metadata accessor for ProxyError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = v0[17];
  if (EnumCaseMultiPayload == 1)
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[17];

    v13 = *(v4 + 32);
    v13(v6, v2, v3);
    lazy protocol witness table accessor for type ProxyError and conformance ProxyError();
    swift_willThrowTypedImpl();
    swift_allocError();
    v13(v14, v6, v3);
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v15 = v0[16];
    (*(v0[6] + 32))(v0[7], v2, v0[5]);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[17];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v57[0] = v21;
      *v20 = 136446210;
      v22 = MEMORY[0x22AA60B60](v19, MEMORY[0x277D837D0]);
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v57);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_224E26000, v16, v17, "Request to fetchConfigs has finished for useCases '%{public}s'", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA61F40](v21, -1, -1);
      MEMORY[0x22AA61F40](v20, -1, -1);
    }

    else
    {
    }

    v26 = v0[15];
    v27 = v0[7];
    v28 = v0[3];
    v29 = swift_task_alloc();
    *(v29 + 16) = v27;
    v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4name_Says5UInt8VG16existingConfigIdtG_SS_8CipherML09AspireApiG0VtsAE_pTg5(partial apply for closure #2 in PegasusNetworking.fetchConfigs(useCases:userId:), v29, v28);
    if (!v26)
    {
      v38 = v30;

      if (*(v38 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
        v39 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v39 = MEMORY[0x277D84F98];
      }

      v57[0] = v39;

      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v40, 1, v57);
      v41 = v0[7];
      v42 = v0[3];

      v43 = v57[0];
      v44 = swift_task_alloc();
      *(v44 + 16) = v41;
      v45 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4name_Says5UInt8VG16existingConfigIdtG_8CipherML18AspireApiKeyStatusVsAE_pTg5(partial apply for closure #3 in PegasusNetworking.fetchConfigs(useCases:userId:), v44, v42);
      v46 = v0[9];
      v47 = v0[8];
      v56 = v0[7];
      v48 = v0[6];
      v54 = v0[10];
      v55 = v0[5];
      v49 = v0[2];
      v50 = v45;

      type metadata accessor for AspireApiConfigResponse(0);
      v51 = swift_task_alloc();
      *(v51 + 16) = v43;
      *(v51 + 24) = v50;
      lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse);
      static Message.with(_:)();

      (*(v46 + 8))(v54, v47);
      (*(v48 + 8))(v56, v55);
      v52 = v0[10];
      v53 = v0[7];

      v36 = v0[1];
      goto LABEL_9;
    }

    v31 = v0[7];
    v32 = v0[5];
    v33 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    (*(v33 + 8))(v31, v32);
  }

  v34 = v0[10];
  v35 = v0[7];

  v36 = v0[1];
LABEL_9:

  return v36();
}

uint64_t PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled(), 0, 0);
}

{
  (*(v0[4] + 104))(v0[6], *MEMORY[0x277D39CD8], v0[3]);
  v1 = *(MEMORY[0x277D39E98] + 4);
  v5 = (*MEMORY[0x277D39E98] + MEMORY[0x277D39E98]);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled();
  v3 = v0[2];

  return v5();
}

{
  v32 = v0;
  v1 = specialized Set.contains(_:)(v0[6], v0[9]);

  if (v1)
  {
    v2 = v0[5];
    (*(v0[4] + 8))(v0[6], v0[3]);

    v3 = v0[1];
  }

  else
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[3];
    v7 = v0[4];
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.networking);
    (*(v7 + 16))(v4, v5, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315138;
      v17 = Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.description.getter();
      v19 = v18;
      v20 = v14;
      v21 = *(v13 + 8);
      v21(v12, v20);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v31);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_224E26000, v9, v10, "unsupportedUsecase %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA61F40](v16, -1, -1);
      MEMORY[0x22AA61F40](v15, -1, -1);
    }

    else
    {

      v23 = v14;
      v21 = *(v13 + 8);
      v21(v12, v23);
    }

    v24 = v0[6];
    type metadata accessor for PegasusNetworkingError();
    lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type PegasusNetworkingError and conformance PegasusNetworkingError, type metadata accessor for PegasusNetworkingError);
    swift_allocError();
    v26 = v25;
    *v25 = Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.description.getter();
    v26[1] = v27;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v28 = v0[5];
    v29 = v0[4] + 8;
    v21(v0[6], v0[3]);

    v3 = v0[1];
  }

  return v3();
}

{
  v1 = v0[8];
  v2 = v0[5];
  (*(v0[4] + 8))(v0[6], v0[3]);

  v3 = v0[1];

  return v3();
}

uint64_t PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled();
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in PegasusNetworking.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);

      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest.usecases.setter();
}

uint64_t closure #2 in PegasusNetworking.fetchConfigs(useCases:userId:)@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v37 = a2;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Google_Protobuf_Any();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AspireApiConfig(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v39 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v20 = a1[1];
  v22 = MEMORY[0x22AA5F7C0](v18);
  if (*(v22 + 16))
  {
    v23 = v21;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
    if (v25)
    {
      (*(v12 + 16))(v15, *(v22 + 56) + *(v12 + 72) * v24, v11);

      Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.config.getter();
      (*(v12 + 8))(v15, v11);
      v26 = Google_Protobuf_Any.value.getter();
      v28 = v27;
      (*(v34 + 8))(v10, v35);
      goto LABEL_6;
    }
  }

  else
  {
    v23 = v21;
  }

  v26 = 0;
  v28 = 0xC000000000000000;
LABEL_6:
  v43 = v26;
  v44 = v28;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig);
  v29 = v39;
  v30 = v45;
  result = Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v30)
  {
    *v37 = v30;
  }

  else
  {
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR) + 48);
    v33 = v36;
    *v36 = v23;
    v33[1] = v20;
    outlined init with take of AspireApiResponse(v29, v33 + v32, type metadata accessor for AspireApiConfig);
  }

  return result;
}

uint64_t closure #3 in PegasusNetworking.fetchConfigs(useCases:userId:)@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for Google_Protobuf_Any();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = MEMORY[0x22AA5F7C0](v13);
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17), (v20 & 1) != 0))
  {
    (*(v11 + 16))(v15, *(v18 + 56) + *(v11 + 72) * v19, v10);

    Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.keyStatus.getter();
    (*(v11 + 8))(v15, v10);
    v21 = Google_Protobuf_Any.value.getter();
    v23 = v22;
    (*(v27 + 8))(v9, v6);
  }

  else
  {

    v21 = 0;
    v23 = 0xC000000000000000;
  }

  type metadata accessor for AspireApiKeyStatus(0);
  v33 = v21;
  v34 = v23;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus);
  v24 = v35;
  result = Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v24)
  {
    *v28 = v24;
  }

  return result;
}

uint64_t closure #4 in PegasusNetworking.fetchConfigs(useCases:userId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;

  *a1 = a2;
  v7 = a1[1];

  a1[1] = a3;
  return result;
}

uint64_t PegasusNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Google_Protobuf_Any();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v11 = type metadata accessor for AspireApiResponse(0);
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();
  v14 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse();
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();
  v17 = *(type metadata accessor for AspireApiRequest(0) - 8);
  v3[21] = v17;
  v18 = *(v17 + 64) + 15;
  v3[22] = swift_task_alloc();
  v19 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery();
  v3[23] = v19;
  v20 = *(v19 - 8);
  v3[24] = v20;
  v21 = *(v20 + 64) + 15;
  v3[25] = swift_task_alloc();
  v22 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest();
  v3[26] = v22;
  v23 = *(v22 - 8);
  v3[27] = v23;
  v24 = *(v23 + 64) + 15;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](PegasusNetworking.queries(requests:userId:), v2, 0);
}

uint64_t PegasusNetworking.queries(requests:userId:)()
{
  v1 = *(v0[6] + 16);
  v0[29] = v1;
  if (v1)
  {
    v0[30] = *(v0[7] + 112);
    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = PegasusNetworking.queries(requests:userId:);

    return PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled()();
  }

  else
  {
    v4 = v0[5];
    *v4 = MEMORY[0x277D84F90];
    v5 = v4 + *(type metadata accessor for AspireApiResponses(0) + 20);
    UnknownStorage.init()();
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[22];
    v9 = v0[20];
    v10 = v0[17];
    v11 = v0[14];
    v12 = v0[11];
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {
    v4 = v3[28];
    v5 = v3[25];
    v6 = v3[22];
    v7 = v3[20];
    v8 = v3[17];
    v9 = v3[14];
    v10 = v3[11];
    v11 = v3[8];

    v12 = v3[1];

    return v12();
  }

  else
  {
    v14 = v3[7];

    return MEMORY[0x2822009F8](PegasusNetworking.queries(requests:userId:), v14, 0);
  }
}

{
  v55 = v0[24];
  v1 = v0[21];
  v2 = v0[6];
  v60 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0[29], 0);
  v3 = v60;
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = *(v1 + 72);
  v6 = v0[32];
  v7 = v0[25];
  v8 = v0[22];
  outlined init with copy of PegasusNetworkingError(v2 + v4, v8, type metadata accessor for AspireApiRequest);
  *(swift_task_alloc() + 16) = v8;
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery and conformance Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery, MEMORY[0x277D39960]);
  static Message.with(_:)();
  if (v6)
  {
    v9 = v0[22];

    outlined destroy of AspireApiRequest(v9, type metadata accessor for AspireApiRequest);

    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[22];
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[14];
    v16 = v0[11];
    v17 = v0[8];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v58 = v5;
    v20 = v0[22];

    outlined destroy of AspireApiRequest(v20, type metadata accessor for AspireApiRequest);
    v22 = *(v60 + 16);
    v21 = *(v60 + 24);
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
      v3 = v60;
    }

    v23 = v0[29];
    v24 = v0[25];
    v25 = v0[23];
    *(v3 + 16) = v22 + 1;
    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v56 = *(v55 + 72);
    v26 = v3 + v57 + v56 * v22;
    v27 = *(v55 + 32);
    v27(v26, v24, v25);
    if (v23 != 1)
    {
      v37 = v2 + v5 + v4;
      v38 = 1;
      do
      {
        v39 = v0[25];
        v40 = v0[22];
        outlined init with copy of PegasusNetworkingError(v37, v40, type metadata accessor for AspireApiRequest);
        *(swift_task_alloc() + 16) = v40;
        static Message.with(_:)();
        v41 = v0[22];

        outlined destroy of AspireApiRequest(v41, type metadata accessor for AspireApiRequest);
        v43 = *(v3 + 16);
        v42 = *(v3 + 24);
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1);
        }

        ++v38;
        v44 = v0[29];
        v45 = v0[25];
        v46 = v0[23];
        *(v3 + 16) = v43 + 1;
        v27(v3 + v57 + v56 * v43, v45, v46);
        v37 += v58;
      }

      while (v38 != v44);
    }

    v28 = v0[28];
    v29 = v0[26];
    *(swift_task_alloc() + 16) = v3;
    lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest, MEMORY[0x277D39D80]);
    static Message.with(_:)();
    v0[33] = 0;

    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v30 = v0[6];
    v31 = type metadata accessor for Logger();
    v0[34] = __swift_project_value_buffer(v31, static Logger.networking);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[29];
      v35 = v0[6];
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      *(v36 + 4) = v34;

      _os_log_impl(&dword_224E26000, v32, v33, "Queries request with %{public}ld requests has started.", v36, 0xCu);
      MEMORY[0x22AA61F40](v36, -1, -1);
    }

    else
    {
      v47 = v0[6];
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10PegasusAPI67Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponseV0B3Kit10ProxyErrorOGMd, &_ss6ResultOy10PegasusAPI67Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponseV0B3Kit10ProxyErrorOGMR);
    v0[35] = v48;
    v49 = *(*(v48 - 8) + 64) + 15;
    v50 = swift_task_alloc();
    v0[36] = v50;
    v51 = *(MEMORY[0x277D39E90] + 4);
    v59 = (*MEMORY[0x277D39E90] + MEMORY[0x277D39E90]);
    v52 = swift_task_alloc();
    v0[37] = v52;
    *v52 = v0;
    v52[1] = PegasusNetworking.queries(requests:userId:);
    v53 = v0[30];
    v54 = v0[28];

    return v59(v50, v54);
  }
}

{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](PegasusNetworking.queries(requests:userId:), v2, 0);
}

{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = type metadata accessor for ProxyError();
  v4 = *(v3 - 8);
  v109 = *(v4 + 64) + 15;
  v5 = swift_task_alloc();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v108 = v4;
    v6 = *(v4 + 32);
    v6(v5, v1, v3);
    lazy protocol witness table accessor for type ProxyError and conformance ProxyError();
    swift_willThrowTypedImpl();
    v7 = swift_allocError();
    v6(v8, v5, v3);

LABEL_24:
    *(v0 + 32) = v7;
    v41 = swift_task_alloc();
    v42 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v43 = swift_dynamicCast();
    v44 = *(v0 + 272);
    v45 = v3;
    v46 = *(v0 + 48);
    if (v43)
    {

      v47 = swift_task_alloc();
      (*(v108 + 32))(v47, v41, v45);
      v48 = swift_task_alloc();
      v49 = *(v108 + 16);
      v120 = v47;
      v49(v48, v47, v45);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = *(v0 + 232);
        v115 = *(v0 + 48);
        v53 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *v53 = 134349314;
        *(v53 + 4) = v52;

        *(v53 + 12) = 2112;
        lazy protocol witness table accessor for type ProxyError and conformance ProxyError();
        swift_allocError();
        v49(v54, v48, v45);
        v55 = _swift_stdlib_bridgeErrorToNSError();
        v56 = *(v108 + 8);
        v56(v48, v45);
        v57 = v56;

        *(v53 + 14) = v55;
        *v116 = v55;
        _os_log_impl(&dword_224E26000, v50, v51, "Queries request with %{public}ld queries has finished with ProxyError '%@'.", v53, 0x16u);
        outlined destroy of NSObject?(v116);
        MEMORY[0x22AA61F40](v116, -1, -1);
        MEMORY[0x22AA61F40](v53, -1, -1);
      }

      else
      {
        v67 = *(v0 + 48);

        v68 = *(v108 + 8);
        v68(v48, v45);
        v57 = v68;
      }

      v70 = *(v0 + 216);
      v69 = *(v0 + 224);
      v71 = *(v0 + 208);
      type metadata accessor for NetworkManagerError(0);
      lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError);
      swift_allocError();
      *v72 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v57(v120, v45);
      (*(v70 + 8))(v69, v71);
    }

    else
    {

      v58 = v7;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = *(v0 + 232);
        v62 = *(v0 + 48);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 134349314;
        *(v63 + 4) = v61;

        *(v63 + 12) = 2112;
        v65 = v7;
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 14) = v66;
        *v64 = v66;
        _os_log_impl(&dword_224E26000, v59, v60, "Queries request with %{public}ld queries has finished with error '%@'.", v63, 0x16u);
        outlined destroy of NSObject?(v64);
        MEMORY[0x22AA61F40](v64, -1, -1);
        MEMORY[0x22AA61F40](v63, -1, -1);
      }

      else
      {
        v73 = *(v0 + 48);
      }

      v75 = *(v0 + 216);
      v74 = *(v0 + 224);
      v76 = *(v0 + 208);
      swift_willThrow();
      (*(v75 + 8))(v74, v76);
    }

    v77 = *(v0 + 224);
    v78 = *(v0 + 200);
    v79 = *(v0 + 176);
    v80 = *(v0 + 160);
    v81 = *(v0 + 136);
    v82 = *(v0 + 112);
    v83 = *(v0 + 88);
    v84 = *(v0 + 64);

    v85 = *(v0 + 8);
    goto LABEL_38;
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), v1, *(v0 + 144));

  v10 = MEMORY[0x22AA5F810](v9);
  v11 = *(v10 + 16);
  if (!v11)
  {

    v17 = 0;
    v35 = *(v0 + 264);
    v18 = MEMORY[0x277D84F90];
LABEL_34:
    v86 = *(v0 + 272);
    v87 = *(v0 + 48);

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = *(v0 + 232);
      v91 = *(v0 + 48);
      v92 = swift_slowAlloc();
      *v92 = 134349312;
      *(v92 + 4) = v90;

      *(v92 + 12) = 2048;
      *(v92 + 14) = v17;
      _os_log_impl(&dword_224E26000, v88, v89, "Queries request with %{public}ld requests has finished, length %ld bytes.", v92, 0x16u);
      MEMORY[0x22AA61F40](v92, -1, -1);
    }

    else
    {
      v93 = *(v0 + 48);
    }

    v94 = *(v0 + 216);
    v118 = *(v0 + 208);
    v121 = *(v0 + 224);
    v95 = *(v0 + 152);
    v96 = *(v0 + 160);
    v97 = *(v0 + 144);
    v98 = *(v0 + 40);
    type metadata accessor for AspireApiResponses(0);
    *(swift_task_alloc() + 16) = v18;
    lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses);
    static Message.with(_:)();

    (*(v95 + 8))(v96, v97);
    (*(v94 + 8))(v121, v118);
    v99 = *(v0 + 224);
    v100 = *(v0 + 200);
    v101 = *(v0 + 176);
    v102 = *(v0 + 160);
    v103 = *(v0 + 136);
    v104 = *(v0 + 112);
    v105 = *(v0 + 88);
    v106 = *(v0 + 64);

    v85 = *(v0 + 8);
LABEL_38:

    return v85();
  }

  v107 = v3;
  v108 = v4;
  v110 = *(v0 + 128);
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);
  v122 = MEMORY[0x277D84F90];
  v14 = v10;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  result = v14;
  v16 = 0;
  v17 = 0;
  v18 = v122;
  v117 = v14 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v119 = v12;
  v114 = (v13 + 8);
  v112 = (v12 + 8);
  v113 = v14;
  v7 = *(v0 + 264);
  v111 = v11;
  while (v16 < *(result + 16))
  {
    v19 = *(v0 + 88);
    v20 = *(v0 + 72);
    (*(v119 + 16))(*(v0 + 112), v117 + *(v119 + 72) * v16, *(v0 + 96));
    Apple_Parsec_Encryptedvisualsearch_V1_EVSResult.computeResponse.getter();
    v21 = Google_Protobuf_Any.value.getter();
    v23 = v22;
    result = (*v114)(v19, v20);
    v24 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v27 = *(v21 + 16);
        v26 = *(v21 + 24);
        v28 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (v28)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      LODWORD(v25) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_44;
      }

      v25 = v25;
    }

    else
    {
      v25 = BYTE6(v23);
    }

    v28 = __OFADD__(v17, v25);
    v17 += v25;
    if (v28)
    {
      goto LABEL_42;
    }

    v29 = *(v0 + 136);
    v30 = *(v0 + 120);
    v31 = *(v0 + 64);
    *(v0 + 16) = v21;
    *(v0 + 24) = v23;
    outlined copy of Data._Representation(v21, v23);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    if (v7)
    {
      v37 = *(v0 + 152);
      v36 = *(v0 + 160);
      v38 = *(v0 + 144);
      v39 = *(v0 + 112);
      v40 = *(v0 + 96);

      outlined consume of Data._Representation(v21, v23);
      (*v112)(v39, v40);
      (*(v37 + 8))(v36, v38);

      v3 = v107;
      goto LABEL_24;
    }

    (*v112)(*(v0 + 112), *(v0 + 96));
    outlined consume of Data._Representation(v21, v23);
    v33 = *(v122 + 16);
    v32 = *(v122 + 24);
    if (v33 >= v32 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
    }

    ++v16;
    v34 = *(v0 + 136);
    *(v122 + 16) = v33 + 1;
    outlined init with take of AspireApiResponse(v34, v122 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v33, type metadata accessor for AspireApiResponse);
    v7 = 0;
    result = v113;
    if (v111 == v16)
    {

      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in PegasusNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Protobuf_Any();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8[3] = type metadata accessor for AspireApiRequest(0);
  v8[4] = lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  outlined init with copy of PegasusNetworkingError(a2, boxed_opaque_existential_1, type metadata accessor for AspireApiRequest);
  defaultAnyTypeURLPrefix.getter();
  result = Google_Protobuf_Any.init(message:partial:typePrefix:)();
  if (!v2)
  {
    return Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery.computeRequest.setter();
  }

  return result;
}

uint64_t PegasusNetworking.uploadKeys(evaluationKeys:userId:)()
{
  return MEMORY[0x2822009F8](PegasusNetworking.uploadKeys(evaluationKeys:userId:), v0, 0);
}

{
  type metadata accessor for PegasusNetworkingError();
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type PegasusNetworkingError and conformance PegasusNetworkingError, type metadata accessor for PegasusNetworkingError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PegasusNetworking.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PegasusNetworking.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for NetworkManager.networkDelegationConfig.getter in conformance PegasusNetworking()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 128);

  return v1;
}

uint64_t protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return PegasusNetworking.fetchConfigs(useCases:userId:)(a1, a2);
}

uint64_t protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return PegasusNetworking.queries(requests:userId:)(a1, a2);
}

uint64_t Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D39CD0])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v12, "Unrecognized(");
    HIWORD(v12[1]) = -4864;
    v11[1] = v8;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA60A80](v9);

    MEMORY[0x22AA60A80](41, 0xE100000000000000);
    return v12[0];
  }

  else if (v7 == *MEMORY[0x277D39CC8])
  {
    return 0x6669636570736E55;
  }

  else if (v7 == *MEMORY[0x277D39CE0])
  {
    return 0xD000000000000014;
  }

  else if (v7 == *MEMORY[0x277D39CE8])
  {
    return 0xD000000000000016;
  }

  else if (v7 == *MEMORY[0x277D39CD8])
  {
    return 0x6574707972636E65;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0x6E776F6E6B6E55;
  }
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase and conformance Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase, MEMORY[0x277D39CF0]), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase and conformance Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase, MEMORY[0x277D39CF0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML19SymmetricPirKeywordVGMd, &_ss23_ContiguousArrayStorageCy8CipherML19SymmetricPirKeywordVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiSgGMd, &_ss23_ContiguousArrayStorageCySiSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type ProxyError and conformance ProxyError()
{
  result = lazy protocol witness table cache variable for type ProxyError and conformance ProxyError;
  if (!lazy protocol witness table cache variable for type ProxyError and conformance ProxyError)
  {
    type metadata accessor for ProxyError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxyError and conformance ProxyError);
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for AspireApiConfig(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v65 = *(a1 + 16);
  if (!v65)
  {
    goto LABEL_23;
  }

  v61 = v3;
  v62 = v8;
  v18 = a2;
  v19 = *(v14 + 48);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v64 = *(v15 + 72);
  v66 = a1;
  v60 = v20;
  outlined init with copy of (String, AspireApiConfig)(a1 + v20, &v59 - v16);
  v21 = v17[1];
  v69 = *v17;
  v22 = v69;
  v70 = v21;
  v63 = v19;
  outlined init with take of AspireApiResponse(v17 + v19, v11, type metadata accessor for AspireApiConfig);
  v23 = *a3;
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v24;
  if (v23[3] >= v28)
  {
    if (v18)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v29 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v18 & 1);
  v30 = *a3;
  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
  if ((v29 & 1) == (v32 & 1))
  {
    v25 = v31;
    if ((v29 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v36 = (v35[6] + 16 * v25);
      *v36 = v22;
      v36[1] = v21;
      v37 = v35[7];
      v62 = *(v62 + 72);
      outlined init with take of AspireApiResponse(v11, v37 + v62 * v25, type metadata accessor for AspireApiConfig);
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        v35[2] = v40;
        v41 = v66;
        if (v65 != 1)
        {
          v42 = v66 + v64 + v60;
          v43 = 1;
          while (v43 < *(v41 + 16))
          {
            outlined init with copy of (String, AspireApiConfig)(v42, v17);
            v44 = v17[1];
            v69 = *v17;
            v45 = v69;
            v70 = v44;
            outlined init with take of AspireApiResponse(v17 + v63, v11, type metadata accessor for AspireApiConfig);
            v46 = *a3;
            v47 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v44);
            v49 = v46[2];
            v50 = (v48 & 1) == 0;
            v39 = __OFADD__(v49, v50);
            v51 = v49 + v50;
            if (v39)
            {
              goto LABEL_24;
            }

            v52 = v48;
            if (v46[3] < v51)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, 1);
              v53 = *a3;
              v47 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v44);
              if ((v52 & 1) != (v54 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v52)
            {
              goto LABEL_10;
            }

            v55 = *a3;
            *(*a3 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v56 = (v55[6] + 16 * v47);
            *v56 = v45;
            v56[1] = v44;
            outlined init with take of AspireApiResponse(v11, v55[7] + v62 * v47, type metadata accessor for AspireApiConfig);
            v57 = v55[2];
            v39 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v39)
            {
              goto LABEL_25;
            }

            ++v43;
            v55[2] = v58;
            v42 += v64;
            v41 = v66;
            if (v65 == v43)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v33 = swift_allocError();
    swift_willThrow();
    v71 = v33;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      outlined destroy of AspireApiRequest(v11, type metadata accessor for AspireApiConfig);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x22AA60A80](0xD00000000000001BLL, 0x8000000225035BC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x22AA60A80](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of PegasusNetworkingError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #2 in PegasusNetworking.queries(requests:userId:)()
{
  v1 = *(v0 + 16);

  return Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest.usecases.setter();
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #4 in PegasusNetworking.queries(requests:userId:)(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t type metadata completion function for PegasusNetworkingError()
{
  result = type metadata accessor for ProxyError();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of PegasusNetworking.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of PegasusNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of PegasusNetworking.cancel()()
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

uint64_t dispatch thunk of PegasusNetworking.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v10(a1, a2);
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of (String, AspireApiConfig)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AspireApiResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AspireApiRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AspireNetworkManager.endpointUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireNetworkManager.authenticationToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken + 8);

  return v1;
}

uint64_t AspireNetworkManager.networkDelegationConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig + 8);

  return v1;
}

uint64_t AspireNetworkManager.featureId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId + 8);

  return v1;
}

uint64_t AspireNetworkManager.__allocating_init(endpointUrl:issuerUrl:authenticationToken:networkDelegationConfig:privacyProxyFailClosed:secondaryIdentifier:featureId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = a7;
  v59 = a3;
  v60 = a2;
  v61 = a1;
  v56 = a10;
  v57 = a11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v58 = &v52 - v18;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v54 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v52 - v25;
  v27 = *(v11 + 48);
  v28 = *(v11 + 52);
  v29 = swift_allocObject();
  v30 = a6;
  v31 = specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(a5, a6, a8, a9);

  type metadata accessor for ManagedURLSession();
  v32 = swift_allocObject();
  v33 = [objc_opt_self() sessionWithConfiguration_];

  *(v32 + 16) = v33;
  v34 = *(v20 + 16);
  v34(v29 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl, v61, v19);
  v35 = v55;
  v36 = (v29 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);
  *v36 = v59;
  v36[1] = a4;
  v37 = (v29 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
  *v37 = a5;
  v37[1] = v30;
  *(v29 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_privacyProxyFailClosed) = v35;
  if (a4)
  {
    v38 = a4;
    v53 = v32;
    v55 = v35 & 1;
    v39 = v58;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v60, v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v40 = *(v20 + 48);
    if (v40(v39, 1, v19) == 1)
    {
      v41 = v54;
      v34(v54, v61, v19);
      v42 = v40(v58, 1, v19);
      swift_bridgeObjectRetain_n();
      v43 = v42 == 1;
      v44 = v41;
      v32 = v53;
      if (!v43)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }

    else
    {
      v44 = v54;
      (*(v20 + 32))(v54, v58, v19);
      swift_bridgeObjectRetain_n();
      v32 = v53;
    }

    (*(v20 + 32))(v26, v44, v19);
    v46 = type metadata accessor for TokenFetcher(0);
    v47 = &v26[v46[5]];
    *v47 = v59;
    *(v47 + 1) = v38;
    *&v26[v46[6]] = v32;
    v26[v46[7]] = v55;
    (*(*(v46 - 1) + 56))(v26, 0, 1, v46);
  }

  else
  {
    v45 = type metadata accessor for TokenFetcher(0);
    (*(*(v45 - 8) + 56))(v26, 1, 1, v45);
  }

  v48 = v60;
  outlined init with take of TokenFetcher?(v26, v29 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher);
  v49 = (v29 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
  v50 = v57;
  *v49 = v56;
  v49[1] = v50;
  *(v29 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) = v32;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v20 + 8))(v61, v19);
  return v29;
}

uint64_t AspireNetworkManager.init(endpointUrl:issuerUrl:authenticationToken:networkDelegationConfig:privacyProxyFailClosed:secondaryIdentifier:featureId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a7;
  v55 = a3;
  v56 = a2;
  v57 = a1;
  v52 = a10;
  v53 = a11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v54 = &v48 - v18;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v49 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v48 - v25;
  v27 = a6;
  v28 = specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(a5, a6, a8, a9);

  type metadata accessor for ManagedURLSession();
  v29 = swift_allocObject();
  v30 = [objc_opt_self() sessionWithConfiguration_];

  v51 = v29;
  *(v29 + 16) = v30;
  v31 = *(v20 + 16);
  v31(v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl, v57, v19);
  v32 = v50;
  v33 = (v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);
  *v33 = v55;
  v33[1] = a4;
  v34 = (v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
  *v34 = a5;
  v34[1] = v27;
  *(v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_privacyProxyFailClosed) = v32;
  if (a4)
  {
    v35 = a4;
    v50 = v32 & 1;
    v36 = v54;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v56, v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v37 = *(v20 + 48);
    if (v37(v36, 1, v19) == 1)
    {
      v38 = v49;
      v31(v49, v57, v19);
      v39 = v37(v54, 1, v19);
      swift_bridgeObjectRetain_n();
      if (v39 != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }

    else
    {
      v38 = v49;
      (*(v20 + 32))(v49, v54, v19);
      swift_bridgeObjectRetain_n();
    }

    (*(v20 + 32))(v26, v38, v19);
    v43 = type metadata accessor for TokenFetcher(0);
    v44 = &v26[v43[5]];
    *v44 = v55;
    *(v44 + 1) = v35;
    v42 = v51;
    *&v26[v43[6]] = v51;
    v26[v43[7]] = v50;
    (*(*(v43 - 1) + 56))(v26, 0, 1, v43);

    v41 = v56;
  }

  else
  {
    v40 = type metadata accessor for TokenFetcher(0);
    (*(*(v40 - 8) + 56))(v26, 1, 1, v40);
    v41 = v56;
    v42 = v51;
  }

  outlined init with take of TokenFetcher?(v26, v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher);
  v45 = (v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
  v46 = v53;
  *v45 = v52;
  v45[1] = v46;
  *(v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) = v42;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v20 + 8))(v57, v19);
  return v11;
}

uint64_t AspireNetworkManager.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v6 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[29] = v7;
  v8 = *(v7 - 8);
  v4[30] = v8;
  v9 = *(v8 + 64) + 15;
  v4[31] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v11 = type metadata accessor for TokenFetcher(0);
  v4[33] = v11;
  v12 = *(v11 - 8);
  v4[34] = v12;
  v13 = *(v12 + 64) + 15;
  v4[35] = swift_task_alloc();
  v14 = type metadata accessor for URL.DirectoryHint();
  v4[36] = v14;
  v15 = *(v14 - 8);
  v4[37] = v15;
  v16 = *(v15 + 64) + 15;
  v4[38] = swift_task_alloc();
  v17 = type metadata accessor for URL();
  v4[39] = v17;
  v18 = *(v17 - 8);
  v4[40] = v18;
  v19 = *(v18 + 64) + 15;
  v4[41] = swift_task_alloc();
  v20 = type metadata accessor for URLRequest();
  v4[42] = v20;
  v21 = *(v20 - 8);
  v4[43] = v21;
  v22 = *(v21 + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v23 = type metadata accessor for AspireApiConfigRequest(0);
  v4[46] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v4[47] = swift_task_alloc();
  v25 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](AspireNetworkManager.fetchConfigs(useCases:userId:), 0, 0);
}

{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *(*v4 + 472);
  v11 = *v4;
  v5[60] = a1;
  v5[61] = a2;
  v5[62] = a3;
  v5[63] = v3;

  if (v3)
  {
    v7 = AspireNetworkManager.fetchConfigs(useCases:userId:);
  }

  else
  {
    v7 = AspireNetworkManager.fetchConfigs(useCases:userId:);
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t AspireNetworkManager.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 432);
  v14 = *v3;
  *(*v3 + 440) = v2;

  if (v2)
  {
    v9 = v6[48];
    v8 = v6[49];

    v10 = AspireNetworkManager.fetchConfigs(useCases:userId:);
  }

  else
  {
    v6[56] = a2;
    v6[57] = a1;
    v10 = AspireNetworkManager.fetchConfigs(useCases:userId:);
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t AspireNetworkManager.fetchConfigs(useCases:userId:)()
{
  v72 = v0;
  v71 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 416);
  v4 = *(v0 + 352);
  v67 = *(v0 + 280);
  _StringGuts.grow(_:)(21);

  v70.value._countAndFlagsBits = 0xD000000000000013;
  v70.value._object = 0x8000000225035BE0;
  *(v0 + 88) = Data.base64EncodedString(options:)(0);
  *(v0 + 104) = 43;
  *(v0 + 112) = 0xE100000000000000;
  *(v0 + 120) = 45;
  *(v0 + 128) = 0xE100000000000000;
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  *(v0 + 136) = v5;
  *(v0 + 144) = v7;
  *(v0 + 152) = 47;
  *(v0 + 160) = 0xE100000000000000;
  *(v0 + 168) = 95;
  *(v0 + 176) = 0xE100000000000000;
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v10 = v9;

  MEMORY[0x22AA60A80](v8, v10);

  v11._countAndFlagsBits = 0x7A69726F68747541;
  v11._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v70, v11);

  outlined consume of Data._Representation(v1, v2);
  outlined destroy of AspireApiConfigRequest(v67, type metadata accessor for TokenFetcher);
  v12 = *(v0 + 424);
  v14 = *(v0 + 400);
  v13 = *(v0 + 408);
  v65 = *(v0 + 360);
  v68 = *(v0 + 392);
  v15 = *(v0 + 352);
  v16 = *(v0 + 344);
  v64 = *(v0 + 336);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  URLRequest.httpMethod.setter();
  outlined copy of Data._Representation(v14, v13);
  URLRequest.httpBody.setter();

  (*(v17 + 8))(v18, v19);
  (*(v16 + 32))(v65, v15, v64);
  v20 = *(v68 + 16);
  v21 = *(v0 + 392);
  if (v20)
  {
    v70.value._countAndFlagsBits = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    countAndFlagsBits = v70.value._countAndFlagsBits;
    v23 = (v21 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      outlined copy of Data._Representation(v24, *v23);
      v26 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v24, v25);
      v70.value._countAndFlagsBits = countAndFlagsBits;
      v28 = *(countAndFlagsBits + 16);
      v27 = *(countAndFlagsBits + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        countAndFlagsBits = v70.value._countAndFlagsBits;
      }

      v23 += 2;
      *(countAndFlagsBits + 16) = v28 + 1;
      *(countAndFlagsBits + 16 * v28 + 32) = v26;
      --v20;
    }

    while (v20);
    v29 = *(v0 + 392);
  }

  else
  {
    v30 = *(v0 + 392);

    countAndFlagsBits = MEMORY[0x277D84F90];
  }

  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 384);
  v33 = *(v0 + 240);
  v32 = *(v0 + 248);
  v34 = *(v0 + 232);
  v35 = *(v0 + 200);
  v36 = type metadata accessor for Logger();
  *(v0 + 464) = __swift_project_value_buffer(v36, static Logger.networking);
  (*(v33 + 16))(v32, v35, v34);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 384);
  v42 = *(v0 + 240);
  v41 = *(v0 + 248);
  v43 = *(v0 + 232);
  if (v39)
  {
    v44 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70.value._countAndFlagsBits = v69;
    *v44 = 136446723;
    v45 = MEMORY[0x22AA60B60](v40, MEMORY[0x277D837D0]);
    v66 = v38;
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v70.value._countAndFlagsBits);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2081;
    v49 = UUID.uuidString.getter();
    v51 = v50;
    (*(v42 + 8))(v41, v43);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v70.value._countAndFlagsBits);

    *(v44 + 14) = v52;
    *(v44 + 22) = 2082;
    v53 = MEMORY[0x22AA60B60](countAndFlagsBits, MEMORY[0x277D837D0]);
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v70.value._countAndFlagsBits);

    *(v44 + 24) = v56;
    _os_log_impl(&dword_224E26000, v37, v66, "Request to fetchConfigs has started for useCases '%{public}s', userId: '%{private}s', existingConfigIds: '%{public}s'", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v69, -1, -1);
    MEMORY[0x22AA61F40](v44, -1, -1);
  }

  else
  {
    v57 = *(v0 + 384);

    (*(v42 + 8))(v41, v43);
  }

  v58 = *(*(*(v0 + 208) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) + 16);
  v59 = *(MEMORY[0x277CC9D18] + 4);
  v60 = swift_task_alloc();
  *(v0 + 472) = v60;
  *v60 = v0;
  v60[1] = AspireNetworkManager.fetchConfigs(useCases:userId:);
  v61 = *(v0 + 360);
  v62 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28211ECF8](v61, 0);
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  v9 = *(v0 + 280);

  outlined destroy of AspireApiConfigRequest(v9, type metadata accessor for TokenFetcher);
  (*(v4 + 8))(v3, v5);
  (*(v8 + 8))(v6, v7);
  outlined consume of Data._Representation(v1, v2);
  v23 = *(v0 + 440);
  v10 = *(v0 + 376);
  v12 = *(v0 + 352);
  v11 = *(v0 + 360);
  v13 = *(v0 + 328);
  v14 = *(v0 + 304);
  v15 = *(v0 + 280);
  v17 = *(v0 + 248);
  v16 = *(v0 + 256);
  v18 = *(v0 + 216);
  v19 = *(v0 + 224);

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

{
  v76 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 496);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || [v2 statusCode] != 200)
  {
    v11 = *(v0 + 464);
    v12 = *(v0 + 496);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 496);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_224E26000, v13, v14, "Failed to fetch configs. %{public}@", v16, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v17, -1, -1);
      MEMORY[0x22AA61F40](v16, -1, -1);
    }

    v19 = *(v0 + 488);
    v20 = *(v0 + 480);
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v71 = *(v0 + 360);
    v73 = *(v0 + 496);
    v23 = *(v0 + 344);
    v69 = *(v0 + 336);
    v24 = *(v0 + 216);

    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    v26 = v25;
    static String.Encoding.utf8.getter();
    v27 = String.init(data:encoding:)();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v28)
    {
      v30 = v28;
    }

    *v26 = v29;
    v26[1] = v30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v22, v21);
    outlined consume of Data._Representation(v20, v19);

    (*(v23 + 8))(v71, v69);
    goto LABEL_26;
  }

  v3 = *(v0 + 464);
  outlined copy of Data._Representation(*(v0 + 480), *(v0 + 488));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 488);
  if (!v6)
  {
    outlined consume of Data._Representation(*(v0 + 480), *(v0 + 488));
    goto LABEL_24;
  }

  v8 = swift_slowAlloc();
  *v8 = 134349056;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v31 = *(*(v0 + 480) + 16);
    v32 = *(*(v0 + 480) + 24);
    v33 = __OFSUB__(v32, v31);
    v10 = v32 - v31;
    if (!v33)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    v34 = *(v0 + 480);
    v35 = *(v0 + 484);
    v33 = __OFSUB__(v35, v34);
    v36 = v35 - v34;
    if (v33)
    {
      __break(1u);
    }

    v10 = v36;
    goto LABEL_23;
  }

  if (v9)
  {
    goto LABEL_20;
  }

  v10 = *(v0 + 494);
LABEL_23:
  v38 = *(v0 + 480);
  v37 = *(v0 + 488);
  *(v8 + 4) = v10;
  v39 = v8;
  outlined consume of Data._Representation(v38, v37);
  _os_log_impl(&dword_224E26000, v4, v5, "Request to fetchConfigs has finished, response length: %{public}ld", v39, 0xCu);
  MEMORY[0x22AA61F40](v39, -1, -1);
LABEL_24:
  v40 = *(v0 + 504);
  v42 = *(v0 + 480);
  v41 = *(v0 + 488);
  v43 = *(v0 + 224);
  v44 = *(v0 + 184);

  type metadata accessor for AspireApiConfigResponse(0);
  *(v0 + 72) = v42;
  *(v0 + 80) = v41;
  outlined copy of Data._Representation(v42, v41);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v46 = *(v0 + 488);
  v45 = *(v0 + 496);
  v47 = *(v0 + 480);
  v49 = *(v0 + 400);
  v48 = *(v0 + 408);
  if (v40)
  {
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));

    outlined consume of Data._Representation(v47, v46);
    outlined consume of Data._Representation(v49, v48);
LABEL_26:
    v50 = *(v0 + 376);
    v52 = *(v0 + 352);
    v51 = *(v0 + 360);
    v53 = *(v0 + 328);
    v54 = *(v0 + 304);
    v55 = *(v0 + 280);
    v57 = *(v0 + 248);
    v56 = *(v0 + 256);
    v58 = *(v0 + 216);
    v59 = *(v0 + 224);

    v60 = *(v0 + 8);
    v61 = *MEMORY[0x277D85DE8];
    goto LABEL_27;
  }

  v63 = *(v0 + 376);
  v64 = *(v0 + 352);
  v65 = *(v0 + 328);
  v67 = *(v0 + 304);
  v68 = *(v0 + 280);
  v70 = *(v0 + 256);
  v72 = *(v0 + 248);
  v74 = *(v0 + 224);
  v75 = *(v0 + 216);
  (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));

  outlined consume of Data._Representation(v47, v46);
  outlined consume of Data._Representation(v49, v48);

  v60 = *(v0 + 8);
  v66 = *MEMORY[0x277D85DE8];
LABEL_27:

  return v60();
}

{
  v18 = *MEMORY[0x277D85DE8];
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  outlined consume of Data._Representation(v0[50], v0[51]);
  (*(v3 + 8))(v1, v2);
  v17 = v0[63];
  v4 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[41];
  v8 = v0[38];
  v9 = v0[35];
  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[27];
  v13 = v0[28];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t AspireNetworkManager.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for UUID();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for AspireApiEvaluationKeys(0);
  v3[22] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v10 = type metadata accessor for TokenFetcher(0);
  v3[25] = v10;
  v11 = *(v10 - 8);
  v3[26] = v11;
  v12 = *(v11 + 64) + 15;
  v3[27] = swift_task_alloc();
  v13 = type metadata accessor for URL.DirectoryHint();
  v3[28] = v13;
  v14 = *(v13 - 8);
  v3[29] = v14;
  v15 = *(v14 + 64) + 15;
  v3[30] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v3[31] = v16;
  v17 = *(v16 - 8);
  v3[32] = v17;
  v18 = *(v17 + 64) + 15;
  v3[33] = swift_task_alloc();
  v19 = type metadata accessor for URLRequest();
  v3[34] = v19;
  v20 = *(v19 - 8);
  v3[35] = v20;
  v21 = *(v20 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](AspireNetworkManager.uploadKeys(evaluationKeys:userId:), 0, 0);
}

{
  v6 = *v3;
  v7 = *(*v3 + 336);
  v8 = *v3;
  *(*v3 + 344) = v2;

  if (v2)
  {
    v9 = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  }

  else
  {
    *(v6 + 352) = a2;
    *(v6 + 360) = a1;
    v9 = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t AspireNetworkManager.uploadKeys(evaluationKeys:userId:)()
{
  v67 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 320);
  v4 = *(v0 + 288);
  v64 = *(v0 + 216);
  _StringGuts.grow(_:)(21);

  v66.value._countAndFlagsBits = 0xD000000000000013;
  v66.value._object = 0x8000000225035BE0;
  *(v0 + 32) = Data.base64EncodedString(options:)(0);
  *(v0 + 48) = 43;
  *(v0 + 56) = 0xE100000000000000;
  *(v0 + 64) = 45;
  *(v0 + 72) = 0xE100000000000000;
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  *(v0 + 80) = v5;
  *(v0 + 88) = v7;
  *(v0 + 96) = 47;
  *(v0 + 104) = 0xE100000000000000;
  *(v0 + 112) = 95;
  *(v0 + 120) = 0xE100000000000000;
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v10 = v9;

  MEMORY[0x22AA60A80](v8, v10);

  v11._countAndFlagsBits = 0x7A69726F68747541;
  v11._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v66, v11);

  outlined consume of Data._Representation(v1, v2);
  outlined destroy of AspireApiConfigRequest(v64, type metadata accessor for TokenFetcher);
  v12 = *(v0 + 328);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v65 = *(v0 + 296);
  v15 = *(v0 + 288);
  v16 = *(v0 + 272);
  v17 = *(v0 + 280);
  v18 = *(v0 + 256);
  v19 = *(v0 + 264);
  v20 = *(v0 + 248);
  URLRequest.httpMethod.setter();
  outlined copy of Data._Representation(v14, v13);
  URLRequest.httpBody.setter();

  (*(v18 + 8))(v19, v20);
  (*(v17 + 32))(v65, v15, v16);
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 304);
  v22 = *(v0 + 312);
  v23 = *(v0 + 184);
  v25 = *(v0 + 160);
  v24 = *(v0 + 168);
  v26 = *(v0 + 152);
  v28 = *(v0 + 128);
  v27 = *(v0 + 136);
  v29 = type metadata accessor for Logger();
  *(v0 + 368) = __swift_project_value_buffer(v29, static Logger.networking);
  outlined init with copy of AspireApiEvaluationKeys(v28, v23, type metadata accessor for AspireApiEvaluationKeys);
  (*(v25 + 16))(v24, v27, v26);
  outlined copy of Data._Representation(v21, v22);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 312);
  if (!v32)
  {
    v42 = *(v0 + 304);
    v44 = *(v0 + 160);
    v43 = *(v0 + 168);
    v45 = *(v0 + 152);
    outlined destroy of AspireApiConfigRequest(*(v0 + 184), type metadata accessor for AspireApiEvaluationKeys);
    outlined consume of Data._Representation(v42, v33);

    (*(v44 + 8))(v43, v45);
    goto LABEL_16;
  }

  v34 = *(v0 + 184);
  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v66.value._countAndFlagsBits = v36;
  *v35 = 134349571;
  v37 = *(*v34 + 16);
  v38 = outlined destroy of AspireApiConfigRequest(v34, type metadata accessor for AspireApiEvaluationKeys);
  *(v35 + 4) = v37;
  *(v35 + 12) = 2050;
  v40 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v40 != 2)
    {
      v41 = 0;
      goto LABEL_15;
    }

    v46 = *(*(v0 + 304) + 16);
    v47 = *(*(v0 + 304) + 24);
    v48 = __OFSUB__(v47, v46);
    v41 = v47 - v46;
    if (!v48)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v49 = *(v0 + 304);
    v50 = *(v0 + 308);
    v48 = __OFSUB__(v50, v49);
    LODWORD(v41) = v50 - v49;
    if (v48)
    {
      __break(1u);
      return MEMORY[0x28211ECF8](v38, v39);
    }

    v41 = v41;
    goto LABEL_15;
  }

  if (v40)
  {
    goto LABEL_12;
  }

  v41 = *(v0 + 318);
LABEL_15:
  v51 = *(v0 + 304);
  v52 = *(v0 + 312);
  v54 = *(v0 + 160);
  v53 = *(v0 + 168);
  v55 = *(v0 + 152);
  *(v35 + 14) = v41;
  outlined consume of Data._Representation(v51, v52);
  *(v35 + 22) = 2081;
  v56 = UUID.uuidString.getter();
  v58 = v57;
  (*(v54 + 8))(v53, v55);
  v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v66.value._countAndFlagsBits);

  *(v35 + 24) = v59;
  _os_log_impl(&dword_224E26000, v30, v31, "Request to uploadKeys has started for %{public}ld key(s) with %{public}ld bytes for userId: '%{private}s'", v35, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v36);
  MEMORY[0x22AA61F40](v36, -1, -1);
  MEMORY[0x22AA61F40](v35, -1, -1);

LABEL_16:
  v60 = *(*(*(v0 + 144) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) + 16);
  v61 = *(MEMORY[0x277CC9D18] + 4);
  v62 = swift_task_alloc();
  *(v0 + 376) = v62;
  *v62 = v0;
  v62[1] = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  v38 = *(v0 + 296);
  v39 = 0;

  return MEMORY[0x28211ECF8](v38, v39);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 216);

  outlined destroy of AspireApiConfigRequest(v9, type metadata accessor for TokenFetcher);
  (*(v4 + 8))(v3, v5);
  (*(v8 + 8))(v6, v7);
  outlined consume of Data._Representation(v1, v2);
  v10 = *(v0 + 344);
  v12 = *(v0 + 288);
  v11 = *(v0 + 296);
  v13 = *(v0 + 264);
  v14 = *(v0 + 240);
  v15 = *(v0 + 216);
  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  v18 = *(v0 + 168);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = *(v0 + 368);
  outlined copy of Data._Representation(*(v0 + 384), *(v0 + 392));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 392);
  if (!v4)
  {
    outlined consume of Data._Representation(*(v0 + 384), *(v0 + 392));
    goto LABEL_14;
  }

  result = swift_slowAlloc();
  *result = 134349056;
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v8 = 0;
      goto LABEL_13;
    }

    v9 = *(*(v0 + 384) + 16);
    v10 = *(*(v0 + 384) + 24);
    v11 = __OFSUB__(v10, v9);
    v8 = v10 - v9;
    if (!v11)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    v12 = *(v0 + 384);
    v13 = *(v0 + 388);
    v11 = __OFSUB__(v13, v12);
    v14 = v13 - v12;
    if (v11)
    {
      __break(1u);
      return result;
    }

    v8 = v14;
    goto LABEL_13;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  v8 = *(v0 + 398);
LABEL_13:
  v16 = *(v0 + 384);
  v15 = *(v0 + 392);
  *(result + 4) = v8;
  v17 = result;
  outlined consume of Data._Representation(v16, v15);
  _os_log_impl(&dword_224E26000, v2, v3, "Request to uploadKeys has finished, response length: %{public}ld", v17, 0xCu);
  MEMORY[0x22AA61F40](v17, -1, -1);
LABEL_14:
  v18 = *(v0 + 400);

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19 && [v19 statusCode] == 200)
  {
    v20 = *(v0 + 392);
    v21 = *(v0 + 400);
    v22 = *(v0 + 384);
    v24 = *(v0 + 304);
    v23 = *(v0 + 312);
    v25 = *(v0 + 288);
    v26 = *(v0 + 264);
    v27 = *(v0 + 240);
    v28 = *(v0 + 216);
    v53 = *(v0 + 192);
    v54 = *(v0 + 184);
    v55 = *(v0 + 168);
    (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
    outlined consume of Data._Representation(v24, v23);
    outlined consume of Data._Representation(v22, v20);

    v29 = *(v0 + 8);
  }

  else
  {
    v30 = *(v0 + 368);
    v31 = *(v0 + 400);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 400);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      *(v35 + 4) = v34;
      *v36 = v34;
      v37 = v34;
      _os_log_impl(&dword_224E26000, v32, v33, "Failed to upload keys. %{public}@", v35, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v36, -1, -1);
      MEMORY[0x22AA61F40](v35, -1, -1);
    }

    v39 = *(v0 + 392);
    v38 = *(v0 + 400);
    v40 = *(v0 + 384);
    v42 = *(v0 + 304);
    v41 = *(v0 + 312);
    v56 = *(v0 + 296);
    v43 = *(v0 + 272);
    v44 = *(v0 + 280);

    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined consume of Data._Representation(v40, v39);
    outlined consume of Data._Representation(v42, v41);
    (*(v44 + 8))(v56, v43);
    v46 = *(v0 + 288);
    v45 = *(v0 + 296);
    v47 = *(v0 + 264);
    v48 = *(v0 + 240);
    v49 = *(v0 + 216);
    v51 = *(v0 + 184);
    v50 = *(v0 + 192);
    v52 = *(v0 + 168);

    v29 = *(v0 + 8);
  }

  return v29();
}

{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  outlined consume of Data._Representation(v0[38], v0[39]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[51];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[33];
  v8 = v0[30];
  v9 = v0[27];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[21];

  v13 = v0[1];

  return v13();
}

uint64_t AspireNetworkManager.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 376);
  v9 = *v4;
  v5[48] = a1;
  v5[49] = a2;
  v5[50] = a3;
  v5[51] = v3;

  if (v3)
  {
    v7 = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  }

  else
  {
    v7 = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t AspireNetworkManager.queries(requests:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v7 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  v4[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v9 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v4[29] = v9;
  v10 = *(v9 - 8);
  v4[30] = v10;
  v11 = *(v10 + 64) + 15;
  v4[31] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorVSgMd, &_s8CipherML14AspireApiErrorVSgMR) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v14 = type metadata accessor for AspireApiError(0);
  v4[36] = v14;
  v15 = *(v14 - 8);
  v4[37] = v15;
  v16 = *(v15 + 64) + 15;
  v4[38] = swift_task_alloc();
  v17 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v4[41] = v18;
  v19 = *(v18 - 8);
  v4[42] = v19;
  v20 = *(v19 + 64) + 15;
  v4[43] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR) - 8) + 64) + 15;
  v4[44] = swift_task_alloc();
  v22 = type metadata accessor for TokenFetcher(0);
  v4[45] = v22;
  v23 = *(v22 - 8);
  v4[46] = v23;
  v24 = *(v23 + 64) + 15;
  v4[47] = swift_task_alloc();
  v25 = type metadata accessor for URL.DirectoryHint();
  v4[48] = v25;
  v26 = *(v25 - 8);
  v4[49] = v26;
  v27 = *(v26 + 64) + 15;
  v4[50] = swift_task_alloc();
  v28 = type metadata accessor for URL();
  v4[51] = v28;
  v29 = *(v28 - 8);
  v4[52] = v29;
  v30 = *(v29 + 64) + 15;
  v4[53] = swift_task_alloc();
  v31 = type metadata accessor for URLRequest();
  v4[54] = v31;
  v32 = *(v31 - 8);
  v4[55] = v32;
  v33 = *(v32 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v34 = type metadata accessor for AspireApiRequests(0);
  v4[58] = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  v4[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](AspireNetworkManager.queries(requests:userId:), 0, 0);
}

{
  v5 = *v4;
  v6 = *(*v4 + 552);
  v9 = *v4;
  v5[70] = a1;
  v5[71] = a2;
  v5[72] = a3;
  v5[73] = v3;

  if (v3)
  {
    v7 = AspireNetworkManager.queries(requests:userId:);
  }

  else
  {
    v7 = AspireNetworkManager.queries(requests:userId:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t AspireNetworkManager.queries(requests:userId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 512);
  v8 = *v3;
  *(*v3 + 520) = v2;

  if (v2)
  {
    v9 = AspireNetworkManager.queries(requests:userId:);
  }

  else
  {
    *(v6 + 528) = a2;
    *(v6 + 536) = a1;
    v9 = AspireNetworkManager.queries(requests:userId:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t AspireNetworkManager.queries(requests:userId:)()
{
  v65 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 496);
  v4 = *(v0 + 448);
  v61 = *(v0 + 376);
  _StringGuts.grow(_:)(21);

  v64.value._countAndFlagsBits = 0xD000000000000013;
  v64.value._object = 0x8000000225035BE0;
  *(v0 + 64) = Data.base64EncodedString(options:)(0);
  *(v0 + 80) = 43;
  *(v0 + 88) = 0xE100000000000000;
  *(v0 + 96) = 45;
  *(v0 + 104) = 0xE100000000000000;
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  *(v0 + 112) = v5;
  *(v0 + 120) = v7;
  *(v0 + 128) = 47;
  *(v0 + 136) = 0xE100000000000000;
  *(v0 + 144) = 95;
  *(v0 + 152) = 0xE100000000000000;
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v10 = v9;

  MEMORY[0x22AA60A80](v8, v10);

  v11._countAndFlagsBits = 0x7A69726F68747541;
  v11._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v64, v11);

  outlined consume of Data._Representation(v1, v2);
  outlined destroy of AspireApiConfigRequest(v61, type metadata accessor for TokenFetcher);
  v12 = *(v0 + 504);
  v14 = *(v0 + 480);
  v13 = *(v0 + 488);
  v62 = *(v0 + 456);
  v15 = *(v0 + 448);
  v16 = *(v0 + 432);
  v17 = *(v0 + 440);
  v18 = *(v0 + 416);
  v19 = *(v0 + 424);
  v20 = *(v0 + 408);
  URLRequest.httpMethod.setter();
  outlined copy of Data._Representation(v14, v13);
  URLRequest.httpBody.setter();

  (*(v18 + 8))(v19, v20);
  (*(v17 + 32))(v62, v15, v16);
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 480);
  v22 = *(v0 + 488);
  v24 = *(v0 + 336);
  v23 = *(v0 + 344);
  v25 = *(v0 + 328);
  v26 = *(v0 + 176);
  v27 = type metadata accessor for Logger();
  *(v0 + 544) = __swift_project_value_buffer(v27, static Logger.networking);
  (*(v24 + 16))(v23, v26, v25);
  outlined copy of Data._Representation(v21, v22);
  outlined copy of Data._Representation(v21, v22);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 488);
  if (!v30)
  {
    v45 = *(v0 + 480);
    v47 = *(v0 + 336);
    v46 = *(v0 + 344);
    v48 = *(v0 + 328);
    outlined consume of Data._Representation(v45, *(v0 + 488));
    outlined consume of Data._Representation(v45, v31);

    (*(v47 + 8))(v46, v48);
    goto LABEL_16;
  }

  v33 = *(v0 + 336);
  v32 = *(v0 + 344);
  v34 = *(v0 + 328);
  v35 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v64.value._countAndFlagsBits = v63;
  *v35 = 136380931;
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v33 + 8))(v32, v34);
  v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v64.value._countAndFlagsBits);

  *(v35 + 4) = v39;
  *(v35 + 12) = 2050;
  v40 = v31 >> 62;
  v41 = *(v0 + 480);
  v42 = *(v0 + 488);
  if ((v31 >> 62) > 1)
  {
    if (v40 != 2)
    {
      outlined consume of Data._Representation(v41, v42);
      v44 = 0;
      goto LABEL_15;
    }

    v50 = *(v41 + 16);
    v49 = *(v41 + 24);
    v41 = outlined consume of Data._Representation(v41, v42);
    v44 = v49 - v50;
    if (!__OFSUB__(v49, v50))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v51 = HIDWORD(v41);
    v52 = v41;
    v53 = outlined consume of Data._Representation(v41, v42);
    LODWORD(v44) = v51 - v52;
    if (__OFSUB__(v51, v52))
    {
      __break(1u);
      return MEMORY[0x28211ECF8](v53, v54);
    }

    v44 = v44;
    goto LABEL_15;
  }

  if (v40)
  {
    goto LABEL_12;
  }

  v43 = *(v0 + 488);
  outlined consume of Data._Representation(v41, v42);
  v44 = BYTE6(v43);
LABEL_15:
  v55 = *(v0 + 480);
  v56 = *(v0 + 488);
  *(v35 + 14) = v44;
  outlined consume of Data._Representation(v55, v56);
  _os_log_impl(&dword_224E26000, v28, v29, "Request to queries-batch has started for userId: '%{private}s', length: %{public}ld", v35, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v63);
  MEMORY[0x22AA61F40](v63, -1, -1);
  MEMORY[0x22AA61F40](v35, -1, -1);

LABEL_16:
  v57 = *(*(*(v0 + 184) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) + 16);
  v58 = *(MEMORY[0x277CC9D18] + 4);
  v59 = swift_task_alloc();
  *(v0 + 552) = v59;
  *v59 = v0;
  v59[1] = AspireNetworkManager.queries(requests:userId:);
  v53 = *(v0 + 456);
  v54 = 0;

  return MEMORY[0x28211ECF8](v53, v54);
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = *(v0 + 440);
  v3 = *(v0 + 448);
  v6 = *(v0 + 424);
  v5 = *(v0 + 432);
  v7 = *(v0 + 408);
  v8 = *(v0 + 416);
  v9 = *(v0 + 376);

  outlined destroy of AspireApiConfigRequest(v9, type metadata accessor for TokenFetcher);
  (*(v4 + 8))(v3, v5);
  (*(v8 + 8))(v6, v7);
  outlined consume of Data._Representation(v1, v2);
  v32 = *(v0 + 520);
  v10 = *(v0 + 472);
  v11 = *(v0 + 448);
  v12 = *(v0 + 456);
  v13 = *(v0 + 424);
  v14 = *(v0 + 400);
  v15 = *(v0 + 376);
  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  v22 = *(v0 + 304);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);
  v26 = *(v0 + 256);
  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 208);
  v30 = *(v0 + 200);
  v31 = *(v0 + 192);

  v20 = *(v0 + 8);

  return v20();
}

{
  v186 = v0;
  v1 = *(v0 + 544);
  outlined copy of Data._Representation(*(v0 + 560), *(v0 + 568));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 568);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    v7 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v7 != 2)
      {
        v8 = 0;
        goto LABEL_13;
      }

      v9 = *(*(v0 + 560) + 16);
      v10 = *(*(v0 + 560) + 24);
      v11 = __OFSUB__(v10, v9);
      v8 = v10 - v9;
      if (!v11)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v7)
    {
      v8 = *(v0 + 574);
LABEL_13:
      v15 = *(v0 + 568);
      v16 = *(v0 + 560);
      *(v6 + 4) = v8;
      v17 = v6;
      outlined consume of Data._Representation(v16, v15);
      _os_log_impl(&dword_224E26000, v2, v3, "Request to queries-batch has finished response, length: %{public}ld", v17, 0xCu);
      MEMORY[0x22AA61F40](v17, -1, -1);
      goto LABEL_14;
    }

    v12 = *(v0 + 560);
    v13 = *(v0 + 564);
    v11 = __OFSUB__(v13, v12);
    v14 = v13 - v12;
    if (v11)
    {
      __break(1u);
      goto LABEL_63;
    }

    v8 = v14;
    goto LABEL_13;
  }

  outlined consume of Data._Representation(*(v0 + 560), *(v0 + 568));
LABEL_14:
  v18 = *(v0 + 576);

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19 || [v19 statusCode] != 200)
  {
    v30 = *(v0 + 544);
    v31 = *(v0 + 576);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 576);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      *(v35 + 4) = v34;
      *v36 = v34;
      v37 = v34;
      _os_log_impl(&dword_224E26000, v32, v33, "Failed to query. %{public}@", v35, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v36, -1, -1);
      MEMORY[0x22AA61F40](v35, -1, -1);
    }

    v38 = *(v0 + 584);
    v39 = *(v0 + 568);
    v40 = *(v0 + 560);
    v41 = *(v0 + 312);
    v43 = *(v0 + 280);
    v42 = *(v0 + 288);

    *(v0 + 32) = v40;
    *(v0 + 40) = v39;
    v185 = 0;
    v183 = 0u;
    v184 = 0u;
    outlined copy of Data._Representation(v40, v39);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type AspireApiError and conformance AspireApiError, type metadata accessor for AspireApiError);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v44 = *(v0 + 288);
    v45 = *(v0 + 296);
    v46 = *(v0 + 280);
    if (v38)
    {
      v47 = *(v0 + 568);
      v48 = *(v0 + 560);
      v49 = *(v0 + 192);

      (*(v45 + 56))(v46, 1, 1, v44);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML14AspireApiErrorVSgMd, &_s8CipherML14AspireApiErrorVSgMR);
      type metadata accessor for CipherMLError();
      lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      v51 = v50;
      static String.Encoding.utf8.getter();
      countAndFlagsBits = String.init(data:encoding:)();
      if (!object)
      {
        v54 = *(v0 + 568);
        v55 = *(v0 + 560);
        v56 = Data.base64EncodedString(options:)(0);
        object = v56._object;
        countAndFlagsBits = v56._countAndFlagsBits;
      }

      v57 = *(v0 + 576);
      v58 = *(v0 + 568);
      v59 = *(v0 + 560);
      v61 = *(v0 + 480);
      v60 = *(v0 + 488);
      v176 = *(v0 + 456);
      v62 = *(v0 + 432);
      v63 = *(v0 + 440);
      *v51 = countAndFlagsBits;
      v51[1] = object;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      outlined consume of Data._Representation(v59, v58);
      outlined consume of Data._Representation(v61, v60);
      (*(v63 + 8))(v176, v62);
      goto LABEL_53;
    }

    v64 = *(v0 + 304);
    v65 = *(v0 + 272);
    v66 = *(v0 + 232);
    v67 = *(v0 + 240);
    (*(v45 + 56))(*(v0 + 280), 0, 1, *(v0 + 288));
    outlined init with take of TokenFetcher(v46, v64, type metadata accessor for AspireApiError);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v64, v65, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v5 = *(v67 + 48);
    v68 = (v5)(v65, 1, v66);
    v69 = *(v0 + 272);
    if (v68 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v69, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
      v70 = 0x8000000225035C00;
      v71 = 0xD000000000000015;
      goto LABEL_42;
    }

    v72 = *(v0 + 232);
    outlined init with copy of AspireApiEvaluationKeys(v69, *(v0 + 248), type metadata accessor for AspireApiError.OneOf_ErrorType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (one-time initialization token for protoMessageName != -1)
        {
          swift_once();
        }

        v74 = &static AspireApiError.InvalidRequest.protoMessageName;
      }

      else
      {
        if (one-time initialization token for protoMessageName != -1)
        {
          swift_once();
        }

        v74 = &static AspireApiError.InternalError.protoMessageName;
      }

      goto LABEL_41;
    }

    if (EnumCaseMultiPayload)
    {
      if (one-time initialization token for protoMessageName != -1)
      {
        swift_once();
      }

      v74 = &static AspireApiError.EvaluationKeyNotFound.protoMessageName;
      goto LABEL_41;
    }

    if (one-time initialization token for protoMessageName == -1)
    {
LABEL_29:
      v74 = &static AspireApiError.ConfigVersionNotFound.protoMessageName;
LABEL_41:
      v79 = *(v0 + 272);
      v80 = *(v0 + 248);
      v71 = *v74;
      v70 = v74[1];

      outlined destroy of AspireApiConfigRequest(v80, type metadata accessor for AspireApiError.OneOf_ErrorType);
      outlined destroy of AspireApiConfigRequest(v79, type metadata accessor for AspireApiError.OneOf_ErrorType);
LABEL_42:
      v81 = *(v0 + 544);

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v183 = v85;
        *v84 = 136446210;
        *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v70, &v183);
        _os_log_impl(&dword_224E26000, v82, v83, "Received error of type: %{public}s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x22AA61F40](v85, -1, -1);
        MEMORY[0x22AA61F40](v84, -1, -1);
      }

      v86 = *(v0 + 264);
      v87 = *(v0 + 232);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), v86, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
      if ((v5)(v86, 1, v87) != 1)
      {
        v88 = *(v0 + 232);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 264), *(v0 + 256), &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
        v89 = swift_getEnumCaseMultiPayload();
        if (v89 == 1)
        {
          v107 = *(v0 + 576);
          v108 = *(v0 + 568);
          v109 = *(v0 + 560);
          v110 = *(v0 + 480);
          v111 = *(v0 + 488);
          v112 = *(v0 + 440);
          v163 = *(v0 + 432);
          v168 = *(v0 + 456);
          v113 = *(v0 + 304);
          v173 = *(v0 + 256);
          v179 = *(v0 + 264);

          type metadata accessor for NetworkManagerError(0);
          lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError);
          swift_allocError();
          *v114 = 1;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          outlined consume of Data._Representation(v109, v108);
          outlined consume of Data._Representation(v110, v111);
          outlined destroy of AspireApiConfigRequest(v113, type metadata accessor for AspireApiError);
          (*(v112 + 8))(v168, v163);
          outlined destroy of AspireApiConfigRequest(v173, type metadata accessor for AspireApiError.OneOf_ErrorType);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v179, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
          goto LABEL_53;
        }

        if (!v89)
        {
          v90 = *(v0 + 256);
          v91 = *(v0 + 216);
          v92 = *(v0 + 224);
          v93 = *(v0 + 208);

          outlined init with take of TokenFetcher(v90, v92, type metadata accessor for AspireApiError.ConfigVersionNotFound);
          v94 = *(v91 + 20);
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v92 + v94, v93, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
          v95 = type metadata accessor for AspireApiConfigResponse(0);
          v96 = *(*(v95 - 8) + 48);
          v97 = v96(v93, 1, v95);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v93, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
          type metadata accessor for NetworkManagerError(0);
          lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError);
          swift_allocError();
          v99 = v98;
          if (v97 != 1)
          {
            v131 = *(v0 + 200);
            outlined init with copy of AMDPbHEConfig.OneOf_Config?(v92 + v94, v131, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
            v132 = v96(v131, 1, v95);
            v133 = *(v0 + 200);
            if (v132 == 1)
            {
              v134 = MEMORY[0x277D84F90];
              *v99 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v99[1] = v134;
              v135 = v99 + *(v95 + 24);
              UnknownStorage.init()();
              if (v96(v133, 1, v95) != 1)
              {
                outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 200), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
              }
            }

            else
            {
              outlined init with take of TokenFetcher(*(v0 + 200), v99, type metadata accessor for AspireApiConfigResponse);
            }

            v136 = *(v0 + 576);
            v137 = *(v0 + 568);
            v138 = *(v0 + 560);
            v140 = *(v0 + 480);
            v139 = *(v0 + 488);
            v141 = *(v0 + 440);
            v170 = *(v0 + 432);
            v175 = *(v0 + 456);
            v165 = *(v0 + 304);
            v181 = *(v0 + 264);
            v142 = *(v0 + 224);
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            outlined consume of Data._Representation(v138, v137);
            outlined consume of Data._Representation(v140, v139);
            outlined destroy of AspireApiConfigRequest(v142, type metadata accessor for AspireApiError.ConfigVersionNotFound);
            outlined destroy of AspireApiConfigRequest(v165, type metadata accessor for AspireApiError);
            (*(v141 + 8))(v175, v170);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v181, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
            goto LABEL_53;
          }

          v100 = *(v0 + 576);
          v101 = *(v0 + 568);
          v102 = *(v0 + 560);
          v104 = *(v0 + 480);
          v103 = *(v0 + 488);
          v105 = *(v0 + 440);
          v167 = *(v0 + 432);
          v172 = *(v0 + 456);
          v162 = *(v0 + 304);
          v178 = *(v0 + 264);
          v106 = *(v0 + 224);
          *v98 = 1;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          outlined consume of Data._Representation(v102, v101);
          outlined consume of Data._Representation(v104, v103);
          outlined destroy of AspireApiConfigRequest(v106, type metadata accessor for AspireApiError.ConfigVersionNotFound);
          goto LABEL_52;
        }

        outlined destroy of AspireApiConfigRequest(*(v0 + 256), type metadata accessor for AspireApiError.OneOf_ErrorType);
      }

      v115 = *(v0 + 576);
      v116 = *(v0 + 568);
      v117 = *(v0 + 560);
      v118 = *(v0 + 480);
      v105 = *(v0 + 440);
      v167 = *(v0 + 432);
      v172 = *(v0 + 456);
      v159 = *(v0 + 488);
      v162 = *(v0 + 304);
      v178 = *(v0 + 264);
      type metadata accessor for CipherMLError();
      lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      *v119 = v71;
      v119[1] = v70;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      outlined consume of Data._Representation(v117, v116);
      outlined consume of Data._Representation(v118, v159);
LABEL_52:
      outlined destroy of AspireApiConfigRequest(v162, type metadata accessor for AspireApiError);
      (*(v105 + 8))(v172, v167);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v178, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
      goto LABEL_53;
    }

LABEL_63:
    swift_once();
    goto LABEL_29;
  }

  v20 = *(v0 + 584);
  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  v23 = *(v0 + 320);
  v24 = *(v0 + 160);
  type metadata accessor for AspireApiResponses(0);
  *(v0 + 48) = v22;
  *(v0 + 56) = v21;
  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  outlined copy of Data._Representation(v22, v21);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v25 = *(v0 + 576);
  v26 = *(v0 + 568);
  v27 = *(v0 + 560);
  v29 = *(v0 + 480);
  v28 = *(v0 + 488);
  if (!v20)
  {
    v75 = *(v0 + 472);
    v76 = *(v0 + 448);
    v77 = *(v0 + 424);
    v143 = *(v0 + 400);
    v144 = *(v0 + 376);
    v145 = *(v0 + 352);
    v146 = *(v0 + 344);
    v147 = *(v0 + 320);
    v148 = *(v0 + 312);
    v150 = *(v0 + 304);
    v152 = *(v0 + 280);
    v154 = *(v0 + 272);
    v156 = *(v0 + 264);
    v158 = *(v0 + 256);
    v161 = *(v0 + 248);
    v166 = *(v0 + 224);
    v171 = *(v0 + 208);
    v177 = *(v0 + 200);
    v182 = *(v0 + 192);
    (*(*(v0 + 440) + 8))(*(v0 + 456), *(v0 + 432));
    outlined consume of Data._Representation(v29, v28);
    outlined consume of Data._Representation(v27, v26);

    v78 = *(v0 + 8);
    goto LABEL_54;
  }

  (*(*(v0 + 440) + 8))(*(v0 + 456), *(v0 + 432));
  outlined consume of Data._Representation(v29, v28);
  outlined consume of Data._Representation(v27, v26);

LABEL_53:
  v120 = *(v0 + 472);
  v122 = *(v0 + 448);
  v121 = *(v0 + 456);
  v123 = *(v0 + 424);
  v124 = *(v0 + 400);
  v125 = *(v0 + 376);
  v127 = *(v0 + 344);
  v126 = *(v0 + 352);
  v129 = *(v0 + 312);
  v128 = *(v0 + 320);
  v149 = *(v0 + 304);
  v151 = *(v0 + 280);
  v153 = *(v0 + 272);
  v155 = *(v0 + 264);
  v157 = *(v0 + 256);
  v160 = *(v0 + 248);
  v164 = *(v0 + 224);
  v169 = *(v0 + 208);
  v174 = *(v0 + 200);
  v180 = *(v0 + 192);

  v78 = *(v0 + 8);
LABEL_54:

  return v78();
}

{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[55];
  outlined consume of Data._Representation(v0[60], v0[61]);
  (*(v3 + 8))(v1, v2);
  v26 = v0[73];
  v4 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[53];
  v8 = v0[50];
  v9 = v0[47];
  v11 = v0[43];
  v10 = v0[44];
  v13 = v0[39];
  v12 = v0[40];
  v16 = v0[38];
  v17 = v0[35];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[28];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[24];

  v14 = v0[1];

  return v14();
}

Swift::Void __swiftcall AspireNetworkManager.cancel()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) + 16);
  v4[4] = closure #1 in AspireNetworkManager.cancel();
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [NSURLSessionTask]) -> ();
  v4[3] = &block_descriptor;
  v2 = _Block_copy(v4);
  v3 = v1;
  [v3 getAllTasksWithCompletionHandler_];
  _Block_release(v2);
}

void closure #1 in AspireNetworkManager.cancel()(uint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v2 = MEMORY[0x22AA610B0](a1);
  if (v2)
  {
LABEL_3:
    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v2; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA60F70](i, v1);
        }

        else
        {
          v4 = *(v1 + 8 * i + 32);
        }

        v5 = v4;
        [v4 cancel];
      }
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [NSURLSessionTask]) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for NSURLSessionTask();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t AspireNetworkManager.deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig + 8);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  v5 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId + 8);

  v6 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession);

  return v0;
}

uint64_t AspireNetworkManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig + 8);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  v5 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId + 8);

  v6 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NetworkManager.networkDelegationConfig.getter in conformance AspireNetworkManager()
{
  v1 = (*v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance AspireNetworkManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return AspireNetworkManager.fetchConfigs(useCases:userId:)(a1, a2, a3);
}

uint64_t protocol witness for NetworkManager.uploadKeys(evaluationKeys:userId:) in conformance AspireNetworkManager(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return AspireNetworkManager.uploadKeys(evaluationKeys:userId:)(a1, a2);
}

uint64_t protocol witness for NetworkManager.queries(requests:userId:) in conformance AspireNetworkManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return AspireNetworkManager.queries(requests:userId:)(a1, a2, a3);
}

uint64_t protocol witness for NetworkManager.cancel() in conformance AspireNetworkManager()
{
  v8 = v1;
  v2 = *(*(*v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) + 16);
  v7[4] = closure #1 in AspireNetworkManager.cancel();
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [NSURLSessionTask]) -> ();
  v7[3] = &block_descriptor_14;
  v3 = _Block_copy(v7);
  v4 = v2;
  [v4 getAllTasksWithCompletionHandler_];
  _Block_release(v3);

  v5 = *(v1 + 8);

  return v5();
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t outlined init with take of TokenFetcher?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of AspireApiConfigRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TokenFetcher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AspireApiEvaluationKeys(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for AspireNetworkManager()
{
  result = type metadata singleton initialization cache for AspireNetworkManager;
  if (!type metadata singleton initialization cache for AspireNetworkManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AspireNetworkManager()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for TokenFetcher?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for TokenFetcher?()
{
  if (!lazy cache variable for type metadata for TokenFetcher?)
  {
    type metadata accessor for TokenFetcher(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TokenFetcher?);
    }
  }
}

unint64_t type metadata accessor for NSURLSessionTask()
{
  result = lazy cache variable for type metadata for NSURLSessionTask;
  if (!lazy cache variable for type metadata for NSURLSessionTask)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSURLSessionTask);
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t RequestsManager.keyStorage.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return swift_unknownObjectRetain();
}

uint64_t RequestsManager.currentTime.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t RequestsManager.allowList.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t RequestsManager.__allocating_init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v59 = a5;
  v60 = a2;
  v61 = *MEMORY[0x277D85DE8];
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v57 = v52 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v52 - v20;
  if (a1)
  {
    v8[2] = a1;
    v22 = a7;
    if (!v60)
    {
      goto LABEL_7;
    }

LABEL_11:

    v8[3] = v60;
    v8[4] = a3;
    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_12:
    swift_unknownObjectRetain();
    v37 = a4;
    goto LABEL_13;
  }

  v52[3] = v14;
  v54 = a3;
  v55 = a6;
  v56 = a4;
  if (one-time initialization token for cacheFile != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for URL();
  v24 = __swift_project_value_buffer(v23, static CacheDirectory.cacheFile);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v21, v24, v23);
  v53 = *(v25 + 56);
  v53(v21, 0, 1, v23);
  v22 = a7;
  v8[2] = specialized Cache.__allocating_init(cacheFile:)(v21);
  a6 = v55;
  a4 = v56;
  a3 = v54;
  if (v60)
  {
    goto LABEL_11;
  }

LABEL_7:
  type metadata accessor for KVSKeyStorage();
  v26 = swift_allocObject();

  swift_defaultActor_initialize();
  v27 = a4;
  v28 = a1;
  v29 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v30 = MEMORY[0x22AA609C0](0xD000000000000013, 0x8000000225035D00);
  v31 = [v29 initWithStoreIdentifier:v30 type:1];

  a1 = v28;
  a4 = v27;
  *(v26 + 112) = v31;
  v8[3] = v26;
  v8[4] = &protocol witness table for KVSKeyStorage;
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_8:
  v32 = one-time initialization token for activeUseCaseTrackerFile;
  swift_unknownObjectRetain();
  if (v32 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for URL();
  v34 = __swift_project_value_buffer(v33, static CacheDirectory.activeUseCaseTrackerFile);
  v35 = *(v33 - 8);
  v36 = v57;
  (*(v35 + 16))(v57, v34, v33);
  (*(v35 + 56))(v36, 0, 1, v33);
  v37 = specialized ActiveUseCaseTracker.__allocating_init(persistenceFile:)(v36);
LABEL_13:
  v8[5] = v37;
  if (v59)
  {
    v38 = v59;
  }

  else
  {

    v38 = specialized AllowList.__allocating_init()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy8CipherML9AllowListCSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy8CipherML9AllowListCSo16os_unfair_lock_sVGMR);
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 16) = v38;
  v8[6] = v39;
  v8[7] = a6;
  v8[8] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML11CoordinatorCySSytGMd, &_s8CipherML11CoordinatorCySSytGMR);
  v40 = swift_allocObject();
  swift_retain_n();

  swift_defaultActor_initialize();
  *(v40 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ScTyyts5Error_pGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v8[9] = v40;
  RequestsManager.loadDynamicAllowList()();
  if (v41)
  {
    v58 = a1;
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.daemon);
    v43 = v41;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138543362;
      v48 = v41;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_224E26000, v44, v45, "Failed to load dynamic allow list: %{public}@", v46, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v47, -1, -1);
      MEMORY[0x22AA61F40](v46, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v50 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t RequestsManager.keyRotation(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 48);

  v15 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));
  v8 = *(v2 + 40);
  v9 = *(v2 + 56);
  v12 = v2 + 64;
  v10 = *(v2 + 64);
  v11 = *(v12 + 8);
  type metadata accessor for KeyRotation();
  v13 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v13 + 224) = 0;
  *(v13 + 192) = 0u;
  *(v13 + 208) = 0u;
  *(v13 + 112) = v5;
  *(v13 + 120) = v15;
  *(v13 + 136) = v7;
  *(v13 + 144) = v8;
  *(v13 + 168) = a1;
  *(v13 + 176) = a2;
  *(v13 + 152) = v9;
  *(v13 + 160) = v10;
  *(v13 + 184) = v11;

  return v13;
}

uint64_t RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = type metadata accessor for AspireApiEvaluationKey(0);
  v6[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v9 = *(type metadata accessor for SecretKey() - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v11 = type metadata accessor for AspireApiKeyStatus(0);
  v6[19] = v11;
  v12 = *(v11 - 8);
  v6[20] = v12;
  v13 = *(v12 + 64) + 15;
  v6[21] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v15 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v6[25] = v15;
  v16 = *(v15 - 8);
  v6[26] = v16;
  v17 = *(v16 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v19 = type metadata accessor for UserIdentifier();
  v6[32] = v19;
  v20 = *(v19 - 8);
  v6[33] = v20;
  v21 = *(v20 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:), 0, 0);
}

uint64_t RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:)()
{
  v51 = v0;
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.daemon);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v50);
    _os_log_impl(&dword_224E26000, v3, v4, "rotateKeysOffline for use case %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = *(v0[13] + 48);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);

  os_unfair_lock_unlock((v9 + 24));
  v11 = *(v10 + 48);

  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v0[8], v0[9], MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:)), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v15 = *v14;
    v0[37] = *v14;
    v16 = v14[1];
    v0[38] = v16;

    os_unfair_lock_lock((v9 + 24));
    v17 = *(v9 + 16);

    os_unfair_lock_unlock((v9 + 24));
    v18 = *(v17 + 32);

    if (*(v18 + 16))
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v20)
      {
        v21 = v19;
        v22 = v0[36];
        v47 = v0[12];
        v49 = v0[13];
        v23 = v0[11];
        v24 = *(v18 + 56);
        v25 = type metadata accessor for UseCaseGroup();
        v26 = *(v25 - 8);
        outlined init with copy of UseCaseGroup(v24 + *(v26 + 72) * v21, v22, type metadata accessor for UseCaseGroup);

        (*(v26 + 56))(v22, 0, 1, v25);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
        v0[39] = RequestsManager.keyRotation(for:)(v23, v47);
        v27 = swift_task_alloc();
        v0[40] = v27;
        *v27 = v0;
        v27[1] = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
        v28 = v0[35];

        return KeyRotation.rotateUserId(groupName:)(v28, v15, v16);
      }
    }

    v30 = v0[36];

    v31 = type metadata accessor for UseCaseGroup();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  }

  else
  {
  }

  type metadata accessor for CipherMLError();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v33 = v0[35];
  v32 = v0[36];
  v34 = v0[34];
  v36 = v0[30];
  v35 = v0[31];
  v38 = v0[28];
  v37 = v0[29];
  v39 = v0[27];
  v40 = v0[23];
  v41 = v0[24];
  v43 = v0[22];
  v44 = v0[21];
  v45 = v0[18];
  v46 = v0[17];
  v48 = v0[15];

  v42 = v0[1];

  return v42();
}

{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 304);

    v5 = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  }

  else
  {
    v5 = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMd, &_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMR);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  *(v0 + 400) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 336) = v8;
  *(v8 + 16) = xmmword_225022960;
  outlined init with copy of UseCaseGroup(v3, v8 + v7, type metadata accessor for AspireApiKeyStatus);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022960;
  *(inited + 32) = v4;
  *(inited + 40) = v2;

  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
  *(v0 + 344) = v10;
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  v11 = swift_task_alloc();
  *(v0 + 352) = v11;
  *v11 = v0;
  v11[1] = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);
  v14 = *(v0 + 296);
  v15 = *(v0 + 280);
  v16 = *(v0 + 248);

  return KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(v16, v14, v12, v15, v8, v10);
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 248), v3, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 360);
  if (v4 == 1)
  {
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    v8 = *(v0 + 280);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AspireApiKeyStatus(v8, type metadata accessor for UserIdentifier);
    v11 = v10;
    v12 = &_s8CipherML14UserIdentifierVSgMd;
    v13 = &_s8CipherML14UserIdentifierVSgMR;
LABEL_8:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, v12, v13);
    v36 = *(v0 + 280);
    v35 = *(v0 + 288);
    v37 = *(v0 + 272);
    v39 = *(v0 + 240);
    v38 = *(v0 + 248);
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v42 = *(v0 + 216);
    v44 = *(v0 + 184);
    v43 = *(v0 + 192);
    v65 = *(v0 + 176);
    v66 = *(v0 + 168);
    v67 = *(v0 + 144);
    v68 = *(v0 + 136);
    v69 = *(v0 + 120);

    v45 = *(v0 + 8);

    return v45(0, 0xF000000000000000);
  }

  outlined init with take of UserIdentifier(*(v0 + 240), *(v0 + 272), type metadata accessor for UserIdentifier);
  if (!*(v5 + 16))
  {
    v27 = *(v0 + 304);
    v28 = *(v0 + 312);
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v31 = *(v0 + 248);
    v32 = *(v0 + 200);
    v33 = *(v0 + 208);
    v34 = *(v0 + 192);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AspireApiKeyStatus(v29, type metadata accessor for UserIdentifier);
    (*(v33 + 56))(v34, 1, 1, v32);
    outlined destroy of AspireApiKeyStatus(v30, type metadata accessor for UserIdentifier);
    v12 = &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd;
    v13 = &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR;
    v11 = v34;
    goto LABEL_8;
  }

  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v16 = *(v0 + 184);
  v17 = *(v0 + 168);
  v18 = *(v0 + 152);
  outlined init with copy of UseCaseGroup(*(v0 + 360) + ((*(v0 + 400) + 32) & ~*(v0 + 400)), v17, type metadata accessor for AspireApiKeyStatus);

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17 + *(v18 + 24), v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v19 = *(v15 + 48);
  *(v0 + 376) = v19;
  *(v0 + 384) = (v15 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v19(v16, 1, v14) == 1)
  {
    v21 = *(v0 + 192);
    v20 = *(v0 + 200);
    v22 = *(v0 + 184);
    v23 = *(v0 + 168);
    *v21 = MEMORY[0x277D84F90];
    *(v21 + 8) = 0;
    v24 = v21 + *(v20 + 24);
    UnknownStorage.init()();
    outlined destroy of AspireApiKeyStatus(v23, type metadata accessor for AspireApiKeyStatus);
    v25 = *(v20 + 28);
    v26 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v26 - 8) + 56))(v21 + v25, 1, 1, v26);
    if (v19(v22, 1, v20) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 184), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    v47 = *(v0 + 184);
    v48 = *(v0 + 192);
    outlined destroy of AspireApiKeyStatus(*(v0 + 168), type metadata accessor for AspireApiKeyStatus);
    outlined init with take of UserIdentifier(v47, v48, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  v50 = *(v0 + 264);
  v49 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 224);
  v53 = *(v0 + 232);
  v54 = *(v0 + 192);
  v55 = *(v0 + 104);
  (*(*(v0 + 208) + 56))(v54, 0, 1, *(v0 + 200));
  outlined init with take of UserIdentifier(v54, v52, type metadata accessor for AspireHeEvaluationKeyConfig);
  v57 = *(v55 + 24);
  v56 = *(v55 + 32);
  ObjectType = swift_getObjectType();
  outlined init with copy of UseCaseGroup(v49, v53, type metadata accessor for UserIdentifier);
  (*(v50 + 56))(v53, 0, 1, v51);
  v59 = *(v56 + 16);
  v70 = (v59 + *v59);
  v60 = v59[1];
  v61 = swift_task_alloc();
  *(v0 + 392) = v61;
  *v61 = v0;
  v61[1] = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  v63 = *(v0 + 296);
  v62 = *(v0 + 304);
  v64 = *(v0 + 232);

  return v70(v63, v62, v64, ObjectType, v56);
}

{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 232);
  v5 = *v0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:), 0, 0);
}

{
  v1 = v0[46];
  v2 = v0[28];
  v3 = specialized Message.hash()();
  if (v1)
  {
    v5 = v0[39];
    v6 = v0[34];
    v7 = v0[35];
    v8 = v0[31];
    v9 = v0[28];

    outlined destroy of AspireApiKeyStatus(v9, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AspireApiKeyStatus(v7, type metadata accessor for UserIdentifier);
    outlined destroy of AspireApiKeyStatus(v6, type metadata accessor for UserIdentifier);
    v11 = v0[35];
    v10 = v0[36];
    v12 = v0[34];
    v14 = v0[30];
    v13 = v0[31];
    v16 = v0[28];
    v15 = v0[29];
    v17 = v0[27];
    v18 = v0[23];
    v19 = v0[24];
    v66 = v0[22];
    v68 = v0[21];
    v70 = v0[18];
    v72 = v0[17];
    v75 = v0[15];

    v20 = v0[1];

    return v20();
  }

  v22 = v0[34];
  v23 = *(v22 + *(v0[32] + 24));
  v73 = v3;
  v76 = v4;
  if (*(v23 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if (v25)
    {
      v27 = v0[47];
      v26 = v0[48];
      v28 = v0[25];
      v29 = v0[22];
      v30 = v0[18];
      v31 = v0[19];
      v32 = v0[17];
      v33 = v0[10];
      outlined init with copy of UseCaseGroup(*(v23 + 56) + *(v0[16] + 72) * v24, v32, type metadata accessor for SecretKey);
      outlined init with take of UserIdentifier(v32, v30, type metadata accessor for SecretKey);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v33 + *(v31 + 24), v29, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      if (v27(v29, 1, v28) == 1)
      {
        v35 = v0[47];
        v34 = v0[48];
        v36 = v0[27];
        v37 = v0[25];
        v38 = v0[22];
        *v36 = MEMORY[0x277D84F90];
        *(v36 + 8) = 0;
        v39 = v36 + *(v37 + 24);
        UnknownStorage.init()();
        v40 = *(v37 + 28);
        v41 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v41 - 8) + 56))(v36 + v40, 1, 1, v41);
        if (v35(v38, 1, v37) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[22], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        outlined init with take of UserIdentifier(v0[22], v0[27], type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      generateEvaluationKey(secretKey:config:)(v0[18], v0[27], v0[15]);
      v57 = v0[14];
      v58 = v0[15];
      outlined destroy of AspireApiKeyStatus(v0[27], type metadata accessor for AspireHeEvaluationKeyConfig);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);
      v59 = Message.serializedData(partial:)();
      v61 = v60;
      v62 = v0[39];
      v22 = v0[34];
      v43 = v0[35];
      v44 = v0[31];
      v45 = v0[28];
      v63 = v0[18];
      v64 = v0[15];

      outlined consume of Data._Representation(v73, v76);
      outlined destroy of AspireApiKeyStatus(v64, type metadata accessor for AspireApiEvaluationKey);
      outlined destroy of AspireApiKeyStatus(v63, type metadata accessor for SecretKey);
      v77 = v61;
      v78 = v59;
      goto LABEL_12;
    }

    v22 = v0[34];
  }

  v42 = v0[39];
  v43 = v0[35];
  v44 = v0[31];
  v45 = v0[28];

  outlined consume of Data._Representation(v73, v76);
  v77 = 0xF000000000000000;
  v78 = 0;
LABEL_12:
  outlined destroy of AspireApiKeyStatus(v45, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v44, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AspireApiKeyStatus(v43, type metadata accessor for UserIdentifier);
  outlined destroy of AspireApiKeyStatus(v22, type metadata accessor for UserIdentifier);
  v47 = v0[35];
  v46 = v0[36];
  v48 = v0[34];
  v50 = v0[30];
  v49 = v0[31];
  v52 = v0[28];
  v51 = v0[29];
  v53 = v0[27];
  v55 = v0[23];
  v54 = v0[24];
  v65 = v0[22];
  v67 = v0[21];
  v69 = v0[18];
  v71 = v0[17];
  v74 = v0[15];

  v56 = v0[1];

  return v56(v78, v77);
}

{
  v1 = v0[39];

  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];
  v10 = v0[23];
  v11 = v0[24];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[15];
  v19 = v0[41];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[39];
  v2 = v0[35];

  outlined destroy of AspireApiKeyStatus(v2, type metadata accessor for UserIdentifier);
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];
  v11 = v0[23];
  v12 = v0[24];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[15];
  v20 = v0[46];

  v13 = v0[1];

  return v13();
}

uint64_t RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v7 = *(v3 + 344);
  v8 = *(v3 + 336);
  v9 = *(v4 + 400);
  if (v1)
  {
    v10 = *(v4 + 304);

    swift_setDeallocating();
    outlined destroy of AspireApiKeyStatus(v8 + ((v9 + 32) & ~v9), type metadata accessor for AspireApiKeyStatus);
    swift_deallocClassInstance();
    v11 = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  }

  else
  {

    swift_setDeallocating();
    outlined destroy of AspireApiKeyStatus(v8 + ((v9 + 32) & ~v9), type metadata accessor for AspireApiKeyStatus);
    swift_deallocClassInstance();
    v11 = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DateV_GTt0g5Tm(uint64_t a1)
{
  result = MEMORY[0x22AA60D00](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Message.hash()()
{
  v1 = type metadata accessor for SHA256();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256Digest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);
  v11 = Message.serializedData(partial:)();
  if (!v0)
  {
    v13 = v11;
    v27 = v7;
    v14 = v12;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
    v21 = v6;
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v13, v14);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v13, v14);
    v22 = 0;
    outlined consume of Data._Representation(v13, v14);
    v15 = v10;
    dispatch thunk of HashFunction.finalize()();
    outlined consume of Data._Representation(v13, v14);
    (*(v2 + 8))(v5, v1);
    v16 = v21;
    v25 = v21;
    v26 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    v18 = v27;
    (*(v27 + 16))(boxed_opaque_existential_1, v15, v16);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v18 + 8))(v15, v16);
    v6 = v23;
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  return v6;
}

uint64_t RequestsManager.validateConfig(useCase:keyStatus:encryptionParams:)(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v165 = a4;
  v160 = a3;
  v157 = type metadata accessor for AspireApiKeyStatus(0);
  v7 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v156 = (&v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v150 = &v140 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v147 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v144 = &v140 - v15;
  MEMORY[0x28223BE20](v16);
  v152 = &v140 - v17;
  v162 = type metadata accessor for AspireHeEncryptionParameters(0);
  v158 = *(v162 - 8);
  v18 = *(v158 + 64);
  MEMORY[0x28223BE20](v162);
  v148 = (&v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v143 = (&v140 - v21);
  MEMORY[0x28223BE20](v22);
  v149 = &v140 - v23;
  MEMORY[0x28223BE20](v24);
  v154 = &v140 - v25;
  MEMORY[0x28223BE20](v26);
  v153 = (&v140 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v145 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v141 = &v140 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v140 - v34;
  v159 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v161 = *(v159 - 8);
  v36 = *(v161 + 64);
  MEMORY[0x28223BE20](v159);
  v146 = (&v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v142 = (&v140 - v39);
  MEMORY[0x28223BE20](v40);
  v151 = (&v140 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v140 - v44;
  v46 = type metadata accessor for UseCaseGroup();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v155 = &v140 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = &v140 - v51;
  v53 = *(v4 + 48);
  os_unfair_lock_lock((v53 + 24));
  v54 = *(v53 + 16);

  os_unfair_lock_unlock((v53 + 24));
  v163 = a1;
  v167 = a2;
  AllowList.group(useCase:)(a1, a2, v45);

  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {
    outlined init with take of UserIdentifier(v45, v52, type metadata accessor for UseCaseGroup);
    os_unfair_lock_lock((v53 + 24));
    v62 = *(v53 + 16);

    os_unfair_lock_unlock((v53 + 24));
    v63 = v164;
    v64 = AllowList.isAllowListed(group:encryptionParameters:)(v52, v165);
    if (v63)
    {
      outlined destroy of AspireApiKeyStatus(v52, type metadata accessor for UseCaseGroup);
    }

    v65 = v64;

    if (v65)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v160 + *(v157 + 24), v35, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v67 = v161 + 48;
      v66 = *(v161 + 48);
      v68 = v159;
      v69 = (v66)(v35, 1, v159);
      v70 = v162;
      v71 = v158;
      v140 = v52;
      if (v69 == 1)
      {
        v72 = v151;
        *v151 = MEMORY[0x277D84F90];
        *(v72 + 8) = 0;
        v73 = v72 + *(v68 + 24);
        UnknownStorage.init()();
        (*(v71 + 56))(v72 + *(v68 + 28), 1, 1, v70);
        if ((v66)(v35, 1, v68) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        v72 = v151;
        outlined init with take of UserIdentifier(v35, v151, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      v156 = v66;
      v85 = v152;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v72 + *(v68 + 28), v152, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v86 = *(v71 + 48);
      v87 = v162;
      v88 = v86(v85, 1, v162);
      v161 = v67;
      v164 = v86;
      if (v88 == 1)
      {
        v89 = v153;
        *v153 = 0;
        v89[1] = 0;
        v89[2] = MEMORY[0x277D84F90];
        v89[3] = 0;
        *(v89 + 32) = 1;
        v89[5] = 0;
        *(v89 + 48) = 1;
        v89[7] = 0;
        *(v89 + 64) = 1;
        v90 = v89 + *(v87 + 40);
        UnknownStorage.init()();
        outlined destroy of AspireApiKeyStatus(v72, type metadata accessor for AspireHeEvaluationKeyConfig);
        v91 = v86(v85, 1, v87) == 1;
        v92 = v165;
        if (!v91)
        {
          v93 = v165;
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v85, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
          v92 = v93;
        }
      }

      else
      {
        outlined destroy of AspireApiKeyStatus(v72, type metadata accessor for AspireHeEvaluationKeyConfig);
        v89 = v153;
        outlined init with take of UserIdentifier(v85, v153, type metadata accessor for AspireHeEncryptionParameters);
        v92 = v165;
      }

      v95 = v154;
      outlined init with copy of UseCaseGroup(v92, v154, type metadata accessor for AspireHeEncryptionParameters);
      v96 = *(v87 + 40);
      v97 = type metadata accessor for UnknownStorage();
      (*(*(v97 - 8) + 24))(v95 + v96, v89 + v96, v97);
      v166[3] = v87;
      v166[4] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v166);
      outlined init with copy of UseCaseGroup(v95, boxed_opaque_existential_1, type metadata accessor for AspireHeEncryptionParameters);
      v99 = dispatch thunk of Message.isEqualTo(message:)();
      outlined destroy of AspireApiKeyStatus(v89, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AspireApiKeyStatus(v95, type metadata accessor for AspireHeEncryptionParameters);
      __swift_destroy_boxed_opaque_existential_0(v166);
      v52 = v140;
      if (v99)
      {
        return outlined destroy of AspireApiKeyStatus(v52, type metadata accessor for UseCaseGroup);
      }

      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      __swift_project_value_buffer(v100, static Logger.daemon);
      v101 = v150;
      outlined init with copy of UseCaseGroup(v160, v150, type metadata accessor for AspireApiKeyStatus);
      v102 = v149;
      outlined init with copy of UseCaseGroup(v165, v149, type metadata accessor for AspireHeEncryptionParameters);

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v103, v104))
      {
        LODWORD(v155) = v104;
        v165 = v103;
        v105 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v166[0] = v154;
        v160 = v105;
        *v105 = 136446722;
        v106 = v141;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v101 + *(v157 + 24), v141, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v107 = v159;
        v108 = v156;
        if ((v156)(v106, 1, v159) == 1)
        {
          v109 = v142;
          *v142 = MEMORY[0x277D84F90];
          *(v109 + 8) = 0;
          v110 = v109 + *(v107 + 24);
          UnknownStorage.init()();
          (*(v158 + 56))(v109 + *(v107 + 28), 1, 1, v87);
          v111 = v108(v106, 1, v107);
          v112 = v149;
          v113 = v144;
          if (v111 != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v106, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
          }
        }

        else
        {
          v109 = v142;
          outlined init with take of UserIdentifier(v106, v142, type metadata accessor for AspireHeEvaluationKeyConfig);
          v112 = v149;
          v113 = v144;
        }

        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v109 + *(v107 + 28), v113, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
        v130 = v164;
        if (v164(v113, 1, v87) == 1)
        {
          v131 = v143;
          *v143 = 0;
          v131[1] = 0;
          v131[2] = MEMORY[0x277D84F90];
          v131[3] = 0;
          *(v131 + 32) = 1;
          v131[5] = 0;
          *(v131 + 48) = 1;
          v131[7] = 0;
          *(v131 + 64) = 1;
          v132 = v131 + *(v87 + 40);
          UnknownStorage.init()();
          outlined destroy of AspireApiKeyStatus(v109, type metadata accessor for AspireHeEvaluationKeyConfig);
          if (v130(v113, 1, v87) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v113, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
          }
        }

        else
        {
          outlined destroy of AspireApiKeyStatus(v109, type metadata accessor for AspireHeEvaluationKeyConfig);
          v131 = v143;
          outlined init with take of UserIdentifier(v113, v143, type metadata accessor for AspireHeEncryptionParameters);
        }

        v133 = Message.textFormatString()();
        outlined destroy of AspireApiKeyStatus(v131, type metadata accessor for AspireHeEncryptionParameters);
        outlined destroy of AspireApiKeyStatus(v150, type metadata accessor for AspireApiKeyStatus);
        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133._countAndFlagsBits, v133._object, v166);

        v135 = v160;
        *(v160 + 1) = v134;
        *(v135 + 12) = 2082;
        *(v135 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v167, v166);
        *(v135 + 22) = 2082;
        v136 = Message.textFormatString()();
        outlined destroy of AspireApiKeyStatus(v112, type metadata accessor for AspireHeEncryptionParameters);
        v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136._countAndFlagsBits, v136._object, v166);

        *(v135 + 24) = v137;
        v138 = v165;
        _os_log_impl(&dword_224E26000, v165, v155, "Invalid key config encryptionParameters '%{public}s' for useCase '%{public}s', expected: '%{public}s'", v135, 0x20u);
        v139 = v154;
        swift_arrayDestroy();
        MEMORY[0x22AA61F40](v139, -1, -1);
        MEMORY[0x22AA61F40](v135, -1, -1);

LABEL_46:
        v52 = v140;
        goto LABEL_47;
      }

      outlined destroy of AspireApiKeyStatus(v102, type metadata accessor for AspireHeEncryptionParameters);
      v94 = v101;
    }

    else
    {
      v74 = v159;
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static Logger.daemon);
      v76 = v156;
      outlined init with copy of UseCaseGroup(v160, v156, type metadata accessor for AspireApiKeyStatus);
      v77 = v155;
      outlined init with copy of UseCaseGroup(v52, v155, type metadata accessor for UseCaseGroup);

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v140 = v52;
        v80 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v166[0] = v165;
        *v80 = 136446722;
        v81 = v145;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v76 + *(v157 + 24), v145, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v82 = *(v161 + 48);
        if (v82(v81, 1, v74) == 1)
        {
          v83 = v146;
          *v146 = MEMORY[0x277D84F90];
          *(v83 + 8) = 0;
          v84 = v83 + *(v74 + 24);
          UnknownStorage.init()();
          (*(v158 + 56))(v83 + *(v74 + 28), 1, 1, v162);
          if (v82(v81, 1, v74) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v81, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
          }
        }

        else
        {
          v83 = v146;
          outlined init with take of UserIdentifier(v81, v146, type metadata accessor for AspireHeEvaluationKeyConfig);
        }

        v114 = v83 + *(v74 + 28);
        v115 = v83;
        v116 = v147;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v114, v147, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
        v117 = *(v158 + 48);
        v118 = v162;
        if (v117(v116, 1, v162) == 1)
        {
          v119 = v148;
          *v148 = 0;
          v119[1] = 0;
          v119[2] = MEMORY[0x277D84F90];
          v119[3] = 0;
          *(v119 + 32) = 1;
          v119[5] = 0;
          *(v119 + 48) = 1;
          v119[7] = 0;
          *(v119 + 64) = 1;
          v120 = v119;
          v121 = v119 + *(v118 + 40);
          UnknownStorage.init()();
          outlined destroy of AspireApiKeyStatus(v115, type metadata accessor for AspireHeEvaluationKeyConfig);
          if (v117(v116, 1, v118) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v116, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
          }
        }

        else
        {
          outlined destroy of AspireApiKeyStatus(v115, type metadata accessor for AspireHeEvaluationKeyConfig);
          v120 = v148;
          outlined init with take of UserIdentifier(v116, v148, type metadata accessor for AspireHeEncryptionParameters);
        }

        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
        v122 = Message.textFormatString()();
        outlined destroy of AspireApiKeyStatus(v120, type metadata accessor for AspireHeEncryptionParameters);
        outlined destroy of AspireApiKeyStatus(v156, type metadata accessor for AspireApiKeyStatus);
        v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122._countAndFlagsBits, v122._object, v166);

        *(v80 + 4) = v123;
        *(v80 + 12) = 2082;
        *(v80 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v167, v166);
        *(v80 + 22) = 2082;
        v124 = v155;
        v125 = HE.SecurityLevel.rawValue.getter();
        v127 = v126;
        outlined destroy of AspireApiKeyStatus(v124, type metadata accessor for UseCaseGroup);
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v166);

        *(v80 + 24) = v128;
        _os_log_impl(&dword_224E26000, v78, v79, "Invalid key config encryptionParameters '%{public}s' for useCase '%{public}s' and security level '%{public}s'", v80, 0x20u);
        v129 = v165;
        swift_arrayDestroy();
        MEMORY[0x22AA61F40](v129, -1, -1);
        MEMORY[0x22AA61F40](v80, -1, -1);

        goto LABEL_46;
      }

      outlined destroy of AspireApiKeyStatus(v77, type metadata accessor for UseCaseGroup);
      v94 = v76;
    }

    outlined destroy of AspireApiKeyStatus(v94, type metadata accessor for AspireApiKeyStatus);
LABEL_47:
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return outlined destroy of AspireApiKeyStatus(v52, type metadata accessor for UseCaseGroup);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v45, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.daemon);
  v56 = v167;

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v166[0] = v60;
    *v59 = 136446210;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v56, v166);
    _os_log_impl(&dword_224E26000, v57, v58, "No group associated with use-case '%{public}s'", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x22AA61F40](v60, -1, -1);
    MEMORY[0x22AA61F40](v59, -1, -1);
  }

  type metadata accessor for CipherMLError();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t RequestsManager.validateDependentConfig(config:useCase:dependsOn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[33] = a5;
  v6[34] = v5;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v8 = type metadata accessor for AspireApiPIRConfig(0);
  v6[36] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v11 = type metadata accessor for AspireApiConfig(0);
  v6[41] = v11;
  v12 = *(v11 - 8);
  v6[42] = v12;
  v13 = *(v12 + 64) + 15;
  v6[43] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR) - 8) + 64) + 15;
  v6[44] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR) - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v16 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v6[46] = v16;
  v17 = *(v16 - 8);
  v6[47] = v17;
  v18 = *(v17 + 64) + 15;
  v6[48] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v20 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v6[50] = v20;
  v21 = *(v20 - 8);
  v6[51] = v21;
  v22 = *(v21 + 64) + 15;
  v6[52] = swift_task_alloc();
  v23 = *(*(type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0) - 8) + 64) + 15;
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.validateDependentConfig(config:useCase:dependsOn:), 0, 0);
}

uint64_t RequestsManager.validateDependentConfig(config:useCase:dependsOn:)()
{
  v87 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(*(v0 + 232) + *(*(v0 + 288) + 20));
  v5 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + v5, v3, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v6 = *(v2 + 48);
  v7 = v6(v3, 1, v1);
  v8 = *(v0 + 416);
  if (v7 == 1)
  {
    v10 = *(v0 + 392);
    v9 = *(v0 + 400);
    v11 = *(v0 + 368);
    v12 = *(v0 + 376);
    *v8 = 0;
    *(v8 + 8) = 0;
    v13 = v8 + v9[6];
    UnknownStorage.init()();
    v14 = v9[7];
    v15 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v15 - 8) + 56))(v8 + v14, 1, 1, v15);
    (*(v12 + 56))(v8 + v9[8], 1, 1, v11);
    if (v6(v10, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 392), &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of UserIdentifier(*(v0 + 392), *(v0 + 416), type metadata accessor for AspirePirKeywordPirParameters);
  }

  v16 = *(v0 + 368);
  v17 = *(v0 + 376);
  v18 = *(v0 + 360);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 416) + *(*(v0 + 400) + 32), v18, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v19 = *(v17 + 48);
  v20 = v19(v18, 1, v16);
  v21 = *(v0 + 416);
  v22 = *(v0 + 384);
  if (v20 == 1)
  {
    v24 = *(v0 + 360);
    v23 = *(v0 + 368);
    v25 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    v26 = v22 + *(v23 + 20);
    UnknownStorage.init()();
    outlined destroy of AspireApiKeyStatus(v21, type metadata accessor for AspirePirKeywordPirParameters);
    if (v19(v24, 1, v23) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 360), &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    }
  }

  else
  {
    v27 = *(v0 + 360);
    outlined destroy of AspireApiKeyStatus(*(v0 + 416), type metadata accessor for AspirePirKeywordPirParameters);
    outlined init with take of UserIdentifier(v27, v22, type metadata accessor for AspirePirPIRShardingFunction);
  }

  v28 = *(v0 + 384);
  v29 = *(v0 + 352);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28, v29, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined destroy of AspireApiKeyStatus(v28, type metadata accessor for AspirePirPIRShardingFunction);
  v30 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v31 = (*(*(v30 - 8) + 48))(v29, 1, v30);
  v32 = *(v0 + 352);
  if (v31 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 352), &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
LABEL_18:
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 264);
    v55 = *(v0 + 248);
    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.daemon);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v60 = *(v0 + 256);
      v59 = *(v0 + 264);
      v62 = *(v0 + 240);
      v61 = *(v0 + 248);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v86 = v64;
      *v63 = 136315394;
      *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, &v86);
      *(v63 + 12) = 2080;
      *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, &v86);
      swift_arrayDestroy();
      MEMORY[0x22AA61F40](v64, -1, -1);
      MEMORY[0x22AA61F40](v63, -1, -1);
    }

LABEL_23:
    v66 = *(v0 + 440);
    v65 = *(v0 + 448);
    v68 = *(v0 + 424);
    v67 = *(v0 + 432);
    v69 = *(v0 + 416);
    v71 = *(v0 + 384);
    v70 = *(v0 + 392);
    v73 = *(v0 + 352);
    v72 = *(v0 + 360);
    v74 = *(v0 + 344);
    v81 = *(v0 + 320);
    v82 = *(v0 + 312);
    v83 = *(v0 + 304);
    v84 = *(v0 + 296);
    v85 = *(v0 + 280);

    v75 = *(v0 + 8);

    return v75(0);
  }

  v33 = *(v0 + 352);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AspireApiKeyStatus(v32, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    goto LABEL_18;
  }

  v34 = *(v0 + 448);
  v35 = *(v0 + 232);
  outlined init with take of UserIdentifier(v32, v34, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  v36 = *v34;
  *(v0 + 76) = v36;
  if (AspireApiPIRConfig.shardCount.getter() > v36)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 448);
    v38 = *(v0 + 424);
    v39 = *(v0 + 296);
    v40 = *(v0 + 248);
    v41 = *(v0 + 232);
    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.daemon);
    outlined init with copy of UseCaseGroup(v41, v39, type metadata accessor for AspireApiPIRConfig);
    outlined init with copy of UseCaseGroup(v37, v38, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 448);
    v47 = *(v0 + 424);
    v48 = *(v0 + 296);
    if (v45)
    {
      v50 = *(v0 + 240);
      v49 = *(v0 + 248);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315650;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, &v86);
      *(v51 + 12) = 2048;
      v53 = AspireApiPIRConfig.shardCount.getter();
      outlined destroy of AspireApiKeyStatus(v48, type metadata accessor for AspireApiPIRConfig);
      *(v51 + 14) = v53;
      *(v51 + 22) = 1024;
      LODWORD(v53) = *v47;
      outlined destroy of AspireApiKeyStatus(v47, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      *(v51 + 24) = v53;
      _os_log_impl(&dword_224E26000, v43, v44, "Dynamic configuration for '%s' has %ld shards that should be less than the dependent usecase which has %u shards.", v51, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AA61F40](v52, -1, -1);
      MEMORY[0x22AA61F40](v51, -1, -1);
    }

    else
    {
      outlined destroy of AspireApiKeyStatus(*(v0 + 424), type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      outlined destroy of AspireApiKeyStatus(v48, type metadata accessor for AspireApiPIRConfig);
    }

    outlined destroy of AspireApiKeyStatus(v46, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    goto LABEL_23;
  }

  *(v0 + 456) = *(*(*(v0 + 272) + 16) + 16);

  v77 = swift_task_alloc();
  *(v0 + 464) = v77;
  *v77 = v0;
  v77[1] = RequestsManager.validateDependentConfig(config:useCase:dependsOn:);
  v78 = *(v0 + 320);
  v79 = *(v0 + 256);
  v80 = *(v0 + 264);

  return specialized DatabaseTable<>.get(_:)(v78, v79, v80);
}

{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 456);

  if (v0)
  {
    v6 = RequestsManager.validateDependentConfig(config:useCase:dependsOn:);
  }

  else
  {
    v6 = RequestsManager.validateDependentConfig(config:useCase:dependsOn:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v101 = v0;
  v1 = *(v0 + 320);
  if ((*(*(v0 + 336) + 48))(v1, 1, *(v0 + 328)) == 1)
  {
    v2 = &_s8CipherML15AspireApiConfigVSgMd;
    v3 = &_s8CipherML15AspireApiConfigVSgMR;
LABEL_5:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, v2, v3);
    goto LABEL_6;
  }

  v4 = *(v0 + 344);
  v5 = *(v0 + 280);
  outlined init with take of UserIdentifier(v1, v4, type metadata accessor for AspireApiConfig);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4, v5, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v6 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    v1 = *(v0 + 280);
    outlined destroy of AspireApiKeyStatus(*(v0 + 344), type metadata accessor for AspireApiConfig);
    v2 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd;
    v3 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR;
    goto LABEL_5;
  }

  v48 = *(v0 + 280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AspireApiKeyStatus(*(v0 + 344), type metadata accessor for AspireApiConfig);
    outlined destroy of AspireApiKeyStatus(v48, type metadata accessor for AspireApiConfig.OneOf_Config);
LABEL_6:
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 264);
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.daemon);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 256);
      v11 = *(v0 + 264);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v100[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v100);
      _os_log_impl(&dword_224E26000, v9, v10, "No dynamic PIR configuration for %{public}s!", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AA61F40](v14, -1, -1);
      MEMORY[0x22AA61F40](v13, -1, -1);
    }

    v15 = *(*(v0 + 272) + 48);
    os_unfair_lock_lock((v15 + 24));
    v16 = *(v15 + 16);

    os_unfair_lock_unlock((v15 + 24));
    v17 = *(v16 + 40);
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 256), *(v0 + 264), MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:)), (v19 & 1) != 0))
    {
      v20 = (*(v17 + 56) + (v18 << 6));
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      *(v0 + 57) = *(v20 + 41);
      *(v0 + 32) = v22;
      *(v0 + 48) = v23;
      *(v0 + 16) = v21;
      outlined init with copy of UseCase(v0 + 16, v0 + 80);

      if (*(v0 + 72))
      {
        v24 = *(v0 + 16);
        v25 = *(v0 + 448);
        if (v24 < *(v0 + 76))
        {
          v26 = *(v0 + 264);
          v27 = *(v0 + 248);
          outlined init with copy of UseCaseGroup(v25, *(v0 + 432), type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

          outlined init with copy of UseCase(v0 + 16, v0 + 144);

          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.error.getter();

          v30 = os_log_type_enabled(v28, v29);
          v31 = *(v0 + 448);
          v32 = *(v0 + 432);
          if (v30)
          {
            v93 = *(v0 + 256);
            v97 = *(v0 + 264);
            v34 = *(v0 + 240);
            v33 = *(v0 + 248);
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v100[0] = v36;
            *v35 = 136446978;
            *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, v100);
            *(v35 + 12) = 1024;
            LODWORD(v34) = *v32;
            outlined destroy of AspireApiKeyStatus(v32, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
            *(v35 + 14) = v34;
            *(v35 + 18) = 2048;
            outlined destroy of UseCase(v0 + 16);
            *(v35 + 20) = v24;
            outlined destroy of UseCase(v0 + 16);
            *(v35 + 28) = 2082;
            *(v35 + 30) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v97, v100);
            swift_arrayDestroy();
            MEMORY[0x22AA61F40](v36, -1, -1);
            MEMORY[0x22AA61F40](v35, -1, -1);
          }

          else
          {
            outlined destroy of UseCase(v0 + 16);
            outlined destroy of AspireApiKeyStatus(v32, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
            outlined destroy of UseCase(v0 + 16);
          }

          v37 = v31;
LABEL_31:
          outlined destroy of AspireApiKeyStatus(v37, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
          v98 = 0;
          goto LABEL_32;
        }

        outlined destroy of AspireApiKeyStatus(v25, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
        outlined destroy of UseCase(v0 + 16);
        goto LABEL_24;
      }
    }

    else
    {
    }

    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v38 = *(v0 + 440);
    v40 = *(v0 + 424);
    v39 = *(v0 + 432);
    v41 = *(v0 + 416);
    v43 = *(v0 + 384);
    v42 = *(v0 + 392);
    v44 = *(v0 + 352);
    v45 = *(v0 + 360);
    v83 = *(v0 + 344);
    v84 = *(v0 + 320);
    v86 = *(v0 + 312);
    v88 = *(v0 + 304);
    v90 = *(v0 + 296);
    v94 = *(v0 + 280);
    outlined destroy of AspireApiKeyStatus(*(v0 + 448), type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

    v46 = *(v0 + 8);
    v47 = 0;
    goto LABEL_33;
  }

  v49 = *(v0 + 76);
  outlined init with take of UserIdentifier(v48, *(v0 + 312), type metadata accessor for AspireApiPIRConfig);
  if (AspireApiPIRConfig.shardCount.getter() != v49)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 440);
    v53 = *(v0 + 448);
    v55 = *(v0 + 304);
    v54 = *(v0 + 312);
    v56 = *(v0 + 264);
    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.daemon);
    outlined init with copy of UseCaseGroup(v53, v52, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    outlined init with copy of UseCaseGroup(v54, v55, type metadata accessor for AspireApiPIRConfig);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 440);
    v62 = *(v0 + 448);
    v63 = *(v0 + 344);
    v64 = *(v0 + 304);
    v65 = *(v0 + 312);
    if (v60)
    {
      v99 = *(v0 + 448);
      v67 = *(v0 + 256);
      v66 = *(v0 + 264);
      v95 = *(v0 + 312);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v100[0] = v69;
      *v68 = 67109634;
      v91 = v63;
      v70 = *v61;
      outlined destroy of AspireApiKeyStatus(v61, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      *(v68 + 4) = v70;
      *(v68 + 8) = 2080;
      *(v68 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, v100);
      *(v68 + 18) = 2048;
      v71 = AspireApiPIRConfig.shardCount.getter();
      outlined destroy of AspireApiKeyStatus(v64, type metadata accessor for AspireApiPIRConfig);
      *(v68 + 20) = v71;
      _os_log_impl(&dword_224E26000, v58, v59, "Dynamic configuration has Double mod with %u shards, but '%s' config has '%ld' shards.", v68, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AA61F40](v69, -1, -1);
      MEMORY[0x22AA61F40](v68, -1, -1);

      outlined destroy of AspireApiKeyStatus(v95, type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AspireApiKeyStatus(v91, type metadata accessor for AspireApiConfig);
      v37 = v99;
    }

    else
    {
      outlined destroy of AspireApiKeyStatus(*(v0 + 304), type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AspireApiKeyStatus(v61, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

      outlined destroy of AspireApiKeyStatus(v65, type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AspireApiKeyStatus(v63, type metadata accessor for AspireApiConfig);
      v37 = v62;
    }

    goto LABEL_31;
  }

  v50 = *(v0 + 448);
  v51 = *(v0 + 344);
  outlined destroy of AspireApiKeyStatus(*(v0 + 312), type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AspireApiKeyStatus(v51, type metadata accessor for AspireApiConfig);
  outlined destroy of AspireApiKeyStatus(v50, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
LABEL_24:
  v98 = 1;
LABEL_32:
  v73 = *(v0 + 440);
  v72 = *(v0 + 448);
  v75 = *(v0 + 424);
  v74 = *(v0 + 432);
  v76 = *(v0 + 416);
  v78 = *(v0 + 384);
  v77 = *(v0 + 392);
  v80 = *(v0 + 352);
  v79 = *(v0 + 360);
  v81 = *(v0 + 344);
  v85 = *(v0 + 320);
  v87 = *(v0 + 312);
  v89 = *(v0 + 304);
  v92 = *(v0 + 296);
  v96 = *(v0 + 280);

  v46 = *(v0 + 8);
  v47 = v98;
LABEL_33:

  return v46(v47);
}

{
  v17 = v0[59];
  v1 = v0[55];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[44];
  v7 = v0[45];
  v11 = v0[43];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[38];
  v15 = v0[37];
  v16 = v0[35];
  outlined destroy of AspireApiKeyStatus(v0[56], type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

  v9 = v0[1];

  return v9(0);
}

uint64_t RequestsManager.validate(config:static:useCase:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  *(v5 + 80) = v8;
  v9 = *(v8 - 8);
  *(v5 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v12 = type metadata accessor for UseCaseGroup();
  *(v5 + 112) = v12;
  v13 = *(v12 - 8);
  *(v5 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v16 = *a2;
  *(v5 + 128) = v15;
  *(v5 + 136) = v16;
  *(v5 + 144) = *(a2 + 5);

  return MEMORY[0x2822009F8](RequestsManager.validate(config:static:useCase:), 0, 0);
}

uint64_t RequestsManager.validate(config:static:useCase:)()
{
  v1 = v0[17];
  v2 = v0[5];
  if (v1 < AspireApiPIRConfig.shardCount.getter())
  {
    v3 = 0;
LABEL_3:
    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[9];

    v8 = v0[1];
    v9 = v3 & 1;
LABEL_11:

    return v8(v9);
  }

  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[13];
  v13 = v0[7];
  v14 = v0[6];
  v15 = *(v0[8] + 48);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  AllowList.group(useCase:)(v14, v13, v12);

  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[13], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v30 = v0[16];
    v32 = v0[12];
    v31 = v0[13];
    v33 = v0[9];

    v8 = v0[1];
    v9 = 0;
    goto LABEL_11;
  }

  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[9];
  v20 = v0[5];
  outlined init with take of UserIdentifier(v0[13], v0[16], type metadata accessor for UseCaseGroup);
  os_unfair_lock_lock((v15 + 24));
  v21 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  v22 = *(v20 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v23 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22 + v23, v19, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v24 = *(v18 + 48);
  v25 = v24(v19, 1, v17);
  v26 = v0[12];
  if (v25 == 1)
  {
    v28 = v0[9];
    v27 = v0[10];
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = MEMORY[0x277D84F90];
    *(v26 + 24) = 0;
    *(v26 + 32) = 1;
    *(v26 + 40) = 0;
    *(v26 + 48) = 1;
    *(v26 + 56) = 0;
    *(v26 + 64) = 1;
    v29 = v26 + *(v27 + 40);
    UnknownStorage.init()();
    if (v24(v28, 1, v27) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[9], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of UserIdentifier(v0[9], v26, type metadata accessor for AspireHeEncryptionParameters);
  }

  v3 = AllowList.isAllowListed(group:encryptionParameters:)(v0[16], v0[12]);
  outlined destroy of AspireApiKeyStatus(v0[12], type metadata accessor for AspireHeEncryptionParameters);

  if ((v3 & 1) == 0 || (v35 = v0[19]) == 0)
  {
    outlined destroy of AspireApiKeyStatus(v0[16], type metadata accessor for UseCaseGroup);
    goto LABEL_3;
  }

  v36 = swift_task_alloc();
  v0[20] = v36;
  *v36 = v0;
  v36[1] = RequestsManager.validate(config:static:useCase:);
  v37 = v0[18];
  v38 = v0[7];
  v39 = v0[8];
  v41 = v0[5];
  v40 = v0[6];

  return RequestsManager.validateDependentConfig(config:useCase:dependsOn:)(v41, v40, v38, v37, v35);
}

{
  v1 = *(v0 + 176);
  outlined destroy of AspireApiKeyStatus(*(v0 + 128), type metadata accessor for UseCaseGroup);
  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6(v1);
}

{
  outlined destroy of AspireApiKeyStatus(v0[16], type metadata accessor for UseCaseGroup);
  v1 = v0[21];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];

  v6 = v0[1];

  return v6(0);
}

uint64_t RequestsManager.validate(config:static:useCase:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = RequestsManager.validate(config:static:useCase:);
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v7 = RequestsManager.validate(config:static:useCase:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void *RequestsManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[9];

  return v0;
}

uint64_t RequestsManager.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[9];

  return swift_deallocClassInstance();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x22AA61400](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for HE.SecurityLevel();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v20 = a1;
  v4 = type metadata accessor for HE.SecurityLevel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v44 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v41 = v14;
    v40 = HIDWORD(a1) - a1;
    v42 = v10;
    v43 = BYTE6(a2);
    v37 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v43;
          if (v13)
          {
            v26 = v40;
            if (v41)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          goto LABEL_61;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
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
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        goto LABEL_61;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v46[0] = v17;
          LOWORD(v46[1]) = v16;
          BYTE2(v46[1]) = BYTE2(v16);
          BYTE3(v46[1]) = BYTE3(v16);
          BYTE4(v46[1]) = BYTE4(v16);
          BYTE5(v46[1]) = BYTE5(v16);
          outlined copy of Data._Representation(v17, v16);
          closure #1 in static Data.== infix(_:_:)(v46, v9, v8, &v45);
          outlined consume of Data._Representation(v17, v16);
          if (v45)
          {
            goto LABEL_61;
          }

          v10 = v42;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        MEMORY[0x22AA5F1C0]();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        closure #1 in static Data.== infix(_:_:)(v34, a1, a2, v46);
        outlined consume of Data._Representation(v17, v16);
        if (v46[0])
        {
          goto LABEL_61;
        }

        v4 = v37;
        v10 = v42;
        goto LABEL_13;
      }

      memset(v46, 0, 14);
      outlined copy of Data._Representation(v17, v16);
      closure #1 in static Data.== infix(_:_:)(v46, v9, v8, &v45);
      outlined consume of Data._Representation(v17, v16);
      if (v45)
      {
        goto LABEL_61;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v44) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_61:
  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA60D00](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized RequestsManager.validate(config:static:useCase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v30 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for UseCaseGroup();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + 48);
  os_unfair_lock_lock((v22 + 24));
  v23 = *(v22 + 16);

  os_unfair_lock_unlock((v22 + 24));
  AllowList.group(useCase:)(a2, v33, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    outlined init with take of UserIdentifier(v16, v21, type metadata accessor for UseCaseGroup);
    os_unfair_lock_lock((v22 + 24));
    v24 = *(v22 + 16);

    os_unfair_lock_unlock((v22 + 24));
    v25 = type metadata accessor for AspireApiPECConfig(0);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30 + *(v25 + 40), v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v26 = v32;
    v27 = *(v31 + 48);
    if (v27(v8, 1, v32) == 1)
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
      v28 = &v12[*(v26 + 40)];
      UnknownStorage.init()();
      if (v27(v8, 1, v26) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      }
    }

    else
    {
      outlined init with take of UserIdentifier(v8, v12, type metadata accessor for AspireHeEncryptionParameters);
    }

    LOBYTE(v8) = AllowList.isAllowListed(group:encryptionParameters:)(v21, v12);

    outlined destroy of AspireApiKeyStatus(v12, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AspireApiKeyStatus(v21, type metadata accessor for UseCaseGroup);
  }

  return v8 & 1;
}

uint64_t outlined init with copy of UseCaseGroup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AspireApiKeyStatus(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of UserIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PrivateAccessToken.TokenRequest.requestData.getter(unsigned int a1, uint64_t a2, unint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_16;
    }

    v5 = v5;
  }

LABEL_11:
  if (__OFADD__(v5, 3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v21 = specialized Data._Representation.init(capacity:)(v5 + 3);
  v22 = v9;
  v17 = bswap32(a1) >> 16;
  v19 = MEMORY[0x277D838B0];
  v20 = MEMORY[0x277CC9C18];
  v18[0] = &v17;
  v18[1] = v18;
  v10 = __swift_project_boxed_opaque_existential_1(v18, MEMORY[0x277D838B0]);
  v12 = *v10;
  v11 = v10[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v22 >> 62 == 2)
  {
    v13 = *(v21 + 24);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR);
  v19 = v14;
  v20 = lazy protocol witness table accessor for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>();
  LOBYTE(v18[0]) = BYTE2(a1);
  LOBYTE(v17) = *__swift_project_boxed_opaque_existential_1(v18, v14);
  Data._Representation.replaceSubrange(_:with:count:)();
  __swift_destroy_boxed_opaque_existential_0(v18);
  Data.append(_:)();
  result = v21;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Data.appendBigEndianBytes<A>(_:)(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  dispatch thunk of FixedWidthInteger.bigEndian.getter();
  v13 = v2;
  _ss15withUnsafeBytes2of_q0_xz_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, partial apply for closure #1 in Data.appendBigEndianBytes<A>(_:), v12, a2, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v8);
  result = (*(v4 + 8))(v7, a2);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PrivateAccessToken.ClientState.__allocating_init(tokenWaitingActivation:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PrivateAccessToken.ClientState.finalize(tokenResponse:)()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v17 = 0;
  v3 = [v1 activateTokenWithServerResponse:isa error:&v17];

  v4 = v17;
  if (v3)
  {
    v17 = xmmword_225022910;
    v5 = v4;
    v6 = [v3 tokenContent];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    Data.append(_:)();
    outlined consume of Data._Representation(v7, v9);
    v10 = [v3 signature];
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    Data.append(_:)();
    outlined consume of Data._Representation(v11, v13);
    result = v17;
  }

  else
  {
    v15 = v17;
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PrivateAccessToken.ClientState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t closure #1 in Data.appendBigEndianBytes<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[3] = MEMORY[0x277D838B0];
  v6[4] = MEMORY[0x277CC9C18];
  v6[0] = a1;
  v6[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v6, MEMORY[0x277D838B0]);
  v4 = *v2;
  v3 = v2[1];
  Data._Representation.append(contentsOf:)();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t _ss15withUnsafeBytes2of_q0_xz_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t Data.init(base64urlEncoded:)()
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = Data.init(base64Encoded:options:)();
  v2 = v1;
  outlined copy of Data?(v0, v1);

  if (v2 >> 60 != 15)
  {
    outlined consume of Data?(v0, v2);
  }

  return v0;
}

Swift::String __swiftcall Data.base64urlEncodedString()()
{
  Data.base64EncodedString(options:)(0);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1)
{
  Data.InlineSlice.ensureUniqueReference()();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(a1 + 1);

  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = v2 - v7;
  if (__OFSUB__(v2, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v3 - v2;
  v10 = MEMORY[0x22AA5F1C0]();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  arc4random_buf((v6 + v8), v11);
}

uint64_t specialized Data._Representation.init(capacity:)(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>()
{
  result = lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>;
  if (!lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>);
  }

  return result;
}

id specialized @nonobjc RSABSSATokenBlinder.init(publicKey:)()
{
  v7[1] = *MEMORY[0x277D85DE8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7[0] = 0;
  v2 = [v0 initWithPublicKey:isa error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t specialized static PrivateAccessToken.TokenRequest.request(challenge:publicKey:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for SHA256();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA256Digest();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v54 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for __DataStorage();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = __DataStorage.init(length:)();
  v57 = 0x2000000000;
  v58 = v19;
  specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v57);
  v50[1] = v57;
  v55 = v58;
  objc_allocWithZone(MEMORY[0x277D02FE8]);
  outlined copy of Data._Representation(a3, a4);
  v20 = specialized @nonobjc RSABSSATokenBlinder.init(publicKey:)();
  if (v4)
  {
    outlined consume of Data._Representation(a3, a4);
LABEL_9:

    goto LABEL_10;
  }

  v50[0] = v20;
  outlined consume of Data._Representation(a3, a4);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  v21 = v54;
  dispatch thunk of HashFunction.finalize()();
  (*(v51 + 8))(v12, v9);
  v22 = *(v16 + 48);
  v23 = *(v16 + 52);
  swift_allocObject();
  v24 = __DataStorage.init(capacity:)();
  v61 = 0;
  v62 = v24 | 0x4000000000000000;
  v56 = 512;
  v59 = MEMORY[0x277D838B0];
  v60 = MEMORY[0x277CC9C18];
  v57 = &v56;
  v58 = &v57;
  v25 = __swift_project_boxed_opaque_existential_1(&v57, MEMORY[0x277D838B0]);
  v27 = *v25;
  v26 = v25[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v57);
  Data.append(_:)();
  v28 = v53;
  v59 = v53;
  v60 = lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
  v29 = __swift_allocate_boxed_opaque_existential_1(&v57);
  v30 = v52;
  (*(v52 + 16))(v29, v21, v28);
  v31 = __swift_project_boxed_opaque_existential_1(&v57, v59);
  MEMORY[0x28223BE20](v31);
  v50[-2] = &v61;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v57);
  v32 = v50[0];
  v33 = [v50[0] keyId];
  v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  Data.append(_:)();
  outlined consume of Data._Representation(v34, v36);
  v37 = [v32 keyId];
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = specialized BidirectionalCollection.last.getter(v38, v40);
  outlined consume of Data._Representation(v38, v40);
  if ((v41 & 0x100) != 0)
  {
    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v47 = xmmword_225024DA0;
    *(v47 + 16) = 2;
LABEL_8:
    swift_willThrow();

    (*(v30 + 8))(v54, v28);
    outlined consume of Data._Representation(v61, v62);
    goto LABEL_9;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v57 = 0;
  v43 = [v50[0] tokenWaitingActivationWithContent:isa error:&v57];

  if (!v43)
  {
    v48 = v57;
    _convertNSErrorToError(_:)();

    goto LABEL_8;
  }

  v44 = v57;
  v45 = [v43 blindedMessage];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v30 + 8))(v54, v28);
  type metadata accessor for PrivateAccessToken.ClientState();
  *(swift_allocObject() + 16) = v43;
  outlined consume of Data._Representation(v61, v62);

  result = (v41 << 16) | 2u;
LABEL_10:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized static PrivateAccessToken.newBlindRSATokenChallenge(for:)(uint64_t a1, unint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v31 = xmmword_225022910;
  v26 = 512;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  v29 = MEMORY[0x277D838B0];
  v30 = MEMORY[0x277CC9C18];
  v27 = &v26;
  v28 = &v27;
  v6 = __swift_project_boxed_opaque_existential_1(&v27, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v27);

  v9 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a1, a2);
  v11 = v9;
  v12 = v10;
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_13;
    }

    v16 = *(v9 + 16);
    v15 = *(v9 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v14) = HIDWORD(v9) - v9;
    if (__OFSUB__(HIDWORD(v9), v9))
    {
      goto LABEL_16;
    }

    v14 = v14;
LABEL_10:
    if ((v14 & 0x8000000000000000) == 0)
    {
      if (!(v14 >> 16))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v14) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (v13)
  {
    goto LABEL_8;
  }

  LODWORD(v14) = BYTE6(v10);
LABEL_14:
  v26 = bswap32(v14) >> 16;
  v29 = v4;
  v30 = v5;
  v27 = &v26;
  v28 = &v27;
  v18 = __swift_project_boxed_opaque_existential_1(&v27, v4);
  v20 = *v18;
  v19 = v18[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  Data.append(_:)();
  Data._Representation.append(contentsOf:)();
  v26 = 0;
  v29 = v4;
  v30 = v5;
  v27 = &v26;
  v28 = &v27;
  v21 = __swift_project_boxed_opaque_existential_1(&v27, v4);
  v23 = *v21;
  v22 = v21[1];
  Data._Representation.append(contentsOf:)();
  outlined consume of Data._Representation(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(&v27);
  result = v31;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PrivateAccessToken.Token(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateAccessToken.Token(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for PrivateAccessToken.TokenRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PrivateAccessToken.TokenRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError()
{
  result = lazy protocol witness table cache variable for type AuthenticationError and conformance AuthenticationError;
  if (!lazy protocol witness table cache variable for type AuthenticationError and conformance AuthenticationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationError and conformance AuthenticationError);
  }

  return result;
}

uint64_t AspireApiError.OneOf_ErrorType.errorName.getter()
{
  v1 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireApiError.OneOf_ErrorType(v0, v4, type metadata accessor for AspireApiError.OneOf_ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (one-time initialization token for protoMessageName != -1)
      {
        swift_once();
      }

      v6 = &static AspireApiError.InvalidRequest.protoMessageName;
    }

    else
    {
      if (one-time initialization token for protoMessageName != -1)
      {
        swift_once();
      }

      v6 = &static AspireApiError.InternalError.protoMessageName;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (one-time initialization token for protoMessageName != -1)
    {
      swift_once();
    }

    v6 = &static AspireApiError.EvaluationKeyNotFound.protoMessageName;
  }

  else
  {
    if (one-time initialization token for protoMessageName != -1)
    {
      swift_once();
    }

    v6 = &static AspireApiError.ConfigVersionNotFound.protoMessageName;
  }

  v7 = *v6;
  v8 = v6[1];

  outlined destroy of AspireApiError.OneOf_ErrorType(v4, type metadata accessor for AspireApiError.OneOf_ErrorType);
  return v7;
}

uint64_t Message.hash()()
{
  v1 = type metadata accessor for SHA256();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Message.serializedData(partial:)();
  if (!v0)
  {
    v12 = v10;
    v13 = v11;
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
    v17[0] = v6;
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v12, v13);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v12, v13);
    outlined consume of Data._Representation(v12, v13);
    dispatch thunk of HashFunction.finalize()();
    outlined consume of Data._Representation(v12, v13);
    (*(v21 + 8))(v4, v1);
    v19 = v5;
    v20 = _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    v15 = v17[0];
    (*(v17[0] + 16))(boxed_opaque_existential_1, v9, v5);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v15 + 8))(v9, v5);
    v5 = v17[1];
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return v5;
}

uint64_t AspireApiPIRConfig.shardCount.getter()
{
  v1 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v34 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v34 - v22;
  v24 = *(v0 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v25 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24 + v25, v11, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v26 = *(v13 + 48);
  if (v26(v11, 1, v12) == 1)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    v27 = &v16[*(v12 + 20)];
    UnknownStorage.init()();
    if (v26(v11, 1, v12) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v11, v16, type metadata accessor for AspireApiPIRShardConfigs);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v7, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  outlined destroy of AspireApiError.OneOf_ErrorType(v16, type metadata accessor for AspireApiPIRShardConfigs);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    v28 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    return *(*(v24 + v28) + 16);
  }

  else
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v7, v23, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    v30 = v34;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v23, v34, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    v31 = v30;
    v32 = v35;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v31, v35, type metadata accessor for AspireApiPIRFixedShardConfig);
    v29 = *v32;
    outlined destroy of AspireApiError.OneOf_ErrorType(v32, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  return v29;
}

uint64_t AspireApiPIRConfig.shardConfig(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v88 = a4;
  LODWORD(v89) = a3;
  v81 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v6 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v79 - v13;
  v15 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v83 = *(v15 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v85 = *(v19 - 8);
  v20 = *(v85 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v79 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v79 - v23;
  v24 = type metadata accessor for AspireApiPIRShardConfig(0);
  v25 = *(v24 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v86 = &v79 - v33;
  MEMORY[0x28223BE20](v32);
  v87 = &v79 - v35;
  if ((v89 & 1) == 0)
  {
    v41 = *(v91 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
    v42 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    v43 = *(v41 + v42);
    v44 = *(v43 + 16);
    if (!v44)
    {
LABEL_22:
      v51 = 1;
      v50 = v87;
LABEL_23:
      (*(v25 + 56))(v50, v51, 1, v24);
      v60 = v86;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50, v86, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
      if ((*(v25 + 48))(v60, 1, v24) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v60, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
        if (one-time initialization token for daemon != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        __swift_project_value_buffer(v61, static Logger.daemon);
        v62 = a2;
        outlined copy of ShardLabel(a1, a2, 0);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        outlined consume of ShardLabel(a1, v62, 0);
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v90 = v66;
          *v65 = 136446210;
          *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v62, &v90);
          _os_log_impl(&dword_224E26000, v63, v64, "PIR configuration is missing shardId %{public}s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x22AA61F40](v66, -1, -1);
          MEMORY[0x22AA61F40](v65, -1, -1);
        }

        type metadata accessor for CipherMLError();
        _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return outlined destroy of AMDPbHEConfig.OneOf_Config?(v50, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
      }

      else
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v50, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
        return outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v60, v88, type metadata accessor for AspireApiPIRShardConfig);
      }
    }

    v45 = v43 + ((*(v25 + 80) + 32) & ~*(v25 + 80));

    v46 = 0;
    while (v46 < *(v43 + 16))
    {
      outlined init with copy of AspireApiError.OneOf_ErrorType(v45 + *(v25 + 72) * v46, v28, type metadata accessor for AspireApiPIRShardConfig);
      v47 = &v28[v24[8]];
      v48 = *(v47 + 1);
      if (v48)
      {
        v49 = *v47 == a1 && v48 == a2;
        if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v50 = v87;
          outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v28, v87, type metadata accessor for AspireApiPIRShardConfig);
          v51 = 0;
          goto LABEL_23;
        }
      }

      ++v46;
      outlined destroy of AspireApiError.OneOf_ErrorType(v28, type metadata accessor for AspireApiPIRShardConfig);
      if (v44 == v46)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v89 = v34;
  v36 = AspireApiPIRConfig.shardCount.getter();
  if (v36 <= a1)
  {
    a2 = v36;
    if (one-time initialization token for daemon == -1)
    {
LABEL_18:
      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.daemon);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = a1;
        v56 = swift_slowAlloc();
        *v56 = 134217984;
        *(v56 + 4) = v55;
        _os_log_impl(&dword_224E26000, v53, v54, "Invalid shard index %ld for PIR configuration", v56, 0xCu);
        v57 = v56;
        a1 = v55;
        MEMORY[0x22AA61F40](v57, -1, -1);
      }

      type metadata accessor for CipherMLError();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      *v58 = a1;
      v58[1] = a2;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

LABEL_41:
    swift_once();
    goto LABEL_18;
  }

  v87 = a1;
  v37 = *(v91 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v38 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37 + v38, v14, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v39 = *(v83 + 48);
  if (v39(v14, 1, v15) == 1)
  {
    (*(v85 + 56))(v18, 1, 1, v19);
    v40 = &v18[*(v15 + 20)];
    UnknownStorage.init()();
    if (v39(v14, 1, v15) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v14, v18, type metadata accessor for AspireApiPIRShardConfigs);
  }

  v67 = v84;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18, v84, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  outlined destroy of AspireApiError.OneOf_ErrorType(v18, type metadata accessor for AspireApiPIRShardConfigs);
  if ((*(v85 + 48))(v67, 1, v19) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    v68 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    result = swift_beginAccess();
    if ((v87 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v69 = *(v37 + v68);
      if (*(v69 + 16) > v87)
      {
        return outlined init with copy of AspireApiError.OneOf_ErrorType(v69 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v87, v88, type metadata accessor for AspireApiPIRShardConfig);
      }
    }

    __break(1u);
  }

  else
  {
    v70 = v80;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v67, v80, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    v71 = v79;
    outlined init with copy of AspireApiError.OneOf_ErrorType(v70, v79, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    v72 = v82;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v71, v82, type metadata accessor for AspireApiPIRFixedShardConfig);
    v73 = v89;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v72 + *(v81 + 24), v89, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
    v74 = *(v25 + 48);
    if (v74(v73, 1, v24) == 1)
    {
      v75 = v88;
      *v88 = 0;
      v75[1] = 0;
      v75[2] = MEMORY[0x277D84F90];
      v76 = v75 + v24[7];
      UnknownStorage.init()();
      v77 = (v75 + v24[8]);
      *v77 = 0;
      v77[1] = 0;
      *(v75 + v24[9]) = 2;
      v78 = v75 + v24[10];
      *v78 = 0;
      v78[8] = 1;
      if (v74(v73, 1, v24) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v73, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
      }
    }

    else
    {
      outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v73, v88, type metadata accessor for AspireApiPIRShardConfig);
    }

    outlined destroy of AspireApiError.OneOf_ErrorType(v72, type metadata accessor for AspireApiPIRFixedShardConfig);
    return outlined destroy of AspireApiError.OneOf_ErrorType(v70, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  }

  return result;
}

uint64_t AspireApiPIRConfig.shardIndex(for:)(uint64_t a1, uint64_t *a2)
{
  v153 = a2;
  v151 = a1;
  v3 = type metadata accessor for AspireApiPIRConfig(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v141 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v137 = (&v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = type metadata accessor for SHA256();
  v150 = *(v152 - 8);
  v9 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v149 = (&v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for SHA256Digest();
  v155 = *(v11 - 8);
  v156 = v11;
  v12 = *(v155 + 64);
  MEMORY[0x28223BE20](v11);
  v154 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v140 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v148 = &v132 - v18;
  v19 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v158 = *(v19 - 8);
  v159 = v19;
  v20 = *(v158 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v138 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v145 = &v132 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v139 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v144 = &v132 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v132 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v134 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v142 = &v132 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v132 - v38;
  v40 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v41 = *(v40 - 1);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v135 = (&v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x28223BE20](v43);
  v143 = (&v132 - v46);
  MEMORY[0x28223BE20](v45);
  v48 = &v132 - v47;
  v136 = v3;
  v49 = *(v3 + 20);
  v157 = v2;
  v50 = *(&v2->isa + v49);
  v51 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50 + v51, v39, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v52 = *(v41 + 48);
  v53 = v52(v39, 1, v40);
  v146 = v52;
  v147 = v41 + 48;
  if (v53 == 1)
  {
    *v48 = 0;
    v48[8] = 0;
    v54 = &v48[v40[6]];
    UnknownStorage.init()();
    v55 = v40[7];
    v56 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v56 - 8) + 56))(&v48[v55], 1, 1, v56);
    (*(v158 + 56))(&v48[v40[8]], 1, 1, v159);
    v57 = v40;
    if (v52(v39, 1, v40) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    v57 = v40;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v39, v48, type metadata accessor for AspirePirKeywordPirParameters);
  }

  v58 = v57;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v48[v57[8]], v31, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  outlined destroy of AspireApiError.OneOf_ErrorType(v48, type metadata accessor for AspirePirKeywordPirParameters);
  v59 = *(v158 + 48);
  v60 = v59(v31, 1, v159);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  if (v60 == 1)
  {
    v61 = AspireApiPIRConfig.shardCount.getter();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
    v62 = v149;
    v63 = v152;
    dispatch thunk of HashFunction.init()();
    v64 = v151;
    v65 = v153;
    outlined copy of Data._Representation(v151, v153);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v64, v65);
    outlined consume of Data._Representation(v64, v65);
    v66 = v154;
    dispatch thunk of HashFunction.finalize()();
    (*(v150 + 8))(v62, v63);
    SHA256Digest.withUnsafeBytes<A>(_:)();
    (*(v155 + 8))(v66, v156);
    if (v61)
    {
      return v160 % v61;
    }

    __break(1u);
    goto LABEL_38;
  }

  v133 = v59;
  v68 = v142;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50 + v51, v142, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v69 = v146;
  if (v146(v68, 1, v57) == 1)
  {
    v70 = v143;
    *v143 = 0;
    *(v70 + 8) = 0;
    v71 = v70 + v57[6];
    UnknownStorage.init()();
    v72 = v57[7];
    v73 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v73 - 8) + 56))(v70 + v72, 1, 1, v73);
    v74 = v159;
    (*(v158 + 56))(v70 + v58[8], 1, 1, v159);
    v75 = v70;
    v76 = v69(v68, 1, v58) == 1;
    v66 = v148;
    v77 = v145;
    v78 = v68;
    v79 = v144;
    if (!v76)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v78, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    v75 = v143;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v68, v143, type metadata accessor for AspirePirKeywordPirParameters);
    v66 = v148;
    v74 = v159;
    v77 = v145;
    v79 = v144;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v75 + v58[8], v79, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v80 = v133;
  if (v133(v79, 1, v74) == 1)
  {
    v81 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
    (*(*(v81 - 8) + 56))(v77, 1, 1, v81);
    v82 = v77 + *(v74 + 20);
    UnknownStorage.init()();
    outlined destroy of AspireApiError.OneOf_ErrorType(v75, type metadata accessor for AspirePirKeywordPirParameters);
    if (v80(v79, 1, v74) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v79, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    }
  }

  else
  {
    outlined destroy of AspireApiError.OneOf_ErrorType(v75, type metadata accessor for AspirePirKeywordPirParameters);
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v79, v77, type metadata accessor for AspirePirPIRShardingFunction);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v77, v66, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined destroy of AspireApiError.OneOf_ErrorType(v77, type metadata accessor for AspirePirPIRShardingFunction);
  v31 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v62 = *(v31 - 1);
  if (v62[6](v66, 1, v31) != 1)
  {
    v101 = v140;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v66, v140, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v102 = v137;
      outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v101, v137, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      v103 = *v102;
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      v104 = v149;
      v105 = v152;
      dispatch thunk of HashFunction.init()();
      v106 = v151;
      v107 = v153;
      outlined copy of Data._Representation(v151, v153);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v106, v107);
      outlined consume of Data._Representation(v106, v107);
      v108 = v154;
      dispatch thunk of HashFunction.finalize()();
      (*(v150 + 8))(v104, v105);
      SHA256Digest.withUnsafeBytes<A>(_:)();
      result = (*(v155 + 8))(v108, v156);
      if (v103)
      {
        v109 = v160;
        v110 = AspireApiPIRConfig.shardCount.getter();
        result = outlined destroy of AspireApiError.OneOf_ErrorType(v102, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
        if (v110)
        {
          v111 = v109 % v103 % v110;
          v112 = v148;
LABEL_29:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v112, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
          return v111;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v113 = AspireApiPIRConfig.shardCount.getter();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      v114 = v149;
      v115 = v152;
      dispatch thunk of HashFunction.init()();
      v116 = v151;
      v117 = v153;
      outlined copy of Data._Representation(v151, v153);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v116, v117);
      outlined consume of Data._Representation(v116, v117);
      v118 = v154;
      dispatch thunk of HashFunction.finalize()();
      (*(v150 + 8))(v114, v115);
      SHA256Digest.withUnsafeBytes<A>(_:)();
      result = (*(v155 + 8))(v118, v156);
      if (v113)
      {
        v111 = v160 % v113;
        outlined destroy of AspireApiError.OneOf_ErrorType(v140, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
        v112 = v66;
        goto LABEL_29;
      }
    }

    __break(1u);
    return result;
  }

  v156 = v58;
  if (one-time initialization token for daemon != -1)
  {
LABEL_38:
    swift_once();
  }

  v83 = type metadata accessor for Logger();
  __swift_project_value_buffer(v83, static Logger.daemon);
  v84 = v141;
  outlined init with copy of AspireApiError.OneOf_ErrorType(v157, v141, type metadata accessor for AspireApiPIRConfig);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v85, v86))
  {
    LODWORD(v155) = v86;
    v157 = v85;
    v87 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v161 = v153;
    v154 = v87;
    *v87 = 136315138;
    v88 = *(v84 + *(v136 + 20));
    v89 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
    swift_beginAccess();
    v90 = v134;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v88 + v89, v134, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    v91 = v156;
    v92 = v146;
    if (v146(v90, 1, v156) == 1)
    {
      v93 = v135;
      *v135 = 0;
      *(v93 + 8) = 0;
      v94 = v93 + v91[6];
      UnknownStorage.init()();
      v95 = v91[7];
      v96 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
      v97 = v93 + v95;
      v98 = v93;
      (*(*(v96 - 8) + 56))(v97, 1, 1, v96);
      v99 = v93 + v91[8];
      v100 = v159;
      (*(v158 + 56))(v99, 1, 1, v159);
      if (v92(v90, 1, v91) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v90, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      }
    }

    else
    {
      v98 = v135;
      outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v90, v135, type metadata accessor for AspirePirKeywordPirParameters);
      v100 = v159;
    }

    v119 = v139;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v98 + v156[8], v139, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    v120 = v133;
    v121 = v133(v119, 1, v100);
    v122 = v141;
    if (v121 == 1)
    {
      v123 = v138;
      (v62[7])(v138, 1, 1, v31);
      v124 = v123;
      v125 = v139;
      v126 = v124 + *(v100 + 20);
      UnknownStorage.init()();
      outlined destroy of AspireApiError.OneOf_ErrorType(v98, type metadata accessor for AspirePirKeywordPirParameters);
      if (v120(v125, 1, v100) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v125, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
      }
    }

    else
    {
      outlined destroy of AspireApiError.OneOf_ErrorType(v98, type metadata accessor for AspirePirKeywordPirParameters);
      v124 = v138;
      outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v119, v138, type metadata accessor for AspirePirPIRShardingFunction);
    }

    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction);
    v127 = Message.textFormatString()();
    outlined destroy of AspireApiError.OneOf_ErrorType(v124, type metadata accessor for AspirePirPIRShardingFunction);
    outlined destroy of AspireApiError.OneOf_ErrorType(v122, type metadata accessor for AspireApiPIRConfig);
    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127._countAndFlagsBits, v127._object, &v161);

    v129 = v154;
    *(v154 + 4) = v128;
    v130 = v157;
    _os_log_impl(&dword_224E26000, v157, v155, "PIR configuration has invalid sharding function: %s.", v129, 0xCu);
    v131 = v153;
    __swift_destroy_boxed_opaque_existential_0(v153);
    MEMORY[0x22AA61F40](v131, -1, -1);
    MEMORY[0x22AA61F40](v129, -1, -1);

    v66 = v148;
  }

  else
  {

    outlined destroy of AspireApiError.OneOf_ErrorType(v84, type metadata accessor for AspireApiPIRConfig);
  }

  type metadata accessor for CipherMLError();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return outlined destroy of AMDPbHEConfig.OneOf_Config?(v66, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
}

BOOL AspireApiPIRConfig.isShardEmpty(for:)(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for AspireApiPIRShardConfig(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = AspireApiPIRConfig.shardIndex(for:)(a1, a2);
  if (!v2)
  {
    AspireApiPIRConfig.shardConfig(at:)(v9, 0, 1, v8);
    v12 = *v8;
    outlined destroy of AspireApiError.OneOf_ErrorType(v8, type metadata accessor for AspireApiPIRShardConfig);
    return v12 == 0;
  }

  return v10;
}

BOOL AspireApiPIRConfig.isShardEmpty(at:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for AspireApiPIRShardConfig(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  AspireApiPIRConfig.shardConfig(at:)(a1, a2, a3 & 1, v10);
  if (!v3)
  {
    v12 = *v10;
    outlined destroy of AspireApiError.OneOf_ErrorType(v10, type metadata accessor for AspireApiPIRShardConfig);
    return v12 == 0;
  }

  return v11;
}

uint64_t AspireApiConfig.evaluationKeyConfigHash.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AspireApiPIRConfig(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspireApiPECConfig(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, &v20 - v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v13, v9, type metadata accessor for AspireApiPECConfig);
    v15 = *(v9 + 4);
    outlined copy of Data._Representation(v15, *(v9 + 5));
    v16 = type metadata accessor for AspireApiPECConfig;
    v17 = v9;
  }

  else
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v13, v5, type metadata accessor for AspireApiPIRConfig);
    v18 = *&v5[*(v2 + 20)] + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash;
    swift_beginAccess();
    v15 = *v18;
    outlined copy of Data._Representation(*v18, *(v18 + 8));
    v16 = type metadata accessor for AspireApiPIRConfig;
    v17 = v5;
  }

  outlined destroy of AspireApiError.OneOf_ErrorType(v17, v16);
  return v15;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for SHA256();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = Data._Representation.append(contentsOf:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t outlined copy of ShardLabel(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined consume of ShardLabel(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined init with copy of AspireApiError.OneOf_ErrorType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AspireApiError.OneOf_ErrorType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x22AA5F1C0]();
      type metadata accessor for SHA256();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x22AA5F1C0]();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t CipherMLError.errorDescription.getter()
{
  v1 = type metadata accessor for HE.SecurityLevel();
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HE.Scheme();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NetworkManagerError(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CipherMLError();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of CipherMLError(v0, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x2064696C61766E69;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v34 = *v20;
      v35 = v20[1];
      v37 = v20[2];
      v36 = v20[3];
      v24 = v20[4];
      v23 = v20[5];
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      MEMORY[0x22AA60A80](0xD00000000000001BLL, 0x80000002250363C0);
      MEMORY[0x22AA60A80](v34, v35);

      MEMORY[0x22AA60A80](0xD00000000000001CLL, 0x80000002250363E0);
      MEMORY[0x22AA60A80](v37, v36);

      MEMORY[0x22AA60A80](0x2720646E612027, 0xE700000000000000);
      goto LABEL_19;
    case 2:
      v24 = *v20;
      v23 = v20[1];
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v25 = 0xEF272070756F7267;
      v57[0] = 0x2064696C61766E69;
      goto LABEL_18;
    case 3:
      v24 = *v20;
      v23 = v20[1];
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v25 = 0x8000000225036220;
      v26 = 0xD000000000000014;
      goto LABEL_17;
    case 4:
      v38 = *v20;
      v39 = v20[1];
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v57[0] = 0xD000000000000014;
      v57[1] = 0x8000000225036160;
      v55 = v38;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA60A80](v40);

      v41 = 0xD000000000000010;
      v42 = 0x8000000225036180;
      goto LABEL_28;
    case 5:
      v45 = *v20;
      v39 = v20[1];
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      MEMORY[0x22AA60A80](0xD000000000000029, 0x8000000225035E10);
      v55 = v45;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA60A80](v46);

      v42 = 0x8000000225035E40;
      v41 = 0xD000000000000015;
LABEL_28:
      MEMORY[0x22AA60A80](v41, v42);
      v55 = v39;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA60A80](v47);

      goto LABEL_29;
    case 6:
      v24 = *v20;
      v23 = v20[1];
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v25 = 0x80000002250360B0;
      v26 = 0xD000000000000015;
      goto LABEL_17;
    case 7:
      outlined init with take of AspireHeEncryptionParameters(v20, v16, type metadata accessor for NetworkManagerError);
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      MEMORY[0x22AA60A80](0xD000000000000017, 0x8000000225035FC0);
      _print_unlocked<A, B>(_:_:)();
      v30 = v57[0];
      v49 = type metadata accessor for NetworkManagerError;
      v50 = v16;
      goto LABEL_33;
    case 8:
      v32 = *v20;
      v31 = v20[1];
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v57, "server error (");
      HIBYTE(v57[1]) = -18;
      MEMORY[0x22AA60A80](v32, v31);

      goto LABEL_13;
    case 9:
      outlined init with take of AspireHeEncryptionParameters(v20, v12, type metadata accessor for AspireHeEncryptionParameters);
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v57[0] = 0xD00000000000002DLL;
      v57[1] = 0x8000000225035F50;
      lazy protocol witness table accessor for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
      countAndFlagsBits = Message.textFormatString()()._countAndFlagsBits;
      MEMORY[0x22AA60A80](countAndFlagsBits);

      v30 = v57[0];
      v49 = type metadata accessor for AspireHeEncryptionParameters;
      v50 = v12;
LABEL_33:
      outlined destroy of AspireHeEncryptionParameters(v50, v49);
      goto LABEL_34;
    case 10:
      v27 = *v20;
      v28 = *(v20 + 8);
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(33);
      MEMORY[0x22AA60A80](0xD00000000000001ELL, 0x8000000225035F30);
      v55 = v27;
      v56 = v28;
      _print_unlocked<A, B>(_:_:)();
LABEL_13:
      v33 = 41;
      goto LABEL_20;
    case 11:
      v29 = v52;
      (*(v52 + 32))(v8, v20, v5);
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      MEMORY[0x22AA60A80](0xD000000000000017, 0x8000000225035F10);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x22AA60A80](41, 0xE100000000000000);
      v30 = v57[0];
      (*(v29 + 8))(v8, v5);
      goto LABEL_34;
    case 12:
      v44 = v53;
      v43 = v54;
      (*(v53 + 32))(v4, v20, v54);
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      MEMORY[0x22AA60A80](0xD00000000000001CLL, 0x8000000225035EA0);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x22AA60A80](41, 0xE100000000000000);
      v30 = v57[0];
      (*(v44 + 8))(v4, v43);
LABEL_34:
      result = v30;
      break;
    case 13:
      result = 0xD000000000000025;
      break;
    case 14:
    case 20:
    case 34:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000026;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
    case 27:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 21:
    case 31:
      result = 0xD000000000000024;
      break;
    case 22:
    case 39:
      result = 0xD00000000000001ALL;
      break;
    case 23:
    case 28:
    case 45:
      result = 0xD000000000000019;
      break;
    case 24:
      return result;
    case 25:
    case 32:
      result = 0xD000000000000017;
      break;
    case 26:
    case 37:
      result = 0xD00000000000001CLL;
      break;
    case 29:
      result = 0xD000000000000015;
      break;
    case 30:
      result = 0xD000000000000027;
      break;
    case 33:
      result = 0xD00000000000001ELL;
      break;
    case 35:
    case 41:
      result = 0xD000000000000018;
      break;
    case 36:
      result = 0x20676E697373696DLL;
      break;
    case 38:
      result = 0x6C706D6920746F6ELL;
      break;
    case 40:
    case 43:
      result = 0xD00000000000001DLL;
      break;
    case 42:
      result = 0xD000000000000022;
      break;
    case 44:
      result = 0xD000000000000020;
      break;
    default:
      v24 = *v20;
      v23 = v20[1];
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v25 = 0x8000000225036390;
      v26 = 0xD00000000000002DLL;
LABEL_17:
      v57[0] = v26;
LABEL_18:
      v57[1] = v25;
LABEL_19:
      MEMORY[0x22AA60A80](v24, v23);

      v33 = 39;
LABEL_20:
      MEMORY[0x22AA60A80](v33, 0xE100000000000000);
LABEL_29:
      result = v57[0];
      break;
  }

  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        outlined init with take of Any(&v27, v29);
        outlined init with take of Any(v29, v30);
        outlined init with take of Any(v30, &v28);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = outlined init with take of Any(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = outlined init with take of Any(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}