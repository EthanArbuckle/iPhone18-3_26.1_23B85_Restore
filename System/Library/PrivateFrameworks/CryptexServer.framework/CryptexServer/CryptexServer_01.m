uint64_t Server.handle(message:)(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for CryptexError();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v6 = type metadata accessor for RequestWrapper();
  v2[25] = v6;
  v7 = *(v6 - 8);
  v2[26] = v7;
  v8 = *(v7 + 64) + 15;
  v2[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  v2[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[31] = v11;
  v2[32] = v12;
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](Server.handle(message:), v11, v12);
}

uint64_t Server.handle(message:)()
{
  v47 = v0;
  v46[2] = *MEMORY[0x277D85DE8];
  v1 = xpc_dictionary_get_remote_connection(*(v0 + 160));
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = v1;
    reply = xpc_dictionary_create_reply(*(v0 + 160));
    if (reply)
    {
      v4 = *(v0 + 216);
      v5 = *(v0 + 160);
      *(v0 + 152) = reply;
      pid = xpc_connection_get_pid(v2);
      *(v0 + 320) = pid;
      static RequestWrapper.from(xpc:)();
      v7 = *(v0 + 216);
      v8 = *(v0 + 160);
      v9 = *(v0 + 168);
      RequestWrapper.request.getter();
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      xpc_dictionary_get_audit_token();
      v10 = (v9 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator);
      v11 = *(v9 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator + 24);
      v12 = *(v9 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator + 32);
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v12 + 8))(v0 + 16, *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), v11, v12);
      v27 = *(v0 + 168);
      outlined init with copy of AssetAuthenticatorProtocol(v0 + 16, v0 + 56);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46[0] = v32;
        *v31 = 136315394;
        v33 = *(v0 + 80);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v33);
        v34 = *(v33 - 8);
        v35 = *(v34 + 64) + 15;
        swift_task_alloc();
        (*(v34 + 16))();
        v36 = String.init<A>(describing:)();
        v38 = v37;

        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v46);

        *(v31 + 4) = v39;
        *(v31 + 12) = 1024;
        *(v31 + 14) = pid;
        _os_log_impl(&dword_226120000, v28, v29, "Received %s from pid %d", v31, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x22AA76E00](v32, -1, -1);
        MEMORY[0x22AA76E00](v31, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      }

      v40 = **(v0 + 168);
      v45 = (*(v40 + 176) + **(v40 + 176));
      v41 = *(*(v40 + 176) + 4);
      v42 = swift_task_alloc();
      *(v0 + 272) = v42;
      *v42 = v0;
      v42[1] = Server.handle(message:);
      v43 = *(v0 + 168);
      v44 = *MEMORY[0x277D85DE8];

      return v45(v0 + 96, v0 + 16);
    }

    v17 = *(v0 + 168) + OBJC_IVAR____TtC13CryptexServer6Server_logger;
    v14 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_226120000, v14, v18, "Failed to create reply to xpc message", v19, 2u);
      MEMORY[0x22AA76E00](v19, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = *(v0 + 168) + OBJC_IVAR____TtC13CryptexServer6Server_logger;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226120000, v14, v15, "Failed to get client xpc connection from message", v16, 2u);
      MEMORY[0x22AA76E00](v16, -1, -1);
    }
  }

  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 216);
  v23 = *(v0 + 192);

  v24 = *(v0 + 8);
  v25 = *MEMORY[0x277D85DE8];

  return v24();
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 256);
  v6 = *(v2 + 248);
  if (v0)
  {
    v7 = Server.handle(message:);
  }

  else
  {
    v7 = Server.handle(message:);
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v30 = v0;
  v29[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v5 + 8))(v3, v4);
  outlined init with take of BootstrapVirtualEnv.Strategy((v0 + 96), v1);
  swift_storeEnumTagMultiPayload();
  v6 = *(v0 + 280);
  v7 = *(v0 + 240);
  Result<>.populate(xpcDict:)();
  if (v6)
  {
    v8 = v6;
    v9 = *(v0 + 168) + OBJC_IVAR____TtC13CryptexServer6Server_logger;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x8000000226145EA0, v29);
      _os_log_impl(&dword_226120000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA76E00](v13, -1, -1);
      MEMORY[0x22AA76E00](v12, -1, -1);
    }

    v15 = *(v0 + 224);
    v14 = *(v0 + 232);
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    (*(v17 + 104))(v18, *MEMORY[0x277D02DB0], v16);
    CryptexErrorMessage.init(_:_:file:function:lineNumber:)();
    swift_storeEnumTagMultiPayload();
    Result<>.populate(xpcDict:)();
    outlined destroy of FilePath?(*(v0 + 232), &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  }

  v19 = *(v0 + 264);
  v20 = *(v0 + 240);
  v21 = *(v0 + 152);
  xpc_dictionary_send_reply();
  swift_unknownObjectRelease();
  outlined destroy of FilePath?(v20, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  swift_unknownObjectRelease();
  v23 = *(v0 + 232);
  v22 = *(v0 + 240);
  v24 = *(v0 + 216);
  v25 = *(v0 + 192);

  v26 = *(v0 + 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26();
}

{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 280);
  v5 = *(v0 + 168);
  MEMORY[0x22AA76CB0](v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 320);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2112;
    MEMORY[0x22AA76CB0](v4);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 10) = v11;
    *v10 = v11;
    _os_log_impl(&dword_226120000, v6, v7, "Failed to handle request from pid %d with error: %@", v9, 0x12u);
    outlined destroy of FilePath?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA76E00](v10, -1, -1);
    MEMORY[0x22AA76E00](v9, -1, -1);
  }

  v12 = *(v0 + 240);
  v13 = *(v0 + 224);

  CryptexErrorMessage.init(_:_:file:function:lineNumber:)();
  swift_storeEnumTagMultiPayload();
  v14 = *(v0 + 240);
  Result<>.populate(xpcDict:)();
  v15 = *(v0 + 264);
  v16 = *(v0 + 240);
  v17 = *(v0 + 152);
  xpc_dictionary_send_reply();
  swift_unknownObjectRelease();
  outlined destroy of FilePath?(v16, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  swift_unknownObjectRelease();
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v20 = *(v0 + 216);
  v21 = *(v0 + 192);

  v22 = *(v0 + 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

uint64_t Server.handle(clientEvent:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](Server.handle(clientEvent:), v4, v3);
}

uint64_t Server.handle(clientEvent:)()
{
  v21 = v0;
  v1 = MEMORY[0x22AA76FB0](*(v0 + 24));
  if (v1 == XPC_TYPE_ERROR.getter())
  {
    (*(**(v0 + 32) + 136))(*(v0 + 24));
LABEL_7:
    v12 = *(v0 + 8);

    return v12();
  }

  v2 = MEMORY[0x22AA76FB0](*(v0 + 24));
  if (v2 != XPC_TYPE_DICTIONARY.getter())
  {
    v3 = *(v0 + 24);
    swift_unknownObjectRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 24);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136446210;
      swift_getObjectType();
      *(v0 + 16) = v6;
      swift_unknownObjectRetain();
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_226120000, v4, v5, "Unexpected XPC: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AA76E00](v8, -1, -1);
      MEMORY[0x22AA76E00](v7, -1, -1);
    }

    goto LABEL_7;
  }

  v14 = *(**(v0 + 32) + 184);
  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 40) = v16;
  *v16 = v0;
  v16[1] = Server.handle(clientEvent:);
  v17 = *(v0 + 24);
  v18 = *(v0 + 32);

  return v19(v17);
}

