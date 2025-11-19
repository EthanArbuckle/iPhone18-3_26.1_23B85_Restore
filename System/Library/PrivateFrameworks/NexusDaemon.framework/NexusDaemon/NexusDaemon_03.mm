id sub_25C492FF8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v4 = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServiceIDs] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices] = v4;
  *&v1[OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__sessions] = v4;
  swift_weakAssign();
  v5 = *(a1 + 16);
  *&v1[OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue] = v5;
  v6 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v7 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__environment;
  v8 = sub_25C4C7B30();
  (*(*(v8 - 8) + 16))(&v1[v7], a1 + v6, v8);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = v5;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_25C493104()
{
  if (qword_27FC0B880 != -1)
  {
    swift_once();
  }

  v0 = sub_25C4C7BD0();
  __swift_project_value_buffer(v0, qword_27FC0B888);
  oslog = sub_25C4C7BB0();
  v1 = sub_25C4C8720();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25C452000, oslog, v1, "Activate", v2, 2u);
    MEMORY[0x25F888630](v2, -1, -1);
  }
}

void sub_25C4931EC(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v18(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = Strong;
  v20 = [a1 serviceIdentifier];
  if (!v20)
  {

    return;
  }

  v21 = v20;
  v14 = sub_25C4C8550();
  v17 = v22;

  if (qword_27FC0B880 != -1)
  {
    goto LABEL_16;
  }

LABEL_6:
  v23 = sub_25C4C7BD0();
  __swift_project_value_buffer(v23, qword_27FC0B888);

  v24 = a2;
  v25 = sub_25C4C7BB0();
  v26 = sub_25C4C8720();

  if (!os_log_type_enabled(v25, v26))
  {

    if (a2)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v50 = v24;
  v27 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v52[0] = v49;
  *v27 = 136315650;
  *(v27 + 4) = sub_25C458990(v14, v17, v52);
  *(v27 + 12) = 2080;
  if (!a2)
  {
LABEL_18:

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v47 = v14;
  v48 = a3;
  v28 = v50;
  v29 = [v50 sessionID];

  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = sub_25C4C8550();
  v32 = v31;

  v33 = sub_25C458990(v30, v32, v52);

  *(v27 + 14) = v33;
  *(v27 + 22) = 2080;
  if (!a4)
  {
LABEL_21:
    __break(1u);
    return;
  }

  *(v27 + 24) = sub_25C458990(v48, a4, v52);
  _os_log_impl(&dword_25C452000, v25, v26, "Invite received: serviceID=%s, sessionID=%s, fromID=%s", v27, 0x20u);
  v34 = v49;
  swift_arrayDestroy();
  MEMORY[0x25F888630](v34, -1, -1);
  MEMORY[0x25F888630](v27, -1, -1);

  v14 = v47;
  v24 = v50;
LABEL_13:
  type metadata accessor for NXSessionDaemon(0);
  v35 = v24;

  v36 = sub_25C4946EC(v35, v14, v17, v10);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;
  v39 = &v36[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  *v39 = sub_25C4938BC;
  v39[1] = v38;

  sub_25C45C5F0(v40);

  v42 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__sessions;
  swift_beginAccess();
  v43 = v36;
  v44 = *(v5 + v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v5 + v42);
  *(v5 + v42) = 0x8000000000000000;
  sub_25C48D154(v43, v43, isUniquelyReferenced_nonNull_native);
  *(v5 + v42) = v51;
  swift_endAccess();
  sub_25C497710();
}

unint64_t sub_25C4936C0(uint64_t a1)
{
  result = sub_25C4936E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25C4936E8()
{
  result = qword_27FC0A6C0;
  if (!qword_27FC0A6C0)
  {
    type metadata accessor for NXCloudServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A6C0);
  }

  return result;
}

uint64_t type metadata accessor for NXCloudServer()
{
  result = qword_27FC0B940;
  if (!qword_27FC0B940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C493794()
{
  result = sub_25C4C7B30();
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

uint64_t sub_25C49384C()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C493884()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C4938BC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    sub_25C486EA0(0, v1);
    swift_endAccess();
  }
}

uint64_t sub_25C493948()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B958);
  __swift_project_value_buffer(v0, qword_27FC0B958);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXNANPublisherDarwin.serviceType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NXNANPublisherDarwin.serviceType.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *NXNANPublisherDarwin.__allocating_init(dispatchQueue:)(uint64_t a1)
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = 0;
  result[3] = a1;
  return result;
}

void *NXNANPublisherDarwin.init(dispatchQueue:)(uint64_t a1)
{
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = 0;
  v1[3] = a1;
  return v1;
}

Swift::Void __swiftcall NXNANPublisherDarwin.activate()()
{
  swift_beginAccess();
  if (!v0[2])
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D028A0]) init];
    v2 = v0[2];
    v0[2] = v1;
    v3 = v1;

    [v3 setDispatchQueue_];
    [v3 setControlFlags_];
    swift_beginAccess();
    if (v0[5])
    {
      v4 = v0[4];
      v5 = v0[5];

      v6 = sub_25C4C8540();
    }

    else
    {
      v6 = 0;
    }

    [v3 setServiceType_];

    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v11[4] = sub_25C493D94;
    v11[5] = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_25C45BE80;
    v11[3] = &block_descriptor_4;
    v10 = _Block_copy(v11);

    [v3 activateWithCompletion_];
    _Block_release(v10);
  }
}

uint64_t sub_25C493CE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C493D1C()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C493D54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C493D94(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_6:

    return;
  }

  v8 = v7;
  swift_beginAccess();
  v9 = *(v6 + 16);
  if (!v9 || v8 != v9 || !a1)
  {

    goto LABEL_6;
  }

  v10 = a1;
  if (qword_27FC0B950 != -1)
  {
    swift_once();
  }

  v11 = sub_25C4C7BD0();
  __swift_project_value_buffer(v11, qword_27FC0B958);
  v12 = a1;
  v13 = sub_25C4C7BB0();
  v14 = sub_25C4C8710();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_25C4C8A30();
    v19 = sub_25C458990(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_25C452000, v13, v14, "### NAN setup publisher start failed: error=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25F888630](v16, -1, -1);
    MEMORY[0x25F888630](v15, -1, -1);
  }

  [v8 invalidate];
  v20 = *(v6 + 16);
  *(v6 + 16) = 0;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall NXNANPublisherDarwin.invalidate()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t NXNANPublisherDarwin.deinit()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t NXNANPublisherDarwin.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25C4940A8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_25C4940F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_25C494200()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B978);
  __swift_project_value_buffer(v0, qword_27FC0B978);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

id sub_25C4942D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a3;
  v29 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients] = MEMORY[0x277D84F98];
  v14 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
  *v14 = 0;
  v14[1] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled] = 0;
  v15 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = sub_25C4C7C50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v12, 1, 1, v16);
  v18(v10, 1, 1, v16);
  sub_25C4C7DC0();
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations] = v13;
  v19 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler];
  *v19 = 0;
  v19[1] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_verboseLogging] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsAccount] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState] = 2;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound] = 0;
  v20 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString];
  *v20 = 0;
  v20[1] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
  v21 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID;
  *&v4[v21] = CUNextID64();
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems] = v13;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests] = v13;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream] = 0;
  v22 = v29;
  (*(v17 + 16))(&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint], v29, v16);
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon] = a4;
  v23 = *(a4 + 16);
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue] = v23;
  v24 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID];
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient] = 1;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v26 = v23;
  v27 = objc_msgSendSuper2(&v33, sel_init);
  (*(v17 + 8))(v22, v16);
  return v27;
}

id sub_25C494690(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_25C4B8304(a1, a2);

  return v6;
}

id sub_25C4946EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_25C4B86B8(a1, a2, a3, a4);

  return v10;
}

id sub_25C49475C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v3 = sub_25C4C7BD0();
  __swift_project_value_buffer(v3, qword_27FC0B978);
  v4 = sub_25C4C7BB0();
  v5 = sub_25C4C8700();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25C452000, v4, v5, "deinit", v6, 2u);
    MEMORY[0x25F888630](v6, -1, -1);
  }

  if (*&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection])
  {
    v7 = *&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection];

    sub_25C4C82F0();
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_25C494B98()
{
  v1 = sub_25C4C8170();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
  {
    v6 = *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection);

    sub_25C4C8310();
    v7 = sub_25C4C8110();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
    swift_beginAccess();
    v9 = *(v0 + v8);
    if (v9)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      v10 = v9;
      MEMORY[0x25F887A50](0x203A72656550, 0xE600000000000000);
      v11 = [v10 destination];
      if (v11)
      {
        v12 = v11;
        v13 = sub_25C4C8550();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v18[1] = v13;
      v18[2] = v15;
      sub_25C4C89C0();
    }

    else
    {
      v19 = 0x203A72656550;
      v20 = 0xE600000000000000;
      sub_25C4C7C50();
      sub_25C4B8B3C(&qword_27FC0A480, MEMORY[0x277D35630]);
      v16 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v16);
    }

    return v19;
  }

  return v7;
}

void sub_25C494DD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25C4C84C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  ObjectType = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue];
  *ObjectType = v11;
  (*(v7 + 104))(ObjectType, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_25C4C84E0();
  (*(v7 + 8))(ObjectType, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_12;
  }

  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients;
  swift_beginAccess();
  v14 = *&v3[v13];
  if (*(v14 + 16) && (v15 = sub_25C462F38(a1), (v16 & 1) != 0))
  {
    sub_25C4B8A80(*(v14 + 56) + 16 * v15, &v45);
  }

  else
  {
    v45 = xmmword_25C4CA7C0;
  }

  swift_endAccess();
  v17 = v45;
  sub_25C4666F8(&v45, &unk_27FC0A7A0, &unk_25C4CA828);
  if (v17 == __PAIR128__(1, 0))
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v18 = sub_25C4C7BD0();
    __swift_project_value_buffer(v18, qword_27FC0B978);
    v19 = v3;
    swift_unknownObjectRetain();
    v20 = sub_25C4C7BB0();
    v21 = sub_25C4C8720();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = a2;
      v24 = v23;
      v46[0] = v23;
      *v22 = 136315650;
      v25 = (*(v44 + 16))(ObjectType, v44);
      v27 = sub_25C458990(v25, v26, v46);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      sub_25C4C7C50();
      sub_25C4B8B3C(&qword_27FC0A480, MEMORY[0x277D35630]);
      v28 = sub_25C4C89A0();
      v30 = sub_25C458990(v28, v29, v46);

      *(v22 + 14) = v30;
      *(v22 + 22) = 2048;
      v31 = *(*&v3[v13] + 16);

      *(v22 + 24) = v31;
      _os_log_impl(&dword_25C452000, v20, v21, "Activate for client: new, client=%s, endpoint=%s, clients=%ld", v22, 0x20u);
      swift_arrayDestroy();
      v32 = v24;
      a2 = v44;
      MEMORY[0x25F888630](v32, -1, -1);
      MEMORY[0x25F888630](v22, -1, -1);
    }

    else
    {
    }

    *(&v45 + 1) = 0;
    swift_unknownObjectWeakInit();
    *(&v45 + 1) = a2;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    sub_25C495730(&v45, a1);
    swift_endAccess();
    v41 = *&v19[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon];
    v42 = sub_25C489B00(v19);
    sub_25C495A00(v42);
    return;
  }

  if (qword_27FC0B970 != -1)
  {
    goto LABEL_18;
  }

LABEL_12:
  v33 = sub_25C4C7BD0();
  __swift_project_value_buffer(v33, qword_27FC0B978);
  swift_unknownObjectRetain();
  v34 = sub_25C4C7BB0();
  v35 = sub_25C4C8720();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v46[0] = v37;
    *v36 = 136315138;
    v38 = (*(a2 + 16))(ObjectType, a2);
    v40 = sub_25C458990(v38, v39, v46);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_25C452000, v34, v35, "Activate for client: existing, client=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x25F888630](v37, -1, -1);
    MEMORY[0x25F888630](v36, -1, -1);
  }
}

uint64_t sub_25C495328(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_25C4666F8(a1, &qword_27FC0A900, &qword_25C4CAC90);
    sub_25C4B49E4(a2, v8);
    v14 = sub_25C4C7B20();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_25C4666F8(v8, &qword_27FC0A900, &qword_25C4CAC90);
  }

  else
  {
    sub_25C4BB0E8(a1, v12, type metadata accessor for NXSessionDaemon.OperationItem);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25C4B65AC(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_25C4C7B20();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_25C495548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v5;
    sub_25C4B6794(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    v14 = sub_25C4C7B20();
    result = (*(*(v14 - 8) + 8))(a5, v14);
    *v5 = v32;
  }

  else
  {
    v16 = *v5;
    v17 = sub_25C458F84(a5);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v33 = *v6;
      if (!v21)
      {
        sub_25C4B71C8();
        v22 = v33;
      }

      v23 = *(v22 + 48);
      v24 = sub_25C4C7B20();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);
      v27 = *(v22 + 56) + 32 * v19;
      v28 = *(v27 + 8);
      v29 = *(v27 + 24);

      sub_25C4B5DDC(v19, v22);
      result = (v26)(a5, v24);
      *v6 = v22;
    }

    else
    {
      v30 = sub_25C4C7B20();
      v31 = *(*(v30 - 8) + 8);

      return v31(a5, v30);
    }
  }

  return result;
}

