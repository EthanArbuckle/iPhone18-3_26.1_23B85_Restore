uint64_t XPCConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*XPCConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_22B4C1F9C;
}

void sub_22B4C1F9C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_22B4C2028()
{
  v0 = sub_22B4C50A0();
  __swift_allocate_value_buffer(v0, qword_280C53558);
  __swift_project_value_buffer(v0, qword_280C53558);
  return sub_22B4C5090();
}

void *XPCConnection.__allocating_init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_22B4C2CFC(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

void *XPCConnection.init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22B4C2CFC(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t XPCConnection.__allocating_init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  swift_allocObject();
  v12 = sub_22B4C2F30(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t XPCConnection.init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = sub_22B4C2F30(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t XPCConnection.__allocating_init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  XPCConnection.init(serviceName:targetQ:listen:delegate:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void XPCConnection.init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v7[2] = 0;
  v11 = (v7 + 2);
  v7[4] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {

    swift_beginAccess();
    v7[4] = a6;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v12 = v7[2];
    v7[2] = 0;
    swift_unknownObjectRelease();
    v7[5] = a3;
    return;
  }

  v13 = sub_22B4C5170();
  v14 = a3;
  v15 = xpc_connection_create((v13 + 32), v14);

  swift_beginAccess();
  v7[4] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v16 = v7[2];
  v7[2] = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7[5] = v14;
  v17 = qword_280C53550;
  v18 = v14;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_22B4C50A0();
  __swift_project_value_buffer(v19, qword_280C53558);
  v20 = sub_22B4C5080();
  v21 = sub_22B4C52D0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22B4AC000, v20, v21, "C.", v22, 2u);
    MEMORY[0x2318939B0](v22, -1, -1);
  }

  if (!*v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = *v11;
  v24 = swift_unknownObjectRetain();
  xpc_connection_set_target_queue(v24, v18);
  swift_unknownObjectRelease();

  v25 = *v11;
  if (!*v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v29[5] = v7;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  v29[2] = sub_22B4B2724;
  v29[3] = &block_descriptor_1;
  v26 = _Block_copy(v29);

  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v25, v26);
  _Block_release(v26);
  swift_unknownObjectRelease();
  v27 = v7[2];
  if (v27)
  {
    v28 = v7[2];
    swift_unknownObjectRetain();

    xpc_connection_activate(v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_22B4C2634(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t), void (*a6)(uint64_t))
{
  swift_allocObject();
  v12 = a5(a1, a2, a3, a4);
  a6(a1);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_22B4C26F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  v9 = a5();
  a6(a1);

  swift_unknownObjectRelease();
  return v9;
}

_xpc_connection_s *XPCConnection.endpoint()()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_endpoint_create(result);
  }

  __break(1u);
  return result;
}

uint64_t XPCConnection.send(_:)()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    swift_unknownObjectRetain();
    v3 = j__swift_unknownObjectRetain();
    xpc_connection_send_message(v2, v3);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B4C2824()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t XPCConnection.auditToken.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    __break(1u);
  }

  xpc_connection_get_audit_token();
  result = 0;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

_xpc_connection_s *XPCConnection.remoteUID.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_connection_get_euid(result);
  }

  __break(1u);
  return result;
}

uint64_t XPCConnection.deinit()
{
  v1 = v0;
  if (qword_280C53550 != -1)
  {
    swift_once();
  }

  v2 = sub_22B4C50A0();
  __swift_project_value_buffer(v2, qword_280C53558);
  v3 = sub_22B4C5080();
  v4 = sub_22B4C52B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4AC000, v3, v4, "connection released", v5, 2u);
    MEMORY[0x2318939B0](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  if (v6)
  {
    xpc_connection_cancel(v6);
    v7 = *(v1 + 16);
  }

  swift_unknownObjectRelease();
  sub_22B4C3400(v1 + 24);

  return v1;
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();

  return swift_deallocClassInstance();
}

