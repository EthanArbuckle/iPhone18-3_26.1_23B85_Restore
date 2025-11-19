void sub_24A592F00(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24A592F60()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24A592FAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24A593064()
{
  v1 = v0 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_24A5930B4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A593120(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A5931C0;
}

void sub_24A5931C0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

char *FMPrecisionConnectionManager.init(findables:connectionContext:arSession:)(uint64_t a1, char *a2, void *a3)
{
  v6 = *a2;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession) = 0;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF4E9C8 != -1)
  {
    swift_once();
  }

  v8 = qword_27EF5C218;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_nearbyInteractionManager) = qword_27EF5C218;
  swift_beginAccess();
  v9 = *(v3 + v7);
  *(v3 + v7) = a3;
  v10 = v8;
  v11 = a3;

  LOBYTE(v27) = v6;
  v12 = sub_24A509448(a1, &v27);
  v13 = qword_27EF4E998;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_24A62E314();
  sub_24A506EB8(v15, qword_27EF5C100);
  v16 = sub_24A62E2F4();
  v17 = sub_24A62EF64();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    v20 = *&v14[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers];

    v22 = MEMORY[0x24C21A690](v21, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_24A509BA8(v22, v24, &v27);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_24A503000, v16, v17, "FMPrecisionConnectionManager: initialized for items: %s", v18, 0xCu);
    sub_24A508C54(v19);
    MEMORY[0x24C21BBE0](v19, -1, -1);
    MEMORY[0x24C21BBE0](v18, -1, -1);
  }

  return v14;
}

uint64_t sub_24A5934F4()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    v5 = os_log_type_enabled(v3, v4);
    v38 = v2;
    if (v5)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      v8 = MEMORY[0x24C21A690](*(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers), MEMORY[0x277D837D0]);
      v10 = sub_24A509BA8(v8, v9, aBlock);
      v2 = v38;

      *(v6 + 4) = v10;
      _os_log_impl(&dword_24A503000, v3, v4, "FMPrecisionConnectionManager: requesting connection for items: %s", v6, 0xCu);
      sub_24A508C54(v7);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables);
    v12 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    v13 = *(v11 + 16);
    if (!v13)
    {
      break;
    }

    v37 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_nearbyInteractionManager;
    v36 = OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_connectionContext;
    v14 = v11 + 32;
    v35 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
    swift_beginAccess();
    v34[1] = v42;
    while (1)
    {
      v39 = v13;
      v15 = sub_24A508AE4(v14, v44);
      v40 = v34;
      v16 = v38;
      v17 = v37;
      v18 = *(v38 + v37);
      v19 = (*(v38 + v36) << 8) | 0xFFFFC001;
      v20 = *(v38 + v35);
      v21 = *&v18[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      MEMORY[0x28223BE20](v15);
      v34[-6] = v18;
      v34[-5] = v20;
      v34[-4] = v44;
      LOWORD(v34[-3]) = v22;
      v34[-2] = v16;
      v34[-1] = &off_285DA68C0;
      type metadata accessor for FMNearbyInteractionManagerSubscription();
      v23 = v18;
      v24 = v20;
      sub_24A62F024();

      v25 = *(v16 + v17);
      v26 = *&v25[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      sub_24A508AE4(v44, v43);
      v0 = swift_allocObject();
      sub_24A508CA0(v43, (v0 + 2));
      v0[7] = v25;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_24A594B48;
      *(v27 + 24) = v0;
      v42[2] = sub_24A5493F0;
      v42[3] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v42[0] = sub_24A592ED8;
      v42[1] = &unk_285DA6820;
      v28 = _Block_copy(aBlock);
      v29 = v25;

      dispatch_sync(v26, v28);
      _Block_release(v28);
      sub_24A508C54(v44);

      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        break;
      }

      MEMORY[0x24C21A660](v30);
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      v14 += 40;
      v13 = v39 - 1;
      if (v39 == 1)
      {
        v12 = v45;
        v2 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_11:
  v32 = *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions);
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions) = v12;
}

void sub_24A5939DC()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x24C21A690](*&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers], MEMORY[0x277D837D0]);
      v9 = sub_24A509BA8(v7, v8, aBlock);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_24A503000, v3, v4, "FMPrecisionConnectionManager: requesting disconnection for items: %s", v5, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions];
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v25 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions];
      }

      v26 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions];
      v27 = sub_24A62F464();
      v10 = v26;
      v11 = v27;
      if (!v27)
      {
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }
    }

    if (v11 < 1)
    {
      break;
    }

    v29 = v10 & 0xC000000000000001;
    v30 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_nearbyInteractionManager;
    v12 = v10;

    v13 = v12;
    v14 = 0;
    v28 = v12;
    while (1)
    {
      v0 = v11;
      v15 = v29 ? MEMORY[0x24C21ACB0](v14, v13) : *(v13 + 8 * v14 + 32);
      v16 = v15;
      v17 = v2;
      v18 = *&v2[v30];
      v19 = *&v18[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v16;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_24A55B77C;
      *(v21 + 24) = v20;
      aBlock[4] = sub_24A59502C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A592ED8;
      aBlock[3] = &unk_285DA6898;
      v22 = _Block_copy(aBlock);
      v23 = v18;
      v24 = v16;

      dispatch_sync(v19, v22);

      _Block_release(v22);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        break;
      }

      v14 = v14 + 1;
      v11 = v0;
      v2 = v17;
      v13 = v28;
      if (v0 == v14)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  __break(1u);
}

void sub_24A593D68(void *a1)
{
  v2 = v1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C118);
  v5 = sub_24A62E2F4();
  v6 = sub_24A62EF34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMPrecisionConnectionManager: Updating location for local device", v7, 2u);
    MEMORY[0x24C21BBE0](v7, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions);
  if (v8 >> 62)
  {
    v9 = sub_24A62F464();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v8 & 0xC000000000000001;

    v10 = 0;
    v28 = v8;
    v29 = a1;
    v30 = v9;
    do
    {
      if (v31)
      {
        v11 = MEMORY[0x24C21ACB0](v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = Strong;
        v16 = a1;
        v17 = sub_24A62E2F4();
        v18 = sub_24A62EF34();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412546;
          *(v19 + 4) = v15;
          *v20 = v14;
          *(v19 + 12) = 2112;
          v21 = v15;
          v22 = sub_24A608A14();
          *(v19 + 14) = v22;
          v20[1] = v22;
          _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1NIContxt%@: Updating local device location: %@", v19, 0x16u);
          sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
          swift_arrayDestroy();
          v23 = v20;
          v8 = v28;
          MEMORY[0x24C21BBE0](v23, -1, -1);
          v24 = v19;
          a1 = v29;
          MEMORY[0x24C21BBE0](v24, -1, -1);
        }

        v25 = *&v15[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
        if (v25)
        {
          v26 = [v25 findingNotifier];
          v27 = sub_24A608A14();
          [v26 notifyUpdatedLocationForLocalDevice_];

          v15 = v26;
          v12 = v27;
        }

        v9 = v30;
      }

      ++v10;
    }

    while (v9 != v10);
  }
}

void sub_24A5940C8(void *a1)
{
  v2 = v1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C118);
  v5 = sub_24A62E2F4();
  v6 = sub_24A62EF34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMPrecisionConnectionManager: Updating heading for local device", v7, 2u);
    MEMORY[0x24C21BBE0](v7, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions);
  if (v8 >> 62)
  {
    v9 = sub_24A62F464();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C21ACB0](i, v8);
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_24A5613AC(a1);
      }
    }
  }
}

void sub_24A59429C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v11 = sub_24A62E314();
  sub_24A506EB8(v11, qword_27EF5C118);
  sub_24A508AE4(a1, v36);
  v12 = sub_24A62E2F4();
  v13 = sub_24A62EF34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136315138;
    v34 = v3;
    v35 = v15;
    v16 = v37;
    v17 = v38;
    sub_24A50A204(v36, v37);
    v18 = *(v17 + 16);
    v32 = v13;
    v18(v16, v17);
    sub_24A594C30();
    v19 = sub_24A62F614();
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    sub_24A508C54(v36);
    v22 = sub_24A509BA8(v19, v21, &v35);
    v3 = v34;

    *(v14 + 4) = v22;
    _os_log_impl(&dword_24A503000, v12, v32, "🧭 FMPrecisionConnectionManager: Updating location for findable: %s", v14, 0xCu);
    v23 = v33;
    sub_24A508C54(v33);
    MEMORY[0x24C21BBE0](v23, -1, -1);
    MEMORY[0x24C21BBE0](v14, -1, -1);
  }

  else
  {

    sub_24A508C54(v36);
  }

  v24 = *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions);
  if (v24 >> 62)
  {
    v25 = sub_24A62F464();
    if (!v25)
    {
      return;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      return;
    }
  }

  if (v25 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x24C21ACB0](i, v24);
      }

      else
      {
        v27 = *(v24 + 8 * i + 32);
      }

      v28 = v27;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        sub_24A561788(a1, a2);
      }
    }
  }
}

uint64_t sub_24A5945D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions);

  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;

  return sub_24A52358C(v2);
}

id FMPrecisionConnectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPrecisionConnectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A5946D0(unsigned __int8 a1)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C100);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    *v6 = 136315138;
    v10 = 0xE500000000000000;
    v11 = 0x7964616572;
    v12 = 0xE500000000000000;
    v13 = 0x726F727265;
    if (a1 != 3)
    {
      v13 = 0x666F206574617473;
      v12 = 0xE900000000000066;
    }

    if (a1 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a1)
    {
      v9 = 0x6461657220746F6ELL;
      v8 = 0xE900000000000079;
    }

    if (a1 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (a1 <= 1u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_24A509BA8(v14, v15, &v23);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_24A503000, v4, v5, "FMPrecisionConnectionManager: entered state: %s", v6, 0xCu);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  if (a1)
  {
    v17 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v1, a1 == 2, 0, ObjectType, v18);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_24A62E2F4();
    v20 = sub_24A62EF64();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A503000, oslog, v20, "FMPrecisionConnectionManager: ignoring unknown state, waiting for a decision to be made before forwarding.", v21, 2u);
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }
  }
}

uint64_t sub_24A5949CC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, 0, a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A594A68(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, (a1 & 1) == 0, 0, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A594B08()
{
  sub_24A508C54((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A594B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A594B7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A594BBC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_24A594C30()
{
  result = qword_27EF4F660;
  if (!qword_27EF4F660)
  {
    sub_24A62E214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F660);
  }

  return result;
}

id sub_24A594CAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24A594D18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A594D74(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

id sub_24A595034(unsigned __int16 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDotNode;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for FMPFSKBTRangeDotNode()) init];
  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_findingType] = v3;
  v15 = v3;
  v5 = objc_allocWithZone(type metadata accessor for FMPFSKBTLevelsNode());
  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_levelRingsNode] = sub_24A61D674(&v15);
  v6 = type metadata accessor for FMPFSKBTRangeDiskNode();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_sizeSpring;
  *&v7[v8] = sub_24A5B1B2C(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v9 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring;
  *&v7[v9] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v7[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_findingType] = v3;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  sub_24A5D8B2C();

  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDiskNode] = v10;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for FMPFSKBTRangingNode();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_24A59522C();

  return v11;
}

void sub_24A59522C()
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A635FE0;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDiskNode];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_levelRingsNode];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDotNode];
  *(inited + 48) = v4;
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C21ACB0](v8, inited);
      goto LABEL_5;
    }

    if (v8 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v9 = *(inited + 8 * v8 + 32);
LABEL_5:
    v10 = v9;
    ++v8;
    [v0 addChild_];
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_24A6339F0;
    v12 = objc_opt_self();
    v13 = [objc_opt_self() rangeWithConstantValue_];
    v14 = [v12 distance:v13 toNode:v0];

    *(v11 + 32) = v14;
    sub_24A595564();
    v15 = sub_24A62ED54();

    [v10 setConstraints_];

    if (v8 == 3)
    {
      swift_setDeallocating();
      v16 = *(inited + 16);
      swift_arrayDestroy();
      return;
    }
  }

  __break(1u);
}

void sub_24A595460()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_levelRingsNode);
}

id sub_24A5954B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKBTRangingNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A595564()
{
  result = qword_27EF4F940;
  if (!qword_27EF4F940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF4F940);
  }

  return result;
}

id sub_24A5955B0()
{
  result = [objc_allocWithZone(type metadata accessor for FMR1ProximityManager()) init];
  qword_27EF5C210 = result;
  return result;
}

id sub_24A5955E4()
{
  v0 = objc_allocWithZone(type metadata accessor for FMNearbyInteractionManager());
  result = sub_24A562A7C(0);
  qword_27EF5C218 = result;
  return result;
}

uint64_t FMFindableObject.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMFindableObject.findingIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMFindableObject() + 20);
  v4 = sub_24A62E214();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FMFindableObject()
{
  result = qword_27EF509A0;
  if (!qword_27EF509A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id FMFindableObject.findingProductType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMFindableObject() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(v3 + 24);
  *(a1 + 24) = v7;

  return sub_24A595770(v4, v5, v6, v7);
}

id sub_24A595770(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v5 = result;

    return v5;
  }

  return result;
}

uint64_t FMFindableObject.findingType.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for FMFindableObject();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t FMFindableObject.videoInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFindableObject() + 32));
  v4 = v3[6];
  v6 = v3[4];
  v19 = v3[5];
  v5 = v19;
  v20 = v4;
  v7 = v3[4];
  v9 = v3[2];
  v17 = v3[3];
  v8 = v17;
  v18 = v7;
  v10 = v3[1];
  v16[0] = *v3;
  v11 = v3[2];
  v12 = *v3;
  v16[1] = v3[1];
  v16[2] = v11;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *a1 = v12;
  *(a1 + 16) = v10;
  v13 = v3[6];
  *(a1 + 80) = v5;
  *(a1 + 96) = v13;
  v21 = *(v3 + 14);
  *(a1 + 112) = *(v3 + 14);
  *(a1 + 64) = v6;
  return sub_24A595890(v16, v15);
}

id FMFindableObject.discoveryToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFindableObject() + 36));

  return v1;
}

__n128 FMFindableObject.init(name:findingIdentifier:findingTechnology:findingProductType:videoInfo:discoveryToken:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v60 = a7;
  v57 = a2;
  v14 = sub_24A62E214();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  v20 = *a5;
  v55 = *(a5 + 8);
  v56 = v20;
  v54 = *(a5 + 16);
  v21 = *(a5 + 24);
  v22 = *(a6 + 80);
  v80 = *(a6 + 64);
  v81 = v22;
  v82 = *(a6 + 96);
  v23 = *(a6 + 16);
  v76 = *a6;
  v77 = v23;
  v24 = *(a6 + 48);
  v78 = *(a6 + 32);
  v79 = v24;
  v25 = *(a6 + 112);
  v58 = v15;
  v59 = a3;
  v26 = *(v15 + 16);
  v27 = a3;
  v29 = v28;
  v26(v18, v27, v28);
  v30 = v57;
  *a8 = a1;
  a8[1] = v30;
  v31 = type metadata accessor for FMFindableObject();
  v32 = a8 + v31[5];
  v57 = v18;
  v33 = v18;
  v34 = v29;
  v35 = v29;
  v36 = v55;
  v26(v32, v33, v35);
  v37 = v54;
  v38 = v56;
  v39 = v31;
  v40 = a8 + v31[6];
  *v40 = v56;
  *(v40 + 1) = v36;
  *(v40 + 2) = v37;
  v40[24] = v21;
  *(a8 + v31[7]) = v19 | 0x4000;
  if (!v25)
  {
    if (v21)
    {
      v41 = v37;
      if (v21 == 1)
      {
        v42 = qword_27EF4E9D8;
        v43 = v38;

        if (v42 != -1)
        {
          swift_once();
        }

        v72 = xmmword_27EF50B00;
        v73 = unk_27EF50B10;
        v74 = xmmword_27EF50B20;
        v75 = qword_27EF50B30;
        v68 = xmmword_27EF50AC0;
        v69 = *&dword_27EF50AD0;
        v70 = xmmword_27EF50AE0;
        v71 = *&qword_27EF50AF0;
        sub_24A595890(&v68, &v61);
        sub_24A55B284(v38, v36, v41, 1);
        goto LABEL_19;
      }

      if (v37 | v36 | v38)
      {
        if (qword_27EF4E9D0 != -1)
        {
          swift_once();
        }

        v44 = &xmmword_27EF50A48;
      }

      else
      {
        if (qword_27EF4E9E0 != -1)
        {
          swift_once();
        }

        v44 = &xmmword_27EF50B38;
      }
    }

    else
    {
      if (qword_27EF4E9F0 != -1)
      {
        swift_once();
      }

      v44 = &xmmword_27EF50C28;
    }

    v45 = v44[5];
    v72 = v44[4];
    v73 = v45;
    v74 = v44[6];
    v75 = *(v44 + 14);
    v46 = v44[1];
    v68 = *v44;
    v69 = v46;
    v47 = v44[3];
    v70 = v44[2];
    v71 = v47;
    sub_24A595890(&v68, &v61);
LABEL_19:
    v65 = v72;
    v66 = v73;
    v67 = v74;
    v61 = v68;
    v62 = v69;
    v63 = v70;
    v64 = v71;
    v25 = v75;
    goto LABEL_20;
  }

  v65 = v80;
  v66 = v81;
  v67 = v82;
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v64 = v79;
LABEL_20:
  v48 = *(v58 + 8);
  v48(v59, v34);
  v48(v57, v34);
  v49 = a8 + v39[8];
  v50 = v66;
  *(v49 + 4) = v65;
  *(v49 + 5) = v50;
  *(v49 + 6) = v67;
  v51 = v62;
  *v49 = v61;
  *(v49 + 1) = v51;
  result = v64;
  *(v49 + 2) = v63;
  *(v49 + 3) = result;
  *(v49 + 14) = v25;
  *(a8 + v39[9]) = v60;
  return result;
}