uint64_t sub_25C495730(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_25C4666F8(a1, &unk_27FC0A7A0, &unk_25C4CA828);
    v9 = *v2;
    v10 = sub_25C462F38(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25C4B7474();
        v15 = v17;
      }

      sub_25C4BBBA8(*(v15 + 56) + 16 * v12, &v18);
      sub_25C4B60FC(v12, v15);
      *v3 = v15;
    }

    else
    {
      v18 = xmmword_25C4CA7C0;
    }

    return sub_25C4666F8(&v18, &unk_27FC0A7A0, &unk_25C4CA828);
  }

  else
  {
    sub_25C4BBBA8(a1, &v18);
    v6 = *v2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_25C4B698C(&v18, a2, v7);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_25C495840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_25C4B6AAC(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_25C4C7B20();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_25C458F84(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_25C4B75F0();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_25C4C7B20();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_25C4B628C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_25C4C7B20();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

void sub_25C495A00()
{
  v1 = v0;
  v200 = sub_25C4C82C0();
  v2 = *(v200 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v200);
  v199 = &v171[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v207 = sub_25C4C7C50();
  v5 = *(v207 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v207);
  v198 = &v171[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v206 = &v171[-v9];
  v10 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled;
  v11 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState;
  v212 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError;
  v12 = &v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
  v209 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
  v210 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted;
  v197 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon;
  v13 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted;
  v14 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState;
  v15 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString;
  v201 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint;
  v202 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound;
  v208 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks;
  v195 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient;
  v196 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
  swift_beginAccess();
  v203 = v14;
  swift_beginAccess();
  v204 = v13;
  swift_beginAccess();
  v205 = v12;
  v16 = swift_beginAccess();
  v215 = v10;
  if ((v1[v10] & 1) == 0)
  {
    v214 = 0;
    v186 = &v1[v15];
    v181 = (v2 + 88);
    v180 = *MEMORY[0x277CD8DD0];
    v179 = (v2 + 8);
    v175 = "Non-IDS endpoint";
    v194 = 0x800000025C4D1150;
    v189 = 0x800000025C4D10C0;
    v190 = 0x800000025C4D1130;
    v192 = 0x800000025C4D1170;
    v193 = 0x800000025C4D10A0;
    v185 = (v5 + 16);
    v18 = (v5 + 88);
    v184 = *MEMORY[0x277D35608];
    v183 = (v5 + 8);
    v177 = *MEMORY[0x277D35610];
    v187 = 0x800000025C4D1100;
    v188 = 0x800000025C4D1070;
    *&v17 = 136315394;
    v213 = v17;
    *&v17 = 67109120;
    v182 = v17;
    *&v17 = 136315138;
    v176 = v17;
    v191 = 0x800000025C4D10E0;
    v19 = qword_27FC0AF58 + 168;
    v216 = v11;
    v211 = (v5 + 88);
    while (1)
    {
      v20 = v1[v11];
      switch(v1[v11])
      {
        case 1:
          v52 = v214;
          sub_25C49A890();
          if (v52)
          {
            goto LABEL_75;
          }

          v214 = 0;
          v1[v11] = 2;
LABEL_60:
          v26 = 0x6F637369446E616ELL;
          v27 = 0xEF74696157726576;
          break;
        case 2:
          if (!*&v1[v202])
          {
            goto LABEL_70;
          }

          v1[v11] = 3;
LABEL_50:
          v26 = 0xD000000000000013;
          v27 = v193;
          break;
        case 3:
          v52 = v214;
          sub_25C49B4B4();
          if (v52)
          {
            goto LABEL_75;
          }

          v214 = 0;
          v1[v11] = 4;
LABEL_31:
          v26 = 0xD000000000000012;
          v27 = v189;
          break;
        case 4:
          if (!*(v186 + 1))
          {
            goto LABEL_70;
          }

          goto LABEL_146;
        case 5:
          v52 = v214;
          sub_25C49BDA0();
          if (v52)
          {
            goto LABEL_75;
          }

          v214 = 0;
          v1[v11] = 8;
LABEL_113:
          v26 = 0xD000000000000011;
          v27 = v190;
          break;
        case 6:
          v87 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
          swift_beginAccess();
          v88 = *&v1[v87];
          if (!v88)
          {
            v61 = v20;
            v141 = objc_allocWithZone(sub_25C4C7B80());
            v20 = sub_25C4C7B90();
            swift_willThrow();
            if (v20)
            {
              goto LABEL_78;
            }

            v214 = 0;
LABEL_123:
            LODWORD(v20) = v61;
            v19 = qword_27FC0AF58 + 168;
LABEL_124:
            v1[v11] = 7;
LABEL_125:
            v26 = 0x6973736553736469;
            v27 = 0xEE00746961576E6FLL;
            break;
          }

          v89 = v19[302];
          v90 = v88;
          if (v89 != -1)
          {
            swift_once();
          }

          v91 = sub_25C4C7BD0();
          __swift_project_value_buffer(v91, qword_27FC0B978);
          v58 = v90;
          v92 = sub_25C4C7BB0();
          v93 = sub_25C4C8720();
          if (os_log_type_enabled(v92, v93))
          {
            LODWORD(v178) = v93;
            v61 = v20;
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v217 = v95;
            *v94 = v213;
            v96 = [v58 sessionID];

            if (!v96)
            {
              goto LABEL_198;
            }

            v97 = sub_25C4C8550();
            v99 = v98;

            v100 = sub_25C458990(v97, v99, &v217);

            *(v94 + 4) = v100;
            *(v94 + 12) = 2080;
            v101 = [v58 destination];

            if (!v101)
            {
              goto LABEL_197;
            }

            v102 = sub_25C4C8550();
            v104 = v103;

            v105 = sub_25C458990(v102, v104, &v217);

            *(v94 + 14) = v105;
            _os_log_impl(&dword_25C452000, v92, v178, "IDS server session start: sessionID=%s, peerID=%s", v94, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v95, -1, -1);
            MEMORY[0x25F888630](v94, -1, -1);

            v11 = v216;
            v18 = v211;
          }

          else
          {
            v61 = v20;
          }

          [v58 setDelegate:v1 queue:*&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue]];
          [v58 acceptInvitation];

          v20 = v214;
          if (!v214)
          {
            goto LABEL_123;
          }

          goto LABEL_78;
        case 7:
          if (v1[v204] != 1)
          {
            goto LABEL_125;
          }

          v1[v11] = 10;
LABEL_95:
          v26 = 0xD000000000000012;
          v27 = v192;
          break;
        case 8:
          v53 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
          swift_beginAccess();
          v54 = *&v1[v53];
          if (!v54)
          {
            v61 = v20;
            v139 = objc_allocWithZone(sub_25C4C7B80());
            v20 = sub_25C4C7B90();
            swift_willThrow();
            v140 = v20;
            if (v20)
            {
              goto LABEL_78;
            }

LABEL_119:
            v214 = v140;
            v1[v11] = 9;
            LODWORD(v20) = v61;
            v19 = qword_27FC0AF58 + 168;
LABEL_120:
            v26 = 0xD000000000000011;
            v27 = v194;
            break;
          }

          v55 = v19[302];
          v56 = v54;
          if (v55 != -1)
          {
            swift_once();
          }

          v57 = sub_25C4C7BD0();
          __swift_project_value_buffer(v57, qword_27FC0B978);
          v58 = v56;
          v59 = sub_25C4C7BB0();
          v60 = sub_25C4C8720();
          if (os_log_type_enabled(v59, v60))
          {
            LODWORD(v178) = v60;
            v61 = v20;
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v217 = v63;
            *v62 = v213;
            v64 = [v58 sessionID];

            if (!v64)
            {
              goto LABEL_196;
            }

            v65 = sub_25C4C8550();
            v67 = v66;

            v68 = sub_25C458990(v65, v67, &v217);

            *(v62 + 4) = v68;
            *(v62 + 12) = 2080;
            v69 = [v58 destination];

            if (!v69)
            {
              __break(1u);
LABEL_196:

              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:

              __break(1u);
              JUMPOUT(0x25C497620);
            }

            v70 = sub_25C4C8550();
            v72 = v71;

            v73 = sub_25C458990(v70, v72, &v217);

            *(v62 + 14) = v73;
            _os_log_impl(&dword_25C452000, v59, v178, "IDS send invitation: sessionID=%s, destination=%s", v62, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v63, -1, -1);
            MEMORY[0x25F888630](v62, -1, -1);

            v11 = v216;
            v18 = v211;
          }

          else
          {
            v61 = v20;
          }

          [v58 sendInvitation];

          v140 = v214;
          v20 = v214;
          if (!v214)
          {
            goto LABEL_119;
          }

          goto LABEL_78;
        case 9:
          v126 = v1[v203];
          if (v126 == 2)
          {
            goto LABEL_120;
          }

          if (v126)
          {
            goto LABEL_124;
          }

          if (v19[302] != -1)
          {
            swift_once();
          }

          v127 = sub_25C4C7BD0();
          __swift_project_value_buffer(v127, qword_27FC0B978);
          v128 = sub_25C4C7BB0();
          v129 = sub_25C4C8710();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 0;
            _os_log_impl(&dword_25C452000, v128, v129, "### IDS invitation failed", v130, 2u);
            MEMORY[0x25F888630](v130, -1, -1);
          }

          goto LABEL_84;
        case 0xA:
          v38 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
          swift_beginAccess();
          v39 = *&v1[v38];
          if (!v39 || (v40 = [v39 socket], (v40 & 0x80000000) != 0))
          {
            v61 = v20;
            v136 = objc_allocWithZone(sub_25C4C7B80());
            v20 = sub_25C4C7B90();
            swift_willThrow();
            if (v20)
            {
              goto LABEL_78;
            }

            v214 = 0;
            v18 = v211;
LABEL_145:
            LODWORD(v20) = v61;
            v19 = &qword_27FC0AF58[21];
            goto LABEL_146;
          }

          v41 = v40;
          nw_connection_create_with_connected_socket();
          if (v19[302] != -1)
          {
            swift_once();
          }

          v42 = sub_25C4C7BD0();
          __swift_project_value_buffer(v42, qword_27FC0B978);
          v43 = v1;
          v44 = sub_25C4C7BB0();
          v45 = sub_25C4C8720();
          v174 = v43;

          if (os_log_type_enabled(v44, v45))
          {
            v178 = v20;
            v20 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v217 = v173;
            *v20 = v213;
            v46 = *&v1[v38];
            if (v46)
            {
              v172 = v45;
              v47 = [v46 sessionID];
              if (v47)
              {
                v48 = v47;
                v49 = sub_25C4C8550();
                v51 = v50;
              }

              else
              {
                v51 = 0xE300000000000000;
                v49 = 7104878;
              }

              LOBYTE(v45) = v172;
            }

            else
            {
              v51 = 0xE300000000000000;
              v49 = 7104878;
            }

            v142 = sub_25C458990(v49, v51, &v217);

            *(v20 + 4) = v142;
            *(v20 + 12) = 1024;
            *(v20 + 14) = v41;
            _os_log_impl(&dword_25C452000, v44, v45, "IDS setup connection: sessionID=%s, fd=%d", v20, 0x12u);
            v143 = v173;
            __swift_destroy_boxed_opaque_existential_0(v173);
            MEMORY[0x25F888630](v143, -1, -1);
            MEMORY[0x25F888630](v20, -1, -1);

            LODWORD(v20) = v178;
          }

          else
          {
          }

          sub_25C4C8320();
          v144 = swift_unknownObjectRetain();
          v145 = MEMORY[0x25F8877F0](v144);
          v18 = v211;
          if (!v145)
          {
            v61 = v20;
            v151 = objc_allocWithZone(sub_25C4C7B80());
            v20 = sub_25C4C7B90();
            swift_willThrow();
            swift_unknownObjectRelease();
            if (v20)
            {
              goto LABEL_78;
            }

            v214 = 0;
            goto LABEL_145;
          }

          v146 = v145;
          v61 = v20;
          v147 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
          v148 = v174;
          if (*&v174[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection])
          {
            v149 = *&v174[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection];

            sub_25C4C82F0();
          }

          swift_unknownObjectRelease();
          v150 = *&v148[v147];
          *&v148[v147] = v146;

          v20 = v214;
          if (!v214)
          {
            goto LABEL_145;
          }

LABEL_78:
          v214 = 0;
          if (qword_27FC0B970 != -1)
          {
            swift_once();
          }

          v113 = sub_25C4C7BD0();
          __swift_project_value_buffer(v113, qword_27FC0B978);
          v114 = v20;
          v115 = sub_25C4C7BB0();
          v116 = sub_25C4C8710();

          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v217 = v118;
            *v117 = v213;
            v119 = sub_25C49A3EC(v61);
            v121 = sub_25C458990(v119, v120, &v217);

            *(v117 + 4) = v121;
            *(v117 + 12) = 2080;
            swift_getErrorValue();
            v122 = sub_25C4C8A30();
            v124 = sub_25C458990(v122, v123, &v217);

            *(v117 + 14) = v124;
            v11 = v216;
            _os_log_impl(&dword_25C452000, v115, v116, "### Run error: state=%s, error=%s", v117, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v118, -1, -1);
            MEMORY[0x25F888630](v117, -1, -1);
            v125 = v20;
            LODWORD(v20) = v61;

            v18 = v211;
          }

          else
          {

            v18 = v211;
            LODWORD(v20) = v61;
          }

          v19 = qword_27FC0AF58 + 168;
LABEL_84:
          v1[v11] = 18;
LABEL_85:
          v27 = 0xE500000000000000;
          v26 = 0x726F727265;
          break;
        case 0xB:
          v52 = v214;
          sub_25C49C57C();
          if (v52)
          {
LABEL_75:
            v61 = v20;
            v20 = v52;
            goto LABEL_78;
          }

          v214 = 0;
          v1[v11] = 12;
LABEL_34:
          v26 = 0x577463656E6E6F63;
          v27 = 0xEB00000000746961;
          break;
        case 0xC:
          if (!*&v1[v209])
          {
            goto LABEL_70;
          }

          v106 = *&v1[v209];

          v107 = v199;
          sub_25C4C82E0();

          v108 = v200;
          v109 = (*v181)(v107, v200);
          (*v179)(v107, v108);
          if (v109 != v180)
          {
            goto LABEL_70;
          }

          v110 = *&v1[v197];
          v111 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired;
          swift_beginAccess();
          if (*(v110 + v111) == 1)
          {
            if (v1[v195] == 1)
            {
              v1[v11] = 13;
LABEL_133:
              v26 = 0x6972655672696170;
              v27 = 0xEF74726174537966;
            }

            else
            {
LABEL_19:
              v1[v11] = 14;
LABEL_20:
              v27 = 0xEE00746961577966;
              v26 = 0x6972655672696170;
            }
          }

          else
          {
LABEL_72:
            v1[v11] = 17;
LABEL_73:
            v27 = 0xE500000000000000;
            v26 = 0x7964616572;
          }

          break;
        case 0xD:
          if (v19[302] != -1)
          {
            swift_once();
          }

          v33 = sub_25C4C7BD0();
          __swift_project_value_buffer(v33, qword_27FC0B978);
          v34 = sub_25C4C7BB0();
          v35 = sub_25C4C8720();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = v182;
            _os_log_impl(&dword_25C452000, v34, v35, "Pairing start: setup=%{BOOL}d", v36, 8u);
            MEMORY[0x25F888630](v36, -1, -1);
          }

          v37 = *&v1[v212];
          *&v1[v212] = 0;

          v1[v210] = 0;
          *&v1[v208] = mach_absolute_time();
          sub_25C4B3058(0);
          goto LABEL_19;
        case 0xE:
          if (v1[v210])
          {
            goto LABEL_72;
          }

          v61 = v1[v11];
          v74 = *&v1[v212];
          if (!v74)
          {
            goto LABEL_115;
          }

          v75 = v74;
          if (qword_27FC0B970 != -1)
          {
            swift_once();
          }

          v76 = sub_25C4C7BD0();
          __swift_project_value_buffer(v76, qword_27FC0B978);
          v77 = v74;
          v78 = sub_25C4C7BB0();
          v79 = sub_25C4C8720();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v217 = v81;
            *v80 = v176;
            swift_getErrorValue();
            v82 = sub_25C4C8A30();
            v84 = sub_25C458990(v82, v83, &v217);

            *(v80 + 4) = v84;
            _os_log_impl(&dword_25C452000, v78, v79, "PairVerify failed: error=%s", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v81);
            v85 = v81;
            v11 = v216;
            MEMORY[0x25F888630](v85, -1, -1);
            v86 = v80;
            v18 = v211;
            MEMORY[0x25F888630](v86, -1, -1);
          }

          else
          {
          }

          LODWORD(v20) = v61;
          v1[v11] = 15;
          v19 = qword_27FC0AF58 + 168;
LABEL_132:
          v26 = 0x7574655372696170;
          v27 = 0xEE00747261745370;
          break;
        case 0xF:
          if (v19[302] != -1)
          {
            swift_once();
          }

          v28 = sub_25C4C7BD0();
          __swift_project_value_buffer(v28, qword_27FC0B978);
          v29 = sub_25C4C7BB0();
          v30 = sub_25C4C8720();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = v182;
            *(v31 + 4) = 1;
            _os_log_impl(&dword_25C452000, v29, v30, "Pairing start: setup=%{BOOL}d", v31, 8u);
            MEMORY[0x25F888630](v31, -1, -1);
          }

          v32 = *&v1[v212];
          *&v1[v212] = 0;

          v1[v210] = 0;
          *&v1[v208] = mach_absolute_time();
          sub_25C4B3058(1);
          v1[v11] = 16;
LABEL_13:
          v26 = 0x7574655372696170;
          v27 = 0xED00007469615770;
          break;
        case 0x10:
          if (v1[v210])
          {
            goto LABEL_72;
          }

LABEL_70:
          v61 = v20;
          v20 = *&v1[v212];
          if (!v20)
          {
            goto LABEL_115;
          }

          goto LABEL_77;
        case 0x11:
          v61 = v1[v11];
          v20 = *&v1[v212];
          if (v20)
          {
LABEL_77:
            swift_willThrow();
            v112 = v20;
            goto LABEL_78;
          }

          sub_25C49CF5C();
LABEL_115:
          v27 = 0xEA0000000000657ALL;
          LODWORD(v20) = v61;
          v26 = 0x696C616974696E69;
          v19 = qword_27FC0AF58 + 168;
          switch(v1[v11])
          {
            case 1:
              goto LABEL_116;
            case 2:
              goto LABEL_60;
            case 3:
              goto LABEL_50;
            case 4:
              goto LABEL_31;
            case 5:
              goto LABEL_7;
            case 6:
              goto LABEL_128;
            case 7:
              goto LABEL_125;
            case 8:
              goto LABEL_113;
            case 9:
              goto LABEL_120;
            case 0xA:
              goto LABEL_95;
            case 0xB:
              goto LABEL_147;
            case 0xC:
              goto LABEL_34;
            case 0xD:
              goto LABEL_133;
            case 0xE:
              goto LABEL_20;
            case 0xF:
              goto LABEL_132;
            case 0x10:
              goto LABEL_13;
            case 0x11:
              goto LABEL_73;
            case 0x12:
              goto LABEL_85;
            case 0x13:
              goto LABEL_103;
            default:
              goto LABEL_148;
          }

          break;
        case 0x12:
          if (!*&v1[v212])
          {
            v131 = objc_allocWithZone(sub_25C4C7B80());
          }

          v132 = *v205;
          if (*v205)
          {
            v133 = *(v205 + 1);

            v132(v134);
            v16 = sub_25C45A2C8(v132);
          }

          if (*&v1[v209])
          {
            v135 = *&v1[v209];

            sub_25C4C82F0();
          }

          sub_25C497DF8(v16);
          v1[v11] = 19;
          goto LABEL_103;
        case 0x13:
LABEL_103:
          v26 = 0x696157726F727265;
          v27 = 0xE900000000000074;
          break;
        default:
          v178 = v1[v11];
          v21 = v201;
          v23 = v206;
          v22 = v207;
          v174 = *v185;
          (v174)(v206, &v1[v201], v207);
          v173 = *v18;
          v24 = (v173)(v23, v22);
          v25 = *v183;
          (*v183)(v23, v22);
          if (v24 == v184)
          {
            v11 = v216;
            v1[v216] = 5;
            v19 = qword_27FC0AF58 + 168;
            LODWORD(v20) = v178;
LABEL_7:
            v26 = 0xD000000000000015;
            v27 = v191;
          }

          else
          {
            v137 = v198;
            (v174)(v198, &v1[v21], v22);
            v138 = (v173)(v137, v22);
            v25(v137, v22);
            if (v138 == v177)
            {
              v11 = v216;
              v1[v216] = 1;
              v19 = qword_27FC0AF58 + 168;
              LODWORD(v20) = v178;
LABEL_116:
              v26 = 0xD000000000000010;
              v27 = v188;
            }

            else
            {
              v11 = v216;
              v19 = qword_27FC0AF58 + 168;
              LODWORD(v20) = v178;
              if (*&v1[v196])
              {
                v1[v216] = 6;
LABEL_128:
                v26 = 0xD000000000000015;
                v27 = v187;
              }

              else
              {
LABEL_146:
                v1[v11] = 11;
LABEL_147:
                v26 = 0x537463656E6E6F63;
                v27 = 0xEC00000074726174;
              }
            }
          }

          break;
      }

LABEL_148:
      v152 = 0x696C616974696E69;
      v153 = 0xEA0000000000657ALL;
      switch(v20)
      {
        case 0:
          goto LABEL_184;
        case 1:
          v153 = v188;
          if (v26 != 0xD000000000000010)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 2:
          v154 = 0x6F637369446E616ELL;
          v155 = 0x696157726576;
          goto LABEL_175;
        case 3:
          v153 = v193;
          if (v26 != 0xD000000000000013)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 4:
          v153 = v189;
          if (v26 != 0xD000000000000012)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 5:
          v153 = v191;
          if (v26 != 0xD000000000000015)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 6:
          v153 = v187;
          if (v26 != 0xD000000000000015)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 7:
          v156 = 0x6973736553736469;
          v157 = 0x746961576E6FLL;
          goto LABEL_168;
        case 8:
          v152 = 0xD000000000000011;
          v153 = v190;
LABEL_184:
          if (v26 == v152)
          {
            goto LABEL_185;
          }

          goto LABEL_186;
        case 9:
          v153 = v194;
          if (v26 != 0xD000000000000011)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 10:
          v153 = v192;
          if (v26 != 0xD000000000000012)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 11:
          v153 = 0xEC00000074726174;
          if (v26 != 0x537463656E6E6F63)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 12:
          v153 = 0xEB00000000746961;
          if (v26 != 0x577463656E6E6F63)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 13:
          v154 = 0x6972655672696170;
          v155 = 0x726174537966;
LABEL_175:
          v153 = v155 & 0xFFFFFFFFFFFFLL | 0xEF74000000000000;
          if (v26 != v154)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 14:
          v153 = 0xEE00746961577966;
          if (v26 != 0x6972655672696170)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 15:
          v156 = 0x7574655372696170;
          v157 = 0x747261745370;
LABEL_168:
          v153 = v157 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v26 != v156)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 16:
          v153 = 0xED00007469615770;
          if (v26 != 0x7574655372696170)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 17:
          v153 = 0xE500000000000000;
          if (v26 != 0x7964616572)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 18:
          v153 = 0xE500000000000000;
          if (v26 != 0x726F727265)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 19:
          v153 = 0xE900000000000074;
          if (v26 != 0x696157726F727265)
          {
            goto LABEL_186;
          }

LABEL_185:
          if (v27 == v153)
          {

            return;
          }

LABEL_186:
          v158 = sub_25C4C89E0();

          if (v158)
          {
            return;
          }

          if (v19[302] != -1)
          {
            swift_once();
          }

          v159 = sub_25C4C7BD0();
          __swift_project_value_buffer(v159, qword_27FC0B978);
          v160 = v1;
          v161 = sub_25C4C7BB0();
          v162 = sub_25C4C8720();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v217 = v164;
            *v163 = v213;
            v165 = sub_25C49A3EC(v20);
            v167 = sub_25C458990(v165, v166, &v217);

            *(v163 + 4) = v167;
            *(v163 + 12) = 2080;
            v168 = sub_25C49A3EC(v1[v216]);
            v170 = sub_25C458990(v168, v169, &v217);
            v11 = v216;

            *(v163 + 14) = v170;
            v19 = qword_27FC0AF58 + 168;
            _os_log_impl(&dword_25C452000, v161, v162, "Session state changed: %s -> %s", v163, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v164, -1, -1);
            MEMORY[0x25F888630](v163, -1, -1);
          }

          if (v1[v215] == 1)
          {
            return;
          }

          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

uint64_t sub_25C497730(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C8470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25C4C8490();
  v13 = *(v26 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v26);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v19 = (*(a2 + 16))(ObjectType, a2);
  v20 = v18;
  if (a3)
  {
    sub_25C497A88(a1, v19, v18);
  }

  else
  {
    v25[1] = *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue];
    v22 = swift_allocObject();
    v22[2] = v4;
    v22[3] = a1;
    v22[4] = v19;
    v22[5] = v20;
    aBlock[4] = sub_25C4B8AF8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C4676B4;
    aBlock[3] = &block_descriptor_5;
    v23 = _Block_copy(aBlock);
    v24 = v4;
    sub_25C4C8480();
    v27 = MEMORY[0x277D84F90];
    sub_25C4B8B3C(&unk_27FC0A180, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
    sub_25C4BC1E8(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0);
    sub_25C4C8800();
    MEMORY[0x25F887C10](0, v16, v12, v23);
    _Block_release(v23);
    (*(v9 + 8))(v12, v8);
    (*(v13 + 8))(v16, v26);
  }
}

void sub_25C497A88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_25C4C84C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_25C4C84E0();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_25C4C7BD0();
  __swift_project_value_buffer(v14, qword_27FC0B978);
  v15 = v3;

  v16 = sub_25C4C7BB0();
  v17 = sub_25C4C8720();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_25C458990(a2, a3, v27);
    *(v18 + 12) = 2080;
    sub_25C4C7C50();
    sub_25C4B8B3C(&qword_27FC0A480, MEMORY[0x277D35630]);
    v20 = sub_25C4C89A0();
    v22 = sub_25C458990(v20, v21, v27);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2048;
    v23 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients;
    swift_beginAccess();
    v24 = *(*&v15[v23] + 16);

    *(v18 + 24) = v24;
    _os_log_impl(&dword_25C452000, v16, v17, "Invalidate for client: client=%s, endpoint=%s, clients=%ld", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v19, -1, -1);
    MEMORY[0x25F888630](v18, -1, -1);
  }

  else
  {
  }

  v28 = xmmword_25C4CA7C0;
  v25 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients;
  swift_beginAccess();
  sub_25C495730(&v28, a1);
  swift_endAccess();
  if (!*(*&v15[v25] + 16))
  {
    sub_25C497DF8();
  }
}

void sub_25C497DF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled;
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled))
  {

    sub_25C4984E4();
  }

  else
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v3 = sub_25C4C7BD0();
    __swift_project_value_buffer(v3, qword_27FC0B978);
    v4 = sub_25C4C7BB0();
    v5 = sub_25C4C8720();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_25C452000, v4, v5, "Invalidate core", v6, 2u);
      MEMORY[0x25F888630](v6, -1, -1);
    }

    *(v1 + v2) = 1;
    v7 = (v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler);
    swift_beginAccess();
    v8 = *v7;
    v9 = v7[1];
    *v7 = 0;
    v7[1] = 0;
    sub_25C45A2C8(v8);
    v10 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon);
    sub_25C489BA8(v1);
    v11 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsAccount;
    swift_beginAccess();
    v12 = *(v1 + v11);
    *(v1 + v11) = 0;

    v13 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState;
    swift_beginAccess();
    *(v1 + v13) = 2;
    v14 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
    swift_beginAccess();
    v15 = *(v1 + v14);
    if (v15)
    {
      [v15 endSession];
      v16 = *(v1 + v14);
    }

    else
    {
      v16 = 0;
    }

    *(v1 + v14) = 0;

    v17 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted;
    swift_beginAccess();
    *(v1 + v17) = 0;
    v18 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService;
    swift_beginAccess();
    v19 = *(v1 + v18);
    *(v1 + v18) = 0;

    v20 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession;
    v21 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession);
    if (v21)
    {
      [v21 invalidate];
      v22 = *(v1 + v20);
    }

    else
    {
      v22 = 0;
    }

    *(v1 + v20) = 0;

    v23 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer;
    if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer))
    {
      v24 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25C4C8790();
      swift_unknownObjectRelease();
      v25 = *(v1 + v23);
    }

    *(v1 + v23) = 0;
    swift_unknownObjectRelease();
    v26 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer;
    if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer))
    {
      v27 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25C4C8790();
      swift_unknownObjectRelease();
      v28 = *(v1 + v26);
    }

    *(v1 + v26) = 0;
    swift_unknownObjectRelease();
    v29 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber;
    v30 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber);
    if (v30)
    {
      [v30 invalidate];
      v31 = *(v1 + v29);
    }

    else
    {
      v31 = 0;
    }

    *(v1 + v29) = 0;

    v32 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser;
    v33 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser);
    if (v33)
    {
      [v33 invalidate];
      v34 = *(v1 + v32);
    }

    else
    {
      v34 = 0;
    }

    *(v1 + v32) = 0;

    if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
    {
      v35 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection);

      sub_25C4C82F0();
    }

    v36 = sub_25C4C7B80();
    v37 = objc_allocWithZone(v36);
    v38 = sub_25C4C7B90();
    sub_25C4986EC(v38);
    sub_25C4B9614();
    sub_25C498FAC(v38);
    v39 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession;
    v40 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
    if (v40)
    {
      [v40 invalidate];
      v41 = *(v1 + v39);
    }

    else
    {
      v41 = 0;
    }

    *(v1 + v39) = 0;

    v42 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream);
    *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream) = 0;

    if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) == 1)
    {
      v43 = objc_allocWithZone(v36);
      v44 = sub_25C4C7B90();
      sub_25C4B3E60(0, v44);
    }

    sub_25C4984E4();
  }
}

uint64_t sub_25C498294(const char *a1, uint64_t (*a2)(void))
{
  v5 = sub_25C4C84C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue];
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_25C4C84E0();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_25C4C7BD0();
  __swift_project_value_buffer(v12, qword_27FC0B978);
  v13 = v2;
  v14 = sub_25C4C7BB0();
  v15 = sub_25C4C8720();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    v18 = sub_25C494B98();
    v20 = sub_25C458990(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_25C452000, v14, v15, a1, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25F888630](v17, -1, -1);
    MEMORY[0x25F888630](v16, -1, -1);
  }

  return a2();
}

void sub_25C4984E4()
{
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled) == 1)
  {
    v1 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
    swift_beginAccess();
    if (!*(v0 + v1))
    {
      v2 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
      swift_beginAccess();
      if (!*(*(v0 + v2) + 16) && !*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
      {
        v3 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
        swift_beginAccess();
        if (!*(*(v0 + v3) + 16))
        {
          v4 = v0;
          v5 = (v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler);
          swift_beginAccess();
          v6 = *v5;
          v7 = v5[1];
          *v5 = 0;
          v5[1] = 0;
          sub_25C45A2C8(v6);
          if (qword_27FC0B970 != -1)
          {
            swift_once();
          }

          v8 = sub_25C4C7BD0();
          __swift_project_value_buffer(v8, qword_27FC0B978);
          v9 = sub_25C4C7BB0();
          v10 = sub_25C4C8720();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_25C452000, v9, v10, "Invalidated", v11, 2u);
            MEMORY[0x25F888630](v11, -1, -1);
          }

          v12 = (v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler);
          swift_beginAccess();
          v13 = *v12;
          if (*v12)
          {
            v14 = v12[1];

            v13(v15);
            sub_25C45A2C8(v13);
            v16 = *v12;
          }

          else
          {
            v16 = 0;
          }

          v17 = v12[1];
          *v12 = 0;
          v12[1] = 0;
          sub_25C45A2C8(v16);
        }
      }
    }
  }
}

uint64_t sub_25C4986EC(uint64_t a1)
{
  v95 = a1;
  v87 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v83 = *(v87 - 8);
  v2 = *(v83 + 64);
  MEMORY[0x28223BE20](v87);
  v82 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9A0, &qword_25C4CACF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v78 - v9;
  v97 = sub_25C4C7B20();
  v10 = *(v97 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v97);
  v90 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9A8, &qword_25C4CACF8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v78 - v18;
  v20 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests;
  swift_beginAccess();
  v79 = v1;
  v78 = v20;
  v21 = *(v1 + v20);
  v22 = *(v21 + 64);
  v81 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v80 = (v23 + 63) >> 6;
  v88 = v10 + 32;
  v89 = v10 + 16;
  v91 = v10;
  v94 = (v10 + 8);
  v86 = v21;

  v27 = 0;
  v92 = v8;
  v85 = v19;
  if (!v25)
  {
LABEL_5:
    if (v80 <= v27 + 1)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = v80;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v80)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B0, &qword_25C4CAD00);
        (*(*(v47 - 8) + 56))(v17, 1, 1, v47);
        v25 = 0;
        goto LABEL_13;
      }

      v25 = *(v81 + 8 * v28);
      ++v27;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  while (1)
  {
    v28 = v27;
LABEL_12:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = v31 | (v28 << 6);
    v33 = v86;
    v35 = v90;
    v34 = v91;
    v36 = v97;
    (*(v91 + 16))(v90, *(v86 + 48) + *(v91 + 72) * v32, v97);
    v37 = *(v33 + 56) + 32 * v32;
    v93 = *v37;
    v38 = *(v37 + 24);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B0, &qword_25C4CAD00);
    v40 = v17;
    v41 = &v17[*(v39 + 48)];
    v42 = *(v34 + 32);
    v96 = *(v37 + 8);
    v42(v40, v35, v36);
    *v41 = v93;
    *(v41 + 8) = v96;
    *(v41 + 3) = v38;
    v17 = v40;
    (*(*(v39 - 8) + 56))(v40, 0, 1, v39);

    v30 = v28;
    v8 = v92;
    v19 = v85;
LABEL_13:
    sub_25C465DA4(v17, v19, &qword_27FC0A9A8, &qword_25C4CACF8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B0, &qword_25C4CAD00);
    if ((*(*(v43 - 8) + 48))(v19, 1, v43) == 1)
    {
      break;
    }

    v44 = &v19[*(v43 + 48)];
    v45 = *(v44 + 1);
    v46 = *(v44 + 3);
    (*(v44 + 2))(v95, 0, 1);

    result = (*v94)(v19, v97);
    v27 = v30;
    if (!v25)
    {
      goto LABEL_5;
    }
  }

  v48 = v79;
  v49 = *(v79 + v78);
  *(v79 + v78) = MEMORY[0x277D84F98];

  v50 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems;
  swift_beginAccess();
  v51 = *(v48 + v50);
  v52 = *(v51 + 64);
  v93 = v51 + 64;
  v53 = 1 << *(v51 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v52;
  v85 = v50;
  v86 = (v53 + 63) >> 6;
  *&v96 = v51;

  v56 = 0;
  v57 = v84;
  if (!v55)
  {
LABEL_21:
    if (v86 <= v56 + 1)
    {
      v59 = v56 + 1;
    }

    else
    {
      v59 = v86;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_35;
      }

      if (v58 >= v86)
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B8, &qword_25C4CAD08);
        (*(*(v76 - 8) + 56))(v8, 1, 1, v76);
        v55 = 0;
        goto LABEL_29;
      }

      v55 = *(v93 + 8 * v58);
      ++v56;
      if (v55)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v58 = v56;
