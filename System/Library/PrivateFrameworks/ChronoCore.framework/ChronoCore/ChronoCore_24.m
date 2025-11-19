uint64_t sub_224C7495C(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAB8C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_224DAB8F8();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (*(a2 + 16) <= *(a1 + 16) >> 3)
    {
      v19 = a1;

      sub_224AFF0B4(a2);
      v13 = v19;
    }

    else
    {

      v13 = sub_224B00004(a2, a1);
    }

    v15 = sub_224C73D7C(v14);
    v17 = sub_224C744E4(v13, v15, v16 & 1);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C74AEC()
{
  v1 = *(sub_224DA9688() - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_224C74B54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224C74C44()
{
  result = qword_281350900;
  if (!qword_281350900)
  {
    sub_224A3B79C(255, &qword_281350908, 0x277CFA398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350900);
  }

  return result;
}

uint64_t sub_224C74CAC(uint64_t *a1, int a2)
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

uint64_t sub_224C74CF4(uint64_t result, int a2, int a3)
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

uint64_t sub_224C74D44()
{
  v1 = *(v0 + 16);
  if (v1 && ([v1 cancel], (v2 = *(v0 + 16)) != 0))
  {
    [v2 invalidate];
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 24);

  v5 = *(v0 + 48);
  sub_224A3D418(*(v0 + 40));
  return v0;
}

uint64_t sub_224C74DAC()
{
  sub_224C74D44();

  return swift_deallocClassInstance();
}

void *sub_224C74E04()
{
  v13[0] = sub_224DAF3C8();
  v1 = *(v13[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v13[0]);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAF318();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_224DAB848();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v0[2] = 0;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v9 + 16) = v10;
  v0[3] = v9;
  sub_224AC319C();
  sub_224DAB7E8();
  v13[1] = MEMORY[0x277D84F90];
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v13[0]);
  v11 = sub_224DAF418();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v11;
  return v0;
}

uint64_t sub_224C75048(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_224A3D418(v3);
}

id sub_224C7505C()
{
  if (qword_2813515D8 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364F58);
  v1 = sub_224DAB228();
  v2 = sub_224DAF2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224A2F000, v1, v2, "Start", v3, 2u);
    MEMORY[0x22AA5EED0](v3, -1, -1);
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_224C759CC;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_224CB9B8C;
  v8[3] = &block_descriptor_8;
  v6 = _Block_copy(v8);

  [v4 setFocusConfigurationStreamEventHandler_];
  _Block_release(v6);
  return [v4 subscribeToFocusConfigurationStreamWithIdentifier_];
}

uint64_t sub_224C75214()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v24[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = sub_224DAEEB8();
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_224DA9FF8();
      if (qword_2813515D8 != -1)
      {
        swift_once();
      }

      v12 = sub_224DAB258();
      __swift_project_value_buffer(v12, qword_281364F58);
      (*(v1 + 16))(v5, v7, v0);
      v13 = sub_224DAB228();
      v14 = sub_224DAF2A8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v26 = v15;
        v27 = swift_slowAlloc();
        v28 = v27;
        *v15 = 136446210;
        sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
        v25 = v14;
        v16 = sub_224DAFD28();
        v18 = v17;
        v19 = *(v1 + 8);
        v19(v5, v0);
        v20 = sub_224A33F74(v16, v18, &v28);

        v21 = v26;
        *(v26 + 1) = v20;
        v22 = v21;
        _os_log_impl(&dword_224A2F000, v13, v25, "[focus:%{public}s] Focus Configuration changed", v21, 0xCu);
        v23 = v27;
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x22AA5EED0](v23, -1, -1);
        MEMORY[0x22AA5EED0](v22, -1, -1);
      }

      else
      {

        v19 = *(v1 + 8);
        v19(v5, v0);
      }

      sub_224C75554();

      return (v19)(v7, v0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_224C75554()
{
  v1 = v0;
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v13 = sub_224DAC668();
  if (*(v13 + 16))
  {
    v19 = v1[8];
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v1;
    aBlock[4] = sub_224C759C4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_35;
    v15 = _Block_copy(aBlock);

    sub_224DAB7E8();
    v20 = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    v18 = v7;
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v11, v6, v15);
    _Block_release(v15);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v18);
  }

  else
  {
  }
}

uint64_t sub_224C75864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v6 = a1 + 32;
    do
    {
      sub_224A3317C(v6, v10);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(v10);
      sub_224DAF9B8();
      v7 = *(v11 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v6 += 40;
      --v3;
    }

    while (v3);
    v4 = v11;
  }

  v8 = *(a2 + 56);
  v10[0] = v4;
  sub_224DAB348();
}

uint64_t sub_224C75958()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_224C759F0()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v5 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5530, &unk_224DBB320);
    sub_224A33088(&qword_281350F10, &qword_27D6F5530, &unk_224DBB320);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 56);
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t sub_224C75AB4()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 152);
    v1 = sub_224DAC0D8();
    v4 = *(v2 + 64);
    *(v2 + 64) = v1;
  }

  return v1;
}

uint64_t sub_224C75B1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_224DAC2B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_224DB2780;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5240, &qword_224DBB330);
  MEMORY[0x22AA5BB00](v8);
  v9 = sub_224DAC2A8();
  result = (*(v3 + 8))(v6, v2);
  *(v7 + 32) = v9;
  *a1 = v7;
  return result;
}

uint64_t sub_224C75C44(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 48);

    sub_224DAB348();
  }

  return result;
}

uint64_t sub_224C75CC4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
    BSDispatchQueueAssert();
    sub_224C89C84();
    sub_224C87C9C();
  }

  return result;
}

uint64_t sub_224C75D30()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224C8AD30();
  }

  return result;
}

uint64_t sub_224C75D88(uint64_t a1)
{
  v2 = sub_224DAE918();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_224DAB258();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v10 + 16))(v13, Strong + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v9);

    (*(v3 + 16))(v8, a1, v2);
    v15 = v3;
    v16 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = v2;
      v19 = v18;
      v30 = swift_slowAlloc();
      v35 = v30;
      *v19 = 136446210;
      sub_224C8DD50(&qword_281350C28, MEMORY[0x277CE3D70]);
      v31 = v9;
      v20 = v15;
      v21 = sub_224DAFD28();
      v32 = a1;
      v23 = v22;
      (*(v20 + 8))(v8, v33);
      v24 = sub_224A33F74(v21, v23, &v35);
      a1 = v32;

      *(v19 + 4) = v24;
      _os_log_impl(&dword_224A2F000, v16, v17, "Protection Type changed to %{public}s", v19, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      v26 = v19;
      v2 = v33;
      MEMORY[0x22AA5EED0](v26, -1, -1);

      (*(v10 + 8))(v13, v31);
      v3 = v20;
    }

    else
    {

      (*(v15 + 8))(v8, v2);
      (*(v10 + 8))(v13, v9);
      v3 = v15;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = *(result + 152);

    (*(v3 + 16))(v34, a1, v2);
    sub_224DAC0A8();
  }

  return result;
}

uint64_t sub_224C76184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_224DAC5D8();
    if (v6)
    {
      v7 = v6;
      v8 = sub_224DAF128();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v5;
      v9[5] = v7;
      sub_224D00D34(0, 0, v3, &unk_224DBD058, v9);
    }
  }

  return result;
}

uint64_t sub_224C762C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_224ACED1C;

  return sub_224C7AB6C(a5);
}

uint64_t sub_224C76390(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_224B3E234(a1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224C7642C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 152);
    MEMORY[0x28223BE20](result);
    sub_224DAC128();
  }

  return result;
}

uint64_t sub_224C764D8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C852BC(a1);
  }

  else
  {
    v3 = sub_224DAE4F8();
    return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  }
}

uint64_t sub_224C7658C()
{
  v1 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue;
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_224C8FF50;
  *(v3 + 24) = v0;
  v22[4] = sub_224BC4B74;
  v22[5] = v3;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_224A9B6F8;
  v22[3] = &block_descriptor_211;
  v4 = _Block_copy(v22);
  v5 = v2;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[2];
    swift_unknownObjectRelease();
    v8 = v0[4];
    swift_unknownObjectRelease();
    v9 = v0[6];

    v10 = v0[7];

    v11 = v0[8];

    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
    __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    v12 = v0[19];

    __swift_destroy_boxed_opaque_existential_1(v0 + 20);
    __swift_destroy_boxed_opaque_existential_1(v0 + 25);
    __swift_destroy_boxed_opaque_existential_1(v0 + 30);
    __swift_destroy_boxed_opaque_existential_1(v0 + 35);
    v13 = v0[40];

    __swift_destroy_boxed_opaque_existential_1(v0 + 41);
    v14 = v0[46];

    v15 = v0[47];

    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
    v16 = OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger;
    v17 = sub_224DAB258();
    (*(*(v17 - 8) + 8))(v0 + v16, v17);
    v18 = *(v0 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_pushElevatedHosts);

    __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService));

    v19 = *(v0 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_persistentSubscriptions);

    v20 = *(v0 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_configurationLifetimeAssertions);

    v21 = *(v0 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__statefulStoreCalloutQueue_environmentSubscriptions);

    return v0;
  }

  return result;
}

uint64_t sub_224C767FC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_persistentSubscriptions;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_224DAF838();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v5;
    }

    while (v7 != v4);
  }
}

uint64_t sub_224C76908()
{
  sub_224C7658C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LiveControlService()
{
  result = qword_281359B58;
  if (!qword_281359B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224C769B4()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224C76AB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3348, &unk_224DB3560);
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = v57 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C50, &unk_224DBA3C0);
  v61 = *(v75 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v75);
  v60 = v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C58, &qword_224DC1AF0);
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v57 - v15;
  v59 = sub_224DAF3B8();
  v58 = *(v59 - 8);
  v17 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C00, &qword_224DBD030);
  v72 = *(v79 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v79);
  v22 = v57 - v21;
  v23 = sub_224DAB258();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, a1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v23);
  v28 = sub_224DAB228();
  v29 = sub_224DAF2A8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_224A2F000, v28, v29, "Start", v30, 2u);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  (*(v24 + 8))(v27, v23);
  v31 = a1[24];
  __swift_project_boxed_opaque_existential_1(a1 + 20, a1[23]);
  v32 = *(v31 + 32);
  v80 = sub_224DAD8D8();
  sub_224DAF378();
  v65 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue;
  v81 = *(a1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  v33 = v81;
  v77 = sub_224DAF358();
  v34 = *(v77 - 8);
  v78 = *(v34 + 56);
  v74 = v34 + 56;
  v78(v16, 1, 1, v77);
  v35 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C08, &qword_224DBD038);
  v36 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v76 = MEMORY[0x277CBCD90];
  sub_224A33088(&qword_2813510A8, &qword_27D6F5C08, &qword_224DBD038);
  v73 = sub_224B67CF4();
  v37 = v36;
  sub_224DAB468();
  sub_224A3311C(v16, &qword_27D6F5090, &qword_224DB5C30);

  (*(v58 + 8))(v19, v59);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351340, &qword_27D6F5C00, &qword_224DBD030);
  v38 = v79;
  sub_224DAB488();

  (*(v72 + 8))(v22, v38);
  v39 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_persistentSubscriptions;
  swift_beginAccess();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  v79 = sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400);
  sub_224DAB318();
  swift_endAccess();

  v40 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, a1[17]);
  v80 = sub_224DAC688();
  v41 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, a1[17]);
  v81 = sub_224DAC6A8();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  v59 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
  v42 = v60;
  sub_224DAB428();

  v57[1] = v37;
  v43 = sub_224DAF3D8();
  v80 = v43;
  v78(v16, 1, 1, v77);
  sub_224A33088(&qword_281351310, &qword_27D6F4C50, &unk_224DBA3C0);
  v44 = v62;
  v45 = v75;
  sub_224DAB448();
  sub_224A3311C(v16, &qword_27D6F5090, &qword_224DB5C30);

  (*(v61 + 8))(v42, v45);
  swift_allocObject();
  swift_weakInit();
  v75 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_2813511C8, &qword_27D6F4C58, &qword_224DC1AF0);
  v46 = v64;
  sub_224DAB488();

  (*(v63 + 8))(v44, v46);
  v57[2] = v39;
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v47 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, a1[17]);
  v80 = sub_224DAC698();
  v48 = sub_224DAF3D8();
  v81 = v48;
  v78(v16, 1, 1, v77);
  v49 = v66;
  sub_224DAB448();
  sub_224A3311C(v16, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);
  v50 = v68;
  sub_224DAB488();

  (*(v67 + 8))(v49, v50);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v51 = a1[19];
  v80 = sub_224DAC0D8();
  v52 = sub_224DAF3D8();
  v81 = v52;
  v78(v16, 1, 1, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3350, &unk_224DBD040);
  sub_224A33088(&unk_2813510E8, &qword_27D6F3350, &unk_224DBD040);
  v53 = v69;
  sub_224DAB448();
  sub_224A3311C(v16, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351288, &qword_27D6F3348, &unk_224DB3560);
  v54 = v71;
  sub_224DAB488();

  (*(v70 + 8))(v53, v54);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v55 = *(a1 + v65);
  BSDispatchQueueAssert();
  sub_224C89C84();
  return sub_224C87C9C();
}

uint64_t sub_224C777EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_224C77860(uint64_t *a1)
{
  v2 = sub_224DAC2B8();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v34 - v8;
  v46 = sub_224DA9878();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_224DACB98();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v35);
  v52 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v51 = result;
  if (result)
  {
    v17 = v35;
    v44 = *(v15 + 16);
    if (v44)
    {
      v18 = 0;
      v42 = (v51 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService);
      v41 = v15 + 32;
      v40 = (v12 + 104);
      v39 = *MEMORY[0x277CF9B98];
      v38 = (v6 + 8);
      v37 = (v9 + 8);
      v53 = (v34 + 8);
      v54 = v34 + 16;
      v36 = (v12 + 8);
      v43 = v15;
      while (v18 < *(v15 + 16))
      {
        v50 = v18;
        sub_224A3317C(v41 + 40 * v18, v55);
        __swift_project_boxed_opaque_existential_1(v55, v55[3]);
        v19 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v55);
        (*v40)(v52, v39, v17);
        v20 = v42[4];
        __swift_project_boxed_opaque_existential_1(v42, v42[3]);
        v21 = v45;
        sub_224DA9868();
        v22 = v47;
        sub_224DAF528();
        sub_224DAD1B8();
        (*v38)(v22, v48);
        (*v37)(v21, v46);
        v23 = *(v51 + 152);
        v24 = sub_224DAC108();
        v25 = *(v24 + 16);
        if (v25)
        {
          sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
          v26 = *(v34 + 80);
          v49 = v24;
          v27 = v24 + ((v26 + 32) & ~v26);
          v28 = *(v34 + 72);
          v29 = *(v34 + 16);
          do
          {
            v30 = v2;
            v29(v5, v27, v2);
            v31 = sub_224DAC2A8();
            v32 = [v31 extensionIdentity];

            LOBYTE(v31) = sub_224DAF6A8();
            if (v31)
            {
              v33 = sub_224DAC2A8();
              sub_224C809D8(v33, v52);
            }

            v2 = v30;
            (*v53)(v5, v30);
            v27 += v28;
            --v25;
          }

          while (v25);

          v17 = v35;
        }

        else
        {
        }

        v18 = v50 + 1;
        result = (*v36)(v52, v17);
        v15 = v43;
        if (v18 == v44)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_224C77DE0(uint64_t *a1)
{
  v2 = sub_224DAC2B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v51 = result;
  if (!result)
  {
    return result;
  }

  v43 = *(v7 + 16);
  if (!v43)
  {
  }

  v9 = 0;
  v44 = v7 + 32;
  v57 = "Reloading all content: ";
  v10 = (v3 + 8);
  v49 = v3;
  v50 = v2;
  v47 = v3 + 16;
  v48 = v6;
  v42 = v7;
  v46 = (v3 + 8);
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      goto LABEL_36;
    }

    v45 = v9;
    sub_224A3317C(v44 + 40 * v9, v60);
    v12 = *(v51 + 152);
    v13 = sub_224DAC108();
    v56 = *(v13 + 16);
    if (v56)
    {
      break;
    }

LABEL_5:
    v11 = v45 + 1;
    result = __swift_destroy_boxed_opaque_existential_1(v60);
    v9 = v11;
    if (v11 == v43)
    {
    }
  }

  v14 = v13;
  v55 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  result = v14;
  v15 = 0;
  v16 = *(v3 + 80);
  v53 = v14;
  v54 = v14 + ((v16 + 32) & ~v16);
LABEL_11:
  if (v15 >= *(result + 16))
  {
    goto LABEL_35;
  }

  (*(v3 + 16))(v6, v54 + *(v3 + 72) * v15, v2);
  v17 = sub_224DAC2A8();
  v18 = [v17 extensionIdentity];

  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  v19 = sub_224DAE338();
  LOBYTE(v17) = sub_224DAF6A8();

  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = *(v51 + 152);
  result = sub_224DAC168();
  if (!result)
  {
    goto LABEL_10;
  }

  v21 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    result = sub_224DAFA68();
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v21 = result | 0x8000000000000000;
  }

  else
  {
    v25 = -1 << *(result + 32);
    v22 = result + 64;
    v23 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(result + 64);
  }

  v28 = 0;
  v52 = v23;
  v29 = (v23 + 64) >> 6;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v30 = v28;
    v31 = v24;
    v32 = v28;
    if (!v24)
    {
      break;
    }

LABEL_25:
    v33 = (v31 - 1) & v31;
    v34 = (v32 << 9) | (8 * __clz(__rbit64(v31)));
    v35 = *(*(v21 + 48) + v34);
    v36 = *(*(v21 + 56) + v34);

    if (!v35)
    {
LABEL_9:
      sub_224A3B7E4();
      v3 = v49;
      v2 = v50;
      v6 = v48;
      v10 = v46;
LABEL_10:
      ++v15;
      (*v10)(v6, v2);
      result = v53;
      if (v15 == v56)
      {

        v7 = v42;
        goto LABEL_5;
      }

      goto LABEL_11;
    }

    while (1)
    {

      sub_224DABF38();
      sub_224DABEA8();

      v28 = v32;
      v24 = v33;
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_27:
      v37 = sub_224DAFB18();
      if (v37)
      {
        v39 = v38;
        v58 = v37;
        type metadata accessor for EmptyKey();
        swift_dynamicCast();
        v40 = v59;
        v58 = v39;
        sub_224DABF48();
        swift_dynamicCast();
        v32 = v28;
        v33 = v24;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      goto LABEL_9;
    }

    v31 = *(v22 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_224C78284(uint64_t a1)
{
  v2 = sub_224DAC2B8();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3358, &unk_224DB3570);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = sub_224DAB258();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = v14;
    v45 = v13;
    (*(v14 + 16))(v17, Strong + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v13);

    v19 = v6[2];
    v19(v12, a1, v5);
    v19(v10, a1, v5);
    v20 = sub_224DAB228();
    v21 = sub_224DAF2A8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40 = v21;
      v23 = v22;
      v41 = swift_slowAlloc();
      v49[0] = v41;
      *v23 = 136446466;
      v39 = v20;
      sub_224DAC838();
      v43 = v2;
      v24 = v6[1];
      v24(v12, v5);
      v42 = a1;
      v25 = *(v48 + 16);
      v26 = *(v48 + 24);

      v27 = sub_224A33F74(v25, v26, v49);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      sub_224DAC838();
      v24(v10, v5);
      v2 = v43;
      v28 = *(v48 + 16);
      v29 = *(v48 + 24);

      v30 = sub_224A33F74(v28, v29, v49);

      *(v23 + 14) = v30;
      v31 = v39;
      _os_log_impl(&dword_224A2F000, v39, v40, "%{public}s:%{public}s Marking variant removed from store.", v23, 0x16u);
      v32 = v41;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    else
    {

      v33 = v6[1];
      v33(v10, v5);
      v33(v12, v5);
    }

    (*(v44 + 8))(v17, v45);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = *(result + 16);
    v36 = *(result + 24);
    swift_unknownObjectRetain();

    swift_getObjectType();
    v37 = v46;
    MEMORY[0x22AA5ABC0](v5);
    v38 = *(*(v36 + 16) + 16);
    sub_224DAC478();
    swift_unknownObjectRelease();
    return (*(v47 + 8))(v37, v2);
  }

  return result;
}

uint64_t sub_224C78774(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_224DAF3B8();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v44 = &v34 - v14;
  v15 = sub_224DAC2B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v19 = *(v16 + 16);
  v45 = &v34 - v20;
  v38 = v19;
  v19();
  v21 = *(v1 + 152);
  v42 = a1;
  v22 = sub_224DAC168();
  if (v22 && (v23 = sub_224D5D150(v22), , v23))
  {
    sub_224DABEB8();

    v37 = v12;
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v36 = sub_224DAD178();
    v47 = v36;
    sub_224DAF378();
    v46 = *(v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
    v24 = v46;
    v25 = sub_224DAF358();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    v35 = v24;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
    sub_224B67CF4();
    sub_224DAB468();
    sub_224A3311C(v7, &qword_27D6F5090, &qword_224DB5C30);

    (*(v40 + 8))(v11, v41);

    __swift_destroy_boxed_opaque_existential_1(v48);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = v39;
    (v38)(v39, v42, v15);
    v28 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    (*(v16 + 32))(v29 + v28, v27, v15);
    sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450);
    v30 = v37;
    v31 = v44;
    v32 = sub_224DAB488();

    (*(v43 + 8))(v31, v30);
  }

  else
  {
    v32 = 0;
  }

  swift_beginAccess();
  sub_224B08CD8(v32, v45);
  return swift_endAccess();
}