__n128 FMFindableObject.init(name:findingIdentifier:findingType:findingProductType:videoInfo:discoveryToken:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v10 = a8;
  v37 = *a4;
  v12 = *a5;
  v11 = *(a5 + 8);
  v13 = *(a5 + 16);
  v14 = *(a5 + 24);
  v15 = *(a6 + 112);
  *a8 = a1;
  a8[1] = a2;
  v16 = type metadata accessor for FMFindableObject();
  v17 = v16[5];
  v18 = sub_24A62E214();
  v38 = *(v18 - 8);
  v19 = v10 + v17;
  v20 = a3;
  v21 = v18;
  (*(v38 + 16))(v19, v20, v18);
  v22 = v10 + v16[6];
  *v22 = v12;
  *(v22 + 1) = v11;
  *(v22 + 2) = v13;
  v22[24] = v14;
  *(v10 + v16[7]) = v37;
  if (v15)
  {
    v23 = *(a6 + 80);
    v44 = *(a6 + 64);
    v45 = v23;
    v46 = *(a6 + 96);
    v24 = *(a6 + 16);
    v40 = *a6;
    v41 = v24;
    v25 = *(a6 + 48);
    v42 = *(a6 + 32);
    v43 = v25;
    goto LABEL_19;
  }

  if (!v14)
  {
    if (qword_27EF4E9F0 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_27EF50C28;
    goto LABEL_18;
  }

  if (v14 != 1)
  {
    if (v13 | v11 | v12)
    {
      if (qword_27EF4E9D0 != -1)
      {
        swift_once();
      }

      v29 = &xmmword_27EF50A48;
    }

    else
    {
      if (qword_27EF4E9E0 != -1)
      {
        swift_once();
      }

      v29 = &xmmword_27EF50B38;
    }

LABEL_18:
    v30 = v29[5];
    v51 = v29[4];
    v52 = v30;
    v53 = v29[6];
    v54 = *(v29 + 14);
    v31 = v29[1];
    v47 = *v29;
    v48 = v31;
    v32 = v29[3];
    v49 = v29[2];
    v50 = v32;
    sub_24A595890(&v47, &v40);
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v40 = v47;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v15 = v54;
    goto LABEL_19;
  }

  v26 = v10;
  v27 = qword_27EF4E9D8;
  v28 = v12;

  if (v27 != -1)
  {
    swift_once();
  }

  v51 = xmmword_27EF50B00;
  v52 = unk_27EF50B10;
  v53 = xmmword_27EF50B20;
  v54 = qword_27EF50B30;
  v47 = xmmword_27EF50AC0;
  v48 = *&dword_27EF50AD0;
  v49 = xmmword_27EF50AE0;
  v50 = *&qword_27EF50AF0;
  sub_24A595890(&v47, &v40);
  sub_24A55B284(v12, v11, v13, 1);
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v43 = v50;
  v15 = v54;
  v10 = v26;
LABEL_19:
  (*(v38 + 8))(v20, v21);
  v33 = v10 + v16[8];
  v34 = v45;
  *(v33 + 4) = v44;
  *(v33 + 5) = v34;
  *(v33 + 6) = v46;
  v35 = v41;
  *v33 = v40;
  *(v33 + 1) = v35;
  result = v43;
  *(v33 + 2) = v42;
  *(v33 + 3) = result;
  *(v33 + 14) = v15;
  *(v10 + v16[9]) = a7;
  return result;
}

uint64_t FMFindableObject.supportedFindingTechnologies.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFindableObject() + 28));
  v2 = (v1 >> 13) & 3;
  sub_24A508FA4(&qword_27EF50998, &qword_24A6377F0);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = v1 >> 8;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24A633830;
      v5 = sub_24A62DF44();
      v11[3] = v5;
      v11[4] = sub_24A5964D0();
      v6 = sub_24A5292E8(v11);
      (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D089D0], v5);
      LOBYTE(v5) = MEMORY[0x24C219850](v11);
      sub_24A508C54(v11);
      v7 = inited;
      if (v5)
      {
        v8 = 256;
      }

      else
      {
        v8 = 0;
      }

      *(inited + 32) = v8 | v3 & 0xFF9F;
    }

    else
    {
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_24A633830;
      *(v7 + 32) = v1 & 0x9FFF;
    }
  }

  else
  {
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_24A633830;
    *(v7 + 32) = v1 & 0x7F00 | 0x8001;
  }

  v9 = sub_24A59630C(v7);
  swift_setDeallocating();
  return v9;
}

uint64_t sub_24A5961C8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24A5961F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24A62E214();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_24A59626C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 24);
  *(a2 + 24) = v7;
  return sub_24A595770(v4, v5, v6, v7);
}

uint64_t sub_24A596294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 32);
  v4 = *(v3 + 64);
  v6 = *(v3 + 96);
  v14 = *(v3 + 80);
  v5 = v14;
  v15 = v6;
  v16 = *(v3 + 112);
  v8 = *(v3 + 16);
  v13[0] = *v3;
  v7 = v13[0];
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v4;
  *(a2 + 112) = v16;
  *(a2 + 80) = v5;
  *(a2 + 96) = v6;
  *(a2 + 48) = v10;
  *(a2 + 64) = v4;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *a2 = v7;
  return sub_24A595890(v13, v12);
}

uint64_t sub_24A59630C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A508FA4(&qword_27EF509B0, qword_24A637878);
    v3 = sub_24A62F364();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 2 * v4);
      v11 = *(v6 + 2 * v4);
      v12 = *(v3 + 40);
      sub_24A62F714();
      if (v10 < 0)
      {
        MEMORY[0x24C21B040](1);
        sub_24A62F734();
        MEMORY[0x24C21B040]((v11 >> 8) & 0x7F);
      }

      else
      {
        MEMORY[0x24C21B040](0);
        MEMORY[0x24C21B040](v11);
        sub_24A62F734();
      }

      result = sub_24A62F754();
      v14 = ~(-1 << *(v3 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v5 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v3 + 48);
      if ((v18 & v17) != 0)
      {
        do
        {
          v20 = *(v19 + 2 * v15);
          if (v20 < 0)
          {
            if (v10 < 0)
            {
              v21 = v20 ^ v10;
              if (v21 <= 0xFF && (v21 & 1) == 0)
              {
                goto LABEL_5;
              }
            }
          }

          else if (v10 & 0x80000000) == 0 && v20 == v10 && ((((v10 & 0x100) == 0) ^ ((v20 & 0x100) >> 8)))
          {
            goto LABEL_5;
          }

          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v5 + 8 * (v15 >> 6));
          v18 = 1 << v15;
        }

        while ((v17 & (1 << v15)) != 0);
      }

      *(v5 + 8 * v16) = v17 | v18;
      *(v19 + 2 * v15) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        break;
      }

      *(v3 + 16) = v9;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_24A5964D0()
{
  result = qword_27EF4FE90;
  if (!qword_27EF4FE90)
  {
    sub_24A62DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FE90);
  }

  return result;
}

uint64_t sub_24A59653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A62E214();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A5965FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A62E214();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24A5966A0()
{
  result = sub_24A62E214();
  if (v1 <= 0x3F)
  {
    result = sub_24A596750();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24A596750()
{
  result = qword_27EF501E8;
  if (!qword_27EF501E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF501E8);
  }

  return result;
}

uint64_t sub_24A59679C(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {
    sub_24A62F384();
    MEMORY[0x24C21A5D0](0xD00000000000003BLL, 0x800000024A640800);
    type metadata accessor for SymbolicTraits(0);
    sub_24A62F434();
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMPFViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMPFViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A596B24(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000030;
    v5 = 0xD00000000000001DLL;
    if (a1 != 8)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    if (a1 == 5)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000019;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0xD000000000000016;
    if (a1 != 3)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000018;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24A596C34()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A596B24(v1);
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A596C98()
{
  sub_24A596B24(*v0);
  sub_24A62EC74();
}

uint64_t sub_24A596CEC()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A596B24(v1);
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A596D4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A596F38();
  *a2 = result;
  return result;
}

unint64_t sub_24A596D7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A596B24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A596DA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24A596B24(*a1);
  v5 = v4;
  if (v3 == sub_24A596B24(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A62F634();
  }

  return v8 & 1;
}

unint64_t sub_24A596EE4()
{
  result = qword_27EF509B8;
  if (!qword_27EF509B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF509B8);
  }

  return result;
}

uint64_t sub_24A596F38()
{
  v0 = sub_24A62F4B4();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24A596F84()
{
  result = qword_27EF509C0;
  if (!qword_27EF509C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF509C0);
  }

  return result;
}

void sub_24A596FD8(uint64_t a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v8 = [a2 capturedImage];
  v9 = [*(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView) scene];
  v10 = [v9 background];

  sub_24A58F3CC(v8, v10);
}

uint64_t sub_24A5974AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = sub_24A508FA4(&qword_27EF509C8, &qword_24A637A48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v33 - v11);
  v13 = sub_24A508FA4(&qword_27EF509D0, &qword_24A637A50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v34 = sub_24A508FA4(&qword_27EF509D8, &qword_24A637A58);
  v17 = *(v34 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v34);
  v20 = &v33 - v19;
  *v12 = sub_24A62E9C4();
  v12[1] = v21;
  v22 = sub_24A508FA4(&qword_27EF509E0, &qword_24A637A60);
  sub_24A597988(a3, a4, v12 + *(v22 + 44));
  sub_24A62E9C4();
  sub_24A62E434();
  sub_24A55B7E0(v12, v16, &qword_27EF509C8, &qword_24A637A48);
  v23 = &v16[*(v13 + 36)];
  v24 = v42;
  *(v23 + 4) = v41;
  *(v23 + 5) = v24;
  *(v23 + 6) = v43;
  v25 = v38;
  *v23 = v37;
  *(v23 + 1) = v25;
  v26 = v40;
  *(v23 + 2) = v39;
  *(v23 + 3) = v26;
  if (!a1)
  {
    type metadata accessor for VFXManager(0);
    sub_24A5982A4(&qword_27EF4F438, type metadata accessor for VFXManager);
LABEL_11:
    result = sub_24A62E454();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();

  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = a3;
  v27[5] = a4;
  sub_24A5981E4();
  sub_24A50E3A4();

  sub_24A62E7F4();

  sub_24A50D6A4(v16, &qword_27EF509D0, &qword_24A637A50);
  if (!a3)
  {
    type metadata accessor for PFAnimationCoordinator();
    sub_24A5982A4(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();

  if (v36)
  {
    if (qword_27EF4EA60 != -1)
    {
      swift_once();
    }

    v28 = qword_27EF5C738;
  }

  else
  {
    v28 = sub_24A62E824();
  }

  v29 = sub_24A62E684();
  v30 = v35;
  (*(v17 + 32))(v35, v20, v34);
  result = sub_24A508FA4(&qword_27EF509F8, &qword_24A637AF8);
  v32 = v30 + *(result + 36);
  *v32 = v28;
  *(v32 + 8) = v29;
  return result;
}

uint64_t sub_24A597988@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v55 = a2;
  v5 = sub_24A508FA4(&qword_27EF50A00, &qword_24A637B00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  type metadata accessor for VFXManager(0);
  sub_24A5982A4(&qword_27EF4F438, type metadata accessor for VFXManager);
  v15 = sub_24A62E474();
  v53 = v16;
  v54 = v15;
  type metadata accessor for VFXManager.Values(0);
  sub_24A5982A4(&qword_27EF50A08, type metadata accessor for VFXManager.Values);
  v17 = sub_24A62E474();
  v51 = v18;
  type metadata accessor for PFAnimationCoordinator();
  sub_24A5982A4(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);
  v19 = sub_24A62E474();
  v49 = v20;
  v50 = v19;
  sub_24A62E9C4();
  sub_24A62E434();
  if (a1)
  {
    v52 = v17;
    v55 = a3;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v21 = 1.0;
    if (v71[0])
    {
      v21 = *(a1 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue);
    }

    sub_24A62EA64();
    v23 = v22;
    v25 = v24;
    v67 = *(&v71[11] + 8);
    v68 = *(&v71[12] + 8);
    v69 = *(&v71[13] + 8);
    v63 = *(&v71[7] + 8);
    v64 = *(&v71[8] + 8);
    v65 = *(&v71[9] + 8);
    v66 = *(&v71[10] + 8);
    v26 = sub_24A62E414();
    v27 = sub_24A62E684();
    KeyPath = swift_getKeyPath();
    v29 = &v12[*(v5 + 36)];
    v30 = *(sub_24A508FA4(&qword_27EF50A10, &qword_24A637B80) + 28);
    v31 = *MEMORY[0x277CDFA88];
    v32 = sub_24A62E404();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = KeyPath;
    v33 = v65;
    *(v12 + 104) = v66;
    v34 = v68;
    *(v12 + 120) = v67;
    *(v12 + 136) = v34;
    *(v12 + 152) = v69;
    v35 = v64;
    *(v12 + 56) = v63;
    *(v12 + 72) = v35;
    v36 = v53;
    *v12 = v54;
    *(v12 + 1) = v36;
    v37 = v51;
    *(v12 + 2) = v52;
    *(v12 + 3) = v37;
    v38 = v49;
    *(v12 + 4) = v50;
    *(v12 + 5) = v38;
    *(v12 + 6) = 0x4024000000000000;
    *(v12 + 88) = v33;
    *(v12 + 21) = v21;
    *(v12 + 22) = v21;
    *(v12 + 23) = v23;
    *(v12 + 24) = v25;
    *(v12 + 25) = v26;
    v12[208] = v27;
    sub_24A55B7E0(v12, v14, &qword_27EF50A00, &qword_24A637B00);
    sub_24A5F06BC(&v56);
    sub_24A59831C(v14, v9);
    v39 = v55;
    sub_24A59831C(v9, v55);
    v40 = (v39 + *(sub_24A508FA4(&qword_27EF50A18, &qword_24A637B88) + 48));
    v41 = v60;
    v42 = v61;
    v70[4] = v60;
    v70[5] = v61;
    v43 = v62;
    v70[6] = v62;
    v44 = v57;
    v70[0] = v56;
    v70[1] = v57;
    v46 = v58;
    v45 = v59;
    v70[2] = v58;
    v70[3] = v59;
    *v40 = v56;
    v40[1] = v44;
    v40[4] = v41;
    v40[5] = v42;
    v40[2] = v46;
    v40[3] = v45;
    v40[6] = v43;
    sub_24A59838C(v70, v71);
    sub_24A50D6A4(v14, &qword_27EF50A00, &qword_24A637B00);
    v71[4] = v60;
    v71[5] = v61;
    v71[6] = v62;
    v71[0] = v56;
    v71[1] = v57;
    v71[2] = v58;
    v71[3] = v59;
    sub_24A5983E8(v71);
    return sub_24A50D6A4(v9, &qword_27EF50A00, &qword_24A637B00);
  }

  else
  {
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A597E64(uint64_t a1)
{
  v2 = sub_24A62E404();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24A62E494();
}

void sub_24A597F2C(uint64_t a1)
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);

  oslog = sub_24A62E2F4();
  v3 = sub_24A62EF34();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (a1)
    {
      v6 = v5;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();

      v7 = sub_24A62EC44();
      v9 = sub_24A509BA8(v7, v8, &v11);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_24A503000, oslog, v3, "PFExperienceContentView: VFX State Updated: %s", v4, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v4, -1, -1);
    }

    else
    {
      type metadata accessor for VFXManager(0);
      sub_24A5982A4(&qword_27EF4F438, type metadata accessor for VFXManager);
      sub_24A62E454();
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_24A598198()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24A5981D8()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_24A597F2C(v0[2]);
}

unint64_t sub_24A5981E4()
{
  result = qword_27EF509E8;
  if (!qword_27EF509E8)
  {
    sub_24A50E1E0(&qword_27EF509D0, &qword_24A637A50);
    sub_24A518A6C(&qword_27EF509F0, &qword_27EF509C8, &qword_24A637A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF509E8);
  }

  return result;
}

uint64_t sub_24A5982A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A59831C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF50A00, &qword_24A637B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A598440()
{
  result = qword_27EF50A20;
  if (!qword_27EF50A20)
  {
    sub_24A50E1E0(&qword_27EF509F8, &qword_24A637AF8);
    sub_24A50E1E0(&qword_27EF509D0, &qword_24A637A50);
    sub_24A5981E4();
    sub_24A50E3A4();
    swift_getOpaqueTypeConformance2();
    sub_24A518A6C(&qword_27EF50A28, &qword_27EF50A30, qword_24A637B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50A20);
  }

  return result;
}

void sub_24A598560(void *a1)
{
  v2 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];
}

uint64_t sub_24A5985D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A59871C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24A598638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A59871C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24A59869C()
{
  sub_24A59871C();
  sub_24A62E5D4();
  __break(1u);
}

unint64_t sub_24A5986C8()
{
  result = qword_27EF50A38;
  if (!qword_27EF50A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50A38);
  }

  return result;
}

unint64_t sub_24A59871C()
{
  result = qword_27EF50A40;
  if (!qword_27EF50A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50A40);
  }

  return result;
}

uint64_t sub_24A598770()
{
  v1 = v0;
  v32 = sub_24A62EB14();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v32);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = [objc_opt_self() sharedApplication];
  [v11 setIdleTimerDisabled_];

  if (*(v1 + 16))
  {
    v12 = *(v1 + 16);

    sub_24A62EB34();
  }

  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24A598EE8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA6AE8;
  _Block_copy(aBlock);
  v33 = MEMORY[0x277D84F90];
  sub_24A545F60();

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v14 = sub_24A62EB44();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_24A62EB24();

  v18 = *(v1 + 16);
  *(v1 + 16) = v17;

  sub_24A545E8C();
  v19 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v20 = *(v2 + 8);
  v21 = v6;
  v22 = v32;
  v20(v21, v32);
  sub_24A62EFE4();

  v20(v8, v22);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v23 = sub_24A62E314();
  sub_24A506EB8(v23, qword_27EF5C118);

  v24 = sub_24A62E2F4();
  v25 = sub_24A62EF64();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v1;
    aBlock[0] = v27;
    *v26 = 136315138;
    type metadata accessor for FMFindingSleepPreventer();

    v28 = sub_24A62EC44();
    v30 = sub_24A509BA8(v28, v29, aBlock);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_24A503000, v24, v25, "🧭 FMItemDetailContentViewController%s: disabling sleeping timer", v26, 0xCu);
    sub_24A508C54(v27);
    MEMORY[0x24C21BBE0](v27, -1, -1);
    MEMORY[0x24C21BBE0](v26, -1, -1);
  }
}

void sub_24A598BD0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = [objc_opt_self() sharedApplication];
    [v0 setIdleTimerDisabled_];

    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C118);

    v2 = sub_24A62E2F4();
    v3 = sub_24A62EF64();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      type metadata accessor for FMFindingSleepPreventer();

      v6 = sub_24A62EC44();
      v8 = sub_24A509BA8(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_24A503000, v2, v3, "🧭 FMItemDetailContentViewController%s: re-enabling sleeping timer", v4, 0xCu);
      sub_24A508C54(v5);
      MEMORY[0x24C21BBE0](v5, -1, -1);
      MEMORY[0x24C21BBE0](v4, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24A598DB4()
{
  if (*(v0 + 16))
  {

    sub_24A62EB34();

    v1 = *(v0 + 16);
  }

  *(v0 + 16) = 0;

  v2 = [objc_opt_self() sharedApplication];
  [v2 setIdleTimerDisabled_];
}

uint64_t sub_24A598E54()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24A598EB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A598EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A598F28()
{
  v0 = sub_24A62F0F4();
  v2 = v1;
  v20 = HIDWORD(v1);
  v21 = v3;
  v4 = sub_24A62F0F4();
  v6 = v5;
  v8 = v7;
  v9 = HIDWORD(v5);
  v10 = sub_24A62F0F4();
  v12 = v11;
  v14 = v13;
  v15 = HIDWORD(v11);
  result = sub_24A62F0F4();
  *&xmmword_27EF50A48 = 60;
  *(&xmmword_27EF50A48 + 1) = v0;
  dword_27EF50A58 = v2;
  unk_27EF50A5C = v20;
  qword_27EF50A60 = v21;
  *&xmmword_27EF50A68 = v4;
  DWORD2(xmmword_27EF50A68) = v6;
  HIDWORD(xmmword_27EF50A68) = v9;
  qword_27EF50A78 = v8;
  unk_27EF50A80 = v10;
  LODWORD(xmmword_27EF50A88) = v12;
  DWORD1(xmmword_27EF50A88) = v15;
  *(&xmmword_27EF50A88 + 1) = v14;
  unk_27EF50A98 = result;
  dword_27EF50AA0 = v17;
  unk_27EF50AA4 = v18;
  *&xmmword_27EF50AA8 = v19;
  *(&xmmword_27EF50AA8 + 1) = 0x6C75616665444D46;
  qword_27EF50AB8 = 0xEE00646E756F4674;
  return result;
}

uint64_t FMDefaultFoundVideoInfo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF4E9D0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27EF50A88;
  v2 = unk_27EF50A98;
  v3 = xmmword_27EF50AA8;
  v11[5] = unk_27EF50A98;
  v11[6] = xmmword_27EF50AA8;
  v4 = qword_27EF50AB8;
  v12 = qword_27EF50AB8;
  v5 = *&dword_27EF50A58;
  v11[0] = xmmword_27EF50A48;
  v6 = xmmword_27EF50A68;
  v7 = *&qword_27EF50A78;
  v11[1] = *&dword_27EF50A58;
  v11[2] = xmmword_27EF50A68;
  v11[3] = *&qword_27EF50A78;
  v11[4] = xmmword_27EF50A88;
  *a1 = xmmword_27EF50A48;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v1;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  return sub_24A595890(v11, v10);
}

