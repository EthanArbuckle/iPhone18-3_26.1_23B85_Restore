void CUXPCActorSystem.xpcServerEndpoint.getter(void *a1@<X8>)
{
  if (*(v1 + 16))
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6735, 0xD00000000000002ALL, 0x8000000247C015E0, 0);
    swift_willThrow();
  }

  else
  {
    os_unfair_lock_lock((v1 + 64));
    if (*(v1 + 168))
    {
      v3 = *(v1 + 168);
    }

    else
    {
      v4 = sub_247BC7FBC(v1 + 72);
      v5 = xpc_endpoint_create(v4);
      CUXPCEndpoint.init(_:)(v5, &v7);
      swift_unknownObjectRelease();
      v3 = v7;
      v6 = *(v1 + 168);
      *(v1 + 168) = v7;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    *a1 = v3;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v1 + 64));
  }
}

uint64_t sub_247BD303C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v22 = a1;
    swift_unknownObjectRetain();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0C0, &qword_247BFC380);
    CUSendableWrapper.init(_:)(&v22, v11, &v23);
    v12 = v23;
    v23 = *(v10 + 40);
    v13 = CUEnvironmentValues.dispatchQueue.getter();
    v14 = sub_247BF67E0();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v8, 1, 1, v14);
    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    *(v16 + 24) = v12;
    sub_247BC5B0C(v8, v6, &qword_27EE5DD00, &qword_247BFA890);
    v17 = (*(v15 + 48))(v6, 1, v14);

    if (v17 == 1)
    {
      sub_247B9CAD0(v6, &qword_27EE5DD00, &qword_247BFA890);
    }

    else
    {
      sub_247BF67D0();
      (*(v15 + 8))(v6, v14);
    }

    v18 = sub_247BDEA98(&qword_27EE5DD08, 255, sub_247BA0E68);
    v19 = swift_allocObject();
    *(v19 + 16) = &unk_247BFC498;
    *(v19 + 24) = v16;
    v21[1] = 6;
    v21[2] = 0;
    v21[3] = v13;
    v21[4] = v18;

    v20 = v13;
    swift_task_create();
    sub_247B9CAD0(v8, &qword_27EE5DD00, &qword_247BFA890);
  }

  return result;
}

uint64_t sub_247BD3360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_247BD3380, 0, 0);
}

uint64_t sub_247BD3380()
{
  v30 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = MEMORY[0x24C1B5CC0](v2);
  if (v3 == sub_247BF6100())
  {
    *&v29[0] = *(v1 + 40);
    v13 = CUEnvironmentValues.dispatchQueue.getter();
    xpc_connection_set_target_queue(v2, v13);

    v15 = *(v1 + 24);
    v14 = *(v1 + 32);
    v16 = *(v1 + 40);
    type metadata accessor for CUXPCActorConnection();
    v17 = swift_allocObject();
    *(v17 + 64) = 0;
    *(v17 + 72) = 0;
    *(v17 + 80) = MEMORY[0x277D84FA0];
    swift_weakInit();
    *(v17 + 32) = 0;
    *(v17 + 40) = v16;
    v18 = *(v1 + 56);
    *(v17 + 48) = *(v1 + 48);
    *(v17 + 56) = v18;

    swift_unknownObjectRetain();

    *(v17 + 88) = xpc_connection_get_pid(v2);
    swift_weakAssign();
    *(v17 + 104) = v2;
    memset(v29, 0, sizeof(v29));
    swift_unknownObjectRetain();
    xpc_connection_get_audit_token();
    v19 = xpc_copy_entitlement_for_token();
    v20 = v14 == 0;
    if (!v19)
    {

      swift_unknownObjectRelease();

      v22 = 0;
      v24 = 0xE000000000000000;
      goto LABEL_16;
    }

    v21 = v19;
    if (xpc_dictionary_get_string(v19, "application-identifier"))
    {
      v22 = sub_247BF6560();
      v24 = v23;
      if (v14)
      {
LABEL_11:
        v25 = sub_247BF64B0();

        v20 = xpc_dictionary_get_BOOL(v21, (v25 + 32));
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_16:
        *(v17 + 16) = v22;
        *(v17 + 24) = v24;
        *(v17 + 33) = v20;
        os_unfair_lock_lock((v1 + 64));

        sub_247BDC390(v29, v17);

        os_unfair_lock_unlock((v1 + 64));
        sub_247BD1E54();

        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v20 = 1;
    goto LABEL_16;
  }

  swift_getObjectType();
  v4 = sub_247BF6120();
  swift_unknownObjectRelease();
  if (v4 == v2)
  {
    os_unfair_lock_lock((v1 + 64));
    v26 = *(v1 + 176);
    *(v1 + 176) = 0;
    swift_unknownObjectRelease();
    sub_247BC95EC(v1 + 72);
    os_unfair_lock_unlock((v1 + 64));
  }

  else
  {
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v5 = sub_247BF60B0();
    __swift_project_value_buffer(v5, qword_27EE609A8);

    swift_unknownObjectRetain();
    v6 = sub_247BF6090();
    v7 = sub_247BF69F0();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v29[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), v29);
      *(v8 + 12) = 2080;
      v10 = OS_xpc_object.nestedDescription.getter();
      v12 = sub_247BBE628(v10, v11, v29);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_247B92000, v6, v7, "%s: ### xpc server unexpected event: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v9, -1, -1);
      MEMORY[0x24C1B5910](v8, -1, -1);
    }
  }

LABEL_17:
  v27 = v0[1];

  return v27();
}

uint64_t sub_247BD37A0(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = swift_allocObject();
  v10 = *a5;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 80) = MEMORY[0x277D84FA0];
  swift_weakInit();
  *(v9 + 32) = 0;
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  *(v9 + 40) = v10;
  *(v9 + 48) = v12;
  *(v9 + 56) = v11;

  *(v9 + 88) = xpc_connection_get_pid(a2);
  swift_weakAssign();
  *(v9 + 104) = a2;
  swift_unknownObjectRetain();
  xpc_connection_get_audit_token();
  v13 = xpc_copy_entitlement_for_token();
  v14 = a4 == 0;
  if (!v13)
  {

    swift_unknownObjectRelease();

    v16 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_8;
  }

  v15 = v13;
  if (!xpc_dictionary_get_string(v13, "application-identifier"))
  {
    v16 = 0;
    v18 = 0xE000000000000000;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v14 = 1;
    goto LABEL_8;
  }

  v16 = sub_247BF6560();
  v18 = v17;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v19 = sub_247BF64B0();

  v14 = xpc_dictionary_get_BOOL(v15, (v19 + 32));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_8:
  *(v9 + 16) = v16;
  *(v9 + 24) = v18;
  *(v9 + 33) = v14;
  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t static CUXPCActorSystem.ActorContext.default.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27EE609C0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_247BDD8F0(&unk_27EE609C8, v2);
}

uint64_t CUXPCActorSystem.ActorCreateInfo.actorID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CUXPCActorSystem.ActorCreateInfo.actorType.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CUXPCActorSystem.ActorEvent.description.getter()
{
  v1 = 0x7075727265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E45726F746361;
  }
}

uint64_t CUXPCActorSystem.ActorEvent.hashValue.getter()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

uint64_t sub_247BD3B68()
{
  v1 = 0x7075727265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E45726F746361;
  }
}

void *CUXPCActorSystem.ActorMonitor.deinit()
{
  if (swift_weakLoadStrong())
  {
    sub_247BC9F88(v0);
  }

  v1 = v0[3];

  v2 = v0[6];

  swift_weakDestroy();
  return v0;
}

uint64_t CUXPCActorSystem.ActorMonitor.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    sub_247BC9F88(v0);
  }

  v1 = v0[3];

  v2 = v0[6];

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t CUXPCActorSystem.InvocationDecoder.decodeNextArgument<A>()()
{
  swift_conformsToProtocol();
  result = swift_conformsToProtocol();
  v2 = *v0;
  v3 = v0[1];
  if (*v0 >= *(v3 + 16))
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6710, 0xD000000000000012, 0x8000000247C01630, 0);
    return swift_willThrow();
  }

  else if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v3 + 16 * v2;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    *v0 = v2 + 1;
    v7 = v0[2];
    sub_247BC2A70(v5, v6);
    sub_247BF5C90();
    return sub_247BC2AC4(v5, v6);
  }

  return result;
}

void CUXPCActorSystem.InvocationDecoder.decodeGenericSubstitutions()()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v2 + 40 + 16 * v1);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    v6 = v5 + 2;
    v7 = *(v5 - 1);
    v8 = *v5;

    v9 = sub_247BF6D00();

    v5 = v6;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_247BD6B10(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_247BD6B10((v10 > 1), v11 + 1, 1, v4);
      }

      *(v4 + 2) = v11 + 1;
      *&v4[8 * v11 + 32] = v9;
      goto LABEL_2;
    }
  }
}