LABEL_28:
    v61 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v62 = v61 | (v58 << 6);
    v63 = v96;
    v64 = v90;
    v65 = v91;
    v66 = v97;
    (*(v91 + 16))(v90, *(v96 + 48) + *(v91 + 72) * v62, v97);
    v67 = v82;
    sub_25C4BACD0(*(v63 + 56) + *(v83 + 72) * v62, v82, type metadata accessor for NXSessionDaemon.OperationItem);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B8, &qword_25C4CAD08);
    v69 = *(v68 + 48);
    v70 = *(v65 + 32);
    v8 = v92;
    v70(v92, v64, v66);
    sub_25C4BB0E8(v67, &v8[v69], type metadata accessor for NXSessionDaemon.OperationItem);
    (*(*(v68 - 8) + 56))(v8, 0, 1, v68);
    v60 = v58;
    v57 = v84;
LABEL_29:
    sub_25C465DA4(v8, v57, &qword_27FC0A9A0, &qword_25C4CACF0);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B8, &qword_25C4CAD08);
    if ((*(*(v71 - 8) + 48))(v57, 1, v71) == 1)
    {
      break;
    }

    v72 = v57 + *(v71 + 48);
    v73 = v72 + *(v87 + 28);
    v75 = *v73;
    v74 = *(v73 + 8);

    sub_25C4BAF14(v72, type metadata accessor for NXSessionDaemon.OperationItem);
    v75(v95);

    result = (*v94)(v57, v97);
    v56 = v60;
    if (!v55)
    {
      goto LABEL_21;
    }
  }

  v77 = *&v85[v79];
  *&v85[v79] = MEMORY[0x277D84F98];
}

uint64_t sub_25C498FAC(void *a1)
{
  v164 = a1;
  v2 = sub_25C4C7B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v144 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v144 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v156 = v144 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v162 = v144 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v155 = v144 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v163 = v144 - v21;
  MEMORY[0x28223BE20](v20);
  v154 = v144 - v22;
  v166 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v23 = *(v166 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v166);
  v26 = v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
  swift_beginAccess();
  v148 = v27;
  v28 = *(v1 + v27);
  v29 = *(v28 + 16);
  if (!v29)
  {
    v141 = v148;
    goto LABEL_58;
  }

  v151 = v7;
  v145 = v1;
  v30 = v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v165 = *(v23 + 72);
  v160 = (v3 + 32);
  v159 = (v3 + 16);
  v167 = (v3 + 8);
  v144[1] = v28;

  *&v31 = 136315650;
  v150 = v31;
  *&v31 = 136315394;
  v149 = v31;
  v157 = v2;
  v161 = v10;
  v158 = v13;
  v32 = v162;
  v33 = v163;
  do
  {
    sub_25C4BACD0(v30, v26, type metadata accessor for NXSessionDaemon.SendItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload != 5)
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D8, &qword_25C4CA850);
          v35 = v34[12];
          v36 = v34[16];
          v37 = &v26[v34[20]];
          v38 = *(v37 + 1);
          (*v37)(v164);

          v39 = sub_25C4C7E50();
          v40 = &v26[v36];
          v32 = v162;
          (*(*(v39 - 8) + 8))(v40, v39);
          (*v167)(&v26[v35], v2);
          goto LABEL_4;
        }

        v67 = *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48)];
        v68 = v156;
        (*v160)(v156, v26, v2);
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v69 = sub_25C4C7BD0();
        __swift_project_value_buffer(v69, qword_27FC0B978);
        (*v159)(v13, v68, v2);
        v70 = v67;
        v71 = sub_25C4C7BB0();
        v72 = sub_25C4C8720();

        if (!os_log_type_enabled(v71, v72))
        {

          v128 = *v167;
          (*v167)(v13, v2);
          (v128)(v68, v2);
          v10 = v161;
          goto LABEL_55;
        }

        LODWORD(v153) = v72;
        v73 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v169 = v152;
        *v73 = v149;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v74 = sub_25C4C89A0();
        v76 = v75;
        v147 = *v167;
        (v147)(v13, v2);
        v77 = sub_25C458990(v74, v76, &v169);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2080;
        if (v67)
        {
          swift_getErrorValue();
          v78 = sub_25C4C8A30();
          v80 = v79;
        }

        else
        {
          v80 = 0xE300000000000000;
          v78 = 7104878;
        }

        v132 = v156;
        v133 = sub_25C458990(v78, v80, &v169);

        *(v73 + 14) = v133;
        _os_log_impl(&dword_25C452000, v71, v153, "Abort operation cancel response: itemUUID=%s, error=%s", v73, 0x16u);
        v134 = v152;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v134, -1, -1);
        MEMORY[0x25F888630](v73, -1, -1);

        v135 = v132;
        v2 = v157;
        v136 = v157;
        v137 = &v168;
LABEL_52:
        (*(v137 - 32))(v135, v136);
LABEL_53:
        v10 = v161;
        goto LABEL_54;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v81 = &unk_27FC0A7E0;
        v82 = &unk_25C4CA858;
        goto LABEL_29;
      }

      if (EnumCaseMultiPayload != 8)
      {
        v87 = *(v26 + 1);
        v153 = *v26;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8E8, &qword_25C4CAC78);
        v89 = *(v88 + 48);
        sub_25C4BACC4(*&v26[*(v88 + 64)], *&v26[*(v88 + 64) + 8], v26[*(v88 + 64) + 16]);
        (*v160)(v10, &v26[v89], v2);
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v90 = sub_25C4C7BD0();
        __swift_project_value_buffer(v90, qword_27FC0B978);
        v91 = v151;
        (*v159)(v151, v10, v2);

        v92 = v164;
        v93 = v164;
        v94 = sub_25C4C7BB0();
        v95 = sub_25C4C8720();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v169 = v152;
          *v96 = v150;
          v97 = sub_25C458990(v153, v87, &v169);
          LODWORD(v153) = v95;
          v98 = v97;

          *(v96 + 4) = v98;
          *(v96 + 12) = 2080;
          sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
          v99 = sub_25C4C89A0();
          v101 = v100;
          v102 = *v167;
          (*v167)(v91, v157);
          v103 = sub_25C458990(v99, v101, &v169);

          *(v96 + 14) = v103;
          *(v96 + 22) = 2080;
          swift_getErrorValue();
          v104 = sub_25C4C8A30();
          v106 = sub_25C458990(v104, v105, &v169);

          *(v96 + 24) = v106;
          _os_log_impl(&dword_25C452000, v94, v153, "Abort response: requestName=%s, requestUUID=%s, error=%s", v96, 0x20u);
          v107 = v152;
          swift_arrayDestroy();
          MEMORY[0x25F888630](v107, -1, -1);
          v108 = v96;
          v2 = v157;
          MEMORY[0x25F888630](v108, -1, -1);

          v10 = v161;
          (v102)(v161, v2);
        }

        else
        {

          v127 = *v167;
          (*v167)(v91, v2);
          v10 = v161;
          (v127)(v161, v2);
        }

LABEL_54:
        v13 = v158;
LABEL_55:
        v32 = v162;
LABEL_4:
        v33 = v163;
        goto LABEL_5;
      }

      v58 = *(v26 + 1);
      v59 = *(v26 + 4);
      v60 = *(v26 + 5);
      sub_25C45A004(*(v26 + 2), *(v26 + 3));

      v59(v164, 0, 1);
      v33 = v163;
    }

    else
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v42 = *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48)];
            v43 = v155;
            (*v160)(v155, v26, v2);
            if (qword_27FC0B970 != -1)
            {
              swift_once();
            }

            v44 = sub_25C4C7BD0();
            __swift_project_value_buffer(v44, qword_27FC0B978);
            (*v159)(v32, v43, v2);
            v45 = v42;
            v46 = sub_25C4C7BB0();
            v47 = sub_25C4C8720();

            if (!os_log_type_enabled(v46, v47))
            {

              v126 = *v167;
              (*v167)(v32, v2);
              (v126)(v43, v2);
              v10 = v161;
              v13 = v158;
              goto LABEL_4;
            }

            LODWORD(v153) = v47;
            v48 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v169 = v152;
            *v48 = v149;
            sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
            v49 = sub_25C4C89A0();
            v51 = v50;
            v52 = v32;
            v53 = *v167;
            (*v167)(v52, v2);
            v54 = sub_25C458990(v49, v51, &v169);

            *(v48 + 4) = v54;
            *(v48 + 12) = 2080;
            if (v42)
            {
              swift_getErrorValue();
              v55 = sub_25C4C8A30();
              v57 = v56;
            }

            else
            {
              v57 = 0xE300000000000000;
              v55 = 7104878;
            }

            v130 = sub_25C458990(v55, v57, &v169);

            *(v48 + 14) = v130;
            _os_log_impl(&dword_25C452000, v46, v153, "Abort operation update response: itemUUID=%s, error=%s", v48, 0x16u);
            v131 = v152;
            swift_arrayDestroy();
            MEMORY[0x25F888630](v131, -1, -1);
            MEMORY[0x25F888630](v48, -1, -1);

            v2 = v157;
            (v53)(v155, v157);
            goto LABEL_53;
          }

          v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D0, &qword_25C4CA848) + 48);
          goto LABEL_31;
        }

        v81 = &unk_27FC0A7C8;
        v82 = &unk_25C4CA840;
LABEL_29:
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(v81, v82);
        sub_25C45A004(*&v26[*(v83 + 48)], *&v26[*(v83 + 48) + 8]);
        v84 = *(v83 + 64);
LABEL_31:
        v85 = &v26[v84];
        v86 = *(v85 + 1);
        (*v85)(v164);

        (*v167)(v26, v2);
        goto LABEL_5;
      }

      if (!EnumCaseMultiPayload)
      {
        v61 = *(v26 + 1);

        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7C0, &qword_25C4CA838);
        v63 = v62[12];
        sub_25C45A004(*&v26[v62[16]], *&v26[v62[16] + 8]);
        v64 = &v26[v62[20]];
        v65 = *(v64 + 1);
        (*v64)(v164);

        v66 = &v26[v63];
        v33 = v163;
        (*v167)(v66, v2);
        goto LABEL_5;
      }

      v109 = *(v26 + 1);
      v152 = *v26;
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F8, &qword_25C4CAC88);
      v111 = *&v26[*(v110 + 64)];
      v112 = v154;
      (*v160)(v154, &v26[*(v110 + 48)], v2);
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v113 = sub_25C4C7BD0();
      __swift_project_value_buffer(v113, qword_27FC0B978);
      (*v159)(v33, v112, v2);

      v114 = v111;
      v115 = sub_25C4C7BB0();
      v116 = sub_25C4C8720();

      LODWORD(v153) = v116;
      if (os_log_type_enabled(v115, v116))
      {
        v147 = v115;
        v117 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v169 = v146;
        *v117 = v150;
        v118 = sub_25C458990(v152, v109, &v169);

        *(v117 + 4) = v118;
        *(v117 + 12) = 2080;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v119 = sub_25C4C89A0();
        v121 = v120;
        v152 = *v167;
        (v152)(v33, v2);
        v122 = sub_25C458990(v119, v121, &v169);

        *(v117 + 14) = v122;
        *(v117 + 22) = 2080;
        if (v111)
        {
          swift_getErrorValue();
          v123 = sub_25C4C8A30();
          v125 = v124;
        }

        else
        {
          v125 = 0xE300000000000000;
          v123 = 7104878;
        }

        v138 = sub_25C458990(v123, v125, &v169);

        *(v117 + 24) = v138;
        v139 = v147;
        _os_log_impl(&dword_25C452000, v147, v153, "Abort operation start response: operationName=%s, itemUUID=%s, error=%s", v117, 0x20u);
        v140 = v146;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v140, -1, -1);
        MEMORY[0x25F888630](v117, -1, -1);

        v135 = v154;
        v2 = v157;
        v136 = v157;
        v137 = &v169;
        goto LABEL_52;
      }

      v129 = *v167;
      (*v167)(v33, v2);
      (v129)(v112, v2);
      v10 = v161;
      v13 = v158;
    }

    v32 = v162;
LABEL_5:
    v30 += v165;
    --v29;
  }

  while (v29);

  v1 = v145;
  v141 = v148;
  v142 = *(v145 + v148);
LABEL_58:
  *(v1 + v141) = MEMORY[0x277D84F90];
}

uint64_t sub_25C49A214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_14:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v11 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    sub_25C4B8A80(*(v4 + 56) + 16 * v15, v19);
    v20 = v16;
    sub_25C4BBBA8(v19, v21);
    v13 = v11;
LABEL_15:
    sub_25C465DA4(&v20, v22, &qword_27FC0A998, &qword_25C4CACD8);
    if (!v23[0] && v23[1] == 1)
    {
    }

    sub_25C4BBBA8(v23, &v20);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = v21[0];
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(a1, ObjectType, v17);
      swift_unknownObjectRelease();
    }

    result = sub_25C4BBBE0(&v20);
    v10 = v13;
  }

  if (v8 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v7 = 0;
      v20 = 0;
      v21[0] = 0;
      v21[1] = 1;
      goto LABEL_15;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25C49A3EC(char a1)
{
  result = 0x696C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6F637369446E616ELL;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
    case 10:
      result = 0xD000000000000012;
      break;
    case 5:
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6973736553736469;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x537463656E6E6F63;
      break;
    case 12:
      result = 0x577463656E6E6F63;
      break;
    case 13:
      result = 0x6972655672696170;
      break;
    case 14:
      result = 0x6972655672696170;
      break;
    case 15:
    case 16:
      result = 0x7574655372696170;
      break;
    case 17:
      result = 0x7964616572;
      break;
    case 18:
      result = 0x726F727265;
      break;
    case 19:
      result = 0x696157726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25C49A694(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_25C49A3EC(*a1);
  v5 = v4;
  if (v3 == sub_25C49A3EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25C4C89E0();
  }

  return v8 & 1;
}

uint64_t sub_25C49A71C()
{
  v1 = *v0;
  sub_25C4C8A60();
  sub_25C49A3EC(v1);
  sub_25C4C8580();

  return sub_25C4C8A90();
}

uint64_t sub_25C49A780()
{
  sub_25C49A3EC(*v0);
  sub_25C4C8580();
}

uint64_t sub_25C49A7D4()
{
  v1 = *v0;
  sub_25C4C8A60();
  sub_25C49A3EC(v1);
  sub_25C4C8580();

  return sub_25C4C8A90();
}

uint64_t sub_25C49A834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25C4B9B18();
  *a2 = result;
  return result;
}

unint64_t sub_25C49A864@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25C49A3EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25C49A890()
{
  v2 = v0;
  v3 = sub_25C4C8460();
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v88 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v87 = &v73 - v7;
  v91 = sub_25C4C84B0();
  v86 = *(v91 - 8);
  v8 = *(v86 + 64);
  v9 = MEMORY[0x28223BE20](v91);
  v84 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v73 - v11;
  v12 = sub_25C4C8470();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v12);
  v80 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_25C4C8490();
  v79 = *(v81 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v78 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25C4C8760();
  v77 = *(v17 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25C4C7C50();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint, v21);
  v26 = (*(v22 + 88))(v25, v21);
  v27 = *MEMORY[0x277D35610];
  (*(v22 + 8))(v25, v21);
  if (v26 == v27)
  {
    v76 = v1;
    v28 = [objc_allocWithZone(MEMORY[0x277CBDFF0]) init];
    v29 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser;
    v30 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser);
    if (v30)
    {
      [v30 invalidate];
      v31 = *(v2 + v29);
    }

    else
    {
      v31 = 0;
    }

    *(v2 + v29) = v28;
    v34 = v28;

    v35 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
    [v34 setDispatchQueue_];
    [v34 setNearbyActionType_];
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    v96 = sub_25C4BBD40;
    v97 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v94 = sub_25C45BE80;
    v95 = &block_descriptor_106;
    v39 = _Block_copy(&aBlock);

    v75 = v34;
    [v34 activateWithCompletion_];
    _Block_release(v39);
    v40 = [objc_allocWithZone(MEMORY[0x277D028A8]) init];
    v41 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber;
    v42 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber);
    if (v42)
    {
      [v42 0x2799AAE78];
      v43 = *(v2 + v41);
    }

    else
    {
      v43 = 0;
    }

    *(v2 + v41) = v40;
    v44 = v40;

    [v44 setDispatchQueue_];
    [v44 setControlFlags_];
    sub_25C4C7CC0();
    v45 = sub_25C4C8540();

    [v44 setServiceType_];

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    *(v48 + 24) = v47;
    v96 = sub_25C4BBD8C;
    v97 = v48;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v94 = sub_25C45B97C;
    v95 = &block_descriptor_116;
    v49 = _Block_copy(&aBlock);

    [v44 setEndpointFoundHandler_];
    _Block_release(v49);
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    *(v52 + 24) = v51;
    v96 = sub_25C4BBFB0;
    v97 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v94 = sub_25C45BE80;
    v95 = &block_descriptor_124;
    v53 = _Block_copy(&aBlock);

    v74 = v44;
    [v44 activateWithCompletion_];
    _Block_release(v53);
    sub_25C4BC77C(0, &qword_27FC0A1C0, 0x277D85CA0);
    aBlock = MEMORY[0x277D84F90];
    sub_25C4B8B3C(&unk_27FC0A9C0, MEMORY[0x277D85278]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C4BC1E8(&qword_27FC0A9D0, &unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C4C8800();
    v54 = sub_25C4C8770();
    (*(v77 + 8))(v20, v17);
    v55 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer;
    if (*(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer))
    {
      v56 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25C4C8790();
      swift_unknownObjectRelease();
      v57 = *(v2 + v55);
    }

    *(v2 + v55) = v54;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    *(v61 + 24) = v60;
    v96 = sub_25C4BC230;
    v97 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v94 = sub_25C45B768;
    v95 = &block_descriptor_134;
    v62 = _Block_copy(&aBlock);

    v63 = v78;
    sub_25C4C8480();
    v73 = v54;
    v64 = v80;
    sub_25C45F518();
    sub_25C4C8780();
    _Block_release(v62);
    (*(v82 + 8))(v64, v83);
    (*(v79 + 8))(v63, v81);

    v65 = v84;
    sub_25C4C84A0();
    v66 = v85;
    sub_25C4C84D0();
    v86 = *(v86 + 8);
    (v86)(v65, v91);
    v68 = v89;
    v67 = v90;
    v69 = *(v89 + 104);
    v70 = v87;
    v69(v87, *MEMORY[0x277D85180], v90);
    v71 = v88;
    *v88 = 0;
    v69(v71, *MEMORY[0x277D85168], v67);
    MEMORY[0x25F887C70](v66, v70, v71, ObjectType);
    v72 = *(v68 + 8);
    v72(v71, v67);
    v72(v70, v67);
    (v86)(v66, v91);
    sub_25C4C87A0();

    return swift_unknownObjectRelease();
  }

  else
  {
    v32 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }
}

uint64_t sub_25C49B4B4()
{
  v2 = v0;
  v3 = sub_25C4C8460();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v57 - v9;
  v75 = sub_25C4C84B0();
  v73 = *(v75 - 8);
  v10 = *(v73 + 64);
  v11 = MEMORY[0x28223BE20](v75);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v72 = &v57 - v14;
  v15 = sub_25C4C8470();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v15);
  v68 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_25C4C8490();
  v67 = *(v69 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25C4C8760();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound);
  if (v25)
  {
    v61 = v13;
    v62 = v8;
    v63 = v4;
    v64 = v3;
    v65 = v1;
    v58 = v22;
    v26 = objc_allocWithZone(MEMORY[0x277D02890]);
    v27 = v25;
    v28 = [v26 init];
    v29 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession);
    *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession) = v28;
    v30 = v28;

    [v30 setControlFlags_];
    v57 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
    [v30 setDispatchQueue_];
    v60 = v27;
    [v30 setPeerEndpoint_];
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    v80 = sub_25C4BC34C;
    v81 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_25C45BE80;
    v79 = &block_descriptor_144;
    v34 = _Block_copy(&aBlock);

    v59 = v30;
    [v30 activateWithCompletion_];
    _Block_release(v34);
    sub_25C4BC77C(0, &qword_27FC0A1C0, 0x277D85CA0);
    aBlock = MEMORY[0x277D84F90];
    sub_25C4B8B3C(&unk_27FC0A9C0, MEMORY[0x277D85278]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C4BC1E8(&qword_27FC0A9D0, &unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C4C8800();
    v35 = sub_25C4C8770();
    (*(v58 + 8))(v24, v20);
    v36 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer;
    if (*(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer))
    {
      v37 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25C4C8790();
      swift_unknownObjectRelease();
      v38 = *(v2 + v36);
    }

    v41 = v61;
    *(v2 + v36) = v35;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    *(v45 + 24) = v44;
    v80 = sub_25C4BC660;
    v81 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_25C45B768;
    v79 = &block_descriptor_152;
    v46 = _Block_copy(&aBlock);
    v57 = v35;
    v47 = v46;

    v48 = v66;
    sub_25C4C8480();
    v49 = v68;
    v61 = ObjectType;
    sub_25C45F518();
    sub_25C4C8780();
    _Block_release(v47);
    (*(v70 + 8))(v49, v71);
    (*(v67 + 8))(v48, v69);

    sub_25C4C84A0();
    v50 = v72;
    sub_25C4C84D0();
    v73 = *(v73 + 8);
    (v73)(v41, v75);
    v52 = v63;
    v51 = v64;
    v53 = *(v63 + 104);
    v54 = v74;
    v53(v74, *MEMORY[0x277D85180], v64);
    v55 = v62;
    *v62 = 0;
    v53(v55, *MEMORY[0x277D85168], v51);
    MEMORY[0x25F887C70](v50, v54, v55, v61);
    v56 = *(v52 + 8);
    v56(v55, v51);
    v56(v54, v51);
    (v73)(v50, v75);
    sub_25C4C87A0();

    return swift_unknownObjectRelease();
  }

  else
  {
    v39 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }
}

void sub_25C49BDA0()
{
  v2 = v1;
  v3 = sub_25C4C7C50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (!v9)
  {
    if (!*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID + 8))
    {
      goto LABEL_25;
    }

    v19 = *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID);
    v20 = objc_allocWithZone(MEMORY[0x277D18778]);
    v21 = sub_25C4C8540();
    v22 = [v20 initWithService_];

    v23 = *(v0 + v8);
    *(v0 + v8) = v22;

    v9 = *(v0 + v8);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  v10 = [v9 accounts];
  if (!v10)
  {
    __break(1u);
    goto LABEL_40;
  }

  v11 = v10;
  v60 = v3;
  v61 = v0;
  v57 = v1;
  v12 = sub_25C4BC77C(0, &qword_27FC0A9E0, 0x277D186C0);
  sub_25C4BC7C4();
  v13 = sub_25C4C8610();

  v59 = v4;
  v58 = v7;
  v63 = v12;
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25C4C8830();
    sub_25C4C8640();
    v14 = v64[15];
    v15 = v64[16];
    v16 = v64[17];
    v17 = v64[18];
    v18 = v64[19];
  }

  else
  {
    v24 = -1 << *(v13 + 32);
    v15 = v13 + 56;
    v16 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v18 = v26 & *(v13 + 56);

    v17 = 0;
    v14 = v13;
  }

  v62 = v16;
  if (v14 < 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v27 = v17;
  v28 = v18;
  v29 = v17;
  if (!v18)
  {
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= ((v16 + 64) >> 6))
      {
        goto LABEL_24;
      }

      v28 = *(v15 + 8 * v29);
      ++v27;
      if (v28)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_29;
  }