uint64_t sub_24A5990E0()
{
  v0 = sub_24A62F0F4();
  v2 = v1;
  v21 = v3;
  v4 = HIDWORD(v1);
  v5 = sub_24A62F0F4();
  v7 = v6;
  v20 = v8;
  v9 = HIDWORD(v6);
  v10 = sub_24A62F0F4();
  v12 = v11;
  v14 = v13;
  v15 = HIDWORD(v11);
  result = sub_24A62F0F4();
  *&xmmword_27EF50AC0 = 60;
  *(&xmmword_27EF50AC0 + 1) = v0;
  dword_27EF50AD0 = v2;
  unk_27EF50AD4 = v4;
  qword_27EF50AD8 = v21;
  *&xmmword_27EF50AE0 = v5;
  DWORD2(xmmword_27EF50AE0) = v7;
  HIDWORD(xmmword_27EF50AE0) = v9;
  qword_27EF50AF0 = v20;
  unk_27EF50AF8 = v10;
  LODWORD(xmmword_27EF50B00) = v12;
  DWORD1(xmmword_27EF50B00) = v15;
  *(&xmmword_27EF50B00 + 1) = v14;
  unk_27EF50B10 = result;
  dword_27EF50B18 = v17;
  unk_27EF50B1C = v18;
  *&xmmword_27EF50B20 = v19;
  *(&xmmword_27EF50B20 + 1) = 0xD000000000000018;
  qword_27EF50B30 = 0x800000024A6408C0;
  return result;
}

uint64_t FMDefaultFoundVideoInfoRedStripe.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF4E9D8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27EF50B00;
  v2 = unk_27EF50B10;
  v3 = xmmword_27EF50B20;
  v11[5] = unk_27EF50B10;
  v11[6] = xmmword_27EF50B20;
  v4 = qword_27EF50B30;
  v12 = qword_27EF50B30;
  v5 = *&dword_27EF50AD0;
  v11[0] = xmmword_27EF50AC0;
  v6 = xmmword_27EF50AE0;
  v7 = *&qword_27EF50AF0;
  v11[1] = *&dword_27EF50AD0;
  v11[2] = xmmword_27EF50AE0;
  v11[3] = *&qword_27EF50AF0;
  v11[4] = xmmword_27EF50B00;
  *a1 = xmmword_27EF50AC0;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v1;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  return sub_24A595890(v11, v10);
}

uint64_t sub_24A599294()
{
  v0 = sub_24A62F0F4();
  v2 = v1;
  v20 = HIDWORD(v1);
  v21 = v3;
  v4 = sub_24A62F0F4();
  v6 = v5;
  v8 = v7;
  v9 = HIDWORD(v5);
  v10 = sub_24A62F0F4();
  v12 = v11;
  v14 = v13;
  v15 = HIDWORD(v11);
  result = sub_24A62F0F4();
  *&xmmword_27EF50B38 = 60;
  *(&xmmword_27EF50B38 + 1) = v0;
  dword_27EF50B48 = v2;
  unk_27EF50B4C = v20;
  qword_27EF50B50 = v21;
  *&xmmword_27EF50B58 = v4;
  DWORD2(xmmword_27EF50B58) = v6;
  HIDWORD(xmmword_27EF50B58) = v9;
  qword_27EF50B68 = v8;
  unk_27EF50B70 = v10;
  LODWORD(xmmword_27EF50B78) = v12;
  DWORD1(xmmword_27EF50B78) = v15;
  *(&xmmword_27EF50B78 + 1) = v14;
  unk_27EF50B88 = result;
  dword_27EF50B90 = v17;
  unk_27EF50B94 = v18;
  *&xmmword_27EF50B98 = v19;
  *(&xmmword_27EF50B98 + 1) = 0x6E756F4631524D46;
  qword_27EF50BA8 = 0xEE00393833422D64;
  return result;
}

uint64_t FMR1AirTagDefaultVideoInfo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF4E9E0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27EF50B78;
  v2 = unk_27EF50B88;
  v3 = xmmword_27EF50B98;
  v11[5] = unk_27EF50B88;
  v11[6] = xmmword_27EF50B98;
  v4 = qword_27EF50BA8;
  v12 = qword_27EF50BA8;
  v5 = *&dword_27EF50B48;
  v11[0] = xmmword_27EF50B38;
  v6 = xmmword_27EF50B58;
  v7 = *&qword_27EF50B68;
  v11[1] = *&dword_27EF50B48;
  v11[2] = xmmword_27EF50B58;
  v11[3] = *&qword_27EF50B68;
  v11[4] = xmmword_27EF50B78;
  *a1 = xmmword_27EF50B38;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v1;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  return sub_24A595890(v11, v10);
}

uint64_t sub_24A59944C()
{
  v0 = sub_24A62F0F4();
  v2 = v1;
  v21 = v3;
  v4 = HIDWORD(v1);
  v5 = sub_24A62F0F4();
  v7 = v6;
  v20 = v8;
  v9 = HIDWORD(v6);
  v10 = sub_24A62F0F4();
  v12 = v11;
  v14 = v13;
  v15 = HIDWORD(v11);
  result = sub_24A62F0F4();
  *&xmmword_27EF50BB0 = 60;
  *(&xmmword_27EF50BB0 + 1) = v0;
  dword_27EF50BC0 = v2;
  unk_27EF50BC4 = v4;
  qword_27EF50BC8 = v21;
  unk_27EF50BD0 = v5;
  dword_27EF50BD8 = v7;
  unk_27EF50BDC = v9;
  qword_27EF50BE0 = v20;
  unk_27EF50BE8 = v10;
  LODWORD(xmmword_27EF50BF0) = v12;
  DWORD1(xmmword_27EF50BF0) = v15;
  *(&xmmword_27EF50BF0 + 1) = v14;
  unk_27EF50C00 = result;
  dword_27EF50C08 = v17;
  unk_27EF50C0C = v18;
  *&xmmword_27EF50C10 = v19;
  *(&xmmword_27EF50C10 + 1) = 0xD000000000000012;
  qword_27EF50C20 = 0x800000024A6408A0;
  return result;
}

uint64_t FMR1AirTagZeusVideoInfo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF4E9E8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27EF50BF0;
  v2 = unk_27EF50C00;
  v3 = xmmword_27EF50C10;
  v11[5] = unk_27EF50C00;
  v11[6] = xmmword_27EF50C10;
  v4 = qword_27EF50C20;
  v12 = qword_27EF50C20;
  v5 = *&dword_27EF50BC0;
  v11[0] = xmmword_27EF50BB0;
  v6 = unk_27EF50BD0;
  v7 = *&qword_27EF50BE0;
  v11[1] = *&dword_27EF50BC0;
  v11[2] = unk_27EF50BD0;
  v11[3] = *&qword_27EF50BE0;
  v11[4] = xmmword_27EF50BF0;
  *a1 = xmmword_27EF50BB0;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v1;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  return sub_24A595890(v11, v10);
}

uint64_t sub_24A599600()
{
  v0 = sub_24A62F0F4();
  v2 = v1;
  v20 = HIDWORD(v1);
  v21 = v3;
  v4 = sub_24A62F0F4();
  v6 = v5;
  v8 = v7;
  v9 = HIDWORD(v5);
  v10 = sub_24A62F0F4();
  v12 = v11;
  v14 = v13;
  v15 = HIDWORD(v11);
  result = sub_24A62F0F4();
  *&xmmword_27EF50C28 = 60;
  *(&xmmword_27EF50C28 + 1) = v0;
  dword_27EF50C38 = v2;
  unk_27EF50C3C = v20;
  qword_27EF50C40 = v21;
  *&xmmword_27EF50C48 = v4;
  DWORD2(xmmword_27EF50C48) = v6;
  HIDWORD(xmmword_27EF50C48) = v9;
  qword_27EF50C58 = v8;
  unk_27EF50C60 = v10;
  LODWORD(xmmword_27EF50C68) = v12;
  DWORD1(xmmword_27EF50C68) = v15;
  *(&xmmword_27EF50C68 + 1) = v14;
  unk_27EF50C78 = result;
  dword_27EF50C80 = v17;
  unk_27EF50C84 = v18;
  *&xmmword_27EF50C88 = v19;
  *(&xmmword_27EF50C88 + 1) = 0x6E756F4631524D46;
  qword_27EF50C98 = 0xEE00373236422D64;
  return result;
}

uint64_t FMR1AirPodsVideoInfo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF4E9F0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27EF50C68;
  v2 = unk_27EF50C78;
  v3 = xmmword_27EF50C88;
  v11[5] = unk_27EF50C78;
  v11[6] = xmmword_27EF50C88;
  v4 = qword_27EF50C98;
  v12 = qword_27EF50C98;
  v5 = *&dword_27EF50C38;
  v11[0] = xmmword_27EF50C28;
  v6 = xmmword_27EF50C48;
  v7 = *&qword_27EF50C58;
  v11[1] = *&dword_27EF50C38;
  v11[2] = xmmword_27EF50C48;
  v11[3] = *&qword_27EF50C58;
  v11[4] = xmmword_27EF50C68;
  *a1 = xmmword_27EF50C28;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v1;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  return sub_24A595890(v11, v10);
}

uint64_t sub_24A5997B8()
{
  v0 = sub_24A62F0F4();
  v2 = v1;
  v20 = HIDWORD(v1);
  v21 = v3;
  v4 = sub_24A62F0F4();
  v6 = v5;
  v8 = v7;
  v9 = HIDWORD(v5);
  v10 = sub_24A62F0F4();
  v12 = v11;
  v14 = v13;
  v15 = HIDWORD(v11);
  result = sub_24A62F0F4();
  *&xmmword_27EF50CA0 = 60;
  *(&xmmword_27EF50CA0 + 1) = v0;
  dword_27EF50CB0 = v2;
  unk_27EF50CB4 = v20;
  qword_27EF50CB8 = v21;
  unk_27EF50CC0 = v4;
  dword_27EF50CC8 = v6;
  unk_27EF50CCC = v9;
  qword_27EF50CD0 = v8;
  unk_27EF50CD8 = v10;
  LODWORD(xmmword_27EF50CE0) = v12;
  DWORD1(xmmword_27EF50CE0) = v15;
  *(&xmmword_27EF50CE0 + 1) = v14;
  unk_27EF50CF0 = result;
  dword_27EF50CF8 = v17;
  unk_27EF50CFC = v18;
  *&xmmword_27EF50D00 = v19;
  *(&xmmword_27EF50D00 + 1) = 0x2D646E756F464D46;
  qword_27EF50D10 = 0xED00006172746554;
  return result;
}

uint64_t FMR2AirPodsVideoInfo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF4E9F8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27EF50CE0;
  v2 = unk_27EF50CF0;
  v3 = xmmword_27EF50D00;
  v11[5] = unk_27EF50CF0;
  v11[6] = xmmword_27EF50D00;
  v4 = qword_27EF50D10;
  v12 = qword_27EF50D10;
  v5 = *&dword_27EF50CB0;
  v11[0] = xmmword_27EF50CA0;
  v6 = unk_27EF50CC0;
  v7 = *&qword_27EF50CD0;
  v11[1] = *&dword_27EF50CB0;
  v11[2] = unk_27EF50CC0;
  v11[3] = *&qword_27EF50CD0;
  v11[4] = xmmword_27EF50CE0;
  *a1 = xmmword_27EF50CA0;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v1;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  return sub_24A595890(v11, v10);
}

FMFindingUI::FMFindingPartType_optional __swiftcall FMFindingPartType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A62F4B4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMFindingPartType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F6C61646E617473;
  v3 = 0x6475427466656CLL;
  v4 = 0x6475427468676972;
  if (v1 != 3)
  {
    v4 = 0x636972656E6567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1702060387;
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

uint64_t sub_24A599B0C()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A599BEC()
{
  *v0;
  *v0;
  *v0;
  sub_24A62EC74();
}

uint64_t sub_24A599CB8()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

void sub_24A599DA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656ELL;
  v4 = 0x6F6C61646E617473;
  v5 = 0xE700000000000000;
  v6 = 0x6475427466656CLL;
  v7 = 0xE800000000000000;
  v8 = 0x6475427468676972;
  if (v2 != 3)
  {
    v8 = 0x636972656E6567;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1702060387;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FMFindingPartInfo.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMFindingPartInfo.symbol.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMFindingPartInfo.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);

  sub_24A62F384();

  MEMORY[0x24C21A5D0](v1, v2);
  MEMORY[0x24C21A5D0](0x3A6C6F626D795320, 0xE900000000000020);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x21656E6F6E21;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  MEMORY[0x24C21A5D0](v6, v7);

  MEMORY[0x24C21A5D0](0x203A6570795420, 0xE700000000000000);
  v8 = 0x6475427466656CLL;
  v9 = 0xE800000000000000;
  v10 = 0x6475427468676972;
  if (v5 != 3)
  {
    v10 = 0x636972656E6567;
    v9 = 0xE700000000000000;
  }

  if (v5 == 2)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v8 = v10;
  }

  v11 = 0xEA0000000000656ELL;
  v12 = 0x6F6C61646E617473;
  if (v5)
  {
    v12 = 1702060387;
    v11 = 0xE400000000000000;
  }

  if (v5 <= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v5 <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  MEMORY[0x24C21A5D0](v13, v14);

  return 0x203A656D614ELL;
}

uint64_t sub_24A59A1A0()
{
  v1 = 0x6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_24A59A1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A59ACF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A59A21C(uint64_t a1)
{
  v2 = sub_24A59A810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A59A258(uint64_t a1)
{
  v2 = sub_24A59A810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFindingPartInfo.encode(to:)(void *a1)
{
  v3 = sub_24A508FA4(&qword_27EF50D18, &qword_24A637D10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[1] = v1[3];
  v15[2] = v10;
  v16 = *(v1 + 32);
  v11 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A59A810();
  sub_24A62F774();
  v20 = 0;
  v12 = v15[3];
  sub_24A62F584();
  if (!v12)
  {
    v14 = v16;
    v19 = 1;
    sub_24A62F574();
    v18 = v14;
    v17 = 2;
    sub_24A59A864();
    sub_24A62F5D4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t FMFindingPartInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A508FA4(&qword_27EF50D30, &qword_24A637D18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A59A810();
  sub_24A62F764();
  if (v2)
  {
    return sub_24A508C54(a1);
  }

  v25 = 0;
  v11 = sub_24A62F4F4();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v19 = sub_24A62F4E4();
  v20 = v14;
  v22 = 2;
  sub_24A59A8B8();
  sub_24A62F544();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  v16 = v20;
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;

  sub_24A508C54(a1);
}

uint64_t _s11FMFindingUI0A8PartInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_24A62F634() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      v9 = v2 == v6 && v3 == v5;
      if (v9 || (sub_24A62F634() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_13:

  return sub_24A60D9F8(v4, v7);
}

unint64_t sub_24A59A810()
{
  result = qword_27EF50D20;
  if (!qword_27EF50D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50D20);
  }

  return result;
}

unint64_t sub_24A59A864()
{
  result = qword_27EF50D28;
  if (!qword_27EF50D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50D28);
  }

  return result;
}

unint64_t sub_24A59A8B8()
{
  result = qword_27EF50D38;
  if (!qword_27EF50D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50D38);
  }

  return result;
}

unint64_t sub_24A59A910()
{
  result = qword_27EF50D40;
  if (!qword_27EF50D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50D40);
  }

  return result;
}

uint64_t sub_24A59AA2C(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_24A59AA48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24A59AA5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24A59AAA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_24A59AAEC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

__n128 sub_24A59AB28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A59AB3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24A59AB84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A59ABEC()
{
  result = qword_27EF50D48;
  if (!qword_27EF50D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50D48);
  }

  return result;
}

unint64_t sub_24A59AC44()
{
  result = qword_27EF50D50;
  if (!qword_27EF50D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50D50);
  }

  return result;
}

unint64_t sub_24A59AC9C()
{
  result = qword_27EF50D58;
  if (!qword_27EF50D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50D58);
  }

  return result;
}

uint64_t sub_24A59ACF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_24A62F634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_24A62F634() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A62F634();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24A59AE04()
{
  result = qword_27EF50D60;
  if (!qword_27EF50D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50D60);
  }

  return result;
}

