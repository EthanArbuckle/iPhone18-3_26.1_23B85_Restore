uint64_t type metadata accessor for NXOperationDaemon()
{
  result = qword_27FC0C0A8;
  if (!qword_27FC0C0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C4C2F58()
{
  result = sub_25C4C7C50();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_25C4C7B20();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25C4C3078()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C4C30B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25C4C30F0(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = (Strong + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
    v8 = *(Strong + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
    *v7 = 0;
    v7[1] = 0;
    swift_unknownObjectRelease();
    sub_25C4C19FC();
  }

  return v4(a1);
}

uint64_t sub_25C4C3180()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25C4C31C8(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_25C497730(v7, &off_286E24458, 1);

    sub_25C4C19FC();
  }

  return v4(a1);
}

uint64_t sub_25C4C3268()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C4C3334(uint64_t a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_25C4BF1B0(a1, v4, v5, v6, v7);
}

uint64_t sub_25C4C33AC()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25C4C3490(uint64_t a1, unint64_t a2)
{
  v5 = *(sub_25C4C7B20() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_25C4BFD90(a1, a2, v7, v8, v9, v2 + v6, v11, v12);
}

uint64_t sub_25C4C3548()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_25C4C3634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, void, uint64_t), uint64_t a6)
{
  v13 = *(sub_25C4C7B20() - 8);
  v14 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_25C4C0694(a1, a2, a3, a4, a5, a6, *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v6 + v14, *(v6 + v15), *(v6 + v15 + 8));
}

uint64_t sub_25C4C3724()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5 + 8);

  v12 = *(v0 + v6 + 8);

  v13 = *(v0 + v7);

  sub_25C45A004(*(v0 + v8), *(v0 + v8 + 8));

  v14 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14 + 8);

  return MEMORY[0x2821FE8E8](v0, v14 + 16, v3 | 7);
}

uint64_t sub_25C4C387C()
{
  v1 = *(sub_25C4C7B20() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_25C4C0BC4(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C4C3978()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 24);

  sub_25C4BACC4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25C4C3A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C4C3A98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
    swift_beginAccess();
    v3 = *(v1 + v2);
    *(v1 + v2) = 0;

    sub_25C4C19FC();
  }

  return result;
}

uint64_t sub_25C4C3B2C()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0C0C8);
  __swift_project_value_buffer(v0, qword_27FC0C0C8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C4C3B98(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_25C4C72D8(a1);

  return v2;
}

uint64_t sub_25C4C3BE4()
{
  v1 = v0;
  if (qword_27FC0C0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0C0C8);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  swift_weakDestroy();
  v6 = *(v1 + 48);
  sub_25C45C5F0(*(v1 + 40));

  v7 = *(v1 + 80);

  v8 = *(v1 + 88);
  swift_unknownObjectRelease();
  v9 = *(v1 + 104);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_25C4C3D04()
{
  sub_25C4C3BE4();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_25C4C3D38()
{
  if (*(v0 + 88))
  {
    MEMORY[0x25F887A50](0xD00000000000001ELL, 0x800000025C4D2190);
  }

  if (*(v0 + 104))
  {
    MEMORY[0x25F887A50](0xD000000000000018, 0x800000025C4D2170);
  }

  return 0;
}

void sub_25C4C3E04()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_27FC0C0C0 == -1)
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
  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0C0C8);
  v9 = sub_25C4C7BB0();
  v10 = sub_25C4C8720();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25C452000, v9, v10, "Activate", v11, 2u);
    MEMORY[0x25F888630](v11, -1, -1);
  }
}

uint64_t sub_25C4C3FB8()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_27FC0C0C0 == -1)
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
  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0C0C8);
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8720();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25C452000, v10, v11, "Invalidate", v12, 2u);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  *(v1 + 32) = 1;
  return sub_25C4C4188();
}