LABEL_17:
  v12 = (v28 - 1) & v28;
  v2 = *(*(v14 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
  if (!v2)
  {
LABEL_24:
    sub_25C48B0D8();

LABEL_25:
    v31 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return;
  }

  while (([v2 isActive] & 1) == 0)
  {

    v17 = v29;
    v18 = v12;
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v30 = sub_25C4C8860();
    if (v30)
    {
      v64[22] = v30;
      swift_dynamicCast();
      v2 = v64[0];
      v29 = v17;
      v12 = v18;
      if (v64[0])
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  sub_25C48B0D8();

  v32 = v59;
  v15 = v61;
  v33 = v58;
  v34 = v60;
  (*(v59 + 16))(v58, v61 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint, v60);
  if ((*(v32 + 88))(v33, v34) != *MEMORY[0x277D35608])
  {
    (*(v32 + 8))(v33, v34);
    v46 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();

    return;
  }

  (*(v32 + 96))(v33, v34);
  v12 = *v33;
  v17 = v33[1];
  if (qword_27FC0B970 != -1)
  {
    goto LABEL_38;
  }

LABEL_29:
  v35 = sub_25C4C7BD0();
  __swift_project_value_buffer(v35, qword_27FC0B978);
  v36 = v2;

  v37 = sub_25C4C7BB0();
  v38 = sub_25C4C8720();
  if (!os_log_type_enabled(v37, v38))
  {

    goto LABEL_34;
  }

  v63 = v12;
  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v64[0] = v40;
  *v39 = 136315394;
  v41 = [v36 uniqueID];

  if (!v41)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v42 = sub_25C4C8550();
  v44 = v43;

  v45 = sub_25C458990(v42, v44, v64);

  *(v39 + 4) = v45;
  *(v39 + 12) = 2080;
  v12 = v63;
  *(v39 + 14) = sub_25C458990(v63, v17, v64);
  _os_log_impl(&dword_25C452000, v37, v38, "IDS client session start: account=%s, destination=%s", v39, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x25F888630](v40, -1, -1);
  MEMORY[0x25F888630](v39, -1, -1);

  v15 = v61;
LABEL_34:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9F0, &qword_25C4CAD18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25C4CA320;
  v64[0] = v12;
  v64[1] = v17;
  v48 = v36;
  sub_25C4C88A0();
  sub_25C4B8B84(inited);
  swift_setDeallocating();
  sub_25C4BC82C(inited + 32);
  v49 = objc_allocWithZone(MEMORY[0x277D18788]);
  v50 = sub_25C4C8600();

  v51 = [v49 initWithAccount:v48 destinations:v50 transportType:1];

  v52 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
  swift_beginAccess();
  v53 = *(v15 + v52);
  *(v15 + v52) = v51;
  v54 = v51;

  if (v54)
  {
    v55 = *(v15 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
    v56 = v54;
    [v56 setDelegate:v15 queue:v55];
  }
}

uint64_t sub_25C49C57C()
{
  v1 = sub_25C4C8170();
  v89 = *(v1 - 8);
  v2 = v89[8];
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v81 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v81 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v81 - v12;
  v14 = sub_25C4C7C50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v21 = &v81 - v18;
  if (*&v0[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection])
  {
    v22 = v0;
    v23 = &v0[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint];
    v24 = v19;
    (*(v15 + 16))(&v81 - v18, v23, v19);
    v25 = (*(v15 + 88))(v21, v24);
    v26 = *MEMORY[0x277D35608];
    v27 = *(v15 + 8);
    swift_retain_n();
    v27(v21, v24);
    if (v25 == v26)
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v28 = sub_25C4C7BD0();
      __swift_project_value_buffer(v28, qword_27FC0B978);
      v29 = v22;
      v30 = sub_25C4C7BB0();
      v31 = sub_25C4C8720();

      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_19;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v91 = v33;
      *v32 = 136315138;
      v34 = sub_25C494B98();
      v36 = sub_25C458990(v34, v35, &v91);

      *(v32 + 4) = v36;
      v37 = "Connection start: client, peer=%s";
    }

    else
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v60 = sub_25C4C7BD0();
      __swift_project_value_buffer(v60, qword_27FC0B978);
      v61 = v22;
      v30 = sub_25C4C7BB0();
      v31 = sub_25C4C8720();

      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_19;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v91 = v33;
      *v32 = 136315138;
      v62 = sub_25C494B98();
      v64 = sub_25C458990(v62, v63, &v91);

      *(v32 + 4) = v64;
      v37 = "Connection start: server, peer=%s";
    }

    _os_log_impl(&dword_25C452000, v30, v31, v37, v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x25F888630](v33, -1, -1);
    MEMORY[0x25F888630](v32, -1, -1);
LABEL_19:

LABEL_20:
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    swift_weakInit();
    v67 = swift_allocObject();
    *(v67 + 16) = v65;
    *(v67 + 24) = v66;

    sub_25C4C8290();

    v68 = *&v22[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue];
    sub_25C4C82D0();
  }

  v84 = v8;
  v85 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
  v38 = v89;
  v86 = v5;
  v87 = v13;
  v88 = v1;
  v22 = v0;
  v39 = &v0[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint];
  v40 = v20;
  v41 = v19;
  (*(v15 + 16))(v20, v39, v19);
  result = (*(v15 + 88))(v40, v41);
  if (result == *MEMORY[0x277D35620])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D355F0] || result == *MEMORY[0x277D35628] || result == *MEMORY[0x277D35608])
  {
    return (*(v15 + 8))(v40, v41);
  }

  if (result == *MEMORY[0x277D355F8])
  {
LABEL_8:
    (*(v15 + 8))(v40, v41);
    sub_25C4C7CE0();
    v43 = v90;
    result = sub_25C4C7C30();
    if (v43)
    {
      return result;
    }

    v90 = 0;
    v45 = v87;
    v44 = v88;
    (v38[4])(v87, v11, v88);
    goto LABEL_10;
  }

  if (result == *MEMORY[0x277D35610])
  {
    (*(v15 + 8))(v40, v41);
    v44 = v88;
    if (!*&v22[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString + 8])
    {
      v80 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      return swift_willThrow();
    }

    v77 = *&v22[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString];
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA00, &qword_25C4CA340) + 48);

    v45 = v87;
    sub_25C4C8130();
    sub_25C4C7CE0();
    sub_25C4C8140();
    (v38[13])(v45, *MEMORY[0x277CD8B08], v44);
LABEL_10:
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v46 = sub_25C4C7BD0();
    __swift_project_value_buffer(v46, qword_27FC0B978);
    v47 = v38;
    v48 = v38[2];
    v49 = v84;
    v48(v84, v45, v44);
    v50 = sub_25C4C7BB0();
    v51 = sub_25C4C8720();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v91 = v89;
      *v52 = 136315138;
      v83 = v51;
      v82 = sub_25C4C8110();
      v54 = v53;
      v55 = v47[1];
      v55(v49, v88);
      v56 = v48;
      v57 = sub_25C458990(v82, v54, &v91);

      *(v52 + 4) = v57;
      v48 = v56;
      _os_log_impl(&dword_25C452000, v50, v83, "Connection start: client, peer=%s", v52, 0xCu);
      v58 = v89;
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x25F888630](v58, -1, -1);
      v59 = v52;
      v44 = v88;
      MEMORY[0x25F888630](v59, -1, -1);
    }

    else
    {

      v55 = v47[1];
      v55(v49, v44);
    }

    v69 = v87;
    v48(v86, v87, v44);
    sub_25C4C8350();
    sub_25C4C8340();
    v70 = sub_25C4C8320();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    v73 = sub_25C4C82A0();
    v74 = v44;
    v75 = v73;
    v55(v69, v74);
    v76 = *&v22[v85];
    *&v22[v85] = v75;
    swift_retain_n();

    goto LABEL_20;
  }

  v79 = v88;
  if (result == *MEMORY[0x277D35600])
  {
    (*(v15 + 96))(v40, v41);
    return (v38[1])(v40, v79);
  }

  if (result != *MEMORY[0x277D35618])
  {
    return (*(v15 + 8))(v40, v41);
  }

  return result;
}

void sub_25C49CF5C()
{
  v79 = sub_25C4C7E50();
  v1 = *(v79 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_25C4C7B20();
  v4 = *(v80 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v80);
  v81 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v85);
  v10 = (v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState) != 17)
  {
    return;
  }

  v11 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
  swift_beginAccess();
  v12 = *(v0 + v11);
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v15 = *(v7 + 72);
  v83 = (v4 + 32);
  v84 = v15;
  v82 = (v4 + 8);
  v77 = (v1 + 32);
  v75 = v11;
  v76 = (v1 + 8);
  v74[1] = v12;

  v17 = v80;
  v16 = v81;
  do
  {
    sub_25C4BACD0(v14, v10, type metadata accessor for NXSessionDaemon.SendItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
            v50 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D0, &qword_25C4CA848) + 48));
            v51 = *v50;
            v52 = v50[1];
            (*v83)(v16, v10, v17);
            sub_25C4ADDDC(v16, v51, v52);

            goto LABEL_6;
          }

          v26 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48));
          (*v83)(v16, v10, v17);
          v27 = sub_25C4BB254;
          v28 = v16;
          v29 = v26;
          v30 = 7;
          v31 = "Send operation update response: itemUUID=%s";
          v32 = &unk_286E23D60;
          goto LABEL_21;
        }

        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7C8, &qword_25C4CA840);
        v19 = v10 + *(v18 + 48);
        v20 = *v19;
        v21 = *(v19 + 1);
        v22 = (v10 + *(v18 + 64));
        v23 = *v22;
        v24 = v22[1];
        (*v83)(v16, v10, v17);
        sub_25C4AD580(v16, v20, v21, v23, v24);
LABEL_5:

        sub_25C45A004(v20, v21);
LABEL_6:
        (*v82)(v16, v17);
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload)
      {
        v61 = *v10;
        v62 = v10[1];
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F8, &qword_25C4CAC88);
        v64 = *(v10 + *(v63 + 64));
        (*v83)(v16, (v10 + *(v63 + 48)), v17);
        sub_25C4AD104(v61, v62, v16, v64);
      }

      else
      {
        v35 = *v10;
        v36 = v10[1];
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7C0, &qword_25C4CA838);
        v38 = (v10 + v37[16]);
        v40 = *v38;
        v39 = v38[1];
        v41 = (v10 + v37[20]);
        v43 = *v41;
        v42 = v41[1];
        (*v83)(v81, (v10 + v37[12]), v80);
        sub_25C4AC804(v35, v36, v81, v40, v39, v43, v42);

        v44 = v40;
        v17 = v80;
        sub_25C45A004(v44, v39);
        v16 = v81;
      }

LABEL_26:

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D8, &qword_25C4CA850);
        v66 = v65[16];
        v67 = (v10 + v65[20]);
        v68 = *v67;
        v69 = v67[1];
        (*v83)(v16, (v10 + v65[12]), v17);
        v70 = v78;
        v71 = v10 + v66;
        v72 = v79;
        (*v77)(v78, v71, v79);
        sub_25C4B8C10(v16, v70, v68, v69);

        (*v76)(v70, v72);
        goto LABEL_6;
      }

      v26 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48));
      (*v83)(v16, v10, v17);
      v27 = sub_25C4BB498;
      v28 = v16;
      v29 = v26;
      v30 = 9;
      v31 = "Send operation cancel response: itemUUID=%s";
      v32 = &unk_286E23DB0;
LABEL_21:
      sub_25C4AE604(v28, v29, v30, v31, v32, v27);

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7E0, &qword_25C4CA858);
      v46 = v10 + *(v45 + 48);
      v20 = *v46;
      v21 = *(v46 + 1);
      v47 = (v10 + *(v45 + 64));
      v48 = *v47;
      v49 = v47[1];
      (*v83)(v16, v10, v17);
      sub_25C4AEA24(v16, v20, v21, v48, v49);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 8)
    {
      v53 = *v10;
      v54 = v10[1];
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8E8, &qword_25C4CAC78);
      v56 = v10 + *(v55 + 64);
      v57 = *v56;
      v58 = *(v56 + 1);
      v59 = v56[16];
      (*v83)(v81, (v10 + *(v55 + 48)), v17);
      sub_25C4AF490(v53, v54, v81, v57, v58, v59);
      v60 = v59;
      v16 = v81;
      sub_25C4BACC4(v57, v58, v60);
      goto LABEL_26;
    }

    v33 = v10[2];
    v34 = v10[3];
    sub_25C4AEE60(*v10, v10[1], v33, v34, v10[4], v10[5]);

    sub_25C45A004(v33, v34);

LABEL_7:
    v14 += v84;
    --v13;
  }

  while (v13);

  v11 = v75;
  v73 = *(v0 + v75);
LABEL_29:
  *(v0 + v11) = MEMORY[0x277D84F90];

  sub_25C4984E4();
}

void sub_25C49D6E0(void *a1)
{
  v2 = v1;
  v4 = sub_25C4C84C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_25C4C84E0();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_25C4C7BD0();
  __swift_project_value_buffer(v11, qword_27FC0B978);
  v12 = a1;
  v13 = sub_25C4C7BB0();
  v14 = sub_25C4C8720();
  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_7;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v24 = v16;
  *v15 = 136315138;
  v17 = [v12 sessionID];

  if (v17)
  {
    v18 = sub_25C4C8550();
    v20 = v19;

    v21 = sub_25C458990(v18, v20, &v24);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_25C452000, v13, v14, "IDS session started: sessionID=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25F888630](v16, -1, -1);
    MEMORY[0x25F888630](v15, -1, -1);
LABEL_7:

    v22 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted;
    swift_beginAccess();
    *(v2 + v22) = 1;
    sub_25C495A00();
    return;
  }

  __break(1u);
}

void sub_25C49D9F0(void *a1, int a2, void *a3)
{
  v4 = v3;
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v16(v12, v8);
  if (v13)
  {
    v15 = 0x2799AA000uLL;
    v17 = [a1 sessionID];
    if (v17)
    {
      v18 = v17;
      v19 = sub_25C4C8550();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
    swift_beginAccess();
    v23 = *(v4 + v22);
    v50 = a2;
    if (v23 && (v24 = [v23 sessionID]) != 0)
    {
      v25 = v24;
      v26 = sub_25C4C8550();
      v28 = v27;

      if (!v21)
      {
LABEL_8:
        if (!v28)
        {
          LOBYTE(v8) = 1;
LABEL_18:
          if (qword_27FC0B970 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_37;
        }

        LOBYTE(v8) = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v26 = 0;
      v28 = 0;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

    if (v28)
    {
      if (v19 == v26 && v21 == v28)
      {

        LOBYTE(v8) = 1;
      }

      else
      {
        LOBYTE(v8) = sub_25C4C89E0();
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_19:
  v29 = sub_25C4C7BD0();
  __swift_project_value_buffer(v29, qword_27FC0B978);
  v30 = a1;
  v31 = a3;
  v32 = sub_25C4C7BB0();
  v33 = sub_25C4C8720();
  if (!os_log_type_enabled(v32, v33))
  {

    if ((v8 & 1) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v51 = v35;
  *v34 = 136315906;
  v36 = [v30 *(v15 + 2336)];
  if (!v36)
  {

    __break(1u);
    return;
  }

  v37 = v36;

  v38 = sub_25C4C8550();
  v40 = v39;

  v41 = sub_25C458990(v38, v40, &v51);

  *(v34 + 4) = v41;
  *(v34 + 12) = 2080;
  if (v8)
  {
    v42 = 0x297372756F28;
  }

  else
  {
    v42 = 0x72756F20746F6E28;
  }

  if (v8)
  {
    v43 = 0xE600000000000000;
  }

  else
  {
    v43 = 0xEA00000000002973;
  }

  v44 = sub_25C458990(v42, v43, &v51);

  *(v34 + 14) = v44;
  *(v34 + 22) = 1024;
  *(v34 + 24) = v50;
  *(v34 + 28) = 2080;
  if (a3)
  {
    swift_getErrorValue();
    v45 = sub_25C4C8A30();
    v47 = v46;
  }

  else
  {
    v47 = 0xE300000000000000;
    v45 = 7104878;
  }

  v48 = sub_25C458990(v45, v47, &v51);

  *(v34 + 30) = v48;
  _os_log_impl(&dword_25C452000, v32, v33, "IDS session ended: sessionID=%s %s, reason=%u, error=%s", v34, 0x26u);
  swift_arrayDestroy();
  MEMORY[0x25F888630](v35, -1, -1);
  MEMORY[0x25F888630](v34, -1, -1);

  if (v8)
  {
LABEL_30:
    sub_25C497DF8();
    sub_25C495A00();
  }
}

uint64_t sub_25C49DF2C(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, int a6)
{
  v10 = sub_25C4C8550();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  sub_25C49DFC4(v13, v10, v12, a5, a6);
}

void sub_25C49DFC4(void *a1, uint64_t a2, unint64_t a3, const char *a4, int a5)
{
  LODWORD(v6) = a5;
  v8 = v5;
  v12 = sub_25C4C84C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v8 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_25C4C84E0();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v32 = a2;
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = sub_25C4C7BD0();
  __swift_project_value_buffer(v19, qword_27FC0B978);
  v20 = a1;

  v21 = sub_25C4C7BB0();
  v22 = sub_25C4C8720();
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_7;
  }

  v31 = v6;
  v23 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v33[0] = v6;
  *v23 = 136315394;
  v24 = [v20 sessionID];

  if (v24)
  {
    v25 = sub_25C4C8550();
    v27 = v26;

    v28 = sub_25C458990(v25, v27, v33);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_25C458990(v32, a3, v33);
    _os_log_impl(&dword_25C452000, v21, v22, a4, v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v6, -1, -1);
    MEMORY[0x25F888630](v23, -1, -1);

    LOBYTE(v6) = v31;
LABEL_7:
    v29 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState;
    swift_beginAccess();
    *(v8 + v29) = v6;
    sub_25C495A00();
    return;
  }

  __break(1u);
}

uint64_t sub_25C49E2E0()
{
  v1 = *v0;
  sub_25C4C8A60();
  sub_25C4C8A80();
  return sub_25C4C8A90();
}

uint64_t sub_25C49E354()
{
  v1 = *v0;
  sub_25C4C8A60();
  sub_25C4C8A80();
  return sub_25C4C8A90();
}

uint64_t sub_25C49E398@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25C4B9B6C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25C49E3D0()
{
  v1 = *v0;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v1 + 1);
  return sub_25C4C8A90();
}

uint64_t sub_25C49E448()
{
  v1 = *v0;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v1 + 1);
  return sub_25C4C8A90();
}

uint64_t sub_25C49E48C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25C4B9B80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25C49E4DC()
{
  v1 = *v0;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v1 + 2);
  return sub_25C4C8A90();
}

uint64_t sub_25C49E554()
{
  v1 = *v0;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v1 + 2);
  return sub_25C4C8A90();
}

uint64_t sub_25C49E598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25C4B9BA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25C49E5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v49 = a6;
  v50 = a8;
  v47 = a3;
  v48 = a5;
  v45 = a2;
  v46 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v51 = *(v46 - 8);
  v13 = *(v51 + 64);
  v14 = MEMORY[0x28223BE20](v46);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v44 - v17);
  v19 = sub_25C4C84C0();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v9 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  LOBYTE(v24) = sub_25C4C84E0();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v26 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
    swift_beginAccess();

    v27 = *(v9 + v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v9 + v26);
    *(v9 + v26) = 0x8000000000000000;
    sub_25C4B6AAC(a1, a4, isUniquelyReferenced_nonNull_native);
    *(v9 + v26) = v52;
    swift_endAccess();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7C0, &qword_25C4CA838);
    v30 = v29[12];
    v31 = (v18 + v29[16]);
    v32 = (v18 + v29[20]);
    v33 = v45;
    v45 = v16;
    v34 = v47;
    *v18 = v33;
    v18[1] = v34;
    v35 = sub_25C4C7B20();
    (*(*(v35 - 8) + 16))(v18 + v30, a4, v35);
    v37 = v48;
    v36 = v49;
    *v31 = v48;
    v31[1] = v36;
    v38 = v50;
    *v32 = a7;
    v32[1] = v38;
    swift_storeEnumTagMultiPayload();
    a7 = v45;
    sub_25C4BACD0(v18, v45, type metadata accessor for NXSessionDaemon.SendItem);
    a1 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v19 = *(v9 + a1);

    sub_25C459FB0(v37, v36);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + a1) = v19;
    if (v39)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v19 = sub_25C4B480C(0, v19[2] + 1, 1, v19);
  *(v9 + a1) = v19;
LABEL_3:
  v40 = v51;
  v42 = v19[2];
  v41 = v19[3];
  if (v42 >= v41 >> 1)
  {
    v19 = sub_25C4B480C(v41 > 1, v42 + 1, 1, v19);
  }

  v19[2] = v42 + 1;
  sub_25C4BB0E8(a7, v19 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v42, type metadata accessor for NXSessionDaemon.SendItem);
  *(v9 + a1) = v19;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v18, type metadata accessor for NXSessionDaemon.SendItem);
}

uint64_t sub_25C49E9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v32 = a1;
  v33 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v36 = *(v33 - 8);
  v5 = *(v36 + 64);
  v6 = MEMORY[0x28223BE20](v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25C4C84C0();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_25C4C84E0();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v23 = *(v12 + 16);
    v24 = v32;
    v23(v15, v32, v11);
    swift_beginAccess();
    sub_25C495840(0, v15);
    swift_endAccess();
    v25 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D0, &qword_25C4CA848) + 48)];
    v23(v10, v24, v11);
    v26 = v35;
    *v25 = v34;
    *(v25 + 1) = v26;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v10, v8, type metadata accessor for NXSessionDaemon.SendItem);
    v12 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v16 = *(v4 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v12) = v16;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v16 = sub_25C4B480C(0, v16[2] + 1, 1, v16);
  *(v4 + v12) = v16;
LABEL_3:
  v28 = v36;
  v30 = v16[2];
  v29 = v16[3];
  if (v30 >= v29 >> 1)
  {
    v16 = sub_25C4B480C(v29 > 1, v30 + 1, 1, v16);
  }

  v16[2] = v30 + 1;
  sub_25C4BB0E8(v8, v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v30, type metadata accessor for NXSessionDaemon.SendItem);
  *(v4 + v12) = v16;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v10, type metadata accessor for NXSessionDaemon.SendItem);
}

uint64_t sub_25C49EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v8 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = sub_25C4C84C0();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  LOBYTE(v20) = sub_25C4C84E0();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D8, &qword_25C4CA850);
    v23 = v22[12];
    v24 = v22[16];
    v25 = &v14[v22[20]];
    *v14 = a1;
    v26 = sub_25C4C7B20();
    (*(*(v26 - 8) + 16))(&v14[v23], v34, v26);
    v27 = sub_25C4C7E50();
    (*(*(v27 - 8) + 16))(&v14[v24], v35, v27);
    *v25 = v36;
    *(v25 + 1) = a5;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v14, v12, type metadata accessor for NXSessionDaemon.SendItem);
    v8 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v15 = *(v5 + v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v8) = v15;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v15 = sub_25C4B480C(0, v15[2] + 1, 1, v15);
  *(v5 + v8) = v15;
LABEL_3:
  v29 = v37;
  v31 = v15[2];
  v30 = v15[3];
  if (v31 >= v30 >> 1)
  {
    v15 = sub_25C4B480C(v30 > 1, v31 + 1, 1, v15);
  }

  v15[2] = v31 + 1;
  sub_25C4BB0E8(v12, v15 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v31, type metadata accessor for NXSessionDaemon.SendItem);
  *(v5 + v8) = v15;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v14, type metadata accessor for NXSessionDaemon.SendItem);
}

uint64_t sub_25C49F16C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, int a8)
{
  v39 = a8;
  v35 = a6;
  v36 = a7;
  v40 = a5;
  v37 = a1;
  v38 = a4;
  v11 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = sub_25C4C84C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v8 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_25C4C84E0();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    v26 = &v17[*(v25 + 48)];
    v27 = &v17[*(v25 + 64)];
    v28 = sub_25C4C7B20();
    (*(*(v28 - 8) + 16))(v17, v37, v28);
    *v26 = a2;
    v26[1] = a3;
    v29 = v40;
    *v27 = v38;
    *(v27 + 1) = v29;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v17, v15, type metadata accessor for NXSessionDaemon.SendItem);
    v18 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v22 = *(v8 + v18);
    sub_25C459FB0(a2, a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v18) = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v22 = sub_25C4B480C(0, v22[2] + 1, 1, v22);
  *(v8 + v18) = v22;