uint64_t sub_24A59AE5C(double a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    (*(v14 + 72))(v1, ObjectType, v14, a1);
    swift_unknownObjectRelease();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = a1;
  v17 = objc_opt_self();
  v18 = v1;
  if ([v17 isMainThread])
  {
    sub_24A59B1F0(v18, a1);
  }

  else
  {
    sub_24A545E8C();
    v24 = sub_24A62F014();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_24A59B588;
    *(v20 + 24) = v16;
    aBlock[4] = sub_24A5493F0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA6E10;
    v21 = _Block_copy(aBlock);

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    v22 = v24;
    MEMORY[0x24C21A950](0, v12, v7, v21);
    _Block_release(v21);

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

float sub_24A59B1F0(uint64_t a1, double a2)
{
  v4 = (a1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSprings);
  v5 = *(a1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSprings);
  sub_24A55C858(a2);
  *(v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v6 = v4[1];
  sub_24A55C858(a2);
  *(v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v7 = v4[2];
  sub_24A55C858(a2);
  *(v7 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v8 = *(a1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring);
  sub_24A55C858(a2);
  *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v9 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring;
  v10 = *(a1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring);
  sub_24A55C858(a2);
  *(v10 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v11 = *v4;
  v12 = (*v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  if (vabdd_f64(v12[35] + *(v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v12 + *(v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v13 = *v12 + *(v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v13 = v12[35] + *(v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  v14 = v4[1];
  v15 = (v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  if (vabdd_f64(v15[35] + *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v15 + *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v16 = *v15 + *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v16 = v15[35] + *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  v17 = v4[2];
  v18 = (v17 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  if (vabdd_f64(v18[35] + *(v17 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v18 + *(v17 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v17 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v19 = *v18 + *(v17 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v19 = v18[35] + *(v17 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  v20 = *(a1 + v9);
  v21 = (v20 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v22 = *v21 + *(v20 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  if (vabdd_f64(v21[35] + *(v20 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v22) <= *(v20 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v22 = v21[35] + *(v20 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  v23 = v13;
  v24 = (a1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerParameters);
  v25 = v16;
  *v24 = v23;
  v24[1] = v25;
  v26 = v19;
  result = v22;
  v24[2] = v26;
  v24[3] = result;
  return result;
}

uint64_t sub_24A59B4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 96))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A59B550()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A59B594()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A59B5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

FMFindingUI::FinishReasons_optional __swiftcall FinishReasons.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A62F4B4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FinishReasons.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000012;
    if (v1 != 1)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x76616E755F627775;
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0x73736563637573;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A59B74C()
{
  *v0;
  sub_24A62EC74();
}

void sub_24A59B888(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v9 = 0xEF656C62616C6961;
    v10 = 0xD000000000000012;
    v11 = 0x800000024A63CDF0;
    if (v2 != 1)
    {
      v10 = 0xD000000000000010;
      v11 = 0x800000024A63CE10;
    }

    v12 = v2 == 0;
    if (*v1)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0x76616E755F627775;
    }

    if (!v12)
    {
      v9 = v11;
    }

    *a1 = v13;
    a1[1] = v9;
  }

  else
  {
    v3 = 0x800000024A63CE50;
    v4 = 0xD00000000000001CLL;
    if (v2 == 5)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x800000024A63CE70;
    }

    v5 = 0x800000024A63CE30;
    v6 = 0xD000000000000017;
    if (v2 != 3)
    {
      v6 = 0x73736563637573;
      v5 = 0xE700000000000000;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

void sub_24A59B984()
{
  v1 = v0;
  v2 = sub_24A62E214();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62E1A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  sub_24A62E184();
  (*(v8 + 16))(v12, v1 + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_startTime, v7);
  sub_24A62E144();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v12, v7);
  v17(v14, v7);
  sub_24A508FA4(&qword_27EF50D70, &qword_24A6381C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A6381B0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000024A6408E0;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_instanceIdentifier, v2);
  sub_24A62E1C4();
  (*(v3 + 8))(v6, v2);
  v19 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v20 = sub_24A62EBE4();

  v21 = [v19 initWithString_];

  *(inited + 48) = v21;
  *(inited + 56) = 0x756F635F676E6970;
  *(inited + 64) = 0xEA0000000000746ELL;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 104) = 0x736165725F646E65;
  *(inited + 112) = 0xEA00000000006E6FLL;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_finishReason);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_finishReason);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_finishReason);
  v22 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v23 = sub_24A62EBE4();

  v24 = [v22 initWithString_];

  *(inited + 120) = v24;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000024A640900;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 152) = 0xD000000000000018;
  *(inited + 160) = 0x800000024A640920;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 176) = 0xD000000000000019;
  *(inited + 184) = 0x800000024A640940;
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_firstDistanceRangeSeen + 8))
  {
    v25 = -1.0;
  }

  else
  {
    v25 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_firstDistanceRangeSeen);
  }

  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_24A59CC50(inited);
  swift_setDeallocating();
  sub_24A508FA4(&qword_27EF50DA8, &qword_24A6381C8);
  swift_arrayDestroy();
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v26 = sub_24A62E314();
  sub_24A506EB8(v26, qword_27EF5C0E8);

  v27 = sub_24A62E2F4();
  v28 = sub_24A62EF64();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136315138;
    sub_24A59CD54();
    v31 = sub_24A62EB94();
    v33 = sub_24A509BA8(v31, v32, &v37);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_24A503000, v27, v28, "Payload: %s", v29, 0xCu);
    sub_24A508C54(v30);
    MEMORY[0x24C21BBE0](v30, -1, -1);
    MEMORY[0x24C21BBE0](v29, -1, -1);
  }

  v34 = sub_24A62EBE4();
  sub_24A59CD54();
  v35 = sub_24A62EB74();

  AnalyticsSendEvent();
}

void *sub_24A59C0C0(void *result)
{
  v2 = *(v1 + *result);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + *result) = v4;
  }

  return result;
}

void sub_24A59C0DC(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_firstDistanceRangeSeen;
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_firstDistanceRangeSeen + 8) == 1)
  {
    *v2 = a1;
    *(v2 + 8) = 0;
  }
}

id FMFindingWatchMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMFindingWatchMetrics.init()()
{
  sub_24A62E204();
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_pingCount] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_floorAlertCount] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_movingPhoneAlertCount] = 0;
  sub_24A62E184();
  v0[OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_finishReason] = 0;
  v1 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_firstDistanceRangeSeen];
  *v1 = 0;
  v1[8] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMFindingWatchMetrics();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FMFindingWatchMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingWatchMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A59C378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A508FA4(&qword_27EF50DD0, &unk_24A638308);
    v3 = sub_24A62F494();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A50D63C(v4, &v11, &qword_27EF4F420, qword_24A633B40);
      v5 = v11;
      result = sub_24A5193CC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24A582FBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_24A59C4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A508FA4(&qword_27EF50E08, &qword_24A638360);
    v3 = sub_24A62F494();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A50D63C(v4, &v11, &qword_27EF50E10, &qword_24A638368);
      v5 = v11;
      result = sub_24A5193CC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24A582FBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_24A59C5C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A508FA4(&qword_27EF50DE0, &qword_24A638328);
    v3 = sub_24A62F494();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A50D63C(v4, &v13, &qword_27EF50DE8, &unk_24A638330);
      v5 = v13;
      v6 = v14;
      result = sub_24A516050(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24A582FBC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_24A59C6F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A508FA4(&qword_27EF50DD8, &qword_24A638318);
    v3 = sub_24A62F494();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A50D63C(v4, &v11, &qword_27EF507B8, &qword_24A638320);
      v5 = v11;
      result = sub_24A5193CC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24A582FBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_24A59C820(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF50E00, &unk_24A638350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_24A508FA4(&qword_27EF4FF60, &qword_24A635E80);
    v8 = sub_24A62F494();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24A50D63C(v10, v6, &qword_27EF50E00, &unk_24A638350);
      result = sub_24A515AC8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24A62E214();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_24A508CA0(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_24A59CA10(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF50918, &unk_24A637650);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F98];
  }

  sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
  v8 = sub_24A62F494();
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);
  v26 = *(v2 + 48);
  v27 = v10;

  sub_24A50D63C(a1 + v9, v6, &qword_27EF50918, &unk_24A637650);
  v11 = sub_24A515AC8(v6);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v13 = v11;
  v25 = sub_24A62E214();
  v14 = *(v25 - 8);
  v15 = *(v14 + 32);
  v16 = *(v14 + 72);
  v17 = a1 + v27 + v9;
  while (1)
  {
    *(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v15(v8[6] + v16 * v13, v6, v25);
    result = memmove((v8[7] + 104 * v13), &v6[v26], 0x65uLL);
    v19 = v8[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v8[2] = v21;
    if (!--v7)
    {
      goto LABEL_8;
    }

    v22 = v17 + v27;
    sub_24A50D63C(v17, v6, &qword_27EF50918, &unk_24A637650);
    v13 = sub_24A515AC8(v6);
    v17 = v22;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24A59CC50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A508FA4(&qword_27EF50DF8, &qword_24A638348);
    v3 = sub_24A62F494();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24A516050(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_24A59CD54()
{
  result = qword_27EF50DB0;
  if (!qword_27EF50DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF50DB0);
  }

  return result;
}

uint64_t type metadata accessor for FMFindingWatchMetrics()
{
  result = qword_27EF50DC0;
  if (!qword_27EF50DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24A59CDF0()
{
  result = qword_27EF50DB8;
  if (!qword_27EF50DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50DB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinishReasons(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinishReasons(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A59CF9C()
{
  result = sub_24A62E214();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24A62E1A4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_24A59D20C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A508FA4(&unk_27EF4FEC0, &qword_24A635DF8);
    v3 = sub_24A62F494();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 112);
      *v30 = *(v4 + 96);
      *&v30[16] = v6;
      v31 = *(v4 + 128);
      v7 = *(v4 + 16);
      v8 = *(v4 + 48);
      v26 = *(v4 + 32);
      v27 = v8;
      v9 = *(v4 + 48);
      v10 = *(v4 + 80);
      v28 = *(v4 + 64);
      v29 = v10;
      v11 = *(v4 + 16);
      v25[0] = *v4;
      v25[1] = v11;
      v12 = *(v4 + 80);
      v36 = v28;
      v37[0] = v12;
      v32 = v25[0];
      v33 = v7;
      *(v37 + 13) = *(v4 + 93);
      v34 = v26;
      v35 = v9;
      sub_24A50D63C(v25, &v24, &qword_27EF50DF0, &qword_24A638340);
      result = sub_24A515A5C(&v32);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v3[6] + 104 * result;
      v16 = v37[0];
      *(v15 + 64) = v36;
      *(v15 + 80) = v16;
      *(v15 + 93) = *(v37 + 13);
      v17 = v33;
      *v15 = v32;
      *(v15 + 16) = v17;
      v18 = v35;
      *(v15 + 32) = v34;
      *(v15 + 48) = v18;
      v19 = v3[7] + 40 * result;
      *&v18 = *&v30[24];
      LODWORD(v17) = v31;
      v20 = *(&v31 + 1);
      *v19 = *&v30[8];
      *(v19 + 16) = v18;
      *(v19 + 24) = v17;
      *(v19 + 32) = v20;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_11;
      }

      v3[2] = v23;
      if (!i)
      {

        return v3;
      }

      v4 += 144;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

double sub_24A59D3C4()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  result = 0.5;
  xmmword_27EF50E18 = xmmword_24A638370;
  qword_27EF50E28 = 0x3FC41B2F769CF0E0;
  qword_27EF50E30 = v1;
  return result;
}

id sub_24A59D454(uint64_t a1, char a2, double a3, double a4, double a5)
{
  v6 = &v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_style];
  if (qword_27EF4EA00 != -1)
  {
    v27 = a1;
    v28 = a2;
    v29 = a5;
    v30 = a4;
    v31 = a3;
    swift_once();
    a1 = v27;
    a2 = v28;
    a3 = v31;
    a4 = v30;
    a5 = v29;
  }

  v7 = qword_27EF50E28;
  v8 = qword_27EF50E30;
  *v6 = xmmword_27EF50E18;
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  *&v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScale] = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngle] = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngle] = 0;
  v9 = &v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_sceneSize];
  *v9 = a3;
  v9[1] = a4;
  v10 = *&a1;
  if (a2)
  {
    v10 = 0.0;
  }

  *&v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_verticalOffset] = v10;
  if (a4 < a3)
  {
    a3 = a4;
  }

  *&v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_diskRadius] = a3 * 0.5 * a5;
  v11 = v8;
  *&v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_opacitySpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngleSpring] = sub_24A5B1B3C(0, 0, 0x3FA015BF9217271ALL, 0, 0, 1);
  *&v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngleSpring] = sub_24A5B1B3C(0, 0, 0x3FA015BF9217271ALL, 0, 0, 1);
  *&v5[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScaleSpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v33.receiver = v5;
  v33.super_class = type metadata accessor for FMPFRingView();
  v12 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor_];

  CGAffineTransformMakeRotation(&v32, -1.57079633);
  [v14 setTransform_];
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v16 = sub_24A62E314();
  sub_24A506EB8(v16, qword_27EF5C0E8);
  v17 = sub_24A62E2F4();
  v18 = sub_24A62EF64();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v32.a = v20;
    *v19 = 136315138;
    v21 = [v14 description];
    v22 = sub_24A62EC14();
    v24 = v23;

    v25 = sub_24A509BA8(v22, v24, &v32);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMPFRingView%s: init", v19, 0xCu);
    sub_24A508C54(v20);
    MEMORY[0x24C21BBE0](v20, -1, -1);
    MEMORY[0x24C21BBE0](v19, -1, -1);
  }

  return v14;
}

id sub_24A59D9D0()
{
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C0E8);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = sub_24A62EC14();
    v10 = v9;

    v11 = sub_24A509BA8(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMPFRingView%s: deinit", v5, 0xCu);
    sub_24A508C54(v6);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v12 = type metadata accessor for FMPFRingView();
  v15.receiver = v2;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

uint64_t sub_24A59DC58(double a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  v14 = objc_opt_self();
  v15 = v1;
  if ([v14 isMainThread])
  {
    sub_24A59DFA4(v15, a1);
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v17 = sub_24A62F014();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A59EA14;
    *(v18 + 24) = v13;
    aBlock[4] = sub_24A59502C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA7018;
    v19 = _Block_copy(aBlock);
    v22 = v8;
    v20 = v19;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v12, v7, v20);
    _Block_release(v20);

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v22);
  }
}

id sub_24A59DFA4(char *a1, double a2)
{
  v4 = OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_opacitySpring;
  v5 = *&a1[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_opacitySpring];
  if (!sub_24A5B19C4())
  {
    sub_24A55C858(a2);
    *(v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v6 = *&a1[v4];
    v7 = (v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    if (vabdd_f64(v7[35] + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v7 + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v8 = *v7 + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    }

    else
    {
      v8 = v7[35] + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    v9 = objc_opt_self();
    [v9 begin];
    [v9 setDisableActions_];
    [a1 setAlpha_];
    [v9 commit];
  }

  v10 = OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngleSpring;
  v11 = *&a1[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngleSpring];
  if (!sub_24A5B19C4() || (v12 = *&a1[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngleSpring], !sub_24A5B19C4()) || (v13 = *&a1[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScaleSpring], !sub_24A5B19C4()))
  {
    sub_24A55C858(a2);
    *(v11 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v14 = OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngleSpring;
    v15 = *&a1[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngleSpring];
    sub_24A55C858(a2);
    *(v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v16 = OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScaleSpring;
    v17 = *&a1[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScaleSpring];
    sub_24A55C858(a2);
    *(v17 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v18 = *&a1[v10];
    v19 = (v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    if (vabdd_f64(v19[35] + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v19 + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v20 = *v19 + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    }

    else
    {
      v20 = v19[35] + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    v21 = *&a1[v14];
    v22 = (v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    if (vabdd_f64(v22[35] + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v22 + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v23 = *v22 + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    }

    else
    {
      v23 = v22[35] + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    v24 = *&a1[v16];
    v25 = (v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    v26 = *v25 + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    if (vabdd_f64(v25[35] + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v26) <= *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v26 = v25[35] + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    *&a1[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngle] = v20;
    *&a1[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngle] = v23;
    *&a1[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScale] = v26;
  }

  return [a1 setNeedsDisplay];
}

void sub_24A59E2A4(uint64_t a1, char a2, char a3, char *a4, double a5, double a6)
{
  if (a2)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *&a1;
  }

  v9 = *&a4[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngleSpring];
  if (a3)
  {
    v10 = v9 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v10 = a5;
    *(v10 + 8) = 0;
    sub_24A5B18FC();
    v11 = *&a4[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngleSpring] + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v11 = a6;
    *(v11 + 8) = 0;
    sub_24A5B18FC();
    v12 = *&a4[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScaleSpring] + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v12 = v8;
    *(v12 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    sub_24A55C6B4(a5);
    *(v9 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v14 = *&a4[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngleSpring];
    sub_24A55C6B4(a6);
    *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v15 = *&a4[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScaleSpring];
    v16 = sub_24A55C6B4(v8);
    *(v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    *&a4[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngle] = a5;
    *&a4[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngle] = a6;
    *&a4[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScale] = v8;
    [a4 bounds];

    [a4 drawRect_];
  }
}

uint64_t sub_24A59E410(uint64_t a1, char a2, char a3)
{
  v7 = sub_24A62EA94();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A62EAD4();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v23);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = a2 & 1;
  *(v15 + 24) = v16;
  *(v15 + 25) = a3;
  *(v15 + 32) = v3;
  v17 = objc_opt_self();
  v18 = v3;
  if ([v17 isMainThread])
  {
    sub_24A59E76C(a1, v16, a3 & 1, v18);
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v20 = sub_24A62F014();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_24A59E978;
    *(v21 + 24) = v15;
    aBlock[4] = sub_24A5493F0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA6FA0;
    v22 = _Block_copy(aBlock);

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v14, v10, v22);
    _Block_release(v22);

    (*(v24 + 8))(v10, v7);
    return (*(v11 + 8))(v14, v23);
  }
}

void sub_24A59E76C(uint64_t a1, char a2, char a3, char *a4)
{
  if (a2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *&a1;
  }

  v5 = *&a4[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_opacitySpring];
  if (a3)
  {
    v6 = v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v6 = v4;
    *(v6 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    sub_24A55C6B4(v4);
    *(v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v8 = objc_opt_self();
    [v8 begin];
    [v8 setDisableActions_];
    [a4 setAlpha_];

    [v8 commit];
  }
}

uint64_t sub_24A59E8A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A59E8F0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_24A59E940()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A59E98C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A59E9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A59E9DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A59EA20()
{
  [v0 bounds];
  Width = CGRectGetWidth(v16);
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_verticalOffset];
  [v0 bounds];
  Height = CGRectGetHeight(v17);
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngle];
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngle];
  v6 = &v0[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_style];
  v7 = *&v0[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_style + 16];
  if (v7 + v7 < vabdd_f64(v4, v5))
  {
    v8 = Height * 0.5;
    v9 = Width * 0.5 - v2;
    v10 = -v7;
    if (v4 <= v5)
    {
      v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_style + 16];
    }

    else
    {
      v11 = -v7;
    }

    if (v4 > v5)
    {
      v10 = *&v0[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_style + 16];
    }

    v12 = [objc_opt_self() bezierPathWithArcCenter:v4 > v5 radius:v9 startAngle:v8 endAngle:*&v0[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_diskRadius] * (*&v0[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScale] + 1.0) clockwise:{v10 - v4, v11 - v5}];
    if (v12)
    {
      v14 = v12;
      [v12 setLineWidth_];
      [v14 setLineCapStyle_];
      [*(v6 + 3) setStroke];
      v13 = [objc_opt_self() clearColor];
      [v13 setFill];

      [v14 stroke];
    }
  }
}

__n128 sub_24A59EC64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24A59EC90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A59ECD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_24A59ED80(void *a1, double a2)
{
  v41 = *MEMORY[0x277D85DE8];
  *&v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetBundle] = 0;
  v5 = &v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 14) = 0;
  v6 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetManager;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277D54C50]) init];
  v7 = &v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_time];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v7[24] = 1;
  *&v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerStartedObservation] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerEndedObserver] = 0;
  v8 = &v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerTimeObserver];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = &v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingAssetName];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isPlaying] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isShown] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_disableAutoLoop] = 0;
  v10 = &v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler];
  *v12 = 0;
  v12[1] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_placeholderView] = a1;
  *&v2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_crossDissolveDuration] = a2;
  v40.receiver = v2;
  v40.super_class = type metadata accessor for FMAVPlayerView();
  v13 = a1;
  v14 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = qword_27EF4E990;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C0E8);
  v18 = sub_24A62E2F4();
  v19 = sub_24A62EF64();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMAVPlayerView: init", v20, 2u);
    MEMORY[0x24C21BBE0](v20, -1, -1);
  }

  v21 = objc_opt_self();
  v22 = [v21 sharedInstance];
  v23 = *MEMORY[0x277CB8030];
  v24 = *MEMORY[0x277CB80A8];
  v39 = 0;
  v25 = [v22 setCategory:v23 mode:v24 options:1 error:&v39];

  v26 = v39;
  if (v25 && (v27 = v39, v28 = [v21 sharedInstance], v39 = 0, v29 = objc_msgSend(v28, sel_setActive_withOptions_error_, 1, 0, &v39), v28, v26 = v39, v29))
  {
    v30 = v39;
  }

  else
  {
    v31 = v26;
    v32 = sub_24A62E084();

    swift_willThrow();
    v33 = sub_24A62E2F4();
    v34 = sub_24A62EF64();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24A503000, v33, v34, "🧭 FMAVPlayerView: failed to set the audio session", v35, 2u);
      MEMORY[0x24C21BBE0](v35, -1, -1);
    }
  }

  v36 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetManager;
  [*&v16[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetManager] setUseProcessLocalCache_];
  [*&v16[v36] activate];

  v37 = *MEMORY[0x277D85DE8];
  return v16;
}

id sub_24A59F1C0()
{
  [*&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetManager] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAVPlayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A59F3F4()
{
  v1 = sub_24A62F784();
  v3 = sub_24A516B88(6, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x24C21A580](v3, v5, v7, v9);
  v12 = v11;

  MEMORY[0x24C21A5D0](v10, v12);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](0x3E2740252720, 0xE600000000000000);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24A633830;
  v15 = *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName);
  v14 = *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName + 8);
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_24A508FEC();
  v16 = 0x7465737361206F6ELL;
  if (v14)
  {
    v16 = v15;
  }

  v17 = 0xE800000000000000;
  if (v14)
  {
    v17 = v14;
  }

  *(v13 + 32) = v16;
  *(v13 + 40) = v17;

  v18 = sub_24A62EC24();

  return v18;
}