{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void Server.handle(serverError:)()
{
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v7 = v2;
    *v1 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = String.init<A>(describing:)();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v7);

    *(v1 + 4) = v5;
    _os_log_impl(&dword_226120000, oslog, v0, "Server error: %{public}s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v2);
    MEMORY[0x22AA76E00](v2, -1, -1);
    MEMORY[0x22AA76E00](v1, -1, -1);
  }

  else
  {
  }
}

void Server.handle(localClient:)(_xpc_connection_s *a1)
{
  v3 = swift_allocObject();
  swift_weakInit();
  v5[4] = partial apply for closure #1 in Server.handle(localClient:);
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  v5[3] = &block_descriptor;
  v4 = _Block_copy(v5);

  xpc_connection_set_event_handler(a1, v4);
  _Block_release(v4);
  xpc_connection_set_target_queue(a1, *(v1 + OBJC_IVAR____TtC13CryptexServer6Server_queue));
  xpc_connection_activate(a1);
}

uint64_t closure #1 in Server.handle(localClient:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    objc_allocWithZone(type metadata accessor for SendableXPCObj());
    swift_unknownObjectRetain();
    v6 = SendableXPCObj.init(_:)();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v5;
    v8[5] = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #1 in Server.handle(localClient:), v8);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Server.handle(localClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in Server.handle(localClient:), 0, 0);
}