uint64_t sub_25C4C4188()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + 32) != 1)
  {
    return result;
  }

  if (qword_27FC0C0C0 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = sub_25C4C7BD0();
  __swift_project_value_buffer(v10, qword_27FC0C0C8);
  v11 = sub_25C4C7BB0();
  v12 = sub_25C4C8720();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25C452000, v11, v12, "Invalidated", v13, 2u);
    MEMORY[0x25F888630](v13, -1, -1);
  }

  swift_beginAccess();
  v14 = *(v1 + 40);
  if (v14)
  {
    v15 = *(v1 + 48);

    v14(v16);
    sub_25C45C5F0(v14);
    v17 = *(v1 + 40);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v1 + 48);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return sub_25C45C5F0(v17);
}

uint64_t sub_25C4C43AC()
{
  v1 = sub_25C4C8470();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25C4C8490();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + 24);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v18[1] = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if ((*(v0 + 56) & 1) == 0)
    {
      *(v0 + 56) = 1;
      aBlock[4] = sub_25C4C7448;
      aBlock[5] = v0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25C4676B4;
      aBlock[3] = &block_descriptor_7;
      v17 = _Block_copy(aBlock);

      sub_25C4C8480();
      v20 = MEMORY[0x277D84F90];
      sub_25C4C7464(&unk_27FC0A180, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
      sub_25C4BC1E8(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0);
      sub_25C4C8800();
      MEMORY[0x25F887C10](0, v9, v4, v17);
      _Block_release(v17);
      (*(v19 + 8))(v4, v1);
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C474C()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_33;
  }

  *(v1 + 56) = 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_25C4855C0())
    {
      if (!*(v1 + 72))
      {
        if (qword_27FC0C0C0 != -1)
        {
          swift_once();
        }

        v9 = sub_25C4C7BD0();
        __swift_project_value_buffer(v9, qword_27FC0C0C8);
        v10 = sub_25C4C7BB0();
        v11 = sub_25C4C8720();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_25C452000, v10, v11, "Needs NAN scanner start", v12, 2u);
          MEMORY[0x25F888630](v12, -1, -1);
        }

        v13 = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
        v14 = *(v1 + 72);
        *(v1 + 72) = v13;
        v15 = v13;

        [v15 setBleRSSIThresholdHint_];
        [v15 setDiscoveryFlags_];
        [v15 setDispatchQueue_];
        v16 = swift_allocObject();
        swift_weakInit();
        v115 = sub_25C4C79FC;
        v116 = v16;
        aBlock = MEMORY[0x277D85DD0];
        v112 = 1107296256;
        v113 = sub_25C4C79F8;
        v114 = &block_descriptor_4_1;
        v17 = _Block_copy(&aBlock);

        [v15 setDeviceFoundHandler_];
        _Block_release(v17);
        v18 = swift_allocObject();
        swift_weakInit();
        v115 = sub_25C4C74E4;
        v116 = v18;
        aBlock = MEMORY[0x277D85DD0];
        v112 = 1107296256;
        v113 = sub_25C4C79F8;
        v114 = &block_descriptor_8;
        v19 = _Block_copy(&aBlock);

        [v15 setDeviceLostHandler_];
        _Block_release(v19);
        v20 = swift_allocObject();
        swift_weakInit();
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v115 = sub_25C4C7578;
        v116 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v112 = 1107296256;
        v113 = sub_25C45BE80;
        v114 = &block_descriptor_18;
        v23 = _Block_copy(&aBlock);

        [v15 activateWithCompletion_];
        _Block_release(v23);
      }

      goto LABEL_18;
    }
  }

  v24 = *(v1 + 72);
  if (v24)
  {
    v25 = qword_27FC0C0C0;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = sub_25C4C7BD0();
    __swift_project_value_buffer(v27, qword_27FC0C0C8);
    v28 = sub_25C4C7BB0();
    v29 = sub_25C4C8720();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_25C452000, v28, v29, "Needs NAN scanner stop", v30, 2u);
      MEMORY[0x25F888630](v30, -1, -1);
    }

    [v26 invalidate];
    v31 = *(v1 + 72);
    *(v1 + 72) = 0;
  }