void sub_24A59F5A8()
{
  v1 = sub_24A62EB14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetBundle];
  if (v11)
  {
    if (*&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName + 8])
    {
      v36 = v11;
      sub_24A5A2690();
      v12 = v36;
    }
  }

  else
  {
    v34 = v8;
    v35 = v2;
    v36 = v1;
    v13 = [objc_allocWithZone(MEMORY[0x277D54C58]) initWithTagColor_];
    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    v15 = objc_allocWithZone(MEMORY[0x277D54C60]);
    v42 = sub_24A5A35EC;
    v43 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_24A5A3308;
    v41 = &unk_285DA7440;
    v16 = _Block_copy(&aBlock);
    v17 = v0;
    v18 = [v15 initWithQueryResultHandler_];
    _Block_release(v16);

    v19 = *&v17[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetManager];
    v32 = v18;
    v33 = v13;
    [v19 getAssetBundleForDeviceQuery:v13 withRequestConfiguration:v18];
    v20 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem;
    if (*&v17[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem])
    {
      v21 = *&v17[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem];

      sub_24A62EB34();
    }

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_24A5A35F4;
    v43 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_24A5A8458;
    v41 = &unk_285DA7468;
    _Block_copy(&aBlock);
    v37 = MEMORY[0x277D84F90];
    sub_24A5A3660(&qword_27EF4F970, 255, MEMORY[0x277D85198]);

    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    v23 = sub_24A62EB44();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_24A62EB24();

    v27 = *&v17[v20];
    *&v17[v20] = v26;

    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v28 = sub_24A62F014();
    sub_24A62EB04();
    v29 = v34;
    sub_24A62EB54();
    v30 = v36;
    v31 = *(v35 + 8);
    v31(v6, v36);
    sub_24A62EFE4();

    v31(v29, v30);
  }
}

uint64_t sub_24A59FA64(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6)
{
  v27 = a4;
  v11 = sub_24A62EA94();
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_24A62EAD4();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v29);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v28 = sub_24A62F014();
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = v27;
  *(v19 + 56) = a5;
  aBlock[4] = sub_24A5A364C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA74B8;
  v20 = _Block_copy(aBlock);
  v21 = a6;
  v22 = a1;

  v23 = a5;

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A5A3660(&qword_27EF4F970, 255, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v24 = v28;
  MEMORY[0x24C21A950](0, v18, v14, v20);
  _Block_release(v20);

  (*(v30 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v29);
}

void sub_24A59FD68(char *a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  if (*&a1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem])
  {
    v11 = *&a1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem];

    sub_24A62EB34();

    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24A6383F0;
    *(v12 + 56) = type metadata accessor for FMAVPlayerView();
    *(v12 + 64) = sub_24A5A3660(&qword_27EF50F38, v13, type metadata accessor for FMAVPlayerView);
    *(v12 + 32) = a1;
    v14 = *&a1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName];
    v15 = *&a1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName + 8];
    v65 = &a1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName];
    v16 = MEMORY[0x277D837D0];
    *(v12 + 96) = MEMORY[0x277D837D0];
    v17 = sub_24A508FEC();
    v18 = a2;
    v19 = v17;
    *(v12 + 104) = v17;
    if (v15)
    {
      v20 = v14;
    }

    else
    {
      v20 = 7104878;
    }

    if (v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    *(v12 + 72) = v20;
    *(v12 + 80) = v21;
    v66 = v18;
    v67 = v18;
    v64 = v18;
    v22 = a1;

    sub_24A508FA4(&qword_27EF50F40, &unk_24A6384B0);
    v23 = sub_24A62EC44();
    *(v12 + 136) = v16;
    *(v12 + 144) = v19;
    *(v12 + 112) = v23;
    *(v12 + 120) = v24;
    *(v12 + 176) = v16;
    *(v12 + 184) = v19;
    *(v12 + 152) = a3;
    *(v12 + 160) = a4;
    v25 = 20302;
    if (a5)
    {
      v25 = 5457241;
    }

    v26 = 0xE200000000000000;
    if (a5)
    {
      v26 = 0xE300000000000000;
    }

    *(v12 + 216) = v16;
    *(v12 + 224) = v19;
    *(v12 + 192) = v25;
    *(v12 + 200) = v26;
    v67 = a6;

    v27 = a6;
    sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
    v28 = sub_24A62EC44();
    *(v12 + 256) = v16;
    *(v12 + 264) = v19;
    *(v12 + 232) = v28;
    *(v12 + 240) = v29;
    v30 = sub_24A62EC24();
    v32 = v31;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v33 = sub_24A62E314();
    sub_24A506EB8(v33, qword_27EF5C0E8);

    v34 = sub_24A62E2F4();
    v35 = sub_24A62EF64();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67 = v37;
      *v36 = 136315138;
      v38 = sub_24A509BA8(v30, v32, &v67);

      *(v36 + 4) = v38;
      _os_log_impl(&dword_24A503000, v34, v35, "%s", v36, 0xCu);
      sub_24A508C54(v37);
      MEMORY[0x24C21BBE0](v37, -1, -1);
      MEMORY[0x24C21BBE0](v36, -1, -1);
    }

    else
    {
    }

    v60 = *&v22[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetBundle];
    *&v22[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetBundle] = v66;

    v61 = *(v65 + 1);
    v62 = v64;
    if (v61)
    {
      sub_24A5A2690();
    }
  }

  else
  {
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_24A636580;
    *(v39 + 56) = type metadata accessor for FMAVPlayerView();
    *(v39 + 64) = sub_24A5A3660(&qword_27EF50F38, v40, type metadata accessor for FMAVPlayerView);
    *(v39 + 32) = a1;
    v41 = *&a1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName];
    v42 = *&a1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName + 8];
    v43 = MEMORY[0x277D837D0];
    *(v39 + 96) = MEMORY[0x277D837D0];
    v44 = sub_24A508FEC();
    *(v39 + 104) = v44;
    if (v42)
    {
      v45 = v41;
    }

    else
    {
      v45 = 7104878;
    }

    v46 = 0xE300000000000000;
    if (v42)
    {
      v46 = v42;
    }

    *(v39 + 72) = v45;
    *(v39 + 80) = v46;
    v67 = a2;
    v47 = a2;

    v48 = a1;
    sub_24A508FA4(&qword_27EF50F40, &unk_24A6384B0);
    v49 = sub_24A62EC44();
    *(v39 + 136) = v43;
    *(v39 + 144) = v44;
    *(v39 + 112) = v49;
    *(v39 + 120) = v50;
    v51 = sub_24A62EC24();
    v53 = v52;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v54 = sub_24A62E314();
    sub_24A506EB8(v54, qword_27EF5C0E8);

    v55 = sub_24A62E2F4();
    v56 = sub_24A62EF64();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67 = v58;
      *v57 = 136315138;
      v59 = sub_24A509BA8(v51, v53, &v67);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_24A503000, v55, v56, "%s", v57, 0xCu);
      sub_24A508C54(v58);
      MEMORY[0x24C21BBE0](v58, -1, -1);
      MEMORY[0x24C21BBE0](v57, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24A5A031C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v2 = sub_24A62E314();
    sub_24A506EB8(v2, qword_27EF5C0E8);
    v3 = v1;
    v4 = sub_24A62E2F4();
    v5 = sub_24A62EF64();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v6 = 138412546;
      *(v6 + 4) = v3;
      *v7 = v1;
      *(v6 + 12) = 2080;
      v9 = &v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName];
      if (*&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName + 8])
      {
        v10 = *v9;
        v11 = v9[1];
      }

      else
      {
        v11 = 0xE300000000000000;
        v10 = 7104878;
      }

      v12 = v3;

      v13 = sub_24A509BA8(v10, v11, &v19);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_24A503000, v4, v5, "🧭 FMAVPlayerView%@: SFDeviceAssetManager.request('%s') never returned (59783662), using local asset", v6, 0x16u);
      sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      sub_24A508C54(v8);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v14 = *&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem];
    *&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem] = 0;

    type metadata accessor for FMAVPlayerView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = *&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetBundle];
    *&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetBundle] = v16;

    if (*&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName + 8])
    {
      v18 = v16;
      sub_24A5A2690();
    }
  }
}

void sub_24A5A05A0(uint64_t a1, uint64_t a2, void *a3)
{
  v88 = a1;
  v89 = a2;
  v86 = sub_24A62E0F4();
  v85 = *(v86 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v90 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EBE4();
  v87 = a3;
  v7 = [a3 pathsForResourcesOfType:v6 inDirectory:0];

  v8 = sub_24A62ED64();
  v91 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = (v91 + 40);
    *&v9 = 136315138;
    v93 = v9;
    do
    {
      v16 = *(v11 - 1);
      v15 = *v11;
      v17 = qword_27EF4E990;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_24A62E314();
      sub_24A506EB8(v18, qword_27EF5C0E8);

      v19 = sub_24A62E2F4();
      v20 = sub_24A62EF64();

      if (os_log_type_enabled(v19, v20))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&aBlock = v13;
        *v12 = v93;
        v14 = sub_24A509BA8(v16, v15, &aBlock);

        *(v12 + 4) = v14;
        _os_log_impl(&dword_24A503000, v19, v20, "🧭 FMAVPlayerView: asset available %s", v12, 0xCu);
        sub_24A508C54(v13);
        MEMORY[0x24C21BBE0](v13, -1, -1);
        MEMORY[0x24C21BBE0](v12, -1, -1);
      }

      else
      {
      }

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v22 = v88;
  v21 = v89;
  v23 = sub_24A62EBE4();
  v24 = sub_24A62EBE4();
  v25 = [v87 pathForResource:v23 ofType:v24];

  if (v25)
  {
    v26 = v92;
  }

  else
  {
    type metadata accessor for FMAVPlayerView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    v29 = sub_24A62EBE4();
    v30 = sub_24A62EBE4();
    v25 = [v28 pathForResource:v29 ofType:v30];

    v26 = v92;
    if (!v25)
    {
      goto LABEL_18;
    }
  }

  sub_24A62EC14();

  v31 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isPlaying;
  if (v26[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isPlaying] == 1)
  {
    v32 = *&v26[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingAssetName + 8];
    if (v32)
    {
      if (*&v26[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingAssetName] == v22 && v32 == v21 || (sub_24A62F634() & 1) != 0)
      {

LABEL_18:
        if (qword_27EF4E990 == -1)
        {
LABEL_19:
          v33 = sub_24A62E314();
          sub_24A506EB8(v33, qword_27EF5C0E8);
          v34 = v26;
          *&v93 = sub_24A62E2F4();
          v35 = sub_24A62EF64();

          if (os_log_type_enabled(v93, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            *(v36 + 4) = v34;
            *v37 = v34;
            v38 = v34;
            _os_log_impl(&dword_24A503000, v93, v35, "🧭 FMAVPlayerView%@: can't play video", v36, 0xCu);
            sub_24A50D6A4(v37, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v37, -1, -1);
            MEMORY[0x24C21BBE0](v36, -1, -1);
          }

          v39 = v93;

          return;
        }

LABEL_43:
        swift_once();
        goto LABEL_19;
      }
    }
  }

  sub_24A62E0A4();

  v40 = objc_allocWithZone(MEMORY[0x277CE65B0]);
  v41 = sub_24A62E0B4();
  v42 = [v40 initWithURL_];

  v43 = [objc_allocWithZone(MEMORY[0x277CE6598]) initWithPlayerItem_];
  v44 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player;
  v45 = *&v26[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player];
  *&v26[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player] = v43;

  v46 = type metadata accessor for FMAVPlayerView();
  v98.receiver = v26;
  v98.super_class = v46;
  v47 = objc_msgSendSuper2(&v98, sel_layer);
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v49 = v48;
    v50 = *&v26[v44];
    [v49 setPlayer_];
  }

  v26[v31] = 1;
  v51 = [v42 tracks];
  sub_24A50D7EC(0, &qword_27EF50F30, 0x277CE65C8);
  v52 = sub_24A62ED64();

  if (v52 >> 62)
  {
    if (sub_24A62F464())
    {
      goto LABEL_28;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_28:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x24C21ACB0](0, v52);
  }

  else
  {
    if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_43;
    }

    v53 = *(v52 + 32);
  }

  v54 = v53;

  v55 = [v54 assetTrack];

  if (v55)
  {
    [v55 timeRange];
  }

LABEL_35:
  v56 = *&v26[v44];
  if (v56)
  {
    v57 = v56;
    v58 = sub_24A62F0F4();
    v60 = v59;
    v62 = v61;
    v63 = HIDWORD(v59);
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v64 = sub_24A62F014();
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96 = sub_24A5A34B0;
    v97 = v65;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v95 = sub_24A5A14C4;
    *(&v95 + 1) = &unk_285DA71E8;
    v66 = _Block_copy(&aBlock);

    *&aBlock = v58;
    *(&aBlock + 1) = __PAIR64__(v63, v60);
    v26 = v92;
    *&v95 = v62;
    v67 = [v57 addPeriodicTimeObserverForInterval:&aBlock queue:v64 usingBlock:v66];
    _Block_release(v66);

    sub_24A62F234();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v95 = 0u;
  }

  v68 = v85;
  v69 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerTimeObserver;
  swift_beginAccess();
  sub_24A582118(&aBlock, &v26[v69]);
  swift_endAccess();
  v70 = *&v26[v44];
  if (v70)
  {
    *&aBlock = *&v26[v44];
    swift_getKeyPath();
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v72 = swift_allocObject();
    *(v72 + 16) = sub_24A5A34F8;
    *(v72 + 24) = v71;
    v73 = v70;
    v70 = sub_24A62E094();
  }

  v74 = v86;
  v75 = *&v26[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerStartedObservation];
  *&v26[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerStartedObservation] = v70;

  v76 = [objc_opt_self() defaultCenter];
  v77 = sub_24A62EBE4();
  v78 = objc_opt_self();
  v79 = v42;
  v80 = [v78 mainQueue];
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = sub_24A5A3564;
  v97 = v81;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v95 = sub_24A5A2250;
  *(&v95 + 1) = &unk_285DA7238;
  v82 = _Block_copy(&aBlock);

  v83 = [v76 addObserverForName:v77 object:v79 queue:v80 usingBlock:v82];
  _Block_release(v82);

  (*(v68 + 8))(v90, v74);
  v84 = *&v26[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerEndedObserver];
  *&v26[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerEndedObserver] = v83;
  swift_unknownObjectRelease();
}

void sub_24A5A1090(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler);
    if (v8)
    {
      v9 = *(Strong + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler + 8);

      v8(a1, a2, a3);
      sub_24A50D354(v8);
    }

    v11 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info];
    v10 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 16];
    v12 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 48];
    v45 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 32];
    v46 = v12;
    v43 = v11;
    v44 = v10;
    v14 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 80];
    v13 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 96];
    v15 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 64];
    v50 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 112];
    v48 = v14;
    v49 = v13;
    v47 = v15;
    if (v50 && (v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_disableAutoLoop] & 1) == 0)
    {
      v17 = *(&v45 + 1);
      v16 = v45;
      v18 = v46;
      v19 = v47;
      v41[4] = v47;
      v41[5] = v48;
      v41[6] = v49;
      v42 = v50;
      v41[0] = v43;
      v41[1] = v44;
      v41[2] = v45;
      v41[3] = v46;
      sub_24A595890(v41, &time1);
      time1.value = a1;
      *&time1.timescale = a2;
      time1.epoch = a3;
      time2.value = *(&v18 + 1);
      *&time2.timescale = v19;
      if (CMTimeCompare(&time1, &time2) == -1)
      {

        sub_24A50D6A4(&v43, &qword_27EF50F28, &unk_24A638478);
      }

      else
      {
        sub_24A50D6A4(&v43, &qword_27EF50F28, &unk_24A638478);
        if (qword_27EF4E990 != -1)
        {
          swift_once();
        }

        v20 = sub_24A62E314();
        sub_24A506EB8(v20, qword_27EF5C0E8);
        v21 = v7;
        v22 = sub_24A62E2F4();
        v23 = sub_24A62EF64();

        if (os_log_type_enabled(v22, v23))
        {
          v35 = v16;
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412546;
          *(v24 + 4) = v21;
          *v25 = v7;
          *(v24 + 12) = 2048;
          v26 = v21;
          sub_24A62F104();
          *(v24 + 14) = v27;
          _os_log_impl(&dword_24A503000, v22, v23, "🧭 FMAVPlayerView%@: restarting playing video (inner loop at %f)", v24, 0x16u);
          sub_24A50D6A4(v25, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v25, -1, -1);
          v28 = v24;
          v16 = v35;
          MEMORY[0x24C21BBE0](v28, -1, -1);
        }

        v29 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player;
        [*&v21[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player] pause];
        v30 = *&v21[v29];
        if (v30)
        {
          v31 = swift_allocObject();
          *(v31 + 16) = *(&v18 + 1);
          v39 = sub_24A5A386C;
          v40 = v31;
          time1.value = MEMORY[0x277D85DD0];
          *&time1.timescale = 1107296256;
          time1.epoch = sub_24A5A1470;
          v38 = &unk_285DA73F0;
          v32 = _Block_copy(&time1);
          v33 = *(&v18 + 1);
          v34 = v30;

          time1.value = v16;
          *&time1.timescale = v17;
          time1.epoch = v18;
          [v34 seekToTime:&time1 completionHandler:v32];

          _Block_release(v32);
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_24A5A1470(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_24A5A14C4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(v2, v3, v4);
}

void sub_24A5A1530(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (!a1)
    {
LABEL_11:

      return;
    }

    v4 = a1;
    if ([v4 status] != 1)
    {

      goto LABEL_11;
    }

    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C0E8);
    v6 = v3;
    v7 = sub_24A62E2F4();
    v8 = sub_24A62EF64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v3;
      v11 = v6;
      _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMAVPlayerView%@: ready to play video", v9, 0xCu);
      sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v10, -1, -1);
      MEMORY[0x24C21BBE0](v9, -1, -1);
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v4;
    v13 = &v6[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_time];
    if (v6[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_time + 24])
    {
      v3 = v4;
      v14 = v6;
      sub_24A5A1948(v14, v3);

      goto LABEL_11;
    }

    v16 = *(v13 + 1);
    v15 = *(v13 + 2);
    v33 = *v13;
    v17 = v6;
    v32 = v4;
    v18 = v17;
    v19 = sub_24A62E2F4();
    v20 = sub_24A62EF64();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v18;
      *v22 = v3;
      *(v21 + 12) = 2048;
      v23 = v18;
      sub_24A62F104();
      *(v21 + 14) = v24;
      _os_log_impl(&dword_24A503000, v19, v20, "🧭 FMAVPlayerView%@: seek to %f sec before playing video", v21, 0x16u);
      sub_24A50D6A4(v22, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v22, -1, -1);
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }

    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 8);
    v27 = *(MEMORY[0x277CC08F0] + 12);
    v28 = v15;
    v29 = *(MEMORY[0x277CC08F0] + 16);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_24A5A35C8;
    *(v30 + 24) = v12;
    v46 = sub_24A5493F0;
    v47 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_24A5A1470;
    v45 = &unk_285DA7300;
    v31 = _Block_copy(&aBlock);

    v41 = v29;
    aBlock = v33;
    v43 = v16;
    v44 = v28;
    v37 = v29;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    [v32 seekToTime:&aBlock toleranceBefore:&v38 toleranceAfter:&v34 completionHandler:v31];

    _Block_release(v31);
  }
}