uint64_t sub_224C78CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_224DAC2B8();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = v6;
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABD68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v27 = *(result + 152);

    v47 = a3;
    sub_224DAC118();

    (*(v8 + 104))(v22, *MEMORY[0x277CF98C0], v7);
    (*(v8 + 56))(v22, 0, 1, v7);
    v28 = *(v11 + 48);
    sub_224A3796C(v24, v14, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3796C(v22, &v14[v28], &qword_27D6F4C30, &unk_224DBB310);
    v29 = *(v8 + 48);
    if (v29(v14, 1, v7) == 1)
    {
      sub_224A3311C(v22, &qword_27D6F4C30, &unk_224DBB310);
      if (v29(&v14[v28], 1, v7) == 1)
      {
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v30 = v47;
LABEL_10:
        v47 = *(v26 + 152);
        v35 = swift_allocObject();
        swift_weakInit();
        v36 = v44;
        v37 = v45;
        v38 = v46;
        (*(v45 + 16))(v44, v30, v46);
        v39 = (*(v37 + 80) + 24) & ~*(v37 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = v35;
        (*(v37 + 32))(v40 + v39, v36, v38);

        sub_224DAC0B8();

        sub_224A3311C(v24, &qword_27D6F4C30, &unk_224DBB310);
      }
    }

    else
    {
      sub_224A3796C(v14, v19, &qword_27D6F4C30, &unk_224DBB310);
      if (v29(&v14[v28], 1, v7) != 1)
      {
        v31 = &v14[v28];
        v32 = v42;
        (*(v8 + 32))(v42, v31, v7);
        sub_224C8DD50(&unk_281350E90, MEMORY[0x277CF98C8]);
        v33 = sub_224DAEDD8();
        v34 = *(v8 + 8);
        v34(v32, v7);
        sub_224A3311C(v22, &qword_27D6F4C30, &unk_224DBB310);
        v34(v19, v7);
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v30 = v47;
        if (v33)
        {
          goto LABEL_10;
        }

LABEL_8:
        sub_224C796B8(v30);

        return sub_224A3311C(v24, &qword_27D6F4C30, &unk_224DBB310);
      }

      sub_224A3311C(v22, &qword_27D6F4C30, &unk_224DBB310);
      (*(v8 + 8))(v19, v7);
    }

    sub_224A3311C(v14, &qword_27D6F4C28, qword_224DBA340);
    v30 = v47;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_224C792D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAB7B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAC2B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = v7;
    v15 = *(result + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
    v16 = result;
    (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
    v17 = *(v12 + 80);
    v23 = v4;
    v18 = (v17 + 24) & ~v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    (*(v12 + 32))(v19 + v18, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    aBlock[4] = sub_224C8FEEC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_204;
    v20 = _Block_copy(aBlock);
    v21 = v15;

    sub_224DAB7E8();
    v27 = MEMORY[0x277D84F90];
    sub_224C8DD50(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v22 = v26;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v10, v22, v20);
    _Block_release(v20);

    (*(v23 + 8))(v22, v3);
    (*(v25 + 8))(v10, v24);
  }

  return result;
}

uint64_t sub_224C796B8(uint64_t a1)
{
  v2 = v1;
  v120 = sub_224DACB98();
  v118 = *(v120 - 8);
  v4 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_224DACB08();
  v115 = *(v116 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v117 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_224DACB28();
  v109 = *(v110 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v112 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_224DACC88();
  v113 = *(v114 - 8);
  v10 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v111 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_224DAC2B8();
  v127 = *(v121 - 8);
  v12 = *(v127 + 64);
  v13 = MEMORY[0x28223BE20](v121);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v107 = &v96 - v16;
  v126 = sub_224DAB258();
  v17 = *(v126 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v126);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v108 = &v96 - v22;
  v132 = sub_224DAB728();
  v124 = *(v132 - 8);
  v23 = *(v124 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_224DAE4F8();
  v123 = *(v130 - 8);
  v25 = *(v123 + 64);
  MEMORY[0x28223BE20](v130);
  v129 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAB8C8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v33 = v32;
  v34 = sub_224DAB8F8();
  result = (*(v28 + 8))(v31, v27);
  if ((v34 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v36 = *(v2 + 152);
  result = sub_224DAC168();
  if (!result)
  {
    return result;
  }

  v37 = result;
  v38 = sub_224DAC2A8();
  v39 = [v38 extensionIdentity];

  v40 = &v39[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v41 = a1;
  v43 = *v40;
  v42 = *(v40 + 1);

  LOBYTE(v39) = sub_224DAA048();

  if (v39)
  {

    v44 = v17;
    v45 = v126;
    (*(v17 + 16))(v21, v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v126);
    v46 = v127;
    v47 = v121;
    (*(v127 + 16))(v15, v41, v121);
    v48 = sub_224DAB228();
    v49 = sub_224DAF278();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = v44;
      v52 = swift_slowAlloc();
      v134[0] = v52;
      *v50 = 136446210;
      sub_224C8DD50(&unk_281350E08, MEMORY[0x277CF99B8]);
      v53 = sub_224DAFD28();
      v54 = v46;
      v56 = v55;
      (*(v54 + 8))(v15, v47);
      v57 = sub_224A33F74(v53, v56, v134);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_224A2F000, v48, v49, "Ignoring proactive reload for timeline %{public}s becasue it is remote", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x22AA5EED0](v52, -1, -1);
      MEMORY[0x22AA5EED0](v50, -1, -1);

      return (*(v51 + 8))(v21, v126);
    }

    else
    {

      (*(v46 + 8))(v15, v47);
      return (*(v44 + 8))(v21, v45);
    }
  }

  v106 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_224DBB050;
  *(v58 + 32) = swift_getKeyPath();
  *(v58 + 40) = swift_getKeyPath();
  *(v58 + 48) = swift_getKeyPath();
  *(v58 + 56) = swift_getKeyPath();
  result = swift_getKeyPath();
  v128 = v58;
  *(v58 + 64) = result;
  v102 = v2;
  v104 = v36;
  if ((v37 & 0xC000000000000001) != 0)
  {
    result = sub_224DAFA68();
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v37 = result | 0x8000000000000000;
  }

  else
  {
    v63 = -1 << *(v37 + 32);
    v60 = v37 + 64;
    v61 = ~v63;
    v64 = -v63;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v62 = v65 & *(v37 + 64);
  }

  v105 = 0;
  v66 = 0;
  v103 = v61;
  v67 = (v61 + 64) >> 6;
  v124 += 8;
  v123 += 8;
  v101 = (v17 + 16);
  v100 = (v127 + 16);
  v127 += 8;
  v99 = (v17 + 8);
  *&v59 = 136446210;
  v98 = v59;
  v125 = v60;
  v122 = v67;
LABEL_15:
  v68 = v66;
  v69 = v62;
  if ((v37 & 0x8000000000000000) != 0)
  {
    while (1)
    {
      v75 = sub_224DAFB18();
      if (!v75)
      {
        break;
      }

      v77 = v76;
      v133[0] = v75;
      type metadata accessor for EmptyKey();
      swift_dynamicCast();
      v78 = v134[0];
      v133[0] = v77;
      sub_224DABF48();
      swift_dynamicCast();
      v66 = v68;
      v62 = v69;
      if (!v78)
      {
        break;
      }

LABEL_24:

      if (!sub_224DABF28())
      {

        goto LABEL_15;
      }

      v79 = v62;
      v80 = v37;
      sub_224DAC9F8();
      __swift_project_boxed_opaque_existential_1(v134, v134[3]);
      v81 = v129;
      sub_224DAE7E8();
      sub_224DABEB8();
      __swift_project_boxed_opaque_existential_1(v133, v133[3]);
      v82 = v131;
      sub_224DAD168();

      v83 = sub_224DAE4E8();

      (*v124)(v82, v132);
      (*v123)(v81, v130);
      __swift_destroy_boxed_opaque_existential_1(v133);
      __swift_destroy_boxed_opaque_existential_1(v134);
      if ((v83 & 1) == 0)
      {
        (*v101)(v108, v102 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v126);
        v84 = v107;
        v85 = v121;
        (*v100)(v107, v106, v121);
        v86 = sub_224DAB228();
        v105 = sub_224DAF2A8();
        v37 = v80;
        v62 = v79;
        if (os_log_type_enabled(v86, v105))
        {
          v87 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v134[0] = v97;
          *v87 = v98;
          sub_224C8DD50(&unk_281350E08, MEMORY[0x277CF99B8]);
          v88 = v86;
          v89 = sub_224DAFD28();
          v90 = v84;
          v92 = v91;
          (*v127)(v90, v85);
          v93 = sub_224A33F74(v89, v92, v134);

          *(v87 + 4) = v93;
          _os_log_impl(&dword_224A2F000, v88, v105, "Proactively reloading timeline for %{public}s because environment no longer matches.", v87, 0xCu);
          v94 = v97;
          __swift_destroy_boxed_opaque_existential_1(v97);
          MEMORY[0x22AA5EED0](v94, -1, -1);
          MEMORY[0x22AA5EED0](v87, -1, -1);
        }

        else
        {

          (*v127)(v84, v85);
        }

        result = (*v99)(v108, v126);
        v105 = 1;
        v60 = v125;
        v67 = v122;
        goto LABEL_15;
      }

      v68 = v66;
      v69 = v79;
      v37 = v80;
      v60 = v125;
      v67 = v122;
      if ((v37 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v70 = v68;
    v71 = v69;
    v66 = v68;
    if (!v69)
    {
      while (1)
      {
        v66 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        if (v66 >= v67)
        {
          goto LABEL_32;
        }

        v71 = *(v60 + 8 * v66);
        ++v70;
        if (v71)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_20:
    v62 = (v71 - 1) & v71;
    v72 = (v66 << 9) | (8 * __clz(__rbit64(v71)));
    v73 = *(*(v37 + 48) + v72);
    v74 = *(*(v37 + 56) + v72);

    if (v73)
    {
      goto LABEL_24;
    }
  }

LABEL_32:
  sub_224A3B7E4();

  if (v105)
  {
    (*(v109 + 104))(v112, *MEMORY[0x277CF9B50], v110);
    (*(v115 + 104))(v117, *MEMORY[0x277CF9B40], v116);
    (*(v118 + 104))(v119, *MEMORY[0x277CF9BA8], v120);
    sub_224DACC48();
    v95 = v111;
    sub_224DACC38();
    sub_224DAC138();
    return (*(v113 + 8))(v95, v114);
  }

  return result;
}

uint64_t sub_224C7A5F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v34 - v3;
  v39 = sub_224DAC538();
  v4 = *(*(v39 - 1) + 64);
  MEMORY[0x28223BE20](v39);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAC528();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  v14 = sub_224DAC5E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 264);
  v38 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 240), v18);
  v19 = sub_224DAE418();
  v21 = v20;
  v22 = off_283828B98;
  v23 = type metadata accessor for PushService();
  v22(v19, v21, v23, &off_283828B40);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_224A3311C(v13, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  (*(v15 + 32))(v43, v13, v14);
  v25 = v40;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 8))(v43, v14);
    return sub_224A3D358(v25, MEMORY[0x277CF9A70]);
  }

  else
  {
    v26 = v36;
    v27 = v37;
    v39 = *(v36 + 32);
    v28 = v41;
    v39(v41, v25, v37);
    v29 = sub_224DAF128();
    (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
    v30 = v35;
    (*(v26 + 16))(v35, v28, v27);
    v31 = (*(v26 + 80) + 40) & ~*(v26 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v39;
    *(v32 + 4) = v38;
    v33(&v32[v31], v30, v27);

    sub_224D00D34(0, 0, v42, &unk_224DBCF90, v32);

    (*(v26 + 8))(v41, v27);
    return (*(v15 + 8))(v43, v14);
  }
}

uint64_t sub_224C7AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_224C7AAC8, 0, 0);
}

uint64_t sub_224C7AAC8()
{
  v1 = v0[3];
  v2 = sub_224DAC508();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_224B9B4C8;
  v4 = v0[2];

  return sub_224C7AB6C(v2);
}

uint64_t sub_224C7AB6C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_224DAE438();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_224DAC5E8();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v10 = sub_224DA9908();
  v2[22] = v10;
  v11 = *(v10 - 8);
  v2[23] = v11;
  v12 = *(v11 + 64) + 15;
  v2[24] = swift_task_alloc();
  v13 = sub_224DA9878();
  v2[25] = v13;
  v14 = *(v13 - 8);
  v2[26] = v14;
  v15 = *(v14 + 64) + 15;
  v2[27] = swift_task_alloc();
  v16 = *(*(type metadata accessor for ExtensionTask.SchedulingConfiguration(0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v17 = type metadata accessor for ExtensionTask.Identifier(0);
  v2[29] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C7ADF8, 0, 0);
}

uint64_t sub_224C7ADF8()
{
  receiver = v0[15].receiver;
  super_class = v0[15].super_class;
  v3 = v0[14].receiver;
  v152 = v3;
  v4 = v0[13].receiver;
  v132 = v0[13].super_class;
  v135 = v0[12].super_class;
  v141 = v0[11].super_class;
  v145 = v0[11].receiver;
  v5 = v0[10].super_class;
  v147 = v5;
  v149 = v0[12].receiver;
  v6 = v0[5].super_class;
  v128 = v0[6].receiver;
  v0[16].receiver = [(objc_class *)v6 extensionIdentity];
  v7 = v6;
  v8 = sub_224C83DFC(v7);
  *super_class = v7;
  super_class[1] = v8;
  swift_storeEnumTagMultiPayload();
  sub_224A4152C(super_class, receiver, type metadata accessor for ExtensionTask.Identifier);
  v120 = [(objc_class *)v7 extensionIdentity];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v10 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_224DB8BC0;
  v14 = v13 + v12;
  v15 = sub_224DAE8B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v14, 4, 5, v15);
  v17(v14 + v11, 3, 5, v15);
  (*(v16 + 104))(v14 + 2 * v11, *MEMORY[0x277CE3D28], v15);
  v17(v14 + 2 * v11, 0, 5, v15);
  v122 = type metadata accessor for ExtensionTask(0);
  v18 = objc_allocWithZone(v122);
  sub_224DAE908();
  v19 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v20 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v21 = sub_224DAC938();
  v22 = *(v21 - 8);
  v125 = v21;
  v130 = *(v22 + 56);
  v130(&v18[v20], 1, 1, v21);
  v23 = &v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v26 = 0;
  v26[1] = 0;
  sub_224DA9868();
  v4[4](&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v132, v135);
  *&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v120;
  sub_224A4152C(v152, &v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  v27 = *&v18[v19];
  *&v18[v19] = v13;
  v136 = v120;

  v28 = &v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v28 = 1;
  v28[8] = 0;
  sub_224A4152C(receiver, &v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  sub_224DA98F8();
  (*(v141 + 2))(&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v149, v145);
  v0[5].receiver = sub_224DA98E8();
  sub_224A3F6A4();
  sub_224DAEF18();
  v29 = sub_224A3D19C(8);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = MEMORY[0x22AA5D1C0](v29, v31, v33, v35);
  v38 = v37;

  v39 = &v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v39 = v36;
  v39[1] = v38;
  v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
  v0[4].receiver = v18;
  v0[4].super_class = v122;
  v40 = objc_msgSendSuper2(v0 + 4, sel_init);
  v0[16].super_class = v40;

  (*(v141 + 1))(v149, v145);
  sub_224A3D358(v152, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D358(receiver, type metadata accessor for ExtensionTask.Identifier);
  (*(v22 + 104))(v147, *MEMORY[0x277CF9AE8], v125);
  v130(v147, 0, 1, v125);
  v41 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  v121 = v40;
  sub_224A838C0(v147, v40 + v41, &qword_27D6F4030, &unk_224DB5630);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v128 + 30, v128[33]);
  v42 = off_283828B60[0];
  v123 = type metadata accessor for PushService();
  v43 = v42(v123, &off_283828B40);
  v146 = sub_224DA0FA4(MEMORY[0x277D84F90]);
  v44 = *(v43 + 16);
  if (!v44)
  {
LABEL_20:

    v75 = swift_allocObject();
    v0[17].receiver = v75;
    *(v75 + 16) = MEMORY[0x277D84F90];
    v76 = (v75 + 16);
    v77 = swift_allocObject();
    v0[17].super_class = v77;
    *(v77 + 16) = MEMORY[0x277D84F98];
    __swift_project_boxed_opaque_existential_1(v128 + 30, v128[33]);
    v78 = off_283828B68(v123, &off_283828B40);
    v154 = v78;
    v155 = *(v78 + 16);
    if (!v155)
    {

LABEL_46:
      v156 = *&v0[5].super_class;

      v116 = swift_task_alloc();
      v0[18].receiver = v116;
      *(v116 + 16) = v121;
      *(v116 + 24) = vextq_s8(v156, v156, 8uLL);
      *(v116 + 40) = v75;
      *(v116 + 48) = v77;
      v117 = *(MEMORY[0x277D85A40] + 4);
      v118 = swift_task_alloc();
      v0[18].super_class = v118;
      *v118 = v0;
      *(v118 + 1) = sub_224C7BCD0;

      return MEMORY[0x2822008A0]();
    }

    v79 = v78;
    v124 = v75;
    v126 = (v75 + 16);
    v80 = 0;
    v81 = v0[7].receiver;
    v151 = v78 + ((v81[80] + 32) & ~v81[80]);
    v134 = v0[8].super_class;
    v127 = v77;
    v129 = (v134 + 8);
    v82 = (v81 + 8);
    while (1)
    {
      if (v80 >= *(v79 + 16))
      {
        goto LABEL_55;
      }

      (*(v81 + 2))(v0[7].super_class, v151 + *(v81 + 9) * v80, v0[6].super_class);
      v83 = sub_224DAE418();
      if (!v146[2])
      {
        break;
      }

      v85 = sub_224A3A40C(v83, v84);
      v87 = v86;
      v79 = v154;

      if ((v87 & 1) == 0)
      {
        goto LABEL_23;
      }

      (*(v134 + 2))(v0[9].receiver, v146[7] + *(v134 + 9) * v85, v0[8].receiver);
      v88 = sub_224DAC5D8();
      if (v88)
      {
        v89 = v88;
        MEMORY[0x22AA5D350]();
        if (*((*v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v115 = *((*v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_224DAF038();
        }

        v90 = v0[7].super_class;
        sub_224DAF078();
        v143 = sub_224DAE428();
        v144 = v91;
        v92 = *(v77 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v77 + 16) = 0x8000000000000000;
        v95 = sub_224B0BD50(v89);
        v96 = v92[2];
        v97 = (v94 & 1) == 0;
        v98 = v96 + v97;
        if (__OFADD__(v96, v97))
        {
          goto LABEL_57;
        }

        v99 = v94;
        if (v92[3] >= v98)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224B29134();
          }
        }

        else
        {
          sub_224B171E8(v98, isUniquelyReferenced_nonNull_native);
          v100 = sub_224B0BD50(v89);
          if ((v99 & 1) != (v101 & 1))
          {
            sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
            goto LABEL_51;
          }

          v95 = v100;
        }

        v104 = v0[9].receiver;
        v105 = v0[8].receiver;
        v106 = v0[6].super_class;
        v138 = v106;
        v140 = v0[7].super_class;
        if (v99)
        {
          v107 = (v92[7] + 16 * v95);
          v108 = v0[8].receiver;
          v109 = *v107;
          v110 = v107[1];
          *v107 = v143;
          v107[1] = v144;
          sub_224A78024(v109, v110);

          (*v129)(v104, v108);
          (*v82)(v140, v138);
        }

        else
        {
          v92[(v95 >> 6) + 8] |= 1 << v95;
          *(v92[6] + 8 * v95) = v89;
          v111 = (v92[7] + 16 * v95);
          *v111 = v143;
          v111[1] = v144;
          (*v129)(v104, v105);
          (*v82)(v140, v138);
          v112 = v92[2];
          v73 = __OFADD__(v112, 1);
          v113 = v112 + 1;
          if (v73)
          {
            goto LABEL_59;
          }

          v92[2] = v113;
        }

        v77 = v127;
        v114 = *(v127 + 16);
        *(v127 + 16) = v92;

        v76 = v126;
      }

      else
      {
        v102 = v0[7].super_class;
        v103 = v0[6].super_class;
        (*v129)(v0[9].receiver, v0[8].receiver);
        (*v82)(v102, v103);
      }

      v79 = v154;
LABEL_24:
      if (v155 == ++v80)
      {

        v75 = v124;
        goto LABEL_46;
      }
    }

LABEL_23:
    (*v82)(v0[7].super_class, v0[6].super_class);
    goto LABEL_24;
  }

  v45 = 0;
  v46 = v0[8].super_class;
  v150 = v43 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
  v148 = (v46 + 8);
  v133 = (v46 + 32);
  v153 = v46;
  v131 = (v46 + 40);
  v137 = *(v43 + 16);
  v139 = v43;
  while (v45 < *(v43 + 16))
  {
    v47 = *(v153 + 9);
    v48 = *(v153 + 2);
    v48(v0[10].receiver, v150 + v47 * v45, v0[8].receiver);
    v49 = sub_224DAC5D8();
    if (v49)
    {
      v50 = v49;
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v51 = [v50 extensionIdentity];
      v52 = sub_224DAF6A8();

      v53 = v0[10].receiver;
      if (v52)
      {
        v54 = v0[9].super_class;
        v55 = v0[8].receiver;
        v56 = sub_224DAC588();
        v58 = v57;
        v48(v54, v53, v55);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v61 = sub_224A3A40C(v56, v58);
        v62 = v146[2];
        v63 = (v60 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_56;
        }

        v65 = v60;
        if (v146[3] >= v64)
        {
          if ((v59 & 1) == 0)
          {
            sub_224B2527C();
          }
        }

        else
        {
          sub_224B0F104(v64, v59);
          v66 = sub_224A3A40C(v56, v58);
          if ((v65 & 1) != (v67 & 1))
          {
LABEL_51:

            return sub_224DAFDD8();
          }

          v61 = v66;
        }

        v69 = v0[9].super_class;
        v142 = v0[10].receiver;
        v70 = v0[8].receiver;
        if (v65)
        {

          (*v131)(v146[7] + v61 * v47, v69, v70);

          (*v148)(v142, v70);
        }

        else
        {
          v146[(v61 >> 6) + 8] |= 1 << v61;
          v71 = (v146[6] + 16 * v61);
          *v71 = v56;
          v71[1] = v58;
          (*v133)(v146[7] + v61 * v47, v69, v70);

          (*v148)(v142, v70);
          v72 = v146[2];
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (v73)
          {
            goto LABEL_58;
          }

          v146[2] = v74;
        }

        v44 = v137;
        v43 = v139;
      }

      else
      {
        v68 = v0[8].receiver;

        (*v148)(v53, v68);
      }
    }

    else
    {
      (*v148)(v0[10].receiver, v0[8].receiver);
    }

    if (v44 == ++v45)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return MEMORY[0x2822008A0]();
}

uint64_t sub_224C7BCD0()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v6 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_224C7BF2C;
  }

  else
  {
    v4 = sub_224C7BE00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_224C7BE00()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v12 = *(v0 + 160);
  v13 = *(v0 + 152);
  v14 = *(v0 + 144);
  v15 = *(v0 + 120);

  sub_224A3D358(v4, type metadata accessor for ExtensionTask.Identifier);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_224C7BF2C()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v13 = *(v0 + 160);
  v14 = *(v0 + 152);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);

  sub_224A3D358(v4, type metadata accessor for ExtensionTask.Identifier);

  v10 = *(v0 + 8);
  v11 = *(v0 + 304);

  return v10();
}

uint64_t sub_224C7C058(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v31 = a2;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  *(v16 + 5) = a6;
  v17 = (a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v19 = *(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v18 = *(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v17 = sub_224C8FB64;
  v17[1] = v16;

  v20 = a4;

  sub_224A3D418(v19);
  (*(v12 + 16))(v15, v32, v11);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = v20;
  (*(v12 + 32))(v22 + v21, v15, v11);
  v23 = v31;
  v24 = (v31 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v25 = *(v31 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v26 = *(v31 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v24 = sub_224C8FB70;
  v24[1] = v22;

  v27 = v20;
  sub_224A3D418(v25);
  v28 = a3[51];
  v29 = a3[52];
  __swift_project_boxed_opaque_existential_1(a3 + 48, v28);
  (*(v29 + 16))(v23, v28, v29);
}

void sub_224C7C298(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v36 = a2;
  v37 = a3;
  v35 = sub_224DAE6E8();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v35);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v21 = v42;
      sub_224DAECA8();
      swift_beginAccess();
      v22 = *(a6 + 16);
      swift_beginAccess();
      v23 = *(a7 + 16);

      v24 = sub_224DAEC98();
      v25 = swift_allocObject();
      v26 = v37;
      *(v25 + 16) = v36;
      *(v25 + 24) = v26;
      v40 = sub_224BFDE18;
      v41 = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224BC6D2C;
      v39 = &block_descriptor_170;
      v27 = _Block_copy(aBlock);

      [v21 controlPushTokensDidChange:v24 completion:v27];
      _Block_release(v27);
      swift_unknownObjectRelease();
      goto LABEL_8;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
  }

  (*(v17 + 16))(v20, a4 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v16);
  v28 = a5;
  v29 = sub_224DAB228();
  v30 = sub_224DAF288();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    v33 = [v28 extensionIdentity];
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&dword_224A2F000, v29, v30, "Unable to update state in extension %{public}@: No extension session", v31, 0xCu);
    sub_224A3311C(v32, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v32, -1, -1);
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }

  (*(v17 + 8))(v20, v16);
  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v12 + 104))(v15, *MEMORY[0x277CE3C40], v35);
  v24 = sub_224DAF638();
  v36();
LABEL_8:
}

uint64_t sub_224C7C70C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = sub_224DAB258();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v32 - v14;
  if (a3)
  {
    (*(v9 + 16))(v32 - v14, a4 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v8);
    v16 = a3;
    v17 = a5;
    v18 = sub_224DAB228();
    v19 = sub_224DAF288();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543618;
      v22 = [v17 extensionIdentity];
      *(v20 + 4) = v22;
      *v21 = v22;
      *(v20 + 12) = 2114;
      v23 = a3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      v21[1] = v24;
      _os_log_impl(&dword_224A2F000, v18, v19, "Error occurred when sending push token to extension %{public}@: %{public}@", v20, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v21, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    v32[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0D8();
  }

  else
  {
    (*(v9 + 16))(v13, a4 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v8);
    v26 = a5;
    v27 = sub_224DAB228();
    v28 = sub_224DAF2A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      v31 = [v26 extensionIdentity];
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&dword_224A2F000, v27, v28, "Push token sent to extension %{public}@ successfully.", v29, 0xCu);
      sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      MEMORY[0x22AA5EED0](v29, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0E8();
  }
}

uint64_t sub_224C7CAAC(void *a1, uint64_t a2)
{
  v48 = a2;
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v43 - v10;
  v47 = sub_224DAE138();
  v45 = *(v47 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAE168();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v46 = sub_224DAC5E8();
  v44 = *(v46 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  v20 = a1;
  v21 = [a1 extensionIdentity];
  sub_224DAC6D8();

  if (v52)
  {
    v23 = v49;
    v22 = v50;
    sub_224A36F98(&v51, v53);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    sub_224DAE288();
    if (v24)
    {
      (*(v45 + 16))(v13, v48, v47);
      v25 = v20;
      sub_224DAE148();
      sub_224DAC5C8();
      v26 = *__swift_project_boxed_opaque_existential_1(v2 + 30, v2[33]);
      sub_224AB65D4(v18, 1);
      (*(v44 + 8))(v18, v46);
    }

    else
    {
      v36 = v43;
      (*(v22 + 16))(v43, v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v23);
      v37 = v20;
      v38 = sub_224DAB228();
      v39 = sub_224DAF288();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138543362;
        v42 = [v37 extensionIdentity];
        *(v40 + 4) = v42;
        *v41 = v42;
        _os_log_impl(&dword_224A2F000, v38, v39, "Error occured when subscribing to pushes for extension %{public}@: Could not find push environment entitlement.", v40, 0xCu);
        sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v41, -1, -1);
        MEMORY[0x22AA5EED0](v40, -1, -1);
      }

      (*(v22 + 8))(v36, v23);
    }

    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    sub_224A3311C(&v51, &unk_27D6F4700, &unk_224DB3A10);
    v28 = v49;
    v27 = v50;
    (*(v50 + 16))(v9, v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v49);
    v29 = v20;
    v30 = sub_224DAB228();
    v31 = sub_224DAF288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      v34 = [v29 extensionIdentity];
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&dword_224A2F000, v30, v31, "Error occured when subscribing to pushes for extension %{public}@: Could not find extension in extensionManager.", v32, 0xCu);
      sub_224A3311C(v33, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    return (*(v27 + 8))(v9, v28);
  }
}

uint64_t sub_224C7D04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v43 - v5;
  v6 = sub_224DAA548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v54 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v48 = sub_224DAE738();
  v12 = *(v48 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v48);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  sub_224DAA8F8();
  v52 = sub_224DAA0D8();

  v53 = v16;
  sub_224DAA918();
  v17 = sub_224DAA908();
  v49 = v18;
  v50 = v17;
  v19 = *MEMORY[0x277CFA0A0];
  v20 = *(v7 + 104);
  v51 = v11;
  v46 = v6;
  v20(v11, v19, v6);
  v21 = v58;
  sub_224DAF0F8();
  v22 = sub_224DAF128();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  v23 = v12;
  v24 = v16;
  v25 = v48;
  (*(v12 + 16))(&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v48);
  v26 = v7;
  v44 = v7;
  v27 = v54;
  (*(v7 + 16))(v54, v11, v6);
  v28 = *(v23 + 80);
  v47 = v23;
  v29 = (v28 + 48) & ~v28;
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v26 + 80) + v30 + 16) & ~*(v26 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v33 = v52;
  *(v32 + 4) = v55;
  *(v32 + 5) = v33;
  (*(v23 + 32))(&v32[v29], v45, v25);
  v34 = &v32[v30];
  v35 = v49;
  *v34 = v50;
  v34[1] = v35;
  v36 = v44;
  v37 = v27;
  v38 = v46;
  (*(v44 + 32))(&v32[v31], v37, v46);
  v39 = &v32[(v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8];
  v40 = v57;
  *v39 = v56;
  *(v39 + 1) = v40;

  v41 = v33;

  sub_224D8E744(0, 0, v58, &unk_224DBCF78, v32);

  (*(v36 + 8))(v51, v38);
  return (*(v47 + 8))(v53, v25);
}

uint64_t sub_224C7D470(void **a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v4 = sub_224DAE738();
  v52 = *(v4 - 8);
  v53 = v4;
  v46 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - v9;
  v11 = sub_224DAA548();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v47 = *a1;
  v17 = type metadata accessor for RemoteControlActionRequest();
  v18 = *(v17 + 20);
  v19 = (a1 + *(v17 + 24));
  v21 = *v19;
  v20 = v19[1];
  v50 = v21;
  v48 = v20;
  v22 = *MEMORY[0x277CFA0B0];
  v23 = *(v12 + 104);
  v49 = v16;
  v44 = v11;
  v23(v16, v22, v11);
  v51 = v10;
  sub_224DAF0F8();
  v24 = sub_224DAF128();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  v25 = v52;
  v26 = v53;
  (*(v52 + 16))(v6, a1 + v18, v53);
  v27 = v12;
  v43 = v12;
  (*(v12 + 16))(&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v11);
  v28 = v25;
  v29 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v30 = (v46 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v27 + 80) + v30 + 16) & ~*(v27 + 80);
  v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v34 = v47;
  *(v33 + 4) = v54;
  *(v33 + 5) = v34;
  (*(v28 + 32))(&v33[v29], v6, v26);
  v35 = &v33[v30];
  v36 = v48;
  *v35 = v50;
  *(v35 + 1) = v36;
  v38 = v43;
  v37 = v44;
  (*(v43 + 32))(&v33[v31], v45, v44);
  v39 = &v33[v32];
  v40 = v56;
  *v39 = v55;
  *(v39 + 1) = v40;

  v41 = v34;
  sub_224D8E744(0, 0, v51, &unk_224DBCF70, v33);

  return (*(v38 + 8))(v49, v37);
}

uint64_t sub_224C7D838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v20;
  v8[11] = v21;
  v8[8] = a4;
  v8[9] = a5;
  v13 = sub_224DACB98();
  v8[12] = v13;
  v14 = *(v13 - 8);
  v8[13] = v14;
  v15 = *(v14 + 64) + 15;
  v8[14] = swift_task_alloc();
  v16 = swift_task_alloc();
  v8[15] = v16;
  *v16 = v8;
  v16[1] = sub_224C7D970;

  return sub_224C81244(a5, a6, a7, a8, v19);
}

uint64_t sub_224C7D970()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_224C7DD34;
  }

  else
  {
    v3 = sub_224C7DA84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_224C7DA84()
{
  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364D90);
  v3 = v1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_224A2F000, v4, v5, "[%{public}@]: Action success", v7, 0xCu);
    sub_224A3311C(v8, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v8, -1, -1);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  v10 = v0[10];
  v11 = v0[11];

  v10(0);
  v13 = v0[13];
  v12 = v0[14];
  v25 = v0[12];
  v14 = v0[8];
  v15 = v0[9];
  (*(v13 + 104))(v12, *MEMORY[0x277CF9B68]);
  v16 = [v15 extensionIdentity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v18 = [v15 kind];
  v19 = sub_224DAEE18();
  v21 = v20;

  *(inited + 32) = v19;
  *(inited + 40) = v21;
  v22 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224C84DA4(v16, v22);

  sub_224C809D8(v15, v12);
  (*(v13 + 8))(v12, v25);

  v23 = v0[1];

  return v23();
}

uint64_t sub_224C7DD34()
{
  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[9];
  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_281364D90);
  v4 = v2;
  v5 = v1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[16];
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2114;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_224A2F000, v6, v7, "[%{public}@]: Action failure: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  v15 = v0[16];
  v17 = v0[10];
  v16 = v0[11];

  v18 = v15;
  v17(v15);

  v20 = v0[13];
  v19 = v0[14];
  v32 = v0[12];
  v21 = v0[8];
  v22 = v0[9];
  (*(v20 + 104))(v19, *MEMORY[0x277CF9B68]);
  v23 = [v22 extensionIdentity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v25 = [v22 kind];
  v26 = sub_224DAEE18();
  v28 = v27;

  *(inited + 32) = v26;
  *(inited + 40) = v28;
  v29 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224C84DA4(v23, v29);

  sub_224C809D8(v22, v19);
  (*(v20 + 8))(v19, v32);

  v30 = v0[1];

  return v30();
}

uint64_t sub_224C7E044(void *a1)
{
  v121 = sub_224DACB98();
  v115 = *(v121 - 8);
  v3 = *(v115 + 64);
  MEMORY[0x28223BE20](v121);
  v114 = &v108[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = sub_224DAB258();
  v118 = *(v119 - 8);
  v5 = *(v118 + 64);
  v6 = MEMORY[0x28223BE20](v119);
  v112 = &v108[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v110 = &v108[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v126 = &v108[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v124 = &v108[-v13];
  v129 = sub_224DA9878();
  v125 = *(v129 - 8);
  v14 = *(v125 + 64);
  v15 = MEMORY[0x28223BE20](v129);
  v116 = &v108[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v117 = &v108[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v123 = &v108[-v20];
  MEMORY[0x28223BE20](v19);
  v128 = &v108[-v21];
  v127 = sub_224DABD68();
  v130 = *(v127 - 8);
  v22 = *(v130 + 64);
  MEMORY[0x28223BE20](v127);
  v111 = &v108[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v108[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v122 = &v108[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v108[-v33];
  MEMORY[0x28223BE20](v32);
  v36 = &v108[-v35];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v108[-v39];
  v41 = sub_224DAC2B8();
  v131 = *(v41 - 8);
  v132 = v41;
  v42 = *(v131 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v108[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v45 - 8) + 56))(v40, 1, 1, v45);
  v113 = a1;
  sub_224C86DA4(a1, v40, v44);
  sub_224A3311C(v40, &qword_27D6F56C0, &unk_224DB3580);
  v120 = v1;
  v46 = *(v1 + 152);
  v47 = sub_224DAC168();
  if (v47)
  {
    v48 = sub_224D5D26C(v47);
    v50 = v49;

    if (v48)
    {

      if (!sub_224DABF28() || (v51 = sub_224DAC9E8(), , (v51 & 1) == 0))
      {
        sub_224DAC118();
        v52 = v130;
        v53 = v127;
        (*(v130 + 104))(v34, *MEMORY[0x277CF98B0], v127);
        (*(v52 + 56))(v34, 0, 1, v53);
        v54 = *(v24 + 48);
        sub_224A3796C(v36, v27, &qword_27D6F4C30, &unk_224DBB310);
        sub_224A3796C(v34, &v27[v54], &qword_27D6F4C30, &unk_224DBB310);
        v55 = *(v52 + 48);
        if (v55(v27, 1, v53) == 1)
        {
          sub_224A3311C(v34, &qword_27D6F4C30, &unk_224DBB310);
          sub_224A3311C(v36, &qword_27D6F4C30, &unk_224DBB310);
          if (v55(&v27[v54], 1, v53) == 1)
          {
            sub_224A3311C(v27, &qword_27D6F4C30, &unk_224DBB310);
            goto LABEL_15;
          }

          goto LABEL_12;
        }

        v57 = v122;
        sub_224A3796C(v27, v122, &qword_27D6F4C30, &unk_224DBB310);
        if (v55(&v27[v54], 1, v53) == 1)
        {
          sub_224A3311C(v34, &qword_27D6F4C30, &unk_224DBB310);
          sub_224A3311C(v36, &qword_27D6F4C30, &unk_224DBB310);
          (*(v130 + 8))(v57, v53);
LABEL_12:
          sub_224A3311C(v27, &qword_27D6F4C28, qword_224DBA340);
LABEL_13:
          (*(v131 + 8))(v44, v132);
        }

        v58 = v130;
        v59 = &v27[v54];
        v60 = v111;
        (*(v130 + 32))(v111, v59, v53);
        sub_224C8DD50(&unk_281350E90, MEMORY[0x277CF98C8]);
        v109 = sub_224DAEDD8();
        v61 = *(v58 + 8);
        v61(v60, v53);
        sub_224A3311C(v34, &qword_27D6F4C30, &unk_224DBB310);
        sub_224A3311C(v36, &qword_27D6F4C30, &unk_224DBB310);
        v61(v122, v53);
        sub_224A3311C(v27, &qword_27D6F4C30, &unk_224DBB310);
        if ((v109 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_15:
      v127 = v44;
      v62 = v123;
      sub_224DA9808();
      v63 = v128;
      sub_224DA9768();
      v64 = v125;
      v65 = *(v125 + 8);
      v66 = v129;
      v65(v62, v129);
      v67 = v124;
      v130 = v50;
      sub_224DABED8();
      v68 = *(v64 + 48);
      if (v68(v67, 1, v66) == 1)
      {
        sub_224A3311C(v67, &qword_27D6F32B0, &qword_224DB3EA0);
        v69 = v126;
      }

      else
      {
        v70 = v117;
        (*(v64 + 32))(v117, v67, v66);
        v71 = sub_224DA9798();
        v69 = v126;
        if (v71)
        {
          v72 = v110;
          (*(v118 + 16))(v110, v120 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v119);
          v73 = v113;
          v74 = sub_224DAB228();
          v75 = sub_224DAF2A8();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *v76 = 138543362;
            *(v76 + 4) = v73;
            *v77 = v73;
            v78 = v73;
            _os_log_impl(&dword_224A2F000, v74, v75, "[%{public}@]: Reloading control because it's stale from prior extension failure. Reloading...", v76, 0xCu);
            sub_224A3311C(v77, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v77, -1, -1);
            MEMORY[0x22AA5EED0](v76, -1, -1);
          }

          (*(v118 + 8))(v72, v119);
          v79 = v115;
          v80 = v114;
          (*(v115 + 104))(v114, *MEMORY[0x277CF9BE8], v121);
          v81 = [v73 extensionIdentity];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_224DB3100;
          v83 = [v73 kind];
          v84 = sub_224DAEE18();
          v86 = v85;

          *(inited + 32) = v84;
          *(inited + 40) = v86;
          v87 = sub_224AE8AF4(inited);
          swift_setDeallocating();
          sub_224BCA6B4(inited + 32);
          sub_224C84DA4(v81, v87);

          sub_224C809D8(v73, v80);

          (*(v79 + 8))(v80, v121);
          v88 = &v134;
          goto LABEL_28;
        }

        v65(v70, v66);
      }

      sub_224DABEC8();
      if (v68(v69, 1, v66) == 1)
      {

        v65(v63, v66);
        (*(v131 + 8))(v127, v132);
        return sub_224A3311C(v69, &qword_27D6F32B0, &qword_224DB3EA0);
      }

      v89 = v116;
      (*(v64 + 32))(v116, v69, v66);
      if ((sub_224DA9798() & 1) == 0)
      {

        v65(v89, v66);
        v106 = v63;
        v107 = v66;
        goto LABEL_30;
      }

      (*(v118 + 16))(v112, v120 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v119);
      v90 = v113;
      v91 = sub_224DAB228();
      v92 = sub_224DAF2A8();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = 138543362;
        *(v93 + 4) = v90;
        *v94 = v90;
        v95 = v90;
        _os_log_impl(&dword_224A2F000, v91, v92, "[%{public}@]: Reloading control because it's stale from developer error. Reloading...", v93, 0xCu);
        sub_224A3311C(v94, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v94, -1, -1);
        MEMORY[0x22AA5EED0](v93, -1, -1);
      }

      (*(v118 + 8))(v112, v119);
      v96 = v115;
      v97 = v114;
      (*(v115 + 104))(v114, *MEMORY[0x277CF9BE8], v121);
      v98 = [v90 extensionIdentity];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
      v99 = swift_initStackObject();
      *(v99 + 16) = xmmword_224DB3100;
      v100 = [v90 kind];
      v101 = sub_224DAEE18();
      v103 = v102;

      *(v99 + 32) = v101;
      *(v99 + 40) = v103;
      v104 = sub_224AE8AF4(v99);
      swift_setDeallocating();
      sub_224BCA6B4(v99 + 32);
      sub_224C84DA4(v98, v104);

      sub_224C809D8(v90, v97);

      (*(v96 + 8))(v97, v121);
      v88 = &v133;
LABEL_28:
      v105 = v129;
      v65(*(v88 - 32), v129);
      v106 = v128;
      v107 = v105;
LABEL_30:
      v65(v106, v107);
      return (*(v131 + 8))(v127, v132);
    }
  }

  return (*(v131 + 8))(v44, v132);
}

uint64_t sub_224C7F024(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v50 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v8 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v16);
  v71 = &v50 - v19;
  v68 = sub_224DAC2B8();
  v20 = *(v68 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v68);
  v70 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  sub_224C8422C(a1, 0);
  v54 = v2;
  v23 = *(v2 + 152);
  v24 = sub_224DAC108();
  v25 = *(v24 + 16);
  if (v25)
  {
    v59 = v4;
    v69 = v18;
    v57 = v15;
    v27 = *(v20 + 16);
    v26 = v20 + 16;
    v64 = v27;
    v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v50 = v24;
    v29 = v24 + v28;
    v62 = (v5 + 56);
    v63 = (v5 + 16);
    v61 = *(v26 + 56);
    v30 = (v5 + 48);
    v51 = (v5 + 32);
    v56 = (v5 + 8);
    v65 = v26;
    v60 = (v26 - 8);
    v58 = (v5 + 48);
    v27(v70, v24 + v28, v68);
    while (1)
    {
      v33 = sub_224DAC2A8();
      v34 = v30;
      v35 = [v33 extensionIdentity];

      v36 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v37 = v35 + v36;
      v38 = v71;
      sub_224A3796C(v37, v71, &unk_27D6F5060, &qword_224DB5620);

      v39 = v69;
      v40 = v59;
      (*v63)(v69, v67, v59);
      (*v62)(v39, 0, 1, v40);
      v41 = *(v66 + 48);
      sub_224A3796C(v38, v10, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3796C(v39, &v10[v41], &unk_27D6F5060, &qword_224DB5620);
      v42 = *v34;
      if ((*v34)(v10, 1, v40) == 1)
      {
        break;
      }

      v44 = v57;
      sub_224A3796C(v10, v57, &unk_27D6F5060, &qword_224DB5620);
      if (v42(&v10[v41], 1, v40) == 1)
      {
        sub_224A3311C(v69, &unk_27D6F5060, &qword_224DB5620);
        sub_224A3311C(v71, &unk_27D6F5060, &qword_224DB5620);
        (*v56)(v44, v40);
        v31 = v68;
        v32 = v70;
        v30 = v58;
LABEL_4:
        sub_224A3311C(v10, &qword_27D6F5B90, &qword_224DB5C50);
        goto LABEL_5;
      }

      v45 = &v10[v41];
      v46 = v52;
      (*v51)(v52, v45, v40);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v55 = sub_224DAEDD8();
      v47 = *v56;
      (*v56)(v46, v40);
      sub_224A3311C(v69, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v71, &unk_27D6F5060, &qword_224DB5620);
      v47(v44, v40);
      sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
      v31 = v68;
      v32 = v70;
      v30 = v58;
      if (v55)
      {
        goto LABEL_12;
      }

LABEL_5:
      (*v60)(v32, v31);
      v29 += v61;
      if (!--v25)
      {
      }

      v64(v32, v29, v31);
    }

    sub_224A3311C(v39, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v71, &unk_27D6F5060, &qword_224DB5620);
    v43 = v42(&v10[v41], 1, v40);
    v32 = v70;
    v30 = v34;
    v31 = v68;
    if (v43 != 1)
    {
      goto LABEL_4;
    }

    sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
LABEL_12:
    v48 = sub_224DAC2A8();
    sub_224C809D8(v48, v53);
    v32 = v70;

    v30 = v58;
    goto LABEL_5;
  }
}

uint64_t sub_224C7F6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_224DAC2B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v16 = sub_224AE8AF4(inited);
    v40 = v10;
    v17 = a4;
    v18 = a2;
    v19 = v11;
    v20 = v16;
    swift_setDeallocating();
    sub_224BCA6B4(inited + 32);
    sub_224C8422C(a1, v20);
    v11 = v19;

    v21 = *(v5 + 152);
    v22 = sub_224DAC108();
    MEMORY[0x28223BE20](v22);
    v24 = &v38 - 6;
    *(&v38 - 4) = a1;
    *(&v38 - 3) = v18;
    a4 = v17;
    v10 = v40;
    *(&v38 - 2) = a3;
    v25 = sub_224C8F618;
  }

  else
  {
    sub_224C8422C(a1, 0);

    v26 = *(v4 + 152);
    v27 = sub_224DAC108();
    MEMORY[0x28223BE20](v27);
    v24 = &v38 - 4;
    *(&v38 - 2) = a1;
    v25 = sub_224C8F5F8;
  }

  v28 = sub_224A3BB04(v25, v24, v23);
  v29 = *(v28 + 16);
  if (v29)
  {
    v31 = *(v11 + 16);
    v30 = v11 + 16;
    v32 = *(v30 + 64);
    v38 = v28;
    v33 = v28 + ((v32 + 32) & ~v32);
    v39 = *(v30 + 56);
    v40 = v31;
    v34 = (v30 - 8);
    do
    {
      v40(v14, v33, v10);
      v35 = v30;
      v36 = sub_224DAC2A8();
      (*v34)(v14, v10);
      sub_224C809D8(v36, a4);

      v30 = v35;
      v33 += v39;
      --v29;
    }

    while (v29);
  }
}

uint64_t sub_224C7F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v45 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  v41 = a1;
  v23 = sub_224DAC2A8();
  v24 = [v23 extensionIdentity];

  v25 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v24 + v25, v22, &unk_27D6F5060, &qword_224DB5620);

  (*(v6 + 16))(v20, v44, v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  v26 = *(v10 + 56);
  sub_224A3796C(v22, v13, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v20, &v13[v26], &unk_27D6F5060, &qword_224DB5620);
  v27 = *(v6 + 48);
  if (v27(v13, 1, v5) != 1)
  {
    sub_224A3796C(v13, v45, &unk_27D6F5060, &qword_224DB5620);
    if (v27(&v13[v26], 1, v5) != 1)
    {
      v29 = &v13[v26];
      v30 = v40;
      (*(v6 + 32))(v40, v29, v5);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v31 = v45;
      LODWORD(v44) = sub_224DAEDD8();
      v32 = *(v6 + 8);
      v32(v30, v5);
      sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
      v32(v31, v5);
      sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
      if (v44)
      {
        goto LABEL_9;
      }

LABEL_7:
      v28 = 0;
      return v28 & 1;
    }

    sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
    (*(v6 + 8))(v45, v5);
LABEL_6:
    sub_224A3311C(v13, &qword_27D6F5B90, &qword_224DB5C50);
    goto LABEL_7;
  }

  sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
  if (v27(&v13[v26], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
LABEL_9:
  v33 = sub_224DAC2A8();
  v34 = [v33 kind];

  v35 = sub_224DAEE18();
  v37 = v36;

  if (v35 == v42 && v37 == v43)
  {

    v28 = 1;
  }

  else
  {
    v28 = sub_224DAFD88();
  }

  return v28 & 1;
}

uint64_t sub_224C7FE90(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v34 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = sub_224DAC2A8();
  v21 = [v20 extensionIdentity];

  v22 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v21 + v22, v19, &unk_27D6F5060, &qword_224DB5620);

  (*(v3 + 16))(v17, v33, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v23 = *(v7 + 56);
  sub_224A3796C(v19, v10, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v17, &v10[v23], &unk_27D6F5060, &qword_224DB5620);
  v24 = v3;
  v25 = *(v3 + 48);
  if (v25(v10, 1, v2) != 1)
  {
    sub_224A3796C(v10, v34, &unk_27D6F5060, &qword_224DB5620);
    if (v25(&v10[v23], 1, v2) != 1)
    {
      v27 = v24;
      v28 = &v10[v23];
      v29 = v32;
      (*(v24 + 32))(v32, v28, v2);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v26 = sub_224DAEDD8();
      v30 = *(v27 + 8);
      v30(v29, v2);
      sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
      v30(v34, v2);
      sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
      return v26 & 1;
    }

    sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
    (*(v24 + 8))(v34, v2);
    goto LABEL_6;
  }

  sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
  if (v25(&v10[v23], 1, v2) != 1)
  {
LABEL_6:
    sub_224A3311C(v10, &qword_27D6F5B90, &qword_224DB5C50);
    v26 = 0;
    return v26 & 1;
  }

  sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_224C80344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v7 = sub_224DAC2B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v13 = sub_224AE8AF4(inited);
    swift_setDeallocating();
    sub_224BCA6B4(inited + 32);
  }

  else
  {
    v13 = 0;
  }

  v14 = v40;
  sub_224C84DA4(a1, v13);

  v15 = *(v14 + 152);
  v16 = sub_224DAC108();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v20 = *(v8 + 16);
    v19 = v8 + 16;
    v42 = v20;
    v43 = v18;
    v21 = *(v19 + 64);
    v37 = v16;
    v38 = v7;
    v22 = v16 + ((v21 + 32) & ~v21);
    v41 = *(v19 + 56);
    v44 = v19;
    v23 = (v19 - 8);
    v20(v11, v22, v7);
    while (1)
    {
      v25 = sub_224DAC2A8();
      v26 = [v25 extensionIdentity];

      LOBYTE(v25) = sub_224DAF6A8();
      if (v25)
      {
        v27 = sub_224DAC2A8();
        v24 = v27;
        if (!a3)
        {
          goto LABEL_8;
        }

        v28 = a1;
        v29 = a2;
        v30 = a3;
        v31 = [v27 kind];

        v32 = sub_224DAEE18();
        v34 = v33;

        a3 = v30;
        a2 = v29;
        if (v32 == v29 && v34 == a3)
        {

          a1 = v28;
          v7 = v38;
LABEL_7:
          v24 = sub_224DAC2A8();
LABEL_8:
          sub_224C809D8(v24, v39);

          goto LABEL_9;
        }

        v35 = sub_224DAFD88();

        a1 = v28;
        v7 = v38;
        if (v35)
        {
          goto LABEL_7;
        }
      }

LABEL_9:
      (*v23)(v11, v7);
      v22 += v41;
      if (!--v17)
      {
      }

      v42(v11, v22, v7);
    }
  }
}

uint64_t sub_224C80650(uint64_t a1)
{
  v20[3] = a1;
  v2 = sub_224DAC2B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v1 + 152);
  v7 = sub_224DAC108();
  v8 = *(v7 + 16);
  if (v8)
  {
    v20[2] = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v9 = v11;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v20[0] = v7;
    v13 = v7 + v12;
    v14 = *(v10 + 56);
    v15 = (v10 - 8);
    do
    {
      v16 = v10;
      v9(v6, v13, v2);
      v17 = sub_224DAC2A8();
      v18 = sub_224DAF6A8();

      if (v18)
      {
        sub_224DAC0F8();
      }

      (*v15)(v6, v2);
      v13 += v14;
      --v8;
      v10 = v16;
    }

    while (v8);
  }
}

uint64_t sub_224C80818(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_224DAB8F8();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    type metadata accessor for EmptyKey();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xE000000000000000;
    v13 = *(a1 + 152);
    v15[1] = v12;
    v14 = sub_224DAD288();
    MEMORY[0x28223BE20](v14);
    v15[-4] = a2;
    v15[-3] = v12;
    v15[-2] = a1;
    sub_224DAC128();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C809D8(void *a1, uint64_t a2)
{
  v5 = sub_224DACB08();
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 64);
  MEMORY[0x28223BE20](v5);
  v91 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACB28();
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](v8);
  v88 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACC88();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v84 = (&v72 - v19);
  v78 = sub_224DAC2B8();
  v77 = *(v78 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_224DACB98();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v85 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v72 - v28;
  v30 = sub_224DAB258();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v35;
  v81 = v34;
  v36 = *(v35 + 16);
  v92 = v2;
  v36(v33, v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger);
  v37 = *(v24 + 16);
  v79 = v23;
  v82 = v37;
  v83 = v24 + 16;
  v37(v29, a2, v23);
  v38 = a1;
  v39 = sub_224DAB228();
  v40 = sub_224DAF2A8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v76 = a2;
    v42 = v41;
    v43 = swift_slowAlloc();
    v74 = v43;
    v75 = swift_slowAlloc();
    v96[0] = v75;
    *v42 = 138543618;
    *(v42 + 4) = v38;
    *v43 = v38;
    *(v42 + 12) = 2082;
    sub_224C8DD50(&unk_281350D28, MEMORY[0x277CF9BF8]);
    v73 = v40;
    v44 = v38;
    v45 = v38;
    v72 = v39;
    v46 = v79;
    v47 = sub_224DAFD28();
    v49 = v48;
    (*(v24 + 8))(v29, v46);
    v50 = sub_224A33F74(v47, v49, v96);
    v38 = v44;

    *(v42 + 14) = v50;
    v51 = v72;
    _os_log_impl(&dword_224A2F000, v72, v73, "Reload live control: %{public}@ for reason: %{public}s", v42, 0x16u);
    v52 = v74;
    sub_224A3311C(v74, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v52, -1, -1);
    v53 = v75;
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x22AA5EED0](v53, -1, -1);
    v54 = v42;
    a2 = v76;
    MEMORY[0x22AA5EED0](v54, -1, -1);
  }

  else
  {

    v46 = v79;
    (*(v24 + 8))(v29, v79);
  }

  (*(v80 + 8))(v33, v81);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v56 = v84;
  (*(*(v55 - 8) + 56))(v84, 1, 1, v55);
  sub_224C86DA4(v38, v56, v22);
  sub_224A3311C(v56, &qword_27D6F56C0, &unk_224DB3580);
  v57 = v92;
  v59 = *(v92 + 16);
  v58 = *(v92 + 24);
  swift_getObjectType();
  v60 = *(*(v58 + 16) + 16);
  sub_224DAC468();
  (*(v86 + 104))(v88, *MEMORY[0x277CF9B50], v87);
  (*(v89 + 104))(v91, *MEMORY[0x277CF9B40], v90);
  v82(v85, a2, v46);
  sub_224DACC48();
  v61 = v93;
  sub_224DACC38();
  (*(v94 + 16))(v15, v61, v95);
  v62 = *(v57 + 320);
  result = v62 + 32;
  v64 = -*(v62 + 16);
  v65 = -1;
  while (1)
  {
    if (v64 + v65 == -1)
    {
      v69 = *(v57 + 152);
      sub_224DAC138();
LABEL_10:
      v70 = v95;
      v71 = *(v94 + 8);
      v71(v15, v95);
      v71(v93, v70);
      return (*(v77 + 8))(v22, v78);
    }

    if (++v65 >= *(v62 + 16))
    {
      break;
    }

    v66 = result + 40;
    sub_224A3317C(result, v96);
    v67 = v97;
    v68 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    LOBYTE(v67) = (*(v68 + 8))(v22, v15, v67, v68);
    __swift_destroy_boxed_opaque_existential_1(v96);
    result = v66;
    if ((v67 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C81244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = sub_224DAE6E8();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v11 = sub_224DAC2B8();
  v6[15] = v11;
  v12 = *(v11 - 8);
  v6[16] = v12;
  v13 = *(v12 + 64) + 15;
  v6[17] = swift_task_alloc();
  v14 = sub_224DAE718();
  v6[18] = v14;
  v15 = *(v14 - 8);
  v6[19] = v15;
  v16 = *(v15 + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C813FC, 0, 0);
}

uint64_t sub_224C813FC()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 48);
  sub_224DAE728();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x277CE3C70])
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
LABEL_6:
    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 40);
    v10 = sub_224DAB258();
    __swift_project_value_buffer(v10, qword_281364D90);
    v11 = v9;
    v12 = sub_224DAB228();
    v13 = sub_224DAF2A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 40);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&dword_224A2F000, v12, v13, "[%{public}@]: Performing control action with the intent", v15, 0xCu);
      sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v16, -1, -1);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);
    v64 = *(v0 + 48);
    v21 = *(v0 + 40);

    v22 = swift_task_alloc();
    *(v0 + 168) = v22;
    *(v22 + 16) = v18;
    *(v22 + 24) = v21;
    *(v22 + 32) = v19;
    *(v22 + 40) = v64;
    *(v22 + 56) = v20;
    v23 = *(MEMORY[0x277D85A40] + 4);
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v24[1] = sub_224C81A94;
LABEL_11:

    return MEMORY[0x2822008A0]();
  }

  if (v5 == *MEMORY[0x277CE3C68])
  {
    v6 = [*(v0 + 40) extensionIdentity];
    v7 = &v6[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v8 = *(v7 + 1);

    if (v8)
    {

      goto LABEL_6;
    }

    v26 = *(v0 + 80);
    v27 = v26[24];
    __swift_project_boxed_opaque_existential_1(v26 + 20, v26[23]);
    v28 = *(v27 + 24);
    if (sub_224DADA48() && (v29 = *(v0 + 40), v30 = sub_224DACFB8(), , v30) && (v31 = [v30 controlType], v30, v31 == 1))
    {
      v32 = *(v0 + 136);
      v33 = *(v0 + 112);
      v34 = *(v0 + 80);
      v35 = *(v0 + 40);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
      sub_224C86DA4(v35, v33, v32);
      sub_224A3311C(v33, &qword_27D6F56C0, &unk_224DB3580);
      v37 = *(v34 + 152);
      v38 = sub_224DAC168();
      if (v38)
      {
        v39 = sub_224D5D26C(v38);
        v41 = v40;

        if (v39)
        {
          *(v0 + 192) = v41;

          if (sub_224DABF18())
          {
            sub_224DA9F98();
          }

          v57 = *(v0 + 80);
          v58 = *(v0 + 40);
          sub_224DA9FA8();
          v59 = sub_224DA9F88();
          *(v0 + 200) = v59;
          v60 = swift_task_alloc();
          *(v0 + 208) = v60;
          v60[2] = v57;
          v60[3] = v58;
          v60[4] = v59;
          v61 = *(MEMORY[0x277D85A40] + 4);
          v62 = swift_task_alloc();
          *(v0 + 216) = v62;
          *v62 = v0;
          v62[1] = sub_224C81C3C;
          goto LABEL_11;
        }
      }

      v48 = *(v0 + 128);
      v47 = *(v0 + 136);
      v49 = *(v0 + 120);
      v51 = *(v0 + 96);
      v50 = *(v0 + 104);
      v52 = *(v0 + 88);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      (*(v51 + 104))(v50, *MEMORY[0x277CE3BF8], v52);
      sub_224DAF638();
      swift_willThrow();
      (*(v48 + 8))(v47, v49);
      v53 = *(v0 + 160);
      v54 = *(v0 + 136);
      v56 = *(v0 + 104);
      v55 = *(v0 + 112);

      v46 = *(v0 + 8);
    }

    else
    {
      v42 = *(v0 + 160);
      v43 = *(v0 + 136);
      v45 = *(v0 + 104);
      v44 = *(v0 + 112);

      v46 = *(v0 + 8);
    }

    return v46();
  }

  else
  {
    v25 = *(v0 + 144);

    return sub_224DAFD78();
  }
}

uint64_t sub_224C81A94()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_224C81EE4;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_224C81BB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_224C81BB0()
{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_224C81C3C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_224C81E14;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_224C81D58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_224C81D58()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  (*(v4 + 8))(v3, v5);
  v6 = v0[20];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_224C81E14()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  (*(v5 + 8))(v4, v6);
  v7 = v0[28];
  v8 = v0[20];
  v9 = v0[17];
  v11 = v0[13];
  v10 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_224C81EE4()
{
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_224C81F78(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_1((a2 + 280), *(a2 + 304));
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  v18 = *v15;
  sub_224B92DFC(a3, a4, a5, sub_224C8F56C, v17);
}

uint64_t sub_224C820F4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0E8();
  }
}

uint64_t sub_224C82168(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_224C822C8(a3, a4, sub_224B677B8, v13);
}

uint64_t sub_224C822C8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v136 = a3;
  v137 = a4;
  v132 = a2;
  v6 = sub_224DAE6E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v129 = &v116 - v13;
  v14 = sub_224DA9908();
  v127 = *(v14 - 8);
  v128 = v14;
  v15 = *(v127 + 64);
  MEMORY[0x28223BE20](v14);
  v126 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_224DA9878();
  v124 = *(v125 - 1);
  v17 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ExtensionTask.Identifier(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v138 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v131 = (&v116 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = (&v116 - v29);
  v31 = sub_224DAC2B8();
  v134 = *(v31 - 8);
  v135 = v31;
  v32 = *(v134 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
  sub_224C86DA4(a1, v30, v34);
  sub_224A3311C(v30, &qword_27D6F56C0, &unk_224DB3580);
  v133 = v4;
  v36 = v4[19];
  v37 = sub_224DAC168();
  if (v37 && (v38 = sub_224D5D26C(v37), , v38))
  {

    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v122 = v34;
    v39 = sub_224DAB258();
    __swift_project_value_buffer(v39, qword_281364D90);
    v40 = a1;
    v41 = v132;

    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v141 = v46;
      *v44 = 138543618;
      *(v44 + 4) = v40;
      *v45 = v40;
      *(v44 + 12) = 2082;
      v139 = v41;
      sub_224DA9FA8();
      sub_224C8DD50(&qword_27D6F5BC0, MEMORY[0x277CF9F80]);
      v47 = v40;
      v48 = sub_224DAFD28();
      v50 = sub_224A33F74(v48, v49, &v141);

      *(v44 + 14) = v50;
      _os_log_impl(&dword_224A2F000, v42, v43, "Updating state requested for control: %{public}@ to %{public}s...", v44, 0x16u);
      sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x22AA5EED0](v46, -1, -1);
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    v51 = v40;
    v52 = sub_224C83DFC(v51);
    v53 = v131;
    *v131 = v51;
    v53[1] = v52;
    v54 = v51;
    v121 = v51;
    v55 = v53;
    swift_storeEnumTagMultiPayload();
    v120 = type metadata accessor for ExtensionTask.Identifier;
    sub_224A4152C(v55, v138, type metadata accessor for ExtensionTask.Identifier);
    v56 = [v54 extensionIdentity];
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    v58 = v130;
    (*(*(v57 - 8) + 56))(v130, 1, 1, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
    v59 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
    v60 = *(v59 + 72);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_224DB8BC0;
    v63 = v62 + v61;
    v64 = sub_224DAE8B8();
    v65 = *(v64 - 8);
    v66 = *(v65 + 56);
    v66(v63, 4, 5, v64);
    v66(v63 + v60, 3, 5, v64);
    (*(v65 + 104))(v63 + 2 * v60, *MEMORY[0x277CE3D20], v64);
    v66(v63 + 2 * v60, 0, 5, v64);
    v116 = type metadata accessor for ExtensionTask(0);
    v67 = objc_allocWithZone(v116);
    sub_224DAE908();
    v68 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    *&v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
    v69 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    v117 = sub_224DAC938();
    v70 = *(v117 - 8);
    v71 = *(v70 + 56);
    v118 = v70 + 56;
    v119 = v71;
    v71(&v67[v69], 1, 1, v117);
    v72 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
    *v72 = 0;
    v72[1] = 0;
    v73 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    *v73 = 0;
    v73[1] = 0;
    v74 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
    *v74 = 0;
    v74[1] = 0;
    v75 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    *v75 = 0;
    v75[1] = 0;
    v76 = v123;
    sub_224DA9868();
    (*(v124 + 32))(&v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v76, v125);
    *&v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v56;
    sub_224A4152C(v58, &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
    swift_beginAccess();
    v77 = *&v67[v68];
    *&v67[v68] = v62;
    v125 = v56;

    v78 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
    *v78 = 1;
    v78[8] = 0;
    sub_224A4152C(v138, &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v120);
    v79 = v126;
    sub_224DA98F8();
    v81 = v127;
    v80 = v128;
    (*(v127 + 16))(&v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v79, v128);
    v139 = sub_224DA98E8();
    sub_224A3F6A4();
    sub_224DAEF18();
    v82 = sub_224A3D19C(8);
    v84 = v83;
    v86 = v85;
    v88 = v87;

    v89 = MEMORY[0x22AA5D1C0](v82, v84, v86, v88);
    v91 = v90;

    v92 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    *v92 = v89;
    v92[1] = v91;
    v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
    v140.receiver = v67;
    v140.super_class = v116;
    v93 = objc_msgSendSuper2(&v140, sel_init);

    (*(v81 + 8))(v79, v80);
    sub_224A3D358(v130, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    sub_224A3D358(v138, type metadata accessor for ExtensionTask.Identifier);
    v94 = v129;
    v95 = v117;
    (*(v70 + 104))(v129, *MEMORY[0x277CF9AE8], v117);
    v119(v94, 0, 1, v95);
    v96 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    swift_beginAccess();
    sub_224A838C0(v94, &v93[v96], &qword_27D6F4030, &unk_224DB5630);
    swift_endAccess();
    v97 = swift_allocObject();
    v98 = v121;
    v99 = v132;
    *(v97 + 16) = v121;
    *(v97 + 24) = v99;
    v100 = &v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    v101 = *&v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    v102 = *&v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
    *v100 = sub_224C900CC;
    *(v100 + 1) = v97;
    v103 = v98;

    sub_224A3D418(v101);
    v104 = swift_allocObject();
    v105 = v136;
    v106 = v137;
    v104[2] = v103;
    v104[3] = v105;
    v107 = v133;
    v104[4] = v106;
    v104[5] = v107;
    v108 = &v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    v109 = *&v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    v110 = *&v93[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
    *v108 = sub_224C90094;
    *(v108 + 1) = v104;
    v111 = v103;

    sub_224A3D418(v109);
    v112 = v107[51];
    v113 = v107[52];
    __swift_project_boxed_opaque_existential_1(v107 + 48, v112);
    (*(v113 + 16))(v93, v112, v113);

    sub_224A3D358(v131, type metadata accessor for ExtensionTask.Identifier);
    v34 = v122;
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v7 + 104))(v10, *MEMORY[0x277CE3BF8], v6);
    v114 = sub_224DAF638();
    v136();
  }

  return (*(v134 + 8))(v34, v135);
}

void sub_224C830C8(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v8 = sub_224DAE6E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v13 = v27;
      sub_224DAEB88();
      v14 = a4;

      v15 = sub_224DAEB78();
      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a3;
      v25 = sub_224B9D69C;
      v26 = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224BC6D2C;
      v24 = &block_descriptor_36;
      v17 = _Block_copy(aBlock);

      [v13 setControlState:v15 completion:v17];
      _Block_release(v17);
      swift_unknownObjectRelease();
      goto LABEL_10;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
  }

  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_281364D90);
  v19 = sub_224DAB228();
  v20 = sub_224DAF288();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_224A2F000, v19, v20, "Unable to update state in extension: No extension session", v21, 2u);
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v9 + 104))(v12, *MEMORY[0x277CE3C40], v8);
  v15 = sub_224DAF638();
  a2();
LABEL_10:
}

uint64_t sub_224C83424(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v69 = a7;
  v11 = sub_224DACB98();
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v11);
  v66 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BC8, &qword_224DBCED8);
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  MEMORY[0x28223BE20](v14);
  v60 = v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BD0, &qword_224DBCEE0);
  v18 = *(v17 - 8);
  v64 = v17;
  v65 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v61 = v59 - v20;
  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281364D90);
  v22 = a4;
  v23 = a3;
  v24 = sub_224DAB228();
  v25 = sub_224DAF2A8();

  if (os_log_type_enabled(v24, v25))
  {
    v59[1] = a6;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v71[0] = v27;
    *v26 = 136446466;
    v28 = [v22 _loggingIdentifier];
    v29 = sub_224DAEE18();
    v31 = v30;

    v32 = sub_224A33F74(v29, v31, v71);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    if (a3)
    {
      swift_getErrorValue();
      v33 = sub_224D1680C(v70);
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_224A33F74(v33, v35, v71);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_224A2F000, v24, v25, "[%{public}s] Set state action completed (error=%{public}s); now reloading control for data consistency...", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v27, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  else
  {
  }

  a5(a3);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = *(v69 + 152);
  v71[0] = sub_224DAC058();
  *(swift_allocObject() + 16) = v22;
  v39 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5550, &qword_224DBBBD8);
  sub_224A33088(&unk_2813510C0, &qword_27D6F5550, &qword_224DBBBD8);
  v40 = v60;
  sub_224DAB438();

  sub_224A33088(&qword_27D6F5BD8, &qword_27D6F5BC8, &qword_224DBCED8);
  v41 = v61;
  v42 = v63;
  sub_224DAB418();
  (*(v62 + 8))(v40, v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v39;
  *(v43 + 24) = v37;
  sub_224A33088(&qword_27D6F5BE0, &qword_27D6F5BD0, &qword_224DBCEE0);
  v44 = v39;

  v45 = v64;
  v46 = sub_224DAB488();

  (*(v65 + 8))(v41, v45);
  swift_beginAccess();
  v47 = *(v37 + 16);
  *(v37 + 16) = v46;

  v48 = v66;
  v49 = v67;
  v50 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x277CF9B68], v68);
  v51 = [v44 extensionIdentity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v53 = [v44 kind];
  v54 = sub_224DAEE18();
  v56 = v55;

  *(inited + 32) = v54;
  *(inited + 40) = v56;
  v57 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224C84DA4(v51, v57);

  sub_224C809D8(v44, v48);
  (*(v49 + 8))(v48, v50);
}