LABEL_3:
  v31 = v41;
  v33 = v22[2];
  v32 = v22[3];
  if (v33 >= v32 >> 1)
  {
    v22 = sub_25C4B480C(v32 > 1, v33 + 1, 1, v22);
  }

  v22[2] = v33 + 1;
  sub_25C4BB0E8(v15, v22 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v33, type metadata accessor for NXSessionDaemon.SendItem);
  *(v8 + v18) = v22;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v17, type metadata accessor for NXSessionDaemon.SendItem);
}

uint64_t sub_25C49F4C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a4;
  v34 = a6;
  v31 = a1;
  v32 = a5;
  v9 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v31 - v14);
  v16 = sub_25C4C84C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v6 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_25C4C84E0();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v23 = v32;
    *v15 = v31;
    v15[1] = a2;
    v25 = v33;
    v24 = v34;
    v15[2] = a3;
    v15[3] = v25;
    v15[4] = v23;
    v15[5] = v24;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v15, v13, type metadata accessor for NXSessionDaemon.SendItem);
    v16 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v20 = *(v6 + v16);

    sub_25C459FB0(a3, v25);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v16) = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v20 = sub_25C4B480C(0, v20[2] + 1, 1, v20);
  *(v6 + v16) = v20;
LABEL_3:
  v27 = v35;
  v29 = v20[2];
  v28 = v20[3];
  if (v29 >= v28 >> 1)
  {
    v20 = sub_25C4B480C(v28 > 1, v29 + 1, 1, v20);
  }

  v20[2] = v29 + 1;
  sub_25C4BB0E8(v13, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29, type metadata accessor for NXSessionDaemon.SendItem);
  *(v6 + v16) = v20;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v15, type metadata accessor for NXSessionDaemon.SendItem);
}

uint64_t sub_25C49F7D4(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v163 = a1;
  v3 = sub_25C4C8390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v150 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v158 = &v150 - v13;
  MEMORY[0x28223BE20](v12);
  v162 = &v150 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v153 = (&v150 - v17);
  v18 = sub_25C4C8170();
  v19 = *(v18 - 8);
  v160 = v18;
  v161 = v19;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v152 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v159 = &v150 - v24;
  MEMORY[0x28223BE20](v23);
  v151 = &v150 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA08, &qword_25C4CAD30);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v155 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v150 - v31;
  MEMORY[0x28223BE20](v30);
  v156 = &v150 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA10, &qword_25C4CAD38);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v154 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v150 - v39;
  MEMORY[0x28223BE20](v38);
  v157 = (&v150 - v41);
  v42 = sub_25C4C82C0();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v150 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v46, a2, v42);
  v47 = (*(v43 + 88))(v46, v42);
  if (v47 == *MEMORY[0x277CD8DE8])
  {
    (*(v43 + 96))(v46, v42);
    (*(v4 + 32))(v11, v46, v3);
    v48 = v4;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v49 = sub_25C4C7BD0();
    __swift_project_value_buffer(v49, qword_27FC0B978);
    (*(v4 + 16))(v8, v11, v3);

    v50 = sub_25C4C7BB0();
    v51 = sub_25C4C8720();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v165[0] = v162;
      *v52 = 136315394;
      v53 = v159;
      sub_25C4C8310();
      v54 = sub_25C4C8110();
      v56 = v55;
      (*(v161 + 8))(v53, v160);
      v57 = sub_25C458990(v54, v56, v165);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
      v58 = sub_25C4C8A30();
      v60 = v59;
      v61 = *(v48 + 8);
      v61(v8, v3);
      v62 = sub_25C458990(v58, v60, v165);

      *(v52 + 14) = v62;
      _os_log_impl(&dword_25C452000, v50, v51, "Connection waiting: peer=%s, error=%s)", v52, 0x16u);
      v63 = v162;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v63, -1, -1);
      MEMORY[0x25F888630](v52, -1, -1);

      v47 = (v61)(v11, v3);
    }

    else
    {

      v82 = *(v48 + 8);
      v82(v8, v3);
      v47 = (v82)(v11, v3);
    }

    return sub_25C495A00(v47);
  }

  v150 = v4;
  if (v47 == *MEMORY[0x277CD8DE0])
  {
    (*(v43 + 96))(v46, v42);
    v64 = v150;
    v65 = v162;
    (*(v150 + 32))(v162, v46, v3);
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v66 = sub_25C4C7BD0();
    __swift_project_value_buffer(v66, qword_27FC0B978);
    v67 = v158;
    v157 = *(v64 + 16);
    v157(v158, v65, v3);

    v68 = sub_25C4C7BB0();
    v69 = sub_25C4C8720();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v165[0] = v156;
      *v70 = 136315394;
      v71 = v159;
      sub_25C4C8310();
      v72 = sub_25C4C8110();
      v74 = v73;
      (*(v161 + 8))(v71, v160);
      v75 = sub_25C458990(v72, v74, v165);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
      v76 = sub_25C4C8A30();
      v78 = v77;
      v79 = *(v64 + 8);
      v79(v67, v3);
      v80 = sub_25C458990(v76, v78, v165);

      *(v70 + 14) = v80;
      _os_log_impl(&dword_25C452000, v68, v69, "Connection failed: peer=%s, error=%s", v70, 0x16u);
      v81 = v156;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v81, -1, -1);
      MEMORY[0x25F888630](v70, -1, -1);
    }

    else
    {

      v79 = *(v64 + 8);
      v79(v67, v3);
    }

    v90 = v164;
    sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
    v91 = swift_allocError();
    v92 = v162;
    v157(v93, v162, v3);

    v94 = v90 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler;
    v95 = swift_beginAccess();
    v96 = *v94;
    if (*v94)
    {
      v97 = *(v94 + 8);

      v96(v98);
      v95 = sub_25C45A2C8(v96);
    }

    if (*(v90 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
    {
      v99 = *(v90 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection);

      sub_25C4C82F0();
    }

    sub_25C497DF8(v95);
    v47 = (v79)(v92, v3);
    return sub_25C495A00(v47);
  }

  v83 = v164;
  if (v47 == *MEMORY[0x277CD8DD8] || v47 == *MEMORY[0x277CD8DF8])
  {
    return sub_25C495A00(v47);
  }

  if (v47 == *MEMORY[0x277CD8DD0])
  {
    v84 = v157;
    sub_25C4C8250();
    sub_25C4BC9B8(v84, v40, &qword_27FC0AA10, &qword_25C4CAD38);
    v85 = sub_25C4C8380();
    v86 = *(v85 - 8);
    v163 = *(v86 + 6);
    if (v163(v40, 1, v85) == 1)
    {
      sub_25C4666F8(v40, &qword_27FC0AA10, &qword_25C4CAD38);
      v88 = v160;
      v87 = v161;
      v89 = v156;
      (*(v161 + 56))(v156, 1, 1, v160);
    }

    else
    {
      v89 = v156;
      sub_25C4C8360();
      (*(v86 + 1))(v40, v85);
      v88 = v160;
      v87 = v161;
    }

    sub_25C4BC9B8(v89, v32, &qword_27FC0AA08, &qword_25C4CAD30);
    v160 = *(v87 + 48);
    if (v160(v32, 1, v88) == 1)
    {
      sub_25C4666F8(v32, &qword_27FC0AA08, &qword_25C4CAD30);
      v162 = 0;
      v120 = 0;
    }

    else
    {
      v121 = *(v87 + 32);
      v158 = v86;
      v122 = v151;
      v121(v151, v32, v88);
      (*(v87 + 16))(v159, v122, v88);
      v123 = sub_25C4C8560();
      v120 = v124;
      v125 = v153;
      v162 = v123;
      *v153 = v123;
      v125[1] = v124;
      v126 = *MEMORY[0x277D355F8];
      v127 = sub_25C4C7C50();
      v128 = *(v127 - 8);
      (*(v128 + 104))(v125, v126, v127);
      (*(v128 + 56))(v125, 0, 1, v127);
      swift_beginAccess();

      v87 = v161;
      sub_25C4C7DD0();
      swift_endAccess();
      v129 = v122;
      v86 = v158;
      (*(v87 + 8))(v129, v88);
    }

    v130 = v154;
    v131 = v155;
    sub_25C4BC9B8(v157, v154, &qword_27FC0AA10, &qword_25C4CAD38);
    if (v163(v130, 1, v85) == 1)
    {
      sub_25C4666F8(v130, &qword_27FC0AA10, &qword_25C4CAD38);
      (*(v87 + 56))(v131, 1, 1, v88);
    }

    else
    {
      sub_25C4C8370();
      (*(v86 + 1))(v130, v85);
      if (v160(v131, 1, v88) != 1)
      {
        v134 = v152;
        (*(v87 + 32))(v152, v131, v88);
        (*(v87 + 16))(v159, v134, v88);
        v135 = v87;
        v132 = sub_25C4C8560();
        v133 = v136;
        v137 = v153;
        *v153 = v132;
        v137[1] = v136;
        v138 = *MEMORY[0x277D355F8];
        v139 = sub_25C4C7C50();
        v140 = *(v139 - 8);
        (*(v140 + 104))(v137, v138, v139);
        (*(v140 + 56))(v137, 0, 1, v139);
        swift_beginAccess();

        sub_25C4C7DE0();
        swift_endAccess();
        (*(v135 + 8))(v152, v88);
        goto LABEL_44;
      }
    }

    sub_25C4666F8(v131, &qword_27FC0AA08, &qword_25C4CAD30);
    v132 = 0;
    v133 = 0;
LABEL_44:
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v141 = sub_25C4C7BD0();
    __swift_project_value_buffer(v141, qword_27FC0B978);

    v142 = sub_25C4C7BB0();
    v143 = sub_25C4C8720();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v165[0] = v145;
      *v144 = 136315394;
      if (v133)
      {
        v146 = v132;
      }

      else
      {
        v146 = 7104878;
      }

      if (!v133)
      {
        v133 = 0xE300000000000000;
      }

      v147 = sub_25C458990(v146, v133, v165);

      *(v144 + 4) = v147;
      *(v144 + 12) = 2080;
      if (v120)
      {
        v148 = v162;
      }

      else
      {
        v148 = 7104878;
      }

      if (!v120)
      {
        v120 = 0xE300000000000000;
      }

      v149 = sub_25C458990(v148, v120, v165);

      *(v144 + 14) = v149;
      _os_log_impl(&dword_25C452000, v142, v143, "Connection ready: peer=%s, self=%s", v144, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v145, -1, -1);
      MEMORY[0x25F888630](v144, -1, -1);
    }

    else
    {
    }

    sub_25C4A0B5C();
    sub_25C4666F8(v156, &qword_27FC0AA08, &qword_25C4CAD30);
    v47 = sub_25C4666F8(v157, &qword_27FC0AA10, &qword_25C4CAD38);
    return sub_25C495A00(v47);
  }

  if (v47 == *MEMORY[0x277CD8DF0])
  {
    v101 = v160;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v102 = sub_25C4C7BD0();
    __swift_project_value_buffer(v102, qword_27FC0B978);

    v103 = sub_25C4C7BB0();
    v104 = sub_25C4C8720();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v165[0] = v106;
      *v105 = 136315138;
      v107 = v159;
      sub_25C4C8310();
      v108 = sub_25C4C8110();
      v110 = v109;
      (*(v161 + 8))(v107, v101);
      v111 = sub_25C458990(v108, v110, v165);

      *(v105 + 4) = v111;
      _os_log_impl(&dword_25C452000, v103, v104, "Connection canceled: peer=%s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x25F888630](v106, -1, -1);
      MEMORY[0x25F888630](v105, -1, -1);
    }

    v112 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
    v113 = *(v83 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection);
    *(v83 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection) = 0;

    v114 = v83 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler;
    v115 = swift_beginAccess();
    v116 = *v114;
    if (*v114)
    {
      v117 = *(v114 + 8);

      v116(v118);
      v115 = sub_25C45A2C8(v116);
    }

    if (*(v83 + v112))
    {
      v119 = *(v83 + v112);

      sub_25C4C82F0();
    }

    v47 = sub_25C497DF8(v115);
  }

  else
  {
    v47 = (*(v43 + 8))(v46, v42);
  }

  return sub_25C495A00(v47);
}

uint64_t sub_25C4A0B5C()
{
  result = swift_getObjectType();
  if ((*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving) & 1) == 0 && *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
  {
    *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving) = 1;
    v2 = result;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = v3;
    v5[3] = v4;
    v5[4] = v2;

    sub_25C4C8300();
  }

  return result;
}

void sub_25C4A0CA8(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A948, &qword_25C4CACA8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (!v20)
  {

    return;
  }

  v21 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
  v22 = *&v19[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection];
  if (!v22 || v20 != v22)
  {
    goto LABEL_31;
  }

  v19[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
  if ((a3 & 1) != 0 || (v23 = sub_25C4C8390(), (*(*(v23 - 8) + 48))(a4, 1, v23) != 1))
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v34 = sub_25C4C7BD0();
    __swift_project_value_buffer(v34, qword_27FC0B978);
    sub_25C4BC9B8(a4, v17, &unk_27FC0A948, &qword_25C4CACA8);
    v35 = sub_25C4C7BB0();
    v36 = sub_25C4C8720();
    if (os_log_type_enabled(v35, v36))
    {
      v62 = v36;
      v64 = v35;
      v37 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65[0] = v61;
      v63 = v37;
      *v37 = 136315138;
      sub_25C4BC9B8(v17, v15, &unk_27FC0A948, &qword_25C4CACA8);
      v38 = sub_25C4C8390();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v15, 1, v38) == 1)
      {
        sub_25C4666F8(v15, &unk_27FC0A948, &qword_25C4CACA8);
        v40 = 0xE300000000000000;
        v41 = 7104878;
      }

      else
      {
        sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
        v60 = sub_25C4C8A30();
        v40 = v42;
        (*(v39 + 8))(v15, v38);
        v41 = v60;
      }

      sub_25C4666F8(v17, &unk_27FC0A948, &qword_25C4CACA8);
      v43 = sub_25C458990(v41, v40, v65);

      v45 = v63;
      v44 = v64;
      *(v63 + 1) = v43;
      _os_log_impl(&dword_25C452000, v44, v62, "Connection ended: during header, error=%s", v45, 0xCu);
      v46 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x25F888630](v46, -1, -1);
      MEMORY[0x25F888630](v45, -1, -1);
    }

    else
    {

      sub_25C4666F8(v17, &unk_27FC0A948, &qword_25C4CACA8);
    }

    sub_25C4BC9B8(a4, v12, &unk_27FC0A948, &qword_25C4CACA8);
    v47 = sub_25C4C8390();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v12, 1, v47) == 1)
    {
      sub_25C4666F8(v12, &unk_27FC0A948, &qword_25C4CACA8);
    }

    else
    {
      sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
      swift_allocError();
      (*(v48 + 32))(v49, v12, v47);
    }

    v50 = objc_allocWithZone(sub_25C4C7B80());

    v51 = &v19[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
    v52 = swift_beginAccess();
    v53 = *v51;
    if (*v51)
    {
      v54 = *(v51 + 1);

      v53(v55);
      v52 = sub_25C45A2C8(v53);
    }

    if (*&v19[v21])
    {
      v56 = *&v19[v21];

      sub_25C4C82F0();
    }

    sub_25C497DF8(v52);
    goto LABEL_31;
  }

  if (a2 >> 60 == 15)
  {
LABEL_31:

    return;
  }

  sub_25C459FB0(a1, a2);
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v24 = sub_25C4C7BD0();
  __swift_project_value_buffer(v24, qword_27FC0B978);
  sub_25C4BCA3C(a1, a2);
  sub_25C459FB0(a1, a2);
  v25 = sub_25C4C7BB0();
  v26 = sub_25C4C8700();
  if (!os_log_type_enabled(v25, v26))
  {
    sub_25C45A5B8(a1, a2);
    sub_25C45A5B8(a1, a2);
LABEL_42:

    sub_25C4A14C4(a1, a2);

    sub_25C45A5B8(a1, a2);
    return;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v66 = v28;
  *v27 = 136315394;
  v65[0] = a1;
  v65[1] = a2;
  sub_25C4BB094();
  v29 = sub_25C4C85C0();
  v31 = sub_25C458990(v29, v30, &v66);

  *(v27 + 4) = v31;
  *(v27 + 12) = 2048;
  v32 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v32 != 2)
    {
      sub_25C45A5B8(a1, a2);
      v33 = 0;
      goto LABEL_41;
    }

    v58 = *(a1 + 16);
    v57 = *(a1 + 24);
    sub_25C45A5B8(a1, a2);
    v33 = v57 - v58;
    if (!__OFSUB__(v57, v58))
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  else if (!v32)
  {
    sub_25C45A5B8(a1, a2);
    v33 = BYTE6(a2);
LABEL_41:
    *(v27 + 14) = v33;
    sub_25C45A5B8(a1, a2);
    _os_log_impl(&dword_25C452000, v25, v26, "Received frame header: data=<%s>, size=%ld", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x25F888630](v28, -1, -1);
    MEMORY[0x25F888630](v27, -1, -1);
    goto LABEL_42;
  }

  sub_25C45A5B8(a1, a2);
  LODWORD(v33) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v33 = v33;
    goto LABEL_41;
  }

  __break(1u);
}

uint64_t sub_25C4A14C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_25C459FB0(a1, a2);
  sub_25C45A004(0, 0xC000000000000000);
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (v6 != 2)
  {
LABEL_6:
    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (v6 == 3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v16 = *(a1 + 16);
LABEL_10:
  v7 = *(a1 + 24);
LABEL_11:
  sub_25C459FB0(a1, a2);
LABEL_12:
  sub_25C4BCA50();
  v8 = sub_25C4C8A40();
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_18;
    }

    v9 = *(a1 + 24);
    goto LABEL_17;
  }

  if (v6)
  {
LABEL_17:
    sub_25C459FB0(a1, a2);
  }

LABEL_18:
  sub_25C4BB038();
  sub_25C4C8930();
  if (!v15)
  {
    sub_25C4A1A18(a1, a2, v8, 0, 0xC000000000000000, 1);
    return sub_25C45A004(a1, a2);
  }

  result = swift_getObjectType();
  if ((*(v3 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving) & 1) == 0)
  {
    if (*(v3 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
    {
      v11 = result;
      *(v3 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving) = 1;
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = v13;
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      *(v14 + 48) = v8;
      *(v14 + 52) = v15;
      *(v14 + 56) = v11;

      sub_25C459FB0(a1, a2);
      sub_25C4C8300();
    }

    return sub_25C45A004(a1, a2);
  }

  __break(1u);
  return result;
}

void sub_25C4A1A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v11 = a3;
  v12 = sub_25C4B9B6C(a3);
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 != 6)
      {
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v31 = sub_25C4C7BD0();
        __swift_project_value_buffer(v31, qword_27FC0B978);
        v14 = sub_25C4C7BB0();
        v32 = sub_25C4C8720();
        if (!os_log_type_enabled(v14, v32))
        {
          goto LABEL_32;
        }

        v33 = swift_slowAlloc();
        *v33 = 16777472;
        v33[4] = v11;
        _os_log_impl(&dword_25C452000, v14, v32, "Received unsupported frame: frameType=%hhu", v33, 5u);
        v34 = v33;
        goto LABEL_31;
      }

      v18 = a4;
      v19 = a5;
      v20 = 1;
      v21 = 0;
    }

    else
    {
      v18 = a4;
      v19 = a5;
      if (v12 != 4)
      {
        v20 = 1;
LABEL_20:
        v21 = 1;
        goto LABEL_21;
      }

      v20 = 0;
      v21 = 0;
    }

LABEL_21:
    sub_25C4A2DA8(v18, v19, v20, v21);
    goto LABEL_33;
  }

  if (v12 > 1)
  {
    v18 = a4;
    v19 = a5;
    if (v12 == 2)
    {
      sub_25C4A27A4();
      goto LABEL_33;
    }

    v20 = 0;
    goto LABEL_20;
  }

  if (!v12)
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v13 = sub_25C4C7BD0();
    __swift_project_value_buffer(v13, qword_27FC0B978);
    v14 = sub_25C4C7BB0();
    v15 = sub_25C4C8720();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_32;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Received invalid frame";
    goto LABEL_30;
  }

  v22 = *(v7 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream);
  if (!v22)
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v35 = sub_25C4C7BD0();
    __swift_project_value_buffer(v35, qword_27FC0B978);
    v14 = sub_25C4C7BB0();
    v15 = sub_25C4C8710();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_32;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "### Encrypted received data without security stream";
LABEL_30:
    _os_log_impl(&dword_25C452000, v14, v15, v17, v16, 2u);
    v34 = v16;
LABEL_31:
    MEMORY[0x25F888630](v34, -1, -1);
LABEL_32:

    goto LABEL_33;
  }

  v23 = v22;
  v24 = sub_25C4C7AE0();
  v25 = sub_25C4C7AE0();
  v47 = 0;
  v26 = [v23 decryptData:v24 aadData:v25 error:&v47];

  v27 = v47;
  if (v26)
  {
    v28 = sub_25C4C7AF0();
    v30 = v29;

    sub_25C4A27A4();
    sub_25C45A004(v28, v30);
  }

  else
  {
    v36 = v27;
    v37 = sub_25C4C7A90();

    swift_willThrow();
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v38 = sub_25C4C7BD0();
    __swift_project_value_buffer(v38, qword_27FC0B978);
    v39 = v37;
    v40 = sub_25C4C7BB0();
    v41 = sub_25C4C8710();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v42 = 136315138;
      swift_getErrorValue();
      v44 = sub_25C4C8A30();
      v46 = sub_25C458990(v44, v45, &v47);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_25C452000, v40, v41, "### Decrypt failed: error=%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x25F888630](v43, -1, -1);
      MEMORY[0x25F888630](v42, -1, -1);
    }

    else
    {
    }
  }

LABEL_33:
  if (a6)
  {
    sub_25C4A0B5C();
  }
}