void sub_24A5A1948(_BYTE *a1, void *a2)
{
  a1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isShown] = 1;
  v4 = objc_opt_self();
  v5 = *&a1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_crossDissolveDuration];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v17 = sub_24A5A35D0;
  v18 = v6;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_24A5A8458;
  v16 = &unk_285DA7350;
  v7 = _Block_copy(&v13);
  v8 = a1;

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  v17 = sub_24A5A35E4;
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_24A5A1470;
  v16 = &unk_285DA73A0;
  v10 = _Block_copy(&v13);
  v11 = v8;
  v12 = a2;

  [v4 animateWithDuration:v7 animations:v10 completion:v5];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_24A5A1AFC(int a1, char *a2, id a3)
{
  if (a2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isPlaying] == 1)
  {
    v5 = *&a2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_placeholderView];
    if (v5)
    {
      [v5 setAlpha_];
    }

    v6 = *&a2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler];
    if (v6)
    {
      v7 = *&a2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler + 8];
      v8 = *&a2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_crossDissolveDuration];

      v6(1, v8);
      sub_24A50D354(v6);
    }

    [a3 play];
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v9 = sub_24A62E314();
    sub_24A506EB8(v9, qword_27EF5C0E8);
    v10 = a2;
    oslog = sub_24A62E2F4();
    v11 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v10;
      v14 = v10;
      v15 = "🧭 FMAVPlayerView%@: started playing video";
LABEL_14:
      _os_log_impl(&dword_24A503000, oslog, v11, v15, v12, 0xCu);
      sub_24A50D6A4(v13, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v13, -1, -1);
      MEMORY[0x24C21BBE0](v12, -1, -1);
    }
  }

  else
  {
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v16 = sub_24A62E314();
    sub_24A506EB8(v16, qword_27EF5C0E8);
    v17 = a2;
    oslog = sub_24A62E2F4();
    v11 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v17;
      *v13 = v17;
      v18 = v17;
      v15 = "🧭 FMAVPlayerView%@: did not start playing video (aborted)";
      goto LABEL_14;
    }
  }
}

void sub_24A5A1DA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player;
    [*(Strong + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player) pause];
    if (v1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_disableAutoLoop] == 1)
    {
      if (qword_27EF4E990 != -1)
      {
        swift_once();
      }

      v3 = sub_24A62E314();
      sub_24A506EB8(v3, qword_27EF5C0E8);
      v4 = v1;
      v5 = sub_24A62E2F4();
      v6 = sub_24A62EF64();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v4;
        *v8 = v1;
        v9 = v4;
        _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMAVPlayerView%@: will not restart playing video", v7, 0xCu);
        sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v8, -1, -1);
        MEMORY[0x24C21BBE0](v7, -1, -1);
      }

      v10 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler];
      if (v10)
      {
        v11 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler + 8];
        v12 = *MEMORY[0x277CC08F0];
        v13 = *(MEMORY[0x277CC08F0] + 8);
        v14 = *(MEMORY[0x277CC08F0] + 16);

        v10(v12, v13, v14);
        sub_24A50D354(v10);
      }

      goto LABEL_17;
    }

    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v15 = sub_24A62E314();
    sub_24A506EB8(v15, qword_27EF5C0E8);
    v4 = v1;
    v16 = sub_24A62E2F4();
    v17 = sub_24A62EF64();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v4;
      *v19 = v1;
      v20 = v4;
      _os_log_impl(&dword_24A503000, v16, v17, "🧭 FMAVPlayerView%@: restarting playing video", v18, 0xCu);
      sub_24A50D6A4(v19, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v19, -1, -1);
      MEMORY[0x24C21BBE0](v18, -1, -1);
    }

    v22 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 80];
    v21 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 96];
    v23 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 64];
    v54 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 112];
    v24 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 48];
    v26 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info];
    v25 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 16];
    v49 = *&v4[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 32];
    v50 = v24;
    v47 = v26;
    v48 = v25;
    v52 = v22;
    v53 = v21;
    v51 = v23;
    if (v54)
    {
      v44 = v52;
      v45 = v53;
      aBlock = v47;
      v40 = v48;
      v41 = v49;
      v46 = v54;
      v42 = v50;
      v43 = v51;
      sub_24A595890(&aBlock, v38);
      sub_24A62F104();
      v27 = sub_24A62F0F4();
      v29 = v28;
      v31 = v30;
      v32 = HIDWORD(v28);
      sub_24A50D6A4(&v47, &qword_27EF50F28, &unk_24A638478);
      v33 = *&v1[v2];
      if (v33)
      {
LABEL_15:
        v34 = swift_allocObject();
        *(v34 + 16) = v4;
        *&v41 = sub_24A5A356C;
        *(&v41 + 1) = v34;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v40 = sub_24A5A1470;
        *(&v40 + 1) = &unk_285DA7288;
        v35 = _Block_copy(&aBlock);
        v36 = v4;
        v37 = v33;

        *&aBlock = v27;
        *(&aBlock + 1) = __PAIR64__(v32, v29);
        *&v40 = v31;
        [v37 seekToTime:&aBlock completionHandler:v35];

        _Block_release(v35);
        return;
      }
    }

    else
    {
      v27 = *MEMORY[0x277CC08F0];
      v29 = *(MEMORY[0x277CC08F0] + 8);
      LODWORD(v32) = *(MEMORY[0x277CC08F0] + 12);
      v31 = *(MEMORY[0x277CC08F0] + 16);
      v33 = *&v1[v2];
      if (v33)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
  }
}

uint64_t sub_24A5A2250(uint64_t a1)
{
  v2 = sub_24A62E044();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_24A62E034();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_24A5A2344(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, __int128 *a7)
{
  v12 = a7[3];
  v13 = a7[5];
  v67 = a7[4];
  v14 = v67;
  v68 = v13;
  v15 = a7[5];
  v69 = a7[6];
  v16 = a7[1];
  v64[0] = *a7;
  v64[1] = v16;
  v17 = a7[3];
  v19 = *a7;
  v18 = a7[1];
  v65 = a7[2];
  v66 = v17;
  v20 = &v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info];
  v21 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 48];
  v71[2] = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 32];
  v71[3] = v21;
  v22 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 16];
  v71[0] = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info];
  v71[1] = v22;
  v23 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 96];
  v71[5] = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 80];
  v71[6] = v23;
  v71[4] = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info + 64];
  *(v20 + 2) = v65;
  *(v20 + 3) = v12;
  v70 = *(a7 + 14);
  v72 = *(v20 + 14);
  *v20 = v19;
  *(v20 + 1) = v18;
  v24 = a7[6];
  *(v20 + 14) = *(a7 + 14);
  *(v20 + 5) = v15;
  *(v20 + 6) = v24;
  *(v20 + 4) = v14;
  sub_24A50D63C(v64, v62, &qword_27EF50F28, &unk_24A638478);
  sub_24A50D6A4(v71, &qword_27EF50F28, &unk_24A638478);
  v52 = a6;
  v51 = a3;
  if (a6)
  {
    v25 = a5;
    v26 = *MEMORY[0x277CC08F0];
    v28 = *(MEMORY[0x277CC08F0] + 8);
    LODWORD(v27) = *(MEMORY[0x277CC08F0] + 12);
    v29 = *(MEMORY[0x277CC08F0] + 16);
  }

  else
  {
    v27 = HIDWORD(a4);
    v28 = a4;
    v26 = a3;
    v25 = a5;
    v29 = a5;
  }

  v30 = *(v20 + 5);
  v62[4] = *(v20 + 4);
  v62[5] = v30;
  v62[6] = *(v20 + 6);
  v63 = *(v20 + 14);
  v31 = *(v20 + 1);
  v62[0] = *v20;
  v62[1] = v31;
  v32 = *(v20 + 3);
  v62[2] = *(v20 + 2);
  v62[3] = v32;
  if (v63)
  {
    v33 = *(v20 + 4);
    v34 = *(v20 + 6);
    v59 = *(v20 + 5);
    v60 = v34;
    v35 = *(v20 + 1);
    aBlock = *v20;
    v36 = *(v20 + 2);
    v37 = *(v20 + 3);
    v55 = v35;
    v56 = v36;
    v61 = *(v20 + 14);
    v57 = v37;
    v58 = v33;
    sub_24A595890(&aBlock, v53);
    sub_24A62F104();
    v26 = sub_24A62F0F4();
    v28 = v38;
    v29 = v39;
    v27 = HIDWORD(v38);
    sub_24A50D6A4(v62, &qword_27EF50F28, &unk_24A638478);
  }

  v40 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player];
  if (v40)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v7;
    *&v56 = sub_24A5A386C;
    *(&v56 + 1) = v41;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_24A5A1470;
    *(&v55 + 1) = &unk_285DA7198;
    v42 = _Block_copy(&aBlock);
    v43 = v40;
    v44 = v7;

    *&aBlock = v26;
    *(&aBlock + 1) = __PAIR64__(v27, v28);
    *&v55 = v29;
    [v43 seekToTime:&aBlock completionHandler:v42];
    _Block_release(v42);
  }

  v45 = &v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_time];
  *v45 = v51;
  *(v45 + 1) = a4;
  *(v45 + 2) = v25;
  v45[24] = v52 & 1;
  v46 = v70;
  if (v70)
  {
    v47 = *(&v69 + 1);
  }

  else
  {

    v47 = a1;
  }

  v48 = &v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName];
  v49 = *&v7[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName + 8];
  *v48 = v47;
  *(v48 + 1) = v46;
  sub_24A50D63C(v64, &aBlock, &qword_27EF50F28, &unk_24A638478);

  sub_24A59F5A8();
}

void sub_24A5A2690()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetBundle];
  if (!v1)
  {
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v19 = sub_24A62E314();
    sub_24A506EB8(v19, qword_27EF5C0E8);
    v20 = v0;
    oslog = sub_24A62E2F4();
    v21 = sub_24A62EF44();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v20;
      *v23 = v20;
      v24 = v20;
      _os_log_impl(&dword_24A503000, oslog, v21, "🧭 FMAVPlayerView%@: cannot load assets for nil bundle", v22, 0xCu);
      sub_24A50D6A4(v23, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v23, -1, -1);
      MEMORY[0x24C21BBE0](v22, -1, -1);
    }

    goto LABEL_31;
  }

  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName + 8];
  if (!v2)
  {
    v36 = qword_27EF4E990;
    v11 = v1;
    if (v36 != -1)
    {
      swift_once();
    }

    v37 = sub_24A62E314();
    sub_24A506EB8(v37, qword_27EF5C0E8);
    v38 = v0;
    oslog = sub_24A62E2F4();
    v39 = sub_24A62EF44();

    if (!os_log_type_enabled(oslog, v39))
    {
      goto LABEL_30;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v38;
    *v14 = v38;
    v40 = v38;
    v16 = "🧭 FMAVPlayerView%@: cannot load video for nil asset name";
    v17 = v39;
    v18 = oslog;
    goto LABEL_29;
  }

  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName];
  if (v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isPlaying] == 1)
  {
    v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingAssetName + 8];
    if (v4)
    {
      v5 = v3 == *&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingAssetName] && v2 == v4;
      if (v5 || (v6 = *&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName], v7 = *&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName + 8], (sub_24A62F634() & 1) != 0))
      {
        v8 = qword_27EF4E990;
        oslog = v1;
        if (v8 != -1)
        {
          swift_once();
        }

        v9 = sub_24A62E314();
        sub_24A506EB8(v9, qword_27EF5C0E8);
        v10 = v0;
        v11 = sub_24A62E2F4();
        v12 = sub_24A62EF64();

        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_30;
        }

        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v10;
        *v14 = v10;
        v15 = v10;
        v16 = "🧭 FMAVPlayerView%@: did not start playing playing since it's already playing";
        v17 = v12;
        v18 = v11;
LABEL_29:
        _os_log_impl(&dword_24A503000, v18, v17, v16, v13, 0xCu);
        sub_24A50D6A4(v14, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v14, -1, -1);
        MEMORY[0x24C21BBE0](v13, -1, -1);
LABEL_30:

LABEL_31:

        return;
      }
    }
  }

  v25 = qword_27EF4E990;
  v26 = v1;

  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_24A62E314();
  sub_24A506EB8(v27, qword_27EF5C0E8);
  v28 = v0;
  v29 = sub_24A62E2F4();
  v30 = sub_24A62EF64();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_24A503000, v29, v30, "🧭 FMAVPlayerView%@: will start playing video", v31, 0xCu);
    sub_24A50D6A4(v32, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v32, -1, -1);
    MEMORY[0x24C21BBE0](v31, -1, -1);
  }

  sub_24A5A05A0(v3, v2, v26);
  v34 = &v28[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingAssetName];
  v35 = *&v28[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingAssetName + 8];
  *v34 = v3;
  v34[1] = v2;
}

void sub_24A5A2BD0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isPlaying;
  if (v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isPlaying] == 1)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player;
    [*&v0[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player] pause];
    v0[v2] = 0;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C0E8);
    v5 = v0;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMAVPlayerView%@: stopped playing video", v8, 0xCu);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    v11 = *&v5[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerStartedObservation];
    *&v5[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerStartedObservation] = 0;

    v12 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerTimeObserver;
    swift_beginAccess();
    sub_24A50D63C(&v5[v12], &v42, &unk_27EF50780, &qword_24A638470);
    if (*(&v43 + 1))
    {
      sub_24A582FBC(&v42, &aBlock);
      v13 = *&v1[v3];
      if (v13)
      {
        sub_24A50A204(&aBlock, v39);
        v14 = v13;
        [v14 removeTimeObserver_];

        swift_unknownObjectRelease();
      }

      v42 = 0u;
      v43 = 0u;
      swift_beginAccess();
      sub_24A582118(&v42, &v5[v12]);
      swift_endAccess();
      sub_24A508C54(&aBlock);
    }

    else
    {
      sub_24A50D6A4(&v42, &unk_27EF50780, &qword_24A638470);
    }

    v21 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerEndedObserver;
    v22 = *&v5[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerEndedObserver];
    if (v22)
    {
      v23 = objc_opt_self();
      swift_unknownObjectRetain();
      v24 = [v23 defaultCenter];
      [v24 removeObserver_];

      swift_unknownObjectRelease();
      v25 = *&v5[v21];
      *&v5[v21] = 0;
      swift_unknownObjectRelease();
    }

    v26 = *&v5[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler];
    if (v26)
    {
      v27 = *&v5[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler + 8];

      v26(0, 0.0);
      sub_24A50D354(v26);
    }

    v28 = objc_opt_self();
    v29 = *&v5[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_crossDissolveDuration];
    v30 = swift_allocObject();
    *(v30 + 16) = v5;
    v40 = sub_24A5A33FC;
    v41 = v30;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v38 = sub_24A5A8458;
    v39 = &unk_285DA70F8;
    v31 = _Block_copy(&aBlock);
    v32 = v5;

    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    v40 = sub_24A5A3470;
    v41 = v33;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v38 = sub_24A5A1470;
    v39 = &unk_285DA7148;
    v34 = _Block_copy(&aBlock);
    v35 = v32;

    [v28 animateWithDuration:v31 animations:v34 completion:v29];
    _Block_release(v34);
    _Block_release(v31);
  }

  else
  {
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v15 = sub_24A62E314();
    sub_24A506EB8(v15, qword_27EF5C0E8);
    v16 = v0;
    oslog = sub_24A62E2F4();
    v17 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v16;
      *v19 = v16;
      v20 = v16;
      _os_log_impl(&dword_24A503000, oslog, v17, "🧭 FMAVPlayerView%@: did not stop playing video since it's not playing", v18, 0xCu);
      sub_24A50D6A4(v19, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v19, -1, -1);
      MEMORY[0x24C21BBE0](v18, -1, -1);
    }
  }
}

void sub_24A5A3194(uint64_t a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isShown] = 0;
  if ((a2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isPlaying] & 1) == 0)
  {
    v6.receiver = a2;
    v6.super_class = type metadata accessor for FMAVPlayerView();
    v3 = objc_msgSendSuper2(&v6, sel_layer);
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 setPlayer_];
    }

    v5 = *&a2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player];
    *&a2[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player] = 0;
  }
}

void sub_24A5A3308(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = sub_24A62EC14();
  v12 = v11;

  v14 = a2;
  v13 = a5;
  v9(a2, v10, v12, a4, a5);
}

uint64_t sub_24A5A33C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24A5A33FC()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_placeholderView];
  if (v2)
  {
    [v2 setAlpha_];
  }

  return [v1 setAlpha_];
}

uint64_t sub_24A5A3458(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5A3478()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24A5A34C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_24A5A3500()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5A3538(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_24A5A3588()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5A35FC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A5A3660(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_24A5A36A8()
{
  *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetBundle) = 0;
  v1 = v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_info;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  v2 = OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetManager;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D54C50]) init];
  v3 = v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_time;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerStartedObservation) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerEndedObserver) = 0;
  v4 = (v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playerTimeObserver);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingAssetName);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isShown) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_disableAutoLoop) = 0;
  v6 = (v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler);
  *v8 = 0;
  v8[1] = 0;
  sub_24A62F444();
  __break(1u);
}

__n128 sub_24A5A38A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_24A5A38E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 208))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24A5A3924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24A5A39AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_24A5A39C4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24A5A3A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24A5A3A5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

id sub_24A5A3AF0()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v2 colorWithAlphaComponent_];

  result = [v0 whiteColor];
  qword_27EF5C220 = v1;
  qword_27EF5C228 = v3;
  qword_27EF5C230 = result;
  qword_27EF5C238 = 0x3FE0000000000000;
  return result;
}

double sub_24A5A3BA8()
{
  xmmword_27EF5C240 = xmmword_24A6384C0;
  byte_27EF5C250 = 1;
  qword_27EF5C258 = 0;
  LOBYTE(xmmword_27EF5C260) = 1;
  *(&xmmword_27EF5C260 + 1) = 0;
  byte_27EF5C270 = 1;
  qword_27EF5C278 = 0;
  LOBYTE(xmmword_27EF5C280) = 1;
  *(&xmmword_27EF5C280 + 1) = 0;
  byte_27EF5C290 = 1;
  qword_27EF5C298 = 0;
  LOBYTE(xmmword_27EF5C2A0) = 1;
  *(&xmmword_27EF5C2A0 + 1) = 0;
  byte_27EF5C2B0 = 1;
  result = 0.0;
  *&algn_27EF5C2B1[7] = 0u;
  *(&xmmword_27EF5C2C0 + 8) = 0u;
  *&algn_27EF5C2D0[8] = 0u;
  *(&xmmword_27EF5C2E0 + 1) = 0u;
  return result;
}

uint64_t sub_24A5A3C30()
{
  if (qword_27EF4EA50 != -1)
  {
    swift_once();
  }

  v9[0] = xmmword_27EF5C6B8;
  v9[1] = xmmword_27EF5C6C8;
  v10[0] = xmmword_27EF5C6D8;
  *(v10 + 9) = *(&xmmword_27EF5C6D8 + 9);
  v1[0] = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  *&v2[48] = *(&xmmword_27EF5C6D8 + 9);
  *&v2[39] = xmmword_27EF5C6D8;
  *&v2[23] = xmmword_27EF5C6C8;
  *&v2[7] = xmmword_27EF5C6B8;
  xmmword_27EF5C300 = xmmword_24A6384D0;
  byte_27EF5C310 = 0;
  qword_27EF5C318 = 5;
  LOBYTE(xmmword_27EF5C320) = 0;
  *(&xmmword_27EF5C320 + 1) = 120;
  byte_27EF5C330 = 0;
  qword_27EF5C338 = 0;
  LOBYTE(xmmword_27EF5C340) = 0;
  *(&xmmword_27EF5C340 + 1) = 0x4059000000000000;
  byte_27EF5C350 = 0;
  qword_27EF5C358 = 1;
  LOBYTE(xmmword_27EF5C360) = 0;
  *(&xmmword_27EF5C360 + 1) = 0;
  byte_27EF5C370 = 0;
  *(&xmmword_27EF5C3A0 + 1) = *&v2[48];
  *&algn_27EF5C390[1] = *&v2[32];
  *(&xmmword_27EF5C380 + 1) = *&v2[16];
  *algn_27EF5C371 = *v2;
  return sub_24A5A3F4C(v9, v1);
}