void *sub_22B4C2AE0(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v9 = v5[2];
  v5[2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v5[4] = a4;
  swift_unknownObjectWeakAssign();
  v5[5] = a2;
  v10 = qword_280C53550;
  v11 = a2;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_22B4C50A0();
  __swift_project_value_buffer(v12, qword_280C53558);
  v13 = sub_22B4C5080();
  v14 = sub_22B4C52D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22B4AC000, v13, v14, "D.", v15, 2u);
    MEMORY[0x2318939B0](v15, -1, -1);
  }

  xpc_connection_set_target_queue(a1, v11);
  v18[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v18[5] = v5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_22B4B2724;
  v18[3] = &block_descriptor_20;
  v16 = _Block_copy(v18);

  xpc_connection_set_event_handler(a1, v16);
  _Block_release(v16);
  xpc_connection_activate(a1);
  return v5;
}

void *sub_22B4C2CFC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = 0;
  v4[4] = 0;
  swift_unknownObjectWeakInit();
  v7 = a1;
  v8 = xpc_connection_create(0, v7);
  swift_beginAccess();
  v4[4] = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9 = v4[2];
  v4[2] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4[5] = v7;
  v10 = qword_280C53550;
  v11 = v7;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_22B4C50A0();
  __swift_project_value_buffer(v12, qword_280C53558);
  v13 = sub_22B4C5080();
  v14 = sub_22B4C52D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22B4AC000, v13, v14, "A.", v15, 2u);
    MEMORY[0x2318939B0](v15, -1, -1);
  }

  xpc_connection_set_target_queue(v8, v11);
  v18[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v18[5] = v4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_22B4B2724;
  v18[3] = &block_descriptor_17;
  v16 = _Block_copy(v18);

  xpc_connection_set_event_handler(v8, v16);
  _Block_release(v16);
  xpc_connection_activate(v8);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_22B4C2F30(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = v6;
  *(v6 + 16) = 0;
  v11 = (v6 + 16);
  v11[2] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = sub_22B4C5170();
  v14 = a3;

  mach_service = xpc_connection_create_mach_service((v13 + 32), v14, v12);

  swift_beginAccess();
  v11[2] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v16 = *v11;
  *v11 = mach_service;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11[3] = v14;
  v17 = qword_280C53550;
  v18 = v14;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_22B4C50A0();
  __swift_project_value_buffer(v19, qword_280C53558);
  v20 = sub_22B4C5080();
  v21 = sub_22B4C52D0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22B4AC000, v20, v21, "B.", v22, 2u);
    MEMORY[0x2318939B0](v22, -1, -1);
  }

  xpc_connection_set_target_queue(mach_service, v18);
  v25[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v25[5] = v7;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_22B4B2724;
  v25[3] = &block_descriptor_14;
  v23 = _Block_copy(v25);

  xpc_connection_set_event_handler(mach_service, v23);
  _Block_release(v23);
  xpc_connection_activate(mach_service);
  swift_unknownObjectRelease();
  return v7;
}