void sub_25C4A1F2C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v76 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A948, &qword_25C4CACA8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (!v26)
    {

      return;
    }

    v27 = v26;
    v28 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
    v29 = *&v25[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection];
    if (!v29 || v26 != v29)
    {
      goto LABEL_43;
    }

    v25[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
    v75 = v28;
    if (a3)
    {
      v30 = 1;
    }

    else
    {
      v31 = sub_25C4C8390();
      v30 = (*(*(v31 - 8) + 48))(v76, 1, v31) != 1;
    }

    if (a2 >> 60 == 15)
    {
LABEL_26:
      if (v30)
      {
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v46 = sub_25C4C7BD0();
        __swift_project_value_buffer(v46, qword_27FC0B978);
        sub_25C4BC9B8(v76, v23, &unk_27FC0A948, &qword_25C4CACA8);
        v47 = sub_25C4C7BB0();
        v48 = sub_25C4C8720();
        if (os_log_type_enabled(v47, v48))
        {
          LODWORD(v72) = v48;
          v49 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v78[0] = v71;
          v74 = v49;
          *v49 = 136315138;
          sub_25C4BC9B8(v23, v21, &unk_27FC0A948, &qword_25C4CACA8);
          v50 = sub_25C4C8390();
          v51 = *(v50 - 8);
          if ((*(v51 + 48))(v21, 1, v50) == 1)
          {
            sub_25C4666F8(v21, &unk_27FC0A948, &qword_25C4CACA8);
            v52 = 0xE300000000000000;
            v53 = 7104878;
          }

          else
          {
            sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
            v53 = sub_25C4C8A30();
            v52 = v54;
            (*(v51 + 8))(v21, v50);
          }

          sub_25C4666F8(v23, &unk_27FC0A948, &qword_25C4CACA8);
          v55 = sub_25C458990(v53, v52, v78);

          v56 = v74;
          *(v74 + 1) = v55;
          _os_log_impl(&dword_25C452000, v47, v72, "Connection ended: during body, error=%s", v56, 0xCu);
          v57 = v71;
          __swift_destroy_boxed_opaque_existential_0(v71);
          MEMORY[0x25F888630](v57, -1, -1);
          MEMORY[0x25F888630](v56, -1, -1);
        }

        else
        {

          sub_25C4666F8(v23, &unk_27FC0A948, &qword_25C4CACA8);
        }

        sub_25C4BC9B8(v76, v18, &unk_27FC0A948, &qword_25C4CACA8);
        v58 = sub_25C4C8390();
        v59 = *(v58 - 8);
        if ((*(v59 + 48))(v18, 1, v58) == 1)
        {
          sub_25C4666F8(v18, &unk_27FC0A948, &qword_25C4CACA8);
        }

        else
        {
          sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
          swift_allocError();
          (*(v59 + 32))(v60, v18, v58);
        }

        v61 = objc_allocWithZone(sub_25C4C7B80());

        v62 = &v25[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
        v63 = swift_beginAccess();
        v64 = *v62;
        if (*v62)
        {
          v65 = *(v62 + 1);

          v64(v66);
          v63 = sub_25C45A2C8(v64);
        }

        if (*&v25[v75])
        {
          v67 = *&v25[v75];

          sub_25C4C82F0();
        }

        sub_25C497DF8(v63);
      }

LABEL_43:

      return;
    }

    LODWORD(v74) = v30;
    sub_25C459FB0(a1, a2);
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v32 = sub_25C4C7BD0();
    __swift_project_value_buffer(v32, qword_27FC0B978);
    sub_25C4BCA3C(a1, a2);
    sub_25C459FB0(a1, a2);
    v33 = sub_25C4C7BB0();
    LODWORD(v71) = sub_25C4C8700();
    v34 = os_log_type_enabled(v33, v71);
    v73 = v27;
    if (!v34)
    {
      sub_25C45A5B8(a1, a2);
      sub_25C45A5B8(a1, a2);

LABEL_25:
      v45 = v74;
      sub_25C4A1A18(a7, a8, a9 & 0xFFFFFFFF000000FFLL, a1, a2, v74 ^ 1);
      sub_25C45A5B8(a1, a2);
      v30 = v45;
      goto LABEL_26;
    }

    v70 = v33;
    v35 = swift_slowAlloc();
    v72 = v35;
    v68 = swift_slowAlloc();
    v77 = v68;
    v78[0] = a1;
    *v35 = 136315394;
    v78[1] = a2;
    sub_25C4BB094();
    v36 = sub_25C4C85C0();
    v69 = sub_25C458990(v36, v37, &v77);

    v38 = v72;
    *(v72 + 1) = v69;
    *(v38 + 6) = 2048;
    v39 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v39 != 2)
      {
        sub_25C45A5B8(a1, a2);
        v40 = 0;
        goto LABEL_24;
      }

      v41 = *(a1 + 16);
      v69 = *(a1 + 24);
      sub_25C45A5B8(a1, a2);
      v40 = v69 - v41;
      if (!__OFSUB__(v69, v41))
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v39)
    {
      sub_25C45A5B8(a1, a2);
      v40 = BYTE6(a2);
LABEL_24:
      v42 = v70;
      v43 = v72;
      *(v72 + 14) = v40;
      sub_25C45A5B8(a1, a2);
      _os_log_impl(&dword_25C452000, v42, v71, "Received frame body: data=<%s>, size=%ld", v43, 0x16u);
      v44 = v68;
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x25F888630](v44, -1, -1);
      MEMORY[0x25F888630](v43, -1, -1);

      goto LABEL_25;
    }

    sub_25C45A5B8(a1, a2);
    LODWORD(v40) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return;
    }

    v40 = v40;
    goto LABEL_24;
  }
}

void sub_25C4A27A4()
{
  v29[4] = *MEMORY[0x277D85DE8];
  v0 = sub_25C4C7AE0();
  v1 = OPACKDecodeNSData(v0);

  if (v1)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
    sub_25C45A550(v29, v28);
    sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
    if (!swift_dynamicCast())
    {
      v9 = objc_allocWithZone(sub_25C4C7B80());
      v10 = sub_25C4C7B90();
      swift_willThrow();
LABEL_20:
      __swift_destroy_boxed_opaque_existential_0(v29);
      goto LABEL_21;
    }

    v2 = v26;
    *&v26 = 1;
    v3 = [v2 __swift_objectForKeyedSubscript:sub_25C4C8A00()];
    swift_unknownObjectRelease();
    if (v3)
    {
      sub_25C4C87E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28[0] = v26;
    v28[1] = v27;
    if (*(&v27 + 1))
    {
      if (swift_dynamicCast())
      {
        v12 = sub_25C4B9BA8(v25);
        if (v12 <= 4)
        {
          if (v12 <= 1)
          {
            sub_25C4A97A0(v2);
          }

          else if (v12 == 2)
          {
            sub_25C4A316C(v2);
          }

          else
          {
            sub_25C4A45B8(v2);
          }

          goto LABEL_38;
        }

        if (v12 <= 7)
        {
          if (v12 == 5)
          {
            sub_25C4A64B0(v2);
          }

          else
          {
            sub_25C4A708C(v2);
          }

          goto LABEL_38;
        }

        if (v12 == 8)
        {
          sub_25C4A871C(v2);
          goto LABEL_38;
        }

        if (v12 == 9)
        {
          sub_25C4A9078(v2);
LABEL_38:
          __swift_destroy_boxed_opaque_existential_0(v29);
          goto LABEL_25;
        }

        *&v28[0] = 0;
        *(&v28[0] + 1) = 0xE000000000000000;
        sub_25C4C88F0();

        *&v28[0] = 0xD00000000000001ALL;
        *(&v28[0] + 1) = 0x800000025C4D1A60;
        v23 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v23);

        v24 = objc_allocWithZone(sub_25C4C7B80());
        goto LABEL_19;
      }
    }

    else
    {
      sub_25C4666F8(v28, &unk_27FC0AA20, &unk_25C4CAD40);
    }

    v13 = objc_allocWithZone(sub_25C4C7B80());
LABEL_19:
    v10 = sub_25C4C7B90();
    swift_willThrow();

    goto LABEL_20;
  }

  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_25C4C88F0();
  MEMORY[0x25F887A50](0xD00000000000001BLL, 0x800000025C4D1A20);
  v4 = CUPrintErrorCode();
  if (v4)
  {
    v5 = v4;
    v6 = sub_25C4C8550();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *&v28[0] = v6;
  *(&v28[0] + 1) = v8;
  sub_25C4C89C0();

  v11 = objc_allocWithZone(sub_25C4C7B80());
  v10 = sub_25C4C7B90();
  swift_willThrow();
LABEL_21:
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v14 = sub_25C4C7BD0();
  __swift_project_value_buffer(v14, qword_27FC0B978);
  v15 = v10;
  v2 = sub_25C4C7BB0();
  v16 = sub_25C4C8710();

  if (!os_log_type_enabled(v2, v16))
  {

    goto LABEL_27;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v29[0] = v18;
  *v17 = 136315138;
  swift_getErrorValue();
  v19 = sub_25C4C8A30();
  v21 = sub_25C458990(v19, v20, v29);

  *(v17 + 4) = v21;
  _os_log_impl(&dword_25C452000, v2, v16, "### Message unencrypted receive failed: error=%s", v17, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v18);
  MEMORY[0x25F888630](v18, -1, -1);
  MEMORY[0x25F888630](v17, -1, -1);

LABEL_25:
LABEL_27:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_25C4A2DA8(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_25C4C7BD0();
  __swift_project_value_buffer(v17, qword_27FC0B978);
  sub_25C459FB0(a1, a2);
  v18 = sub_25C4C7BB0();
  v19 = sub_25C4C86F0();
  if (!os_log_type_enabled(v18, v19))
  {
    sub_25C45A004(a1, a2);

    if ((a4 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v20 = swift_slowAlloc();
  *v20 = 67109632;
  *(v20 + 4) = a3 & 1;
  *(v20 + 8) = 1024;
  *(v20 + 10) = a4 & 1;
  *(v20 + 14) = 2048;
  v21 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      v22 = 0;
    }

LABEL_16:
    *(v20 + 16) = v22;
    v26 = v20;
    sub_25C45A004(a1, a2);
    _os_log_impl(&dword_25C452000, v18, v19, "Pairing received: setup=%{BOOL}d, start=%{BOOL}d, data=%ld bytes", v26, 0x18u);
    MEMORY[0x25F888630](v26, -1, -1);

    if ((a4 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (*(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient))
    {
      v27 = sub_25C4C7BB0();
      v28 = sub_25C4C8710();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "### Ignoring Pairing start received on client";
LABEL_25:
        _os_log_impl(&dword_25C452000, v27, v28, v30, v29, 2u);
        MEMORY[0x25F888630](v29, -1, -1);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks) = mach_absolute_time();
    sub_25C4B3058(a3 & 1);
LABEL_21:
    v31 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
    if (v31)
    {
      v32 = v31;
      v27 = sub_25C4C7AE0();
      [v32 receivedMessageData_];
    }

    else
    {
      v27 = sub_25C4C7BB0();
      v28 = sub_25C4C8710();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "### Pairing received data with no session";
        goto LABEL_25;
      }
    }

LABEL_26:

    return;
  }

  if (!v21)
  {
    v22 = BYTE6(a2);
    goto LABEL_16;
  }

LABEL_13:
  LODWORD(v22) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v22 = v22;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_25C4A316C(void (*a1)(char *, char *, uint64_t))
{
  v174 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v2 = *(v174 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v174);
  v175 = v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (v156 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v156 - v13;
  v15 = sub_25C4C7B20();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v173 = v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v172 = v156 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v180 = (v156 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v179 = v156 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v177 = v156 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v176 = v156 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v182 = v156 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v183 = v156 - v32;
  MEMORY[0x28223BE20](v31);
  v184 = v156 - v33;
  *&v188 = 4;
  v34 = sub_25C4C8A00();
  v185 = a1;
  v35 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v35)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
  }

  v190 = v188;
  v191 = v189;
  if (!*(&v189 + 1))
  {
    sub_25C4666F8(&v190, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_9;
  }

  v168 = v2;
  v169 = v7;
  v36 = swift_dynamicCast();
  v37 = *(v16 + 56);
  v37(v14, v36 ^ 1u, 1, v15);
  v38 = v15;
  v39 = *(v16 + 48);
  if (v39(v14, 1, v38) == 1)
  {
LABEL_9:
    sub_25C4666F8(v14, &qword_27FC0A4B8, &qword_25C4CA200);
    v44 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v171 = v16;
  v40 = v16 + 32;
  v41 = *(v16 + 32);
  v42 = v184;
  v170 = v38;
  v167 = v40;
  v166 = v41;
  v41(v184, v14, v38);
  *&v188 = 2;
  v43 = [v185 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v43)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
  }

  v190 = v188;
  v191 = v189;
  if (!*(&v189 + 1))
  {
    sub_25C4666F8(&v190, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v47 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v171 + 8))(v42, v170);
  }

  v164 = v186;
  v165 = v187;
  *&v188 = 5;
  v46 = [v185 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v46)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
  }

  v190 = v188;
  v191 = v189;
  if (!*(&v189 + 1))
  {

    sub_25C4666F8(&v190, &unk_27FC0AA20, &unk_25C4CAD40);
    v48 = v170;
    v37(v12, 1, 1, v170);
    goto LABEL_22;
  }

  v48 = v170;
  v49 = swift_dynamicCast();
  v37(v12, v49 ^ 1u, 1, v48);
  if (v39(v12, 1, v48) == 1)
  {

LABEL_22:
    sub_25C4666F8(v12, &qword_27FC0A4B8, &qword_25C4CA200);
    v50 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v171 + 8))(v42, v48);
  }

  v51 = v183;
  v166(v183, v12, v48);
  *&v188 = 3;
  v52 = [v185 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v53 = v48;
  v54 = v165;
  if (v52)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
  }

  v55 = v182;
  v190 = v188;
  v191 = v189;
  if (!*(&v189 + 1))
  {

    sub_25C4666F8(&v190, &unk_27FC0AA20, &unk_25C4CAD40);
LABEL_34:
    v80 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    v81 = *(v171 + 8);
    v81(v51, v48);
    return (v81)(v184, v48);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_34;
  }

  v57 = v186;
  v56 = v187;
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v161 = v57;
  v162 = v56;
  v58 = sub_25C4C7BD0();
  v59 = __swift_project_value_buffer(v58, qword_27FC0B978);
  v60 = v171 + 16;
  v61 = *(v171 + 16);
  v61(v55, v51, v53);
  v62 = v176;
  v163 = v60;
  v61(v176, v184, v53);

  v160 = v59;
  v63 = sub_25C4C7BB0();
  v64 = sub_25C4C8720();

  v65 = os_log_type_enabled(v63, v64);
  v185 = v61;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *&v190 = v159;
    *v66 = 136315650;
    *(v66 + 4) = sub_25C458990(v164, v54, &v190);
    *(v66 + 12) = 2080;
    v156[1] = sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v158 = v63;
    v67 = v182;
    v68 = sub_25C4C89A0();
    v69 = v62;
    v71 = v70;
    v157 = v64;
    v72 = *(v171 + 8);
    v72(v67, v53);
    v73 = sub_25C458990(v68, v71, &v190);

    *(v66 + 14) = v73;
    *(v66 + 22) = 2080;
    v74 = sub_25C4C89A0();
    v76 = v75;
    v182 = v72;
    v72(v69, v53);
    v61 = v185;
    v77 = sub_25C458990(v74, v76, &v190);

    *(v66 + 24) = v77;
    v78 = v158;
    _os_log_impl(&dword_25C452000, v158, v157, "Received operation start: operationName=%s, operationUUID=%s, itemUUID=%s", v66, 0x20u);
    v79 = v159;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v79, -1, -1);
    MEMORY[0x25F888630](v66, -1, -1);
  }

  else
  {

    v82 = *(v171 + 8);
    v82(v62, v53);
    v83 = v182;
    v182 = v82;
    v82(v83, v53);
  }

  v84 = v53;
  v176 = type metadata accessor for NXOperationDaemon();
  v85 = v178;
  v87 = *&v178[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID];
  v86 = *&v178[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID + 8];
  v88 = v177;
  v89 = v183;
  v61(v177, v183, v84);

  v90 = v85;
  v91 = v165;

  v92 = sub_25C494B98();
  v94 = sub_25C4BDE5C(v87, v86, v164, v91, v88, v90, v92, v93);
  v95 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  swift_beginAccess();
  v178 = v94;

  v96 = *&v90[v95];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v188 = *&v90[v95];
  *&v90[v95] = 0x8000000000000000;
  sub_25C4B6AAC(v94, v89, isUniquelyReferenced_nonNull_native);
  *&v90[v95] = v188;
  swift_endAccess();
  v98 = swift_allocObject();
  v177 = v90;
  swift_unknownObjectWeakInit();
  v99 = v170;
  v100 = v185;
  v101 = v179;
  v185(v179, v89, v170);
  v102 = v180;
  v100(v180, v184, v99);
  v103 = *(v171 + 80);
  v104 = (v103 + 24) & ~v103;
  v105 = (v17 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v103 + v105 + 16) & ~v103;
  v107 = swift_allocObject();
  *(v107 + 16) = v98;
  v108 = v166;
  v166((v107 + v104), v101, v99);
  v109 = (v107 + v105);
  v110 = v165;
  *v109 = v164;
  v109[1] = v110;
  v108(v107 + v106, v102, v99);
  v111 = v110;

  v112 = v161;
  v113 = v162;
  v114 = v181;
  sub_25C4BE3F0(v161, v162, sub_25C4BCC7C, v107);
  if (v114)
  {

    v115 = v172;
    v116 = v185;
    v185(v172, v183, v99);
    v117 = v173;
    v116(v173, v184, v99);

    v118 = v114;
    v119 = sub_25C4C7BB0();
    v120 = sub_25C4C8710();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = v115;
      v122 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      *&v190 = v181;
      *v122 = 136315906;
      *(v122 + 4) = sub_25C458990(v164, v111, &v190);
      *(v122 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v180 = v119;
      v123 = sub_25C4C89A0();
      v124 = v117;
      v126 = v125;
      LODWORD(v179) = v120;
      v127 = v182;
      (v182)(v121, v170);
      v128 = sub_25C458990(v123, v126, &v190);

      *(v122 + 14) = v128;
      *(v122 + 22) = 2080;
      v99 = v170;
      v129 = sub_25C4C89A0();
      v131 = v130;
      v182 = v127;
      (v127)(v124, v99);
      v132 = v164;
      v133 = sub_25C458990(v129, v131, &v190);

      *(v122 + 24) = v133;
      *(v122 + 32) = 2080;
      swift_getErrorValue();
      v134 = sub_25C4C8A30();
      v136 = sub_25C458990(v134, v135, &v190);

      *(v122 + 34) = v136;
      v137 = v180;
      _os_log_impl(&dword_25C452000, v180, v179, "### Received operation start failed: operationName=%s, operationUUID=%s, itemUUID=%s, error=%s", v122, 0x2Au);
      v138 = v181;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v138, -1, -1);
      MEMORY[0x25F888630](v122, -1, -1);

      v139 = v175;
    }

    else
    {

      v141 = v182;
      (v182)(v117, v99);
      v182 = v141;
      (v141)(v115, v99);
      v139 = v175;
      v132 = v164;
    }

    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F8, &qword_25C4CAC88);
    v143 = *(v142 + 48);
    v144 = *(v142 + 64);
    v145 = v169;
    v146 = v165;
    *v169 = v132;
    v145[1] = v146;
    v185(v145 + v143, v184, v99);
    *(v145 + v144) = v114;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v145, v139, type metadata accessor for NXSessionDaemon.SendItem);
    v147 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    v148 = v177;
    swift_beginAccess();
    v149 = *&v148[v147];
    v150 = v114;
    v151 = swift_isUniquelyReferenced_nonNull_native();
    *&v148[v147] = v149;
    v152 = v183;
    if ((v151 & 1) == 0)
    {
      v149 = sub_25C4B480C(0, v149[2] + 1, 1, v149);
      *&v177[v147] = v149;
    }

    v154 = v149[2];
    v153 = v149[3];
    if (v154 >= v153 >> 1)
    {
      v149 = sub_25C4B480C(v153 > 1, v154 + 1, 1, v149);
    }

    v149[2] = v154 + 1;
    sub_25C4BB0E8(v139, v149 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v154, type metadata accessor for NXSessionDaemon.SendItem);
    *&v177[v147] = v149;
    swift_endAccess();
    sub_25C49CF5C();
    sub_25C45A004(v161, v162);

    sub_25C4BAF14(v169, type metadata accessor for NXSessionDaemon.SendItem);
    v155 = v182;
    (v182)(v152, v99);
    return v155(v184, v99);
  }

  else
  {

    sub_25C45A004(v112, v113);

    v140 = v182;
    (v182)(v183, v99);
    v140(v184, v99);
  }
}

uint64_t sub_25C4A45B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v98 - v4;
  v106 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v105 = *(v106 - 8);
  v6 = *(v105 + 64);
  v7 = MEMORY[0x28223BE20](v106);
  v104 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v102 = &v98 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v98 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v98 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v98 - v18;
  v20 = sub_25C4C7B20();
  v109 = *(v20 - 8);
  v21 = *(v109 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v103 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v101 = &v98 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v98 - v27;
  MEMORY[0x28223BE20](v26);
  v108 = &v98 - v29;
  *&v110 = 4;
  v30 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v30)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v110 = 0u;
    v111 = 0u;
  }

  v112[0] = v110;
  v112[1] = v111;
  v31 = v109;
  if (!*(&v111 + 1))
  {
    sub_25C4666F8(v112, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v31 + 56))(v19, 1, 1, v20);
    goto LABEL_15;
  }

  v32 = swift_dynamicCast();
  (*(v31 + 56))(v19, v32 ^ 1u, 1, v20);
  if ((*(v31 + 48))(v19, 1, v20) == 1)
  {
LABEL_15:
    sub_25C4666F8(v19, &qword_27FC0A4B8, &qword_25C4CA200);
    v60 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v100 = v15;
  v33 = v108;
  (*(v31 + 32))(v108, v19, v20);
  v34 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems;
  v35 = v107;
  swift_beginAccess();
  v36 = *&v35[v34];
  if (*(v36 + 16) && (v37 = sub_25C458F84(v33), (v38 & 1) != 0))
  {
    v39 = *(v36 + 56);
    v99 = v20;
    v40 = v105;
    sub_25C4BACD0(v39 + *(v105 + 72) * v37, v13, type metadata accessor for NXSessionDaemon.OperationItem);
    sub_25C4BB0E8(v13, v100, type metadata accessor for NXSessionDaemon.OperationItem);
    swift_endAccess();
    v41 = *(v31 + 16);
    v41(v28, v33, v99);
    (*(v40 + 56))(v5, 1, 1, v106);
    swift_beginAccess();
    sub_25C495328(v5, v28);
    swift_endAccess();
    *&v112[0] = 0;
    sub_25C4C8500();
    if (*&v112[0] && (v42 = sub_25C4C84F0(), , v43 = CUDecodeNSErrorDictionaryStd(v42), v42, v43))
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v44 = sub_25C4C7BD0();
      __swift_project_value_buffer(v44, qword_27FC0B978);
      v45 = v101;
      v46 = v99;
      v41(v101, v108, v99);
      v47 = v43;
      v48 = sub_25C4C7BB0();
      v49 = sub_25C4C8710();
      v107 = v47;

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v112[0] = v105;
        *v50 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v51 = sub_25C4C89A0();
        v53 = v52;
        v54 = *(v109 + 8);
        v54(v45, v46);
        v55 = sub_25C458990(v51, v53, v112);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2080;
        swift_getErrorValue();
        v56 = sub_25C4C8A30();
        v58 = sub_25C458990(v56, v57, v112);

        *(v50 + 14) = v58;
        _os_log_impl(&dword_25C452000, v48, v49, "### Operation start response error: itemUUID=%s, error=%s", v50, 0x16u);
        v59 = v105;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v59, -1, -1);
        MEMORY[0x25F888630](v50, -1, -1);
      }

      else
      {

        v54 = *(v109 + 8);
        v54(v45, v46);
      }

      v78 = v100;
      v79 = &v100[*(v106 + 28)];
      v81 = *v79;
      v80 = *(v79 + 1);
      v82 = v107;
      v81(v43);

      v69 = v108;
    }

    else
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v64 = sub_25C4C7BD0();
      __swift_project_value_buffer(v64, qword_27FC0B978);
      v65 = v100;
      v66 = v102;
      sub_25C4BACD0(v100, v102, type metadata accessor for NXSessionDaemon.OperationItem);
      v67 = v104;
      sub_25C4BACD0(v65, v104, type metadata accessor for NXSessionDaemon.OperationItem);
      v68 = v103;
      v69 = v108;
      v46 = v99;
      v41(v103, v108, v99);
      v70 = sub_25C4C7BB0();
      v71 = sub_25C4C8720();
      if (os_log_type_enabled(v70, v71))
      {
        LODWORD(v107) = v71;
        v72 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v112[0] = v105;
        *v72 = 136315650;
        v73 = v106;
        v74 = (v66 + *(v106 + 20));
        if (v74[1])
        {
          v75 = *v74;
          v76 = v74[1];
        }

        else
        {
          v76 = 0xE300000000000000;
          v75 = 7104878;
        }

        sub_25C4BAF14(v66, type metadata accessor for NXSessionDaemon.OperationItem);
        v83 = sub_25C458990(v75, v76, v112);

        *(v72 + 4) = v83;
        *(v72 + 12) = 2080;
        v84 = *(v73 + 24);
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v85 = v104;
        v86 = sub_25C4C89A0();
        v88 = v87;
        sub_25C4BAF14(v85, type metadata accessor for NXSessionDaemon.OperationItem);
        v89 = sub_25C458990(v86, v88, v112);

        *(v72 + 14) = v89;
        *(v72 + 22) = 2080;
        v90 = v103;
        v91 = sub_25C4C89A0();
        v93 = v92;
        v54 = *(v109 + 8);
        v54(v90, v46);
        v94 = sub_25C458990(v91, v93, v112);

        *(v72 + 24) = v94;
        _os_log_impl(&dword_25C452000, v70, v107, "Received operation start response: operationName=%s, operationUUID=%s, itemUUID=%s", v72, 0x20u);
        v95 = v105;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v95, -1, -1);
        MEMORY[0x25F888630](v72, -1, -1);

        v69 = v108;
      }

      else
      {

        v77 = v66;
        v54 = *(v109 + 8);
        v54(v68, v46);
        sub_25C4BAF14(v67, type metadata accessor for NXSessionDaemon.OperationItem);
        sub_25C4BAF14(v77, type metadata accessor for NXSessionDaemon.OperationItem);
        v73 = v106;
      }

      v78 = v100;
      v96 = &v100[*(v73 + 28)];
      v97 = *(v96 + 1);
      (*v96)(0);
    }

    v54(v69, v46);
    return sub_25C4BAF14(v78, type metadata accessor for NXSessionDaemon.OperationItem);
  }

  else
  {
    swift_endAccess();
    *&v112[0] = 0;
    *(&v112[0] + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&v112[0] = 0xD000000000000024;
    *(&v112[0] + 1) = 0x800000025C4D1B60;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v62 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v62);

    v63 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v31 + 8))(v33, v20);
  }
}