uint64_t sub_247BD3EF8()
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return CUXPCActorSystem.InvocationDecoder.decodeNextArgument<A>()();
}

uint64_t CUXPCActorSystem.InvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v5 = swift_conformsToProtocol();
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[1];
  sub_247BF6010();
  sub_247BF6000();
  v11 = sub_247BF5D10();
  v13 = v12;
  result = (*(v6 + 8))(v9, a2);
  if (!v3)
  {
    v15 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247BD6A04(0, *(v15 + 16) + 1, 1, v15);
      v15 = result;
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_247BD6A04((v16 > 1), v17 + 1, 1, v15);
      v15 = result;
    }

    *(v15 + 16) = v17 + 1;
    v18 = v15 + 16 * v17;
    *(v18 + 32) = v11;
    *(v18 + 40) = v13;
    *v2 = v15;
  }

  return result;
}

uint64_t CUXPCActorSystem.InvocationEncoder.recordGenericSubstitution<A>(_:)()
{
  result = sub_247BF6E00();
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = *(v0 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247BBE48C(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      result = sub_247BBE48C((v6 > 1), v7 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v7 + 1;
    v8 = v5 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    *(v0 + 16) = v5;
  }

  return result;
}

uint64_t sub_247BD4218(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return CUXPCActorSystem.InvocationEncoder.recordArgument<A>(_:)(a1, a2);
}

uint64_t sub_247BD4278()
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return CUXPCActorSystem.InvocationEncoder.recordReturnType<A>(_:)();
}

uint64_t CUXPCActorSystem.ResultHandler.onReturn<A>(value:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_conformsToProtocol();
  v4 = swift_conformsToProtocol();
  v5 = *v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v2 + 1);
  *(v3 + 64) = v2[3];
  *(v3 + 72) = *(v2 + 2);
  *(v3 + 88) = v2[6];

  return MEMORY[0x2822009F8](sub_247BD4378, 0, 0);
}

uint64_t sub_247BD4378()
{
  v32 = v0;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = sub_247BF60B0();
  __swift_project_value_buffer(v6, qword_27EE609A8);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_247BF6090();
  v8 = sub_247BF69E0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31[0] = v14;
    *v13 = 136315394;

    v15 = sub_247BBE628(v10, v9, v31);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;

    v16 = sub_247BBE628(v12, v11, v31);

    *(v13 + 14) = v16;
    _os_log_impl(&dword_247B92000, v7, v8, "%s: remoteCall incoming success: callID=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v14, -1, -1);
    MEMORY[0x24C1B5910](v13, -1, -1);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 88));
  if (reply)
  {
    v18 = reply;
    v19 = *(v0 + 56);
    v20 = *(v0 + 24);
    v21 = *(v0 + 32);
    v22 = *(v0 + 16);
    v23 = sub_247BF5D10();
    v24 = *(v0 + 80);
    v25 = v23;
    v27 = v26;
    v28 = Data.xpcObjectRepresentation.getter(v23, v26);
    sub_247BC2AC4(v25, v27);
    xpc_dictionary_set_value(v18, "result", v28);
    xpc_connection_send_message(v24, v18);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000017, 0x8000000247C01650, 0);
    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t CUXPCActorSystem.ResultHandler.onReturnVoid()()
{
  *(v1 + 16) = *v0;
  *(v1 + 24) = *(v0 + 8);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  return MEMORY[0x2822009F8](sub_247BD46B8, 0, 0);
}

uint64_t sub_247BD46B8()
{
  v21 = v0;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = sub_247BF60B0();
  __swift_project_value_buffer(v6, qword_27EE609A8);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_247BF6090();
  v8 = sub_247BF69E0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315394;

    v15 = sub_247BBE628(v10, v9, v20);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;

    v16 = sub_247BBE628(v12, v11, v20);

    *(v13 + 14) = v16;
    _os_log_impl(&dword_247B92000, v7, v8, "%s: remoteCall incoming success: callID=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v14, -1, -1);
    MEMORY[0x24C1B5910](v13, -1, -1);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 64));
  if (reply)
  {
    xpc_connection_send_message(*(v0 + 56), reply);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000017, 0x8000000247C01650, 0);
    swift_willThrow();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t CUXPCActorSystem.ResultHandler.onThrow<A>(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = *(a2 - 8);
  *(v4 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v3;
  *(v4 + 72) = v7;
  *(v4 + 80) = v8;
  *(v4 + 88) = *(v3 + 1);
  *(v4 + 104) = v3[3];
  *(v4 + 112) = *(v3 + 2);
  *(v4 + 128) = v3[6];

  return MEMORY[0x2822009F8](sub_247BD4A44, 0, 0);
}

uint64_t sub_247BD4A44()
{
  v68 = v0;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v64 = *(v0 + 128);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = sub_247BF60B0();
  __swift_project_value_buffer(v9, qword_27EE609A8);
  v66 = *(v6 + 16);
  v66(v5, v8, v7);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = sub_247BF6090();
  v11 = sub_247BF69E0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v14 = *(v0 + 88);
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 32);
    v61 = *(v0 + 80);
    v62 = *(v0 + 40);
    v18 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v18 = 136315650;

    v19 = sub_247BBE628(v13, v12, v67);

    *(v18 + 4) = v19;
    *(v18 + 12) = 2080;

    v20 = sub_247BBE628(v61, v14, v67);

    *(v18 + 14) = v20;
    *(v18 + 22) = 2112;
    v66(v16, v15, v17);
    v21 = sub_247BF7130();
    v22 = *(v0 + 64);
    v23 = *(v0 + 48);
    if (v21)
    {
      (*(v23 + 8))(*(v0 + 64), *(v0 + 32));
    }

    else
    {
      v29 = *(v0 + 32);
      v28 = *(v0 + 40);
      swift_allocError();
      (*(v23 + 32))(v30, v22, v29);
    }

    v31 = *(v0 + 72);
    v32 = *(v0 + 48);
    v33 = *(v0 + 32);
    v34 = _swift_stdlib_bridgeErrorToNSError();
    v27 = *(v32 + 8);
    v27(v31, v33);
    *(v18 + 24) = v34;
    *v63 = v34;
    _os_log_impl(&dword_247B92000, v10, v11, "%s: remoteCall incoming error: callID=%s, error=%@", v18, 0x20u);
    sub_247B9CAD0(v63, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v63, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v65, -1, -1);
    MEMORY[0x24C1B5910](v18, -1, -1);
  }

  else
  {
    v24 = *(v0 + 72);
    v25 = *(v0 + 48);
    v26 = *(v0 + 32);

    v27 = *(v25 + 8);
    v27(v24, v26);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 128));
  if (reply)
  {
    v36 = reply;
    v37 = *(v0 + 40);
    v66(*(v0 + 56), *(v0 + 24), *(v0 + 32));
    v38 = sub_247BF7130();
    v40 = *(v0 + 48);
    v39 = *(v0 + 56);
    if (v38)
    {
      v41 = v38;
      v27(*(v0 + 56), *(v0 + 32));
    }

    else
    {
      v43 = *(v0 + 32);
      v42 = *(v0 + 40);
      v41 = swift_allocError();
      (*(v40 + 32))(v44, v39, v43);
    }

    v45 = *(v0 + 96);
    type metadata accessor for CUError();
    v46 = CUError.__allocating_init(_:)(v41);
    *(v0 + 16) = v46;
    sub_247BDEA98(&qword_27EE5DFF0, 255, type metadata accessor for CUError);
    v47 = sub_247BF5D10();
    v52 = *(v0 + 120);
    v54 = *(v0 + 64);
    v53 = *(v0 + 72);
    v55 = *(v0 + 56);
    v56 = v47;
    v58 = v57;

    v59 = Data.xpcObjectRepresentation.getter(v56, v58);
    sub_247BC2AC4(v56, v58);
    xpc_dictionary_set_value(v36, "error", v59);
    xpc_connection_send_message(v52, v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v51 = *(v0 + 8);
  }

  else
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000017, 0x8000000247C01650, 0);
    swift_willThrow();
    v49 = *(v0 + 64);
    v48 = *(v0 + 72);
    v50 = *(v0 + 56);

    v51 = *(v0 + 8);
  }

  return v51();
}

uint64_t sub_247BD5000(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247B96F0C;

  return CUXPCActorSystem.ResultHandler.onReturn<A>(value:)(a1, a2);
}

uint64_t sub_247BD50C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_247B96F0C;

  return CUXPCActorSystem.ResultHandler.onReturnVoid()();
}

uint64_t sub_247BD5150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247B96F0C;

  return CUXPCActorSystem.ResultHandler.onThrow<A>(error:)(a1, a2, a3);
}

