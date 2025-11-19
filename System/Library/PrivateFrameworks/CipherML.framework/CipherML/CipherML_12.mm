Swift::Void __swiftcall AMSNetworking.cancel()()
{
  v1 = v0;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.networking);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224E26000, v3, v4, "Cancelling all tasks", v5, 2u);
    MEMORY[0x22AA61F40](v5, -1, -1);
  }

  v6 = [*(v1 + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) session];
  v8[4] = closure #1 in AspireNetworkManager.cancel();
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [NSURLSessionTask]) -> ();
  v8[3] = &block_descriptor_24;
  v7 = _Block_copy(v8);
  [v6 getAllTasksWithCompletionHandler_];
  _Block_release(v7);
}

uint64_t protocol witness for NetworkManager.networkDelegationConfig.getter in conformance AMSNetworking()
{
  v1 = (*v0 + OBJC_IVAR____TtC8CipherML13AMSNetworking_networkDelegationConfig);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance AMSNetworking(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NetworkManager.uploadKeys(evaluationKeys:userId:) in conformance AMSNetworking(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v10(a1, a2);
}

uint64_t protocol witness for NetworkManager.queries(requests:userId:) in conformance AMSNetworking(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 168);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NetworkManager.cancel() in conformance AMSNetworking()
{
  (*(**v0 + 176))();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS8CipherML15AspireApiConfigVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_SS_8i4ML15klM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n03_s8i52ML13AMSNetworkingC12fetchConfigs8useCases6userIdAA23klM103ResponseVSaySS4name_Says5UInt8VG08existinglI0tG_10Foundation4UUIDVtYaKFSbSS3key_AA0jkL0V5valuet_tXEfU1_SaySSGTf1nnc_n(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t specialized AMSNetworking.requestHeaders()()
{
  v0 = type metadata accessor for Date.ISO8601FormatStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  strcpy((inited + 32), "Content-Type");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 0xD000000000000016;
  *(inited + 56) = 0x8000000225038200;
  *(inited + 64) = 0xD000000000000015;
  *(inited + 72) = 0x8000000225038220;
  static Date.now.getter();
  default argument 0 of Date.ISO8601Format(_:)(v4);
  v11 = Date.ISO8601Format(_:)();
  v13 = v12;
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  *(inited + 80) = v11;
  *(inited + 88) = v13;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  return v14;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *specialized AMSURLResult.validateSuccessResponse()()
{
  if ([v0 responseStatusCode] != 200)
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.networking);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      [v2 responseStatusCode];
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 4) = v9;
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA61F40](v6, -1, -1);
      MEMORY[0x22AA61F40](v5, -1, -1);
    }

    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v0;
}

uint64_t outlined init with copy of AMDPbHEResponse.OneOf_Response?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v37 = a2;
  v38 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v43 = (&v36 - v8);
  v9 = type metadata accessor for AspireApiConfig(0);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v12 = 0;
  v46 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v49 = v5;
    v20 = __clz(__rbit64(v18));
    v47 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v46[7];
    v25 = (v46[6] + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = v41;
    v29 = *(v42 + 72);
    v40 = v23;
    outlined init with copy of AMDPbHEConfigsReply(v24 + v29 * v23, v41, type metadata accessor for AspireApiConfig);
    v31 = v43;
    v30 = v44;
    *v43 = v26;
    *(v31 + 8) = v27;
    v32 = outlined init with copy of AMDPbHEConfigsReply(v28, v31 + *(v30 + 48), type metadata accessor for AspireApiConfig);
    v48[0] = v26;
    v48[1] = v27;
    MEMORY[0x28223BE20](v32);
    *(&v36 - 2) = v48;
    swift_bridgeObjectRetain_n();
    v33 = v49;
    v34 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v36 - 4), v45);
    v5 = v33;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
    outlined destroy of AMDPbHEResponse(v28, type metadata accessor for AspireApiConfig);

    v18 = v47;
    if (v34)
    {
      *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(v38, v37, v39, v46);
        return;
      }
    }
  }

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
      goto LABEL_15;
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v49 = v5;
      v20 = __clz(__rbit64(v22));
      v47 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS8CipherML15AspireApiConfigVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_SS_8i4ML15klM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n03_s8i52ML13AMSNetworkingC12fetchConfigs8useCases6userIdAA23klM103ResponseVSaySS4name_Says5UInt8VG08existinglI0tG_10Foundation4UUIDVtYaKFSbSS3key_AA0jkL0V5valuet_tXEfU1_SaySSGTf1nnc_n(v14, v7, a1, a2);
      MEMORY[0x22AA61F40](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  specialized closure #1 in _NativeDictionary.filter(_:)((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AMSNetworking()
{
  result = type metadata singleton initialization cache for AMSNetworking;
  if (!type metadata singleton initialization cache for AMSNetworking)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AMSNetworking()
{
  result = type metadata accessor for URL();
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

uint64_t dispatch thunk of AMSNetworking.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of AMSNetworking.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AMSNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 168);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3);
}

uint64_t outlined init with take of AspireApiConfigResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AMDPbHEConfigsReply(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AMDPbHEResponse(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static CacheDirectory.cacheFile(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, static CacheDirectory.url);
  v15[0] = a1;
  v15[1] = a2;
  (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v5 + 8))(v8, v4);
  URL.appendingPathExtension(_:)();
  return (*(v10 + 8))(v13, v9);
}

uint64_t CacheDirectory.cacheFile.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for URL();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t getTempDirectory()@<X0>(uint64_t a1@<X8>)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 temporaryDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v28[0] = 0;
  v12 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:v10 create:1 error:v28];

  v13 = v28[0];
  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    result = (*(v3 + 8))(v6, v2);
  }

  else
  {
    v16 = v28[0];
    v17 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.daemon);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_224E26000, v20, v21, "Failed to create unique temp directory, falling back to base temp directory: %{public}@", v22, 0xCu);
      outlined destroy of NSObject?(v23);
      MEMORY[0x22AA61F40](v23, -1, -1);
      MEMORY[0x22AA61F40](v22, -1, -1);
    }

    else
    {
    }

    result = (*(v3 + 32))(a1, v6, v2);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void createDirectory(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v50[0] = 0;
  v15 = [v11 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v50];

  if (v15)
  {
    v16 = one-time initialization token for daemon;
    v17 = v50[0];
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.daemon);
    v19 = *(v4 + 16);
    v19(v10, a1, v3);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v47 = v19;
      v23 = v22;
      v24 = swift_slowAlloc();
      v50[0] = v24;
      *v23 = 136446210;
      lazy protocol witness table accessor for type URL and conformance URL();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = a1;
      v26 = v3;
      v28 = v27;
      (*(v4 + 8))(v10, v26);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, v50);
      v3 = v26;
      a1 = v48;

      *(v23 + 4) = v29;
      _os_log_impl(&dword_224E26000, v20, v21, "Successful access of directory at %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AA61F40](v24, -1, -1);
      v30 = v23;
      v19 = v47;
      MEMORY[0x22AA61F40](v30, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }

    v19(v49, a1, v3);
  }

  else
  {
    v31 = v50[0];
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.daemon);
    (*(v4 + 16))(v8, a1, v3);
    v34 = v32;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50[0] = v48;
      *v37 = 136446466;
      lazy protocol witness table accessor for type URL and conformance URL();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v4 + 8))(v8, v3);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v50);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2114;
      v43 = v32;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v44;
      *v38 = v44;
      _os_log_impl(&dword_224E26000, v35, v36, "Failed to create directory at %{public}s, falling back to temp directory: %{public}@", v37, 0x16u);
      outlined destroy of NSObject?(v38);
      MEMORY[0x22AA61F40](v38, -1, -1);
      v45 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AA61F40](v45, -1, -1);
      MEMORY[0x22AA61F40](v37, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    getTempDirectory()(v49);
  }

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t one-time initialization function for url()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static CacheDirectory.url);
  v1 = __swift_project_value_buffer(v0, static CacheDirectory.url);
  return closure #1 in variable initialization expression of static CacheDirectory.url(v1);
}

uint64_t closure #1 in variable initialization expression of static CacheDirectory.url@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  specialized static DaemonContainerPathLookup.path(for:)(0, 0);
  URL.init(fileURLWithPath:)();

  createDirectory(_:)(v6, a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t one-time initialization function for cacheFile()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, static CacheDirectory.cacheFile);
  __swift_project_value_buffer(v5, static CacheDirectory.cacheFile);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, static CacheDirectory.url);
  (*(v6 + 16))(v10, v11, v5);
  strcpy(v13, "cache.sqlite");
  HIBYTE(v13[6]) = 0;
  v13[7] = -5120;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t one-time initialization function for activeUseCaseTrackerFile()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, static CacheDirectory.activeUseCaseTrackerFile);
  __swift_project_value_buffer(v5, static CacheDirectory.activeUseCaseTrackerFile);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, static CacheDirectory.url);
  (*(v6 + 16))(v10, v11, v5);
  v13[0] = 0xD000000000000015;
  v13[1] = 0x8000000225038240;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t one-time initialization function for dynamicAllowListFile()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, static CacheDirectory.dynamicAllowListFile);
  __swift_project_value_buffer(v5, static CacheDirectory.dynamicAllowListFile);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, static CacheDirectory.url);
  (*(v6 + 16))(v10, v11, v5);
  v13[0] = 0xD000000000000016;
  v13[1] = 0x8000000225038310;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t one-time initialization function for tokenCacheFile()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, static CacheDirectory.tokenCacheFile);
  __swift_project_value_buffer(v5, static CacheDirectory.tokenCacheFile);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, static CacheDirectory.url);
  (*(v6 + 16))(v10, v11, v5);
  v13[0] = 0xD000000000000011;
  v13[1] = 0x80000002250382D0;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t one-time initialization function for fakeQueriesDirectory()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (v18 - v11);
  __swift_allocate_value_buffer(v13, static CacheDirectory.fakeQueriesDirectory);
  v14 = __swift_project_value_buffer(v5, static CacheDirectory.fakeQueriesDirectory);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, static CacheDirectory.url);
  (*(v6 + 16))(v9, v15, v5);
  v18[0] = 0xD000000000000014;
  v18[1] = 0x80000002250382F0;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v4, v0);
  v16 = *(v6 + 8);
  v16(v9, v5);
  createDirectory(_:)(v12, v14);
  return (v16)(v12, v5);
}