LABEL_18:
  v32 = *(v1 + 72);
  if (v32)
  {
    v33 = [v32 discoveredDevices];
    sub_25C4BC77C(0, &qword_27FC0AAA8, 0x277CBE020);
    v2 = sub_25C4C85D0();

    if (v2 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C4C8840())
    {
      v35 = 4;
      while (1)
      {
        v36 = v35 - 4;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x25F887DC0](v35 - 4, v2);
        }

        else
        {
          if (v36 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v37 = *(v2 + 8 * v35);
        }

        v38 = v37;
        v39 = __OFADD__(v36, 1);
        v40 = v35 - 3;
        if (v39)
        {
          break;
        }

        if ([v37 nearbyActionType] == 57)
        {

          goto LABEL_40;
        }

        ++v35;
        if (v40 == i)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:
  }

  v41 = *(v1 + 64);
  if (v41)
  {
    v42 = [v41 dataSessions];
    sub_25C4BC77C(0, &qword_27FC0AA70, 0x277D02890);
    v43 = sub_25C4C85D0();

    if (v43 >> 62)
    {
      v44 = sub_25C4C8840();
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
LABEL_40:
      if (*(v1 + 64))
      {
        goto LABEL_53;
      }

      if (qword_27FC0C0C0 != -1)
      {
        swift_once();
      }

      v45 = sub_25C4C7BD0();
      __swift_project_value_buffer(v45, qword_27FC0C0C8);
      v46 = sub_25C4C7BB0();
      v47 = sub_25C4C8720();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_25C452000, v46, v47, "NAN publisher start", v48, 2u);
        MEMORY[0x25F888630](v48, -1, -1);
      }

      v49 = [objc_allocWithZone(MEMORY[0x277D028A0]) init];
      v50 = *(v1 + 64);
      *(v1 + 64) = v49;
      v51 = v49;

      [v51 setDispatchQueue_];
      [v51 setControlFlags_];
      sub_25C4C7CC0();
      v52 = sub_25C4C8540();

      [v51 setServiceType_];

      v53 = swift_allocObject();
      swift_weakInit();
      v115 = nullsub_1;
      v116 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = sub_25C4C79F8;
      v114 = &block_descriptor_22_0;
      v54 = _Block_copy(&aBlock);

      [v51 setDataSessionStartedHandler_];
      _Block_release(v54);
      v55 = swift_allocObject();
      swift_weakInit();
      v115 = nullsub_1;
      v116 = v55;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = sub_25C4C5824;
      v114 = &block_descriptor_26;
      v56 = _Block_copy(&aBlock);

      [v51 setDataSessionEndedHandler_];
      _Block_release(v56);
      v57 = swift_allocObject();
      swift_weakInit();
      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v59 = swift_allocObject();
      *(v59 + 16) = v57;
      *(v59 + 24) = v58;
      v115 = sub_25C4C779C;
      v116 = v59;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = sub_25C45BE80;
      v114 = &block_descriptor_36_1;
      v60 = _Block_copy(&aBlock);

      [v51 activateWithCompletion_];
      _Block_release(v60);
    }

    else
    {
      v61 = *(v1 + 64);
      if (!v61)
      {
        goto LABEL_53;
      }

      v62 = qword_27FC0C0C0;
      v63 = v61;
      if (v62 != -1)
      {
        swift_once();
      }

      v64 = sub_25C4C7BD0();
      __swift_project_value_buffer(v64, qword_27FC0C0C8);
      v65 = sub_25C4C7BB0();
      v66 = sub_25C4C8720();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_25C452000, v65, v66, "NAN publisher stop", v67, 2u);
        MEMORY[0x25F888630](v67, -1, -1);
      }

      [v63 invalidate];
      v51 = *(v1 + 64);
      *(v1 + 64) = 0;
    }
  }