void *CUXPCActorSystem.deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  sub_247BDD438((v0 + 9));
  v4 = v0[23];
  swift_unknownObjectRelease();
  v5 = v0[25];

  return v0;
}

uint64_t CUXPCActorSystem.__deallocating_deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  sub_247BDD438((v0 + 9));
  v4 = v0[23];
  swift_unknownObjectRelease();
  v5 = v0[25];

  return swift_deallocClassInstance();
}

uint64_t CUXPCActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  return MEMORY[0x2822009F8](sub_247BD52DC, 0, 0);
}

uint64_t sub_247BD52DC()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[10]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_247BDED38;
  v7 = v0[9];

  return sub_247BD53B0(v1, v7, (v0 + 2), v1, v3, v5);
}

uint64_t sub_247BD53B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = *(a4 - 8);
  v6[15] = v7;
  v8 = *(v7 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BD546C, 0, 0);
}

uint64_t sub_247BD546C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_247BF6660();
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  *(v0 + 64) = *(v3 + 6);
  *(v0 + 32) = v7;
  *(v0 + 48) = v8;
  *(v0 + 16) = v6;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_247BD5534;
  v10 = *(v0 + 128);
  v11 = *(v0 + 96);

  return CUXPCActorSystem.ResultHandler.onReturn<A>(value:)(v10, v11);
}

uint64_t sub_247BD5534()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_247BD56C8;
  }

  else
  {
    v3 = sub_247BD5648;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247BD5648()
{
  (*(v0[15] + 8))(v0[16], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_247BD56C8()
{
  (*(v0[15] + 8))(v0[16], v0[12]);

  v1 = v0[1];
  v2 = v0[18];

  return v1();
}

uint64_t sub_247BD5748()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v17[4] = *(v1 + 136);
  v17[5] = v3;
  v17[6] = *(v1 + 168);
  v4 = *(v1 + 88);
  v17[0] = *(v1 + 72);
  v17[1] = v4;
  v17[2] = *(v1 + 104);
  v17[3] = v2;
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v14 = *(v1 + 136);
  v15 = v6;
  v16 = *(v1 + 168);
  v7 = *(v1 + 88);
  v10 = *(v1 + 72);
  v11 = v7;
  v12 = *(v1 + 104);
  v13 = v5;
  sub_247BDD400(v17, v18);
  v8 = sub_247BC7164(&v10);
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v13;
  sub_247BDD438(v18);
  os_unfair_lock_unlock((v1 + 64));
  return v8;
}

uint64_t sub_247BD5860@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = CUXPCActorSystem.assignID<A>(_:)(a1);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_247BD5900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v14 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_247B95F40;

  return CUXPCActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(a1, a2, a3, a4, v15, v16, a7);
}

uint64_t sub_247BD59FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_247B96F0C;

  return CUXPCActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(a1, a2, a3, v16, a5, v17, a7);
}

uint64_t sub_247BD5AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  return MEMORY[0x2822009F8](sub_247BD5B00, 0, 0);
}

uint64_t sub_247BD5B00()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[10]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_247BD5BD4;
  v7 = v0[9];

  return sub_247BD53B0(v1, v7, (v0 + 2), v1, v3, v5);
}

uint64_t sub_247BD5BD4()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_247BD5CC8()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = v0[10];

    os_unfair_lock_lock(v2 + 16);
    sub_247BCA230(&v2[18], v3, &v11);

    os_unfair_lock_unlock(v2 + 16);
  }

  v4 = v0[3];

  v5 = v0[5];

  v6 = v0[7];

  v7 = v0[9];

  v8 = v0[10];

  swift_weakDestroy();
  v9 = v0[13];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_247BD5D98()
{
  sub_247BD5CC8();

  return swift_deallocClassInstance();
}

void sub_247BD5DCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v21 = a1;
    swift_unknownObjectRetain();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0C0, &qword_247BFC380);
    CUSendableWrapper.init(_:)(&v21, v11, &v22);
    v12 = v22;
    v22 = *(v10 + 40);
    v13 = CUEnvironmentValues.dispatchQueue.getter();
    v14 = sub_247BF67E0();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v8, 1, 1, v14);
    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    *(v16 + 24) = v12;
    sub_247BC5B0C(v8, v6, &qword_27EE5DD00, &qword_247BFA890);
    v17 = (*(v15 + 48))(v6, 1, v14);

    if (v17 == 1)
    {
      sub_247B9CAD0(v6, &qword_27EE5DD00, &qword_247BFA890);
    }

    else
    {
      sub_247BF67D0();
      (*(v15 + 8))(v6, v14);
    }

    v18 = sub_247BDEA98(&qword_27EE5DD08, 255, sub_247BA0E68);
    v19 = swift_allocObject();
    *(v19 + 16) = &unk_247BFC390;
    *(v19 + 24) = v16;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0C8, &qword_247BFC3A8);
    v20[1] = 6;
    v20[2] = 0;
    v20[3] = v13;
    v20[4] = v18;
    swift_task_create();
    sub_247B9CAD0(v8, &qword_27EE5DD00, &qword_247BFA890);
  }
}

uint64_t sub_247BD60EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_247BD6110, 0, 0);
}

uint64_t sub_247BD6110()
{
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_247BD61F8;
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);

    return sub_247BCE888(v5, v4);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_247BD61F8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_247BD6310, 0, 0);
}

uint64_t sub_247BD6338()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

uint64_t sub_247BD63AC()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

unint64_t sub_247BD6404@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_247BF6600();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_247BD68F8(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_247BD68F8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_247BF65E0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_247BF6520();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_247BF6520();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_247BF6600();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_247BD68F8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_247BF6600();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_247BD68F8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_247BD68F8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_247BF6520();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_247BD67C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E148, &qword_247BFC450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E150, &qword_247BFC458);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247BD68F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F0, &qword_247BFC3F8);
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

char *sub_247BD6A04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E090, &qword_247BFC350);
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

char *sub_247BD6B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E098, &qword_247BFC358);
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

void *sub_247BD6C14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDA8, &qword_247BFA8F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_247BD6C98(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_247BF7450();
  return sub_247BA0500(a1, v4);
}

unint64_t sub_247BD6CD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_247BF6E20();
  v5 = sub_247BF6390();

  return sub_247BD6D38(a1, v5);
}