uint64_t static CacheDirectory.url.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for URL();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t static Sharding.sha256Shard(keyword:shardCount:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v16 = a3;
  v5 = type metadata accessor for SHA256();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA256Digest();
  v10 = *(v15 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v15);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  (*(v6 + 8))(v9, v5);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  result = (*(v10 + 8))(v13, v15);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16)
  {
    return v17 % v16;
  }

  __break(1u);
  return result;
}

uint64_t static Sharding.truncatedHash(keyword:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA256Digest();
  v9 = *(v15 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v15);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  (*(v5 + 8))(v8, v4);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v9 + 8))(v12, v15);
  return v16;
}

unint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256()
{
  result = lazy protocol witness table cache variable for type SHA256 and conformance SHA256;
  if (!lazy protocol witness table cache variable for type SHA256 and conformance SHA256)
  {
    type metadata accessor for SHA256();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA256 and conformance SHA256);
  }

  return result;
}

void *closure #1 in static Sharding.truncatedHash(keyword:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AMDPbHEResponse.apiCode.getter()
{
  v1 = (v0 + *(type metadata accessor for AMDPbHEResponse(0) + 36));
  v2 = v1[8];
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t AMDPbHEResponse.configs.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v7 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AMDPbHEConfigsReply(v5, a1, type metadata accessor for AMDPbHEConfigsReply);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v5, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML13AMDPbHEConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1[1] = v9;
  v10 = a1 + *(type metadata accessor for AMDPbHEConfigsReply(0) + 24);
  return UnknownStorage.init()();
}

uint64_t AMDPbHEResponse.heReplies.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 28), v6, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v8 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AMDPbHEConfigsReply(v6, a1, type metadata accessor for AMDPbHEReplies);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v6, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for AMDPbHEReplies(0) + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHE_APICode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AMDPbHE_APICode and conformance AMDPbHE_APICode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t AMDPbHEResponse.apiCode.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for AMDPbHEResponse(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*AMDPbHEResponse.apiCode.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for AMDPbHEResponse(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return AMDPbHEResponse.apiCode.modify;
}

uint64_t AMDPbHEResponse.apiCode.modify(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall AMDPbHEResponse.clearApiCode()()
{
  v1 = v0 + *(type metadata accessor for AMDPbHEResponse(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t AMDPbHEResponse.status.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t AMDPbHEResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AMDPbHEResponse.statuses.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AMDPbHEResponse.errorMessage.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t AMDPbHEResponse.response.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AMDPbHEResponse(0) + 28);

  return outlined assign with take of AMDPbHEResponse.OneOf_Response?(a1, v3);
}

uint64_t AMDPbHEResponse.heReply.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 28), v6, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v8 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AMDPbHEConfigsReply(v6, a1, type metadata accessor for AMDPbHEReply);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v6, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v9 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  v10 = a1 + *(type metadata accessor for AMDPbHEReply(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AMDPbHEResponse.heReply : AMDPbHEResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 28), v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v9 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AMDPbHEConfigsReply(v7, a2, type metadata accessor for AMDPbHEReply);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v7, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v10 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  v11 = a2 + *(type metadata accessor for AMDPbHEReply(0) + 20);
  return UnknownStorage.init()();
}

void (*AMDPbHEResponse.heReply.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AMDPbHEReply(0);
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
  v13 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v14 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AMDPbHEConfigsReply(v8, v12, type metadata accessor for AMDPbHEReply);
      return AMDPbHEResponse.heReply.modify;
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v16 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = v12 + *(v9 + 20);
  UnknownStorage.init()();
  return AMDPbHEResponse.heReply.modify;
}

uint64_t key path getter for AMDPbHEResponse.heReplies : AMDPbHEResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 28), v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v9 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AMDPbHEConfigsReply(v7, a2, type metadata accessor for AMDPbHEReplies);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v7, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + *(type metadata accessor for AMDPbHEReplies(0) + 20);
  return UnknownStorage.init()();
}

void (*AMDPbHEResponse.heReplies.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AMDPbHEReplies(0);
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
  v13 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v14 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    v16 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return AMDPbHEResponse.heReplies.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    goto LABEL_15;
  }

  outlined init with take of AMDPbHEConfigsReply(v8, v12, type metadata accessor for AMDPbHEReplies);
  return AMDPbHEResponse.heReplies.modify;
}

uint64_t key path setter for AMDPbHEResponse.heReply : AMDPbHEResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v17 - v12;
  outlined init with copy of AMDPbHEReply(a1, &v17 - v12, a6);
  v14 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  outlined init with take of AMDPbHEConfigsReply(v13, a2 + v14, a7);
  v15 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2 + v14, 0, 1, v15);
}

uint64_t AMDPbHEResponse.heReply.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v5, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  outlined init with take of AMDPbHEConfigsReply(a1, v2 + v5, a2);
  v6 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

void (*AMDPbHEResponse.configs.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AMDPbHEConfigsReply(0);
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
  v13 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v14 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    *v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML13AMDPbHEConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v12[1] = v16;
    v17 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return AMDPbHEResponse.configs.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    goto LABEL_15;
  }

  outlined init with take of AMDPbHEConfigsReply(v8, v12, type metadata accessor for AMDPbHEConfigsReply);
  return AMDPbHEResponse.configs.modify;
}