uint64_t sub_224C83B14()
{
  v0 = sub_224DAC2B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5240, &qword_224DBB330);
  MEMORY[0x22AA5BB00](v5);
  v6 = sub_224DAC2A8();
  (*(v1 + 8))(v4, v0);
  v7 = sub_224DAF6A8();

  return v7 & 1;
}

uint64_t sub_224C83C44(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_281364D90);
  v6 = a2;
  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v11 = [v6 _loggingIdentifier];
    v12 = sub_224DAEE18();
    v14 = v13;

    v15 = sub_224A33F74(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_224A2F000, v7, v8, "[%{public}s] Follow-on reload completed.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x22AA5EED0](v10, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  result = swift_beginAccess();
  if (*(a3 + 16))
  {
    v17 = *(a3 + 16);

    sub_224DAB328();
  }

  return result;
}

uint64_t sub_224C83DFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v36 = 0;
  v12 = [a1 extensionIdentity];
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v12 + v13, v6, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_224A3311C(v6, &unk_27D6F5060, &qword_224DB5620);
    return 0;
  }

  (*(v8 + 32))(v11, v6, v7);
  v15 = v1[28];
  v16 = v1[29];
  __swift_project_boxed_opaque_existential_1(v1 + 25, v15);
  v17 = (*(v16 + 24))(768, v15, v16);
  if (!v17)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v18 = sub_224A7B208(v17);
  MEMORY[0x28223BE20](v18);
  *(&v31 - 2) = v11;
  v20 = sub_224A4ECE8(sub_224C8F404, (&v31 - 4), v19);

  if (v20 >> 62)
  {
    v21 = sub_224DAF838();
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_21:

    v30 = 0;
    goto LABEL_22;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_21;
  }