uint64_t closure #1 in closure #1 in Server.handle(localClient:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = SendableXPCObj.value.getter();
  v0[4] = v3;
  v4 = *(*v2 + 192);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in Server.handle(localClient:);
  v7 = v0[2];

  return v9(v3);
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  swift_unknownObjectRelease();
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of FilePath?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of FilePath?(v12, &_sScPSgMd, &_sScPSgMR);
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
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of FilePath?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
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

  outlined destroy of FilePath?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void Server.handle(serverEvent:)(uint64_t a1)
{
  v3 = MEMORY[0x22AA76FB0]();
  if (v3 == XPC_TYPE_CONNECTION.getter())
  {
    (*(*v1 + 208))(a1);
  }

  else
  {
    v4 = MEMORY[0x22AA76FB0](a1);
    if (v4 != XPC_TYPE_ERROR.getter())
    {
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v12 = v7;
        *v6 = 136446210;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v8 = String.init<A>(describing:)();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_226120000, oslog, v5, "XPC server got unexpected event: %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x22AA76E00](v7, -1, -1);
        MEMORY[0x22AA76E00](v6, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return;
    }

    (*(*v1 + 200))(a1);
  }

  swift_unknownObjectRelease();
}

uint64_t Server.createEndpoint()()
{
  *(v1 + 16) = v0;
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](Server.createEndpoint(), v3, v2);
}

{
  xpc_endpoint_create(*(*(v0 + 16) + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener));
  objc_allocWithZone(type metadata accessor for SendableXPCObj());
  v1 = SendableXPCObj.init(_:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

Swift::Void __swiftcall Server.startXPCServer()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = partial apply for closure #1 in Server.startXPCServer();
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  v4[3] = &block_descriptor_18;
  v3 = _Block_copy(v4);

  xpc_connection_set_event_handler(v1, v3);
  _Block_release(v3);
  xpc_connection_set_target_queue(v1, *(v0 + OBJC_IVAR____TtC13CryptexServer6Server_queue));
  xpc_connection_activate(v1);
}

uint64_t closure #1 in Server.startXPCServer()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    objc_allocWithZone(type metadata accessor for SendableXPCObj());
    swift_unknownObjectRetain();
    v2 = SendableXPCObj.init(_:)();
    v5[2] = MEMORY[0x28223BE20](v2);
    (*(*isEscapingClosureAtFileLocation + 128))();
    if (swift_task_isCurrentExecutor())
    {
      v3 = swift_allocObject();
      *(v3 + 16) = partial apply for closure #1 in closure #1 in Server.startXPCServer();
      *(v3 + 24) = v5;
      v4 = swift_allocObject();
      *(v4 + 16) = _sxqd__s5Error_pIggIrzo_xqd__sAA_pIeggIrzo_ScARzs8SendableRd__r__lTR13CryptexServer0D0C_ytTg5TA;
      *(v4 + 24) = v3;

      v6[0] = isEscapingClosureAtFileLocation;
      _sxqd__s5Error_pIeggIrzo_xqd__sAA_pIegnIrzo_ScARzs8SendableRd__r__lTR13CryptexServer0D0C_ytTG5TA(v6);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v6[0] = 0;
    v6[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    MEMORY[0x22AA76680](0xD00000000000003FLL, 0x8000000226145F80);
    v5[6] = isEscapingClosureAtFileLocation;
    type metadata accessor for Server();
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x22AA76680](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Server.start()()
{
  v1[2] = v0;
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[3] = v3;
  v1[4] = v2;

  return MEMORY[0x2822009F8](Server.start(), v3, v2);
}

{
  v1 = *(**(*(v0 + 16) + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) + 128);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = Server.start();

  return v5();
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);

    return MEMORY[0x2822009F8](Server.start(), v7, v8);
  }
}

{
  (*(**(v0 + 16) + 232))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Server.deinit()
{
  v1 = OBJC_IVAR____TtC13CryptexServer6Server_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator));
  return v0;
}