void AMDPbHEResponse.heReply.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AMDPbHEReply(v12, v11, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13 + v10, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    outlined destroy of AMDPbHEResponse.OneOf_Response(v12, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13 + v10, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t AMDPbHEResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AMDPbHEResponse(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AMDPbHEResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbHEResponse(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance AMDPbHE_APICode@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AMDPbHE_APICode@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AMDPbHE_APICode()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEResponse.PbStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AMDPbHE_APICode()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AMDPbHEResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v2;
  v3 = type metadata accessor for AMDPbHEResponse(0);
  v4 = v3[7];
  v5 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[8];
  result = UnknownStorage.init()();
  v8 = a1 + v3[9];
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

uint64_t AMDPbHEResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            closure #1 in AMDPbHEResponse.decodeMessage<A>(decoder:)();
            break;
          case 2:
            lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 3:
            closure #3 in AMDPbHEResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();
          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
        }
      }

      else if (result == 4)
      {
        closure #4 in AMDPbHEResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else
      {
        closure #5 in AMDPbHEResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AMDPbHEResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AMDPbHEResponse(0) + 36);
  lazy protocol witness table accessor for type AMDPbHE_APICode and conformance AMDPbHE_APICode();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #3 in AMDPbHEResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for AMDPbHEReply(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  v48 = a1;
  v46 = v33;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v33, v14, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v35 = v15;
    v36 = v54;
  }

  else
  {
    outlined init with take of AMDPbHEConfigsReply(v14, v22, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    outlined init with take of AMDPbHEConfigsReply(v22, v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AMDPbHEResponse.OneOf_Response(v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
      v36 = v54;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
      v37 = v19;
      v38 = v49;
      outlined init with take of AMDPbHEConfigsReply(v37, v49, type metadata accessor for AMDPbHEReply);
      outlined init with take of AMDPbHEConfigsReply(v38, v29, type metadata accessor for AMDPbHEReply);
      v36 = v54;
      v32(v29, 0, 1, v54);
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReply and conformance AMDPbHEReply, type metadata accessor for AMDPbHEReply);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v39, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
  }

  else
  {
    v42 = v50;
    outlined init with take of AMDPbHEConfigsReply(v39, v50, type metadata accessor for AMDPbHEReply);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v48 + v46, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v42, v43 + v44, type metadata accessor for AMDPbHEReply);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #4 in AMDPbHEResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for AMDPbHEReplies(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  v48 = a1;
  v46 = v33;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v33, v14, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v35 = v15;
  }

  else
  {
    outlined init with take of AMDPbHEConfigsReply(v14, v22, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    outlined init with take of AMDPbHEConfigsReply(v22, v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
      v36 = v19;
      v37 = v50;
      outlined init with take of AMDPbHEConfigsReply(v36, v50, type metadata accessor for AMDPbHEReplies);
      outlined init with take of AMDPbHEConfigsReply(v37, v29, type metadata accessor for AMDPbHEReplies);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReplies and conformance AMDPbHEReplies, type metadata accessor for AMDPbHEReplies);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v39, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of AMDPbHEConfigsReply(v39, v49, type metadata accessor for AMDPbHEReplies);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v48 + v46, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v42, v43 + v44, type metadata accessor for AMDPbHEReplies);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #5 in AMDPbHEResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for AMDPbHEConfigsReply(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  v48 = a1;
  v46 = v33;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v33, v14, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v35 = v15;
  }

  else
  {
    outlined init with take of AMDPbHEConfigsReply(v14, v22, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    outlined init with take of AMDPbHEConfigsReply(v22, v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
      v36 = v19;
      v37 = v50;
      outlined init with take of AMDPbHEConfigsReply(v36, v50, type metadata accessor for AMDPbHEConfigsReply);
      outlined init with take of AMDPbHEConfigsReply(v37, v29, type metadata accessor for AMDPbHEConfigsReply);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v39, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of AMDPbHEConfigsReply(v39, v49, type metadata accessor for AMDPbHEConfigsReply);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v48 + v46, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v42, v43 + v44, type metadata accessor for AMDPbHEConfigsReply);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  result = closure #1 in AMDPbHEResponse.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    if (*v3)
    {
      v13 = *(v3 + 8);
      v18 = *v3;
      v19 = v13;
      lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v14 = type metadata accessor for AMDPbHEResponse(0);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3 + *(v14 + 28), v11, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v15 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
    if ((*(*(v15 - 8) + 48))(v11, 1, v15) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          closure #3 in AMDPbHEResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
        }

        else
        {
          closure #4 in AMDPbHEResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
        }
      }

      else
      {
        closure #2 in AMDPbHEResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      outlined destroy of AMDPbHEResponse.OneOf_Response(v11, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    }

    if (*(*(v3 + 16) + 16))
    {
      lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();
      dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)();
    }

    if (*(*(v3 + 24) + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    v17 = v3 + *(v14 + 32);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AMDPbHEResponse(0);
  v3 = (a1 + *(result + 36));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    lazy protocol witness table accessor for type AMDPbHE_APICode and conformance AMDPbHE_APICode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AMDPbHEReply(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v13 + 28), v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v14 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AMDPbHEConfigsReply(v8, v12, type metadata accessor for AMDPbHEReply);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReply and conformance AMDPbHEReply, type metadata accessor for AMDPbHEReply);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEResponse.OneOf_Response(v12, type metadata accessor for AMDPbHEReply);
  }

  result = outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t closure #3 in AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AMDPbHEReplies(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v13 + 28), v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v14 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AMDPbHEConfigsReply(v8, v12, type metadata accessor for AMDPbHEReplies);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReplies and conformance AMDPbHEReplies, type metadata accessor for AMDPbHEReplies);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEResponse.OneOf_Response(v12, type metadata accessor for AMDPbHEReplies);
  }

  result = outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t closure #4 in AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AMDPbHEConfigsReply(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v13 + 28), v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v14 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AMDPbHEConfigsReply(v8, v12, type metadata accessor for AMDPbHEConfigsReply);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEResponse.OneOf_Response(v12, type metadata accessor for AMDPbHEConfigsReply);
  }

  result = outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  __break(1u);
  return result;
}

Swift::Int AMDPbHEResponse.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for AMDPbHEResponse(0);
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AMDPbHEResponse@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = v4;
  v5 = a1[7];
  v6 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a2 + a1[8];
  result = UnknownStorage.init()();
  v9 = a2 + a1[9];
  *v9 = 0;
  *(v9 + 8) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbHEResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbHEResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static AMDPbHEResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSg_AFtMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v17 = type metadata accessor for AMDPbHEResponse(0);
  v18 = *(v17 + 36);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 9);
  v21 = a2 + v18;
  v22 = *(a2 + v18 + 9);
  if (v20)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (v22)
    {
      goto LABEL_45;
    }

    v25 = *v19;
    v26 = *v21;
    if (*(v21 + 8))
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          if (v25 != 2)
          {
            goto LABEL_45;
          }
        }

        else if (v25 != 3)
        {
          goto LABEL_45;
        }
      }

      else if (v26)
      {
        if (v25 != 1)
        {
          goto LABEL_45;
        }
      }

      else if (v25)
      {
        goto LABEL_45;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_45;
    }
  }

  v23 = *a1;
  v24 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        if (v23 != 3)
        {
          goto LABEL_45;
        }
      }

      else if (v24 == 4)
      {
        if (v23 != 4)
        {
          goto LABEL_45;
        }
      }

      else if (v23 != 5)
      {
        goto LABEL_45;
      }
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        if (v23 != 1)
        {
          goto LABEL_45;
        }
      }

      else if (v23 != 2)
      {
        goto LABEL_45;
      }
    }

    else if (v23)
    {
      goto LABEL_45;
    }
  }

  else if (v23 != v24)
  {
    goto LABEL_45;
  }

  v37 = v17;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML15AMDPbHEResponseV8PbStatusO_Tt1g5(a1[2], *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[3], *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_45;
  }

  v27 = *(v37 + 28);
  v28 = *(v13 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v27, v16, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v29 = a2 + v27;
  v30 = v28;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, &v16[v28], &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v31 = *(v5 + 48);
  if (v31(v16, 1, v4) == 1)
  {
    if (v31(&v16[v30], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
LABEL_48:
      v35 = *(v37 + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_44;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  if (v31(&v16[v30], 1, v4) == 1)
  {
    outlined destroy of AMDPbHEResponse.OneOf_Response(v12, type metadata accessor for AMDPbHEResponse.OneOf_Response);
LABEL_44:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSg_AFtMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSg_AFtMR);
    goto LABEL_45;
  }

  outlined init with take of AMDPbHEConfigsReply(&v16[v30], v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  v34 = specialized static AMDPbHEResponse.OneOf_Response.== infix(_:_:)(v12, v8);
  outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  outlined destroy of AMDPbHEResponse.OneOf_Response(v12, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  if (v34)
  {
    goto LABEL_48;
  }

LABEL_45:
  v32 = 0;
  return v32 & 1;
}

uint64_t specialized static AMDPbHEResponse.OneOf_Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for AMDPbHEConfigsReply(0);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for AMDPbHEReplies(0);
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AMDPbHEReply(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v45 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseO_AEtMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseO_AEtMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v45 - v24;
  v27 = *(v26 + 56);
  outlined init with copy of AMDPbHEReply(a1, &v45 - v24, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  outlined init with copy of AMDPbHEReply(a2, &v25[v27], type metadata accessor for AMDPbHEResponse.OneOf_Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AMDPbHEReply(v25, v21, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AMDPbHEConfigsReply(&v25[v27], v11, type metadata accessor for AMDPbHEReply);
      v41 = static AMDPbHEReply.== infix(_:_:)(v21, v11);
      outlined destroy of AMDPbHEResponse.OneOf_Response(v11, type metadata accessor for AMDPbHEReply);
      outlined destroy of AMDPbHEResponse.OneOf_Response(v21, type metadata accessor for AMDPbHEReply);
      outlined destroy of AMDPbHEResponse.OneOf_Response(v25, type metadata accessor for AMDPbHEResponse.OneOf_Response);
      return v41 & 1;
    }

    v36 = type metadata accessor for AMDPbHEReply;
    v37 = v21;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of AMDPbHEReply(v25, v15, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v38 = &v25[v27];
      v39 = v48;
      outlined init with take of AMDPbHEConfigsReply(v38, v48, type metadata accessor for AMDPbHEConfigsReply);
      if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML13AMDPbHEConfigVTt1g5(*v15, *v39) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML16AMDPbHEKeyStatusV_Tt1g5(v15[1], v39[1]))
      {
        v40 = *(v45 + 24);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          outlined destroy of AMDPbHEResponse.OneOf_Response(v39, type metadata accessor for AMDPbHEConfigsReply);
          v35 = v15;
          v34 = type metadata accessor for AMDPbHEConfigsReply;
          goto LABEL_14;
        }
      }

      outlined destroy of AMDPbHEResponse.OneOf_Response(v39, type metadata accessor for AMDPbHEConfigsReply);
      v42 = v15;
      v43 = type metadata accessor for AMDPbHEConfigsReply;
      goto LABEL_22;
    }

    v36 = type metadata accessor for AMDPbHEConfigsReply;
    v37 = v15;
LABEL_17:
    outlined destroy of AMDPbHEResponse.OneOf_Response(v37, v36);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseO_AEtMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseO_AEtMR);
LABEL_23:
    v41 = 0;
    return v41 & 1;
  }

  outlined init with copy of AMDPbHEReply(v25, v18, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = type metadata accessor for AMDPbHEReplies;
    v37 = v18;
    goto LABEL_17;
  }

  v29 = &v25[v27];
  v30 = v47;
  outlined init with take of AMDPbHEConfigsReply(v29, v47, type metadata accessor for AMDPbHEReplies);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML12AMDPbHEReplyV_Tt1g5(*v18, *v30);
  if ((v31 & 1) == 0)
  {
    outlined destroy of AMDPbHEResponse.OneOf_Response(v30, type metadata accessor for AMDPbHEReplies);
    goto LABEL_21;
  }

  v32 = *(v46 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AMDPbHEResponse.OneOf_Response(v30, type metadata accessor for AMDPbHEReplies);
  if ((v33 & 1) == 0)
  {
LABEL_21:
    v43 = type metadata accessor for AMDPbHEReplies;
    v42 = v18;
LABEL_22:
    outlined destroy of AMDPbHEResponse.OneOf_Response(v42, v43);
    outlined destroy of AMDPbHEResponse.OneOf_Response(v25, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    goto LABEL_23;
  }

  v34 = type metadata accessor for AMDPbHEReplies;
  v35 = v18;
LABEL_14:
  outlined destroy of AMDPbHEResponse.OneOf_Response(v35, v34);
  outlined destroy of AMDPbHEResponse.OneOf_Response(v25, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  v41 = 1;
  return v41 & 1;
}

uint64_t outlined init with take of AMDPbHEConfigsReply(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of AMDPbHEResponse.OneOf_Response?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AMDPbHEResponse.OneOf_Response(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AMDPbHEReply(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus()
{
  result = lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus;
  if (!lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus;
  if (!lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus;
  if (!lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus;
  if (!lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AMDPbHE_APICode and conformance AMDPbHE_APICode()
{
  result = lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode;
  if (!lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode;
  if (!lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode;
  if (!lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode;
  if (!lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AMDPbHE_APICode] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void type metadata completion function for AMDPbHEResponse()
{
  type metadata accessor for [AMDPbHEResponse.PbStatus](319, &lazy cache variable for type metadata for [AMDPbHEResponse.PbStatus], &type metadata for AMDPbHEResponse.PbStatus, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEResponse.PbStatus](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AMDPbHEResponse.OneOf_Response?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          type metadata accessor for [AMDPbHEResponse.PbStatus](319, &lazy cache variable for type metadata for AMDPbHE_APICode?, &type metadata for AMDPbHE_APICode, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for AMDPbHEResponse.OneOf_Response?()
{
  if (!lazy cache variable for type metadata for AMDPbHEResponse.OneOf_Response?)
  {
    type metadata accessor for AMDPbHEResponse.OneOf_Response(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AMDPbHEResponse.OneOf_Response?);
    }
  }
}

void type metadata accessor for [AMDPbHEResponse.PbStatus](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for AMDPbHEResponse.OneOf_Response()
{
  result = type metadata accessor for AMDPbHEReply(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AMDPbHEReplies(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AMDPbHEConfigsReply(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t AspireApiConfigResponse.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for AspireApiConfigResponse(0) + 24);
  return UnknownStorage.init()();
}

uint64_t AspireApiError.ConfigVersionNotFound.configResponse.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 20), v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v8 = type metadata accessor for AspireApiConfigResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiConfigResponse);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1[1] = v10;
  v11 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  }

  return result;
}

uint64_t AspireApiKeyStatus.keyConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for AspireApiKeyStatus(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 24), v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.keywordPirParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspirePirKeywordPirParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = a1 + v8[6];
  UnknownStorage.init()();
  v11 = v8[7];
  v12 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v8[8];
  v14 = type metadata accessor for AspirePirPIRShardingFunction(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
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
  v10 = a1 + *(v8 + 40);
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  return result;
}

uint64_t AspireApiPECConfig.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 40), v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
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

uint64_t AspireApiPIRConfig.pirShardConfigs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v8 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v7 + v8, v6, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v9 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiPIRShardConfigs);
  }

  v11 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  v12 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.shardConfigs.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t AspireApiPIRShardConfig.shardID.getter()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));
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

uint64_t AspireApiPIRFixedShardConfig.shardConfig.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 24), v5, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  v7 = type metadata accessor for AspireApiPIRShardConfig(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiPIRShardConfig);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  v9 = a1 + v7[7];
  UnknownStorage.init()();
  v10 = (a1 + v7[8]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v7[9]) = 2;
  v11 = a1 + v7[10];
  *v11 = 0;
  v11[8] = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.evaluationKeyConfigHash.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireApiPIRConfig(0) + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AspireApiRequest.pirRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v18 - v4;
  v6 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiPIRRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  *a1 = 0;
  *(a1 + 8) = xmmword_225022910;
  v8 = type metadata accessor for AspireApiPIRRequest(0);
  v9 = a1 + v8[6];
  UnknownStorage.init()();
  v10 = v8[7];
  v11 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v8[8];
  v13 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = (a1 + v8[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = v8[10];
  v16 = type metadata accessor for AspireApiEvaluationKey(0);
  return (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
}

uint64_t AspireApiPIRRequest.evaluationKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPIRRequest(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiEvaluationKey);
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiPECConfig.evaluationKeyConfigHash.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t AspireApiPECRequest.evaluationKeyMetadata.getter@<X0>(uint64_t (*a1)(void, double)@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v15 - v8;
  v10 = a1(0, v7);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v10 + 32), v9, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v9, a2, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  v13 = a2 + *(v11 + 24);
  UnknownStorage.init()();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRRequest.query.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 28), v6, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v8 = type metadata accessor for AspirePirEncryptedIndices(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspirePirEncryptedIndices);
  }

  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.batchSize.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.getter()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t AspireApiPIRConfig.batchPirParams.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v8 = type metadata accessor for AspirePirBatchPirParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspirePirBatchPirParameters);
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

uint64_t AspireApiPIRRequest.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspirePirEncryptedIndices);
  v4 = type metadata accessor for AspirePirEncryptedIndices(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiPECRequest.evaluationKeyMetadata.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v4, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v2 + v4, type metadata accessor for AspireApiEvaluationKeyMetadata);
  v5 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t AspireApiEvaluationKey.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiEvaluationKeyMetadata);
  v4 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiEvaluationKey.evaluationKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireHeSerializedEvaluationKey);
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiPECRequest.evaluationKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPECRequest(0) + 36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiEvaluationKey);
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiResponses.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t AspireApiPECConfig.plaintextPacking.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 44), v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireSimilarityPlaintextPacking);
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

uint64_t AspireApiPIRConfig.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t AspireApiPIRRequest.shardID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AspireApiPIRResponse.stash.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireApiPIRResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 24), v6, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v8 = type metadata accessor for AspireApiStashOfEntries(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiStashOfEntries);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v10;
  a1[2] = v10;
  v11 = a1 + *(v8 + 28);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  }

  return result;
}

uint64_t AspireApiEvaluationKeyMetadata.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  v1 = a1 + *(type metadata accessor for AspireApiEvaluationKeyMetadata(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiKeyStatus.keyConfig : AspireApiKeyStatus@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for AspireApiKeyStatus(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 24), v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  v12 = *(v9 + 28);
  v13 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiKeyStatus.keyConfig : AspireApiKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireHeEvaluationKeyConfig);
  v9 = *(type metadata accessor for AspireApiKeyStatus(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireHeEvaluationKeyConfig);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireApiKeyStatus.keyConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiKeyStatus(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireHeEvaluationKeyConfig);
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiKeyStatus.keyConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
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
  v15 = *(type metadata accessor for AspireApiKeyStatus(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    v18 = *(v9 + 28);
    v19 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  return AspireApiKeyStatus.keyConfig.modify;
}

void AspireApiKeyStatus.keyConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireApiPIRResponse.hasStash.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v14 + 24), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, a1, a2);
  return v16;
}

uint64_t AspireApiKeyStatus.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireApiKeyStatus.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireApiEvaluationKey.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 20), v6, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v8 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireApiEvaluationKey.metadata : AspireApiEvaluationKey@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 20), v7, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiEvaluationKey.metadata : AspireApiEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireApiEvaluationKeyMetadata);
  v9 = *(type metadata accessor for AspireApiEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireApiEvaluationKeyMetadata);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t (*AspireApiEvaluationKey.metadata.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
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
  v15 = *(type metadata accessor for AspireApiEvaluationKey(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  return AspireApiEvaluationKey.metadata.modify;
}

BOOL AspireApiError.ConfigVersionNotFound.hasConfigResponse.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v14 + 20), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, a1, a2);
  return v16;
}