_xpc_connection_s *sub_22B4C31A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    v10 = xpc_endpoint_create(result);
    v11 = xpc_connection_create_from_endpoint(v10);
    swift_beginAccess();
    v12 = v5[2];
    v5[2] = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v5[4] = a4;
    swift_unknownObjectWeakAssign();
    v5[5] = a2;
    v13 = qword_280C53550;
    v14 = a2;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_22B4C50A0();
    __swift_project_value_buffer(v15, qword_280C53558);
    v16 = sub_22B4C5080();
    v17 = sub_22B4C52D0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22B4AC000, v16, v17, "E.", v18, 2u);
      MEMORY[0x2318939B0](v18, -1, -1);
    }

    xpc_connection_set_target_queue(v11, v14);
    aBlock[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4B2724;
    aBlock[3] = &block_descriptor_11;
    v19 = _Block_copy(aBlock);

    xpc_connection_set_event_handler(v11, v19);
    _Block_release(v19);
    xpc_connection_activate(v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B4C342C()
{
  result = qword_280C52E00;
  if (!qword_280C52E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C52E00);
  }

  return result;
}

uint64_t _s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF_0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    v5 = MEMORY[0x231893D00](a1);
    v6 = XPCTypeError.getter();
    ObjectType = swift_getObjectType();
    if (v5 == v6)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22B4C35C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8238, &qword_22B4C6D50);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8240, &qword_22B4C6D58);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22B4C71F0;
  v4 = (v3 + v2);
  v5 = (v4 + *(v0 + 48));
  *v4 = *MEMORY[0x277D86340];
  v6 = *MEMORY[0x277D86348];
  *v5 = sub_22B4C51A0();
  v5[1] = v7;
  type metadata accessor for XPCObject();
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86330])
  {
    v9 = (v4 + v1);
    v10 = *(v0 + 48);
    *v9 = *MEMORY[0x277D86330];
    *(v9 + v10) = 1;
    result = swift_storeEnumTagMultiPayload();
    if (*MEMORY[0x277D86328])
    {
      v11 = *(v0 + 48);
      v12 = (v4 + 2 * v1);
      *v12 = *MEMORY[0x277D86328];
      *(v12 + v11) = 1;
      swift_storeEnumTagMultiPayload();
      v13 = sub_22B4BE678(v3);
      swift_setDeallocating();
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      static PostInstallActivityConfig.activityFlags = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *PostInstallActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  return &static PostInstallActivityConfig.activityFlags;
}

uint64_t static PostInstallActivityConfig.activityFlags.getter()
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static PostInstallActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PostInstallActivityConfig.activityFlags = a1;
}

uint64_t (*static PostInstallActivityConfig.activityFlags.modify())()
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22B4C3954()
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_22B4C3A24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8238, &qword_22B4C6D50);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8240, &qword_22B4C6D58);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22B4C7250;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = *MEMORY[0x277D86360];
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = *MEMORY[0x277D86250];
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = *MEMORY[0x277D86270];
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = *MEMORY[0x277D86340];
  v12 = *MEMORY[0x277D86348];
  *v11 = sub_22B4C51A0();
  v11[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = (v4 + 4 * v1);
  v15 = *(v0 + 48);
  *v14 = *MEMORY[0x277D86230];
  *(v14 + v15) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86330])
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = *(v0 + 48);
  v18 = (v4 + 5 * v1);
  *v18 = *MEMORY[0x277D86330];
  *(v18 + v17) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86358])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = (v4 + 6 * v1);
  v20 = *(v0 + 48);
  *v19 = *MEMORY[0x277D86358];
  *(v19 + v20) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86268])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = (&v4[v1] - v1);
  v22 = *(v0 + 48);
  *v21 = *MEMORY[0x277D86268];
  *(v21 + v22) = *MEMORY[0x277D862A8];
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86280])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = &v4[v1];
  v24 = (v23 + *(v0 + 48));
  *v23 = *MEMORY[0x277D86280];
  *v24 = 0xD000000000000025;
  v24[1] = 0x800000022B4C77F0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86278])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = (v4 + 9 * v1);
  v26 = *(v0 + 48);
  *v25 = *MEMORY[0x277D86278];
  *(v25 + v26) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86258])
  {
    v27 = *(v0 + 48);
    v28 = (v4 + 10 * v1);
    *v28 = *MEMORY[0x277D86258];
    *(v28 + v27) = 1;
    swift_storeEnumTagMultiPayload();
    v29 = sub_22B4BE678(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static CacheCleanupActivityConfig.activityFlags = v29;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  return &static CacheCleanupActivityConfig.activityFlags;
}

uint64_t static CacheCleanupActivityConfig.activityFlags.getter()
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CacheCleanupActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CacheCleanupActivityConfig.activityFlags = a1;
}

uint64_t (*static CacheCleanupActivityConfig.activityFlags.modify())()
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22B4C3F94()
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_22B4C4058()
{
  v1 = *v0;
  sub_22B4C5490();
  MEMORY[0x231893460](v1);
  return sub_22B4C54D0();
}

uint64_t sub_22B4C40A0()
{
  v1 = *v0;
  sub_22B4C5490();
  MEMORY[0x231893460](v1);
  return sub_22B4C54D0();
}