uint64_t sub_25C4A5274(void (*a1)(char *, char *, uint64_t))
{
  v153 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v155 = *(v153 - 8);
  v2 = *(v155 + 64);
  v3 = MEMORY[0x28223BE20](v153);
  v154 = v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v156 = v140 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v140 - v11;
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v157 = v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v152 = v140 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v159 = v140 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v158 = v140 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v163 = v140 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v161 = v140 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v140 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v140 - v30;
  *&v168 = 4;
  v32 = sub_25C4C8A00();
  v165 = a1;
  v33 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v33)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v168 = 0u;
    v169 = 0u;
  }

  v170 = v168;
  v171 = v169;
  if (!*(&v169 + 1))
  {
    sub_25C4666F8(&v170, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  v151 = v29;
  v164 = v31;
  v34 = swift_dynamicCast();
  v35 = *(v14 + 56);
  v35(v12, v34 ^ 1u, 1, v13);
  v36 = v13;
  v37 = *(v14 + 48);
  if (v37(v12, 1, v36) == 1)
  {
LABEL_9:
    sub_25C4666F8(v12, &qword_27FC0A4B8, &qword_25C4CA200);
    v40 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v150 = v14;
  v38 = *(v14 + 32);
  v149 = v36;
  v148 = v38;
  v38(v164, v12, v36);
  *&v168 = 5;
  v39 = [v165 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v39)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v168 = 0u;
    v169 = 0u;
  }

  v170 = v168;
  v171 = v169;
  if (!*(&v169 + 1))
  {
    sub_25C4666F8(&v170, &unk_27FC0AA20, &unk_25C4CAD40);
    v42 = v149;
    v35(v10, 1, 1, v149);
    goto LABEL_16;
  }

  v42 = v149;
  v43 = swift_dynamicCast();
  v35(v10, v43 ^ 1u, 1, v42);
  if (v37(v10, 1, v42) == 1)
  {
LABEL_16:
    sub_25C4666F8(v10, &qword_27FC0A4B8, &qword_25C4CA200);
    v46 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v150 + 8))(v164, v42);
  }

  v148(v151, v10, v42);
  *&v168 = 3;
  v44 = [v165 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v45 = v164;
  if (v44)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v168 = 0u;
    v169 = 0u;
  }

  v47 = v163;
  v170 = v168;
  v171 = v169;
  if (!*(&v169 + 1))
  {
    sub_25C4666F8(&v170, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_27;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v79 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    v80 = *(v150 + 8);
    v80(v151, v42);
    return (v80)(v45, v42);
  }

  v48 = v166;
  v49 = v167;
  v50 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  v51 = v162;
  swift_beginAccess();
  v52 = *(v51 + v50);
  if (*(v52 + 16) && (v53 = sub_25C458F84(v151), (v54 & 1) != 0))
  {
    v147 = v49;
    v55 = *(*(v52 + 56) + 8 * v53);
    swift_endAccess();
    v56 = qword_27FC0B970;
    v145 = v55;

    if (v56 != -1)
    {
      swift_once();
    }

    v146 = v48;
    v57 = sub_25C4C7BD0();
    v58 = __swift_project_value_buffer(v57, qword_27FC0B978);
    v59 = (v150 + 16);
    v60 = *(v150 + 16);
    v61 = v161;
    v60(v161, v151, v42);
    v60(v47, v45, v42);
    v144 = v58;
    v62 = sub_25C4C7BB0();
    v143 = sub_25C4C8720();
    v63 = os_log_type_enabled(v62, v143);
    v165 = v60;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *&v170 = v142;
      *v64 = 136315394;
      v140[1] = sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v141 = v62;
      v65 = sub_25C4C89A0();
      v67 = v66;
      v68 = *(v150 + 8);
      v68(v61, v42);
      v69 = sub_25C458990(v65, v67, &v170);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2080;
      v70 = v163;
      v71 = sub_25C4C89A0();
      v72 = v42;
      v74 = v73;
      v163 = v68;
      v68(v70, v72);
      v60 = v165;
      v75 = sub_25C458990(v71, v74, &v170);

      *(v64 + 14) = v75;
      v76 = v141;
      _os_log_impl(&dword_25C452000, v141, v143, "Received operation update: operationUUID=%s, itemUUID=%s", v64, 0x16u);
      v77 = v142;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v77, -1, -1);
      v78 = v164;
      MEMORY[0x25F888630](v64, -1, -1);
    }

    else
    {

      v86 = *(v150 + 8);
      v86(v47, v42);
      v163 = v86;
      v86(v161, v42);
      v78 = v45;
    }

    v87 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v88 = v158;
    v89 = v149;
    v60(v158, v151, v149);
    v90 = v60;
    v91 = v159;
    v90(v159, v78, v89);
    v92 = *(v150 + 80);
    v93 = (v92 + 24) & ~v92;
    v94 = (v15 + v92 + v93) & ~v92;
    v95 = swift_allocObject();
    *(v95 + 16) = v87;
    v96 = v95 + v93;
    v97 = v148;
    v148(v96, v88, v89);
    v97(v95 + v94, v91, v89);

    v98 = v146;
    v99 = v147;
    v100 = v160;
    sub_25C4C1D5C(v146, v147, sub_25C4BCD9C, v95);
    if (v100)
    {

      v101 = v152;
      v102 = v165;
      v165(v152, v151, v149);
      v103 = v157;
      v104 = v164;
      v161 = v59;
      v102(v157);
      v105 = v100;
      v106 = sub_25C4C7BB0();
      v107 = sub_25C4C8710();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *&v170 = v160;
        *v108 = 136315650;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v109 = v149;
        v110 = sub_25C4C89A0();
        v112 = v111;
        LODWORD(v159) = v107;
        v113 = v101;
        v114 = v163;
        (v163)(v113, v109);
        v115 = sub_25C458990(v110, v112, &v170);

        *(v108 + 4) = v115;
        *(v108 + 12) = 2080;
        v116 = v157;
        v117 = sub_25C4C89A0();
        v119 = v118;
        v114(v116, v109);
        v120 = sub_25C458990(v117, v119, &v170);

        *(v108 + 14) = v120;
        *(v108 + 22) = 2080;
        v104 = v164;
        swift_getErrorValue();
        v121 = sub_25C4C8A30();
        v123 = sub_25C458990(v121, v122, &v170);

        *(v108 + 24) = v123;
        _os_log_impl(&dword_25C452000, v106, v159, "### Received operation update failed: operationUUID=%s, itemUUID=%s, error=%s", v108, 0x20u);
        v124 = v160;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v124, -1, -1);
        MEMORY[0x25F888630](v108, -1, -1);
      }

      else
      {

        v109 = v149;
        v127 = v163;
        (v163)(v103, v149);
        v127(v101, v109);
      }

      v128 = v162;
      v129 = v156;
      v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48);
      v165(v129, v104, v109);
      *(v129 + v130) = v100;
      swift_storeEnumTagMultiPayload();
      v131 = v154;
      sub_25C4BACD0(v129, v154, type metadata accessor for NXSessionDaemon.SendItem);
      v132 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
      swift_beginAccess();
      v133 = *(v128 + v132);
      v134 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v128 + v132) = v133;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v133 = sub_25C4B480C(0, v133[2] + 1, 1, v133);
        *(v128 + v132) = v133;
      }

      v137 = v133[2];
      v136 = v133[3];
      if (v137 >= v136 >> 1)
      {
        v133 = sub_25C4B480C(v136 > 1, v137 + 1, 1, v133);
      }

      v133[2] = v137 + 1;
      sub_25C4BB0E8(v131, v133 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v137, type metadata accessor for NXSessionDaemon.SendItem);
      *(v128 + v132) = v133;
      swift_endAccess();
      sub_25C49CF5C();

      sub_25C45A004(v146, v147);

      sub_25C4BAF14(v129, type metadata accessor for NXSessionDaemon.SendItem);
      v138 = v149;
      v139 = v163;
      (v163)(v151, v149);
      return v139(v104, v138);
    }

    else
    {

      sub_25C45A004(v98, v99);
      v125 = v149;
      v126 = v163;
      (v163)(v151, v149);
      v126(v164, v125);
    }
  }

  else
  {
    swift_endAccess();
    *&v170 = 0;
    *(&v170 + 1) = 0xE000000000000000;
    sub_25C4C88F0();
    MEMORY[0x25F887A50](0xD000000000000035, 0x800000025C4D1C10);
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v81 = v45;
    v82 = v151;
    v83 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v83);

    v84 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    sub_25C45A004(v48, v49);
    v85 = *(v150 + 8);
    v85(v82, v42);
    return (v85)(v81, v42);
  }
}

uint64_t sub_25C4A64B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v93 - v4;
  v99 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v98 = *(v99 - 8);
  v6 = *(v98 + 64);
  v7 = MEMORY[0x28223BE20](v99);
  v97 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v93 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v93 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v93 - v16;
  v18 = sub_25C4C7B20();
  v102 = *(v18 - 8);
  v19 = *(v102 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v96 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v95 = &v93 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v93 - v25;
  MEMORY[0x28223BE20](v24);
  v101 = &v93 - v27;
  *&v103 = 4;
  v28 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
  }

  v105[0] = v103;
  v105[1] = v104;
  v29 = v102;
  if (!*(&v104 + 1))
  {
    sub_25C4666F8(v105, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v29 + 56))(v17, 1, 1, v18);
    goto LABEL_15;
  }

  v30 = swift_dynamicCast();
  (*(v29 + 56))(v17, v30 ^ 1u, 1, v18);
  if ((*(v29 + 48))(v17, 1, v18) == 1)
  {
LABEL_15:
    sub_25C4666F8(v17, &qword_27FC0A4B8, &qword_25C4CA200);
    v62 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v94 = v13;
  v31 = v101;
  (*(v29 + 32))(v101, v17, v18);
  v32 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems;
  v33 = v100;
  swift_beginAccess();
  v34 = *(v33 + v32);
  if (*(v34 + 16) && (v35 = sub_25C458F84(v31), (v36 & 1) != 0))
  {
    v37 = *(v34 + 56);
    v93 = a1;
    v38 = v98;
    sub_25C4BACD0(v37 + *(v98 + 72) * v35, v11, type metadata accessor for NXSessionDaemon.OperationItem);
    sub_25C4BB0E8(v11, v94, type metadata accessor for NXSessionDaemon.OperationItem);
    swift_endAccess();
    v39 = v31;
    v40 = *(v29 + 16);
    v40(v26, v39, v18);
    (*(v38 + 56))(v5, 1, 1, v99);
    swift_beginAccess();
    sub_25C495328(v5, v26);
    swift_endAccess();
    *&v105[0] = 0;
    sub_25C4C8500();
    if (*&v105[0] && (v41 = sub_25C4C84F0(), , v42 = CUDecodeNSErrorDictionaryStd(v41), v41, v42))
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v43 = sub_25C4C7BD0();
      __swift_project_value_buffer(v43, qword_27FC0B978);
      v44 = v95;
      v45 = v101;
      v40(v95, v101, v18);
      v46 = v42;
      v47 = sub_25C4C7BB0();
      v48 = sub_25C4C8710();
      v100 = v46;

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v105[0] = v98;
        *v49 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v50 = sub_25C4C89A0();
        v52 = v51;
        v53 = *(v102 + 8);
        v53(v44, v18);
        v54 = sub_25C458990(v50, v52, v105);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2080;
        v55 = v100;
        swift_getErrorValue();
        v56 = sub_25C4C8A30();
        v58 = sub_25C458990(v56, v57, v105);

        *(v49 + 14) = v58;
        _os_log_impl(&dword_25C452000, v47, v48, "### Operation update response error: itemUUID=%s, error=%s", v49, 0x16u);
        v59 = v98;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v59, -1, -1);
        v60 = v49;
        v45 = v101;
        MEMORY[0x25F888630](v60, -1, -1);

        v61 = v99;
      }

      else
      {

        v53 = *(v102 + 8);
        v53(v44, v18);
        v61 = v99;
        v55 = v100;
      }

      v88 = v94;
      v89 = &v94[*(v61 + 28)];
      v91 = *v89;
      v90 = *(v89 + 1);
      v92 = v55;
      v91(v42);
      v85 = v88;
    }

    else
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v66 = sub_25C4C7BD0();
      __swift_project_value_buffer(v66, qword_27FC0B978);
      v67 = v97;
      sub_25C4BACD0(v94, v97, type metadata accessor for NXSessionDaemon.OperationItem);
      v68 = v96;
      v45 = v101;
      v40(v96, v101, v18);
      v69 = sub_25C4C7BB0();
      v70 = sub_25C4C8720();
      v71 = os_log_type_enabled(v69, v70);
      v72 = v99;
      if (v71)
      {
        v73 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v105[0] = v100;
        *v73 = 136315394;
        v74 = *(v99 + 24);
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v75 = v68;
        v76 = sub_25C4C89A0();
        v78 = v77;
        sub_25C4BAF14(v67, type metadata accessor for NXSessionDaemon.OperationItem);
        v79 = sub_25C458990(v76, v78, v105);

        *(v73 + 4) = v79;
        *(v73 + 12) = 2080;
        v80 = sub_25C4C89A0();
        v82 = v81;
        v53 = *(v102 + 8);
        v53(v75, v18);
        v83 = sub_25C458990(v80, v82, v105);

        *(v73 + 14) = v83;
        v72 = v99;
        _os_log_impl(&dword_25C452000, v69, v70, "Received operation update response: operationUUID=%s, itemUUID=%s", v73, 0x16u);
        v84 = v100;
        swift_arrayDestroy();
        v45 = v101;
        MEMORY[0x25F888630](v84, -1, -1);
        MEMORY[0x25F888630](v73, -1, -1);
      }

      else
      {

        v53 = *(v102 + 8);
        v53(v68, v18);
        sub_25C4BAF14(v67, type metadata accessor for NXSessionDaemon.OperationItem);
      }

      v85 = v94;
      v86 = &v94[*(v72 + 28)];
      v87 = *(v86 + 1);
      (*v86)(0);
    }

    v53(v45, v18);
    return sub_25C4BAF14(v85, type metadata accessor for NXSessionDaemon.OperationItem);
  }

  else
  {
    swift_endAccess();
    *&v105[0] = 0;
    *(&v105[0] + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&v105[0] = 0xD000000000000025;
    *(&v105[0] + 1) = 0x800000025C4D1C80;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v64 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v64);

    v65 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v29 + 8))(v31, v18);
  }
}

uint64_t sub_25C4A708C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v102 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v85 - v6;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v100 = v85 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v99 = v85 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v98 = v85 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v85 - v19;
  MEMORY[0x28223BE20](v18);
  v107 = v85 - v21;
  *&v103 = 4;
  v22 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
  }

  v105 = v103;
  v106 = v104;
  if (!*(&v104 + 1))
  {
    sub_25C4666F8(&v105, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_9;
  }

  v95 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v20;
  v23 = swift_dynamicCast();
  v24 = *(v9 + 56);
  v24(v7, v23 ^ 1u, 1, v8);
  v25 = *(v9 + 48);
  if (v25(v7, 1, v8) == 1)
  {
LABEL_9:
    sub_25C4666F8(v7, &qword_27FC0A4B8, &qword_25C4CA200);
    v30 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v96 = v9;
  v26 = v9 + 32;
  v27 = *(v9 + 32);
  v28 = v107;
  v93 = v26;
  v94 = v8;
  v92 = v27;
  v27(v107, v7, v8);
  *&v103 = 5;
  v29 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v29)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
  }

  v32 = v102;
  v105 = v103;
  v106 = v104;
  if (!*(&v104 + 1))
  {
    sub_25C4666F8(&v105, &unk_27FC0AA20, &unk_25C4CAD40);
    v68 = v94;
    v24(v32, 1, 1, v94);
    v35 = v68;
    goto LABEL_20;
  }

  v33 = v94;
  v34 = swift_dynamicCast();
  v24(v32, v34 ^ 1u, 1, v33);
  v35 = v33;
  if (v25(v32, 1, v33) == 1)
  {
LABEL_20:
    sub_25C4666F8(v32, &qword_27FC0A4B8, &qword_25C4CA200);
    v69 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v96 + 8))(v28, v35);
  }

  v36 = v97;
  v92(v97, v32, v33);
  v37 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  v38 = v101;
  swift_beginAccess();
  v39 = *(v38 + v37);
  v40 = v96;
  if (*(v39 + 16) && (v41 = sub_25C458F84(v36), (v42 & 1) != 0))
  {
    v43 = *(*(v39 + 56) + 8 * v41);
    swift_endAccess();
    v44 = qword_27FC0B970;
    v102 = v43;

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = sub_25C4C7BD0();
    __swift_project_value_buffer(v45, qword_27FC0B978);
    v46 = v40;
    v47 = *(v40 + 16);
    v48 = v98;
    v47(v98, v97, v35);
    v49 = v99;
    v91 = v47;
    v47(v99, v107, v35);
    v50 = sub_25C4C7BB0();
    v51 = sub_25C4C8720();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v48;
      v53 = swift_slowAlloc();
      v86 = v53;
      v89 = swift_slowAlloc();
      *&v105 = v89;
      *v53 = 136315394;
      v54 = sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v88 = v51;
      v85[1] = v54;
      v87 = v50;
      v55 = v52;
      v56 = sub_25C4C89A0();
      v58 = v57;
      v59 = *(v46 + 8);
      v90 = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v59(v55, v35);
      v60 = sub_25C458990(v56, v58, &v105);

      v61 = v86;
      *(v86 + 1) = v60;
      *(v61 + 6) = 2080;
      v62 = sub_25C4C89A0();
      v64 = v63;
      v99 = v59;
      v59(v49, v35);
      v65 = sub_25C458990(v62, v64, &v105);

      *(v61 + 14) = v65;
      v66 = v87;
      _os_log_impl(&dword_25C452000, v87, v88, "Received operation cancel: operationUUID=%s, itemUUID=%s", v61, 0x16u);
      v67 = v89;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v67, -1, -1);
      MEMORY[0x25F888630](v61, -1, -1);
    }

    else
    {

      v73 = *(v46 + 8);
      v90 = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v73(v49, v35);
      v99 = v73;
      v73(v48, v35);
    }

    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = v100;
    v76 = v91;
    v91(v100, v97, v35);
    v77 = v95;
    v78 = v107;
    v76(v95, v107, v35);
    v79 = *(v96 + 80);
    v80 = (v79 + 24) & ~v79;
    v81 = (v10 + v79 + v80) & ~v79;
    v82 = swift_allocObject();
    *(v82 + 16) = v74;
    v83 = v92;
    v92((v82 + v80), v75, v35);
    v83(v82 + v81, v77, v35);

    sub_25C4C23B0(sub_25C4BCEA0, v82);

    v84 = v99;
    (v99)(v97, v35);
    v84(v78, v35);
  }

  else
  {
    swift_endAccess();
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_25C4C88F0();
    MEMORY[0x25F887A50](0xD000000000000035, 0x800000025C4D1D00);
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v70 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v70);

    v71 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    v72 = *(v40 + 8);
    v72(v36, v33);
    return (v72)(v28, v33);
  }
}

uint64_t sub_25C4A7B40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v93 - v4;
  v99 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v98 = *(v99 - 8);
  v6 = *(v98 + 64);
  v7 = MEMORY[0x28223BE20](v99);
  v97 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v93 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v93 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v93 - v16;
  v18 = sub_25C4C7B20();
  v102 = *(v18 - 8);
  v19 = *(v102 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v96 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v95 = &v93 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v93 - v25;
  MEMORY[0x28223BE20](v24);
  v101 = &v93 - v27;
  *&v103 = 4;
  v28 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
  }

  v105[0] = v103;
  v105[1] = v104;
  v29 = v102;
  if (!*(&v104 + 1))
  {
    sub_25C4666F8(v105, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v29 + 56))(v17, 1, 1, v18);
    goto LABEL_15;
  }

  v30 = swift_dynamicCast();
  (*(v29 + 56))(v17, v30 ^ 1u, 1, v18);
  if ((*(v29 + 48))(v17, 1, v18) == 1)
  {
LABEL_15:
    sub_25C4666F8(v17, &qword_27FC0A4B8, &qword_25C4CA200);
    v62 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v94 = v13;
  v31 = v101;
  (*(v29 + 32))(v101, v17, v18);
  v32 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems;
  v33 = v100;
  swift_beginAccess();
  v34 = *(v33 + v32);
  if (*(v34 + 16) && (v35 = sub_25C458F84(v31), (v36 & 1) != 0))
  {
    v37 = *(v34 + 56);
    v93 = a1;
    v38 = v98;
    sub_25C4BACD0(v37 + *(v98 + 72) * v35, v11, type metadata accessor for NXSessionDaemon.OperationItem);
    sub_25C4BB0E8(v11, v94, type metadata accessor for NXSessionDaemon.OperationItem);
    swift_endAccess();
    v39 = v31;
    v40 = *(v29 + 16);
    v40(v26, v39, v18);
    (*(v38 + 56))(v5, 1, 1, v99);
    swift_beginAccess();
    sub_25C495328(v5, v26);
    swift_endAccess();
    *&v105[0] = 0;
    sub_25C4C8500();
    if (*&v105[0] && (v41 = sub_25C4C84F0(), , v42 = CUDecodeNSErrorDictionaryStd(v41), v41, v42))
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v43 = sub_25C4C7BD0();
      __swift_project_value_buffer(v43, qword_27FC0B978);
      v44 = v95;
      v45 = v101;
      v40(v95, v101, v18);
      v46 = v42;
      v47 = sub_25C4C7BB0();
      v48 = sub_25C4C8710();
      v100 = v46;

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v105[0] = v98;
        *v49 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v50 = sub_25C4C89A0();
        v52 = v51;
        v53 = *(v102 + 8);
        v53(v44, v18);
        v54 = sub_25C458990(v50, v52, v105);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2080;
        v55 = v100;
        swift_getErrorValue();
        v56 = sub_25C4C8A30();
        v58 = sub_25C458990(v56, v57, v105);

        *(v49 + 14) = v58;
        _os_log_impl(&dword_25C452000, v47, v48, "### Operation cancel response error: itemUUID=%s, error=%s", v49, 0x16u);
        v59 = v98;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v59, -1, -1);
        v60 = v49;
        v45 = v101;
        MEMORY[0x25F888630](v60, -1, -1);

        v61 = v99;
      }

      else
      {

        v53 = *(v102 + 8);
        v53(v44, v18);
        v61 = v99;
        v55 = v100;
      }

      v88 = v94;
      v89 = &v94[*(v61 + 28)];
      v91 = *v89;
      v90 = *(v89 + 1);
      v92 = v55;
      v91(v42);
      v85 = v88;
    }

    else
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v66 = sub_25C4C7BD0();
      __swift_project_value_buffer(v66, qword_27FC0B978);
      v67 = v97;
      sub_25C4BACD0(v94, v97, type metadata accessor for NXSessionDaemon.OperationItem);
      v68 = v96;
      v45 = v101;
      v40(v96, v101, v18);
      v69 = sub_25C4C7BB0();
      v70 = sub_25C4C8720();
      v71 = os_log_type_enabled(v69, v70);
      v72 = v99;
      if (v71)
      {
        v73 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v105[0] = v100;
        *v73 = 136315394;
        v74 = *(v99 + 24);
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v75 = v68;
        v76 = sub_25C4C89A0();
        v78 = v77;
        sub_25C4BAF14(v67, type metadata accessor for NXSessionDaemon.OperationItem);
        v79 = sub_25C458990(v76, v78, v105);

        *(v73 + 4) = v79;
        *(v73 + 12) = 2080;
        v80 = sub_25C4C89A0();
        v82 = v81;
        v53 = *(v102 + 8);
        v53(v75, v18);
        v83 = sub_25C458990(v80, v82, v105);

        *(v73 + 14) = v83;
        v72 = v99;
        _os_log_impl(&dword_25C452000, v69, v70, "Received operation cancel response: operationUUID=%s, itemUUID=%s", v73, 0x16u);
        v84 = v100;
        swift_arrayDestroy();
        v45 = v101;
        MEMORY[0x25F888630](v84, -1, -1);
        MEMORY[0x25F888630](v73, -1, -1);
      }

      else
      {

        v53 = *(v102 + 8);
        v53(v68, v18);
        sub_25C4BAF14(v67, type metadata accessor for NXSessionDaemon.OperationItem);
      }

      v85 = v94;
      v86 = &v94[*(v72 + 28)];
      v87 = *(v86 + 1);
      (*v86)(0);
    }

    v53(v45, v18);
    return sub_25C4BAF14(v85, type metadata accessor for NXSessionDaemon.OperationItem);
  }

  else
  {
    swift_endAccess();
    *&v105[0] = 0;
    *(&v105[0] + 1) = 0xE000000000000000;
    sub_25C4C88F0();
    MEMORY[0x25F887A50](0xD000000000000034, 0x800000025C4D1D70);
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v64 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v64);

    v65 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v29 + 8))(v31, v18);
  }
}