unint64_t sub_247BD6D38(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_247BF6E20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_247BF6460();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_247BD6ED0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_247BDCC70(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_247BD6F3C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_247BD6F3C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_247BF6FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_247BF66E0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_247BD7138(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_247BD7034(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_247BD7034(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_247BC3000();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v19 = v7;
    v12 = v8;
    while (1)
    {
      v17 = *(v12 - 2);
      v18 = *(v12 - 1);
      result = sub_247BF6B10();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v19 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v12;
      v14 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v14;
      *(v12 - 2) = v13;
      v12 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BD7138(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v97 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v94 = v10;
        v13 = (*v7 + 16 * v12);
        v14 = 16 * v11;
        v15 = v11;
        v16 = (*v7 + 16 * v11);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16 + 5;
        v105 = *v13;
        v107 = v13[1];
        v5 = sub_247BC3000();
        result = sub_247BF6B10();
        v20 = result;
        v96 = v15;
        v21 = v15 + 2;
        while (v8 != v21)
        {
          v106 = *(v19 - 1);
          v108 = *v19;
          v101 = *(v19 - 3);
          v103 = *(v19 - 2);
          result = sub_247BF6B10();
          ++v21;
          v19 += 2;
          if ((v20 == -1) == (result != -1))
          {
            v8 = v21 - 1;
            break;
          }
        }

        v11 = v96;
        if (v20 == -1)
        {
          if (v8 < v96)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v96 < v8)
          {
            v22 = 0;
            v23 = 16 * v8;
            v24 = v96;
            do
            {
              if (v24 != v8 + v22 - 1)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v25 = (v29 + v14);
                v26 = v29 + v23;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v24;
              --v22;
              v23 -= 16;
              v14 += 16;
            }

            while (v24 < v8 + v22);
          }
        }

        v7 = a3;
        v10 = v94;
      }

      v30 = v7[1];
      if (v8 < v30)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v30)
          {
            v30 = v11 + a4;
          }

          if (v30 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v30)
          {
            v99 = v30;
            v95 = v10;
            v92 = v6;
            v31 = *v7;
            v5 = sub_247BC3000();
            v32 = (v31 + 16 * v8);
            v33 = v11 - v8;
            do
            {
              v34 = (v31 + 16 * v8);
              v35 = *v34;
              v36 = v34[1];
              v37 = v33;
              v38 = v32;
              do
              {
                v102 = *(v38 - 2);
                v104 = *(v38 - 1);
                result = sub_247BF6B10();
                if (result != -1)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_121;
                }

                v39 = *v38;
                v40 = v38[1];
                *v38 = *(v38 - 1);
                *(v38 - 1) = v40;
                *(v38 - 2) = v39;
                v38 -= 2;
              }

              while (!__CFADD__(v37++, 1));
              ++v8;
              v32 += 2;
              --v33;
            }

            while (v8 != v99);
            v6 = v92;
            v7 = a3;
            v8 = v99;
            v10 = v95;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_247BBE178(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v43 = *(v10 + 2);
      v42 = *(v10 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_247BBE178((v42 > 1), v43 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v44;
      v45 = &v10[16 * v43];
      *(v45 + 4) = v11;
      *(v45 + 5) = v8;
      v5 = *v97;
      if (!*v97)
      {
        goto LABEL_125;
      }

      v100 = v8;
      if (v43)
      {
        while (1)
        {
          v46 = v44 - 1;
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v47 = *(v10 + 4);
            v48 = *(v10 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_57:
            if (v50)
            {
              goto LABEL_104;
            }

            v63 = &v10[16 * v44];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_107;
            }

            v69 = &v10[16 * v46 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_111;
            }

            if (v67 + v72 >= v49)
            {
              if (v49 < v72)
              {
                v46 = v44 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v73 = &v10[16 * v44];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_71:
          if (v68)
          {
            goto LABEL_106;
          }

          v76 = &v10[16 * v46];
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_109;
          }

          if (v79 < v67)
          {
            goto LABEL_3;
          }

LABEL_78:
          v84 = v46 - 1;
          if (v46 - 1 >= v44)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v85 = *&v10[16 * v84 + 32];
          v86 = *&v10[16 * v46 + 40];
          sub_247BD779C((*v7 + 16 * v85), (*v7 + 16 * *&v10[16 * v46 + 32]), (*v7 + 16 * v86), v5);
          if (v6)
          {
          }

          if (v86 < v85)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_247BC04D0(v10);
          }

          if (v84 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v87 = &v10[16 * v84];
          *(v87 + 4) = v85;
          *(v87 + 5) = v86;
          result = sub_247BC0444(v46);
          v44 = *(v10 + 2);
          if (v44 <= 1)
          {
            goto LABEL_3;
          }
        }

        v51 = &v10[16 * v44 + 32];
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_102;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_103;
        }

        v58 = &v10[16 * v44];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_105;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_108;
        }

        if (v62 >= v54)
        {
          v80 = &v10[16 * v46 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_112;
          }

          if (v49 < v83)
          {
            v46 = v44 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v100;
      if (v100 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = v10;
  v10 = *v97;
  if (!*v97)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_247BC04D0(v5);
    v5 = result;
  }

  v88 = *(v5 + 16);
  if (v88 >= 2)
  {
    while (*v7)
    {
      v89 = *(v5 + 16 * v88);
      v90 = *(v5 + 16 * (v88 - 1) + 40);
      sub_247BD779C((*v7 + 16 * v89), (*v7 + 16 * *(v5 + 16 * (v88 - 1) + 32)), (*v7 + 16 * v90), v10);
      if (v6)
      {
      }

      if (v90 < v89)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_247BC04D0(v5);
      }

      if (v88 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v91 = (v5 + 16 * v88);
      *v91 = v89;
      v91[1] = v90;
      result = sub_247BC0444(v88 - 1);
      v88 = *(v5 + 16);
      if (v88 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_247BD779C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_247BC3000();
LABEL_27:
      v22 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v19 = *(v17 - 2);
        v20 = *(v17 - 1);
        v17 -= 16;
        v24 = *(v6 - 2);
        v26 = *(v6 - 1);
        if (sub_247BF6B10() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v22;
          }

          if (v14 <= v4 || (v6 -= 16, v22 <= v7))
          {
            v6 = v22;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_247BC3000();
      while (1)
      {
        v27 = *v6;
        v28 = *(v6 + 1);
        v23 = *v4;
        v25 = *(v4 + 1);
        if (sub_247BF6B10() != -1)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_247BD7A2C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_247BF7460();
  sub_247BF6500();
  v7 = sub_247BF74A0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_247BF7180() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_247BD7DCC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_247BD8988(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_247BD7B68(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = sub_247BF6C40();

    if (v6)
    {
      v7 = sub_247BD7CD8(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  sub_247BF7460();
  MEMORY[0x24C1B4F40](a1);
  v10 = sub_247BF74A0();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (*(*(v3 + 48) + 8 * v12) != a1)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v1;
  v18 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_247BD7F28();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v12);
  sub_247BD8B4C(v12);
  result = v17;
  *v1 = v18;
  return result;
}

uint64_t sub_247BD7CD8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = sub_247BF6C10();
  v6 = swift_unknownObjectRetain();
  v7 = sub_247BD8CF4(v6, v5);
  v16 = v7;
  v8 = *(v7 + 40);
  sub_247BF7460();
  MEMORY[0x24C1B4F40](a2);
  v9 = sub_247BF74A0();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 48);
    while (1)
    {
      v7 = *(v14 + 8 * v12);
      if (v7 == a2)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_247BD8B4C(v12);
  *v2 = v16;
  return v7;
}

void *sub_247BD7DCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E0, &qword_247BFC3E8);
  v2 = *v0;
  v3 = sub_247BF6C80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_247BD7F28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F8, &qword_247BFC408);
  v2 = *v0;
  v3 = sub_247BF6C80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_247BD8078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E0, &qword_247BFC3E8);
  result = sub_247BF6C90();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_247BF7460();

      sub_247BF6500();
      result = sub_247BF74A0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_247BD82B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F8, &qword_247BFC408);
  result = sub_247BF6C90();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_247BF7460();
      MEMORY[0x24C1B4F40](v17);
      result = sub_247BF74A0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_247BD84D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E0, &qword_247BFC3E8);
  result = sub_247BF6C90();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_247BD8738(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F8, &qword_247BFC408);
  result = sub_247BF6C90();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_247BF7460();
      MEMORY[0x24C1B4F40](v18);
      result = sub_247BF74A0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_247BD8988(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_247BF6BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_247BF7460();

        sub_247BF6500();
        v15 = sub_247BF74A0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_247BD8B4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_247BF6BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_247BF7460();
        MEMORY[0x24C1B4F40](v12);
        v13 = sub_247BF74A0() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_247BD8CF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F8, &qword_247BFC408);
    v2 = sub_247BF6CA0();
    v16 = v2;
    sub_247BF6C00();
    if (sub_247BF6C30())
    {
      type metadata accessor for CUXPCActorConnection();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_247BD8738(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_247BF7460();
        MEMORY[0x24C1B4F40]();
        result = sub_247BF74A0();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_247BF6C30());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_247BD8EF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_247BF7460();
  MEMORY[0x24C1B4F40](a1);
  sub_247BF74A0();
  v5 = -1 << *(a2 + 32);
  result = sub_247BF6BF0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_247BD8F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_247B9B134(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_247BDADD8();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_247BDA2C0(v7, v10);
  *v3 = v10;
  return v13;
}

double sub_247BD9044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_247B9B134(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDAF58();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_247BDE7C8(*(v12 + 56) + 16 * v9, a3);
    sub_247BDA470(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_247BFBBF0;
  }

  return result;
}

double sub_247BD90F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_247BD6CD4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDB56C();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_247BF6E20();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_247B9471C((*(v11 + 56) + 32 * v8), a2);
    sub_247BDAB24(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_247BD91D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E8, &qword_247BFC3F0);
  v36 = a2;
  result = sub_247BF6ED0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      v26 = *(v8 + 40);
      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_247BD948C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E128, &qword_247BFC430);
  v37 = a2;
  result = sub_247BF6ED0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + v22);
      v25 = *v24;
      v26 = v24[1];
      if (v37)
      {
        sub_247BDE7C8(v23 + v22, v38);
      }

      else
      {
        sub_247BDE790(v23 + v22, v38);
      }

      v27 = *(v8 + 40);
      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_247BDE7C8(v38, *(v8 + 56) + v17);
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_247BD9750(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E170, &qword_247BFC468);
  v36 = a2;
  result = sub_247BF6ED0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_247BF7450();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_247BD99D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E138, &qword_247BFC440);
  v38 = a2;
  result = sub_247BF6ED0();
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
      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
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

uint64_t sub_247BD9C7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E0B0, &unk_247BFC370);
  result = sub_247BF6ED0();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = 8 * (v18 | (v9 << 6));
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + v21;
      if (a2)
      {
        sub_247BDE670(v23, v34, &qword_27EE5E0A8, &qword_247BFC368);
      }

      else
      {
        sub_247BC5B0C(v23, v34, &qword_27EE5E0A8, &qword_247BFC368);
      }

      v24 = *(v8 + 40);
      result = sub_247BF7450();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      *(*(v8 + 48) + v17) = v22;
      result = sub_247BDE670(v34, *(v8 + 56) + v17, &qword_27EE5E0A8, &qword_247BFC368);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_247BD9F20(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_247BF6E20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E120, &qword_247BFC428);
  v43 = a2;
  result = sub_247BF6ED0();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_247B9471C((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_247B9B1AC(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_247BF6390();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_247B9471C(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_247BDA2C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_247BF7460();

      sub_247BF6500();
      v13 = sub_247BF74A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_247BDA470(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_247BF7460();

      sub_247BF6500();
      v13 = sub_247BF74A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      result = v18 + 16 * v3;
      if (v3 < v6 || result >= v18 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_247BDA640(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_247BF7450();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_247BDA7B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_247BF7460();

      sub_247BF6500();
      v13 = sub_247BF74A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_247BDA960(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_247BF7450();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0A8, &qword_247BFC368);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0A8, &qword_247BFC368);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_247BDAB24(int64_t a1, uint64_t a2)
{
  v4 = sub_247BF6E20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_247BF6BE0();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_247BF6390();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_247BDADD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E8, &qword_247BFC3F0);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        result = swift_unknownObjectRetain();
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

void *sub_247BDAF58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E128, &qword_247BFC430);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        sub_247BDE790(*(v2 + 56) + v17, v22);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        sub_247BDE7C8(v22, *(v4 + 56) + v17);
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

void *sub_247BDB0E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E170, &qword_247BFC468);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_247BDB24C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E138, &qword_247BFC440);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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

void *sub_247BDB3BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E0B0, &unk_247BFC370);
  v2 = *v0;
  v3 = sub_247BF6EC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v19 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_247BC5B0C(*(v2 + 56) + v17, v20, &qword_27EE5E0A8, &qword_247BFC368);
        *(*(v4 + 48) + v17) = v18;
        result = sub_247BDE670(v20, *(v4 + 56) + v17, &qword_27EE5E0A8, &qword_247BFC368);
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

        v1 = v19;
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

void *sub_247BDB56C()
{
  v1 = v0;
  v27 = sub_247BF6E20();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E120, &qword_247BFC428);
  v4 = *v0;
  v5 = sub_247BF6EC0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_247B9B1AC(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_247B9471C(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
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

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
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

unint64_t sub_247BDB7F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_247BA04BC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_247BD9750(v16, a4 & 1);
      v20 = *v5;
      result = sub_247BA04BC(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_247BF73C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_247BDB0E4();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_247BDB950(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_247B9B134(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_247BD99D4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_247B9B134(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_247BF73C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_247BDB24C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_247BDBACC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_247BD6C98(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_247BDB3BC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_247BD9C7C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_247BD6C98(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_247BF73C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 8 * v9;

    return sub_247BDEA28(a1, v21);
  }

  else
  {

    return sub_247BDC090(v9, a2, a1, v20);
  }
}

uint64_t sub_247BDBBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_247B9B134(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_247BD91D4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_247B9B134(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_247BF73C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_247BDADD8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    *v25 = a1;
    v25[1] = a2;

    return swift_unknownObjectRelease();
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_247BDBD74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_247B9B134(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_247BDAF58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_247BD948C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_247B9B134(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_247BF73C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * v11;

    return sub_247BDE9F0(a1, v23);
  }

  else
  {
    sub_247BDC110(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_247BDBEB8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_247BF6E20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_247BD6CD4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_247BDB56C();
      goto LABEL_7;
    }

    sub_247BD9F20(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_247BD6CD4(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_247BDC180(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_247BF73C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  return sub_247B9471C(a1, v22);
}

uint64_t sub_247BDC090(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_247BDE670(a3, a4[7] + 8 * a1, &qword_27EE5E0A8, &qword_247BFC368);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_247BDC110(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_247BDE7C8(a4, a5[7] + 16 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_247BDC180(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_247BF6E20();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_247B9471C(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_247BDC240(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_247BF7460();
  sub_247BF6500();
  v9 = sub_247BF74A0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_247BF7180() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_247BDC590(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_247BDC390(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_247BF6C20();

    if (v8)
    {

      type metadata accessor for CUXPCActorConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_247BF6C10();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_247BD8CF4(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_247BD8738(v19 + 1);
    }

    sub_247BD8EF0(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_247BF7460();
  MEMORY[0x24C1B4F40](a2);
  v11 = sub_247BF74A0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_247BDC710(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_247BDC590(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_247BD84D8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_247BD7DCC();
      goto LABEL_16;
    }

    sub_247BD8078(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_247BF7460();
  sub_247BF6500();
  result = sub_247BF74A0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_247BF7180();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_247BF73B0();
  __break(1u);
  return result;
}

uint64_t sub_247BDC710(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_247BD8738(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_247BD7F28();
      a2 = v7;
      goto LABEL_12;
    }

    sub_247BD82B0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v4);
  result = sub_247BF74A0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = result & ~v10;
    result = type metadata accessor for CUXPCActorConnection();
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_247BF73B0();
  __break(1u);
  return result;
}

void *sub_247BDC868(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_247BDC9C0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_247BDCB18(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_247BDCC84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDA8, &qword_247BFA8F8);
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

uint64_t sub_247BDCD90(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_247BDCE84;

  return v6(v2 + 32);
}

uint64_t sub_247BDCE84()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_247BDCF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E128, &qword_247BFC430);
    v3 = sub_247BF6EE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_247BC5B0C(v4, &v13, &unk_27EE5E190, &qword_247BFC4B0);
      v5 = v13;
      v6 = v14;
      result = sub_247B9B134(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247BDE7C8(&v15, v3[7] + 16 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 32;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_247BDD0CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E138, &qword_247BFC440);
    v3 = sub_247BF6EE0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_247B9B134(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_247BDD1D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E8, &qword_247BFC3F0);
    v3 = sub_247BF6EE0();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_247B9B134(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_247BDD2EC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E170, &qword_247BFC468);
  v3 = sub_247BF6EE0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_247BA04BC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_247BA04BC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_247BDD4C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E0B0, &unk_247BFC370);
    v3 = sub_247BF6EE0();
    for (i = a1 + 32; ; i += 16)
    {
      sub_247BC5B0C(i, &v11, &qword_27EE5E140, &qword_247BFC448);
      v5 = v11;
      result = sub_247BD6C98(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_247BDE670(&v12, v3[7] + 8 * result, &qword_27EE5E0A8, &qword_247BFC368);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_247BDD650(void *a1)
{
  length[1] = *MEMORY[0x277D85DE8];
  v3 = sub_247BF6130();
  swift_unknownObjectRelease();
  if (v3 == a1)
  {
    type metadata accessor for CUError();
    v13 = 0x65746E6920435058;
    v14 = 0xEF64657470757272;
    v15 = -71142;
LABEL_8:
    CUError.__allocating_init(_:_:_:)(v15, v13, v14, 0);
LABEL_9:
    result = swift_willThrow();
    goto LABEL_10;
  }

  v4 = sub_247BF6120();
  swift_unknownObjectRelease();
  if (v4 == a1)
  {
    type metadata accessor for CUError();
    v13 = 0x61766E6920435058;
    v14 = 0xEF6465746164696CLL;
    v15 = -71148;
    goto LABEL_8;
  }

  length[0] = 0;
  result = xpc_dictionary_get_data(a1, "error", length);
  if (result)
  {
    v6 = result;
    v7 = sub_247BF5CC0();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_247BF5CB0();
    type metadata accessor for CUError();
    v10 = sub_247BC3110(v6, length[0]);
    v12 = v11;
    sub_247BDEA98(&qword_27EE5DE30, 255, type metadata accessor for CUError);
    sub_247BF5C90();
    sub_247BC2AC4(v10, v12);

    if (!v1)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247BDD848(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = MEMORY[0x277D84FA0];
  swift_weakInit();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  *(v3 + 32) = 257;
  *(v3 + 40) = v6;
  v7 = *(a1 + 56);
  *(v3 + 48) = *(a1 + 48);
  *(v3 + 56) = v7;
  *(v3 + 88) = 0;
  swift_weakAssign();
  *(v3 + 104) = a2;

  return v3;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_247BDD9A8()
{
  result = qword_27EE5DFF8;
  if (!qword_27EE5DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DFF8);
  }

  return result;
}

unint64_t sub_247BDDA0C()
{
  result = qword_27EE5E000;
  if (!qword_27EE5E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E000);
  }

  return result;
}

unint64_t sub_247BDDA64()
{
  result = qword_27EE5E008;
  if (!qword_27EE5E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E008);
  }

  return result;
}

unint64_t sub_247BDDABC()
{
  result = qword_27EE5E010;
  if (!qword_27EE5E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUStringAppendFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CUStringAppendFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_247BDDC64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_247BDDCAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUXPCActorSystem.ActorEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CUXPCActorSystem.ActorEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_247BDDE78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_247BDDEC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_247BDDF24(uint64_t *a1, int a2)
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

uint64_t sub_247BDDF6C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_247BDDFD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_247BDE020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247BDE07C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247BDE0C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_247BDE13C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_247BDE184(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247BDE1F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247BDE2A4;

  return sub_247BC6110(a1, v5);
}

uint64_t sub_247BDE2A4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_247BDE3B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_247B95F40;

  return sub_247BC5E30(a1, a2, v7);
}

uint64_t sub_247BDE478(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247B96F0C;

  return sub_247BD60EC(a1, v5, v4);
}

uint64_t sub_247BDE524(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247B96F0C;

  return sub_247BDCD90(a1, v5);
}

uint64_t sub_247BDE5DC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_247B95F40;

  return sub_247BD2450(v3, v2);
}

uint64_t sub_247BDE670(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_247BDE708(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_247BF7180() & 1;
  }
}

uint64_t objectdestroy_165Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E110, &unk_247BFC418);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247BDE918(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E110, &unk_247BFC418) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = a1;
  swift_unknownObjectRetain();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0C0, &qword_247BFC380);
  CUSendableWrapper.init(_:)(&v6, v4, &v7);
  v6 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E110, &unk_247BFC418);
  return sub_247BF6760();
}

uint64_t sub_247BDEA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0A8, &qword_247BFC368);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BDEA98(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_247BDEAE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_247B96F0C;

  return sub_247BCA41C(v6, v2, v3, v4, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t objectdestroy_128Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247BDEC3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_247B96F0C;

  return sub_247BD3360(v4, v2, v3);
}

uint64_t sub_247BDECD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_247BDED84()
{
  qword_27EE60F58 = 48;
  unk_27EE60F60 = 0xE100000000000000;
  qword_27EE60F68 = 25136;
  unk_27EE60F70 = 0xE200000000000000;
  qword_27EE60F78 = 2;
  byte_27EE60F80 = 0;
}

uint64_t static PrintUtilsIntegerFormat.binary.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE60F50 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EE60F60;
  v2 = qword_27EE60F68;
  v3 = unk_27EE60F70;
  v4 = qword_27EE60F78;
  v5 = byte_27EE60F80;
  *a1 = qword_27EE60F58;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

void sub_247BDEE48()
{
  qword_27EE60F90 = 0;
  *algn_27EE60F98 = 0xE000000000000000;
  qword_27EE60FA0 = 0;
  unk_27EE60FA8 = 0xE000000000000000;
  qword_27EE60FB0 = 10;
  byte_27EE60FB8 = 0;
}

uint64_t static PrintUtilsIntegerFormat.decimal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE60F88 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EE60F98;
  v2 = qword_27EE60FA0;
  v3 = unk_27EE60FA8;
  v4 = qword_27EE60FB0;
  v5 = byte_27EE60FB8;
  *a1 = qword_27EE60F90;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

void sub_247BDEF00()
{
  qword_27EE60FC8 = 48;
  unk_27EE60FD0 = 0xE100000000000000;
  qword_27EE60FD8 = 30768;
  unk_27EE60FE0 = 0xE200000000000000;
  qword_27EE60FE8 = 16;
  byte_27EE60FF0 = 0;
}

uint64_t static PrintUtilsIntegerFormat.hex.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE60FC0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EE60FD0;
  v2 = qword_27EE60FD8;
  v3 = unk_27EE60FE0;
  v4 = qword_27EE60FE8;
  v5 = byte_27EE60FF0;
  *a1 = qword_27EE60FC8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

void sub_247BDEFC4()
{
  qword_27EE61000 = 48;
  *algn_27EE61008 = 0xE100000000000000;
  qword_27EE61010 = 30768;
  unk_27EE61018 = 0xE200000000000000;
  qword_27EE61020 = 16;
  byte_27EE61028 = 1;
}

uint64_t static PrintUtilsIntegerFormat.HEX.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE60FF8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EE61008;
  v2 = qword_27EE61010;
  v3 = unk_27EE61018;
  v4 = qword_27EE61020;
  v5 = byte_27EE61028;
  *a1 = qword_27EE61000;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

void sub_247BDF08C()
{
  qword_27EE61038 = 48;
  unk_27EE61040 = 0xE100000000000000;
  qword_27EE61048 = 48;
  unk_27EE61050 = 0xE100000000000000;
  qword_27EE61058 = 8;
  byte_27EE61060 = 0;
}

uint64_t static PrintUtilsIntegerFormat.octal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE61030 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EE61040;
  v2 = qword_27EE61048;
  v3 = unk_27EE61050;
  v4 = qword_27EE61058;
  v5 = byte_27EE61060;
  *a1 = qword_27EE61038;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t DefaultStringInterpolation.PrintUtilsTimeDuration.hashValue.getter()
{
  sub_247BF7460();
  MEMORY[0x24C1B4F40](0);
  return sub_247BF74A0();
}

unint64_t *DefaultStringInterpolation.appendInterpolation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = *(a4 + 24);
  v60 = *(v67 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58[1] = v58 - v9;
  v66 = *(a3 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v65 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v68 = *(swift_getAssociatedConformanceWitness() + 16);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = swift_checkMetadataState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v58 - v20;
  v70 = a1;
  sub_247BF6920();
  v71 = a4;
  swift_getAssociatedConformanceWitness();
  if (sub_247BF6B80())
  {
    swift_getAssociatedConformanceWitness();
    sub_247BF7370();
    sub_247BF7160();
    swift_getAssociatedConformanceWitness();
    v22 = sub_247BF6430();
    result = (*(v15 + 8))(v19, v14);
    if ((v22 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v69 = a3;
  if (sub_247BF6B70() >= 64)
  {
    v64 = v15;
    v73 = -1;
    v24 = sub_247BF6B80();
    v25 = sub_247BF6B70();
    if (v24)
    {
      if (v25 <= 64)
      {
        goto LABEL_11;
      }

      sub_247BDFCCC();
      sub_247BF6B30();
      swift_getAssociatedConformanceWitness();
      v26 = sub_247BF6420();
      v15 = v64;
    }

    else
    {
      v15 = v64;
      if (v25 < 65)
      {
LABEL_12:
        sub_247BF6B60();
        goto LABEL_13;
      }

      sub_247BDFCCC();
      sub_247BF6B30();
      swift_getAssociatedConformanceWitness();
      v26 = sub_247BF6420();
    }

    (*(v15 + 8))(v19, v14);
    if ((v26 & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    sub_247BF7370();
    sub_247BF7160();
    swift_getAssociatedConformanceWitness();
    v27 = sub_247BF6410();
    v15 = v64;
    (*(v64 + 8))(v19, v14);
    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v28 = sub_247BF6B60();
  (*(v15 + 8))(v21, v14);
  result = sub_247BED794();
  v29 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (!v29)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  result = sub_247BED764();
  v30 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v30)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  result = sub_247BED750();
  v31 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (!v31)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = sub_247BED73C();
  v32 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (!v32)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v61 = v28 / v29;
  v33 = v28 % v29;
  v62 = v28 % v29 / v30;
  v34 = v28 % v29 % v30;
  v63 = v34 / v31;
  v67 = v28;
  v68 = v34;
  v35 = v34 % v31;
  v36 = v34 % v31 / v32;
  v37 = v69;
  v38 = v71;
  if (sub_247BF6B80())
  {
    v64 = v35;
    if (sub_247BF6B70() < 64)
    {
      v39 = sub_247BF6B60();
      v35 = v64;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v73 = 0;
    sub_247BC360C();
    v58[0] = v36;
    v46 = v65;
    sub_247BF6B30();
    v47 = *(*(v38 + 32) + 8);
    v45 = sub_247BF6420();
    v48 = v46;
    v36 = v58[0];
    (*(v66 + 8))(v48, v37);
LABEL_29:
    v35 = v64;
    if ((v45 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_35:
    MEMORY[0x24C1B4020](45, 0xE100000000000000);
    goto LABEL_36;
  }

  v40 = sub_247BF6B80();
  v41 = sub_247BF6B70();
  if (v40)
  {
    v64 = v35;
    if (v41 > 64)
    {
      v73 = 0;
      sub_247BC360C();
      v42 = v65;
      v43 = v71;
      sub_247BF6B30();
      v44 = *(*(v43 + 32) + 8);
      v45 = sub_247BF6420();
      (*(v66 + 8))(v42, v37);
      goto LABEL_29;
    }

    swift_getAssociatedConformanceWitness();
    v58[0] = v36;
    sub_247BF7370();
    v49 = v65;
    v36 = v58[0];
    sub_247BF7160();
    v50 = *(*(v71 + 32) + 8);
    v51 = sub_247BF6420();
    (*(v66 + 8))(v49, v37);
    v35 = v64;
    if (v51)
    {
      goto LABEL_35;
    }

LABEL_34:
    if ((sub_247BF6B60() & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v41 < 64)
  {
    goto LABEL_34;
  }

LABEL_36:
  v52 = v35 - v36 * v32;
  if (v29 <= v67)
  {
    v72 = v61;
    v73 = sub_247BF6FD0();
    v74 = v53;
    MEMORY[0x24C1B4020](121, 0xE100000000000000);
    MEMORY[0x24C1B4020](v73, v74);

    if (v30 > v33)
    {
LABEL_45:
      if (v31 > v68)
      {
        if (v32 <= v35)
        {
LABEL_51:
          MEMORY[0x24C1B4020](32, 0xE100000000000000);
LABEL_52:
          v72 = v36;
          v73 = sub_247BF6FD0();
          v74 = v56;
          MEMORY[0x24C1B4020](109, 0xE100000000000000);
          MEMORY[0x24C1B4020](v73, v74);

          if (!v52)
          {
            return result;
          }

          goto LABEL_53;
        }

LABEL_47:
        if (!v52)
        {
          return result;
        }

LABEL_53:
        MEMORY[0x24C1B4020](32, 0xE100000000000000);
        goto LABEL_54;
      }

      MEMORY[0x24C1B4020](32, 0xE100000000000000);
LABEL_50:
      v72 = v63;
      v73 = sub_247BF6FD0();
      v74 = v55;
      MEMORY[0x24C1B4020](104, 0xE100000000000000);
      MEMORY[0x24C1B4020](v73, v74);

      if (v32 <= v35)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

    MEMORY[0x24C1B4020](32, 0xE100000000000000);
LABEL_44:
    v72 = v62;
    v73 = sub_247BF6FD0();
    v74 = v54;
    MEMORY[0x24C1B4020](100, 0xE100000000000000);
    MEMORY[0x24C1B4020](v73, v74);

    goto LABEL_45;
  }

  if (v30 <= v33)
  {
    goto LABEL_44;
  }

  if (v31 <= v68)
  {
    goto LABEL_50;
  }

  if (v32 <= v35)
  {
    goto LABEL_52;
  }

  if (v52)
  {
LABEL_54:
    v72 = v35 - v36 * v32;
    goto LABEL_55;
  }

  v72 = 0;
LABEL_55:
  v73 = sub_247BF6FD0();
  v74 = v57;
  MEMORY[0x24C1B4020](115, 0xE100000000000000);
  MEMORY[0x24C1B4020](v73, v74);
}

unint64_t sub_247BDFCCC()
{
  result = qword_27EE5E1A0;
  if (!qword_27EE5E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1A0);
  }

  return result;
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:_:prefix:pad:)(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a4;
  v42 = a3;
  v12 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = v12;
  v14 = *(v12 + 16);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v37 = *(a5 - 8);
  v18 = *(v37 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v36[2] = a2[1];
  v36[3] = v21;
  v22 = a2[2];
  v38 = a2[3];
  v39 = v22;
  v41 = a2[4];
  v40 = *(a2 + 40);
  if (sub_247BF6B80())
  {
    if (sub_247BF6B70() >= 64)
    {
      v46 = 0;
      sub_247BC360C();
      sub_247BF6B30();
      v23 = *(*(a6 + 32) + 8);
      v24 = sub_247BF6420();
      (*(v37 + 8))(v20, a5);
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      MEMORY[0x24C1B4020](45, 0xE100000000000000);
      goto LABEL_14;
    }

LABEL_12:
    if ((sub_247BF6B60() & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v36[1] = v7;
  v25 = sub_247BF6B80();
  v36[0] = a1;
  v26 = sub_247BF6B70();
  if (v25)
  {
    if (v26 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_247BF7370();
      sub_247BF7160();
      v29 = *(*(a6 + 32) + 8);
      v30 = sub_247BF6420();
      (*(v37 + 8))(v20, a5);
      if (v30)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v46 = 0;
    sub_247BC360C();
    sub_247BF6B30();
    v27 = *(*(a6 + 32) + 8);
    v28 = sub_247BF6420();
    (*(v37 + 8))(v20, a5);
    if (v28)
    {
      goto LABEL_13;
    }
  }

  else if (v26 < 64)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v42)
  {
    MEMORY[0x24C1B4020](v39, v38);
  }

  sub_247BF6920();
  swift_getAssociatedConformanceWitness();
  v31 = sub_247BF65D0();
  v33 = v32;
  result = sub_247BF6510();
  if (result >= v45)
  {
    goto LABEL_19;
  }

  if (!__OFSUB__(v45, result))
  {

    v35 = sub_247BF65C0();
    MEMORY[0x24C1B4020](v35);

LABEL_19:
    MEMORY[0x24C1B4020](v31, v33);
  }

  __break(1u);
  return result;
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v35[-v15];
  v36 = *a2;
  if (v36)
  {
    v17 = &unk_2859CECD8;
  }

  else
  {
    v17 = &unk_2859CEBB8;
  }

  (*(v9 + 16))(v12, v37, a5);
  v37 = v17;

  sub_247BF6610();
  swift_getAssociatedConformanceWitness();
  sub_247BF6AE0();
  if ((v40 & 1) == 0)
  {
    v18 = v39;
    v19 = &unk_2859CEBB8;
    if (v36)
    {
      v19 = &unk_2859CECD8;
    }

    v20 = v19 + 32;
    v21 = &v19[(v39 & 0xF0) + 32];
    v22 = *v21;
    v23 = *(v21 + 1);

    MEMORY[0x24C1B4020](v22, v23);

    v24 = &v20[16 * (v18 & 0xF)];
    v25 = *v24;
    v26 = *(v24 + 1);

    MEMORY[0x24C1B4020](v25, v26);

    sub_247BF6AE0();
    if ((v40 & 1) == 0)
    {
      v27 = v39;
      do
      {
        MEMORY[0x24C1B4020](a3, a4);
        v28 = &v20[v27 & 0xF0];
        v29 = *v28;
        v30 = *(v28 + 1);

        MEMORY[0x24C1B4020](v29, v30);

        v31 = &v20[16 * (v27 & 0xF)];
        v32 = *v31;
        v33 = *(v31 + 1);

        MEMORY[0x24C1B4020](v32, v33);

        sub_247BF6AE0();
        v27 = v39;
      }

      while (v40 != 1);
    }
  }

  (*(v38 + 8))(v16, AssociatedTypeWitness);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:_:width:pad:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = sub_247BF6FD0();
  v7 = v6;
  result = sub_247BF6510();
  v9 = result;
  if ((v4 & 1) == 0)
  {
    MEMORY[0x24C1B4020](v5, v7);

    if (v9 >= a3)
    {
      return result;
    }

    if (!__OFSUB__(a3, v9))
    {

      v11 = sub_247BF65C0();
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (result < a3)
  {
    if (!__OFSUB__(a3, result))
    {

      v10 = sub_247BF65C0();
      MEMORY[0x24C1B4020](v10);

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_5:
  v11 = v5;
  v12 = v7;
LABEL_9:
  MEMORY[0x24C1B4020](v11, v12);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(nilPrint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247BF6AC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v7 + 8))(v11, v6);
    return DefaultStringInterpolation.appendInterpolation<A>(_:)(a1, a2, a3);
  }

  else
  {
    (*(v12 + 32))(v15, v11, a2);
    sub_247BF7150();
    return (*(v12 + 8))(v15, a2);
  }
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247BF6AC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = MEMORY[0x277D83838];
    v17[0] = 7104878;
    v17[1] = 0xE300000000000000;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
    (*(v11 + 32))(boxed_opaque_existential_0, v10, a2);
    sub_247B93B4C(&v14, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC30, &qword_247BFC500);
  sub_247BF6DC0();
  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

unint64_t sub_247BE09F8()
{
  result = qword_27EE5E1A8;
  if (!qword_27EE5E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1A8);
  }

  return result;
}

unint64_t sub_247BE0A50()
{
  result = qword_27EE5E1B0;
  if (!qword_27EE5E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1B0);
  }

  return result;
}

unint64_t sub_247BE0AA8()
{
  result = qword_27EE5E1B8;
  if (!qword_27EE5E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1B8);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_247BE0B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_247BE0B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUAsyncSerialQueue.OrderingPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CUAsyncSerialQueue.OrderingPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static CUDictionaryEncoder.Configuration.default.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27EE61370 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = HIBYTE(word_27EE61378);
  v2 = byte_27EE6137A;
  *a1 = word_27EE61378;
  a1[1] = v1;
  a1[2] = v2;
  return result;
}

uint64_t CUDictionaryEncoder.encode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  type metadata accessor for CUDictionaryEncoder.Context();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v9;
  *(v12 + 17) = v10;
  *(v12 + 18) = v11;
  type metadata accessor for _CUDictionaryEncoder();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  v15 = MEMORY[0x277D84F98];
  *(v13 + 64) = 0;
  *(v13 + 72) = v15;
  *(v13 + 16) = v14;
  *(v13 + 24) = v12;
  _CUDictionaryEncoder.encode<A>(_:)(a1, a2, a3, a4);
}

uint64_t CUDictionaryEncoder.Context.__allocating_init(configuration:)(char *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  *(result + 24) = 0;
  *(result + 16) = v3;
  *(result + 17) = v4;
  *(result + 18) = v5;
  return result;
}

double _CUDictionaryEncoder.__allocating_init(context:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F98];
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = v4;
  *(v2 + 16) = v3;
  *(v2 + 24) = a1;
  return result;
}

_OWORD *_CUDictionaryEncoder.encode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v72 = a4;
  v5 = v4;
  v70 = *v5;
  v71 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1C0, &qword_247BFC710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v63 - v10;
  v11 = sub_247BF5F30();
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v11);
  v64 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1C8, &unk_247BFC718);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v63 - v16;
  v18 = sub_247BF5EC0();
  v69 = *(v18 - 8);
  v19 = *(v69 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a2;
  v22 = *(a2 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v63 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v5[3];
  if (v31[16] == 1)
  {
    v63 = v5;
    (*(v22 + 16))(&v63 - v30, a1, v79);
    if (swift_dynamicCast())
    {
      v32 = v76;
      v33 = sub_247BF5E70();
      v34 = sub_247BC3818(0, &qword_27EE5E1E8, 0x277CBEA90);
      v35 = v72;
      v72[3] = v34;
      result = sub_247BC2AC4(v32, *(&v32 + 1));
      *v35 = v33;
      return result;
    }

    v5 = v63;
  }

  if (v31[17] == 1)
  {
    (*(v22 + 16))(v29, a1, v79);
    v37 = swift_dynamicCast();
    v38 = v69;
    v39 = *(v69 + 56);
    if (v37)
    {
      v39(v17, 0, 1, v18);
      v40 = v65;
      (*(v38 + 32))(v65, v17, v18);
      v41 = v38;
      v42 = sub_247BF5EA0();
      v43 = sub_247BC3818(0, &qword_27EE5E1E0, 0x277CBEAA8);
      v44 = v72;
      v72[3] = v43;
      *v44 = v42;
      return (*(v41 + 8))(v40, v18);
    }

    v39(v17, 1, 1, v18);
    sub_247B9CAD0(v17, &qword_27EE5E1C8, &unk_247BFC718);
  }

  v45 = v31[18];
  v46 = v73;
  if (v45 == 1)
  {
    (*(v22 + 16))(v26, a1, v79);
    v47 = v66;
    v48 = v68;
    v49 = swift_dynamicCast();
    v50 = v67;
    v51 = *(v67 + 56);
    if (v49)
    {
      v51(v47, 0, 1, v48);
      v52 = v64;
      (*(v50 + 32))(v64, v47, v48);
      v53 = sub_247BF5EE0();
      v54 = sub_247BC3818(0, &qword_27EE5E1D8, 0x277CCAD78);
      v55 = v72;
      v72[3] = v54;
      *v55 = v53;
      return (*(v50 + 8))(v52, v48);
    }

    v51(v47, 1, 1, v48);
    sub_247B9CAD0(v47, &qword_27EE5E1C0, &qword_247BFC710);
  }

  v77 = v70;
  v78 = sub_247BE1BAC();
  *&v76 = v5;

  sub_247BF6360();
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v76);
  if (!v46)
  {
    swift_beginAccess();
    v56 = v5[7];
    if (v56)
    {
      v57 = v5[8];
      v58 = __swift_project_boxed_opaque_existential_1(v5 + 4, v5[7]);
      v59 = *(v56 - 8);
      v60 = *(v59 + 64);
      MEMORY[0x28223BE20](v58);
      v62 = &v63 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v62);
      (*(v57 + 8))(&v74, v56, v57);
      (*(v59 + 8))(v62, v56);
      if (*(&v75 + 1))
      {
        sub_247B9471C(&v74, &v76);
        return sub_247B9471C(&v76, v72);
      }
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    sub_247B9CAD0(&v74, &unk_27EE5DDB0, &unk_247BFA900);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6762, 0x65756C6176206F4ELL, 0xE800000000000000, 0);
    return swift_willThrow();
  }

  return result;
}

CoreUtilsSwift::CUDictionaryEncoder::Configuration __swiftcall CUDictionaryEncoder.Configuration.init(allowData:allowDate:allowUUID:)(Swift::Bool allowData, Swift::Bool allowDate, Swift::Bool allowUUID)
{
  *v3 = allowData;
  v3[1] = allowDate;
  v3[2] = allowUUID;
  result.allowData = allowData;
  return result;
}

uint64_t sub_247BE17F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  return CUKeyPathModifiable.setIf<A>(_:_:_:)(a1, a2, a3);
}

uint64_t sub_247BE1854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  return a6(a1, a2, a5);
}

void CUDictionaryEncoder.Context.configuration.getter(_BYTE *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  *a1 = v1[16];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t CUDictionaryEncoder.Context.depth.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t CUDictionaryEncoder.Context.init(configuration:)(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(v1 + 24) = 0;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  *(v1 + 18) = v4;
  return v1;
}

uint64_t _CUDictionaryEncoder.codingPath.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t _CUDictionaryEncoder.codingPath.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t _CUDictionaryEncoder.userInfo.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t _CUDictionaryEncoder.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t _CUDictionaryEncoder.init(context:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F98];
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;
  return v1;
}

unint64_t sub_247BE1BAC()
{
  result = qword_27EE5E1D0;
  if (!qword_27EE5E1D0)
  {
    type metadata accessor for _CUDictionaryEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1D0);
  }

  return result;
}

uint64_t _CUDictionaryEncoder.container<A>(keyedBy:)()
{
  v1 = v0;
  v2 = type metadata accessor for _CUDictionaryEncoder.KeyedContainer();
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 16);

  v5 = sub_247BE1D28(v3, v4);
  v7[3] = v2;
  v7[4] = &off_2859CF250;
  v7[0] = v5;
  swift_beginAccess();

  sub_247BE67B4(v7, v1 + 32, &qword_27EE5E1F0, &qword_247BFC728);
  swift_endAccess();
  v7[0] = v5;
  swift_getWitnessTable();
  return sub_247BF6FB0();
}

void *sub_247BE1D28(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(*v4 + 80);
  v6 = sub_247BF62C0();
  v7 = MEMORY[0x277D84F90];
  v4[4] = v6;
  v4[5] = v7;
  v4[2] = a2;
  v4[3] = a1;
  return v4;
}

uint64_t _CUDictionaryEncoder.singleValueContainer()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = type metadata accessor for _CUDictionaryEncoder.SingleValueContainer();
  v6 = swift_allocObject();
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v8[3] = v5;
  v8[4] = &off_2859CF240;
  v8[0] = v6;
  swift_beginAccess();

  sub_247BE67B4(v8, v1 + 32, &qword_27EE5E1F0, &qword_247BFC728);
  swift_endAccess();
  a1[3] = v5;
  result = sub_247BE2010(&qword_27EE61380, type metadata accessor for _CUDictionaryEncoder.SingleValueContainer);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t _CUDictionaryEncoder.unkeyedContainer()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  v6[3] = v3;
  v6[4] = v7;
  v6[2] = v4;
  v9[3] = v5;
  v9[4] = &off_2859CF230;
  v9[0] = v6;
  swift_beginAccess();

  sub_247BE67B4(v9, v1 + 32, &qword_27EE5E1F0, &qword_247BFC728);
  swift_endAccess();
  a1[3] = v5;
  result = sub_247BE2010(qword_27EE61388, type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_247BE2010(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247BE2054(uint64_t a1)
{
  swift_beginAccess();
  sub_247BE6744(v1 + 32, v10);
  v3 = v11;
  sub_247B9CAD0(v10, &unk_27EE5DDB0, &unk_247BFA900);
  if (v3)
  {
    v4 = sub_247BF6D60();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E218, &qword_247BFCD50) + 48);
    sub_247B9B1AC(a1, v6);
    v8 = *(v1 + 16);

    sub_247BF6D30();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D841A8], v4);
    return swift_willThrow();
  }

  else
  {
    sub_247B9B1AC(a1, v10);
    swift_beginAccess();
    sub_247BE67B4(v10, v1 + 32, &unk_27EE5DDB0, &unk_247BFA900);
    return swift_endAccess();
  }
}