unint64_t sub_22B4C40E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void XPCMessage.init(fromXPC:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  swift_getObjectType();
  OS_xpc_object.type()();
}

void *sub_22B4C418C(uint64_t a1)
{
  if (a1 != XPCTypeDictionary.getter())
  {
    goto LABEL_2;
  }

  v2 = swift_unknownObjectRetain();
  v3 = XPCDictionary.init(_:)(v2);
  XPCDictionary.subscript.getter(v3, v1);
  swift_unknownObjectRelease();
  v4 = type metadata accessor for XPCObject();
  if ((*(*(v4 - 8) + 48))(v1, 1, v4) == 1)
  {
    swift_unknownObjectRelease();
    sub_22B4C4BB8(v1);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    swift_unknownObjectRelease();
    sub_22B4B0CFC(v1);
    return 0;
  }

  result = v3;
  if (*v1 >= 5uLL)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v43 = type metadata accessor for XPCObject();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v45 = 0;
  v46 = 0xE000000000000000;
  LOBYTE(v44) = a2;
  sub_22B4C5370();
  MEMORY[0x231893130](2683, 0xE200000000000000);
  v42 = a1;
  v12 = XPCDictionary.keys.getter(a1);
  v41 = *(v12 + 16);
  if (!v41)
  {
LABEL_17:

    v35 = sub_22B4C50F0();
    v37 = v36;

    MEMORY[0x231893130](v35, v37);

    MEMORY[0x231893130](125, 0xE100000000000000);
    return v45;
  }

  v13 = 0;
  v40 = (v4 + 48);
  v14 = (v12 + 40);
  v15 = MEMORY[0x277D84F98];
  v39 = v12;
  while (v13 < *(v12 + 16))
  {
    v19 = *(v14 - 1);
    v18 = *v14;

    XPCDictionary.subscript.getter(v42, v11);
    if ((*v40)(v11, 1, v43) == 1)
    {
      goto LABEL_21;
    }

    v20 = v11;
    v21 = v7;
    sub_22B4AF3A0(v11, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v15;
    v23 = sub_22B4AFF74(v19, v18);
    v25 = v15[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v15[3] < v28)
    {
      sub_22B4C463C(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_22B4AFF74(v19, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v34 = v23;
    sub_22B4C4978();
    v23 = v34;
    if (v29)
    {
LABEL_3:
      v16 = v23;

      v15 = v44;
      v17 = v44[7] + *(v4 + 72) * v16;
      v7 = v21;
      sub_22B4C4C20(v21, v17);
      goto LABEL_4;
    }

LABEL_13:
    v15 = v44;
    v44[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v15[6] + 16 * v23);
    *v31 = v19;
    v31[1] = v18;
    v7 = v21;
    sub_22B4AF3A0(v21, v15[7] + *(v4 + 72) * v23);
    v32 = v15[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_20;
    }

    v15[2] = v33;
LABEL_4:
    ++v13;
    v14 += 2;
    v12 = v39;
    v11 = v20;
    if (v41 == v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22B4C5400();
  __break(1u);
  return result;
}

uint64_t sub_22B4C463C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCObject();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82F8, &unk_22B4C73D0);
  v44 = a2;
  result = sub_22B4C53B0();
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
        sub_22B4AF3A0(v31, v45);
      }

      else
      {
        sub_22B4B1564(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_22B4C5490();
      sub_22B4C5180();
      result = sub_22B4C54D0();
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
      result = sub_22B4AF3A0(v45, *(v12 + 56) + v30 * v20);
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

void *sub_22B4C4978()
{
  v1 = v0;
  v2 = type metadata accessor for XPCObject();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82F8, &unk_22B4C73D0);
  v5 = *v0;
  v6 = sub_22B4C53A0();
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
        sub_22B4B1564(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_22B4AF3A0(v26, *(v28 + 56) + v27);
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

unint64_t _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_22B4C4BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B4C4C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B4C4C88()
{
  result = qword_27D8C82F0;
  if (!qword_27D8C82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C82F0);
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

uint64_t sub_22B4C4CF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22B4C4D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}