uint64_t AspireApiEvaluationKey.evaluationKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 24), v6, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v8 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for AspireHeSerializedRelinKey(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireApiEvaluationKey.evaluationKey : AspireApiEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 24), v7, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v9 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v9 + 24);
  v14 = type metadata accessor for AspireHeSerializedRelinKey(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiEvaluationKey.evaluationKey : AspireApiEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireHeSerializedEvaluationKey);
  v9 = *(type metadata accessor for AspireApiEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireHeSerializedEvaluationKey);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AspireApiEvaluationKey.evaluationKey.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
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
  v15 = *(type metadata accessor for AspireApiEvaluationKey(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireHeSerializedGaloisKey(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for AspireHeSerializedRelinKey(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  return AspireApiEvaluationKey.evaluationKey.modify;
}

void AspireApiEvaluationKey.evaluationKey.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspireHeSerializedEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspireHeSerializedEvaluationKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspireHeSerializedEvaluationKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AspireApiKeyStatus.clearKeyConfig()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AspireApiEvaluationKey.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for AspireApiEvaluationKey(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t AspireApiEvaluationKeyMetadata.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireApiEvaluationKeyMetadata.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireApiConfigRequest.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for AspireApiConfigRequest(0) + 24);
  return UnknownStorage.init()();
}

uint64_t AspireApiConfig.pirConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v5, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiPIRConfig);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiConfig.OneOf_Config);
  }

  UnknownStorage.init()();
  v8 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v8) = static AspireApiPIRConfig._StorageClass.defaultInstance;
}