double sub_24A5A3D68()
{
  if (qword_27EF4E9B0 != -1)
  {
    swift_once();
  }

  *&xmmword_27EF5C3B8 = 0x3FE0000000000000;
  BYTE8(xmmword_27EF5C3B8) = 0;
  xmmword_27EF5C3C8 = xmmword_24A6384E0;
  *&xmmword_27EF5C3D8 = 0x3FEAAAAAAAAAAAABLL;
  BYTE8(xmmword_27EF5C3D8) = 0;
  xmmword_27EF5C3E8 = xmmword_24A6384F0;
  xmmword_27EF5C3F8 = xmmword_24A638500;
  xmmword_27EF5C408 = xmmword_24A638510;
  xmmword_27EF5C418 = xmmword_24A638520;
  xmmword_27EF5C428 = xmmword_24A638530;
  xmmword_27EF5C438 = xmmword_24A638540;
  xmmword_27EF5C448 = xmmword_24A638550;
  *&xmmword_27EF5C458 = 0x3FECCCCCCCCCCCCDLL;
  *(&xmmword_27EF5C458 + 1) = *(&xmmword_27EF50310 + 1);
  result = 0.5;
  xmmword_27EF5C468 = xmmword_24A638560;
  xmmword_27EF5C478 = xmmword_24A638570;
  return result;
}

double sub_24A5A3E64()
{
  if (qword_27EF4E9B8 != -1)
  {
    swift_once();
  }

  *&xmmword_27EF5C488 = 0;
  BYTE8(xmmword_27EF5C488) = 1;
  xmmword_27EF5C498 = xmmword_24A638580;
  *&xmmword_27EF5C4A8 = 0x3FEAAAAAAAAAAAABLL;
  BYTE8(xmmword_27EF5C4A8) = 1;
  xmmword_27EF5C4B8 = xmmword_24A6384F0;
  xmmword_27EF5C4C8 = xmmword_24A638590;
  __asm { FMOV            V1.2D, #1.0 }

  xmmword_27EF5C4D8 = _Q1;
  xmmword_27EF5C4E8 = _Q1;
  xmmword_27EF5C4F8 = _Q1;
  xmmword_27EF5C508 = xmmword_24A638540;
  xmmword_27EF5C518 = xmmword_24A638550;
  *&xmmword_27EF5C528 = 0x3FECCCCCCCCCCCCDLL;
  *(&xmmword_27EF5C528 + 1) = *(&xmmword_27EF50368 + 1);
  result = 0.6;
  xmmword_27EF5C538 = xmmword_24A6385A0;
  xmmword_27EF5C548 = xmmword_24A6385B0;
  return result;
}

uint64_t sub_24A5A3FD0()
{
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
  {
    goto LABEL_9;
  }

  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
  if (!*(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle))
  {

    goto LABEL_6;
  }

  v2 = sub_24A62F634();

  if ((v2 & 1) == 0)
  {
LABEL_9:
    *&result = 0.0;
    return result;
  }

LABEL_6:
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius);
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style);
  sub_24A5E5268(v3, 0.0, 3.14159265);
  v7 = v6 * 0.25;
  v8 = 2.0;
  if (v1 > 0.0)
  {
    v8 = -2.0;
  }

  *&result = v4 * __sincos_stret(v5 * (v8 * v7) + 1.57079633).__cosval;
  return result;
}

uint64_t sub_24A5A4124(double a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle) && *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle) == 1)
  {

    return *&a1;
  }

  v4 = sub_24A62F634();

  if (v4)
  {
    return *&a1;
  }

  if (!*(v1 + v3))
  {

LABEL_10:
    result = 0;
    v7 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralDiskRadius);
    return result;
  }

  v6 = sub_24A62F634();

  if (v6)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_24A5A42A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 & 1) != 0 || (a6)
  {
    return 0;
  }

  *&v8.f64[0] = a1;
  *&v8.f64[1] = a2;
  v23 = v8;
  *&v8.f64[0] = a4;
  *&v8.f64[1] = a5;
  v22 = v8;
  v9 = 1;
  v10 = sub_24A5A4124(*&a1);
  v12 = v11;
  v13 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
  *&v14.f64[0] = v10;
  v14.f64[1] = v15;
  v21 = v14;
  v16 = 0.0;
  v17 = v23;
  do
  {
    v25 = vcvtd_n_f64_u64(v9, 4uLL);
    v26 = v17;
    v24 = 1.0 - v25;
    if (!*(v6 + v13))
    {
      goto LABEL_11;
    }

    v19 = sub_24A62F634();

    if (v19)
    {
      goto LABEL_13;
    }

    if (*(v6 + v13) && *(v6 + v13) == 1)
    {
LABEL_11:
    }

    else
    {
      v20 = sub_24A62F634();

      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_13:
    if (v12)
    {
LABEL_5:
      v17 = vaddq_f64(vmulq_n_f64(v22, v25), vmulq_n_f64(v23, v24));
      goto LABEL_6;
    }

    v17 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v21, v25), vmulq_n_f64(v23, v24)), v24), vmulq_n_f64(vaddq_f64(vmulq_n_f64(v22, v25), vmulq_n_f64(v21, v24)), v25));
LABEL_6:
    v18 = vsubq_f64(v17, v26);
    v16 = v16 + sqrt(vaddvq_f64(vmulq_f64(v18, v18)));
    ++v9;
  }

  while (v9 != 17);
  return *&v16;
}

void sub_24A5A44B0(void *a1)
{
  if (([v1 isHidden] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode] + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_brightness;
    if ((*(v3 + 8) & 1) == 0)
    {
      v4 = *v3;
      if (!UIAccessibilityIsReduceMotionEnabled())
      {
        v5 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode];
        v6 = swift_allocObject();
        v6[2] = a1;
        v6[3] = v4;
        v6[4] = v1;
        v11[4] = sub_24A5A59A8;
        v11[5] = v6;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 1107296256;
        v11[2] = sub_24A5A8458;
        v11[3] = &unk_285DA7688;
        v7 = _Block_copy(v11);
        v8 = v5;
        v9 = a1;
        v10 = v1;

        [v8 runAction:v9 completion:v7];
        _Block_release(v7);
      }
    }
  }
}

void sub_24A5A4608()
{
  v1 = (v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
  if ((*(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode) + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_brightness;
    if ((*(v2 + 8) & 1) == 0)
    {
      v3 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction;
      if (!*(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction))
      {
        v5 = *v1;
        v4 = *(v1 + 1);
        v6 = *v2;
        v7 = sub_24A5EB5CC(11);
        v8 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style;
        v9 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 32) * 100.0;
        if (v9 < 0.0)
        {
          __break(1u);
        }

        else
        {
          v10 = v7;
          v11 = hypot(v5, v4);
          v12 = dbl_24A634820[(v10 & 1) == 0];
          sub_24A5E5268(v13, 0.0, v9);
          v15 = [objc_opt_self() rotateByAngle:v12 / *(v8 + 48) duration:(v11 + v11) * 3.14159265 / (*(v8 + 24) * (v14 / -100.0 + 1.0)) / *(v8 + 48)];
          [v15 setTimingMode_];
          [v15 setSpeed_];
          v16 = *(v0 + v3);
          *(v0 + v3) = v15;
          v17 = v15;

          sub_24A5A44B0(v17);
        }
      }
    }
  }
}

void sub_24A5A47D0()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction;
  if (*&v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction])
  {
    v2 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
    [*&v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode] removeAllActions];
    v3 = *&v0[v1];
    *&v0[v1] = 0;

    v4 = &v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
    if ((v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16] & 1) == 0)
    {
      v5 = &v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition];
      if ((v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition + 16] & 1) == 0)
      {
        v7 = *v4;
        v6 = *(v4 + 1);
        v9 = *v5;
        v8 = *(v5 + 1);
        v10 = fmod(*&v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading] / 180.0 * 3.14159265, 6.28318531);
        if (v10 <= 3.14159265)
        {
          if (v10 < -3.14159265)
          {
            v10 = v10 + 6.28318531;
          }
        }

        else
        {
          v10 = v10 + -6.28318531;
        }

        [*&v0[v2] zRotation];
        v12 = fmod(v11, 6.28318531);
        if (v12 <= 3.14159265)
        {
          if (v12 < -3.14159265)
          {
            v12 = v12 + 6.28318531;
          }
        }

        else
        {
          v12 = v12 + -6.28318531;
        }

        v13 = v10 + v12;
        v14 = hypot(*&v7, v6);
        v15 = atan2(v6, *&v7);
        v16 = __sincos_stret(v13 + v15);
        *v4 = v14 * v16.__cosval;
        *(v4 + 1) = v14 * v16.__sinval;
        v4[16] = 0;
        sub_24A5A4A94();
        v17 = hypot(v9, v8);
        v18 = atan2(v8, v9);
        v19 = __sincos_stret(v13 + v18);
        *v5 = v17 * v19.__cosval;
        *(v5 + 1) = v17 * v19.__sinval;
        v5[16] = 0;
      }
    }

    [*&v0[v2] setZRotation_];
    [v0 setZRotation_];
    v20 = sub_24A5A3FD0();
    if (v22)
    {
      v23 = *v4;
      v24 = *(v4 + 1);
      v25 = v4[16];
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25 = 0;
    }

    v26 = &v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
    *v26 = v23;
    *(v26 + 1) = v24;
    v26[16] = v25;
    v27 = sub_24A5A42A0(*&v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition], *&v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 8], v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16], v23, v24, v25);
    v28 = &v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
    *v28 = v27;
    v28[8] = v29 & 1;
    v30 = sub_24A5A5880(*v26, *(v26 + 1), v26[16], *v4, *(v4 + 1), v4[16]);
    v31 = &v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
    *v31 = v30;
    v31[8] = v32 & 1;
    if ((v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
    {
      v33 = *&v0[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];

      sub_24A5DF354(v33);
    }
  }
}

uint64_t sub_24A5A4A94()
{
  v1 = sub_24A5A3FD0();
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
    v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 8);
    v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16);
  }

  else
  {
    v4 = v1;
    v5 = v2;
    v6 = 0;
  }

  v7 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition;
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;
  v8 = sub_24A5A42A0(*(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition), *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 8), *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16), v4, v5, v6);
  v9 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength;
  *v9 = v8;
  *(v9 + 8) = v10 & 1;
  result = sub_24A5A5880(*v7, *(v7 + 8), *(v7 + 16), *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition), *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 8), *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16));
  v12 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength;
  *v12 = result;
  *(v12 + 8) = v13 & 1;
  return result;
}

__n128 sub_24A5A4B5C()
{
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_experienceType) != 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition + 16);
    v2 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
    *v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition);
    *(v2 + 16) = v1;
    sub_24A5A4A94();
    v3 = sub_24A5A3FD0();
    if (v5)
    {
      v6 = *v2;
      v7 = *(v2 + 8);
      v8 = *(v2 + 16);
    }

    else
    {
      v6 = v3;
      v7 = v4;
      v8 = 0;
    }

    v9 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition;
    *v9 = v6;
    *(v9 + 8) = v7;
    *(v9 + 16) = v8;
    v10 = sub_24A5A42A0(*(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition), *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 8), *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16), v6, v7, v8);
    v11 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength;
    *v11 = v10;
    *(v11 + 8) = v12 & 1;
    v13 = sub_24A5A5880(*v9, *(v9 + 8), *(v9 + 16), *v2, *(v2 + 8), *(v2 + 16));
    v14 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength;
    *v14 = v13;
    *(v14 + 8) = v15 & 1;
    v16 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition + 16);
    v17 = (v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition);
    result = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition);
    *v17 = result;
    v17[1].n128_u8[0] = v16;
  }

  return result;
}

void sub_24A5A4C78(char a1, double a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring);
  if (v4 && (v5 = *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring)) != 0)
  {
    v8 = v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset;
    *v8 = a2;
    *(v8 + 8) = a3;
    *(v8 + 16) = 0;
    if ((a1 & 1) == 0 || (v9 = &v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s], swift_beginAccess(), v9[35] + *&v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40] == 1.79769313e308) || (v10 = &v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s], swift_beginAccess(), v10[35] + *&v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40] == 1.79769313e308))
    {
      sub_24A55C6B4(a2);
      v4[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
      sub_24A55C6B4(a3);
      v5[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
      v11 = v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset;
      *v11 = a2;
      *(v11 + 8) = a3;
      *(v11 + 16) = 0;
      if ((*(v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8) & 1) == 0)
      {
        v12 = *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor);
        v13 = v4;
        v14 = v5;
        sub_24A5DF354(v12);
      }
    }

    else
    {
      v17 = &v4[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget];
      *v17 = a2;
      *(v17 + 8) = 0;
      sub_24A5B18FC();
      v18 = &v5[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget];
      *v18 = a3;
      *(v18 + 8) = 0;
      sub_24A5B18FC();
    }
  }

  else
  {
    v15 = v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset;
    *(v15 + 16) = 0;
    *v15 = 0;
    *(v15 + 8) = 0;
    if ((*(v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8) & 1) == 0)
    {
      v16 = *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor);

      sub_24A5DF354(v16);
    }
  }
}

void sub_24A5A4E9C(char a1, double a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring);
  if (!v4 || (v5 = v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style, (*(v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 168) & 1) != 0) || (*(v5 + 152) & 1) != 0 || (*(v5 + 184) & 1) != 0)
  {
    v6 = v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor;
    *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor) = 0x3FF0000000000000;
LABEL_6:
    *(v6 + 8) = 0;
    return;
  }

  v7 = *(v5 + 160);
  if (v7 <= a2)
  {
    v12 = (*(v5 + 176) - a2) / (*(v5 + 176) - v7);
    v13 = 1.0 - fmin(v12, 1.0);
    if (v12 < 0.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v8 = (a2 - *(v5 + 144)) / (v7 - *(v5 + 144));
    if (v8 < 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v8;
    }

    v10 = 1.0 - v9;
    if (v8 >= 1.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10;
    }
  }

  v14 = v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor;
  *v14 = v11;
  *(v14 + 8) = 0;
  if ((a1 & 1) == 0 || (v15 = v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v15 + 280) + *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308))
  {
    sub_24A55C6B4(v11);
    *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v6 = v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor;
    *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor) = v11;
    goto LABEL_6;
  }

  v16 = v4 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
  *v16 = v11;
  *(v16 + 8) = 0;
  sub_24A5B18FC();
}

void sub_24A5A5060()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_renderingColor);
}

id sub_24A5A5110()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKPatternFragmentNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_24A5A5224(long double a1, long double a2, long double a3, long double a4, double a5)
{
  v8 = atan2(a2, a1);
  v9 = atan2(a4, a3);
  v10 = v9 - v8;
  if (vabdd_f64(v9, v8) > 3.14159265)
  {
    if (v8 >= 0.0 || v9 < 0.0)
    {
      if (v9 < 0.0 && v8 >= 0.0)
      {
        v10 = v10 + 6.28318531;
      }
    }

    else
    {
      v10 = v10 + -6.28318531;
    }
  }

  v12 = hypot(a3, a4);
  return v12 * __sincos_stret((1.0 - a5) * v8 + (v8 + v10) * a5).__cosval;
}

void sub_24A5A5308(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = (v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
  v5 = 0uLL;
  v6 = 0.0;
  if ((*(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16) & 1) == 0)
  {
    v7 = (v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition);
    if ((*(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition + 16) & 1) == 0)
    {
      v8 = v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
      if ((*(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength + 8) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength + 8) & 1) == 0)
      {
        v11 = a1;
        v32 = *v4;
        v33 = v4[1];
        v12 = *v7;
        v6 = *v8;
        v13 = *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength);
        v14 = *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength);
        v15 = *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_trackOffset);
        if (*(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_trackOffset + 8))
        {
          v15 = 0.0;
        }

        v16 = v7[1] - v15;
        v10 = *(v8 + 8) - v15;
        v17 = 1.0 - a2;
        *&v18 = COERCE_DOUBLE(sub_24A5A4124(*v4));
        v21 = v14 / (v13 + v14);
        if (v17 > v21)
        {
          *&v5 = sub_24A5A5224(v12, v16, v6, v10, (v17 - v21) / (v13 / (v13 + v14)));
          v9 = 0;
          *(&v5 + 1) = v22;
          a1 = v11;
          goto LABEL_7;
        }

        v23 = *&v18;
        v24 = v19;
        v25 = v20;
        v26 = v17 / v21;
        v27 = 1.0 - v17 / v21;
        v28 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
        if (*(v2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle))
        {
          v29 = sub_24A62F634();

          if (v29)
          {
            goto LABEL_17;
          }

          if (!*(v2 + v28) || *(v2 + v28) != 1)
          {
            v31 = sub_24A62F634();

            a1 = v11;
            if (v31 & 1) == 0 || (v25)
            {
              goto LABEL_18;
            }

            goto LABEL_21;
          }
        }

LABEL_17:
        a1 = v11;
        if (v25)
        {
LABEL_18:
          *&v5 = v12 * v26 + v32 * v27;
          v30 = v33 * v27;
LABEL_22:
          v9 = 0;
          *(&v5 + 1) = v30 + v26 * v16;
          goto LABEL_7;
        }

LABEL_21:
        v16 = v26 * v16 + v27 * v24;
        *&v5 = v27 * (v32 * v27 + v26 * v23) + v26 * (v12 * v26 + v27 * v23);
        v30 = v27 * (v33 * v27 + v26 * v24);
        goto LABEL_22;
      }
    }
  }

  v9 = 1;
  v10 = 0.0;
LABEL_7:
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
}

void sub_24A5A5620()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for FMPFSKNode()) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter) = 0;
  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction) = 0;
  v6 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_relativeHeading;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring) = 0;
  v8 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_useAlternateScaling) = 0;
  v11 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  v12 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset) = 1;
  v15 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor) = 1;
  v17 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_trackOffset;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading) = 0;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5A5880(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 & 1) != 0 || (a6)
  {
    return 0;
  }

  v11 = hypot(*&a4, *&a5);
  v12 = atan2(*&a2, *&a1);
  v13 = atan2(*&a5, *&a4);
  v14 = v13 - v12;
  if (vabdd_f64(v13, v12) > 3.14159265)
  {
    if (v12 >= 0.0 || v13 < 0.0)
    {
      if (v13 < 0.0 && v12 >= 0.0)
      {
        v14 = v14 + 6.28318531;
      }
    }

    else
    {
      v14 = v14 + -6.28318531;
    }
  }

  return fabs((v11 + v11) * v14);
}

uint64_t sub_24A5A5968()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A5A59A8()
{
  v1 = *(v0 + 16);
  [v1 setSpeed_];
  return sub_24A5A44B0(v1);
}

uint64_t sub_24A5A59FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24A5A5A14()
{
  v0 = objc_allocWithZone(MEMORY[0x277D07B28]);
  v1 = sub_24A62EBE4();
  v2 = [v0 initWithDefaultsSuiteName_];

  result = [v2 setMeasurementSystem_];
  qword_27EF5C558 = v2;
  return result;
}