uint64_t Server.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13CryptexServer6Server_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t partial apply for closure #1 in Server.handle(request:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of InventoryManager.start();

  return closure #1 in Server.handle(request:)(a1, v5, v4);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in Server.handle(request:)(void *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of InventoryManager.start();

  return closure #1 in Server.handle(request:)(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata completion function for Server()
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of Server.handle(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of InventoryManager.start();

  return v10(a1, a2);
}

{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of InventoryManager.start();

  return v10(a1, a2);
}

{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of InventoryManager.start();

  return v10(a1, a2);
}

{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of InventoryManager.start();

  return v10(a1, a2);
}

uint64_t dispatch thunk of Server.handle(anyRequest:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of InventoryManager.start();

  return v10(a1, a2);
}

uint64_t dispatch thunk of Server.handle(message:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of InventoryManager.start();

  return v8(a1);
}

uint64_t dispatch thunk of Server.handle(clientEvent:)(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of InventoryManager.processAllInventories(closure:);

  return v8(a1);
}

uint64_t dispatch thunk of Server.createEndpoint()()
{
  v2 = *(*v0 + 224);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of Server.createEndpoint();

  return v6();
}

uint64_t dispatch thunk of Server.createEndpoint()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of Server.start()()
{
  v2 = *(*v0 + 240);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of InventoryManager.processAllInventories(closure:);

  return v6();
}

uint64_t partial apply for closure #1 in closure #1 in Server.startXPCServer()(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = SendableXPCObj.value.getter();
  return (*(*a1 + 216))(v4);
}