LABEL_53:
  result = swift_beginAccess();
  v70 = (v1 + 88);
  v69 = *(v1 + 88);
  if (*(*(v1 + 80) + 16))
  {
    if (!v69)
    {
      if (qword_27FC0C0C0 != -1)
      {
        swift_once();
      }

      v71 = sub_25C4C7BD0();
      __swift_project_value_buffer(v71, qword_27FC0C0C8);
      v72 = sub_25C4C7BB0();
      v73 = sub_25C4C8720();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_25C452000, v72, v73, "Bluetooth setup advertiser start", v74, 2u);
        MEMORY[0x25F888630](v74, -1, -1);
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v75 = CUEnvironmentValues.createBluetoothAdvertiser.getter();
        v76 = v75(*(v1 + 24));
        v78 = v77;

        v79 = *(v1 + 88);
        *(v1 + 88) = v76;
        *(v1 + 96) = v78;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        ObjectType = swift_getObjectType();
        (*(v78 + 40))(81, ObjectType, v78);
        (*(v78 + 16))(64, ObjectType, v78);
        (*(v78 + 56))(ObjectType, v78);
        swift_unknownObjectRelease();
      }
    }

    if (!*(v1 + 104))
    {
      if (qword_27FC0C0C0 != -1)
      {
        swift_once();
      }

      v81 = sub_25C4C7BD0();
      __swift_project_value_buffer(v81, qword_27FC0C0C8);
      v82 = sub_25C4C7BB0();
      v83 = sub_25C4C8720();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_25C452000, v82, v83, "NAN setup publisher start", v84, 2u);
        MEMORY[0x25F888630](v84, -1, -1);
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v85 = CUEnvironmentValues.createNANPublisher.getter();
        v86 = v85(*(v1 + 24));
        v88 = v87;

        v89 = *(v1 + 104);
        *(v1 + 104) = v86;
        *(v1 + 112) = v88;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v90 = swift_getObjectType();
        v91 = sub_25C4C7CA0();
        (*(v88 + 16))(v91);
        (*(v88 + 32))(v90, v88);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (v69)
    {
      v92 = *(v1 + 96);
      v93 = qword_27FC0C0C0;
      v94 = *(v1 + 88);
      swift_unknownObjectRetain();
      if (v93 != -1)
      {
        swift_once();
      }

      v95 = sub_25C4C7BD0();
      __swift_project_value_buffer(v95, qword_27FC0C0C8);
      v96 = sub_25C4C7BB0();
      v97 = sub_25C4C8720();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_25C452000, v96, v97, "Bluetooth setup advertiser stop", v98, 2u);
        MEMORY[0x25F888630](v98, -1, -1);
      }

      v99 = swift_getObjectType();
      (*(v92 + 64))(v99, v92);
      swift_unknownObjectRelease();
      v100 = *v70;
      *v70 = 0;
      *(v1 + 96) = 0;
      result = swift_unknownObjectRelease();
    }

    v101 = (v1 + 104);
    if (*(v1 + 104))
    {
      v102 = *(v1 + 112);
      v103 = qword_27FC0C0C0;
      swift_unknownObjectRetain();
      if (v103 != -1)
      {
        swift_once();
      }

      v104 = sub_25C4C7BD0();
      __swift_project_value_buffer(v104, qword_27FC0C0C8);
      v105 = sub_25C4C7BB0();
      v106 = sub_25C4C8720();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_25C452000, v105, v106, "NAN setup publisher stop", v107, 2u);
        MEMORY[0x25F888630](v107, -1, -1);
      }

      v108 = swift_getObjectType();
      (*(v102 + 40))(v108, v102);
      swift_unknownObjectRelease();
      v109 = *v101;
      *v101 = 0;
      v101[1] = 0;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_25C4C5824(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_25C4C58B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_25C4C84C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + 24);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_25C4C84E0();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    type metadata accessor for NXServerDaemon(0);

    sub_25C4C7BA0();
    swift_beginAccess();
    sub_25C4C5EDC(v8, v6);
    swift_endAccess();
    (*(v2 + 8))(v8, v1);
    return sub_25C4C43AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C5AE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA80, &qword_25C4CAE28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + 24);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    type metadata accessor for NXServerDaemon(0);

    sub_25C4C7BA0();
    swift_beginAccess();
    sub_25C4C6D24(v5, v9);
    swift_endAccess();
    (*(v2 + 8))(v5, v1);
    sub_25C4C7364(v9);
    return sub_25C4C43AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C5D90()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(*v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C5EDC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20);
  v34 = a2;
  v13 = sub_25C4C8510();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_25C4BC1E8(&qword_27FC0AA98, &qword_27FC0AA78, &qword_25C4CAE20);
      v21 = sub_25C4C8530();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_25C4C6520(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_25C4C61C0(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AAA0, &qword_25C4CAEE8);
  result = sub_25C4C88C0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20);
      result = sub_25C4C8510();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25C4C6520(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25C4C61C0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25C4C67C4();
      goto LABEL_12;
    }

    sub_25C4C6A04(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20);
  v15 = sub_25C4C8510();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25C4BC1E8(&qword_27FC0AA98, &qword_27FC0AA78, &qword_25C4CAE20);
      v23 = sub_25C4C8530();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25C4C8A10();
  __break(1u);
  return result;
}