uint64_t sub_24A5A5AF8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_24A5A5B90();
  sub_24A5789C0();
  v8 = sub_24A62EE64();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

unint64_t sub_24A5A5B90()
{
  result = qword_27EF505C8;
  if (!qword_27EF505C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF505C8);
  }

  return result;
}

void sub_24A5A5BDC(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 fmpfDebugMode];

  if (!v5 || (*(v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isInteractivelyDebugging) & 1) != 0)
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isInteractivelyDebugging) = 1;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches) = 1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A62F2A4();
    sub_24A5A5B90();
    sub_24A5789C0();
    sub_24A62EE94();
    a1 = v32[1];
    v6 = v32[2];
    v7 = v32[3];
    v8 = v32[4];
    v9 = v32[5];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v30 = v7;
  v13 = (v7 + 64) >> 6;
  while (a1 < 0)
  {
    v19 = sub_24A62F2F4();
    if (!v19 || (v31 = v19, sub_24A5A5B90(), swift_dynamicCast(), v18 = v32[0], v16 = v8, v17 = v9, !v32[0]))
    {
LABEL_28:
      sub_24A55B6D4();
      return;
    }

LABEL_21:
    [v18 locationInNode_];
    v22 = v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation;
    if (*(v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation + 16))
    {
      *v22 = v20;
      *(v22 + 8) = v21;
      *(v22 + 16) = 0;
      v32[0] = 0;
      v23 = MEMORY[0x24C21BC00](v32, 8);
      v24 = v32[0];
      if ((11 * v32[0]) <= 4)
      {
        do
        {
          v32[0] = 0;
          v23 = MEMORY[0x24C21BC00](v32, 8);
          v24 = v32[0];
        }

        while ((11 * v32[0]) < 5);
      }

      if (((v24 * 0xBuLL) >> 64))
      {
        v25 = 45.0;
        v26 = 180.0;
      }

      else
      {
        v25 = -180.0;
        v26 = -45.0;
      }

      sub_24A5E5268(v23, v25, v26);
      v28 = v27;

      v29 = v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing;
      *v29 = v28;
      *(v29 + 8) = 0;
    }

    else
    {
    }

    v8 = v16;
    v9 = v17;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_17:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_28;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_24A5A5EE0(uint64_t a1)
{
  if (v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches] == 1)
  {
    v2 = v1;
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = [v4 fmpfDebugMode];

    if (v5)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_24A62F2A4();
        sub_24A5A5B90();
        sub_24A5789C0();
        sub_24A62EE94();
        a1 = v43;
        v6 = v44;
        v7 = v45;
        v8 = v46;
        v9 = v47;
      }

      else
      {
        v10 = -1 << *(a1 + 32);
        v6 = a1 + 56;
        v7 = ~v10;
        v11 = -v10;
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v9 = v12 & *(a1 + 56);

        v8 = 0;
      }

      v13 = (v7 + 64) >> 6;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_18:
      if (sub_24A62F2F4() && (sub_24A5A5B90(), swift_dynamicCast(), v18 = v42, v16 = v8, v17 = v9, v42))
      {
        while (1)
        {
          [v18 locationInNode_];
          v21 = &v2[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation];
          if (v2[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation + 16])
          {
            goto LABEL_11;
          }

          if (v2[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing + 8])
          {
            goto LABEL_11;
          }

          v22 = v20;
          v23 = v19;
          v24 = *&v2[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing];
          v26 = *v21;
          v25 = v21[1];
          [v2 size];
          v28 = v27;
          [v2 size];
          v30 = v29;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
LABEL_11:

            v8 = v16;
            v9 = v17;
            if (a1 < 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v32 = Strong;
            v41 = v7;
            v33 = Strong + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
            v34 = swift_unknownObjectWeakLoadStrong();
            v35 = *(v33 + 8);

            if (v34)
            {
              v40 = vabdd_f64(v26, v23) < vabdd_f64(v25, v22);
              v36 = hypot(v23 - v26, v22 - v25);
              if (v30 >= v28)
              {
                v37 = v28;
              }

              else
              {
                v37 = v30;
              }

              v38 = fmin(v36 / (v37 * 0.66), 1.0);
              ObjectType = swift_getObjectType();
              (*(v35 + 88))(COERCE_DOUBLE(*&v38), 0, v40, v32, ObjectType, v35, v24);
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            v8 = v16;
            v9 = v17;
            v7 = v41;
            if (a1 < 0)
            {
              goto LABEL_18;
            }
          }

LABEL_12:
          v14 = v8;
          v15 = v9;
          v16 = v8;
          if (!v9)
          {
            break;
          }

LABEL_16:
          v17 = (v15 - 1) & v15;
          v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
          if (!v18)
          {
            goto LABEL_30;
          }
        }

        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v16 >= v13)
          {
            goto LABEL_30;
          }

          v15 = *(v6 + 8 * v16);
          ++v14;
          if (v15)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_30:
        sub_24A55B6D4();
      }
    }
  }
}

void sub_24A5A6274(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches;
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches) != 1)
  {
    return;
  }

  v3 = v1;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A62F2A4();
    sub_24A5A5B90();
    sub_24A5789C0();
    sub_24A62EE94();
    v4 = v29;
    v5 = v30;
    v6 = v31;
    v7 = v32;
    v8 = v33;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!sub_24A62F2F4() || (sub_24A5A5B90(), swift_dynamicCast(), v17 = v28, v15 = v7, v16 = v8, !v28))
    {
LABEL_28:
      sub_24A55B6D4();
      *(v3 + v2) = 0;
      *(v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isInteractivelyDebugging) = 0;
      return;
    }

LABEL_20:
    [v17 locationInNode_];
    if (*(v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing + 8) & 1) != 0 || (*(v3 + 16 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation))
    {
    }

    else
    {
      v18 = *(v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        v27 = v2;
        v21 = Strong + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
        v22 = swift_unknownObjectWeakLoadStrong();
        v23 = *(v21 + 8);

        if (v22)
        {
          ObjectType = swift_getObjectType();
          (*(v23 + 88))(0, 1, 2, v20, ObjectType, v23, v18);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v2 = v27;
      }

      else
      {
      }

      v25 = v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation;
      *v25 = 0;
      *(v25 + 8) = 0;
      *(v25 + 16) = 1;
      v26 = v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing;
      *v26 = 0;
      *(v26 + 8) = 1;
    }

    v7 = v15;
    v8 = v16;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_16:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_28;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_24A5A6588(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches) == 1)
  {
    v2 = v1;
    v3 = a1;
    v19 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_24A62F2A4();
      sub_24A5A5B90();
      sub_24A5789C0();
      sub_24A62EE94();
      v3 = v21;
      v4 = v22;
      v5 = v23;
      v6 = v24;
      v7 = v25;
    }

    else
    {
      v8 = -1 << *(a1 + 32);
      v4 = a1 + 56;
      v5 = ~v8;
      v9 = -v8;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v7 = v10 & *(a1 + 56);

      v6 = 0;
    }

    v11 = (v5 + 64) >> 6;
    if (v3 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v12 = v6;
      v13 = v7;
      v14 = v6;
      if (!v7)
      {
        break;
      }

LABEL_13:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
      if (!v16)
      {
LABEL_19:
        sub_24A55B6D4();
        *(v2 + v19) = 0;
        *(v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isInteractivelyDebugging) = 0;
        return;
      }

      while (1)
      {
        [v16 locationInNode_];

        v17 = v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation;
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 1;
        v18 = v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing;
        *v18 = 0;
        *(v18 + 8) = 1;
        v6 = v14;
        v7 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_24A62F2F4())
        {
          sub_24A5A5B90();
          swift_dynamicCast();
          v16 = v20;
          v14 = v6;
          v15 = v7;
          if (v20)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

__int16 *sub_24A5A67C4@<X0>(__int16 *result@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  v9 = *(v2 + 80);
  v10 = *(v2 + 96);
  v11 = *result;
  if (((v11 >> 13) & 3) > 1)
  {
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v11 & 1) == 0)
  {
LABEL_3:
    result = sub_24A5A69CC(&v23);
    v12 = v23;
    v4 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
    v9 = v28;
    v13 = v29 | (v30 << 32);
    v14 = v31;
    v15 = v32;
    goto LABEL_13;
  }

  v13 = v10 | (*(v2 + 100) << 32);
  v12 = 0uLL;
  if ((v10 & 0xFF000000) == 0x4000000)
  {
    v14 = 0;
    v15 = 1;
    v13 = 83886080;
    goto LABEL_10;
  }

  if ((v10 & 0xFF000000) == 0x5000000)
  {
    v14 = 0;
    v15 = 1;
    v16 = 0x1000000;
LABEL_8:
    v13 = v16 & 0xFFFF0000FFFFFFFFLL | 0x300000000;
    goto LABEL_13;
  }

  v17 = *v2;
  v18 = *(v2 + 80);
  v19 = *(v2 + 64);
  v20 = *(v2 + 48);
  v21 = *(v2 + 32);
  v22 = *(v2 + 16);
  if ((v10 & 0xFE000000) == 0x6000000)
  {
    result = sub_24A508CE4(v2, &v23);
    v14 = 0;
    v15 = 1;
    v12 = v17;
    v9 = v18;
    v6 = v21;
    v4 = v22;
    v8 = v19;
    v7 = v20;
    goto LABEL_13;
  }

  *(v2 + 100);
  v14 = BYTE2(v10);
  if (BYTE2(v10) > 1u)
  {
    *(v2 + 100);
    if (BYTE2(v10) == 2)
    {
      v14 = 0;
      v15 = 1;
      v16 = 50528256;
      goto LABEL_8;
    }

    *(v2 + 100);
    if (BYTE2(v10) != 3)
    {
      v23 = *v2;
      v24 = v4;
      v25 = v6;
      v26 = v7;
      v27 = v8;
      v28 = v9;
      v29 = v13;
      v30 = BYTE4(v13);
      result = sub_24A50D63C(&v23, v33, &qword_27EF4F670, &qword_24A634D70);
      v9 = v18;
      v8 = v19;
      v7 = v20;
      v6 = v21;
      v4 = v22;
      v14 = 0;
      v15 = 1;
      v12 = v17;
      goto LABEL_13;
    }

    v14 = 0;
    v15 = 1;
    v13 = 0x4000000;
LABEL_10:
    v4 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    goto LABEL_13;
  }

  *(v2 + 100);
  if (BYTE2(v10))
  {
    v14 = 0;
    v13 = 0x301020000;
  }

  else
  {
    v13 = 0x301010000;
  }

  v15 = 1;
LABEL_13:
  *a2 = v12;
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 96) = v13;
  *(a2 + 100) = BYTE4(v13);
  *(a2 + 104) = v14;
  *(a2 + 112) = v15 & 1;
  return result;
}

uint64_t sub_24A5A69CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = 83886080;
  if ((v2 & 0xFF000000) == 0x4000000)
  {
    v19 = 0;
    v4 = 0;
    v5 = 0;
    v18 = 0;
    v36 = 0;
    v21 = 0;
    v6 = 0;
    v7 = 0;
    LOWORD(v8) = 0;
    result = 0;
    v9 = 0;
    LOWORD(v10) = 0;
    v11 = 0;
    LOBYTE(v12) = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0x3FF0000000000000;
  }

  else if ((v2 & 0xFF000000) == 0x5000000)
  {
    v4 = 0;
    v5 = 0;
    v36 = 0;
    v6 = 0;
    v7 = 0;
    LOWORD(v8) = 0;
    v9 = 0;
    LOWORD(v10) = 0;
    v11 = 0;
    LOBYTE(v12) = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    LOBYTE(v37) = 0;
    v53[0] = 0;
    v3 = 0x303040000;
    v17 = 0x3FF0000000000000;
    v18 = 0x7FEFFFFFFFFFFFFFLL;
    v19 = 0x4014000000000000;
    result = 0x10000;
    v21 = 0x4014000000000000;
  }

  else
  {
    v19 = *v1;
    v22 = *(v1 + 8);
    v4 = *(v1 + 16);
    v23 = *(v1 + 24);
    v18 = *(v1 + 32);
    v12 = *(v1 + 40);
    v10 = *(v1 + 56);
    v36 = *(v1 + 48);
    v21 = *(v1 + 64);
    v8 = *(v1 + 72);
    v6 = *(v1 + 80);
    v24 = *(v1 + 88);
    v25 = v2 | (*(v1 + 100) << 32);
    if ((v2 & 0xFE000000) == 0x6000000)
    {
      v26 = v1;
      v27 = a1;
      v32 = v12;
      v12 = v23;
      v34 = v24;
      v30 = v25;
      sub_24A508CE4(v26, &v37);
      v5 = v12;
      LOBYTE(v12) = v32;
      a1 = v27;
      v17 = 0;
      v15 = v22 & 0xFFFFFFFFFFFFFF00;
      v13 = v32 & 0xFFFFFFFFFFFFFF00;
      v11 = v10 & 0xFFFFFFFFFFFF0000;
      v9 = v8 & 0xFFFFFFFFFF000000;
      v16 = 1;
      v7 = v34;
      v3 = v30;
      result = v8;
      v14 = v22;
    }

    else if ((v2 & 0xFF0000) == 0x40000)
    {
      v14 = 0;
      v19 = 0;
      v16 = 1;
      v3 = 0x4000000;
      if (v4 == 1 || (v25 & 1) != 0)
      {
        v4 = 0;
        v5 = 0;
        v18 = 0;
        v36 = 0;
        v21 = 0;
        v6 = 0;
        v7 = 0;
        LOWORD(v8) = 0;
        result = 0;
        v9 = 0;
        LOWORD(v10) = 0;
        v11 = 0;
        LOBYTE(v12) = 0;
        v13 = 0;
        v15 = 0;
        v17 = 0;
      }

      else
      {
        v4 = 0;
        v5 = 0;
        v18 = 0;
        v36 = 0;
        v21 = 0;
        v6 = 0;
        v7 = 0;
        LOWORD(v8) = 0;
        result = 0;
        v9 = 0;
        LOWORD(v10) = 0;
        v11 = 0;
        LOBYTE(v12) = 0;
        v13 = 0;
        v15 = 0;
        v17 = 0;
        if (v24 <= 16)
        {
          v10 = a1;
          sub_24A5A7B90(v24 + 1, &v37);
          a1 = v10;
          v19 = v37;
          v14 = v38;
          v4 = v39;
          v5 = v40;
          v18 = v41;
          LOBYTE(v12) = v42;
          LOWORD(v10) = v44;
          v36 = v43;
          v21 = v45;
          LOWORD(v8) = v46;
          v3 = v49 | (v50 << 32);
          v15 = v38 & 0xFFFFFFFFFFFFFF00;
          v6 = v47;
          v7 = v48;
          v13 = v42 & 0xFFFFFFFFFFFFFF00;
          v11 = v44 & 0xFFFFFFFFFFFF0000;
          v17 = v51;
          v9 = v46 & 0xFFFFFFFFFF000000;
          result = v46;
          v16 = v52;
        }
      }
    }

    else
    {
      v37 = *v1;
      v38 = v22;
      v39 = v4;
      v40 = v23;
      v41 = v18;
      v42 = v12;
      v43 = v36;
      v44 = v10;
      v45 = v21;
      v46 = v8;
      v47 = v6;
      v48 = v24;
      v49 = v25;
      v50 = BYTE4(v25);
      v33 = v23;
      v35 = v24;
      v28 = a1;
      v31 = v22;
      v29 = v25;
      sub_24A50D63C(&v37, v53, &qword_27EF4F670, &qword_24A634D70);
      v14 = v31;
      v5 = v33;
      a1 = v28;
      v17 = 0;
      v15 = v31 & 0xFFFFFFFFFFFFFF00;
      v13 = v12 & 0xFFFFFFFFFFFFFF00;
      v11 = v10 & 0xFFFFFFFFFFFF0000;
      v9 = v8 & 0xFFFFFFFFFF000000;
      v16 = 1;
      v7 = v35;
      v3 = v29;
      result = v8;
    }
  }

  *a1 = v19;
  *(a1 + 8) = v15 | v14;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v18;
  *(a1 + 40) = v13 | v12;
  *(a1 + 48) = v36;
  *(a1 + 56) = v10 | v11;
  *(a1 + 64) = v21;
  *(a1 + 72) = result & 0xFF0000 | v8 | v9;
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  *(a1 + 96) = v3;
  *(a1 + 100) = BYTE4(v3);
  *(a1 + 104) = v17;
  *(a1 + 112) = v16 & 1;
  return result;
}

void sub_24A5A6D74(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 64);
  v8 = *(v2 + 80);
  v9 = *(v2 + 96);
  v10 = *a1;
  if (((v10 >> 13) & 3) > 1)
  {
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = v9 | (*(v2 + 100) << 32);
    if ((v9 & 0xFF000000) != 0x4000000)
    {
      if ((v9 & 0xFF000000) == 0x5000000)
      {
        v13 = 0;
        v11 = 0uLL;
        v14 = 1;
        v12 = 0x4000000;
LABEL_8:
        v5 = 0uLL;
        v6 = 0uLL;
        v7 = 0uLL;
        v8 = 0uLL;
        v4 = 0uLL;
        goto LABEL_13;
      }

      v16 = *v2;
      v17 = *(v2 + 80);
      v18 = *(v2 + 64);
      v19 = *(v2 + 48);
      v20 = *(v2 + 32);
      v21 = *(v2 + 16);
      if ((v9 & 0xFE000000) == 0x6000000)
      {
        sub_24A508CE4(v2, &v22);
        v13 = 0;
        v14 = 1;
        v11 = v16;
        v4 = v17;
        v6 = v20;
        v5 = v21;
        v8 = v18;
        v7 = v19;
        goto LABEL_13;
      }

      *(v2 + 100);
      v13 = BYTE2(v9);
      v11 = 0uLL;
      if (BYTE2(v9) <= 1u)
      {
        *(v2 + 100);
        if (!BYTE2(v9))
        {
          v14 = 1;
          v12 = 83886080;
          goto LABEL_8;
        }

        v13 = 0;
        v12 = 0x302000000;
      }

      else
      {
        *(v2 + 100);
        if (BYTE2(v9) != 2)
        {
          *(v2 + 100);
          if (BYTE2(v9) != 3)
          {
            v22 = *v2;
            v23 = v21;
            v24 = v5;
            v25 = v6;
            v26 = v7;
            v27 = v8;
            v28 = v12;
            v29 = BYTE4(v12);
            sub_24A50D63C(&v22, v32, &qword_27EF4F670, &qword_24A634D70);
            v4 = v17;
            v8 = v18;
            v7 = v19;
            v6 = v20;
            v5 = v21;
            v13 = 0;
            v14 = 1;
            v11 = v16;
            goto LABEL_13;
          }

          v13 = 0;
          v14 = 1;
          v15 = 16908288;
          goto LABEL_10;
        }

        v13 = 0;
        v12 = 0x302010000;
      }

      v14 = 1;
      goto LABEL_13;
    }

    v13 = 0;
    v11 = 0uLL;
    v14 = 1;
    v15 = 50528256;
LABEL_10:
    v12 = v15 & 0xFFFF0000FFFFFFFFLL | 0x300000000;
    goto LABEL_13;
  }

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24A5A6F8C(&v22);
  v11 = v22;
  v5 = v23;
  v6 = v24;
  v7 = v25;
  v8 = v26;
  v4 = v27;
  v12 = v28 | (v29 << 32);
  v13 = v30;
  v14 = v31;
LABEL_13:
  *a2 = v11;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v4;
  *(a2 + 96) = v12;
  *(a2 + 100) = BYTE4(v12);
  *(a2 + 104) = v13;
  *(a2 + 112) = v14 & 1;
}