uint64_t key path setter for AspireApiConfig.pirConfig : AspireApiConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPIRConfig);
  v8 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiConfig.pirConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPIRConfig);
  v3 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiPIRConfig.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static AspireApiPIRConfig._StorageClass.defaultInstance;
}

void (*AspireApiConfig.pirConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64);
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
  v10 = type metadata accessor for AspireApiPIRConfig(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(v9, v13, type metadata accessor for AspireApiPIRConfig);
      return AspireApiConfig.pirConfig.modify;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiConfig.OneOf_Config);
  }

  UnknownStorage.init()();
  v16 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v13 + v16) = static AspireApiPIRConfig._StorageClass.defaultInstance;

  return AspireApiConfig.pirConfig.modify;
}

void AspireApiConfig.pirConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiPIRConfig);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPIRConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiPIRConfig);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspireApiConfig.pecConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v15 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v15 - v5, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiPECConfig);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiConfig.OneOf_Config);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_225022910;
  *(a1 + 48) = MEMORY[0x277D84F90];
  v9 = type metadata accessor for AspireApiPECConfig(0);
  v10 = a1 + v9[9];
  UnknownStorage.init()();
  v11 = v9[10];
  v12 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v9[11];
  v14 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t key path setter for AspireApiConfig.pecConfig : AspireApiConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPECConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPECConfig);
  v8 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiConfig.pecConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPECConfig);
  v3 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiPECConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_225022910;
  *(a1 + 48) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AspireApiPECConfig(0);
  v3 = a1 + v2[9];
  UnknownStorage.init()();
  v4 = v2[10];
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[11];
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

void (*AspireApiConfig.pecConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64);
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
  v10 = type metadata accessor for AspireApiPECConfig(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = xmmword_225022910;
    *(v13 + 48) = MEMORY[0x277D84F90];
    v16 = v13 + v10[9];
    UnknownStorage.init()();
    v17 = v10[10];
    v18 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    v19 = v10[11];
    v20 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    return AspireApiConfig.pecConfig.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiConfig.OneOf_Config);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v9, v13, type metadata accessor for AspireApiPECConfig);
  return AspireApiConfig.pecConfig.modify;
}

void AspireApiConfig.pecConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiPECConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiPECConfig);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPECConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiPECConfig);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspireApiConfig.configID.getter()
{
  v1 = v0 + *(type metadata accessor for AspireApiConfig(0) + 20);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AspireApiConfig.configID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AspireApiConfig(0) + 20);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AspireApiConfig.reuseExistingConfig.setter(char a1)
{
  result = type metadata accessor for AspireApiConfig(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t AspireApiConfig.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for AspireApiConfig(0);
  *(a1 + v3[5]) = xmmword_225022910;
  *(a1 + v3[6]) = 0;
  v4 = a1 + v3[7];
  return UnknownStorage.init()();
}

uint64_t AspireApiRequests.requests.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AspireApiRequest.usecase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AspireApiRequest.usecase.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AspireApiPIRRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_225022910;
  v2 = type metadata accessor for AspireApiPIRRequest(0);
  v3 = a1 + v2[6];
  UnknownStorage.init()();
  v4 = v2[7];
  v5 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = (a1 + v2[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v2[10];
  v10 = type metadata accessor for AspireApiEvaluationKey(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1 + v9, 1, 1, v10);
}

void (*AspireApiRequest.pirRequest.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiPIRRequest(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for AspireApiRequest(0) + 20);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRRequest);
      return AspireApiRequest.pirRequest.modify;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  *v12 = 0;
  *(v12 + 8) = xmmword_225022910;
  v16 = v12 + v9[6];
  UnknownStorage.init()();
  v17 = v9[7];
  v18 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v18 - 8) + 56))(v12 + v17, 1, 1, v18);
  v19 = v9[8];
  v20 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v20 - 8) + 56))(v12 + v19, 1, 1, v20);
  v21 = (v12 + v9[9]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v9[10];
  v23 = type metadata accessor for AspireApiEvaluationKey(0);
  (*(*(v23 - 8) + 56))(v12 + v22, 1, 1, v23);
  return AspireApiRequest.pirRequest.modify;
}

uint64_t AspireApiRequest.pecRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v16 - v4;
  v6 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiPECRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v9;
  *(a1 + 16) = xmmword_225022910;
  v10 = type metadata accessor for AspireApiPECRequest(0);
  v11 = a1 + v10[7];
  UnknownStorage.init()();
  v12 = v10[8];
  v13 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v10[9];
  v15 = type metadata accessor for AspireApiEvaluationKey(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t AspireApiPECRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_225022910;
  v3 = type metadata accessor for AspireApiPECRequest(0);
  v4 = a1 + v3[7];
  UnknownStorage.init()();
  v5 = v3[8];
  v6 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v3[9];
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

void (*AspireApiRequest.pecRequest.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiPECRequest(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for AspireApiRequest(0) + 20);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 8) = v16;
    *(v12 + 16) = xmmword_225022910;
    v17 = v12 + v9[7];
    UnknownStorage.init()();
    v18 = v9[8];
    v19 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    v20 = v9[9];
    v21 = type metadata accessor for AspireApiEvaluationKey(0);
    (*(*(v21 - 8) + 56))(v12 + v20, 1, 1, v21);
    return AspireApiRequest.pecRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiRequest.OneOf_Request);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPECRequest);
  return AspireApiRequest.pecRequest.modify;
}

uint64_t AspireApiRequest.oprfRequest.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiOPRFRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  *a1 = xmmword_225022910;
  a1[1] = xmmword_225022910;
  v9 = a1 + *(type metadata accessor for AspireApiOPRFRequest(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiRequest.pirRequest : AspireApiRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v17 - v12;
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v17 - v12, a6);
  v14 = *(type metadata accessor for AspireApiRequest(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v13, a2 + v14, a7);
  v15 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2 + v14, 0, 1, v15);
}

uint64_t AspireApiRequest.pirRequest.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for AspireApiRequest(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v2 + v5, a2);
  v6 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

void (*AspireApiRequest.oprfRequest.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiOPRFRequest(0);
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
  v13 = *(type metadata accessor for AspireApiRequest(0) + 20);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
LABEL_15:
    *v12 = xmmword_225022910;
    v12[1] = xmmword_225022910;
    v16 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return AspireApiRequest.oprfRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiRequest.OneOf_Request);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiOPRFRequest);
  return AspireApiRequest.oprfRequest.modify;
}

void AspireApiRequest.pirRequest.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v12, v11, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13 + v10, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13 + v10, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t AspireApiRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for AspireApiRequest(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  return UnknownStorage.init()();
}

uint64_t AspireApiResponse.pirResponse.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v14 - v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a1, type metadata accessor for AspireApiPIRResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a1 = MEMORY[0x277D84F90];
  v9 = type metadata accessor for AspireApiPIRResponse(0);
  v10 = &a1[*(v9 + 20)];
  UnknownStorage.init()();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for AspireApiStashOfEntries(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t key path getter for AspireApiResponse.pirResponse : AspireApiResponse@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v14 - v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPIRResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a2 = MEMORY[0x277D84F90];
  v9 = type metadata accessor for AspireApiPIRResponse(0);
  v10 = &a2[*(v9 + 20)];
  UnknownStorage.init()();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for AspireApiStashOfEntries(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

uint64_t key path setter for AspireApiResponse.pirResponse : AspireApiResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiPIRResponse);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPIRResponse);
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiResponse.pirResponse.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPIRResponse);
  v3 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiKeyStatus.init()@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v6 = a2(0);
  v7 = &a4[*(v6 + 20)];
  UnknownStorage.init()();
  v8 = *(v6 + 24);
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a4[v8], 1, 1, v9);
}

void (*AspireApiResponse.pirResponse.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiPIRResponse(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRResponse);
      return AspireApiResponse.pirResponse.modify;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *v12 = MEMORY[0x277D84F90];
  v15 = &v12[*(v9 + 20)];
  UnknownStorage.init()();
  v16 = *(v9 + 24);
  v17 = type metadata accessor for AspireApiStashOfEntries(0);
  (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
  return AspireApiResponse.pirResponse.modify;
}

void AspireApiResponse.pirResponse.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiPIRResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiPIRResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPIRResponse);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiPIRResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspireApiResponse.pecResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v11 - v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a1, type metadata accessor for AspireApiPECResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for AspireApiPECResponse(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiResponse.pecResponse : AspireApiResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v11 - v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPECResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a2 = MEMORY[0x277D84F90];
  v10 = a2 + *(type metadata accessor for AspireApiPECResponse(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiResponse.pecResponse : AspireApiResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPECResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiPECResponse);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPECResponse);
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiResponse.pecResponse.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPECResponse);
  v3 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspireApiResponse.pecResponse.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiPECResponse(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return AspireApiResponse.pecResponse.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPECResponse);
  return AspireApiResponse.pecResponse.modify;
}