LABEL_6:
  v32 = v11;
  v33 = v8;
  v34 = v7;
  result = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  if (v21 < 1)
  {
    __break(1u);
    return result;
  }

  v22 = 0;
  v23 = v20 & 0xC000000000000001;
  v35 = v20 & 0xC000000000000001;
  do
  {
    if (v23)
    {
      v24 = MEMORY[0x22AA5DCC0](v22, v20);
    }

    else
    {
      v24 = *(v20 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = [v24 controlIdentity];
    v27 = sub_224DAF6A8();

    if (v27)
    {
      v28 = v36;
      if (!v36)
      {
        v28 = MEMORY[0x277D84F90];
      }

      v36 = v28;
      v29 = v25;
      MEMORY[0x22AA5D350]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();
      v23 = v35;
    }

    ++v22;
  }

  while (v21 != v22);

  v30 = v36;
  v8 = v33;
  v7 = v34;
  v11 = v32;
LABEL_22:
  (*(v8 + 8))(v11, v7);
  return v30;
}

uint64_t sub_224C8422C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v69 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v69);
  v68 = &v56 - v8;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = (&v56 - v15);
  v17 = *(v2 + 184);
  v16 = *(v2 + 192);
  __swift_project_boxed_opaque_existential_1((v3 + 160), v17);
  v18 = *(v16 + 24);
  result = sub_224DADA48();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    *(&v56 - 2) = a1;
    v20 = sub_224DACF48();

    if (a2)
    {
      if (v20)
      {
        sub_224DA9868();
        v21 = sub_224DACF18();
        v14 = v21;
        v59 = v9;
        v58 = v10;
        v57 = v20;
        if (v21 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
        {
          v23 = 0;
          v61 = (v3 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService);
          v3 = v14 & 0xC000000000000001;
          v62 = v14 + 32;
          v63 = v14 & 0xFFFFFFFFFFFFFF8;
          v24 = a2 + 56;
          v60 = v6 + 1;
          v70 = i;
          while (1)
          {
            if (v3)
            {
              v25 = MEMORY[0x22AA5DCC0](v23, v14);
            }

            else
            {
              if (v23 >= *(v63 + 16))
              {
                goto LABEL_46;
              }

              v25 = *(v62 + 8 * v23);
            }

            v6 = v25;
            if (__OFADD__(v23++, 1))
            {
              break;
            }

            v27 = [v25 kind];
            v28 = sub_224DAEE18();
            v30 = v29;

            if (*(a2 + 16))
            {
              v31 = *(a2 + 40);
              sub_224DAFE68();
              sub_224DAEE78();
              v32 = sub_224DAFEA8();
              v33 = -1 << *(a2 + 32);
              v34 = v32 & ~v33;
              if ((*(v24 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
              {
                v35 = ~v33;
                while (1)
                {
                  v36 = (*(a2 + 48) + 16 * v34);
                  v37 = *v36 == v28 && v36[1] == v30;
                  if (v37 || (sub_224DAFD88() & 1) != 0)
                  {
                    break;
                  }

                  v34 = (v34 + 1) & v35;
                  if (((*(v24 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                  {
                    goto LABEL_23;
                  }
                }

                v38 = v61[4];
                v65 = v61[3];
                v66 = v38;
                v64 = __swift_project_boxed_opaque_existential_1(v61, v65);
                v39 = [v6 extensionIdentity];
                v40 = v68;
                sub_224DAF528();

                v41 = [v6 kind];
                sub_224DAEE18();

                sub_224DAD1B8();

                (*v60)(v40, v69);
                i = v70;
              }

              else
              {
LABEL_23:

                i = v70;
              }
            }

            else
            {
            }

            if (v23 == i)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }

LABEL_48:

        return (*(v58 + 8))(v67, v59);
      }
    }

    else if (v20)
    {

      v42 = sub_224DACF58();
      v57 = v20;

      sub_224DA9868();
      v59 = v9;
      v58 = v10;
      v66 = v3;
      v70 = v14;
      if ((v42 & 0xC000000000000001) != 0)
      {
        sub_224DAF7E8();
        sub_224DAF538();
        sub_224C8DD50(&unk_2813509A0, MEMORY[0x277CFA140]);
        sub_224DAF1F8();
        v44 = v71;
        v43 = v72;
        v45 = v73;
        v46 = v74;
        v47 = v75;
      }

      else
      {
        v46 = 0;
        v48 = -1 << *(v42 + 32);
        v43 = v42 + 56;
        v45 = ~v48;
        v49 = -v48;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        else
        {
          v50 = -1;
        }

        v47 = v50 & *(v42 + 56);
        v44 = v42;
      }

      v64 = v45;
      v65 = (v45 + 64) >> 6;
      v67 = (v6 + 1);
      if (v44 < 0)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v51 = v46;
        v52 = v47;
        v53 = v46;
        if (!v47)
        {
          break;
        }

LABEL_37:
        v14 = (v52 - 1) & v52;
        v6 = *(*(v44 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v52)))));
        if (!v6)
        {
          goto LABEL_43;
        }

        while (1)
        {
          a2 = v44;
          v55 = *(v66 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService + 32);
          __swift_project_boxed_opaque_existential_1((v66 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService), *(v66 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService + 24));
          v3 = v68;
          sub_224DAF528();
          v44 = a2;
          sub_224DAD1B8();

          (*v67)(v3, v69);
          v46 = v53;
          v47 = v14;
          if ((a2 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_39:
          v54 = sub_224DAF878();
          if (v54)
          {
            v76 = v54;
            sub_224DAF538();
            swift_dynamicCast();
            v6 = v77;
            v53 = v46;
            v14 = v47;
            if (v77)
            {
              continue;
            }
          }

          goto LABEL_43;
        }
      }

      while (1)
      {
        v53 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_45;
        }

        if (v53 >= v65)
        {
          break;
        }

        v52 = *(v43 + 8 * v53);
        ++v51;
        if (v52)
        {
          goto LABEL_37;
        }
      }

LABEL_43:
      (*(v58 + 8))(v70, v59);

      return sub_224A3B7E4();
    }
  }

  return result;
}

uint64_t sub_224C84990(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v27 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v18 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  (*(v4 + 16))(v17, v28, v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(v8 + 56);
  sub_224A3796C(a1 + v18, v11, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v17, &v11[v19], &unk_27D6F5060, &qword_224DB5620);
  v20 = *(v4 + 48);
  if (v20(v11, 1, v3) != 1)
  {
    v22 = v27;
    sub_224A3796C(v11, v27, &unk_27D6F5060, &qword_224DB5620);
    if (v20(&v11[v19], 1, v3) != 1)
    {
      v23 = v26;
      (*(v4 + 32))(v26, &v11[v19], v3);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v21 = sub_224DAEDD8();
      v24 = *(v4 + 8);
      v24(v23, v3);
      sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
      v24(v22, v3);
      sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
      return v21 & 1;
    }

    sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
    (*(v4 + 8))(v22, v3);
    goto LABEL_6;
  }

  sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
  if (v20(&v11[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_224A3311C(v11, &qword_27D6F5B90, &qword_224DB5C50);
    v21 = 0;
    return v21 & 1;
  }

  sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_224C84DA4(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v43 - v15;
  if (a2)
  {
    v50 = v8;
    v16 = *(v2 + 24);
    v17 = v2;
    __swift_project_boxed_opaque_existential_1(v2 + 20, *(v2 + 23));
    v18 = *(v16 + 24);
    result = sub_224DADA48();
    if (result)
    {
      v20 = sub_224DACF78();

      if (*(v20 + 16) && (v21 = sub_224A3E7EC(v54), (v22 & 1) != 0))
      {
        v43 = v10;
        v44 = v9;
        v23 = *(*(v20 + 56) + 8 * v21);

        sub_224DA9868();
        if (v23 >> 62)
        {
          goto LABEL_32;
        }

        for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
        {
          v25 = 0;
          v46 = &v17[OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService];
          v47 = v4;
          v55 = i;
          v56 = v23 & 0xC000000000000001;
          v48 = v23 + 32;
          v49 = v23 & 0xFFFFFFFFFFFFFF8;
          v26 = a2 + 56;
          v45 = (v5 + 8);
          while (1)
          {
            if (v56)
            {
              v27 = MEMORY[0x22AA5DCC0](v25, v23);
            }

            else
            {
              if (v25 >= *(v49 + 16))
              {
                goto LABEL_31;
              }

              v27 = *(v48 + 8 * v25);
            }

            v17 = v27;
            if (__OFADD__(v25++, 1))
            {
              break;
            }

            v29 = [v27 kind];
            v30 = sub_224DAEE18();
            v32 = v31;

            if (*(a2 + 16) && (v33 = *(a2 + 40), sub_224DAFE68(), sub_224DAEE78(), v34 = sub_224DAFEA8(), v35 = -1 << *(a2 + 32), v36 = v34 & ~v35, ((*(v26 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
            {
              v5 = ~v35;
              while (1)
              {
                v37 = (*(a2 + 48) + 16 * v36);
                v38 = *v37 == v30 && v37[1] == v32;
                if (v38 || (sub_224DAFD88() & 1) != 0)
                {
                  break;
                }

                v36 = (v36 + 1) & v5;
                if (((*(v26 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
                {
                  goto LABEL_8;
                }
              }

              v39 = *(v46 + 3);
              v52 = *(v46 + 4);
              v51 = __swift_project_boxed_opaque_existential_1(v46, v39);
              v40 = v50;
              sub_224DAF528();
              v41 = [v17 kind];
              sub_224DAEE18();
              v4 = v23;

              v5 = v47;
              sub_224DAD1B8();

              (*v45)(v40, v5);
            }

            else
            {
LABEL_8:
            }

            if (v25 == v55)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          ;
        }

LABEL_33:

        return (*(v43 + 8))(v53, v44);
      }

      else
      {
      }
    }
  }

  else
  {
    v42 = *&v2[OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService + 32];
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService], *&v2[OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService + 24]);
    sub_224DA9868();
    sub_224DAF528();
    sub_224DAD1B8();
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_224C852BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_224DAB728();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v11 = *(v1 + 152);
  v12 = sub_224DAC168();
  if (v12 && (v13 = sub_224D5D26C(v12), v15 = v14, , v13))
  {

    sub_224DABEB8();
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_224DAD168();
    __swift_destroy_boxed_opaque_existential_1(v30);
    (*(v4 + 16))(v8, v10, v3);
    sub_224DAE4D8();
    swift_getKeyPath();
    sub_224DAB518();
    sub_224DAE4B8();
    KeyPath = swift_getKeyPath();
    v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
    v16 = *(sub_224DAB558() - 8);
    v28 = v3;
    v17 = *(v16 + 72);
    v27 = v4;
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_224DB30F0;
    v26 = v10;
    v30[0] = MEMORY[0x277D84F90];
    sub_224C8DD50(&qword_281350ED8, MEMORY[0x277CDFB98]);
    v25[2] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
    v25[0] = a1;
    sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500);
    sub_224DAF788();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_224DB3100;
    sub_224DAB548();
    v30[0] = v19;
    sub_224DAF788();
    v20 = v25[0];
    sub_224DAE4B8();

    (*(v27 + 8))(v26, v28);
    v21 = sub_224DAE4F8();
    return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    v23 = sub_224DAE4F8();
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, 1, 1, v23);
  }
}

uint64_t sub_224C856E8(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = sub_224DACB98();
  v90 = *(v92 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DACB08();
  v87 = *(v88 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_224DACB28();
  v84 = *(v85 - 8);
  v10 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v86 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_224DACC88();
  v93 = *(v94 - 8);
  v12 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v109 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAC2B8();
  v112 = *(v115 - 8);
  v14 = *(v112 + 64);
  v15 = MEMORY[0x28223BE20](v115);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v83 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v101 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v102 = (&v83 - v23);
  v24 = sub_224DAB258();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v32 = &v83 - v30;
  v100 = a3;
  v107 = a1;
  v108 = v29;
  v110 = v20;
  v114 = v28;
  v95 = v31;
  if (a2)
  {
    v83 = v17;

    v34 = sub_224A3DADC(v33);

    v35 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_224DAD3C8();
    v37 = *(result + 16);
    v113 = v34;
    v106 = v37;
    if (v37)
    {
      v38 = 0;
      v103 = (v34 & 0xC000000000000001);
      v104 = (v112 + 16);
      if (v34 < 0)
      {
        v39 = v34;
      }

      else
      {
        v39 = v34 & 0xFFFFFFFFFFFFFF8;
      }

      v111 = v34 + 56;
      v97 = v39;
      *&v98 = v112 + 32;
      v96 = (v112 + 8);
      v99 = MEMORY[0x277D84F90];
      v28 = v114;
      v40 = v115;
      v41 = v102;
      v105 = result;
      while (1)
      {
        if (v38 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v42 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v43 = *(v112 + 72);
        (*(v112 + 16))(v41, result + v42 + v43 * v38, v40);
        v44 = sub_224DAC2A8();
        v45 = [v44 extensionIdentity];

        if (v103)
        {
          v46 = v45;
          v47 = sub_224DAF888();

          if (v47)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v53 = v113;
          if (*(v113 + 16))
          {
            sub_224DAF538();
            v54 = *(v53 + 40);
            v55 = sub_224DAF698();
            v56 = -1 << *(v53 + 32);
            v57 = v55 & ~v56;
            if ((*(v111 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
            {
              v58 = ~v56;
              while (1)
              {
                v59 = *(*(v53 + 48) + 8 * v57);
                v60 = sub_224DAF6A8();

                if (v60)
                {
                  break;
                }

                v57 = (v57 + 1) & v58;
                v53 = v113;
                if (((*(v111 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              a3 = v100;
              v20 = v110;
              v41 = v102;
LABEL_13:
              v48 = *v98;
              (*v98)(v101, v41, v115);
              v49 = v99;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v116 = v49;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_224ADA520(0, *(v49 + 16) + 1, 1);
                v49 = v116;
              }

              v52 = *(v49 + 16);
              v51 = *(v49 + 24);
              if (v52 >= v51 >> 1)
              {
                sub_224ADA520(v51 > 1, v52 + 1, 1);
                v49 = v116;
              }

              *(v49 + 16) = v52 + 1;
              v99 = v49;
              v40 = v115;
              v48(v49 + v42 + v52 * v43, v101, v115);
              v28 = v114;
              v41 = v102;
              goto LABEL_9;
            }
          }

LABEL_7:

          a3 = v100;
          v20 = v110;
          v28 = v114;
          v41 = v102;
        }

        v40 = v115;
        (*v96)(v41, v115);
LABEL_9:
        ++v38;
        result = v105;
        if (v38 == v106)
        {
          goto LABEL_29;
        }
      }
    }

    v99 = MEMORY[0x277D84F90];
    v28 = v114;
    v40 = v115;
LABEL_29:

    v17 = v83;
    v66 = v99;
  }

  else
  {
    (*(v31 + 16))(&v83 - v30, a3 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger);
    v61 = sub_224DAB228();
    v62 = sub_224DAF2A8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_224A2F000, v61, v62, "Locale change detected - reloading all controls", v63, 2u);
      v64 = v63;
      v28 = v114;
      MEMORY[0x22AA5EED0](v64, -1, -1);
    }

    (*(v95 + 8))(v32, v108);
    v65 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v66 = sub_224DAD3C8();
    v40 = v115;
  }

  (*(v84 + 104))(v86, *MEMORY[0x277CF9B50], v85);
  (*(v87 + 104))(v89, *MEMORY[0x277CF9B40], v88);
  (*(v90 + 104))(v91, *MEMORY[0x277CF9BA8], v92);
  sub_224DACC48();
  sub_224DACC38();
  v68 = *(v66 + 16);
  if (v68)
  {
    v111 = OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger;
    v106 = *(v112 + 16);
    v69 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v99 = v66;
    v70 = v66 + v69;
    v105 = *(v112 + 72);
    v104 = (v95 + 16);
    v112 += 16;
    v102 = (v95 + 8);
    *&v67 = 138543362;
    v98 = v67;
    v103 = (v112 - 8);
    v101 = ((v112 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v71 = v108;
    do
    {
      v113 = v68;
      v74 = v106;
      v106(v20, v70, v40);
      (*v104)(v28, a3 + v111, v71);
      v74(v17, v20, v40);
      v75 = sub_224DAB228();
      v76 = v17;
      v77 = sub_224DAF2A8();
      if (os_log_type_enabled(v75, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = v98;
        v80 = sub_224DAC2A8();
        v81 = [v80 extensionIdentity];

        v72 = *v103;
        (*v103)(v76, v115);
        *(v78 + 4) = v81;
        *v79 = v81;
        a3 = v100;
        _os_log_impl(&dword_224A2F000, v75, v77, "Locale change detected - reloading controls for %{public}@", v78, 0xCu);
        sub_224A3311C(v79, &unk_27D6F69F0, &unk_224DB3900);
        v82 = v79;
        v28 = v114;
        MEMORY[0x22AA5EED0](v82, -1, -1);
        MEMORY[0x22AA5EED0](v78, -1, -1);
      }

      else
      {

        v72 = *v103;
        (*v103)(v76, v40);
      }

      v17 = v76;
      v71 = v108;
      (*v102)(v28, v108);
      v73 = v107[4];
      __swift_project_boxed_opaque_existential_1(v107, v107[3]);
      v20 = v110;
      v28 = v114;
      sub_224DAD3E8();
      v40 = v115;
      v72(v20, v115);
      v70 += v105;
      v68 = v113 - 1;
    }

    while (v113 != 1);
  }

  return (*(v93 + 8))(v109, v94);
}

uint64_t sub_224C86260(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v100 = a4;
  v98 = sub_224DACB98();
  v96 = *(v98 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DACB08();
  v94 = *(v88 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v88);
  v95 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_224DACB28();
  v91 = *(v92 - 8);
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v93 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_224DACC88();
  v99 = *(v89 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v89);
  v109 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v90 = &v79 - v17;
  v18 = sub_224DAE918();
  v107 = *(v18 - 8);
  v108 = v18;
  v19 = *(v107 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v79 - v23;
  v106 = sub_224DAC2B8();
  v102 = *(v106 - 8);
  v25 = *(v102 + 64);
  v26 = MEMORY[0x28223BE20](v106);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v101 = &v79 - v29;
  v30 = sub_224DAB258();
  v104 = *(v30 - 1);
  v105 = v30;
  v31 = *(v104 + 64);
  MEMORY[0x28223BE20](v30);
  v103 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v113[0] = a3;
  sub_224DAD3D8();
  if (!v113[7])
  {
    v83 = v28;
    v84 = v22;
    v87 = v24;
    v85 = a1;
    v34 = v100;
    (*(v104 + 16))(v103, v100 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v105);
    v35 = *(v102 + 16);
    v36 = v106;
    v82 = v102 + 16;
    v81 = v35;
    v35(v101, a2, v106);

    v37 = sub_224DAB228();
    v38 = sub_224DAF2A8();

    v39 = os_log_type_enabled(v37, v38);
    v80 = a3;
    v86 = a2;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v113[0] = v41;
      *v40 = 136446466;
      sub_224C8DD50(&unk_281350E08, MEMORY[0x277CF99B8]);
      v42 = v101;
      v43 = v38;
      v44 = sub_224DAFD28();
      v45 = a3;
      v47 = v46;
      (*(v102 + 8))(v42, v36);
      v48 = sub_224A33F74(v44, v47, v113);

      *(v40 + 4) = v48;
      *(v40 + 12) = 2082;
      v50 = *(v45 + 16);
      v49 = *(v45 + 24);

      v51 = sub_224A33F74(v50, v49, v113);

      *(v40 + 14) = v51;
      _os_log_impl(&dword_224A2F000, v37, v43, "%{public}s:%{public}s Creating live control entry", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v41, -1, -1);
      v52 = v40;
      v34 = v100;
      MEMORY[0x22AA5EED0](v52, -1, -1);
    }

    else
    {

      (*(v102 + 8))(v101, v36);
    }

    (*(v104 + 8))(v103, v105);
    v53 = v88;
    v54 = v90;
    v55 = sub_224DAC2A8();
    v56 = [v55 extensionIdentity];

    sub_224A3317C((v34 + 41), v113);
    __swift_project_boxed_opaque_existential_1(v113, v113[3]);
    v105 = v56;
    v57 = v110;
    sub_224DADBE8();
    v110 = v57;
    v58 = v85;
    v59 = v95;
    if (v57)
    {

      __swift_destroy_boxed_opaque_existential_1(v113);
      v61 = v107;
      v60 = v108;
      (*(v107 + 56))(v54, 1, 1, v108);
      v110 = 0;
      v62 = v87;
      v63 = v96;
    }

    else
    {
      v61 = v107;
      v60 = v108;
      (*(v107 + 56))(v54, 0, 1, v108);
      __swift_destroy_boxed_opaque_existential_1(v113);
      v64 = (*(v61 + 48))(v54, 1, v60);
      v63 = v96;
      if (v64 != 1)
      {
        (*(v61 + 32))(v87, v54, v60);
LABEL_12:
        v65 = v98;
        v66 = v97;
        (*(v91 + 104))(v93, *MEMORY[0x277CF9B50], v92);
        (*(v94 + 104))(v59, *MEMORY[0x277CF9B40], v53);
        (*(v63 + 104))(v66, *MEMORY[0x277CF9BF0], v65);
        sub_224DACC48();
        sub_224DACC38();
        v67 = v34[13];
        __swift_project_boxed_opaque_existential_1(v34 + 9, v34[12]);
        v68 = v86;
        v69 = sub_224DAC2A8();
        v70 = [v69 extensionIdentity];

        sub_224DADA58();
        sub_224DABF48();
        v81(v83, v68, v106);
        sub_224A3317C(v113, &v112);
        v72 = v107;
        v71 = v108;
        v73 = v87;
        (*(v107 + 16))(v84, v87, v108);
        v74 = sub_224DABEF8();
        v75 = v58[4];
        __swift_project_boxed_opaque_existential_1(v58, v58[3]);
        v111 = v74;
        v112 = v80;
        sub_224DAD3B8();
        v76 = v58[4];
        __swift_project_boxed_opaque_existential_1(v58, v58[3]);
        v77 = v109;
        sub_224DAD3E8();

        __swift_destroy_boxed_opaque_existential_1(v113);
        (*(v99 + 8))(v77, v89);
        (*(v72 + 8))(v73, v71);
      }

      v62 = v87;
    }

    (*(v61 + 104))(v62, *MEMORY[0x277CE3D50], v60);
    if ((*(v61 + 48))(v54, 1, v60) != 1)
    {
      sub_224A3311C(v54, &qword_27D6F46D8, &unk_224DB7630);
    }

    goto LABEL_12;
  }
}

uint64_t sub_224C86DA4@<X0>(void *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = *(v4 + 56);
  v18(&v22 - v16, 1, 1, v3);
  sub_224A3796C(v23, v15, &qword_27D6F56C0, &unk_224DB3580);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_224A3311C(v15, &qword_27D6F56C0, &unk_224DB3580);
  }

  else
  {
    v23 = *(v4 + 32);
    v23(v7, v15, v3);
    sub_224DAA1F8();
    v19 = sub_224DAA048();

    if (v19)
    {
      sub_224A3311C(v17, &qword_27D6F56C0, &unk_224DB3580);
      v23(v17, v7, v3);
      v18(v17, 0, 1, v3);
    }

    else
    {
      (*(v4 + 8))(v7, v3);
    }
  }

  sub_224A3796C(v17, v12, &qword_27D6F56C0, &unk_224DB3580);
  v20 = v24;
  sub_224DAC298();
  return sub_224A3311C(v17, &qword_27D6F56C0, &unk_224DB3580);
}

uint64_t sub_224C8707C(uint64_t a1)
{
  v63 = sub_224DAC2B8();
  v58 = *(v63 - 8);
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v63);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DACB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v54 - v20;
  if ((*(a1 + 8) & 1) == 0)
  {
    v57 = *a1;
    v22 = [v57 extensionIdentity];
    v23 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    sub_224A3796C(v22 + v23, v15, &unk_27D6F5060, &qword_224DB5620);

    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_224A3311C(v15, &unk_27D6F5060, &qword_224DB5620);
      v24 = v57;
      v25 = [v57 extensionIdentity];
      v26 = [v24 kind];
      v27 = sub_224DAEE18();
      v29 = v28;

      v30 = *MEMORY[0x277CF9BE0];
      v55 = v6;
      v56 = v5;
      (*(v6 + 104))(v61, v30, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_224DB3100;
      v59 = v27;
      *(inited + 32) = v27;
      *(inited + 40) = v29;

      v32 = sub_224AE8AF4(inited);
      swift_setDeallocating();
      sub_224BCA6B4(inited + 32);
      v65 = v25;
      v33 = v62;
      sub_224C84DA4(v25, v32);

      v34 = *(v33 + 152);
      v35 = sub_224DAC108();
      v36 = *(v35 + 16);
      if (v36)
      {
        v60 = v29;
        v64 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
        v37 = v58 + 16;
        v38 = *(v58 + 16);
        v39 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v58 = v35;
        v40 = v35 + v39;
        v41 = *(v37 + 56);
        v42 = (v37 - 8);
        v43 = v63;
        v38(v4, v35 + v39, v63);
        while (1)
        {
          v45 = sub_224DAC2A8();
          v46 = [v45 extensionIdentity];

          LOBYTE(v45) = sub_224DAF6A8();
          if (v45)
          {
            v47 = sub_224DAC2A8();
            v48 = [v47 kind];

            v49 = sub_224DAEE18();
            v51 = v50;

            if (v49 == v59 && v51 == v60)
            {

              v43 = v63;
LABEL_6:
              v44 = sub_224DAC2A8();
              sub_224C809D8(v44, v61);

              goto LABEL_7;
            }

            v53 = sub_224DAFD88();

            v43 = v63;
            if (v53)
            {
              goto LABEL_6;
            }
          }

LABEL_7:
          (*v42)(v4, v43);
          v40 += v41;
          if (!--v36)
          {

            v24 = v57;
            goto LABEL_19;
          }

          v38(v4, v40, v43);
        }
      }

LABEL_19:

      return (*(v55 + 8))(v61, v56);
    }

    else
    {
      (*(v17 + 32))(v21, v15, v16);
      (*(v6 + 104))(v11, *MEMORY[0x277CF9BE0], v5);
      sub_224C7F024(v21, v11);

      (*(v6 + 8))(v11, v5);
      return (*(v17 + 8))(v21, v16);
    }
  }

  return result;
}

uint64_t sub_224C876A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = (&v46 - v4);
  v50 = sub_224DAC2B8();
  v5 = *(v50 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    sub_224C89C84();
    sub_224C87C9C();
    v16 = v1[28];
    v17 = v1[29];
    __swift_project_boxed_opaque_existential_1(v1 + 25, v16);
    result = (*(v17 + 24))(768, v16, v17);
    if (!result)
    {
      return result;
    }

    v15 = sub_224A7B208(result);

    sub_224DADC38();
    v12 = sub_224DACF78();

    if (!(v15 >> 62))
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_5;
      }

      goto LABEL_41;
    }
  }

  else
  {
LABEL_39:
    __break(1u);
  }

  v19 = sub_224DAF838();
  if (v19)
  {
LABEL_5:
    v20 = 0;
    v21 = v15 & 0xC000000000000001;
    v56 = v15 + 32;
    v57 = v15 & 0xFFFFFFFFFFFFFF8;
    v47 = v5 + 1;
    v48 = v1;
    v22 = &off_27853F000;
    v54 = v12;
    v55 = v15;
    v52 = v15 & 0xC000000000000001;
    v53 = v19;
    while (1)
    {
LABEL_7:
      if (v21)
      {
        v23 = MEMORY[0x22AA5DCC0](v20, v15);
      }

      else
      {
        if (v20 >= *(v57 + 16))
        {
          goto LABEL_38;
        }

        v23 = *(v56 + 8 * v20);
      }

      v5 = v23;
      if (__OFADD__(v20++, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v25 = [v23 controlIdentity];
      v26 = [v25 v22[311]];

      if (v12[2])
      {
        v27 = sub_224A3E7EC(v26);
        if (v28)
        {
          break;
        }
      }

      if (v20 == v19)
      {
        goto LABEL_41;
      }
    }

    v58 = v20;
    v29 = *(v12[7] + 8 * v27);

    v59 = v29 & 0xFFFFFFFFFFFFFF8;
    if (v29 >> 62)
    {
      v60 = sub_224DAF838();
    }

    else
    {
      v60 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = 0;
    while (1)
    {
      if (v60 == v30)
      {

        goto LABEL_32;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x22AA5DCC0](v30, v29);
      }

      else
      {
        if (v30 >= *(v59 + 16))
        {
          goto LABEL_36;
        }

        v31 = *(v29 + 8 * v30 + 32);
      }

      v32 = v31;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v33 = [v31 kind];
      v34 = sub_224DAEE18();
      v1 = v35;

      v36 = v5;
      v37 = [v5 controlIdentity];
      v38 = [v37 kind];

      v39 = sub_224DAEE18();
      v12 = v40;

      if (v34 == v39 && v1 == v12)
      {
        break;
      }

      v15 = sub_224DAFD88();

      ++v30;
      v5 = v36;
      if (v15)
      {
        goto LABEL_31;
      }
    }

    v5 = v36;
LABEL_31:

    v42 = [v5 controlIdentity];
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v44 = v51;
    (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
    v45 = v49;
    sub_224C86DA4(v42, v44, v49);

    sub_224A3311C(v44, &qword_27D6F56C0, &unk_224DB3580);
    sub_224C796B8(v45);

    (*v47)(v45, v50);
LABEL_32:
    v12 = v54;
    v15 = v55;
    v21 = v52;
    v19 = v53;
    v20 = v58;
    v22 = &off_27853F000;
    if (v58 != v53)
    {
      goto LABEL_7;
    }
  }

LABEL_41:
}

uint64_t sub_224C87C9C()
{
  v1 = v0;
  v226 = sub_224DAD158();
  v208 = *(v226 - 8);
  v2 = *(v208 + 64);
  v3 = MEMORY[0x28223BE20](v226);
  v211 = &v200 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v213 = &v200 - v6;
  MEMORY[0x28223BE20](v5);
  v238 = &v200 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v212 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v224 = &v200 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v233 = &v200 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v225 = &v200 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v243 = &v200 - v19;
  MEMORY[0x28223BE20](v18);
  v241 = &v200 - v20;
  v229 = sub_224DAB8C8();
  v21 = *(v229 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v229);
  v228 = (&v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v253 = &v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v254 = &v200 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v267 = &v200 - v31;
  MEMORY[0x28223BE20](v30);
  v266 = &v200 - v32;
  v33 = sub_224DAC2B8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v209 = &v200 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v236 = &v200 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v223 = &v200 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v237 = &v200 - v43;
  MEMORY[0x28223BE20](v42);
  v269 = (&v200 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v244 = &v200 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v260 = &v200 - v51;
  MEMORY[0x28223BE20](v50);
  v201 = &v200 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BE8, &qword_224DBCEE8);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v206 = &v200 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v205 = &v200 - v57;
  v59 = v0[28];
  v58 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v59);
  v60 = (*(v58 + 24))(769, v59, v58);
  if (!v60)
  {
    v190 = MEMORY[0x277D84F90];
    v191 = v0[46];

    sub_224DA22EC(v190);
    sub_224DADDC8();

    v192 = *(v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_configurationLifetimeAssertions);
    *(v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_configurationLifetimeAssertions) = v190;
  }

  v61 = sub_224CFECC0(v60);

  v272 = MEMORY[0x277D84F98];
  v62 = v61 + 64;
  v63 = 1 << *(v61 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v215 = v64 & *(v61 + 64);
  v222 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue;
  v200 = (v63 + 63) >> 6;
  v257 = (v46 + 16);
  v250 = (v46 + 32);
  v261 = (v46 + 56);
  v252 = (v46 + 48);
  v204 = v46;
  v234 = (v46 + 8);
  v221 = *MEMORY[0x277D85200];
  v220 = (v21 + 104);
  v219 = (v21 + 8);
  v218 = (v208 + 56);
  v207 = v208 + 16;
  v251 = (v208 + 48);
  v231 = (v208 + 32);
  v216 = (v208 + 8);
  v232 = (v34 + 16);
  v256 = (v34 + 8);
  v227 = v34;
  v217 = v34 + 32;
  v202 = v61;

  v65 = 0;
  v239 = 0;
  *&v66 = 136446466;
  v210 = v66;
  v248 = MEMORY[0x277D84F90];
  v249 = MEMORY[0x277D84F90];
  v67 = v254;
  v203 = v61 + 64;
  v263 = v1;
  v262 = v33;
  v258 = v45;
  while (1)
  {
    v68 = v215;
    if (v215)
    {
      v214 = v65;
      v69 = v65;
      v70 = v204;
      goto LABEL_16;
    }

    v71 = v200 <= v65 + 1 ? v65 + 1 : v200;
    v72 = v71 - 1;
    v70 = v204;
    do
    {
      v69 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        swift_once();
LABEL_82:
        v178 = sub_224DAB258();
        __swift_project_value_buffer(v178, qword_281364D90);
        v179 = sub_224DAB228();
        v180 = sub_224DAF278();
        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v271 = v182;
          *v181 = 136446210;
          v183 = v249;

          v185 = v262;
          v186 = MEMORY[0x22AA5D380](v184);
          v188 = v187;

          v189 = sub_224A33F74(v186, v188, &v271);

          *(v181 + 4) = v189;
          _os_log_impl(&dword_224A2F000, v179, v180, "making live control entries for %{public}s", v181, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v182);
          MEMORY[0x22AA5EED0](v182, -1, -1);
          MEMORY[0x22AA5EED0](v181, -1, -1);
        }

        else
        {
          v185 = v262;

          v183 = v249;
        }

        v193 = v183[2];
        if (v193)
        {
          v194 = v1[19];
          v195 = v183 + ((*(v227 + 80) + 32) & ~*(v227 + 80));
          v268 = *(v227 + 72);
          v269 = *(v227 + 16);
          v249 = v183;

          v196 = v209;
          v197 = v256;
          do
          {
            v269(v196, v195, v185);
            type metadata accessor for EmptyKey();
            v198 = swift_allocObject();
            *(v198 + 16) = 0;
            *(v198 + 24) = 0xE000000000000000;
            v199 = MEMORY[0x28223BE20](v198);
            *(&v200 - 4) = v209;
            *(&v200 - 3) = v199;
            *(&v200 - 2) = v263;
            sub_224DAC128();

            v196 = v209;
            (*v197)(v209, v185);
            v195 = &v268[v195];
            --v193;
          }

          while (v193);
        }

        else
        {
        }
      }

      if (v69 >= v200)
      {
        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
        v81 = v206;
        (*(*(v174 - 8) + 56))(v206, 1, 1, v174);
        v215 = 0;
        v214 = v72;
        goto LABEL_17;
      }

      v68 = *(v62 + 8 * v69);
      ++v65;
    }

    while (!v68);
    v214 = v69;
LABEL_16:
    v215 = (v68 - 1) & v68;
    v73 = __clz(__rbit64(v68)) | (v69 << 6);
    v74 = v202;
    v75 = v201;
    v76 = v70;
    (*(v70 + 16))(v201, *(v202 + 48) + *(v70 + 72) * v73, v45);
    v77 = *(*(v74 + 56) + 8 * v73);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
    v79 = *(v78 + 48);
    v80 = *(v76 + 32);
    v81 = v206;
    v80(v206, v75, v45);
    *(v81 + v79) = v77;
    (*(*(v78 - 8) + 56))(v81, 0, 1, v78);

LABEL_17:
    v82 = v205;
    sub_224C8F308(v81, v205);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
    if ((*(*(v83 - 8) + 48))(v82, 1, v83) == 1)
    {

      v175 = v1[46];
      v176 = v272;

      v267 = v176;
      sub_224DADDC8();

      v177 = *(v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_configurationLifetimeAssertions);
      *(v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_configurationLifetimeAssertions) = v248;

      if (qword_281351448 == -1)
      {
        goto LABEL_82;
      }

      goto LABEL_97;
    }

    v84 = *(v82 + *(v83 + 48));
    v85 = *v250;
    v86 = v45;
    v87 = v84;
    (*v250)(v260, v82, v86);
    v88 = v256;
    v259 = v87 >> 62 ? sub_224DAF838() : *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v259)
    {
      break;
    }

LABEL_5:

    v45 = v258;
    (*v234)(v260, v258);
    v62 = v203;
    v65 = v214;
  }

  v245 = v85;
  v89 = 0;
  v255 = v87 & 0xC000000000000001;
  v240 = v87 & 0xFFFFFFFFFFFFFF8;
  v242 = v87;
  while (1)
  {
    if (v255)
    {
      v90 = MEMORY[0x22AA5DCC0](v89, v87);
      v91 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (v89 >= *(v240 + 16))
      {
        goto LABEL_94;
      }

      v90 = *(v87 + 8 * v89 + 32);
      v91 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    v265 = v91;
    v268 = v90;
    v92 = [v90 controlIdentity];
    v93 = v266;
    v94 = v258;
    (*v257)(v266, v260, v258);
    v95 = *v261;
    (*v261)(v93, 0, 1, v94);
    v95(v267, 1, 1, v94);
    sub_224A3796C(v93, v67, &qword_27D6F56C0, &unk_224DB3580);
    if ((*v252)(v67, 1, v94) == 1)
    {
      sub_224A3311C(v67, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v264 = v89;
      v96 = v244;
      v97 = v245;
      v245(v244, v67, v94);
      sub_224DAA1F8();
      v98 = sub_224DAA048();

      if (v98)
      {
        v99 = v267;
        sub_224A3311C(v267, &qword_27D6F56C0, &unk_224DB3580);
        v97(v99, v96, v94);
        v87 = v242;
        v95(v99, 0, 1, v94);
      }

      else
      {
        (*v234)(v96, v94);
      }

      v89 = v264;
      v88 = v256;
    }

    v100 = v267;
    sub_224A3796C(v267, v253, &qword_27D6F56C0, &unk_224DB3580);
    v101 = v92;
    sub_224DAC298();
    sub_224A3311C(v100, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v266, &qword_27D6F56C0, &unk_224DB3580);
    v1 = v263;
    v102 = v263[24];
    __swift_project_boxed_opaque_existential_1(v263 + 20, v263[23]);
    v103 = *(v102 + 24);
    v104 = sub_224DADA48();
    v105 = v262;
    if (!v104)
    {
      goto LABEL_23;
    }

    v106 = sub_224DACFB8();

    if (!v106)
    {
      goto LABEL_23;
    }

    if ([v106 disablesControlStateCaching])
    {

LABEL_23:
      (*v88)(v269, v105);
      goto LABEL_24;
    }

    v235 = v106;
    v264 = v89;
    v107 = *(v1 + v222);
    v108 = v228;
    *v228 = v107;
    v109 = v229;
    (*v220)(v108, v221, v229);
    v110 = v107;
    v111 = sub_224DAB8F8();
    (*v219)(v108, v109);
    if ((v111 & 1) == 0)
    {
      goto LABEL_96;
    }

    type metadata accessor for EmptyKey();
    v112 = swift_allocObject();
    *(v112 + 16) = 0;
    *(v112 + 24) = 0xE000000000000000;
    v113 = v1[19];
    *&v270 = v112;
    v114 = v269;
    v115 = sub_224DAD288();
    MEMORY[0x28223BE20](v115);
    *(&v200 - 4) = v114;
    *(&v200 - 3) = v112;
    *(&v200 - 2) = v1;
    v116 = v239;
    sub_224DAC128();

    sub_224A3317C(&v271, &v270);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v248 = sub_224AD97A8(0, v248[2] + 1, 1, v248);
    }

    v117 = v226;
    v118 = v225;
    v120 = v248[2];
    v119 = v248[3];
    if (v120 >= v119 >> 1)
    {
      v248 = sub_224AD97A8((v119 > 1), v120 + 1, 1, v248);
    }

    v121 = v248;
    v248[2] = v120 + 1;
    sub_224A36F98(&v270, &v121[5 * v120 + 4]);
    v122 = v272;
    v123 = *(v272 + 16);
    v239 = v116;
    if (v123 && (v124 = sub_224B0BBA8(v269), (v125 & 1) != 0))
    {
      (*(v208 + 16))(v241, *(v122 + 56) + *(v208 + 72) * v124, v117);
      v126 = 0;
    }

    else
    {
      v126 = 1;
    }

    v127 = *v218;
    v128 = v241;
    (*v218)(v241, v126, 1, v117);
    v129 = v243;
    v127(v243, 1, 1, v117);
    sub_224A3796C(v128, v118, &qword_27D6F5238, &qword_224DBB1E0);
    v130 = *v251;
    if ((*v251)(v118, 1, v117) == 1)
    {
      sub_224A3311C(v118, &qword_27D6F5238, &qword_224DBB1E0);
      v131 = v233;
      sub_224DAD148();
      v127(v131, 0, 1, v117);
      swift_beginAccess();
      sub_224A838C0(v131, v129, &qword_27D6F5238, &qword_224DBB1E0);
      v132 = v268;
      [v268 supportedColorSchemes];
      swift_beginAccess();
      result = v130(v129, 1, v117);
      if (result == 1)
      {
        goto LABEL_105;
      }

      sub_224DAD098();
      swift_endAccess();
      [v132 canAppearInSecureEnvironment];
      swift_beginAccess();
      result = v130(v129, 1, v117);
      v134 = v232;
      v135 = v262;
      if (result == 1)
      {
        goto LABEL_102;
      }

      sub_224DACFF8();
      swift_endAccess();
      [v132 supportsLowLuminance];
      swift_beginAccess();
      result = v130(v129, 1, v117);
      if (result == 1)
      {
        goto LABEL_100;
      }

      sub_224DAD108();
      swift_endAccess();
      goto LABEL_65;
    }

    (*v231)(v238, v118, v117);
    v136 = v233;
    sub_224DAD148();
    v127(v136, 0, 1, v117);
    swift_beginAccess();
    sub_224A838C0(v136, v129, &qword_27D6F5238, &qword_224DBB1E0);
    sub_224DAD088();
    swift_beginAccess();
    result = v130(v129, 1, v117);
    if (result == 1)
    {
      goto LABEL_101;
    }

    sub_224DAD098();
    swift_endAccess();
    v137 = [v268 supportedColorSchemes];
    swift_beginAccess();
    result = v130(v129, 1, v117);
    v134 = v232;
    if (result == 1)
    {
      goto LABEL_104;
    }

    v139 = sub_224DAD078();
    if ((v137 & ~*v138) != 0)
    {
      *v138 |= v137;
    }

    v139(&v270, 0);
    swift_endAccess();
    if ((sub_224DACFE8() & 1) == 0)
    {
      [v268 canAppearInSecureEnvironment];
    }

    v135 = v262;
    swift_beginAccess();
    result = v130(v129, 1, v117);
    if (result == 1)
    {
      goto LABEL_99;
    }

    sub_224DACFF8();
    swift_endAccess();
    if ((sub_224DAD0F8() & 1) == 0)
    {
      [v268 supportsLowLuminance];
    }

    swift_beginAccess();
    result = v130(v129, 1, v117);
    if (result == 1)
    {
      break;
    }

    sub_224DAD108();
    swift_endAccess();
    (*v216)(v238, v117);
LABEL_65:
    v246 = *v134;
    v246(v237, v269, v135);
    swift_beginAccess();
    v140 = v224;
    sub_224A3796C(v129, v224, &qword_27D6F5238, &qword_224DBB1E0);
    v141 = v130(v140, 1, v117);
    v230 = v130;
    if (v141 == 1)
    {
      sub_224A3311C(v140, &qword_27D6F5238, &qword_224DBB1E0);
      v142 = v233;
      v143 = v237;
      sub_224B0D8FC(v237, v233);
      sub_224A3311C(v142, &qword_27D6F5238, &qword_224DBB1E0);
      v247 = *v256;
      v247(v143, v135);
    }

    else
    {
      v144 = v213;
      (*v231)(v213, v140, v117);
      v145 = v272;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v270 = v145;
      v147 = v144;
      v148 = v237;
      sub_224B21D38(v147, v237, isUniquelyReferenced_nonNull_native);
      v247 = *v256;
      v247(v148, v135);
      v272 = v270;
    }

    v1 = v263;
    v149 = v223;
    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v150 = sub_224DAB258();
    __swift_project_value_buffer(v150, qword_281364D90);
    v246(v149, v269, v135);
    v151 = v135;
    v152 = sub_224DAB228();
    v153 = sub_224DAF278();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = v151;
      v155 = v149;
      v156 = v117;
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *&v270 = v158;
      *v157 = v210;
      sub_224C8DD50(&unk_281350E08, MEMORY[0x277CF99B8]);
      v159 = sub_224DAFD28();
      v161 = v160;
      v247(v155, v154);
      v162 = sub_224A33F74(v159, v161, &v270);

      *(v157 + 4) = v162;
      *(v157 + 12) = 2082;
      v163 = v212;
      sub_224A3796C(v243, v212, &qword_27D6F5238, &qword_224DBB1E0);
      result = v230(v163, 1, v156);
      if (result == 1)
      {
        goto LABEL_103;
      }

      v164 = v211;
      (*v231)(v211, v163, v156);
      sub_224C8DD50(&qword_27D6F3E80, MEMORY[0x277CF9C60]);
      v165 = sub_224DAFD28();
      v167 = v166;
      (*v216)(v164, v156);
      v168 = sub_224A33F74(v165, v167, &v270);

      *(v157 + 14) = v168;
      _os_log_impl(&dword_224A2F000, v152, v153, "New environment modifiers for key [configuration]: %{public}s: %{public}s", v157, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v158, -1, -1);
      MEMORY[0x22AA5EED0](v157, -1, -1);

      v1 = v263;
      v169 = v262;
      v88 = v256;
    }

    else
    {

      v88 = v256;
      v247(v149, v151);
      v169 = v151;
    }

    v246(v236, v269, v169);
    v170 = swift_isUniquelyReferenced_nonNull_native();
    v87 = v242;
    if ((v170 & 1) == 0)
    {
      v249 = sub_224AD990C(0, v249[2] + 1, 1, v249);
    }

    v89 = v264;
    v172 = v249[2];
    v171 = v249[3];
    if (v172 >= v171 >> 1)
    {
      v249 = sub_224AD990C(v171 > 1, v172 + 1, 1, v249);
    }

    sub_224A3311C(v241, &qword_27D6F5238, &qword_224DBB1E0);
    __swift_destroy_boxed_opaque_existential_1(&v271);
    v173 = v249;
    v249[2] = v172 + 1;
    (*(v227 + 32))(v173 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v172, v236, v169);
    v247(v269, v169);
    sub_224A3311C(v243, &qword_27D6F5238, &qword_224DBB1E0);
LABEL_24:
    ++v89;
    v67 = v254;
    if (v265 == v259)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_99:
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
  return result;
}

uint64_t sub_224C89C84()
{
  v1 = v0;
  v156 = sub_224DAB7B8();
  v2 = *(v156 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v156);
  v155 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_224DAB848();
  v158 = *(v154 - 8);
  v5 = v158[8];
  MEMORY[0x28223BE20](v154);
  v153 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF8, &qword_224DBCEF8);
  v7 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v137 = &v128 - v8;
  v150 = sub_224DAE138();
  v130 = *(v150 - 8);
  v9 = *(v130 + 64);
  v10 = MEMORY[0x28223BE20](v150);
  v140 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v128 - v12;
  v135 = sub_224DAE168();
  v149 = *(v135 - 8);
  v13 = *(v149 + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAC5E8();
  v164 = *(v15 - 1);
  v16 = *(v164 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v151 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v128 - v19;
  v21 = sub_224DAB258();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v1 + 160), v27);
  v28 = *(v26 + 24);
  result = sub_224DADA48();
  if (!result)
  {
    return result;
  }

  v144 = v2;
  v159 = v20;
  v139 = result;
  v30 = *(v1 + 224);
  v31 = *(v1 + 232);
  __swift_project_boxed_opaque_existential_1((v1 + 200), v30);
  v32 = (*(v31 + 24))(768, v30, v31);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v33 = sub_224A7B208(v32);
    v128 = 0;
  }

  else
  {
    v128 = 0;
  }

  (*(v22 + 16))(v25, v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v21);
  v34 = sub_224DAB228();
  v35 = sub_224DAF2A8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_224A2F000, v34, v35, "Configured controls changed. Evaluating push configured controls.", v36, 2u);
    MEMORY[0x22AA5EED0](v36, -1, -1);
  }

  (*(v22 + 8))(v25, v21);
  if (v33 >> 62)
  {
    goto LABEL_93;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v157 = v15;
    v161 = v1;
    v129 = v33;
    if (i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F98];
LABEL_51:
    __swift_project_boxed_opaque_existential_1(v161 + 30, v161[33]);
    v69 = off_283828B60[0];
    v70 = type metadata accessor for PushService();

    v71 = v69(v70, &off_283828B40);
    v72 = v71;
    v73 = *(v71 + 16);
    v160 = v15;
    if (v73)
    {
      v33 = 0;
      v74 = *(v164 + 80);
      v75 = v71 + ((v74 + 32) & ~v74);
      v165 = v164 + 16;
      v133 = (v149 + 8);
      v132 = (v130 + 32);
      v131 = (v130 + 88);
      v142 = *MEMORY[0x277CF9EB0];
      v141 = *MEMORY[0x277CF9EB8];
      v163 = v164 + 8;
      v149 = v74;
      v147 = (v74 + 24) & ~v74;
      v146 = (v164 + 32);
      v145 = v168;
      ++v144;
      v143 = (v158 + 1);
      v158 = v15;
      v1 = v157;
      v76 = v159;
      v148 = v75;
      while (1)
      {
        if (v33 >= *(v72 + 16))
        {
          goto LABEL_89;
        }

        v91 = *(v164 + 16);
        v91(v76, v75 + *(v164 + 72) * v33, v1);
        v92 = sub_224DAC5D8();
        if (!v92)
        {
          goto LABEL_68;
        }

        v93 = v92;
        if (v15[2])
        {
          v94 = sub_224B0BD50(v92);
          if (v95)
          {
            break;
          }
        }

        v77 = __swift_project_boxed_opaque_existential_1(v161 + 30, v161[33]);
        v78 = *v77;
        v162 = *(*v77 + 40);
        v79 = v151;
        v91(v151, v76, v1);
        v80 = v147;
        v81 = swift_allocObject();
        *(v81 + 16) = v78;
        (*v146)(v81 + v80, v79, v1);
        v168[2] = sub_224C8F3B8;
        v168[3] = v81;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v168[0] = sub_224A39F40;
        v168[1] = &block_descriptor_117;
        v82 = _Block_copy(aBlock);

        v83 = v73;
        v84 = v72;
        v85 = v153;
        sub_224DAB7E8();
        v166 = MEMORY[0x277D84F90];
        sub_224C8DD50(&qword_281350ED0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v86 = v155;
        v87 = v156;
        v76 = v159;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v85, v86, v82);

        _Block_release(v82);
        v88 = v86;
        v15 = v160;
        v89 = v87;
        v1 = v157;
        (*v144)(v88, v89);
        v90 = v85;
        v72 = v84;
        v73 = v83;
        v75 = v148;
        (*v143)(v90, v154);
        (*v163)(v76, v1);

LABEL_54:
        if (v73 == ++v33)
        {

          v15 = v158;
          goto LABEL_72;
        }
      }

      v96 = *(v15[7] + 8 * v94);
      v97 = v134;
      sub_224DAC5B8();
      v98 = v136;
      sub_224DAE158();
      (*v133)(v97, v135);
      v99 = *(v138 + 48);
      v100 = v137;
      *v137 = v96;
      v101 = v98;
      v102 = v150;
      (*v132)(&v100[v99], v101, v150);
      v103 = (*v131)(&v100[v99], v102);
      if (v103 == v142)
      {
        v76 = v159;
        v15 = v160;
        if (v96 != 2)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v103 != v141)
        {
          goto LABEL_96;
        }

        v76 = v159;
        v15 = v160;
        if (v96 != 1)
        {
LABEL_69:
          (*v163)(v76, v1);

          goto LABEL_54;
        }
      }

      v104 = v158;
      v105 = sub_224B0BD50(v93);
      if ((v106 & 1) == 0)
      {
        goto LABEL_69;
      }

      v107 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v104;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B28FD8();
        v104 = aBlock[0];
      }

      v158 = v104;
      sub_224A58C3C(v107, v104);

LABEL_68:
      (*v163)(v76, v1);
      goto LABEL_54;
    }

    v141 = *MEMORY[0x277CF9EB8];
    v142 = *MEMORY[0x277CF9EB0];
LABEL_72:
    v109 = 0;
    v158 = v15;
    v111 = v15[8];
    v15 += 8;
    v110 = v111;
    v112 = 1 << *(v15 - 32);
    v113 = -1;
    if (v112 < 64)
    {
      v113 = ~(-1 << v112);
    }

    v1 = v113 & v110;
    v114 = (v112 + 63) >> 6;
    v115 = (v130 + 104);
    v116 = (v130 + 8);
    v33 = v140;
    v117 = v150;
    if ((v113 & v110) != 0)
    {
      do
      {
        v118 = v109;
LABEL_80:
        v119 = (v118 << 9) | (8 * __clz(__rbit64(v1)));
        v120 = *(v158[6] + v119);
        v1 &= v1 - 1;
        if (*(v158[7] + v119) == 2)
        {
          v121 = v142;
        }

        else
        {
          v121 = v141;
        }

        (*v115)(v33, v121, v117);
        v122 = v120;
        sub_224C7CAAC(v122, v33);

        (*v116)(v33, v117);
      }

      while (v1);
    }

    while (1)
    {
      v118 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      if (v118 >= v114)
      {

        v123 = v161;
        v124 = *(v161 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
        BSDispatchQueueAssert();
        v125 = v123[28];
        v126 = v123[29];
        __swift_project_boxed_opaque_existential_1(v123 + 25, v125);
        v127 = (*(v126 + 24))(769, v125, v126);
        sub_224C8AE30(v127);
      }

      v1 = v15[v118];
      ++v109;
      if (v1)
      {
        v109 = v118;
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    ;
  }

  v1 = 0;
  v165 = v33 & 0xC000000000000001;
  v15 = MEMORY[0x277D84F98];
  v162 = i;
  v163 = v33 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v165)
    {
      v38 = MEMORY[0x22AA5DCC0](v1, v33);
    }

    else
    {
      if (v1 >= *(v163 + 16))
      {
        goto LABEL_90;
      }

      v38 = *(v33 + 8 * v1 + 32);
    }

    v39 = v38;
    v40 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_88;
    }

    v41 = [v38 controlIdentity];
    v42 = sub_224DACFB8();
    if (!v42)
    {
      goto LABEL_12;
    }

    v43 = v42;
    if (([v42 supportsPush] & 1) == 0)
    {

LABEL_12:
LABEL_13:

      goto LABEL_14;
    }

    v44 = [v39 pushPolicy];
    if (!v44)
    {
      goto LABEL_29;
    }

    if (v44 != 1)
    {
      break;
    }

    if (v15[2] && (sub_224B0BD50(v41), (v54 & 1) != 0))
    {
    }

    else
    {
      v55 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v15;
      v56 = sub_224B0BD50(v41);
      v58 = v15[2];
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_92;
      }

      v62 = v57;
      if (v15[3] >= v61)
      {
        if ((v55 & 1) == 0)
        {
          v68 = v56;
          sub_224B28FD8();
          v56 = v68;
        }
      }

      else
      {
        sub_224B16F84(v61, v55);
        v56 = sub_224B0BD50(v41);
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_97;
        }
      }

      v15 = aBlock[0];
      if (v62)
      {
        *(*(aBlock[0] + 56) + 8 * v56) = 1;

        i = v162;
      }

      else
      {
        *(aBlock[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
        *(v15[6] + 8 * v56) = v41;
        *(v15[7] + 8 * v56) = 1;

        v66 = v15[2];
        v60 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v60)
        {
          goto LABEL_95;
        }

        v15[2] = v67;
        i = v162;
      }
    }

LABEL_14:
    ++v1;
    if (v40 == i)
    {
      goto LABEL_51;
    }
  }

  if (v44 != 2)
  {
LABEL_29:

    goto LABEL_13;
  }

  v45 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v15;
  v47 = sub_224B0BD50(v41);
  v48 = v15[2];
  v49 = (v46 & 1) == 0;
  v50 = v48 + v49;
  if (__OFADD__(v48, v49))
  {
    goto LABEL_91;
  }

  v51 = v46;
  if (v15[3] >= v50)
  {
    if ((v45 & 1) == 0)
    {
      sub_224B28FD8();
    }
  }

  else
  {
    sub_224B16F84(v50, v45);
    v52 = sub_224B0BD50(v41);
    if ((v51 & 1) != (v53 & 1))
    {
      goto LABEL_97;
    }

    v47 = v52;
  }

  v15 = aBlock[0];
  if (v51)
  {
    *(*(aBlock[0] + 56) + 8 * v47) = 2;

LABEL_43:
    v33 = v129;
    i = v162;
    goto LABEL_14;
  }

  *(aBlock[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
  *(v15[6] + 8 * v47) = v41;
  *(v15[7] + 8 * v47) = 2;

  v64 = v15[2];
  v60 = __OFADD__(v64, 1);
  v65 = v64 + 1;
  if (!v60)
  {
    v15[2] = v65;
    goto LABEL_43;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  sub_224DAFD78();
  __break(1u);
LABEL_97:
  sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224C8AD30()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  BSDispatchQueueAssert();
  v2 = v0[28];
  v3 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v2);
  v4 = (*(v3 + 24))(769, v2, v3);
  if (v4)
  {
    v5 = v0[40];
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      do
      {
        sub_224A3317C(v7, v11);
        v8 = v12;
        v9 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(v9 + 16))(v8, v9);
        __swift_destroy_boxed_opaque_existential_1(v11);
        v7 += 40;
        --v6;
      }

      while (v6);
    }
  }

  sub_224C8AE30(v4);
}

uint64_t sub_224C8AE30(uint64_t a1)
{
  v112 = sub_224DAE0D8();
  v3 = *(v112 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v112);
  v111 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v92 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v8 = *(v102 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v92 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v95 = *(v105 - 8);
  v11 = *(v95 + 64);
  v12 = MEMORY[0x28223BE20](v105);
  v108 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v93 = &v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BE8, &qword_224DBCEE8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v92 - v20;
  v22 = sub_224DAB258();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  BSDispatchQueueAssert();
  if (!a1)
  {
    goto LABEL_48;
  }

  v109 = v8;
  v103 = v19;
  v104 = v21;
  v28 = *(v23 + 16);
  v107 = v1;
  v28(v26, v1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v22);
  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_224A2F000, v29, v30, "Evaluating elevated push topics for controls.", v31, 2u);
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }

  (*(v23 + 8))(v26, v22);
  v119 = MEMORY[0x277D84FA0];
  result = sub_224CFECC0(a1);
  v33 = 0;
  v35 = result + 64;
  v34 = *(result + 64);
  v94 = result;
  v36 = 1 << *(result + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & v34;
  v100 = OBJC_IVAR____TtC10ChronoCore18LiveControlService_pushElevatedHosts;
  v39 = (v36 + 63) >> 6;
  v92 = v95 + 16;
  v106 = (v95 + 32);
  v99 = (v109 + 1);
  v109 = (v3 + 8);
  v96 = (v95 + 8);
  v40 = v105;
  v98 = result + 64;
  v97 = v39;
  v41 = v107;
  while (1)
  {
    if (!v38)
    {
      if (v39 <= v33 + 1)
      {
        v44 = v33 + 1;
      }

      else
      {
        v44 = v39;
      }

      v45 = v44 - 1;
      v43 = v104;
      while (1)
      {
        v42 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v42 >= v39)
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
          v55 = v103;
          (*(*(v78 - 8) + 56))(v103, 1, 1, v78);
          v38 = 0;
          v33 = v45;
          goto LABEL_21;
        }

        v38 = *(v35 + 8 * v42);
        ++v33;
        if (v38)
        {
          v33 = v42;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v42 = v33;
    v43 = v104;
LABEL_20:
    v46 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v47 = v46 | (v42 << 6);
    v48 = v94;
    v49 = v95;
    v50 = v93;
    (*(v95 + 16))(v93, *(v94 + 48) + *(v95 + 72) * v47, v40);
    v51 = *(*(v48 + 56) + 8 * v47);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
    v53 = *(v52 + 48);
    v54 = *(v49 + 32);
    v55 = v103;
    v54(v103, v50, v40);
    *(v55 + v53) = v51;
    (*(*(v52 - 8) + 56))(v55, 0, 1, v52);

    v41 = v107;
LABEL_21:
    sub_224C8F308(v55, v43);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BF0, &qword_224DBCEF0);
    if ((*(*(v56 - 8) + 48))(v43, 1, v56) == 1)
    {
      break;
    }

    v57 = *(v43 + *(v56 + 48));
    (*v106)(v108, v43, v40);
    v58 = *(v41 + v100);
    v59 = v101;
    sub_224DAA1E8();
    v60 = v102;
    v61 = sub_224DA9FE8();
    v63 = v62;
    (*v99)(v59, v60);
    if (!*(v58 + 16) || (v64 = *(v58 + 40), sub_224DAFE68(), sub_224DAEE78(), v65 = sub_224DAFEA8(), v66 = -1 << *(v58 + 32), v67 = v65 & ~v66, ((*(v58 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0))
    {
LABEL_8:
      v40 = v105;
      (*v96)(v108, v105);

      goto LABEL_9;
    }

    v68 = ~v66;
    while (1)
    {
      v69 = (*(v58 + 48) + 16 * v67);
      v70 = *v69 == v61 && v69[1] == v63;
      if (v70 || (sub_224DAFD88() & 1) != 0)
      {
        break;
      }

      v67 = (v67 + 1) & v68;
      if (((*(v58 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (v57 >> 62)
    {
      result = sub_224DAF838();
      v71 = result;
      if (result)
      {
LABEL_34:
        if (v71 < 1)
        {
          goto LABEL_51;
        }

        for (i = 0; i != v71; ++i)
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            v73 = MEMORY[0x22AA5DCC0](i, v57);
          }

          else
          {
            v73 = *(v57 + 8 * i + 32);
          }

          v74 = v73;
          if ([v73 pushPolicy] - 1 >= 2)
          {
          }

          else
          {
            v75 = [v74 controlIdentity];
            v76 = v111;
            sub_224DAE0E8();
            v77 = v110;
            sub_224ADB0B0(v110, v76);

            (*v109)(v77, v112);
          }
        }
      }
    }

    else
    {
      v71 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v71)
      {
        goto LABEL_34;
      }
    }

    v40 = v105;
    result = (*v96)(v108, v105);
LABEL_9:
    v41 = v107;
    v35 = v98;
    v39 = v97;
  }

  v79 = __swift_project_boxed_opaque_existential_1(v41 + 30, v41[33]);
  v80 = v119;
  v81 = *v79;
  v82 = *(*v79 + 40);
  v1 = swift_allocObject();
  v1[2] = v81;
  v1[3] = v80;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_224C900B0;
  *(v83 + 24) = v1;
  v117 = sub_224BC4B74;
  v118 = v83;
  aBlock = MEMORY[0x277D85DD0];
  v114 = 1107296256;
  v115 = sub_224A9B6F8;
  v116 = &block_descriptor_111_0;
  v84 = _Block_copy(&aBlock);

  dispatch_sync(v82, v84);
  _Block_release(v84);
  LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

  if ((v82 & 1) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_48:
  v85 = __swift_project_boxed_opaque_existential_1(v1 + 30, v1[33]);
  v86 = *v85;
  v87 = *(*v85 + 40);
  v88 = swift_allocObject();
  v89 = MEMORY[0x277D84FA0];
  *(v88 + 16) = v86;
  *(v88 + 24) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_224C8F300;
  *(v90 + 24) = v88;
  v117 = sub_224A8A838;
  v118 = v90;
  aBlock = MEMORY[0x277D85DD0];
  v114 = 1107296256;
  v115 = sub_224A9B6F8;
  v116 = &block_descriptor_100;
  v91 = _Block_copy(&aBlock);

  dispatch_sync(v87, v91);
  _Block_release(v91);
  LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

  if (v87)
  {
LABEL_52:
    __break(1u);
  }

  return result;
}

uint64_t sub_224C8B9D8()
{
  v1 = *(*v0 + 368);

  v2 = sub_224DADDD8();

  return v2;
}

uint64_t sub_224C8BA80(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = [a1 extensionIdentity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v8 = [a1 kind];
  v9 = sub_224DAEE18();
  v11 = v10;

  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v12 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224C84DA4(v6, v12);

  return sub_224C809D8(a1, a2);
}

uint64_t sub_224C8BB84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-v5];
  v7 = sub_224DAC2B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_224C86DA4(a1, v6, v11);
  sub_224A3311C(v6, &qword_27D6F56C0, &unk_224DB3580);
  v14 = *(v12 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  v18 = v12;
  v19 = v11;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3698, &qword_224DB3C70);
  sub_224DAF3E8();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224C8BD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_224DACB98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  sub_224DACC68();
  sub_224C7F6A4(a1, a2, a3, v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224C8BE84()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BB8, &unk_224DBCEC8);
  return sub_224DAEE28();
}

void sub_224C8BF10()
{
  v1 = v0;
  v66 = sub_224DA9688();
  v2 = *(v66 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v66);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v65 = &v60 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v67 = sub_224DAC2B8();
  v14 = *(v67 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v67);
  v76 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0[19];
  v18 = sub_224DAC108();
  v19 = v1[17];
  v20 = v1[18];
  v78 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 14, v19);
  v21 = v18;
  v22 = sub_224DAC678();
  v91 = MEMORY[0x277D84FA0];
  v75 = *(v18 + 16);
  if (v75)
  {
    v60 = v6;
    v23 = 0;
    v77 = 0;
    v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v83 = *(v22 + 16);
    v74 = v18 + v24;
    v73 = v14 + 16;
    v72 = v14 + 8;
    v82 = v22;
    v69 = v22 + 32;
    v64 = v2;
    v25 = (v2 + 8);
    v26 = &off_27853F000;
    v27 = v67;
    v28 = v14;
    v71 = v13;
    v68 = v14;
    v70 = v21;
    v63 = v2 + 16;
    v62 = v11;
    while (v23 < *(v21 + 16))
    {
      v29 = *(v28 + 72);
      v79 = v23;
      v30 = v76;
      (*(v28 + 16))(v76, v74 + v29 * v23, v27);
      v31 = sub_224DAC2A8();
      (*(v28 + 8))(v30, v27);
      v84 = [v31 v26[311]];

      if (v83)
      {
        v32 = 0;
        v33 = v69;
        while (v32 < *(v82 + 16))
        {
          sub_224A3317C(v33, &v87);
          sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
          __swift_project_boxed_opaque_existential_1(&v87, v88);
          v34 = sub_224DAE338();
          v35 = sub_224DAF6A8();

          if (v35)
          {
            sub_224A36F98(&v87, v89);
            goto LABEL_13;
          }

          ++v32;
          __swift_destroy_boxed_opaque_existential_1(&v87);
          v33 += 40;
          if (v83 == v32)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v90 = 0;
      memset(v89, 0, sizeof(v89));
LABEL_13:
      sub_224A3796C(v89, &v85, &unk_27D6F4700, &unk_224DB3A10);
      v36 = v71;
      if (v86)
      {
        sub_224A36F98(&v85, &v87);
        v38 = v78[2];
        v37 = v78[3];
        swift_getObjectType();
        v39 = v77;
        v40 = sub_224DAD2B8();
        if (v39)
        {

          v39 = 0;
        }

        else
        {
          v41 = *(v40 + 16);
          if (v41)
          {
            v61 = 0;
            v42 = (*(v64 + 80) + 32) & ~*(v64 + 80);
            v77 = v40;
            v43 = v36;
            v44 = v40 + v42;
            v81 = *(v64 + 72);
            v80 = *(v64 + 16);
            v45 = v65;
            v46 = v62;
            v47 = v66;
            do
            {
              v80(v43, v44, v47);
              sub_224DA9548();
              v48 = *v25;
              (*v25)(v43, v47);
              sub_224ADB390(v46, v45);
              v48(v46, v47);
              v44 += v81;
              --v41;
            }

            while (v41);

            v27 = v67;
            v26 = &off_27853F000;
            v39 = v61;
          }

          else
          {
          }
        }

        v50 = v78[4];
        v49 = v78[5];
        swift_getObjectType();
        v51 = sub_224DAD2B8();
        if (v39)
        {

          __swift_destroy_boxed_opaque_existential_1(&v87);
          sub_224A3311C(v89, &unk_27D6F4700, &unk_224DB3A10);
          v77 = 0;
        }

        else
        {
          v77 = 0;
          v52 = *(v51 + 16);
          if (v52)
          {
            v53 = (*(v64 + 80) + 32) & ~*(v64 + 80);
            v61 = v51;
            v54 = v51 + v53;
            v80 = *(v64 + 72);
            v81 = *(v64 + 16);
            v55 = v66;
            v56 = v62;
            v57 = v65;
            v58 = v60;
            do
            {
              v81(v58, v54, v55);
              sub_224DA9548();
              v59 = *v25;
              (*v25)(v58, v55);
              sub_224ADB390(v56, v57);
              v59(v56, v55);
              v54 += v80;
              --v52;
            }

            while (v52);

            v27 = v67;
            v26 = &off_27853F000;
          }

          else
          {
          }

          __swift_destroy_boxed_opaque_existential_1(&v87);
          sub_224A3311C(v89, &unk_27D6F4700, &unk_224DB3A10);
        }

        v28 = v68;
      }

      else
      {

        sub_224A3311C(v89, &unk_27D6F4700, &unk_224DB3A10);
        sub_224A3311C(&v85, &unk_27D6F4700, &unk_224DB3A10);
      }

      v21 = v70;
      v23 = v79 + 1;
      if (v79 + 1 == v75)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_224C8C6F0()
{
  v1 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v51 - v4;
  v5 = sub_224DA9688();
  v56 = *(v5 - 1);
  v6 = *(v56 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v52 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  v18 = sub_224DAC678();
  v19 = v0[28];
  v20 = v0[29];
  v68 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 25, v19);
  v21 = (*(v20 + 24))(768, v19, v20);
  if (v21)
  {
    v22 = sub_224A7B208(v21);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v82 = MEMORY[0x277D84FA0];
  if (v22 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v62 = v12;
    v63 = v9;
    v66 = v5;
    v24 = 0;
    v70 = v22 & 0xC000000000000001;
    v74 = *(v18 + 16);
    v65 = v22 & 0xFFFFFFFFFFFFFF8;
    v64 = v22 + 32;
    v67 = v18 + 32;
    v61 = (v56 + 8);
    v57 = (v56 + 48);
    v51 = (v56 + 32);
    v55 = v18;
    v54 = v22;
    v69 = i;
    v53 = (v56 + 16);
    while (1)
    {
      if (v70)
      {
        v25 = MEMORY[0x22AA5DCC0](v24, v22);
        v26 = __OFADD__(v24, 1);
        v27 = v24 + 1;
        if (v26)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v24 >= *(v65 + 16))
        {
          goto LABEL_37;
        }

        v25 = *(v64 + 8 * v24);
        v26 = __OFADD__(v24, 1);
        v27 = v24 + 1;
        if (v26)
        {
          goto LABEL_36;
        }
      }

      v72 = v27;
      v71 = v25;
      v75 = [v25 controlIdentity];
      if (v74)
      {
        break;
      }

LABEL_20:
      v81 = 0;
      memset(v80, 0, sizeof(v80));
LABEL_22:
      sub_224A3796C(v80, &v76, &unk_27D6F4700, &unk_224DB3A10);
      v24 = v72;
      if (v77)
      {
        sub_224A36F98(&v76, &v78);
        v32 = v68[2];
        v31 = v68[3];
        swift_getObjectType();
        v33 = sub_224DAD2B8();
        if (v1)
        {

          __swift_destroy_boxed_opaque_existential_1(&v78);
          sub_224A3311C(v80, &unk_27D6F4700, &unk_224DB3A10);
          v1 = 0;
          goto LABEL_8;
        }

        v34 = *(v33 + 16);
        if (v34)
        {
          v58 = 0;
          v35 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v59 = v33;
          v36 = v33 + v35;
          v73 = *(v56 + 72);
          v9 = *(v56 + 16);
          v37 = v66;
          v38 = v63;
          v39 = v16;
          v40 = v62;
          v5 = v53;
          v41 = v61;
          do
          {
            (v9)(v39, v36, v37);
            sub_224DA9548();
            sub_224ADB390(v40, v38);
            v42 = *v41;
            (*v41)(v40, v37);
            v42(v39, v37);
            v36 += v73;
            --v34;
          }

          while (v34);

          v16 = v39;
          v18 = v55;
          v22 = v54;
          v1 = v58;
        }

        else
        {
        }

        v43 = v60;
        v12 = v71;
        sub_224C8D414(v71, v60);
        v44 = v66;
        if ((*v57)(v43, 1, v66) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1(&v78);
          sub_224A3311C(v80, &unk_27D6F4700, &unk_224DB3A10);
          v45 = v43;
          v46 = &unk_27D6F4680;
          v47 = &unk_224DB4610;
        }

        else
        {
          v9 = v52;
          (*v51)(v52, v43, v44);
          v48 = v63;
          sub_224DA9548();
          v5 = v62;
          sub_224ADB390(v62, v48);

          v49 = *v61;
          (*v61)(v5, v44);
          v49(v9, v44);
          __swift_destroy_boxed_opaque_existential_1(&v78);
          v45 = v80;
          v46 = &unk_27D6F4700;
          v47 = &unk_224DB3A10;
        }

        sub_224A3311C(v45, v46, v47);
        v24 = v72;
        if (v72 == v69)
        {
LABEL_34:

          return v82;
        }
      }

      else
      {
        sub_224A3311C(v80, &unk_27D6F4700, &unk_224DB3A10);

        sub_224A3311C(&v76, &unk_27D6F4700, &unk_224DB3A10);
LABEL_8:
        if (v24 == v69)
        {
          goto LABEL_34;
        }
      }
    }

    v28 = 0;
    v29 = v67;
    while (v28 < *(v18 + 16))
    {
      sub_224A3317C(v29, &v78);
      v9 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(&v78, v79);
      v5 = sub_224DAE338();
      v12 = [v75 extensionIdentity];
      v30 = sub_224DAF6A8();

      if (v30)
      {
        sub_224A36F98(&v78, v80);
        goto LABEL_22;
      }

      ++v28;
      __swift_destroy_boxed_opaque_existential_1(&v78);
      v29 += 40;
      if (v74 == v28)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_224C8CED0()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = (&v54 - v6);
  v63 = sub_224DA9688();
  v7 = *(v63 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v63);
  v60 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v54 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v73 = MEMORY[0x277D84FA0];
  v18 = v0[18];
  v19 = __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  v20 = sub_224DAC678();
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v3[2];
    v66 = v3[3];
    v67 = v22;
    ObjectType = swift_getObjectType();
    v24 = 0;
    v64 = v20 + 32;
    v65 = ObjectType;
    v25 = (v7 + 8);
    v56 = v7;
    v57 = v3;
    v55 = v20;
    v58 = v21;
    v54 = v7 + 16;
    while (v24 < *(v20 + 16))
    {
      v69 = v24;
      sub_224A3317C(v64 + 40 * v24, v72);
      v19 = v67;
      v26 = sub_224DAD2B8();
      if (v2)
      {

        __swift_destroy_boxed_opaque_existential_1(v72);
        v2 = 0;
      }

      else
      {
        v19 = v26;
        __swift_destroy_boxed_opaque_existential_1(v72);
        v27 = *(v19 + 2);
        if (v27)
        {
          v61 = 0;
          v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v59 = v19;
          v29 = v19 + v28;
          v30 = *(v7 + 72);
          v70 = *(v7 + 16);
          v71 = v30;
          v31 = v62;
          v32 = v63;
          do
          {
            v70(v17, v29, v32);
            sub_224DA9548();
            sub_224ADB390(v15, v31);
            v19 = *v25;
            (*v25)(v15, v32);
            v19(v17, v32);
            v29 += v71;
            --v27;
          }

          while (v27);

          v7 = v56;
          v3 = v57;
          v2 = v61;
          v20 = v55;
        }

        else
        {
        }

        v21 = v58;
      }

      v24 = v69 + 1;
      if (v69 + 1 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    result = sub_224DAF838();
    v36 = result;
    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

LABEL_13:

  v33 = v3[28];
  v34 = v3[29];
  __swift_project_boxed_opaque_existential_1(v3 + 25, v33);
  result = (*(v34 + 24))(768, v33, v34);
  if (result)
  {
    v21 = sub_224A7B208(result);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v19 = v68;
  v61 = v2;
  if (v21 >> 62)
  {
    goto LABEL_28;
  }

  v36 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
LABEL_29:

    return v73;
  }

LABEL_18:
  if (v36 >= 1)
  {
    v71 = v15;
    v37 = 0;
    v38 = v21 & 0xC000000000000001;
    v39 = v7;
    v40 = (v7 + 48);
    v66 = (v39 + 8);
    v67 = (v39 + 32);
    v41 = v63;
    v69 = v21;
    v70 = (v21 & 0xC000000000000001);
    do
    {
      if (v38)
      {
        v52 = MEMORY[0x22AA5DCC0](v37, v21);
      }

      else
      {
        v52 = *(v21 + 8 * v37 + 32);
      }

      v53 = v52;
      sub_224C8D414(v52, v19);
      v19 = v68;
      if ((*v40)(v68, 1, v41) == 1)
      {

        sub_224A3311C(v19, &unk_27D6F4680, &unk_224DB4610);
      }

      else
      {
        v42 = v60;
        (*v67)(v60, v19, v41);
        v43 = v40;
        v44 = v36;
        v45 = v3;
        v46 = v62;
        sub_224DA9548();
        v47 = v71;
        v48 = v46;
        v3 = v45;
        v36 = v44;
        v40 = v43;
        sub_224ADB390(v71, v48);

        v49 = *v66;
        v50 = v47;
        v41 = v63;
        (*v66)(v50, v63);
        v51 = v42;
        v21 = v69;
        v38 = v70;
        v49(v51, v41);
        v19 = v68;
      }

      ++v37;
    }

    while (v36 != v37);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_224C8D414@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = sub_224DAB258();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v62 - v11);
  v13 = sub_224DAC2B8();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v62 - v19;
  v21 = sub_224DA9688();
  v72 = *(v21 - 8);
  v22 = *(v72 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v63 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v64 = &v62 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v62 - v27;
  v30 = v2[2];
  v29 = v2[3];
  v71 = v2;
  swift_getObjectType();
  v66 = a1;
  v31 = [a1 controlIdentity];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
  sub_224C86DA4(v31, v12, v16);

  sub_224A3311C(v12, &qword_27D6F56C0, &unk_224DB3580);
  v33 = *(v29 + 8);
  v34 = v20;
  sub_224DACEF8();
  v35 = v71;
  v67 = v28;
  v36 = v65;
  v37 = v74;
  v38 = v75;
  (*(v69 + 8))(v16, v70);
  v39 = v72;
  v40 = v20;
  v41 = (*(v72 + 48))(v20, 1, v21);
  v42 = v21;
  if (v41 == 1)
  {
    sub_224A3311C(v34, &unk_27D6F4680, &unk_224DB4610);
    v43 = 1;
    v44 = v73;
  }

  else
  {
    v46 = v67;
    (*(v39 + 32))(v67, v40, v21);
    (*(v37 + 16))(v36, v35 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v38);
    v47 = v64;
    (*(v39 + 16))(v64, v46, v21);
    v48 = sub_224DAB228();
    v49 = sub_224DAF2A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v68 = v21;
      v51 = v50;
      v70 = v50;
      v71 = swift_slowAlloc();
      v76 = v71;
      *v51 = 136446210;
      v52 = v63;
      sub_224DA9548();
      sub_224C8DD50(&qword_281351A70, MEMORY[0x277CC9260]);
      v53 = sub_224DAFD28();
      v55 = v54;
      v56 = *(v39 + 8);
      v56(v52, v68);
      v56(v47, v68);
      v57 = sub_224A33F74(v53, v55, &v76);

      v58 = v70;
      *(v70 + 4) = v57;
      v46 = v67;
      _os_log_impl(&dword_224A2F000, v48, v49, "Protecting assetLibrariesDir for configured control %{public}s", v58, 0xCu);
      v59 = v71;
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x22AA5EED0](v59, -1, -1);
      v42 = v68;
      MEMORY[0x22AA5EED0](v58, -1, -1);

      (*(v74 + 8))(v65, v75);
    }

    else
    {

      v56 = *(v39 + 8);
      v56(v47, v21);
      (*(v74 + 8))(v36, v75);
    }

    v60 = v46;
    v61 = v73;
    sub_224DA9548();
    v56(v60, v42);
    v44 = v61;
    v43 = 0;
  }

  return (*(v39 + 56))(v44, v43, 1, v42);
}

uint64_t sub_224C8DC38()
{
  v1 = *v0;
  sub_224C8BF10();
  v3 = v2;
  v4 = sub_224C8C6F0();
  return sub_224AD6960(v4, v3);
}

uint64_t sub_224C8DCA0(uint64_t a1)
{
  result = sub_224C8DD50(&qword_281359B88, type metadata accessor for LiveControlService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224C8DCF8(uint64_t a1)
{
  result = sub_224C8DD50(&qword_281359B78, type metadata accessor for LiveControlService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224C8DD50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224C8DDD4(void *a1, uint64_t a2, void *a3, void (**a4)(void, void))
{
  v128 = a2;
  v132 = a1;
  v6 = sub_224DAE6E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v127 = &v114 - v13;
  v126 = sub_224DA9908();
  v125 = *(v126 - 8);
  v14 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_224DA9878();
  v122 = *(v123 - 1);
  v16 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v138 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for ExtensionTask.Identifier(0);
  v21 = *(*(v120 - 1) + 64);
  v22 = MEMORY[0x28223BE20](v120);
  v129 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v130 = (&v114 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = (&v114 - v27);
  v29 = sub_224DAC2B8();
  v136 = *(v29 - 8);
  v137 = v29;
  v30 = *(v136 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_224BFDE1C;
  *(v34 + 24) = v33;
  v133 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  _Block_copy(a4);
  v134 = v33;
  v36 = v132;

  sub_224C86DA4(v36, v28, v32);
  sub_224A3311C(v28, &qword_27D6F56C0, &unk_224DB3580);
  v131 = a3;
  v37 = a3[19];
  v135 = v32;
  v38 = sub_224DAC168();
  if (v38 && (v39 = sub_224D5D26C(v38), , v39))
  {

    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v40 = sub_224DAB258();
    __swift_project_value_buffer(v40, qword_281364D90);
    v41 = v36;
    v42 = v128;

    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v141 = v47;
      *v45 = 138543618;
      *(v45 + 4) = v41;
      *v46 = v41;
      *(v45 + 12) = 2082;
      v139 = v42;
      sub_224DA9FA8();
      sub_224C8DD50(&qword_27D6F5BC0, MEMORY[0x277CF9F80]);
      v48 = v41;
      v49 = sub_224DAFD28();
      v51 = sub_224A33F74(v49, v50, &v141);

      *(v45 + 14) = v51;
      _os_log_impl(&dword_224A2F000, v43, v44, "Updating state requested for control: %{public}@ to %{public}s...", v45, 0x16u);
      sub_224A3311C(v46, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x22AA5EED0](v47, -1, -1);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    v52 = v41;
    v53 = sub_224C83DFC(v52);
    v54 = v130;
    *v130 = v52;
    v54[1] = v53;
    v132 = v52;
    v55 = v54;
    swift_storeEnumTagMultiPayload();
    v120 = type metadata accessor for ExtensionTask.Identifier;
    sub_224A4152C(v55, v129, type metadata accessor for ExtensionTask.Identifier);
    v114 = [v52 extensionIdentity];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    (*(*(v56 - 8) + 56))(v138, 1, 1, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
    v57 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_224DB8BC0;
    v61 = v60 + v59;
    v62 = sub_224DAE8B8();
    v63 = *(v62 - 8);
    v64 = *(v63 + 56);
    v64(v61, 4, 5, v62);
    v64(v61 + v58, 3, 5, v62);
    (*(v63 + 104))(v61 + 2 * v58, *MEMORY[0x277CE3D20], v62);
    v64(v61 + 2 * v58, 0, 5, v62);
    v115 = type metadata accessor for ExtensionTask(0);
    v65 = objc_allocWithZone(v115);
    sub_224DAE908();
    v66 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    *&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
    v67 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    v116 = sub_224DAC938();
    v117 = *(v116 - 8);
    v68 = *(v117 + 56);
    v118 = v117 + 56;
    v119 = v68;
    v68(&v65[v67], 1, 1, v116);
    v69 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
    *v69 = 0;
    v69[1] = 0;
    v70 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    *v70 = 0;
    v70[1] = 0;
    v71 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
    *v71 = 0;
    v71[1] = 0;
    v72 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    *v72 = 0;
    v72[1] = 0;
    v73 = v121;
    sub_224DA9868();
    (*(v122 + 32))(&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v73, v123);
    v74 = v114;
    *&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v114;
    sub_224A4152C(v138, &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
    swift_beginAccess();
    v75 = *&v65[v66];
    *&v65[v66] = v60;
    v123 = v74;

    v76 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
    *v76 = 1;
    v76[8] = 0;
    v77 = v129;
    sub_224A4152C(v129, &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v120);
    v78 = v124;
    sub_224DA98F8();
    v79 = v125;
    v80 = v126;
    (*(v125 + 16))(&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v78, v126);
    v139 = sub_224DA98E8();
    sub_224A3F6A4();
    sub_224DAEF18();
    v81 = sub_224A3D19C(8);
    v83 = v82;
    v85 = v84;
    v87 = v86;

    v88 = MEMORY[0x22AA5D1C0](v81, v83, v85, v87);
    v90 = v89;

    v91 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    *v91 = v88;
    v91[1] = v90;
    v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
    v140.receiver = v65;
    v140.super_class = v115;
    v92 = objc_msgSendSuper2(&v140, sel_init);

    (*(v79 + 8))(v78, v80);
    sub_224A3D358(v138, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    sub_224A3D358(v77, type metadata accessor for ExtensionTask.Identifier);
    v93 = v127;
    v94 = v116;
    (*(v117 + 104))(v127, *MEMORY[0x277CF9AE8], v116);
    v119(v93, 0, 1, v94);
    v95 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    swift_beginAccess();
    sub_224A838C0(v93, &v92[v95], &qword_27D6F4030, &unk_224DB5630);
    swift_endAccess();
    v96 = swift_allocObject();
    v97 = v132;
    v98 = v128;
    *(v96 + 16) = v132;
    *(v96 + 24) = v98;
    v99 = &v92[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    v100 = *&v92[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    v101 = *&v92[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
    *v99 = sub_224C8F2E4;
    v99[1] = v96;
    v102 = v97;

    sub_224A3D418(v100);
    v103 = swift_allocObject();
    *(v103 + 2) = v102;
    *(v103 + 3) = sub_224C900D0;
    v104 = v131;
    *(v103 + 4) = v133;
    *(v103 + 5) = v104;
    v105 = &v92[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    v106 = *&v92[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    v107 = *&v92[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
    *v105 = sub_224C8F2EC;
    v105[1] = v103;
    v108 = v102;

    sub_224A3D418(v106);
    v109 = v104[51];
    v110 = v104[52];
    __swift_project_boxed_opaque_existential_1(v104 + 48, v109);
    (*(v110 + 16))(v92, v109, v110);

    sub_224A3D358(v130, type metadata accessor for ExtensionTask.Identifier);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v7 + 104))(v10, *MEMORY[0x277CE3BF8], v6);
    v111 = sub_224DAF638();
    _Block_copy(a4);
    v112 = sub_224DA9518();
    (a4)[2](a4, v112);

    _Block_release(a4);
  }

  (*(v136 + 8))(v135, v137);
}

void sub_224C8ECA0(uint64_t a1, void *a2, const void *a3)
{
  v54 = a2;
  v5 = sub_224DAA548();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAE718();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAE738();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_224B67834;
  *(v21 + 24) = v20;
  v52 = v21;
  _Block_copy(a3);

  v53 = a3;
  _Block_copy(a3);

  sub_224DAA8B8();
  v22 = sub_224DAA0D8();

  v51 = sub_224DAA8C8();
  v47 = a1;
  sub_224DAA8D8();
  sub_224DAE728();
  v23 = *(v14 + 8);
  v45 = v14 + 8;
  v46 = v13;
  v23(v19, v13);
  v24 = (*(v9 + 88))(v12, v8);
  if (v24 == *MEMORY[0x277CE3C70])
  {
    v43 = v23;
    (*(v9 + 8))(v12, v8);
    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281364D90);
    v26 = v22;
    v27 = sub_224DAB228();
    v28 = sub_224DAF2A8();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v52;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      *(v31 + 4) = v26;
      *v32 = v26;
      v33 = v26;
      _os_log_impl(&dword_224A2F000, v27, v28, "[%{public}@]: Performing control action with the intent", v31, 0xCu);
      sub_224A3311C(v32, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    v34 = __swift_project_boxed_opaque_existential_1(v54 + 35, v54[38]);
    v36 = v48;
    v35 = v49;
    v37 = v50;
    (*(v49 + 104))(v48, *MEMORY[0x277CFA0A0], v50);
    v38 = v44;
    sub_224DAA8D8();
    v39 = swift_allocObject();
    *(v39 + 16) = sub_224C8F2AC;
    *(v39 + 24) = v30;
    v40 = *v34;

    sub_224B92DFC(v26, v36, v38, sub_224C8F2B4, v39);

    v43(v38, v46);
    (*(v35 + 8))(v36, v37);
    v41 = v53;
    goto LABEL_9;
  }

  if (v24 == *MEMORY[0x277CE3C68])
  {
    v41 = v53;
    _Block_copy(v53);

    sub_224C8DDD4(v22, v51, v54, v41);
    _Block_release(v41);

LABEL_9:

    _Block_release(v41);
    return;
  }

  v42 = v53;
  (*(v53 + 2))(v53, 0);

  _Block_release(v42);
  _Block_release(v42);
  sub_224DAFB58();
  __break(1u);
}

uint64_t sub_224C8F2B4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return v3(a1);
}

uint64_t sub_224C8F308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BE8, &qword_224DBCEE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_93Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}