void *sub_25C4C67C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AAA0, &qword_25C4CAEE8);
  v7 = *v0;
  v8 = sub_25C4C88B0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

uint64_t sub_25C4C6A04(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AAA0, &qword_25C4CAEE8);
  v10 = sub_25C4C88C0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20);
      result = sub_25C4C8510();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25C4C6D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20);
  v34 = a1;
  v12 = sub_25C4C8510();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_25C4BC1E8(&qword_27FC0AA98, &qword_27FC0AA78, &qword_25C4CAE20);
      v21 = sub_25C4C8530();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25C4C67C4();
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_25C4C6FCC(v14);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

uint64_t sub_25C4C6FCC(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA78, &qword_25C4CAE20);
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_25C4C8810();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_25C4BC1E8(&qword_27FC0AA90, &qword_27FC0AA78, &qword_25C4CAE20);
        v27 = sub_25C4C8510();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_25C4C72D8(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = MEMORY[0x277D84FA0];
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  swift_beginAccess();
  swift_weakAssign();
  v3 = *(a1 + 16);
  *(v1 + 24) = v3;
  v4 = v3;
  return v1;
}

uint64_t sub_25C4C7364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA80, &qword_25C4CAE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C4C73CC(uint64_t a1, uint64_t a2)
{
  result = sub_25C4C7464(&qword_27FC0AA88, a2, type metadata accessor for NXNetworkManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C4C7464(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_25C4C74AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C4C74E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25C4C474C();
  }

  return result;
}

uint64_t sub_25C4C753C()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25C4C7578(void *a1)
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

  v8 = *(v6 + 72);
  if (!v8 || v7 != v8 || !a1)
  {

    goto LABEL_6;
  }

  v9 = v7;
  v10 = a1;
  if (qword_27FC0C0C0 != -1)
  {
    swift_once();
  }

  v11 = sub_25C4C7BD0();
  __swift_project_value_buffer(v11, qword_27FC0C0C8);
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
    _os_log_impl(&dword_25C452000, v13, v14, "### Needs NAN scanner start failed: error=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25F888630](v16, -1, -1);
    MEMORY[0x25F888630](v15, -1, -1);
  }

  [v9 invalidate];
  v20 = *(v6 + 72);
  *(v6 + 72) = 0;
}

void sub_25C4C779C(void *a1)
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

  v8 = *(v6 + 64);
  if (!v8 || v7 != v8 || !a1)
  {

    goto LABEL_6;
  }

  v9 = v7;
  v10 = a1;
  if (qword_27FC0C0C0 != -1)
  {
    swift_once();
  }

  v11 = sub_25C4C7BD0();
  __swift_project_value_buffer(v11, qword_27FC0C0C8);
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

  [v9 invalidate];
  v20 = *(v6 + 64);
  *(v6 + 64) = 0;
}