void AspireApiResponse.pecResponse.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiPECResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiPECResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPECResponse);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiPECResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspireApiResponse.oprfResponse.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v5, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiOPRFResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a1 = xmmword_225022910;
  a1[1] = xmmword_225022910;
  v9 = a1 + *(type metadata accessor for AspireApiOPRFResponse(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiResponse.oprfResponse : AspireApiResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiOPRFResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiOPRFResponse);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiOPRFResponse);
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiResponse.oprfResponse.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiOPRFResponse);
  v3 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiOPRFRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_225022910;
  a2[1] = xmmword_225022910;
  v2 = a2 + *(a1(0) + 24);
  return UnknownStorage.init()();
}

void (*AspireApiResponse.oprfResponse.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiOPRFResponse(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_15:
    *v12 = xmmword_225022910;
    v12[1] = xmmword_225022910;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return AspireApiResponse.oprfResponse.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiOPRFResponse);
  return AspireApiResponse.oprfResponse.modify;
}

void AspireApiResponse.oprfResponse.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiOPRFResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiOPRFResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiOPRFResponse);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiOPRFResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AspireApiOPRFRequest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiPIRShardConfig.dimensions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t key path getter for AspireApiPIRShardConfig.shardID : AspireApiPIRShardConfig@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));
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

uint64_t key path setter for AspireApiPIRShardConfig.shardID : AspireApiPIRShardConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t AspireApiPIRShardConfig.shardID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*AspireApiPIRShardConfig.shardID.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for AspireApiPIRShardConfig(0) + 32);
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

Swift::Void __swiftcall AspireApiPIRShardConfig.clearShardID()()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t AspireApiPIRShardConfig.compressVectorizedPirResponse.setter(char a1)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*AspireApiPIRShardConfig.compressVectorizedPirResponse.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AspireApiPIRShardConfig(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return AspireApiPIRShardConfig.compressVectorizedPirResponse.modify;
}

uint64_t AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.setter(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for AspireApiPIRShardConfig(0) + 40);
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

uint64_t AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall AspireApiPIRShardConfig.clearVectorizedPirInternalBatchingSize()()
{
  v1 = v0 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t AspireApiConfig.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireApiConfig.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireApiPIRShardConfig.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AspireApiPIRShardConfig(0);
  v3 = a1 + v2[7];
  result = UnknownStorage.init()();
  v5 = (a1 + v2[8]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[9]) = 2;
  v6 = a1 + v2[10];
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t key path setter for AspireApiPIRConfig.encryptionParameters : AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v12, type metadata accessor for AspireHeEncryptionParameters);
  v13 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = AspireApiPIRConfig._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v12, v7, type metadata accessor for AspireHeEncryptionParameters);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v20, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.encryptionParameters.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspireApiPIRConfig._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v7, type metadata accessor for AspireHeEncryptionParameters);
  v15 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v16, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return swift_endAccess();
}

void (*AspireApiPIRConfig.encryptionParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
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
  v15 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
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
    v19 = v14 + *(v9 + 40);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspireApiPIRConfig.encryptionParameters.modify;
}

void AspireApiPIRConfig.encryptionParameters.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireHeEvaluationKeyConfig(*(v2 + 120), *(v2 + 112), type metadata accessor for AspireHeEncryptionParameters);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v18, type metadata accessor for AspireHeEncryptionParameters);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v7 + v19, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    swift_endAccess();
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireHeEncryptionParameters);
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
      v26 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = AspireApiPIRConfig._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v13, v18, type metadata accessor for AspireHeEncryptionParameters);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v23 + v31, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL AspireApiPIRConfig.hasBatchPirParams.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, a1, a2);
  return v16;
}

uint64_t key path getter for AspireApiPIRConfig.shardConfigs : AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for AspireApiPIRConfig.shardConfigs : AspireApiPIRConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = v3;
}

uint64_t AspireApiPIRConfig.shardConfigs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = a1;
}

void (*AspireApiPIRConfig.shardConfigs.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return AspireApiPIRConfig.shardConfigs.modify;
}

void AspireApiPIRConfig.shardConfigs.modify(uint64_t *a1, char a2)
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
      v13 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = AspireApiPIRConfig._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    v17 = *(v10 + v16);
    *(v10 + v16) = v3;

    v18 = *v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 88);
      v23 = *(v2 + 80);
      v24 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = AspireApiPIRConfig._StorageClass.init(copying:)(v21);
      *(v23 + v22) = v21;
    }

    v27 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    v28 = *(v21 + v27);
    *(v21 + v27) = v3;
  }

  free(v2);
}

uint64_t key path setter for AspireApiPIRConfig.keywordPirParams : AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v12, type metadata accessor for AspirePirKeywordPirParameters);
  v13 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = AspireApiPIRConfig._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v12, v7, type metadata accessor for AspirePirKeywordPirParameters);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v20, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.keywordPirParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspireApiPIRConfig._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v7, type metadata accessor for AspirePirKeywordPirParameters);
  v15 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v16, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  return swift_endAccess();
}

void (*AspireApiPIRConfig.keywordPirParams.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirKeywordPirParameters(0);
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
  v15 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    v19 = v14 + v9[6];
    UnknownStorage.init()();
    v20 = v9[7];
    v21 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = v9[8];
    v23 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspirePirKeywordPirParameters);
  }

  return AspireApiPIRConfig.keywordPirParams.modify;
}

void AspireApiPIRConfig.keywordPirParams.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireHeEvaluationKeyConfig(*(v2 + 120), *(v2 + 112), type metadata accessor for AspirePirKeywordPirParameters);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v18, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v7 + v19, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    swift_endAccess();
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspirePirKeywordPirParameters);
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
      v26 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = AspireApiPIRConfig._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v13, v18, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v23 + v31, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t AspireApiPIRConfig.clearEncryptionParameters()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = AspireApiPIRConfig._StorageClass.init(copying:)(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t key path getter for AspireApiPIRConfig.algorithm : AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for AspireApiPIRConfig.algorithm : AspireApiPIRConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspireApiPIRConfig._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  v12 = v8 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  result = swift_beginAccess();
  *v12 = v3;
  *(v12 + 8) = v4;
  return result;
}

uint64_t AspireApiPIRConfig.algorithm.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspireApiPIRConfig._StorageClass.init(copying:)(v8);
    *(v2 + v5) = v8;
  }

  v12 = v8 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  result = swift_beginAccess();
  *v12 = v3;
  *(v12 + 8) = v4;
  return result;
}

void (*AspireApiPIRConfig.algorithm.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return AspireApiPIRConfig.algorithm.modify;
}

void AspireApiPIRConfig.algorithm.modify(uint64_t *a1)
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
    v11 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = AspireApiPIRConfig._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  v14 = v8 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  swift_beginAccess();
  *v14 = v2;
  *(v14 + 8) = v5;

  free(v1);
}

uint64_t key path setter for AspireApiPIRConfig.batchSize : AspireApiPIRConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  result = swift_beginAccess();
  *(v7 + v11) = v3;
  return result;
}

uint64_t AspireApiPIRConfig.batchSize.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  result = swift_beginAccess();
  *(v7 + v11) = a1;
  return result;
}

void (*AspireApiPIRConfig.batchSize.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return AspireApiPIRConfig.batchSize.modify;
}

void AspireApiPIRConfig.batchSize.modify(uint64_t *a1)
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
    v10 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v13 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  *(v7 + v13) = v2;

  free(v1);
}

uint64_t key path getter for AspireApiPIRConfig.evaluationKeyConfigHash : AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return outlined copy of Data._Representation(v4, v5);
}

uint64_t key path setter for AspireApiPIRConfig.evaluationKeyConfigHash : AspireApiPIRConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  outlined copy of Data._Representation(v3, v4);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = AspireApiPIRConfig._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v3;
  v12[1] = v4;
  return outlined consume of Data._Representation(v13, v14);
}

uint64_t AspireApiPIRConfig.evaluationKeyConfigHash.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspireApiPIRConfig._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  v13 = (v9 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = a1;
  v13[1] = a2;
  return outlined consume of Data._Representation(v14, v15);
}

void (*AspireApiPIRConfig.evaluationKeyConfigHash.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  outlined copy of Data._Representation(v7, v8);
  return AspireApiPIRConfig.evaluationKeyConfigHash.modify;
}

void AspireApiPIRConfig.evaluationKeyConfigHash.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    outlined copy of Data._Representation(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = AspireApiPIRConfig._StorageClass.init(copying:)(v9);
      *(v11 + v10) = v9;
    }

    v15 = (v9 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    *v15 = v3;
    v15[1] = v5;
    outlined consume of Data._Representation(v16, v17);
    v18 = *(v2 + 72);
    v19 = *(v2 + 80);
  }

  else
  {
    v20 = *(v6 + v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v4);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 96);
      v24 = *(v2 + 88);
      v25 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v22 = AspireApiPIRConfig._StorageClass.init(copying:)(v22);
      *(v24 + v23) = v22;
    }

    v28 = (v22 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v18 = *v28;
    v19 = v28[1];
    *v28 = v3;
    v28[1] = v5;
  }

  outlined consume of Data._Representation(v18, v19);

  free(v2);
}

uint64_t key path setter for AspireApiPIRConfig.batchPirParams : AspireApiPIRConfig(uint64_t a1, uint64_t a2)
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
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v12, type metadata accessor for AspirePirBatchPirParameters);
  v13 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = AspireApiPIRConfig._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v12, v7, type metadata accessor for AspirePirBatchPirParameters);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v20, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.batchPirParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspireApiPIRConfig._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v7, type metadata accessor for AspirePirBatchPirParameters);
  v15 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v16, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return swift_endAccess();
}