uint64_t sub_25C4A871C(void *a1)
{
  v3 = sub_25C4C7E50();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v59 - v11;
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v68 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v59 - v18;
  *&v75 = 5;
  v19 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
  }

  v77 = v75;
  v78 = v76;
  if (!*(&v76 + 1))
  {
    sub_25C4666F8(&v77, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  v20 = swift_dynamicCast();
  (*(v14 + 56))(v12, v20 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_9:
    sub_25C4666F8(v12, &qword_27FC0A4B8, &qword_25C4CA200);
    v22 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  (*(v14 + 32))(v79, v12, v13);
  *&v75 = 6;
  v21 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
  }

  v24 = v72;
  v25 = v7;
  v77 = v75;
  v78 = v76;
  if (!*(&v76 + 1))
  {
    sub_25C4666F8(&v77, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v29 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v14 + 8))(v79, v13);
  }

  v27 = v73;
  v26 = v74;
  v28 = v71;
  sub_25C4C7E20();
  if (v28)
  {
    (*(v14 + 8))(v79, v13);
    return sub_25C45A004(v27, v26);
  }

  else
  {
    v30 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
    swift_beginAccess();
    v31 = *(v1 + v30);
    if (*(v31 + 16) && (v32 = sub_25C458F84(v79), (v33 & 1) != 0))
    {
      v34 = *(*(v31 + 56) + 8 * v32);
      swift_endAccess();
      v35 = qword_27FC0B970;
      v71 = v34;

      if (v35 != -1)
      {
        swift_once();
      }

      v36 = sub_25C4C7BD0();
      __swift_project_value_buffer(v36, qword_27FC0B978);
      (*(v14 + 16))(v68, v79, v13);
      v37 = v69;
      (*(v69 + 16))(v25, v24, v70);
      v38 = sub_25C4C7BB0();
      v66 = sub_25C4C8720();
      if (os_log_type_enabled(v38, v66))
      {
        v39 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v77 = v65;
        *v39 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v64 = v38;
        v40 = v68;
        v60 = sub_25C4C89A0();
        v61 = v25;
        v42 = v41;
        v63 = *(v14 + 8);
        v67 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v63(v40, v13);
        v43 = sub_25C458990(v60, v42, &v77);

        v62 = v39;
        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        sub_25C4B8B3C(&unk_27FC0AA60, MEMORY[0x277D35798]);
        v44 = v61;
        v45 = v70;
        v46 = sub_25C4C89A0();
        v48 = v47;
        v69 = *(v37 + 8);
        (v69)(v44, v45);
        v49 = sub_25C458990(v46, v48, &v77);
        v50 = v63;

        v51 = v62;
        *(v62 + 14) = v49;
        v52 = v64;
        _os_log_impl(&dword_25C452000, v64, v66, "Received operation event: operationUUID=%s, event=%s", v51, 0x16u);
        v53 = v65;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v53, -1, -1);
        MEMORY[0x25F888630](v51, -1, -1);

        v54 = v70;
      }

      else
      {

        v54 = v70;
        v69 = *(v37 + 8);
        (v69)(v25, v70);
        v50 = *(v14 + 8);
        v67 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v50(v68, v13);
      }

      v58 = v72;
      sub_25C4BF5EC(v72);

      sub_25C45A004(v27, v26);
      (v69)(v58, v54);
      return (v50)(v79, v13);
    }

    else
    {
      swift_endAccess();
      *&v77 = 0;
      *(&v77 + 1) = 0xE000000000000000;
      sub_25C4C88F0();
      MEMORY[0x25F887A50](0xD000000000000034, 0x800000025C4D1E10);
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v55 = v79;
      v56 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v56);

      v57 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      sub_25C45A004(v27, v26);
      (*(v69 + 8))(v24, v70);
      return (*(v14 + 8))(v55, v13);
    }
  }
}

uint64_t sub_25C4A9078(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v43[-v5];
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v48 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v55 = &v43[-v12];
  *&v51 = 5;
  v13 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    sub_25C4666F8(&v53, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_11;
  }

  v14 = swift_dynamicCast();
  (*(v8 + 56))(v6, v14 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_11:
    sub_25C4666F8(v6, &qword_27FC0A4B8, &qword_25C4CA200);
    v22 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v15 = v55;
  (*(v8 + 32))(v55, v6, v7);
  v16 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (!*(v17 + 16) || (v18 = sub_25C458F84(v15), (v19 & 1) == 0))
  {
    swift_endAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_25C4C88F0();
    MEMORY[0x25F887A50](0xD00000000000003DLL, 0x800000025C4D1E80);
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v24 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v24);

    v25 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v8 + 8))(v15, v7);
  }

  v20 = *(*(v17 + 56) + 8 * v18);
  swift_endAccess();
  *&v51 = 3;

  v21 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v26 = v48;
  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    sub_25C4666F8(&v53, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v40 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();

    return (*(v8 + 8))(v55, v7);
  }

  v47 = v50;
  v48 = v49;
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v27 = sub_25C4C7BD0();
  __swift_project_value_buffer(v27, qword_27FC0B978);
  (*(v8 + 16))(v26, v55, v7);
  v28 = sub_25C4C7BB0();
  v29 = sub_25C4C8720();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v45 = v30;
    v46 = swift_slowAlloc();
    *&v53 = v46;
    *v30 = 136315138;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v44 = v29;
    v31 = sub_25C4C89A0();
    v32 = v26;
    v34 = v33;
    v35 = *(v8 + 8);
    v35(v32, v7);
    v36 = sub_25C458990(v31, v34, &v53);

    v37 = v45;
    *(v45 + 1) = v36;
    v38 = v37;
    _os_log_impl(&dword_25C452000, v28, v44, "Received operation provider event: operationUUID=%s", v37, 0xCu);
    v39 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F888630](v39, -1, -1);
    MEMORY[0x25F888630](v38, -1, -1);
  }

  else
  {

    v35 = *(v8 + 8);
    v35(v26, v7);
  }

  v42 = v47;
  v41 = v48;
  sub_25C4C00CC(v48, v47);
  sub_25C45A004(v41, v42);

  return (v35)(v55, v7);
}

uint64_t sub_25C4A97A0(void *a1)
{
  v107 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v108 = *(v107 - 8);
  v2 = *(v108 + 64);
  v3 = MEMORY[0x28223BE20](v107);
  v112 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v113 = (v96 - v5);
  v115 = sub_25C4C7E00();
  v6 = *(v115 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v115);
  v110 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v96 - v11;
  v13 = sub_25C4C7B20();
  v117 = *(v13 - 8);
  v14 = *(v117 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v106 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v109 = v96 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v96 - v19;
  MEMORY[0x28223BE20](v18);
  v116 = v96 - v21;
  *&v120 = 4;
  v22 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v120 = 0u;
    v121 = 0u;
  }

  v122 = v120;
  v123 = v121;
  v23 = v117;
  if (!*(&v121 + 1))
  {
    sub_25C4666F8(&v122, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v23 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  v24 = swift_dynamicCast();
  (*(v23 + 56))(v12, v24 ^ 1u, 1, v13);
  if ((*(v23 + 48))(v12, 1, v13) == 1)
  {
LABEL_9:
    sub_25C4666F8(v12, &qword_27FC0A4B8, &qword_25C4CA200);
    v26 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v105 = *(v23 + 32);
  v105(v116, v12, v13);
  *&v120 = 2;
  v25 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v25)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v120 = 0u;
    v121 = 0u;
  }

  v122 = v120;
  v123 = v121;
  v28 = v116;
  if (!*(&v121 + 1))
  {
    sub_25C4666F8(&v122, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v31 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v117 + 8))(v28, v13);
  }

  v29 = v119;
  v104 = v118;
  *&v120 = 3;
  v30 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v30)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v120 = 0u;
    v121 = 0u;
  }

  v32 = v6;
  v122 = v120;
  v123 = v121;
  v33 = v29;
  if (!*(&v121 + 1))
  {

    sub_25C4666F8(&v122, &unk_27FC0AA20, &unk_25C4CAD40);
    v35 = v116;
LABEL_26:
    v51 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v117 + 8))(v35, v13);
  }

  v34 = swift_dynamicCast();
  v35 = v116;
  if ((v34 & 1) == 0)
  {

    goto LABEL_26;
  }

  v99 = v118;
  v100 = v119;
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v36 = sub_25C4C7BD0();
  v37 = __swift_project_value_buffer(v36, qword_27FC0B978);
  v38 = *(v117 + 16);
  v101 = v117 + 16;
  v102 = v38;
  v38(v20, v35, v13);

  v96[1] = v37;
  v39 = sub_25C4C7BB0();
  v40 = sub_25C4C8720();

  v41 = os_log_type_enabled(v39, v40);
  v103 = v33;
  v97 = v32;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *&v122 = v96[0];
    *v42 = 136315394;
    *(v42 + 4) = sub_25C458990(v104, v33, &v122);
    *(v42 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v43 = v40;
    v44 = sub_25C4C89A0();
    v46 = v45;
    v98 = *(v117 + 8);
    v98(v20, v13);
    v47 = sub_25C458990(v44, v46, &v122);

    *(v42 + 14) = v47;
    v48 = v43;
    v32 = v97;
    _os_log_impl(&dword_25C452000, v39, v48, "Received request: requestName=%s, requestUUID=%s", v42, 0x16u);
    v49 = v96[0];
    swift_arrayDestroy();
    MEMORY[0x25F888630](v49, -1, -1);
    v50 = v42;
    v35 = v116;
    MEMORY[0x25F888630](v50, -1, -1);
  }

  else
  {

    v98 = *(v117 + 8);
    v98(v20, v13);
  }

  v52 = v114;
  v53 = v110;
  v110 = *(v114 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon);
  v54 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageContext;
  swift_beginAccess();
  (*(v32 + 16))(v53, v52 + v54, v115);
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = v109;
  v102(v109, v35, v13);
  v57 = (*(v117 + 80) + 40) & ~*(v117 + 80);
  v58 = swift_allocObject();
  v59 = v104;
  *(v58 + 2) = v55;
  *(v58 + 3) = v59;
  v60 = v103;
  *(v58 + 4) = v103;
  v105(&v58[v57], v56, v13);

  v61 = sub_25C4880B8() & 1;
  v62 = v99;
  v63 = v100;
  v64 = v111;
  sub_25C4892D0(v59, v60, v99, v100, v53, v61, sub_25C4BD038, v58);
  if (v64)
  {
    (*(v97 + 8))(v53, v115);

    v65 = v106;
    v66 = v116;
    (v102)(v106);
    v67 = v103;

    v68 = v64;
    v69 = sub_25C4C7BB0();
    v70 = sub_25C4C8710();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = v65;
      v72 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *&v120 = v115;
      *v72 = 136315650;
      *(v72 + 4) = sub_25C458990(v104, v67, &v120);
      *(v72 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v73 = sub_25C4C89A0();
      v75 = v74;
      v98(v71, v13);
      v76 = sub_25C458990(v73, v75, &v120);

      *(v72 + 14) = v76;
      *(v72 + 22) = 2080;
      swift_getErrorValue();
      v77 = sub_25C4C8A30();
      v79 = sub_25C458990(v77, v78, &v120);

      *(v72 + 24) = v79;
      v80 = v116;
      _os_log_impl(&dword_25C452000, v69, v70, "### Request failed: requestName=%s, requestUUID=%s, error=%s", v72, 0x20u);
      v81 = v115;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v81, -1, -1);
      v82 = v72;
      v83 = v104;
      MEMORY[0x25F888630](v82, -1, -1);

      v84 = v114;
    }

    else
    {

      v98(v65, v13);
      v84 = v114;
      v83 = v104;
      v80 = v66;
    }

    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8E8, &qword_25C4CAC78);
    v86 = *(v85 + 48);
    v87 = v113;
    v88 = v113 + *(v85 + 64);
    v89 = v103;
    *v113 = v83;
    v87[1] = v89;
    v102(v87 + v86, v80, v13);
    *v88 = v64;
    *(v88 + 1) = 0;
    v88[16] = 1;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v87, v112, type metadata accessor for NXSessionDaemon.SendItem);
    v90 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v91 = *(v84 + v90);
    v92 = v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v84 + v90) = v91;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v91 = sub_25C4B480C(0, v91[2] + 1, 1, v91);
      *(v84 + v90) = v91;
    }

    v95 = v91[2];
    v94 = v91[3];
    if (v95 >= v94 >> 1)
    {
      v91 = sub_25C4B480C(v94 > 1, v95 + 1, 1, v91);
    }

    v91[2] = v95 + 1;
    sub_25C4BB0E8(v112, v91 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v95, type metadata accessor for NXSessionDaemon.SendItem);
    *(v84 + v90) = v91;
    swift_endAccess();
    sub_25C49CF5C();
    sub_25C45A004(v99, v100);

    sub_25C4BAF14(v113, type metadata accessor for NXSessionDaemon.SendItem);
    return (v98)(v80, v13);
  }

  else
  {

    sub_25C45A004(v62, v63);

    (*(v97 + 8))(v53, v115);
    v98(v116, v13);
  }
}

uint64_t sub_25C4AA6F0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v93 - v6;
  v8 = sub_25C4C7B20();
  v102 = *(v8 - 8);
  v9 = *(v102 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v93 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v100 = &v93 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v93 - v19;
  MEMORY[0x28223BE20](v18);
  v101 = &v93 - v21;
  *&v105 = 4;
  v22 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
  }

  v107 = v105;
  v108 = v106;
  v23 = v102;
  if (!*(&v106 + 1))
  {
    sub_25C4666F8(&v107, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v23 + 56))(v7, 1, 1, v8);
    goto LABEL_15;
  }

  v24 = swift_dynamicCast();
  (*(v23 + 56))(v7, v24 ^ 1u, 1, v8);
  if ((*(v23 + 48))(v7, 1, v8) == 1)
  {
LABEL_15:
    sub_25C4666F8(v7, &qword_27FC0A4B8, &qword_25C4CA200);
    v53 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v99 = v12;
  v25 = v101;
  (*(v23 + 32))(v101, v7, v8);
  v26 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (!*(v27 + 16) || (v28 = sub_25C458F84(v25), (v29 & 1) == 0))
  {
    swift_endAccess();
    *&v107 = 0;
    *(&v107 + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&v107 = 0xD00000000000001FLL;
    *(&v107 + 1) = 0x800000025C4D1F20;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v55 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v55);

    v56 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v23 + 8))(v25, v8);
  }

  v94 = v15;
  v30 = (*(v27 + 56) + 32 * v28);
  v31 = v30[1];
  v93 = *v30;
  v32 = v30[3];
  v96 = v30[2];
  swift_endAccess();
  v95 = *(v23 + 16);
  v95(v20, v25, v8);
  swift_beginAccess();
  v98 = v31;

  v97 = v32;

  sub_25C495548(0, 0, 0, 0, v20);
  swift_endAccess();
  *&v107 = 0;
  sub_25C4C8500();
  if (!v107 || (v33 = sub_25C4C84F0(), , v34 = CUDecodeNSErrorDictionaryStd(v33), v33, !v34))
  {
    *&v105 = 3;
    v57 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v57)
    {
      sub_25C4C87E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v105 = 0u;
      v106 = 0u;
    }

    v58 = v101;
    v107 = v105;
    v108 = v106;
    v59 = v99;
    if (*(&v106 + 1))
    {
      if (swift_dynamicCast())
      {
        v60 = v103;
        v61 = v104;
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v62 = sub_25C4C7BD0();
        __swift_project_value_buffer(v62, qword_27FC0B978);
        v63 = v94;
        v95(v94, v58, v8);
        v64 = v98;

        v65 = sub_25C4C7BB0();
        v66 = sub_25C4C8720();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          *&v107 = v100;
          *v67 = 136315394;

          v68 = sub_25C458990(v93, v64, &v107);
          LODWORD(v99) = v66;
          v69 = v68;

          *(v67 + 4) = v69;
          *(v67 + 12) = 2080;
          sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
          v70 = sub_25C4C89A0();
          v71 = v8;
          v73 = v72;
          v74 = *(v102 + 8);
          v75 = v63;
          v76 = v71;
          v74(v75, v71);
          v77 = sub_25C458990(v70, v73, &v107);

          *(v67 + 14) = v77;
          _os_log_impl(&dword_25C452000, v65, v99, "Received response: requestName=%s, requestUUID=%s", v67, 0x16u);
          v78 = v100;
          swift_arrayDestroy();
          MEMORY[0x25F888630](v78, -1, -1);
          v79 = v67;
          v58 = v101;
          MEMORY[0x25F888630](v79, -1, -1);

          v52 = v74;
          v8 = v76;
        }

        else
        {

          v52 = *(v102 + 8);
          v52(v63, v8);
        }

        sub_25C459FB0(v60, v61);
        v96(v60, v61, 0);
        sub_25C45A004(v60, v61);

        sub_25C45A004(v60, v61);
        return (v52)(v58, v8);
      }
    }

    else
    {
      sub_25C4666F8(&v107, &unk_27FC0AA20, &unk_25C4CAD40);
    }

    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v80 = sub_25C4C7BD0();
    __swift_project_value_buffer(v80, qword_27FC0B978);
    v95(v59, v58, v8);
    v81 = sub_25C4C7BB0();
    v82 = sub_25C4C8710();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v107 = v84;
      *v83 = 136315138;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v85 = sub_25C4C89A0();
      v87 = v86;
      v100 = v8;
      v88 = *(v102 + 8);
      v88(v59, v100);
      v89 = sub_25C458990(v85, v87, &v107);

      *(v83 + 4) = v89;
      _os_log_impl(&dword_25C452000, v81, v82, "### No response data: requestUUID=%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      v58 = v101;
      MEMORY[0x25F888630](v84, -1, -1);
      MEMORY[0x25F888630](v83, -1, -1);

      v52 = v88;
      v8 = v100;
    }

    else
    {

      v52 = *(v102 + 8);
      v52(v59, v8);
    }

    v90 = objc_allocWithZone(sub_25C4C7B80());
    v91 = sub_25C4C7B90();
    v96(v91, 0, 1);

    return (v52)(v58, v8);
  }

  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v35 = sub_25C4C7BD0();
  __swift_project_value_buffer(v35, qword_27FC0B978);
  v36 = v100;
  v95(v100, v101, v8);
  v37 = v34;
  v38 = sub_25C4C7BB0();
  v39 = sub_25C4C8710();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v107 = v99;
    *v40 = 136315394;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    LODWORD(v95) = v39;
    v41 = sub_25C4C89A0();
    v42 = v36;
    v44 = v43;
    v45 = *(v102 + 8);
    v45(v42, v8);
    v46 = sub_25C458990(v41, v44, &v107);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2080;
    swift_getErrorValue();
    v47 = sub_25C4C8A30();
    v49 = sub_25C458990(v47, v48, &v107);

    *(v40 + 14) = v49;
    _os_log_impl(&dword_25C452000, v38, v95, "### Response error: requestUUID=%s, error=%s", v40, 0x16u);
    v50 = v99;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v50, -1, -1);
    v51 = v40;
    v52 = v45;
    MEMORY[0x25F888630](v51, -1, -1);
  }

  else
  {

    v52 = *(v102 + 8);
    v52(v36, v8);
  }

  v92 = v37;
  v96(v34, 0, 1);

  v58 = v101;
  return (v52)(v58, v8);
}

uint64_t sub_25C4AB4CC(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v76 = a4;
  v77 = a6;
  v72 = a3;
  v73 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v75 = *(v73 - 8);
  v8 = *(v75 + 64);
  v9 = MEMORY[0x28223BE20](v73);
  v74 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v63[-v11];
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v63[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v63[-v22];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    if (a1)
    {
      v68 = v12;
      v69 = v18;
      v71 = a5;
      v26 = v14[2];
      v70 = (v14 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v27 = v72;
      v26(v23, v72, v13);
      swift_beginAccess();
      v28 = a1;
      sub_25C495840(0, v23);
      swift_endAccess();
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v29 = sub_25C4C7BD0();
      __swift_project_value_buffer(v29, qword_27FC0B978);
      v26(v21, v27, v13);
      v30 = v69;
      v26(v69, v77, v13);
      v31 = a1;
      a5 = v71;

      v32 = sub_25C4C7BB0();
      v33 = sub_25C4C8710();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v67 = v26;
        v35 = v30;
        v36 = v34;
        v66 = swift_slowAlloc();
        v78[0] = v66;
        *v36 = 136315906;
        *(v36 + 4) = sub_25C458990(v76, a5, v78);
        *(v36 + 12) = 2080;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v65 = v32;
        v64 = v33;
        v37 = sub_25C4C89A0();
        v39 = v38;
        v72 = a1;
        v40 = v14[1];
        v40(v21, v13);
        v41 = sub_25C458990(v37, v39, v78);

        *(v36 + 14) = v41;
        *(v36 + 22) = 2080;
        v42 = sub_25C4C89A0();
        v44 = v43;
        v40(v35, v13);
        a1 = v72;
        v45 = sub_25C458990(v42, v44, v78);
        a5 = v71;

        *(v36 + 24) = v45;
        *(v36 + 32) = 2080;
        swift_getErrorValue();
        v46 = sub_25C4C8A30();
        v48 = sub_25C458990(v46, v47, v78);

        *(v36 + 34) = v48;
        v49 = v65;
        _os_log_impl(&dword_25C452000, v65, v64, "### Received operation start completion failed: operationName=%s, operationUUID=%s, itemUUID=%s, error=%s", v36, 0x2Au);
        v50 = v66;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v50, -1, -1);
        v26 = v67;
        MEMORY[0x25F888630](v36, -1, -1);
      }

      else
      {

        v51 = v14[1];
        v51(v30, v13);
        v51(v21, v13);
      }

      v12 = v68;
    }

    else
    {
      v26 = v14[2];
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F8, &qword_25C4CAC88);
    v53 = *(v52 + 48);
    v54 = *(v52 + 64);
    v55 = v77;
    *v12 = v76;
    v12[1] = a5;
    v26(v12 + v53, v55, v13);
    *(v12 + v54) = a1;
    swift_storeEnumTagMultiPayload();
    v56 = v74;
    sub_25C4BACD0(v12, v74, type metadata accessor for NXSessionDaemon.SendItem);
    v57 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v58 = *&v25[v57];
    v59 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25[v57] = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v58 = sub_25C4B480C(0, v58[2] + 1, 1, v58);
      *&v25[v57] = v58;
    }

    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_25C4B480C(v61 > 1, v62 + 1, 1, v58);
    }

    v58[2] = v62 + 1;
    sub_25C4BB0E8(v56, v58 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v62, type metadata accessor for NXSessionDaemon.SendItem);
    *&v25[v57] = v58;
    swift_endAccess();
    sub_25C49CF5C();

    return sub_25C4BAF14(v12, type metadata accessor for NXSessionDaemon.SendItem);
  }

  return result;
}