uint64_t _sxqd__s5Error_pIggIrzo_xqd__sAA_pIeggIrzo_ScARzs8SendableRd__r__lTR13CryptexServer0D0C_ytTg5TA()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = MEMORY[0x22AA76830](a1);
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x22AA76830](v14);
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x22AA76830](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x22AA76830](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x22AA76830](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [NSFileHandle] and conformance [A], &_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for OS_dispatch_queue_serial(0, &lazy cache variable for type metadata for NSFileHandle, 0x277CCA9F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA767E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t _sxqd__s5Error_pIeggIrzo_xqd__sAA_pIegnIrzo_ScARzs8SendableRd__r__lTR13CryptexServer0D0C_ytTG5TA(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t partial apply for closure #1 in closure #1 in Server.handle(localClient:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of InventoryManager.start();

  return closure #1 in closure #1 in Server.handle(localClient:)(v4, v5, v6, v2, v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of InventoryManager.start();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t type metadata accessor for OS_dispatch_queue_serial(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

Swift::UInt64 static APFSAdapter.graft(dmg:at:)()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[1] = 0;
  result = FilePath.inode()();
  if (!v1)
  {
    v7[0] = result;
    FilePath.string.getter();
    v2 = String.utf8CString.getter();

    v3 = fsctl((v2 + 32), 0x80104A63uLL, v7, 0);

    if (v3)
    {
      v4 = MEMORY[0x22AA76470](result);
      lazy protocol witness table accessor for type Errno and conformance Errno();
      swift_allocError();
      *v5 = v4;
      result = swift_willThrow();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

uint64_t static APFSAdapter.ungraft(_:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  FilePath.string.getter();
  v0 = String.utf8CString.getter();

  v1 = fsctl((v0 + 32), 0x80084A64uLL, v6, 0);

  if (v1)
  {
    v3 = MEMORY[0x22AA76470](result);
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_allocError();
    *v4 = v3;
    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

size_t static APFSAdapter.allDisksGrafted(under:logger:)(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v99[2] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for CryptexError();
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v86 = v75 - v8;
  MEMORY[0x28223BE20](v7);
  v93 = v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v75 - v16;
  v18 = type metadata accessor for FilePath();
  v85 = *(v18 - 8);
  v19 = *(v85 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v98, 0x878uLL);
  FilePath.string.getter();
  v22 = String.utf8CString.getter();

  v23 = statfs((v22 + 32), &v98);

  if (v23)
  {
    goto LABEL_3;
  }

  v94 = v21;
  v90 = v18;
  v91 = v17;
  v92 = v13;
  v99[0] = 0;
  v99[1] = 0;
  FilePath.string.getter();
  v22 = String.utf8CString.getter();

  v25 = fsctl((v22 + 32), 0xC0104A66uLL, v99, 0);

  if (v25)
  {
LABEL_3:
    MEMORY[0x22AA76470](v24);
    v26 = POSIXErrorCode.init(rawValue:)();
    *v6 = v26;
    v6[4] = BYTE4(v26) & 1;
    v27 = v96;
    v28 = v97;
    (*(v96 + 13))(v6, *MEMORY[0x277D02D98], v97);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v27 + 1))(v6, v28);
    swift_willThrow();
  }

  else
  {
    v31 = LOWORD(v99[0]);
    v32 = v96;
    if (LOWORD(v99[0]))
    {
      type metadata accessor for fsioc_graft_info_t();
      v33 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v33 + 16) = v31;
      bzero((v33 + 32), 40 * v31);
      v34 = 0;
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
      v34 = *(MEMORY[0x277D84F90] + 16) > 0x333333333333333uLL;
    }

    v36 = v94;
    v35 = v95;
    v37 = v85;
    if (v34)
    {
      __break(1u);
    }

    closure #1 in static APFSAdapter.allDisksGrafted(under:logger:)(v33 + 32, v99);
    if (!v35)
    {
      v75[0] = v33;
      v75[1] = 0;
      v39 = *(v33 + 16);
      if (v39)
      {
        v83 = (v37 + 16);
        v84 = (v37 + 56);
        v80 = *MEMORY[0x277D02D38];
        v79 = (v32 + 104);
        v81 = (v32 + 8);
        v82 = (v37 + 8);
        v40 = (v33 + 40);
        v22 = MEMORY[0x277D84F90];
        *&v38 = 138412290;
        v76 = v38;
        v41 = v93;
        v78 = (v32 + 16);
        do
        {
          v95 = v39;
          v44 = v36;
          v46 = *(v40 - 1);
          v45 = *v40;
          v47 = swift_slowAlloc();
          v48 = fsgetpath(v47, 0x400uLL, &v98.f_fsid, v45);
          v96 = v47;
          if (v48 == -1)
          {
            v85 = v22;
            MEMORY[0x22AA76470](-1);
            v57 = POSIXErrorCode.init(rawValue:)();
            *v41 = v57;
            v41[4] = BYTE4(v57) & 1;
            v58 = v97;
            (*v79)(v41, v80, v97);
            v59 = *v78;
            v60 = v86;
            (*v78)(v86, v41, v58);
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = v60;
              v64 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              *v64 = v76;
              _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
              swift_allocError();
              v59(v65, v63, v97);
              v66 = _swift_stdlib_bridgeErrorToNSError();
              v67 = *v81;
              (*v81)(v63, v97);
              *(v64 + 4) = v66;
              v68 = v77;
              *v77 = v66;
              v41 = v93;
              _os_log_impl(&dword_226120000, v61, v62, "fsgetpath(graftPoint): %@", v64, 0xCu);
              outlined destroy of FilePath?(v68, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              MEMORY[0x22AA76E00](v68, -1, -1);
              v69 = v64;
              v36 = v94;
              MEMORY[0x22AA76E00](v69, -1, -1);

              v67(v41, v97);
              v22 = v85;
            }

            else
            {

              v42 = *v81;
              v43 = v97;
              (*v81)(v60, v97);
              v42(v41, v43);
              v22 = v85;
              v36 = v44;
            }

            MEMORY[0x22AA76E00](v96, -1, -1);
          }

          else
          {
            v49 = v22;
            v50 = String.init(cString:)();
            MEMORY[0x22AA76600](v50);
            v51 = swift_slowAlloc();
            if (fsgetpath(v51, 0x400uLL, &v98.f_fsid, v46) == -1)
            {
              v54 = 1;
              v55 = v89;
              v53 = v91;
            }

            else
            {
              v52 = String.init(cString:)();
              v53 = v91;
              MEMORY[0x22AA76600](v52);
              v54 = 0;
              v55 = v89;
            }

            v56 = v92;
            v70 = v90;
            (*v84)(v53, v54, 1, v90);
            v71 = *(v55 + 48);
            (*v83)(v56, v94, v70);
            outlined init with copy of FilePath?(v53, v56 + v71);
            v22 = v49;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
            }

            v72 = v96;
            v74 = *(v22 + 16);
            v73 = *(v22 + 24);
            v36 = v94;
            if (v74 >= v73 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1, v22);
            }

            *(v22 + 16) = v74 + 1;
            outlined init with take of (graftPoint: FilePath, dmgPath: FilePath?)(v92, v22 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v74);
            MEMORY[0x22AA76E00](v51, -1, -1);
            outlined destroy of FilePath?(v91, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
            MEMORY[0x22AA76E00](v72, -1, -1);
            (*v82)(v36, v90);
            v41 = v93;
          }

          v40 += 5;
          v39 = v95 - 1;
        }

        while (v95 != 1);
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t closure #1 in static APFSAdapter.allDisksGrafted(under:logger:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[1] = a1;
  FilePath.string.getter();
  v9 = String.utf8CString.getter();

  v10 = fsctl((v9 + 32), 0xC0104A66uLL, a2, 0);

  if (v10)
  {
    MEMORY[0x22AA76470](result);
    v12 = POSIXErrorCode.init(rawValue:)();
    *v8 = v12;
    v8[4] = BYTE4(v12) & 1;
    (*(v5 + 104))(v8, *MEMORY[0x277D02D98], v4);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v5 + 8))(v8, v4);
    return swift_willThrow();
  }

  return result;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System8FilePathV10graftPoint_AESg03dmgF0tGMd, &_ss23_ContiguousArrayStorageCy6System8FilePathV10graftPoint_AESg03dmgF0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for fsioc_graft_info_t()
{
  if (!lazy cache variable for type metadata for fsioc_graft_info_t)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for fsioc_graft_info_t);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for fsioc_graft_info_t(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for fsioc_graft_info_t(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for fsioc_graft_info_t(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t FilePath.init(_:)()
{
  return MEMORY[0x28211E6C0]();
}

{
  return MEMORY[0x2821FFA88]();
}

uint64_t FilePath.appending(_:)()
{
  return MEMORY[0x282158FF8]();
}

{
  return MEMORY[0x2821FFA68]();
}

{
  return MEMORY[0x2821FFA70]();
}