void (*AspireApiPIRConfig.batchPirParams.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
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
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspirePirBatchPirParameters);
  }

  return AspireApiPIRConfig.batchPirParams.modify;
}

void AspireApiPIRConfig.batchPirParams.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireHeEvaluationKeyConfig(*(v2 + 120), *(v2 + 112), type metadata accessor for AspirePirBatchPirParameters);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v18, type metadata accessor for AspirePirBatchPirParameters);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v7 + v19, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    swift_endAccess();
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspirePirBatchPirParameters);
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
      v26 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = AspireApiPIRConfig._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v13, v18, type metadata accessor for AspirePirBatchPirParameters);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
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

uint64_t key path getter for AspireApiPIRConfig.pirShardConfigs : AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v9 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v8 + v9, v7, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v10 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPIRShardConfigs);
  }

  v12 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  v13 = a2 + *(v10 + 20);
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRConfig.pirShardConfigs : AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v12, type metadata accessor for AspireApiPIRShardConfigs);
  v13 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = AspireApiPIRConfig._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v12, v7, type metadata accessor for AspireApiPIRShardConfigs);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v20, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.pirShardConfigs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspireApiPIRConfig._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v7, type metadata accessor for AspireApiPIRShardConfigs);
  v15 = type metadata accessor for AspireApiPIRShardConfigs(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v16, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiResponse.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return UnknownStorage.init()();
}

void (*AspireApiPIRConfig.pirShardConfigs.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiPIRShardConfigs(0);
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
  v15 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    v20 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiPIRShardConfigs);
  }

  return AspireApiPIRConfig.pirShardConfigs.modify;
}

void AspireApiPIRConfig.pirShardConfigs.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireHeEvaluationKeyConfig(*(v2 + 120), *(v2 + 112), type metadata accessor for AspireApiPIRShardConfigs);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v18, type metadata accessor for AspireApiPIRShardConfigs);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v7 + v19, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    swift_endAccess();
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiPIRShardConfigs);
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
      v26 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = AspireApiPIRConfig._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v13, v18, type metadata accessor for AspireApiPIRShardConfigs);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v23 + v31, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t AspireApiPIRShardConfigs.repeatedShardConfig.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v14 - v6, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v8 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a1, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  *a1 = 0;
  v9 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v10 = &a1[*(v9 + 20)];
  UnknownStorage.init()();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for AspireApiPIRShardConfig(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t key path getter for AspireApiPIRShardConfigs.repeatedShardConfig : AspireApiPIRShardConfigs@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v14 - v6, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v8 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  *a2 = 0;
  v9 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v10 = &a2[*(v9 + 20)];
  UnknownStorage.init()();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for AspireApiPIRShardConfig(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

uint64_t key path setter for AspireApiPIRShardConfigs.repeatedShardConfig : AspireApiPIRShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiPIRFixedShardConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPIRFixedShardConfig);
  v8 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiPIRShardConfigs.repeatedShardConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPIRFixedShardConfig);
  v3 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiPIRFixedShardConfig.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for AspireApiPIRShardConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

void (*AspireApiPIRShardConfigs.repeatedShardConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v13 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    *v12 = 0;
    v15 = &v12[*(v9 + 20)];
    UnknownStorage.init()();
    v16 = *(v9 + 24);
    v17 = type metadata accessor for AspireApiPIRShardConfig(0);
    (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  return AspireApiPIRShardConfigs.repeatedShardConfig.modify;
}

void AspireApiPIRShardConfigs.repeatedShardConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiPIRFixedShardConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiPIRFixedShardConfig);
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiPIRFixedShardConfig);
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AspireApiPIRShardConfigs.OneOf_ShardConfigs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v11 - v6);
  v9 = *(v8 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v11 - v6, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  outlined init with copy of AspireHeEvaluationKeyConfig(a2, v7 + v9, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  LOBYTE(a2) = specialized static AspireApiPIRFixedShardConfig.== infix(_:_:)(v7, (v7 + v9));
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7 + v9, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiPIRFixedShardConfig);
  return a2 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v11 - v6);
  v9 = *(v8 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v11 - v6, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  outlined init with copy of AspireHeEvaluationKeyConfig(a2, v7 + v9, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  LOBYTE(a2) = specialized static AspireApiPIRFixedShardConfig.== infix(_:_:)(v7, (v7 + v9));
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7 + v9, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiPIRFixedShardConfig);
  return a2 & 1;
}

uint64_t key path setter for AspireApiPIRFixedShardConfig.shardConfig : AspireApiPIRFixedShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireApiPIRShardConfig);
  v9 = *(type metadata accessor for AspireApiPIRFixedShardConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireApiPIRShardConfig);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireApiPIRFixedShardConfig.shardConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPIRFixedShardConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiPIRShardConfig);
  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiPIRFixedShardConfig.shardConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiPIRShardConfig(0);
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
  v15 = *(type metadata accessor for AspireApiPIRFixedShardConfig(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x277D84F90];
    v17 = v14 + v9[7];
    UnknownStorage.init()();
    v18 = (v14 + v9[8]);
    *v18 = 0;
    v18[1] = 0;
    *(v14 + v9[9]) = 2;
    v19 = v14 + v9[10];
    *v19 = 0;
    v19[8] = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiPIRShardConfig);
  }

  return AspireApiPIRFixedShardConfig.shardConfig.modify;
}

void AspireApiPIRFixedShardConfig.shardConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspireApiPIRShardConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspireApiPIRShardConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiPIRShardConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspireApiPIRShardConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t key path getter for AspireApiPIRRequest.query : AspireApiPIRRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 28), v7, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v9 = type metadata accessor for AspirePirEncryptedIndices(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspirePirEncryptedIndices);
  }

  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRRequest.query : AspireApiPIRRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirEncryptedIndices(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspirePirEncryptedIndices);
  v9 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspirePirEncryptedIndices);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AspireApiPIRRequest.query.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirEncryptedIndices(0);
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
  v15 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v14[1] = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspirePirEncryptedIndices);
  }

  return AspireApiPIRRequest.query.modify;
}

void AspireApiPIRRequest.query.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspirePirEncryptedIndices);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspirePirEncryptedIndices);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspirePirEncryptedIndices);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspirePirEncryptedIndices);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireApiPIRRequest.hasQuery.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 28), v4, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v6 = type metadata accessor for AspirePirEncryptedIndices(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireApiPIRRequest.clearQuery()()
{
  v1 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v2 = type metadata accessor for AspirePirEncryptedIndices(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t (*AspireApiPIRRequest.evaluationKeyMetadata.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
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
  v15 = *(type metadata accessor for AspireApiPIRRequest(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  return AspireApiEvaluationKey.metadata.modify;
}

uint64_t AspireApiPIRRequest.configID.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t AspireApiPIRRequest.configID.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AspireApiPIRRequest.shardID.getter()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));
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

uint64_t key path getter for AspireApiPIRRequest.shardID : AspireApiPIRRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));
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

uint64_t key path setter for AspireApiPIRRequest.shardID : AspireApiPIRRequest(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*AspireApiPIRRequest.shardID.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for AspireApiPIRRequest(0) + 36);
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

void AspireApiPIRShardConfig.shardID.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall AspireApiPIRRequest.clearShardID()()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t AspireApiPIRRequest.evaluationKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 40), v6, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiEvaluationKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireApiPIRRequest.evaluationKey : AspireApiPIRRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 40), v7, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiEvaluationKey);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v9 + 24);
  v14 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRRequest.evaluationKey : AspireApiPIRRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireApiEvaluationKey);
  v9 = *(type metadata accessor for AspireApiPIRRequest(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireApiEvaluationKey);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t (*AspireApiPIRRequest.evaluationKey.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
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
  v15 = *(type metadata accessor for AspireApiPIRRequest(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKey);
  }

  return AspireApiPIRRequest.evaluationKey.modify;
}

uint64_t key path getter for AspireApiPIRResponse.stash : AspireApiPIRResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AspireApiPIRResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 24), v7, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v9 = type metadata accessor for AspireApiStashOfEntries(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiStashOfEntries);
  }

  v11 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v11;
  a2[2] = v11;
  v12 = a2 + *(v9 + 28);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRResponse.stash : AspireApiPIRResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiStashOfEntries(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireApiStashOfEntries);
  v9 = *(type metadata accessor for AspireApiPIRResponse(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireApiStashOfEntries);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireApiPIRResponse.stash.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPIRResponse(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiStashOfEntries);
  v4 = type metadata accessor for AspireApiStashOfEntries(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiPIRResponse.stash.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiStashOfEntries(0);
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
  v15 = *(type metadata accessor for AspireApiPIRResponse(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = v17;
    v14[2] = v17;
    v18 = v14 + *(v9 + 28);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiStashOfEntries);
  }

  return AspireApiPIRResponse.stash.modify;
}

void AspireApiPIRResponse.stash.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspireApiStashOfEntries);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspireApiStashOfEntries);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiStashOfEntries);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspireApiStashOfEntries);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t key path setter for AspireApiPECConfig.encryptionParameters : AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireHeEncryptionParameters);
  v9 = *(type metadata accessor for AspireApiPECConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireHeEncryptionParameters);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireApiPECConfig.encryptionParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPECConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireHeEncryptionParameters);
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiPECConfig.encryptionParameters.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for AspireApiPECConfig(0) + 40);
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
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspireApiPECConfig.encryptionParameters.modify;
}

void AspireApiPECConfig.encryptionParameters.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireApiPIRRequest.hasEvaluationKey.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v14 + 40), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, a1, a2);
  return v16;
}

uint64_t AspireApiPIRRequest.clearEvaluationKey()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t key path getter for AspireApiPECConfig.plaintextPacking : AspireApiPECConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 44), v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireSimilarityPlaintextPacking);
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

uint64_t key path setter for AspireApiPECConfig.plaintextPacking : AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireSimilarityPlaintextPacking);
  v9 = *(type metadata accessor for AspireApiPECConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireSimilarityPlaintextPacking);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireApiPECConfig.plaintextPacking.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPECConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiPECConfig.plaintextPacking.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for AspireApiPECConfig(0) + 44);
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
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireApiPECConfig.plaintextPacking.modify;
}

void AspireApiPECConfig.plaintextPacking.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspireSimilarityPlaintextPacking);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireApiPECConfig.hasPlaintextPacking.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 44), v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireApiPECConfig.clearPlaintextPacking()()
{
  v1 = *(type metadata accessor for AspireApiPECConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v2 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void AspireApiPECConfig.similarityMetric.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t AspireApiPECConfig.similarityMetric.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t AspireApiPECConfig.evaluationKeyConfigHash.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AspireApiPECConfig.extraPlaintextModuli.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t AspireApiPECConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspireApiPECConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireApiPECConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPECConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspireApiPECRequest.query.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t key path getter for AspireApiPIRRequest.evaluationKeyMetadata : AspireApiPIRRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  v9 = a2(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v9 + 32), v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v10 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v8, a3, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0xC000000000000000;
  v12 = a3 + *(v10 + 24);
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRRequest.evaluationKeyMetadata : AspireApiPIRRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v12, type metadata accessor for AspireApiEvaluationKeyMetadata);
  v13 = *(a5(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v13, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v12, a2 + v13, type metadata accessor for AspireApiEvaluationKeyMetadata);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

void (*AspireApiPECRequest.evaluationKeyMetadata.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
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
  v15 = *(type metadata accessor for AspireApiPECRequest(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  return AspireApiPECRequest.evaluationKeyMetadata.modify;
}

void AspireApiPECRequest.evaluationKeyMetadata.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspireApiEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspireApiEvaluationKeyMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspireApiEvaluationKeyMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireApiPIRRequest.hasEvaluationKeyMetadata.getter(uint64_t (*a1)(void, double))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v12 - v6;
  v8 = a1(0, v5);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v8 + 32), v7, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  return v10;
}

uint64_t AspireApiPIRRequest.clearEvaluationKeyMetadata()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v2, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v3 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t AspireApiPECRequest.configID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t AspireApiPECRequest.configID.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AspireApiPECRequest.evaluationKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AspireApiPECRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 36), v6, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiEvaluationKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireApiPECRequest.evaluationKey : AspireApiPECRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AspireApiPECRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 36), v7, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiEvaluationKey);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v9 + 24);
  v14 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPECRequest.evaluationKey : AspireApiPECRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireApiEvaluationKey);
  v9 = *(type metadata accessor for AspireApiPECRequest(0) + 36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireApiEvaluationKey);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AspireApiPECRequest.evaluationKey.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
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
  v15 = *(type metadata accessor for AspireApiPECRequest(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKey);
  }

  return AspireApiPECRequest.evaluationKey.modify;
}

void AspireApiPECRequest.evaluationKey.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspireApiEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspireApiEvaluationKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiEvaluationKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspireApiEvaluationKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireApiPECRequest.hasEvaluationKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspireApiPECRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 36), v4, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v6 = type metadata accessor for AspireApiEvaluationKey(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireApiPECRequest.clearEvaluationKey()()
{
  v1 = *(type metadata accessor for AspireApiPECRequest(0) + 36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v2 = type metadata accessor for AspireApiEvaluationKey(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireApiStashOfEntries.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v3;
  a2[2] = v3;
  v4 = a2 + *(a1(0) + 28);
  return UnknownStorage.init()();
}

uint64_t AspireApiOPRFRequest.queryElement.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t AspireApiOPRFRequest.queryElement.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t AspireApiError.configVersionNotFound.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v12 - v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a1, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  UnknownStorage.init()();
  v9 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  v10 = type metadata accessor for AspireApiConfigResponse(0);
  return (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
}

uint64_t key path getter for AspireApiError.configVersionNotFound : AspireApiError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v12 - v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  UnknownStorage.init()();
  v9 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  v10 = type metadata accessor for AspireApiConfigResponse(0);
  return (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
}

uint64_t key path setter for AspireApiError.configVersionNotFound : AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiError.configVersionNotFound.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  v3 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiError.ConfigVersionNotFound.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  v3 = type metadata accessor for AspireApiConfigResponse(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

void (*AspireApiError.configVersionNotFound.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiError.ConfigVersionNotFound);
      return AspireApiError.configVersionNotFound.modify;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  UnknownStorage.init()();
  v15 = *(v9 + 20);
  v16 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
  return AspireApiError.configVersionNotFound.modify;
}

void AspireApiError.configVersionNotFound.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspireApiError.evaluationKeyNotFound.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a1, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiError.evaluationKeyNotFound : AspireApiError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v10 - v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiError.evaluationKeyNotFound : AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.EvaluationKeyNotFound(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiError.evaluationKeyNotFound.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  v3 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspireApiError.evaluationKeyNotFound.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireApiError.EvaluationKeyNotFound(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireApiError.evaluationKeyNotFound.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v11, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  return AspireApiError.evaluationKeyNotFound.modify;
}

void AspireApiError.evaluationKeyNotFound.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspireApiError.invalidRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a1, type metadata accessor for AspireApiError.InvalidRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiError.invalidRequest : AspireApiError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v10 - v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiError.InvalidRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiError.invalidRequest : AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.InvalidRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiError.InvalidRequest);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiError.InvalidRequest);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiError.invalidRequest.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiError.InvalidRequest);
  v3 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspireApiError.invalidRequest.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireApiError.InvalidRequest(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireApiError.invalidRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v11, type metadata accessor for AspireApiError.InvalidRequest);
  return AspireApiError.invalidRequest.modify;
}

void AspireApiError.invalidRequest.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiError.InvalidRequest);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiError.InvalidRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.InvalidRequest);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiError.InvalidRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AspireApiError.internalError.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a1, type metadata accessor for AspireApiError.InternalError);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiError.internalError : AspireApiError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v10 - v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiError.InternalError);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiError.internalError : AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.InternalError(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiError.InternalError);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiError.InternalError);
  v8 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiError.internalError.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiError.InternalError);
  v3 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspireApiError.internalError.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireApiError.InternalError(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireApiError.internalError.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v11, type metadata accessor for AspireApiError.InternalError);
  return AspireApiError.internalError.modify;
}

void AspireApiError.internalError.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v5, type metadata accessor for AspireApiError.InternalError);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v8, type metadata accessor for AspireApiError.InternalError);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.InternalError);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v8, type metadata accessor for AspireApiError.InternalError);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t key path getter for AspireApiError.ConfigVersionNotFound.configResponse : AspireApiError.ConfigVersionNotFound@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 20), v7, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v9 = type metadata accessor for AspireApiConfigResponse(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiConfigResponse);
  }

  v11 = MEMORY[0x277D84F90];
  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a2[1] = v11;
  v12 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiError.ConfigVersionNotFound.configResponse : AspireApiError.ConfigVersionNotFound(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiConfigResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireApiConfigResponse);
  v9 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireApiConfigResponse);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireApiError.ConfigVersionNotFound.configResponse.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiConfigResponse);
  v4 = type metadata accessor for AspireApiConfigResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiError.ConfigVersionNotFound.configResponse.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiConfigResponse(0);
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
  v15 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v14[1] = v17;
    v18 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiConfigResponse);
  }

  return AspireApiError.ConfigVersionNotFound.configResponse.modify;
}

void AspireApiError.ConfigVersionNotFound.configResponse.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v4, type metadata accessor for AspireApiConfigResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v4, v9 + v3, type metadata accessor for AspireApiConfigResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiConfigResponse);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v9 + v3, type metadata accessor for AspireApiConfigResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AspireApiEvaluationKey.clearMetadata()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AspireApiEmpty.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static AspireApiError.EvaluationKeyNotFound.== infix(_:_:)()
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiEmpty(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEmpty and conformance AspireApiEmpty, type metadata accessor for AspireApiEmpty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiEmpty(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEmpty and conformance AspireApiEmpty, type metadata accessor for AspireApiEmpty);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiEmpty(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEmpty and conformance AspireApiEmpty, type metadata accessor for AspireApiEmpty);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiEvaluationKeyMetadata.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t AspireApiEvaluationKeyMetadata.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    v3 = v0[1];
    v4 = v0[2];
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        goto LABEL_12;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 != v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    v8 = v0 + *(type metadata accessor for AspireApiEvaluationKeyMetadata(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}