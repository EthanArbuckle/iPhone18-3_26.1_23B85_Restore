uint64_t sub_230F23340()
{
  v1 = v0[84];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = v0[82];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  v11 = v0[73];
  v12 = v0[72];
  v13 = v0[69];
  v14 = v0[68];
  v17 = v0[67];
  v18 = v0[66];
  v19 = v0[65];
  v20 = v0[89];

  v15 = v0[1];

  return v15();
}

uint64_t sub_230F2348C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 624);

  swift_unknownObjectRelease();
  sub_230F26780(v5, type metadata accessor for DDUIPermissionRequest);
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 656);
  v7 = *(v0 + 632);
  v8 = *(v0 + 624);
  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 592);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v18 = *(v0 + 536);
  v19 = *(v0 + 528);
  v20 = *(v0 + 520);
  v21 = *(v0 + 792);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_230F23604()
{
  v1 = v0[104];
  v2 = v0[102];
  v25 = v0[101];
  v3 = v0[100];
  v4 = v0[88];
  v5 = v0[84];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[78];
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_230F26780(v9, type metadata accessor for DDUIPermissionRequest);
  (*(v7 + 8))(v6, v8);

  v10 = v0[82];
  v11 = v0[79];
  v12 = v0[78];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[74];
  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[69];
  v19 = v0[68];
  v22 = v0[67];
  v23 = v0[66];
  v24 = v0[65];
  v26 = v0[104];

  v20 = v0[1];

  return v20();
}

uint64_t sub_230F237A4()
{
  v1 = v0[110];
  v2 = v0[109];
  v25 = v0[108];
  v3 = v0[107];
  v4 = v0[88];
  v5 = v0[84];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[78];
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_230F26780(v9, type metadata accessor for DDUIPermissionRequest);
  (*(v7 + 8))(v6, v8);

  v10 = v0[82];
  v11 = v0[79];
  v12 = v0[78];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[74];
  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[69];
  v19 = v0[68];
  v22 = v0[67];
  v23 = v0[66];
  v24 = v0[65];
  v26 = v0[110];

  v20 = v0[1];

  return v20();
}

unint64_t sub_230F23944()
{
  result = qword_27DB823F0;
  if (!qword_27DB823F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB823F0);
  }

  return result;
}

unint64_t sub_230F23998()
{
  result = qword_27DB823F8;
  if (!qword_27DB823F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB823F8);
  }

  return result;
}

uint64_t sub_230F23A0C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_230F23A44()
{
  result = qword_27DB82418;
  if (!qword_27DB82418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82418);
  }

  return result;
}

unint64_t sub_230F23A98()
{
  result = qword_27DB82440;
  if (!qword_27DB82440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82440);
  }

  return result;
}

unint64_t sub_230F23AEC()
{
  result = qword_27DB82448;
  if (!qword_27DB82448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82448);
  }

  return result;
}

uint64_t sub_230F23B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[104] = v4;
  v5[103] = a4;
  v5[102] = a3;
  v5[101] = a2;
  v5[100] = a1;
  return MEMORY[0x2822009F8](sub_230F23B70, v4, 0);
}

uint64_t sub_230F23B70()
{
  v62 = v0;
  if (qword_27DB81D10 != -1)
  {
    swift_once();
  }

  v1 = v0[101];
  v2 = sub_230F391F8();
  v0[105] = __swift_project_value_buffer(v2, qword_27DB823A8);

  v3 = sub_230F391D8();
  v4 = sub_230F397D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[101];
    v6 = v0[100];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v61 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_230F0F28C(v6, v5, &v61);
    _os_log_impl(&dword_230EF9000, v3, v4, "request to open application for bundleID: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x231920D30](v8, -1, -1);
    MEMORY[0x231920D30](v7, -1, -1);
  }

  v9 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[106] = v9;
  if (v9)
  {
    v10 = v9;
    v11 = v0[104];
    v12 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
    v0[107] = v12;
    v13 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:v12 responder:0];
    v0[108] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825C0, &qword_230F3D718);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230F3C8E0;
    v60 = *MEMORY[0x277D0ABD0];
    v0[87] = sub_230F39608();
    v0[88] = v15;
    sub_230F39928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825C8, &qword_230F3D720);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_230F3C8F0;
    *(v16 + 32) = v13;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825D0, &qword_230F3D728);
    *(inited + 96) = v59;
    *(inited + 72) = v16;
    v58 = *MEMORY[0x277D0ABF0];
    v0[89] = sub_230F39608();
    v0[90] = v17;
    v57 = v13;
    sub_230F39928();
    *(inited + 168) = MEMORY[0x277D839B0];
    *(inited + 144) = 0;
    v18 = *MEMORY[0x277D0AC20];
    v0[91] = sub_230F39608();
    v0[92] = v19;
    sub_230F39928();
    type metadata accessor for FBSOpenApplicationLaunchIntent(0);
    *(inited + 240) = v20;
    *(inited + 216) = 4;
    sub_230F25354(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825D8, &qword_230F3D730);
    swift_arrayDestroy();
    v21 = sub_230F39588();

    v22 = objc_opt_self();
    v23 = [v22 optionsWithDictionary_];

    v24 = *(v11 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_suspendedBundleIdentifiers);
    v25 = (v24 + 40);
    v26 = *(v24 + 16) + 1;
    while (--v26)
    {
      if (*(v25 - 1) == v0[100] && *v25 == v0[101])
      {
        goto LABEL_14;
      }

      v25 += 2;
      if (sub_230F39B28())
      {
        v28 = v0[101];
LABEL_14:
        v56 = v22;

        v29 = sub_230F391D8();
        v30 = sub_230F397D8();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = v0[101];
          v32 = v0[100];
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v61 = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_230F0F28C(v32, v31, &v61);
          _os_log_impl(&dword_230EF9000, v29, v30, "setting fbs applications to launch suspended for bundleID: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v34);
          MEMORY[0x231920D30](v34, -1, -1);
          MEMORY[0x231920D30](v33, -1, -1);
        }

        v35 = v0[103];
        v36 = v0[102];
        v37 = swift_initStackObject();
        *(v37 + 16) = xmmword_230F3C8E0;
        v0[93] = sub_230F39608();
        v0[94] = v38;
        sub_230F39928();
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_230F3C8F0;
        *(v39 + 32) = v57;
        *(v37 + 96) = v59;
        *(v37 + 72) = v39;
        v0[95] = sub_230F39608();
        v0[96] = v40;
        v41 = v57;
        sub_230F39928();
        *(v37 + 168) = MEMORY[0x277D839B0];
        *(v37 + 144) = 1;
        v42 = *MEMORY[0x277D0AC38];
        v0[97] = sub_230F39608();
        v0[98] = v43;
        sub_230F39928();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825E0, &qword_230F3D738);
        v44 = swift_initStackObject();
        *(v44 + 16) = xmmword_230F3C6D0;
        v45 = *MEMORY[0x277D76690];
        *(v44 + 32) = *MEMORY[0x277D76690];
        *(v44 + 40) = v36;
        *(v44 + 48) = v35;

        v46 = v45;
        v47 = sub_230F25490(v44);
        swift_setDeallocating();
        sub_230F0D798(v44 + 32, &qword_27DB825E8, &qword_230F3D740);
        *(v37 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825F0, &qword_230F3D748);
        *(v37 + 216) = v47;
        sub_230F25354(v37);
        swift_setDeallocating();
        swift_arrayDestroy();
        v48 = sub_230F39588();

        v49 = [v56 optionsWithDictionary_];

        v23 = v49;
        break;
      }
    }

    v0[109] = v23;
    v50 = v0[101];
    v51 = v0[100];
    v52 = sub_230F395D8();
    v0[110] = v52;
    v0[2] = v0;
    v0[7] = v0 + 99;
    v0[3] = sub_230F243B4;
    v53 = swift_continuation_init();
    v0[79] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825F8, &qword_230F3D750);
    v0[76] = v53;
    v0[72] = MEMORY[0x277D85DD0];
    v0[73] = 1107296256;
    v0[74] = sub_230F24714;
    v0[75] = &block_descriptor_97;
    [v10 openApplication:v52 withOptions:v23 completion:v0 + 72];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v54 = v0[1];

    return v54();
  }
}

uint64_t sub_230F243B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 888) = v3;
  v4 = *(v1 + 832);
  if (v3)
  {
    v5 = sub_230F24670;
  }

  else
  {
    v5 = sub_230F244D4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230F244D4()
{
  v19 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 840);
  v3 = *(v0 + 808);

  v4 = sub_230F391D8();
  v5 = sub_230F397D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 872);
  v8 = *(v0 + 864);
  v9 = *(v0 + 856);
  v10 = *(v0 + 848);
  if (v6)
  {
    v17 = *(v0 + 848);
    v11 = *(v0 + 808);
    v12 = *(v0 + 800);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_230F0F28C(v12, v11, &v18);
    _os_log_impl(&dword_230EF9000, v4, v5, "did open application for bundleID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x231920D30](v14, -1, -1);
    MEMORY[0x231920D30](v13, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_230F24670()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[106];
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[111];

  return v7();
}

uint64_t sub_230F24714(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB822C8, &unk_230F3C920);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t static DDUIServiceActor.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DDUIServiceActor(0);
  sub_230F39378();
  sub_230F20828(&qword_2814AF418, MEMORY[0x277CD8E58]);
  sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor);
  result = sub_230F390E8();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_id;
    v8 = sub_230F393E8();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t DDUIServiceActor.deinit()
{
  v1 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_id;
  v2 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_actorSystem;
  sub_230F39378();
  sub_230F20828(&qword_2814AF418, MEMORY[0x277CD8E58]);
  sub_230F39108();
  v3 = sub_230F393E8();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + v2);

  v5 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_suspendedBundleIdentifiers);

  v6 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_scenelessBundleIdentifiers);

  v7 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 16);
  v8 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 24);
  v9 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 32);
  v10 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 40);
  sub_230F26914(*(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails), *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DDUIServiceActor.__deallocating_deinit()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_id;
  if (is_remote)
  {
    v3 = sub_230F393E8();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    v4 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_actorSystem);
  }

  else
  {
    v5 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_actorSystem;
    sub_230F39378();
    sub_230F20828(&qword_2814AF418, MEMORY[0x277CD8E58]);
    sub_230F39108();
    v6 = sub_230F393E8();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = *(v0 + v5);

    v8 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_suspendedBundleIdentifiers);

    v9 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_scenelessBundleIdentifiers);

    v10 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 16);
    v11 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 24);
    v12 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 32);
    v13 = *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 40);
    sub_230F26914(*(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails), *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 8));
  }

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t DDUIServiceActor.hashValue.getter()
{
  sub_230F39BA8();
  type metadata accessor for DDUIServiceActor(0);
  sub_230F20828(&unk_2814AF550, type metadata accessor for DDUIServiceActor);
  sub_230F395B8();
  return sub_230F39BC8();
}

uint64_t DDUIServiceActor.unownedExecutor.getter()
{
  if ((sub_230F39178() & 1) == 0)
  {
    type metadata accessor for DDUIServiceActor(0);
    sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor);
    return sub_230F390C8();
  }

  return v0;
}

uint64_t sub_230F24D1C()
{
  if ((sub_230F39178() & 1) == 0)
  {
    type metadata accessor for DDUIServiceActor(0);
    return sub_230F390C8();
  }

  return v0;
}

uint64_t sub_230F24D70(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for DDUIServiceActor(0);
  sub_230F39378();
  sub_230F20828(&qword_2814AF418, MEMORY[0x277CD8E58]);
  result = sub_230F390E8();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_id;
    v8 = sub_230F393E8();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_actorSystem) = v4;

    return v6;
  }

  return result;
}

uint64_t sub_230F24EA0()
{
  v2 = *v0;
  sub_230F39BA8();
  type metadata accessor for DDUIServiceActor(0);
  sub_230F395B8();
  return sub_230F39BC8();
}

uint64_t sub_230F24F00()
{
  v1 = *v0;
  type metadata accessor for DDUIServiceActor(0);
  sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor);
  return sub_230F39148();
}

uint64_t sub_230F24F7C()
{
  v2 = *v0;
  sub_230F39BA8();
  type metadata accessor for DDUIServiceActor(0);
  sub_230F395B8();
  return sub_230F39BC8();
}

uint64_t sub_230F24FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_id;
  v5 = sub_230F393E8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_230F25054(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for DDUIServiceActor(0);
  v5 = sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor);

  return MEMORY[0x2821FF4E0](v2, v3, v4, v5);
}

uint64_t sub_230F250E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DDUIServiceActor(0);
  sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor);
  sub_230F20828(&qword_27DB825A8, MEMORY[0x277CD9070]);
  result = sub_230F39168();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_230F251B0()
{
  v1 = *v0;
  type metadata accessor for DDUIServiceActor(0);
  sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor);
  sub_230F20828(&qword_27DB825A0, MEMORY[0x277CD9070]);
  return sub_230F39158();
}

id sub_230F25278(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_230F395D8();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_230F39048();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_230F25354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82608, &qword_230F3D760);
    v3 = sub_230F39A18();
    v4 = a1 + 32;

    while (1)
    {
      sub_230F27A64(v4, v13, &qword_27DB825D8, &qword_230F3D730);
      result = sub_230F0F940(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_230F27ACC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_230F25490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82600, &qword_230F3D758);
    v3 = sub_230F39A18();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v5;
      result = sub_230F0F8AC(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
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

uint64_t sub_230F2558C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82588, &qword_230F3D6F0);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82590, &qword_230F3D6F8);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82598, &unk_230F3D700);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_230F2791C();
  v17 = v35;
  sub_230F39BD8();
  if (!v17)
  {
    v35 = v11;
    v18 = sub_230F39AA8();
    v19 = v18;
    v20 = v10;
    if (*(v18 + 16) == 1)
    {
      if (*(v18 + 32))
      {
        v40 = 1;
        sub_230F27970();
        sub_230F39A48();
        v21 = v35;
        (*(v32 + 8))(v5, v33);
        (*(v21 + 8))(v14, v20);
        swift_unknownObjectRelease();
        v6 = 0;
      }

      else
      {
        v39 = 0;
        sub_230F279C4();
        v26 = v9;
        sub_230F39A48();
        v27 = v35;
        v38 = 0;
        v28 = v6;
        v6 = sub_230F39A78();
        v31 = v30;
        v32 = v20;
        v33 = v19;
        v37 = 1;
        sub_230F39A78();
        (*(v34 + 8))(v26, v28);
        (*(v27 + 8))(v14, v32);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v22 = sub_230F399A8();
      swift_allocError();
      v24 = v23;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82170, &unk_230F3C6B0) + 48);
      *v24 = &type metadata for TapLaunchRequest.Kind;
      sub_230F39A58();
      sub_230F39998();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v35 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  return v6;
}

uint64_t sub_230F25AC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_230F39B28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230F40320 == a2 || (sub_230F39B28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_230F39B28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_230F39B28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_230F25C3C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82618, &unk_230F3D770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F23A98();
  sub_230F39BD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v34) = 0;
  v11 = sub_230F39A78();
  v28 = v12;
  LOBYTE(v34) = 1;
  v13 = sub_230F39A78();
  *(&v27 + 1) = v14;
  *&v27 = v13;
  LOBYTE(v29) = 2;
  sub_230F27ADC();
  sub_230F39A98();
  v25 = v34;
  v15 = v35;
  v24 = v15 >> 64;
  v26 = v15;
  v41 = 3;
  v16 = sub_230F39A78();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  *&v29 = v11;
  *(&v29 + 1) = v28;
  v19 = v27;
  v30 = v27;
  v31 = v25;
  v20 = v24;
  *&v32 = v26;
  *(&v32 + 1) = v24;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_230F17CA0(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *&v34 = v11;
  *(&v34 + 1) = v28;
  v35 = v19;
  v36 = v25;
  v37 = v26;
  v38 = v20;
  v39 = v16;
  v40 = v18;
  result = sub_230F17CFC(&v34);
  v22 = v32;
  a2[2] = v31;
  a2[3] = v22;
  a2[4] = v33;
  v23 = v30;
  *a2 = v29;
  a2[1] = v23;
  return result;
}

unint64_t sub_230F25FEC()
{
  result = qword_27DB82458;
  if (!qword_27DB82458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82458);
  }

  return result;
}

unint64_t sub_230F2609C()
{
  result = qword_27DB82460;
  if (!qword_27DB82460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82460);
  }

  return result;
}

uint64_t sub_230F260F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_230F39B28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230F40320 == a2 || (sub_230F39B28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_230F39B28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    return 3;
  }

  else
  {
    v6 = sub_230F39B28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_230F2626C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82610, &qword_230F3D768);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F25FEC();
  sub_230F39BD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_230F39A78();
  v30 = v12;
  LOBYTE(v35[0]) = 1;
  v13 = sub_230F39A78();
  v29 = v14;
  v27 = v13;
  LOBYTE(v35[0]) = 2;
  v26 = sub_230F39A78();
  v28 = v15;
  v37 = 3;
  sub_230F265F8();
  sub_230F39A98();
  (*(v6 + 8))(v9, v5);
  v24 = *(&v36 + 1);
  v25 = v36;
  v17 = v29;
  v16 = v30;
  *&v31 = v11;
  *(&v31 + 1) = v30;
  v18 = v27;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v19 = v26;
  v20 = v28;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  v34 = v36;
  sub_230F17BAC(&v31, v35);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v35[0] = v11;
  v35[1] = v16;
  v35[2] = v18;
  v35[3] = v17;
  v35[4] = v19;
  v35[5] = v20;
  v35[6] = v25;
  v35[7] = v24;
  result = sub_230F17C08(v35);
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  v23 = v34;
  a2[2] = v33;
  a2[3] = v23;
  return result;
}

unint64_t sub_230F265A4()
{
  result = qword_27DB82470;
  if (!qword_27DB82470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82470);
  }

  return result;
}

unint64_t sub_230F265F8()
{
  result = qword_27DB82480;
  if (!qword_27DB82480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82480);
  }

  return result;
}

uint64_t sub_230F2664C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoopConnectionResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230F266B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {
  }

  if (!a5)
  {
  }

  return result;
}

uint64_t sub_230F26718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {
  }

  if (!a5)
  {
  }

  return result;
}

uint64_t sub_230F26780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230F2680C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_230F26874(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_230F26914(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_230F2696C()
{
  result = qword_27DB824C0;
  if (!qword_27DB824C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB824C0);
  }

  return result;
}

unint64_t sub_230F269C4()
{
  result = qword_27DB824C8;
  if (!qword_27DB824C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB824C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDUIError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DDUIError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_230F26D5C()
{
  result = sub_230F390B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21DeviceDiscoveryUICore16TapLaunchRequestV4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_230F26DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_230F26E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230F26ED8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_230F26F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230F26FA8()
{
  result = sub_230F390B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230F27024()
{
  result = sub_230F393E8();
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_230F270FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_230F27158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
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

uint64_t sub_230F271F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230F27244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_230F2729C(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDUINoticeLaunchOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DDUINoticeLaunchOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDUINoticeFailure(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DDUINoticeFailure(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_230F27500()
{
  result = qword_27DB824F8;
  if (!qword_27DB824F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB824F8);
  }

  return result;
}

unint64_t sub_230F27558()
{
  result = qword_27DB82500;
  if (!qword_27DB82500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82500);
  }

  return result;
}

unint64_t sub_230F275B0()
{
  result = qword_27DB82508;
  if (!qword_27DB82508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82508);
  }

  return result;
}

unint64_t sub_230F27608()
{
  result = qword_27DB82510;
  if (!qword_27DB82510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82510);
  }

  return result;
}

unint64_t sub_230F27660()
{
  result = qword_27DB82518;
  if (!qword_27DB82518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82518);
  }

  return result;
}

unint64_t sub_230F276B8()
{
  result = qword_27DB82520;
  if (!qword_27DB82520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82520);
  }

  return result;
}

unint64_t sub_230F27710()
{
  result = qword_27DB82528;
  if (!qword_27DB82528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82528);
  }

  return result;
}

unint64_t sub_230F27768()
{
  result = qword_27DB82530;
  if (!qword_27DB82530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82530);
  }

  return result;
}

unint64_t sub_230F277C0()
{
  result = qword_27DB82538;
  if (!qword_27DB82538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82538);
  }

  return result;
}

unint64_t sub_230F27818()
{
  result = qword_27DB82540;
  if (!qword_27DB82540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82540);
  }

  return result;
}

unint64_t sub_230F27870()
{
  result = qword_27DB82548;
  if (!qword_27DB82548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82548);
  }

  return result;
}

unint64_t sub_230F278C8()
{
  result = qword_27DB82550;
  if (!qword_27DB82550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82550);
  }

  return result;
}

unint64_t sub_230F2791C()
{
  result = qword_27DB82570;
  if (!qword_27DB82570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82570);
  }

  return result;
}

unint64_t sub_230F27970()
{
  result = qword_27DB82578;
  if (!qword_27DB82578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82578);
  }

  return result;
}

unint64_t sub_230F279C4()
{
  result = qword_27DB82580;
  if (!qword_27DB82580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82580);
  }

  return result;
}

unint64_t sub_230F27A18()
{
  result = qword_27DB825B8;
  if (!qword_27DB825B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB825B8);
  }

  return result;
}

uint64_t sub_230F27A64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_230F27ACC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_230F27ADC()
{
  result = qword_27DB82620;
  if (!qword_27DB82620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82620);
  }

  return result;
}

unint64_t sub_230F27B64()
{
  result = qword_27DB82628;
  if (!qword_27DB82628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82628);
  }

  return result;
}

unint64_t sub_230F27BBC()
{
  result = qword_27DB82630;
  if (!qword_27DB82630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82630);
  }

  return result;
}

unint64_t sub_230F27C14()
{
  result = qword_27DB82638;
  if (!qword_27DB82638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82638);
  }

  return result;
}

unint64_t sub_230F27C6C()
{
  result = qword_27DB82640;
  if (!qword_27DB82640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82640);
  }

  return result;
}

unint64_t sub_230F27CC4()
{
  result = qword_27DB82648;
  if (!qword_27DB82648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82648);
  }

  return result;
}

unint64_t sub_230F27D1C()
{
  result = qword_27DB82650;
  if (!qword_27DB82650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82650);
  }

  return result;
}

unint64_t sub_230F27D74()
{
  result = qword_27DB82658;
  if (!qword_27DB82658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82658);
  }

  return result;
}

unint64_t sub_230F27DCC()
{
  result = qword_27DB82660;
  if (!qword_27DB82660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82660);
  }

  return result;
}

uint64_t DDUINoticeLaunchOptions.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DDUINoticeLaunchOptions.deviceName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DDUINoticeLaunchOptions.iconImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DDUINoticeLaunchOptions() + 24);
  v4 = sub_230F394D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DDUINoticeLaunchOptions()
{
  result = qword_27DB82698;
  if (!qword_27DB82698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DDUINoticeLaunchOptions.appName.getter()
{
  v1 = (v0 + *(type metadata accessor for DDUINoticeLaunchOptions() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DDUINoticeLaunchOptions.init(id:deviceName:appName:iconImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for DDUINoticeLaunchOptions();
  v13 = *(v12 + 24);
  v14 = sub_230F394D8();
  result = (*(*(v14 - 8) + 32))(&a8[v13], a7, v14);
  v16 = &a8[*(v12 + 28)];
  *v16 = a5;
  *(v16 + 1) = a6;
  return result;
}

uint64_t sub_230F280CC()
{
  v1 = 25705;
  v2 = 0x67616D496E6F6369;
  if (*v0 != 2)
  {
    v2 = 0x656D614E707061;
  }

  if (*v0)
  {
    v1 = 0x614E656369766564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230F28144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230F28C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230F2816C(uint64_t a1)
{
  v2 = sub_230F28418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F281A8(uint64_t a1)
{
  v2 = sub_230F28418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DDUINoticeLaunchOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82668, "\\k");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F28418();
  sub_230F39BE8();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_230F39AD8();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v21[14] = 1;
    sub_230F39AD8();
    v16 = type metadata accessor for DDUINoticeLaunchOptions();
    v17 = *(v16 + 24);
    v21[13] = 2;
    sub_230F394D8();
    sub_230F2886C(&qword_27DB82678);
    sub_230F39AF8();
    v18 = (v3 + *(v16 + 28));
    v19 = *v18;
    v20 = v18[1];
    v21[12] = 3;
    sub_230F39AD8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_230F28418()
{
  result = qword_27DB82670;
  if (!qword_27DB82670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82670);
  }

  return result;
}

uint64_t DDUINoticeLaunchOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_230F394D8();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82680, &qword_230F3DAA0);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = v26 - v8;
  v10 = type metadata accessor for DDUINoticeLaunchOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F28418();
  v31 = v9;
  v15 = v32;
  sub_230F39BD8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v32 = v10;
  v16 = v28;
  v17 = v29;
  v36 = 0;
  *v13 = sub_230F39A78();
  v13[1] = v18;
  v26[1] = v18;
  v35 = 1;
  v13[2] = sub_230F39A78();
  v13[3] = v19;
  v34 = 2;
  sub_230F2886C(&qword_27DB82688);
  v26[0] = 0;
  sub_230F39A98();
  (*(v17 + 32))(v13 + *(v32 + 24), v6, v3);
  v33 = 3;
  v20 = v13;
  v21 = sub_230F39A78();
  v23 = v22;
  (*(v16 + 8))(v31, v30);
  v24 = (v20 + *(v32 + 28));
  *v24 = v21;
  v24[1] = v23;
  sub_230F288B0(v20, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_230F28914(v20);
}

uint64_t sub_230F2886C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_230F394D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230F288B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDUINoticeLaunchOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230F28914(uint64_t a1)
{
  v2 = type metadata accessor for DDUINoticeLaunchOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DDUINoticeFailure.hashValue.getter()
{
  sub_230F39BA8();
  MEMORY[0x2319200C0](0);
  return sub_230F39BC8();
}

unint64_t sub_230F28A18()
{
  result = qword_27DB82690;
  if (!qword_27DB82690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82690);
  }

  return result;
}

uint64_t sub_230F28AA4()
{
  result = sub_230F394D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_230F28B44()
{
  result = qword_27DB826A8;
  if (!qword_27DB826A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB826A8);
  }

  return result;
}

unint64_t sub_230F28B9C()
{
  result = qword_27DB826B0;
  if (!qword_27DB826B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB826B0);
  }

  return result;
}

unint64_t sub_230F28BF4()
{
  result = qword_27DB826B8;
  if (!qword_27DB826B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB826B8);
  }

  return result;
}

uint64_t sub_230F28C48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_230F39B28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_230F39B28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67616D496E6F6369 && a2 == 0xE900000000000065 || (sub_230F39B28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_230F39B28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_230F28DB4()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_27DB826C0);
  __swift_project_value_buffer(v0, qword_27DB826C0);
  return sub_230F391E8();
}

uint64_t sub_230F28E34()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_27DB826D8);
  v1 = __swift_project_value_buffer(v0, qword_27DB826D8);
  if (qword_27DB81D18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DB826C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_230F28EFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB826F0, &qword_230F3DD10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  type metadata accessor for NameDropIdentity();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = [objc_allocWithZone(MEMORY[0x277D18DB0]) init];
  v5 = sub_230F39748();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_230F11BEC(0, 0, v3, &unk_230F3DE70, v6);

  static NameDropIdentity.shared = v4;
  return result;
}

uint64_t *NameDropIdentity.shared.unsafeMutableAddressor()
{
  if (qword_27DB81D28 != -1)
  {
    swift_once();
  }

  return &static NameDropIdentity.shared;
}

uint64_t static NameDropIdentity.shared.getter()
{
  if (qword_27DB81D28 != -1)
  {
    swift_once();
  }
}

Swift::Void __swiftcall NameDropIdentity.fetchNickname()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB826F0, &qword_230F3DD10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  v5 = sub_230F39748();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_230F11BEC(0, 0, v4, &unk_230F3DD20, v6);
}

uint64_t sub_230F29214()
{
  v1 = *(v0[19] + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_230F29334;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82738, &qword_230F3DE68);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_230F29648;
  v0[13] = &block_descriptor_2;
  v0[14] = v2;
  [v1 nicknameForCurrentUserWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230F29334()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_230F29414, 0, 0);
}

uint64_t sub_230F29414()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[18];

  if (qword_27DB81D20 != -1)
  {
    swift_once();
  }

  v3 = v0[19];
  v4 = sub_230F391F8();
  __swift_project_value_buffer(v4, qword_27DB826D8);

  v5 = sub_230F391D8();
  v6 = sub_230F397D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v1 + 16);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&dword_230EF9000, v5, v6, "Nickname found: %@", v7, 0xCu);
    sub_230F108E4(v8);
    MEMORY[0x231920D30](v8, -1, -1);
    MEMORY[0x231920D30](v7, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_230F29594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230F18650;

  return sub_230F291F4(a1, v4, v5, v6);
}

uint64_t sub_230F29648(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

CNContact_optional __swiftcall NameDropIdentity.contact()()
{
  v2 = sub_230F2CC54();
  if (v2)
  {
    v3 = *(v0 + 16);
    if (v3)
    {
      v4 = v3;
      [v2 mutableCopy];
      sub_230F39888();
      swift_unknownObjectRelease();
      sub_230F183D8(0, &qword_27DB826F8, 0x277CBDB38);
      if (swift_dynamicCast())
      {
        v5 = [v4 firstName];
        if (!v5)
        {
          sub_230F39608();
          v5 = sub_230F395D8();
        }

        [v8 setGivenName_];

        v6 = [v4 lastName];
        if (!v6)
        {
          sub_230F39608();
          v6 = sub_230F395D8();
        }

        [v8 setFamilyName_];

        v2 = v8;
      }

      else
      {
      }
    }
  }

  v7 = v2;
  result.value.super.isa = v7;
  result.is_nil = v1;
  return result;
}

BOOL CNContact.isNameDroppable.getter()
{
  v1 = [v0 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82700, &unk_230F3DD28);
  v2 = sub_230F396C8();

  if (v2 >> 62)
  {
    v3 = sub_230F398D8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    return 1;
  }

  v5 = [v0 phoneNumbers];
  v6 = sub_230F396C8();

  if (v6 >> 62)
  {
    v7 = sub_230F398D8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7 != 0;
}

uint64_t NameDropIdentity.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t vCardContactProvider.contacts()()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_230F39058();
  v18[0] = 0;
  v2 = [v0 contactsWithData:v1 error:v18];

  v3 = v18[0];
  if (v2)
  {
    sub_230F183D8(0, &qword_27DB82710, 0x277CBDA58);
    v4 = sub_230F396C8();
    v5 = v3;
  }

  else
  {
    v6 = v18[0];
    v7 = sub_230F39048();

    swift_willThrow();
    if (qword_27DB81D20 != -1)
    {
      swift_once();
    }

    v8 = sub_230F391F8();
    __swift_project_value_buffer(v8, qword_27DB826D8);
    v9 = v7;
    v10 = sub_230F391D8();
    v11 = sub_230F397B8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_230EF9000, v10, v11, "Could not decode vCard: %@", v12, 0xCu);
      sub_230F108E4(v13);
      MEMORY[0x231920D30](v13, -1, -1);
      MEMORY[0x231920D30](v12, -1, -1);
    }

    v4 = MEMORY[0x277D84F90];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_230F29BD8()
{
  v1 = *v0;
  v2 = v0[1];
  return vCardContactProvider.contacts()();
}

uint64_t CNContact.boopPresentedName.getter()
{
  v1 = v0;
  v2 = [v0 givenName];
  v3 = sub_230F39608();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v7 = [v1 familyName];
    v8 = sub_230F39608();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      return 0;
    }
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v1 mutableCopy];
  sub_230F39888();
  swift_unknownObjectRelease();
  sub_230F183D8(0, &qword_27DB826F8, 0x277CBDB38);
  swift_dynamicCast();
  v13 = sub_230F395D8();
  [v38 setMiddleName_];

  v14 = sub_230F395D8();
  [v38 setNamePrefix_];

  v15 = sub_230F395D8();
  [v38 setNameSuffix_];

  v16 = [v12 stringFromContact_];
  if (!v16)
  {

    return 0;
  }

  v17 = v16;
  v18 = sub_230F39608();
  v19 = CNIsChineseJapaneseKoreanString();

  if (v19)
  {
  }

  else
  {

    v21 = [v1 givenName];
    v22 = sub_230F39608();
    v24 = v23;

    if ((v24 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v26 = [v1 familyName];
    v18 = sub_230F39608();
    v28 = v27;
    if (v25)
    {

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        if ([objc_opt_self() nameOrderForContact_] == 2)
        {
          v30 = [v1 familyName];
          v31 = sub_230F39608();

          MEMORY[0x23191FB50](10, 0xE100000000000000);

          v32 = [v1 givenName];
        }

        else
        {
          v37 = [v1 givenName];
          v31 = sub_230F39608();

          MEMORY[0x23191FB50](10, 0xE100000000000000);

          v32 = [v1 familyName];
        }

        v33 = sub_230F39608();
        v35 = v34;

        MEMORY[0x23191FB50](v33, v35);

        return v31;
      }

      else
      {
        v36 = [v1 givenName];
        v18 = sub_230F39608();
      }
    }

    else
    {
    }
  }

  return v18;
}

char *CNContact.boopPresentedHandles.getter()
{
  v1 = v0;
  v2 = [v0 emailAddresses];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82700, &unk_230F3DD28);
  v4 = sub_230F396C8();

  if (v4 >> 62)
  {
    v5 = sub_230F398D8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_230F2BEBC(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    v37 = v3;
    v39 = v1;
    v8 = 0;
    v9 = v41;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x23191FE90](v8, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 value];
      sub_230F39608();

      v13 = sub_230F39698();
      v15 = v14;

      v17 = *(v41 + 16);
      v16 = *(v41 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_230F2BEBC((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v41 + 16) = v17 + 1;
      v18 = v41 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v5 != v8);

    v1 = v39;
    v6 = MEMORY[0x277D84F90];
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v19 = sub_230F2D1A4(v9);

  v20 = [v1 phoneNumbers];
  v21 = sub_230F396C8();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_29:

    v24 = MEMORY[0x277D84F90];
LABEL_30:
    v36 = sub_230F2D1A4(v24);

    sub_230F2BDC8(v19);
    return v36;
  }

  v22 = sub_230F398D8();
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_16:
  result = sub_230F2BEBC(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v40 = v19;
    v23 = 0;
    v24 = v6;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x23191FE90](v23, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v25 value];
      v28 = [v27 formattedStringValue];

      if (!v28)
      {
        v29 = [v26 value];
        v28 = [v29 stringValue];
      }

      sub_230F39608();

      v30 = sub_230F39698();
      v32 = v31;

      v34 = *(v6 + 16);
      v33 = *(v6 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_230F2BEBC((v33 > 1), v34 + 1, 1);
      }

      ++v23;
      *(v6 + 16) = v34 + 1;
      v35 = v6 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
    }

    while (v22 != v23);

    v19 = v40;
    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

void CNContact.boopDefaultHandleIndex.getter()
{
  if (qword_27DB81D28 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    sub_230F2C300();
    v0 = 0x27DB81000;
    if (!v1)
    {
      goto LABEL_9;
    }

    v2 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v3 = sub_230F395D8();

    v4 = [v2 initWithStringValue_];

    v5 = CNContact.boopPresentedHandles.getter();
    v6 = v5;
    v7 = *(v5 + 2);
    if (v7)
    {
      break;
    }

LABEL_8:

    v0 = 0x27DB81000;
LABEL_9:
    v15 = [objc_opt_self() defaultStore];
    v8 = v15;
    if (!v15)
    {
      goto LABEL_38;
    }

    v16 = [v15 aa_primaryAppleAccount];
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = v16;
    v18 = CNContact.boopPresentedHandles.getter();
    v19 = v18;
    v20 = *(v18 + 2);
    if (!v20)
    {

LABEL_28:

      v8 = 0;
      goto LABEL_38;
    }

    v53 = v8;
    v8 = 0;
    v21 = (v18 + 40);
    while (v8 < *(v19 + 2))
    {
      v23 = *(v21 - 1);
      v22 = *v21;

      v24 = [v17 username];
      if (v24)
      {
        v25 = v24;
        v26 = sub_230F39608();
        v28 = v27;

        if (v26 == v23 && v28 == v22)
        {

LABEL_32:

          v0 = 0x27DB81000uLL;
          if (qword_27DB81D20 != -1)
          {
            swift_once();
          }

          v38 = sub_230F391F8();
          __swift_project_value_buffer(v38, qword_27DB826D8);
          v39 = v17;
          v40 = sub_230F391D8();
          v41 = sub_230F39798();
          if (!os_log_type_enabled(v40, v41))
          {

            goto LABEL_38;
          }

          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v54 = v43;
          *v42 = 136315138;
          v44 = [v39 username];

          if (v44)
          {
            v45 = sub_230F39608();
            v47 = v46;

            v48 = sub_230F0F28C(v45, v47, &v54);

            *(v42 + 4) = v48;
            _os_log_impl(&dword_230EF9000, v40, v41, "Preferring iCloud email for NameDrop: %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v43);
            MEMORY[0x231920D30](v43, -1, -1);
            MEMORY[0x231920D30](v42, -1, -1);

            v0 = 0x27DB81000;
            goto LABEL_38;
          }

          __break(1u);
          return;
        }

        v30 = sub_230F39B28();

        if (v30)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      ++v8;
      v21 += 2;
      if (v20 == v8)
      {

        v8 = 0;
        v0 = 0x27DB81000;
        goto LABEL_38;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v8 = 0;
  v9 = (v5 + 40);
  while (1)
  {
    if (v8 >= *(v6 + 2))
    {
      __break(1u);
      goto LABEL_44;
    }

    v10 = *(v9 - 1);
    v11 = *v9;
    v12 = objc_allocWithZone(MEMORY[0x277CBDB70]);

    v13 = sub_230F395D8();
    v14 = [v12 initWithStringValue_];

    LOBYTE(v13) = [v14 isLikePhoneNumber_];

    if (v13)
    {
      break;
    }

    ++v8;
    v9 += 2;
    if (v7 == v8)
    {
      goto LABEL_8;
    }
  }

  v0 = 0x27DB81000uLL;
  if (qword_27DB81D20 != -1)
  {
    swift_once();
  }

  v31 = sub_230F391F8();
  __swift_project_value_buffer(v31, qword_27DB826D8);
  v32 = v4;
  v33 = sub_230F391D8();
  v34 = sub_230F39798();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v4;
    v37 = v32;
    _os_log_impl(&dword_230EF9000, v33, v34, "Preferring voice SIM for NameDrop: %@", v35, 0xCu);
    sub_230F108E4(v36);
    MEMORY[0x231920D30](v36, -1, -1);
    MEMORY[0x231920D30](v35, -1, -1);
  }

  else
  {
  }

LABEL_38:
  if (*(v0 + 3360) != -1)
  {
    swift_once();
  }

  v49 = sub_230F391F8();
  __swift_project_value_buffer(v49, qword_27DB826D8);
  v50 = sub_230F391D8();
  v51 = sub_230F39798();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = v8;
    _os_log_impl(&dword_230EF9000, v50, v51, "Default NameDrop handle index: %ld", v52, 0xCu);
    MEMORY[0x231920D30](v52, -1, -1);
  }
}

void CNContact.boopDefaultHandle.getter()
{
  v0 = CNContact.boopPresentedHandles.getter();
  if (!*(v0 + 2))
  {
    goto LABEL_5;
  }

  CNContact.boopDefaultHandleIndex.getter();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *(v0 + 2))
  {
    v2 = &v0[16 * v1];
    v3 = *(v2 + 4);
    v4 = *(v2 + 5);

LABEL_5:

    return;
  }

  __break(1u);
}

void CNContact.boopDefaultHandleIsEmail.getter()
{
  v0 = CNContact.boopPresentedHandles.getter();
  if (!*(v0 + 2))
  {
    goto LABEL_5;
  }

  CNContact.boopDefaultHandleIndex.getter();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *(v0 + 2))
  {
    v2 = &v0[16 * v1];
    v4 = *(v2 + 4);
    v3 = *(v2 + 5);

LABEL_5:

    sub_230F2D304();
    sub_230F39878();

    return;
  }

  __break(1u);
}

CNContact __swiftcall CNContact.boopDefaultHandleAsContact()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v1 = CNContact.boopPresentedHandles.getter();
  if (*(v1 + 2))
  {
    CNContact.boopDefaultHandleIndex.getter();
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *(v1 + 2))
    {
      v3 = &v1[16 * v2];
      v5 = *(v3 + 4);
      v4 = *(v3 + 5);

      goto LABEL_6;
    }

    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_14;
  }

  v5 = 0;
  v4 = 0xE000000000000000;
LABEL_6:

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    CNContact.boopDefaultHandleIsEmail.getter();
    if (v7)
    {
      v8 = sub_230F395D8();

      v9 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v10 = sub_230F395D8();
      [v9 initWithLabel:v10 value:v8];

      v11 = [v0 emailAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82700, &unk_230F3DD28);
      v12 = sub_230F396C8();

      MEMORY[0x23191FBB0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_230F396D8();
      }

      sub_230F396E8();
      v13 = sub_230F396B8();

      [v0 setEmailAddresses_];
    }

    else
    {
      v18 = objc_allocWithZone(MEMORY[0x277CBDB70]);
      v19 = sub_230F395D8();

      v20 = [v18 initWithStringValue_];

      v21 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v22 = sub_230F395D8();
      [v21 initWithLabel:v22 value:v20];

      v23 = [v0 phoneNumbers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82700, &unk_230F3DD28);
      v24 = sub_230F396C8();

      MEMORY[0x23191FBB0]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_230F396D8();
      }

      sub_230F396E8();
      v13 = sub_230F396B8();

      [v0 setPhoneNumbers_];
    }

    return v0;
  }

  if (qword_27DB81D20 != -1)
  {
    goto LABEL_24;
  }

LABEL_14:
  v14 = sub_230F391F8();
  __swift_project_value_buffer(v14, qword_27DB826D8);
  v15 = sub_230F391D8();
  v16 = sub_230F397B8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_230EF9000, v15, v16, "No default handle!", v17, 2u);
    MEMORY[0x231920D30](v17, -1, -1);
  }

  return v0;
}

void CNContact.vCardForBoopingDefaultHandle()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82720, &qword_230F3C688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230F3C6D0;
  v1 = CNContact.boopPresentedHandles.getter();
  if (!*(v1 + 2))
  {
    v5 = 0;
    v4 = 0xE000000000000000;
    goto LABEL_6;
  }

  CNContact.boopDefaultHandleIndex.getter();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *(v1 + 2))
  {
    v3 = &v1[16 * v2];
    v5 = *(v3 + 4);
    v4 = *(v3 + 5);

LABEL_6:

    *(inited + 32) = v5;
    *(inited + 40) = v4;
    CNContact.vCardForBooping(with:)(inited);
    swift_setDeallocating();
    sub_230F2D358(inited + 32);
    return;
  }

  __break(1u);
}

uint64_t CNContact.vCardForBooping(with:)(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v4 = [v1 givenName];
  if (!v4)
  {
    sub_230F39608();
    v4 = sub_230F395D8();
  }

  [v3 setGivenName_];

  v5 = [v1 familyName];
  if (!v5)
  {
    sub_230F39608();
    v5 = sub_230F395D8();
  }

  [v3 setFamilyName_];

  [v3 setContactType_];
  CNContact.boopPresentedName.getter();
  v6 = sub_230F395D8();

  v7 = CNIsChineseJapaneseKoreanString();

  if (v7)
  {
    v8 = [v1 phoneticGivenName];
    if (!v8)
    {
      sub_230F39608();
      v8 = sub_230F395D8();
    }

    [v3 setPhoneticGivenName_];

    v9 = [v1 phoneticMiddleName];
    if (!v9)
    {
      sub_230F39608();
      v9 = sub_230F395D8();
    }

    [v3 setPhoneticMiddleName_];

    v10 = [v1 phoneticFamilyName];
    if (!v10)
    {
      sub_230F39608();
      v10 = sub_230F395D8();
    }

    [v3 setPhoneticFamilyName_];
  }

  v53 = MEMORY[0x277D84F90];
  v54[0] = MEMORY[0x277D84F90];
  sub_230F2B9CC(a1, v54, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82700, &unk_230F3DD28);
  v11 = sub_230F396B8();
  [v3 setEmailAddresses_];

  v12 = sub_230F396B8();
  [v3 setPhoneNumbers_];

  v13 = [v1 thumbnailImageData];
  if (v13 || (v13 = [v1 imageData]) != 0)
  {
    v14 = v13;
    v15 = sub_230F39068();
    v17 = v16;

    v18 = sub_230F39058();
    sub_230F0CD64(v15, v17);
  }

  else
  {
    v18 = 0;
  }

  [v3 setThumbnailImageData_];

  if (CNSNaPWallpaperEnabled())
  {
    v19 = [v1 wallpaper];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 posterArchiveData];

      v22 = sub_230F39068();
      v24 = v23;

      sub_230F0CD64(v22, v24);
      v25 = [v1 wallpaper];
      [v3 setWallpaper_];

      [v3 setSharedPhotoDisplayPreference_];
    }
  }

  v26 = [v1 watchWallpaperImageData];
  if (v26)
  {
    v27 = v26;
    v28 = sub_230F39068();
    v30 = v29;

    v31 = sub_230F39058();
    sub_230F0CD64(v28, v30);
  }

  else
  {
    v31 = 0;
  }

  [v3 setWatchWallpaperImageData_];

  v32 = [objc_allocWithZone(MEMORY[0x277D81790]) init];
  [v32 setIncludePhotos_];
  [v32 setIncludeWallpaper_];
  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825C8, &qword_230F3D720);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_230F3C8F0;
  *(v34 + 32) = v3;
  sub_230F183D8(0, &qword_27DB82710, 0x277CBDA58);
  v35 = v3;
  v36 = sub_230F396B8();

  v52[0] = 0;
  v37 = [v33 dataWithContacts:v36 options:v32 error:v52];

  v38 = v52[0];
  if (v37)
  {
    v39 = sub_230F39068();
  }

  else
  {
    v40 = v38;
    v41 = sub_230F39048();

    swift_willThrow();

    if (qword_27DB81D20 != -1)
    {
      swift_once();
    }

    v42 = sub_230F391F8();
    __swift_project_value_buffer(v42, qword_27DB826D8);
    v43 = v41;
    v44 = sub_230F391D8();
    v45 = sub_230F397B8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v41;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_230EF9000, v44, v45, "Could not encode vCard: %@", v46, 0xCu);
      sub_230F108E4(v47);
      MEMORY[0x231920D30](v47, -1, -1);
      MEMORY[0x231920D30](v46, -1, -1);
    }

    else
    {
    }

    v39 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v39;
}

uint64_t sub_230F2B7D8(uint64_t *a1, void *a2, void *a3)
{
  v16 = *a1;
  v17 = a1[1];
  sub_230F2D304();
  if (sub_230F39878())
  {
    v5 = sub_230F395D8();
    v6 = objc_allocWithZone(MEMORY[0x277CBDB20]);
    v7 = sub_230F395D8();
    [v6 initWithLabel:v7 value:{v5, 64, 0xE100000000000000, v16, v17}];

    MEMORY[0x23191FBB0]();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_230F396D8();
    }
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v9 = sub_230F395D8();
    v10 = [v8 initWithStringValue_];

    v11 = objc_allocWithZone(MEMORY[0x277CBDB20]);
    v12 = sub_230F395D8();
    [v11 initWithLabel:v12 value:v10];

    MEMORY[0x23191FBB0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_230F396D8();
    }
  }

  return sub_230F396E8();
}

uint64_t sub_230F2B9CC(uint64_t result, void *a2, void *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      sub_230F2B7D8(v9, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t CNContact.avatarImageData.getter()
{
  v1 = [v0 thumbnailImageData];
  if (!v1)
  {
    v1 = [v0 imageData];
    if (!v1)
    {
      return 0;
    }
  }

  v2 = v1;
  v3 = sub_230F39068();

  return v3;
}

id CNContact.posterArchiveData.getter()
{
  if (!CNSNaPWallpaperEnabled())
  {
    return 0;
  }

  result = [v0 wallpaper];
  if (result)
  {
    v2 = result;
    v3 = [result posterArchiveData];

    v4 = sub_230F39068();
    return v4;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CNMutableContact.saveToContactStore()()
{
  v1 = v0;
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  v4 = sub_230F395D8();
  [v3 setTransactionAuthor_];

  [v3 addContact:v1 toContainerWithIdentifier:0];
  v8[0] = 0;
  if ([v2 executeSaveRequest:v3 error:v8])
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_230F39048();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
}

char *sub_230F2BCBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82720, &qword_230F3C688);
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

uint64_t sub_230F2BDC8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_230F2BCBC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_230F2BEBC(char *a1, int64_t a2, char a3)
{
  result = sub_230F2BEDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230F2BEDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82720, &qword_230F3C688);
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

uint64_t _s21DeviceDiscoveryUICore17MeContactProviderV8contactsSaySo9CNContactCGyF_0()
{
  v19[4] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  sub_230F391C8();
  sub_230F391B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82730, &qword_230F3DE60);
  v1 = sub_230F396B8();

  v19[0] = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  if (v2)
  {
    v3 = v19[0];
    [v2 mutableCopy];
    sub_230F39888();
    swift_unknownObjectRelease();
    sub_230F183D8(0, &qword_27DB826F8, 0x277CBDB38);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82700, &unk_230F3DD28);
    v4 = sub_230F396B8();
    [v18 setAddressingGrammars_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825C8, &qword_230F3D720);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_230F3C8F0;
    *(v5 + 32) = v18;
  }

  else
  {
    v6 = v19[0];
    v7 = sub_230F39048();

    swift_willThrow();
    if (qword_27DB81D20 != -1)
    {
      swift_once();
    }

    v8 = sub_230F391F8();
    __swift_project_value_buffer(v8, qword_27DB826D8);
    v9 = v7;
    v10 = sub_230F391D8();
    v11 = sub_230F397B8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_230EF9000, v10, v11, "Could not fetch me card: %@", v12, 0xCu);
      sub_230F108E4(v13);
      MEMORY[0x231920D30](v13, -1, -1);
      MEMORY[0x231920D30](v12, -1, -1);
    }

    v5 = MEMORY[0x277D84F90];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_230F2C300()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = sub_230F39558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230F183D8(0, &qword_27DB822C0, 0x277D85C78);
  (*(v1 + 104))(v4, *MEMORY[0x277D851C8], v0);
  v5 = sub_230F39838();
  (*(v1 + 8))(v4, v0);
  v6 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];

  v22[0] = 0;
  v7 = [v6 getUserDefaultVoiceSubscriptionContext_];
  v8 = v22[0];
  if (!v7)
  {
    v17 = v22[0];
    v18 = sub_230F39048();

    swift_willThrow();
LABEL_6:

    result = 0;
    goto LABEL_7;
  }

  v9 = v7;
  v22[0] = 0;
  v10 = v8;
  v11 = [v6 getPhoneNumber:v9 error:v22];
  if (!v11)
  {
    v19 = v22[0];
    v18 = sub_230F39048();

    swift_willThrow();
    goto LABEL_6;
  }

  v12 = v11;
  v13 = v22[0];
  v14 = [v12 displayPhoneNumber];

  v15 = sub_230F39608();
  result = v15;
LABEL_7:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_230F2C570()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];
    if (v2)
    {
      v3 = v2;
      result = [v2 username];
      if (!result)
      {
        __break(1u);
        goto LABEL_30;
      }

      v4 = result;
      v5 = sub_230F39608();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = sub_230F2C300();
        if (!v10)
        {
          v17 = [v3 userFullName];
          if (v17)
          {
            v18 = v17;
            sub_230F39608();
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82720, &qword_230F3C688);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_230F3C6D0;
          result = [v3 username];
          if (result)
          {
            v30 = result;
            v31 = sub_230F39608();
            v33 = v32;

            *(v29 + 32) = v31;
            *(v29 + 40) = v33;
            if (v20)
            {
              v34 = sub_230F395D8();
            }

            else
            {
              v34 = 0;
            }

            v35 = sub_230F396B8();

            v28 = [objc_opt_self() contactWithDisplayName:v34 handleStrings:v35];

            return v28;
          }

LABEL_31:
          __break(1u);
          return result;
        }

        v11 = v9;
        v12 = v10;
        v13 = [v3 userFullName];
        if (v13)
        {
          v14 = v13;
          sub_230F39608();
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82720, &qword_230F3C688);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_230F3DD00;
        *(v21 + 32) = v11;
        *(v21 + 40) = v12;

        result = [v3 username];
        if (result)
        {
          v22 = result;

          v23 = sub_230F39608();
          v25 = v24;

          *(v21 + 48) = v23;
          *(v21 + 56) = v25;
          if (v16)
          {
            v26 = sub_230F395D8();
          }

          else
          {
            v26 = 0;
          }

          v27 = sub_230F396B8();

          v28 = [objc_opt_self() contactWithDisplayName:v26 handleStrings:v27];

          return v28;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_230F2C8B4(void *a1)
{
  v2 = [objc_opt_self() defaultStore];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 aa_primaryAppleAccount];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 username];
      if (v6)
      {
        v7 = v6;
        v8 = sub_230F39608();
        v10 = v9;

        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (v11)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825C8, &qword_230F3D720);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_230F3C8F0;
          v13 = objc_allocWithZone(MEMORY[0x277CBDB20]);
          v14 = sub_230F395D8();
          v15 = [v13 initWithLabel:v14 value:v7];

          *(v12 + 32) = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82700, &unk_230F3DD28);
          v16 = sub_230F396B8();

          [a1 setEmailAddresses_];

          sub_230F2C300();
          if (!v17)
          {
            return;
          }

          goto LABEL_14;
        }

        v3 = v5;
      }

      else
      {
        v7 = v5;
      }

      v3 = v7;
    }
  }

  sub_230F2C300();
  if (!v18)
  {
    if (qword_27DB81D20 != -1)
    {
      swift_once();
    }

    v26 = sub_230F391F8();
    __swift_project_value_buffer(v26, qword_27DB826D8);
    oslog = sub_230F391D8();
    v27 = sub_230F397B8();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_230EF9000, oslog, v27, "Unable to find NameDrop handles from iCloud or SIM", v28, 2u);
      MEMORY[0x231920D30](v28, -1, -1);
    }

    goto LABEL_19;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825C8, &qword_230F3D720);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_230F3C8F0;
  v20 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v21 = sub_230F395D8();

  v22 = [v20 initWithStringValue_];

  v23 = objc_allocWithZone(MEMORY[0x277CBDB20]);
  v24 = sub_230F395D8();
  v25 = [v23 initWithLabel:v24 value:v22];

  *(v19 + 32) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82700, &unk_230F3DD28);
  oslog = sub_230F396B8();

  [a1 setPhoneNumbers_];
LABEL_19:
}

id sub_230F2CC54()
{
  v1 = _s21DeviceDiscoveryUICore17MeContactProviderV8contactsSaySo9CNContactCGyF_0();
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_20:

    v20 = sub_230F2C570();
    if (!v20)
    {
      if (qword_27DB81D20 != -1)
      {
        swift_once();
      }

      v28 = sub_230F391F8();
      __swift_project_value_buffer(v28, qword_27DB826D8);
      v29 = sub_230F391D8();
      v30 = sub_230F397B8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_230EF9000, v29, v30, "Nothing to NameDrop", v31, 2u);
        MEMORY[0x231920D30](v31, -1, -1);
      }

      return 0;
    }

    v0 = v20;
    if (qword_27DB81D20 == -1)
    {
LABEL_22:
      v21 = sub_230F391F8();
      __swift_project_value_buffer(v21, qword_27DB826D8);
      v22 = v0;
      v23 = sub_230F391D8();
      v24 = sub_230F397D8();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v0;
        v27 = v22;
        _os_log_impl(&dword_230EF9000, v23, v24, "NameDrop from iCloud+SIM: %@", v25, 0xCu);
        sub_230F108E4(v26);
        MEMORY[0x231920D30](v26, -1, -1);
        MEMORY[0x231920D30](v25, -1, -1);
      }

      return v0;
    }

LABEL_34:
    swift_once();
    goto LABEL_22;
  }

  v0 = v1;
  v19 = sub_230F398D8();
  v1 = v0;
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) == 0)
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_34;
  }

  v2 = MEMORY[0x23191FE90](0);
LABEL_6:
  v3 = v2;

  if (qword_27DB81D20 != -1)
  {
    swift_once();
  }

  v4 = sub_230F391F8();
  __swift_project_value_buffer(v4, qword_27DB826D8);
  v0 = v3;
  v5 = sub_230F391D8();
  v6 = sub_230F397D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v0;
    *v8 = v0;
    v9 = v0;
    _os_log_impl(&dword_230EF9000, v5, v6, "NameDrop from Me Card: %@", v7, 0xCu);
    sub_230F108E4(v8);
    MEMORY[0x231920D30](v8, -1, -1);
    MEMORY[0x231920D30](v7, -1, -1);
  }

  v10 = [v0 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82700, &unk_230F3DD28);
  v11 = sub_230F396C8();

  if (v11 >> 62)
  {
    v12 = sub_230F398D8();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    v13 = [v0 phoneNumbers];
    v14 = sub_230F396C8();

    if (v14 >> 62)
    {
      v33 = sub_230F398D8();

      if (v33)
      {
        return v0;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v15)
      {
        return v0;
      }
    }

    v16 = sub_230F391D8();
    v17 = sub_230F397B8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_230EF9000, v16, v17, "Me Card has no handles; sourcing them from iCloud & SIM", v18, 2u);
      MEMORY[0x231920D30](v18, -1, -1);
    }

    [v0 mutableCopy];
    sub_230F39888();
    swift_unknownObjectRelease();
    sub_230F183D8(0, &qword_27DB826F8, 0x277CBDB38);
    if (swift_dynamicCast())
    {
      sub_230F2C8B4(v34);

      return v34;
    }
  }

  return v0;
}

uint64_t sub_230F2D1A4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_230F36DF4(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_230F2BEBC(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_230F2BEBC((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

unint64_t sub_230F2D304()
{
  result = qword_27DB82718;
  if (!qword_27DB82718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82718);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_230F2D3EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_230F2D440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_230F2D4F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230F16DA0;

  return sub_230F291F4(a1, v4, v5, v6);
}

double DDUIPermissionRequest.Kind.init(deviceModel:deviceName:contactID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_230F2F320(a1, a2, a3, a4, a5, a6, v11);
  if (!v7)
  {
    result = *v11;
    v10 = v11[1];
    *a7 = v11[0];
    *(a7 + 16) = v10;
    *(a7 + 32) = v12;
  }

  return result;
}

uint64_t DDUIPermissionRequest.init(identifier:kind:appName:icon:serviceIdentifier:appBundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = sub_230F390B8();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for DDUIPermissionRequest();
  v21 = a9 + v20[7];
  v22 = *(a2 + 16);
  *v21 = *a2;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a2 + 32);
  v23 = (a9 + v20[5]);
  *v23 = a3;
  v23[1] = a4;
  result = sub_230F2F690(a5, a9 + v20[6]);
  v25 = (a9 + v20[8]);
  *v25 = a6;
  v25[1] = a7;
  v26 = (a9 + v20[9]);
  *v26 = a8;
  v26[1] = a10;
  return result;
}

double DDUIPermissionRequest.Kind.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_230F300D4(a1, v7);

  if (!v2)
  {
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v8;
  }

  return result;
}

uint64_t sub_230F2D748()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_27DB82740);
  __swift_project_value_buffer(v0, qword_27DB82740);
  return sub_230F391E8();
}

double DDUIPermissionRequest.Kind.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_230F39248();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DB81D30 != -1)
  {
    swift_once();
  }

  v11 = sub_230F391F8();
  __swift_project_value_buffer(v11, qword_27DB82740);
  (*(v7 + 16))(v10, a1, v6);
  v12 = sub_230F391D8();
  v13 = sub_230F397D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v37 = a2;
    v17 = v16;
    v42 = v16;
    *v15 = 136315138;
    v18 = sub_230F39228();
    v36 = a1;
    v20 = v19;
    v39 = *(v38 + 8);
    v39(v10, v6);
    v21 = sub_230F0F28C(v18, v20, &v42);
    v3 = v2;
    a1 = v36;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_230EF9000, v12, v13, "Trying to get kind from NWEndpoint: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v22 = v17;
    a2 = v37;
    MEMORY[0x231920D30](v22, -1, -1);
    MEMORY[0x231920D30](v15, -1, -1);
  }

  else
  {

    v39 = *(v7 + 8);
    v39(v10, v6);
  }

  v23 = sub_230F11130(a1);
  v25 = v23;
  v26 = v24;
  if (v24 && (v23 == 63 && v24 == 0xE100000000000000 || (sub_230F39B28() & 1) != 0))
  {

    v25 = 0;
    v26 = 0;
  }

  v27 = sub_230F11130(a1);
  v29 = v27;
  v30 = v28;
  if (v28 && (v27 == 63 && v28 == 0xE100000000000000 || (sub_230F39B28() & 1) != 0))
  {

    v29 = 0;
    v30 = 0;
  }

  v31 = sub_230F11148(a1);
  sub_230F2F320(v25, v26, v29, v30, v31, v32, v40);
  v39(a1, v6);
  if (!v3)
  {
    result = *v40;
    v34 = v40[1];
    *a2 = v40[0];
    *(a2 + 16) = v34;
    *(a2 + 32) = v41;
  }

  return result;
}

uint64_t DDUIPermissionRequest.Kind.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v3 = 0x20746361746E6F43;
      v4 = 0xE900000000000028;
    }

    else
    {
      v3 = 0x72696150206E6950;
      v4 = 0xEC00000028206465;
    }

    v10[0] = v3;
    v10[1] = v4;
  }

  else
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = *v0;
    v8 = v0[1];
    sub_230F39978();

    strcpy(v10, "Same Account (");
    HIBYTE(v10[1]) = -18;
    MEMORY[0x23191FB50](v6, v5);
    MEMORY[0x23191FB50](8236, 0xE200000000000000);
    v1 = v7;
    v2 = v8;
  }

  MEMORY[0x23191FB50](v1, v2);
  MEMORY[0x23191FB50](41, 0xE100000000000000);
  return v10[0];
}

uint64_t sub_230F2DC74()
{
  v1 = 0x746361746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x65726961506E6970;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F636341656D6173;
  }
}

uint64_t sub_230F2DCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230F304BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230F2DD10(uint64_t a1)
{
  v2 = sub_230F3036C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F2DD4C(uint64_t a1)
{
  v2 = sub_230F3036C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230F2DDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230F39B28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230F2DE34(uint64_t a1)
{
  v2 = sub_230F30414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F2DE70(uint64_t a1)
{
  v2 = sub_230F30414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230F2DEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230F39B28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230F2DF58(uint64_t a1)
{
  v2 = sub_230F303C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F2DF94(uint64_t a1)
{
  v2 = sub_230F303C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230F2DFD0()
{
  if (*v0)
  {
    result = 0x614E656369766564;
  }

  else
  {
    result = 0x6F4D656369766564;
  }

  *v0;
  return result;
}

uint64_t sub_230F2E018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v6 || (sub_230F39B28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230F39B28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230F2E100(uint64_t a1)
{
  v2 = sub_230F30468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F2E13C(uint64_t a1)
{
  v2 = sub_230F30468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DDUIPermissionRequest.Kind.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82758, &qword_230F3DE98);
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82760, &qword_230F3DEA0);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82768, &qword_230F3DEA8);
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82770, &qword_230F3DEB0);
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F3036C();
  sub_230F39BE8();
  v22 = *v2;
  v21 = v2[1];
  if (*(v2 + 32))
  {
    if (*(v2 + 32) == 1)
    {
      v43 = 1;
      sub_230F30414();
      v23 = v38;
      sub_230F39AB8();
      v24 = v34;
      sub_230F39AD8();
      (*(v33 + 8))(v11, v24);
      return (*(v37 + 8))(v19, v23);
    }

    else
    {
      v44 = 2;
      sub_230F303C0();
      v30 = v38;
      sub_230F39AB8();
      v31 = v36;
      sub_230F39AD8();
      (*(v35 + 8))(v7, v31);
      return (*(v37 + 8))(v19, v30);
    }
  }

  else
  {
    v26 = v32;
    v27 = v2[3];
    v36 = v2[2];
    v42 = 0;
    sub_230F30468();
    v28 = v38;
    sub_230F39AB8();
    v41 = 0;
    v29 = v39;
    sub_230F39AD8();
    if (!v29)
    {
      v40 = 1;
      sub_230F39AD8();
    }

    (*(v26 + 8))(v15, v12);
    return (*(v37 + 8))(v19, v28);
  }
}

double DDUIPermissionRequest.Kind.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_230F305E0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_230F2E650@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_230F305E0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t DDUIPermissionRequest.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_230F390B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DDUIPermissionRequest.appName.getter()
{
  v1 = (v0 + *(type metadata accessor for DDUIPermissionRequest() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DDUIPermissionRequest.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DDUIPermissionRequest() + 24);

  return sub_230F30D68(v3, a1);
}

uint64_t DDUIPermissionRequest.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DDUIPermissionRequest() + 28);

  return sub_230F30DD8(v3, a1);
}

uint64_t DDUIPermissionRequest.serviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for DDUIPermissionRequest() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DDUIPermissionRequest.appBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for DDUIPermissionRequest() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_230F2E864()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1684957547;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6C646E7542707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E707061;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230F2E920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230F319F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230F2E954(uint64_t a1)
{
  v2 = sub_230F30E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F2E990(uint64_t a1)
{
  v2 = sub_230F30E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DDUIPermissionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82798, &qword_230F3DEB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F30E10();
  sub_230F39BE8();
  LOBYTE(v27) = 0;
  sub_230F390B8();
  sub_230F30ECC(&qword_27DB82420, MEMORY[0x277CC95F0]);
  sub_230F39AF8();
  if (!v2)
  {
    v11 = type metadata accessor for DDUIPermissionRequest();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v27) = 1;
    sub_230F39AD8();
    v15 = v11[6];
    LOBYTE(v27) = 2;
    sub_230F394D8();
    sub_230F30ECC(&qword_27DB82678, MEMORY[0x277D54AB0]);
    sub_230F39AC8();
    v16 = (v3 + v11[7]);
    v17 = *(v16 + 32);
    v18 = v16[1];
    v27 = *v16;
    v28 = v18;
    v29 = v17;
    v26[15] = 3;
    sub_230F0D744();
    sub_230F39AF8();
    v19 = (v3 + v11[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v27) = 4;
    sub_230F39AD8();
    v22 = (v3 + v11[9]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v27) = 5;
    sub_230F39AD8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DDUIPermissionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB824B0, &qword_230F3CAB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - v5;
  v7 = sub_230F390B8();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB827A8, &qword_230F3DEC0);
  v41 = *(v43 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v12 = &v38 - v11;
  v13 = type metadata accessor for DDUIPermissionRequest();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F30E10();
  v44 = v12;
  v18 = v45;
  sub_230F39BD8();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v45 = v6;
  v19 = v41;
  v20 = v16;
  LOBYTE(v46) = 0;
  sub_230F30ECC(&qword_27DB82430, MEMORY[0x277CC95F0]);
  v21 = v42;
  sub_230F39A98();
  (*(v40 + 32))(v16, v21, v7);
  LOBYTE(v46) = 1;
  v22 = sub_230F39A78();
  v23 = &v16[v13[5]];
  *v23 = v22;
  v23[1] = v24;
  sub_230F394D8();
  LOBYTE(v46) = 2;
  sub_230F30ECC(&qword_27DB82688, MEMORY[0x277D54AB0]);
  v25 = v45;
  v42 = 0;
  sub_230F39A68();
  sub_230F2F690(v25, v20 + v13[6]);
  v49 = 3;
  sub_230F0CD10();
  sub_230F39A98();
  v26 = v48;
  v27 = v20 + v13[7];
  v28 = v47;
  *v27 = v46;
  *(v27 + 16) = v28;
  *(v27 + 32) = v26;
  LOBYTE(v46) = 4;
  v29 = sub_230F39A78();
  v30 = v19;
  v31 = (v20 + v13[8]);
  *v31 = v29;
  v31[1] = v32;
  LOBYTE(v46) = 5;
  v33 = sub_230F39A78();
  v35 = v34;
  (*(v30 + 8))(v44, v43);
  v36 = (v20 + v13[9]);
  *v36 = v33;
  v36[1] = v35;
  sub_230F30F14(v20, v39);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_230F30F78(v20);
}

void sub_230F2F320(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (qword_27DB81D30 != -1)
  {
    swift_once();
  }

  v13 = sub_230F391F8();
  __swift_project_value_buffer(v13, qword_27DB82740);

  v14 = sub_230F391D8();
  v15 = sub_230F397D8();

  v35 = a1;
  if (os_log_type_enabled(v14, v15))
  {
    v36 = a3;
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v16 = 136315650;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB821A0, &qword_230F3E680);
    v33 = v15;
    v17 = sub_230F39618();
    log = v14;
    v19 = a7;
    v20 = sub_230F0F28C(v17, v18, &v38);

    *(v16 + 4) = v20;
    a7 = v19;
    *(v16 + 12) = 2080;

    v21 = sub_230F39618();
    v23 = sub_230F0F28C(v21, v22, &v38);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;

    v24 = sub_230F39618();
    v26 = sub_230F0F28C(v24, v25, &v38);

    *(v16 + 24) = v26;
    v14 = log;
    _os_log_impl(&dword_230EF9000, log, v33, "Trying to get kind with name: %s, model: %s, contactID: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231920D30](v34, -1, -1);
    a3 = v36;
    MEMORY[0x231920D30](v16, -1, -1);
  }

  if (a2)
  {
    if (a4)
    {
      v27 = 0;
      v28 = v35;
LABEL_13:
      v30 = a4;
      v29 = a3;

      a3 = v28;
      a4 = a2;
      goto LABEL_14;
    }

    if (a6)
    {
LABEL_12:
      a3 = 0;
      v27 = 1;
      v28 = a5;
      a2 = a6;
      a4 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if (a6)
    {
      goto LABEL_12;
    }

    if (a4)
    {
      v29 = 0;
      v30 = 0;
      v27 = 2;
LABEL_14:
      *a7 = a3;
      *(a7 + 8) = a4;
      *(a7 + 16) = v29;
      *(a7 + 24) = v30;
      *(a7 + 32) = v27;
      return;
    }
  }

  sub_230F17B58();
  swift_allocError();
  *v31 = 9;
  swift_willThrow();
}

uint64_t type metadata accessor for DDUIPermissionRequest()
{
  result = qword_27DB827B0;
  if (!qword_27DB827B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230F2F690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB824B0, &qword_230F3CAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_230F2F720()
{
  *(v0 + 24) = sub_230F39728();
  *(v0 + 32) = sub_230F39718();
  v2 = sub_230F396F8();

  return MEMORY[0x2822009F8](sub_230F2F7B8, v2, v1);
}

uint64_t sub_230F2F7B8()
{
  v1 = *(v0 + 32);

  *(v0 + 40) = [objc_allocWithZone(type metadata accessor for DDUIConfirmationSceneManager()) init];

  return MEMORY[0x2822009F8](sub_230F2F83C, 0, 0);
}

uint64_t sub_230F2F83C()
{
  if (qword_27DB81D30 != -1)
  {
    swift_once();
  }

  v1 = sub_230F391F8();
  v0[6] = __swift_project_value_buffer(v1, qword_27DB82740);
  v2 = sub_230F391D8();
  v3 = sub_230F397D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230EF9000, v2, v3, "Attempting to Show confirmation dialog", v4, 2u);
    MEMORY[0x231920D30](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = v5 + *(type metadata accessor for DDUIPermissionRequest() + 28);
  if (*(v6 + 32))
  {
    if (*(v6 + 32) == 1)
    {
      v7 = 0x8000000230F405B0;
      v8 = 0xD000000000000015;
      goto LABEL_11;
    }

    v8 = *v6;
    v10 = *(v6 + 8);
  }

  else
  {
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
  }

LABEL_11:
  v0[7] = v8;
  v0[8] = v7;
  v11 = v0[3];
  v0[9] = sub_230F39718();
  v13 = sub_230F396F8();

  return MEMORY[0x2822009F8](sub_230F2F9DC, v13, v12);
}

uint64_t sub_230F2F9DC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[2];

  sub_230F352E0(v5, v3, v2);

  return MEMORY[0x2822009F8](sub_230F2FA70, 0, 0);
}

uint64_t sub_230F2FA70()
{
  v1 = v0[6];
  v2 = sub_230F391D8();
  v3 = sub_230F397D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230EF9000, v2, v3, "Waiting for User Response", v4, 2u);
    MEMORY[0x231920D30](v4, -1, -1);
  }

  v5 = v0[3];

  v0[10] = sub_230F39718();
  v7 = sub_230F396F8();
  v0[11] = v7;
  v0[12] = v6;

  return MEMORY[0x2822009F8](sub_230F2FB74, v7, v6);
}

uint64_t sub_230F2FB74()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_230F39718();
  v0[13] = v3;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *(v4 + 16) = v1;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_230F2FC80;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 16, v3, v7, 0xD000000000000011, 0x8000000230F405D0, sub_230F31C04, v4, &type metadata for DDUIConfirmationActionResult);
}

uint64_t sub_230F2FC80()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_230F2FDE0, v6, v5);
}

uint64_t sub_230F2FDE0()
{
  v1 = *(v0 + 80);

  *(v0 + 129) = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_230F2FE50, 0, 0);
}

uint64_t sub_230F2FE50()
{
  v21 = v0;
  v1 = *(v0 + 48);
  v2 = sub_230F391D8();
  v3 = sub_230F397D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 129);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = 0xE700000000000000;
    v8 = 0x726F727265;
    if (v4 == 1)
    {
      v8 = 0x656E696C636564;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x747065636361;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    v11 = sub_230F0F28C(v9, v10, &v20);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_230EF9000, v2, v3, "Got User Response: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x231920D30](v6, -1, -1);
    MEMORY[0x231920D30](v5, -1, -1);
  }

  if (*(v0 + 129))
  {
    v12 = sub_230F39B28();

    if ((v12 & 1) == 0)
    {
      if (*(v0 + 129) == 2)
      {
        v15 = sub_230F39B28();

        if (v15)
        {
          v16 = 8;
        }

        else
        {
          v16 = 7;
        }
      }

      else
      {

        v16 = 8;
      }

      v17 = *(v0 + 40);
      sub_230F17B58();
      swift_allocError();
      *v18 = v16;
      swift_willThrow();

      v14 = *(v0 + 8);
      goto LABEL_23;
    }

    v13 = *(v0 + 40);
  }

  else
  {
    v13 = *(v0 + 40);
  }

  v14 = *(v0 + 8);
LABEL_23:

  return v14();
}

double sub_230F300D4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_27DB81D30 != -1)
  {
    swift_once();
  }

  v6 = sub_230F391F8();
  __swift_project_value_buffer(v6, qword_27DB82740);
  v7 = a1;
  v8 = sub_230F391D8();
  v9 = sub_230F397D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v10 = 136315138;
    v11 = [v7 debugDescription];
    v12 = sub_230F39608();
    v14 = v13;

    v15 = v12;
    v3 = v2;
    v16 = sub_230F0F28C(v15, v14, &v37);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_230EF9000, v8, v9, "Attempting to get kind from RPIdentity: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x231920D30](v34, -1, -1);
    MEMORY[0x231920D30](v10, -1, -1);
  }

  v17 = [v7 model];
  if (v17)
  {
    v18 = v17;
    v19 = sub_230F39608();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [v7 name];
  if (v22)
  {
    v23 = v22;
    v24 = sub_230F39608();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [v7 contactID];
  if (v27)
  {
    v28 = v27;
    v29 = sub_230F39608();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  sub_230F2F320(v19, v21, v24, v26, v29, v31, v35);
  if (!v3)
  {
    result = *v35;
    v33 = v35[1];
    *a2 = v35[0];
    *(a2 + 16) = v33;
    *(a2 + 32) = v36;
  }

  return result;
}

unint64_t sub_230F3036C()
{
  result = qword_27DB82778;
  if (!qword_27DB82778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82778);
  }

  return result;
}

unint64_t sub_230F303C0()
{
  result = qword_27DB82780;
  if (!qword_27DB82780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82780);
  }

  return result;
}

unint64_t sub_230F30414()
{
  result = qword_27DB82788;
  if (!qword_27DB82788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82788);
  }

  return result;
}

unint64_t sub_230F30468()
{
  result = qword_27DB82790;
  if (!qword_27DB82790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82790);
  }

  return result;
}

uint64_t sub_230F304BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F636341656D6173 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_230F39B28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000 || (sub_230F39B28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726961506E6970 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_230F39B28();

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

uint64_t sub_230F305E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82840, &qword_230F3E650);
  v60 = *(v58 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  v62 = &v55 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82848, &qword_230F3E658);
  v56 = *(v59 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82850, &qword_230F3E660);
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82858, &unk_230F3E668);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_230F3036C();
  v19 = v63;
  sub_230F39BD8();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v64);
  }

  v20 = v7;
  v55 = 0;
  v21 = v62;
  v63 = v13;
  v22 = sub_230F39AA8();
  v23 = (2 * *(v22 + 16)) | 1;
  v65 = v22;
  v66 = v22 + 32;
  v67 = 0;
  v68 = v23;
  v24 = sub_230F1A0DC();
  if (v24 == 3 || v67 != v68 >> 1)
  {
    v29 = sub_230F399A8();
    swift_allocError();
    v30 = v16;
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82170, &unk_230F3C6B0) + 48);
    *v32 = &type metadata for DDUIPermissionRequest.Kind;
    sub_230F39A58();
    sub_230F39998();
    (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v63 + 8))(v30, v12);
    goto LABEL_9;
  }

  v25 = v12;
  v69 = v24;
  if (!v24)
  {
    v70 = 0;
    sub_230F30468();
    v35 = v11;
    v36 = v12;
    v37 = v55;
    sub_230F39A48();
    if (!v37)
    {
      v70 = 0;
      v60 = sub_230F39A78();
      v62 = v46;
      v47 = v16;
      v70 = 1;
      v48 = (v63 + 8);
      v50 = sub_230F39A78();
      v52 = v51;
      (*(v57 + 8))(v35, v8);
      (*v48)(v47, v12);
      swift_unknownObjectRelease();
      v28 = v61;
      v53 = v62;
      v54 = v60;
LABEL_18:
      result = __swift_destroy_boxed_opaque_existential_0Tm(v64);
      *v28 = v54;
      *(v28 + 8) = v53;
      *(v28 + 16) = v50;
      *(v28 + 24) = v52;
      *(v28 + 32) = v69;
      return result;
    }

LABEL_15:
    (*(v63 + 8))(v16, v36);
    goto LABEL_9;
  }

  if (v24 != 1)
  {
    v70 = 2;
    sub_230F303C0();
    v38 = v21;
    v36 = v12;
    v39 = v55;
    sub_230F39A48();
    v28 = v61;
    if (!v39)
    {
      v59 = v16;
      v43 = v58;
      v54 = sub_230F39A78();
      v52 = 0;
      v44 = (v63 + 8);
      v53 = v49;
      (*(v60 + 8))(v38, v43);
      (*v44)(v59, v25);
      swift_unknownObjectRelease();
      v50 = 0;
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v70 = 1;
  sub_230F30414();
  v26 = v20;
  v27 = v55;
  sub_230F39A48();
  v28 = v61;
  if (!v27)
  {
    v40 = v59;
    v41 = sub_230F39A78();
    v42 = (v63 + 8);
    v54 = v41;
    v53 = v45;
    (*(v56 + 8))(v26, v40);
    (*v42)(v16, v25);
    swift_unknownObjectRelease();
    v50 = 0;
    v52 = 0;
    goto LABEL_18;
  }

  (*(v63 + 8))(v16, v25);
LABEL_9:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(v64);
}

uint64_t sub_230F30D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB824B0, &qword_230F3CAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_230F30E10()
{
  result = qword_27DB827A0;
  if (!qword_27DB827A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB827A0);
  }

  return result;
}

uint64_t sub_230F30E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB824B0, &qword_230F3CAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230F30ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230F30F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDUIPermissionRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230F30F78(uint64_t a1)
{
  v2 = type metadata accessor for DDUIPermissionRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_230F30FFC()
{
  sub_230F390B8();
  if (v0 <= 0x3F)
  {
    sub_230F31094();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_230F31094()
{
  if (!qword_27DB827C0)
  {
    sub_230F394D8();
    v0 = sub_230F39868();
    if (!v1)
    {
      atomic_store(v0, &qword_27DB827C0);
    }
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230F3110C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_230F31154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDUIPermissionRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DDUIPermissionRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDUIPermissionRequest.Kind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DDUIPermissionRequest.Kind.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230F314D0()
{
  result = qword_27DB827C8;
  if (!qword_27DB827C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB827C8);
  }

  return result;
}

unint64_t sub_230F31528()
{
  result = qword_27DB827D0;
  if (!qword_27DB827D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB827D0);
  }

  return result;
}

unint64_t sub_230F31580()
{
  result = qword_27DB827D8;
  if (!qword_27DB827D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB827D8);
  }

  return result;
}

unint64_t sub_230F315D8()
{
  result = qword_27DB827E0;
  if (!qword_27DB827E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB827E0);
  }

  return result;
}

unint64_t sub_230F31630()
{
  result = qword_27DB827E8;
  if (!qword_27DB827E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB827E8);
  }

  return result;
}

unint64_t sub_230F31688()
{
  result = qword_27DB827F0;
  if (!qword_27DB827F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB827F0);
  }

  return result;
}

unint64_t sub_230F316E0()
{
  result = qword_27DB827F8;
  if (!qword_27DB827F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB827F8);
  }

  return result;
}

unint64_t sub_230F31738()
{
  result = qword_27DB82800;
  if (!qword_27DB82800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82800);
  }

  return result;
}

unint64_t sub_230F31790()
{
  result = qword_27DB82808;
  if (!qword_27DB82808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82808);
  }

  return result;
}

unint64_t sub_230F317E8()
{
  result = qword_27DB82810;
  if (!qword_27DB82810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82810);
  }

  return result;
}

unint64_t sub_230F31840()
{
  result = qword_27DB82818;
  if (!qword_27DB82818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82818);
  }

  return result;
}

unint64_t sub_230F31898()
{
  result = qword_27DB82820;
  if (!qword_27DB82820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82820);
  }

  return result;
}

unint64_t sub_230F318F0()
{
  result = qword_27DB82828;
  if (!qword_27DB82828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82828);
  }

  return result;
}

unint64_t sub_230F31948()
{
  result = qword_27DB82830;
  if (!qword_27DB82830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82830);
  }

  return result;
}

unint64_t sub_230F319A0()
{
  result = qword_27DB82838;
  if (!qword_27DB82838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82838);
  }

  return result;
}

uint64_t sub_230F319F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_230F39B28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_230F39B28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_230F39B28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_230F39B28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230F40320 == a2 || (sub_230F39B28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965)
  {

    return 5;
  }

  else
  {
    v6 = sub_230F39B28();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_230F31C10()
{
  v0 = sub_230F395D8();
  v1 = MGCopyAnswer();

  if (v1)
  {
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_230F31CA4()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_27DB82860);
  __swift_project_value_buffer(v0, qword_27DB82860);
  return sub_230F391E8();
}

uint64_t sub_230F31D20(uint64_t a1, int a2)
{
  v34 = a2;
  v4 = sub_230F390B8();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB828F0, &qword_230F3E820);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB828F8, &qword_230F3E828);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v33[-v18];
  v20 = *(v2 + 32);
  v40 = v2;
  v41 = a1;
  v37 = sub_230F33CB0;
  v38 = &v39;
  os_unfair_lock_lock(v20 + 4);
  sub_230F33CCC();
  os_unfair_lock_unlock(v20 + 4);
  sub_230F33CF4(v19, v17);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    sub_230F33D64(v17);
    if (qword_27DB81D38 != -1)
    {
      swift_once();
    }

    v21 = sub_230F391F8();
    __swift_project_value_buffer(v21, qword_27DB82860);
    v23 = v35;
    v22 = v36;
    (*(v35 + 16))(v7, a1, v36);
    v24 = sub_230F391D8();
    v25 = sub_230F397B8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      sub_230F33834(&qword_27DB821D8, MEMORY[0x277CC95F0]);
      v28 = sub_230F39B08();
      v30 = v29;
      (*(v23 + 8))(v7, v22);
      v31 = sub_230F0F28C(v28, v30, &v42);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_230EF9000, v24, v25, "Missing continuation for %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x231920D30](v27, -1, -1);
      MEMORY[0x231920D30](v26, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v7, v22);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v17, v8);
    LOBYTE(v42) = v34 & 1;
    sub_230F39708();
    (*(v9 + 8))(v12, v8);
  }

  return sub_230F33D64(v19);
}

uint64_t sub_230F3215C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = sub_230F0F984(a2);
  if (v8)
  {
    v9 = v7;
    v10 = *(a1 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 40);
    *(a1 + 40) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230F34284();
    }

    v13 = *(v12 + 48);
    v14 = sub_230F390B8();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v9, v14);
    v15 = *(v12 + 56);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB828F0, &qword_230F3E820);
    v17 = *(v16 - 8);
    (*(v17 + 32))(a3, v15 + *(v17 + 72) * v9, v16);
    sub_230F33DCC(v9, v12);
    v18 = *(a1 + 40);
    *(a1 + 40) = v12;

    (*(v17 + 56))(a3, 0, 1, v16);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB828F0, &qword_230F3E820);
    (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  return swift_endAccess();
}

uint64_t sub_230F32350()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_230F323A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82918, &unk_230F3E840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F345E0();
  sub_230F39BE8();
  v13[15] = 0;
  sub_230F390B8();
  sub_230F33834(&qword_27DB82420, MEMORY[0x277CC95F0]);
  sub_230F39AF8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for DDUIPermissionInvocations.Respond.Parameters(0) + 20));
    v13[14] = 1;
    sub_230F39AE8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_230F32560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_230F390B8();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82908, &qword_230F3E838);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for DDUIPermissionInvocations.Respond.Parameters(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F345E0();
  sub_230F39BD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v20 = v13;
  v15 = v22;
  v27 = 0;
  sub_230F33834(&qword_27DB82430, MEMORY[0x277CC95F0]);
  v16 = v24;
  sub_230F39A98();
  v17 = v20;
  (*(v15 + 32))(v20, v6, v16);
  v26 = 1;
  v18 = sub_230F39A88();
  (*(v23 + 8))(v9, v25);
  *(v17 + *(v10 + 20)) = v18 & 1;
  sub_230F34634(v17, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_230F3387C(v17);
}

uint64_t sub_230F328E4()
{
  if (*v0)
  {
    result = 0x6465747065636361;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_230F32924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_230F39B28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230F39B28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230F32A08(uint64_t a1)
{
  v2 = sub_230F345E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F32A44(uint64_t a1)
{
  v2 = sub_230F345E0();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_230F32AB0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_230F32B4C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_230F32B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = *(MEMORY[0x277D54B00] + 4);
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_230F33834(&qword_27DB828E8, type metadata accessor for DDUIPermissionInvocations.Respond);
  *v18 = v15;
  v18[1] = sub_230F32CB8;

  return MEMORY[0x2821B6150](a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_230F32CB8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_230F32DC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *a3;
  return MEMORY[0x2822009F8](sub_230F32DF0, 0, 0);
}

uint64_t sub_230F32DF0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for DDUIPermissionInvocations.Respond.Parameters(0);
  sub_230F31D20(v1, *(v1 + *(v4 + 20)));
  sub_230F39448();
  v5 = v0[1];

  return v5();
}

id DDUIPermissionClient.init(identifier:)(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  ObjectType = swift_getObjectType();
  v21 = sub_230F39808();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v21);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_230F397F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_230F39578();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v20 = OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUIPermissionClient_queue;
  sub_230F0D5C8();
  sub_230F39568();
  v25 = MEMORY[0x277D84F90];
  sub_230F33834(&qword_27DB81E30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB81E38, &qword_230F3BFF0);
  sub_230F0D614();
  sub_230F39898();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v21);
  v11 = sub_230F39828();
  *&v2[v20] = v11;
  v12 = OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUIPermissionClient_identifier;
  v13 = sub_230F390B8();
  v14 = *(v13 - 8);
  v15 = v22;
  (*(v14 + 16))(&v2[v12], v22, v13);
  sub_230F394A8();
  v16 = v11;
  *&v2[OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUIPermissionClient_connection] = sub_230F39488();

  sub_230F39498();

  v24.receiver = v2;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  (*(v14 + 8))(v15, v13);
  return v17;
}

id DDUIPermissionClient.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUIPermissionClient_connection];

  sub_230F39468();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t DDUIPermissionClient.handleResponse(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  v3 = type metadata accessor for DDUIPermissionInvocations.Respond.Parameters(0);
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v5 = sub_230F39458();
  *(v2 + 40) = v5;
  v6 = *(v5 - 8);
  *(v2 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F33460, 0, 0);
}

uint64_t sub_230F33460()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);
  v5 = *(v3 + OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUIPermissionClient_connection);
  v6 = type metadata accessor for DDUIPermissionInvocations.Respond(0);
  v7 = OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUIPermissionClient_identifier;
  v8 = sub_230F390B8();
  (*(*(v8 - 8) + 16))(v1, v3 + v7, v8);
  *(v1 + *(v2 + 20)) = v4;
  v9 = *(MEMORY[0x277D549F8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  v11 = sub_230F33834(&qword_27DB82890, type metadata accessor for DDUIPermissionInvocations.Respond);
  *v10 = v0;
  v10[1] = sub_230F335C4;
  v12 = *(v0 + 56);
  v13 = *(v0 + 32);

  return MEMORY[0x2821B5FC8](v12, v6, v13, v6, v11);
}

uint64_t sub_230F335C4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 72) = v0;

  sub_230F3387C(v4);
  if (v0)
  {
    v5 = sub_230F33784;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v5 = sub_230F33714;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_230F33714()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_230F33784()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_230F33834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230F3387C(uint64_t a1)
{
  v2 = type metadata accessor for DDUIPermissionInvocations.Respond.Parameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DDUIPermissionClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_230F33A00()
{
  result = sub_230F390B8();
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

uint64_t sub_230F33AD4()
{
  result = sub_230F390B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230F33CCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_230F33CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB828F8, &qword_230F3E828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230F33D64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB828F8, &qword_230F3E828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230F33DCC(int64_t a1, uint64_t a2)
{
  v4 = sub_230F390B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_230F398A8();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_230F33834(&qword_27DB82138, MEMORY[0x277CC95F0]);
      v24 = sub_230F395A8();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB828F0, &qword_230F3E820) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
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

void *sub_230F3411C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82148, &qword_230F3C680);
  v2 = *v0;
  v3 = sub_230F399F8();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

char *sub_230F34284()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB828F0, &qword_230F3E820);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_230F390B8();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82900, &qword_230F3E830);
  v6 = *v0;
  v7 = sub_230F399F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

unint64_t sub_230F345E0()
{
  result = qword_27DB82910;
  if (!qword_27DB82910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82910);
  }

  return result;
}

uint64_t sub_230F34634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDUIPermissionInvocations.Respond.Parameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_230F346BC()
{
  result = qword_27DB82920;
  if (!qword_27DB82920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82920);
  }

  return result;
}

unint64_t sub_230F34714()
{
  result = qword_27DB82928;
  if (!qword_27DB82928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82928);
  }

  return result;
}

unint64_t sub_230F3476C()
{
  result = qword_27DB82930;
  if (!qword_27DB82930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82930);
  }

  return result;
}

uint64_t DDUIConfirmationActionResult.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x747065636361;
  }

  if (a1 == 1)
  {
    return 0x656E696C636564;
  }

  return 0x726F727265;
}

uint64_t sub_230F34810()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_27DB82940);
  __swift_project_value_buffer(v0, qword_27DB82940);
  sub_230F39658();
  return sub_230F391E8();
}

id DDUIConfirmationAction.init(result:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  v2 = sub_230F395D8();

  [v1 setObject:v2 forSetting:1];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for DDUIConfirmationAction();
  v3 = objc_msgSendSuper2(&v5, sel_initWithInfo_responder_, v1, 0);

  return v3;
}

id DDUIConfirmationAction.__allocating_init(info:responder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

id DDUIConfirmationAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DDUIConfirmationAction.__allocating_init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_230F34DBC;
    v13[3] = &block_descriptor_3;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithInfo:a1 timeout:a2 forResponseOnQueue:v10 withHandler:a5];
  _Block_release(v10);

  return v11;
}

void sub_230F34DBC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_230F34E9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x656E696C636564;
  if (v2 != 1)
  {
    v4 = 0x726F727265;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x747065636361;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x656E696C636564;
  if (*a2 != 1)
  {
    v8 = 0x726F727265;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x747065636361;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230F39B28();
  }

  return v11 & 1;
}

uint64_t sub_230F34F94()
{
  v1 = *v0;
  sub_230F39BA8();
  sub_230F39638();

  return sub_230F39BC8();
}

uint64_t sub_230F35030()
{
  *v0;
  *v0;
  sub_230F39638();
}

uint64_t sub_230F350B8()
{
  v1 = *v0;
  sub_230F39BA8();
  sub_230F39638();

  return sub_230F39BC8();
}

uint64_t sub_230F35150@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s21DeviceDiscoveryUICore28DDUIConfirmationActionResultO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_230F35180(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656E696C636564;
  if (v2 != 1)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x747065636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_230F351D8()
{
  v0 = objc_allocWithZone(MEMORY[0x277D0AAE8]);
  v1 = sub_230F395D8();
  v2 = [v0 initWithIdentifier_];

  qword_27DB86DB8 = v2;
}

void sub_230F352E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v5 = type metadata accessor for DDUIPermissionRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A50, &unk_230F3EAB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v40 - v9;
  v11 = OBJC_IVAR____TtC21DeviceDiscoveryUICore28DDUIConfirmationSceneManager_continuation;
  swift_beginAccess();
  sub_230F38458(v3 + v11, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A48, &qword_230F3EAB0);
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_230F0D798(v10, &qword_27DB82A50, &unk_230F3EAB8);
  if (v11 != 1)
  {
    if (qword_27DB81D40 != -1)
    {
      swift_once();
    }

    v27 = sub_230F391F8();
    __swift_project_value_buffer(v27, qword_27DB82940);
    v22 = sub_230F391D8();
    v28 = sub_230F397B8();
    if (!os_log_type_enabled(v22, v28))
    {
      goto LABEL_18;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_230EF9000, v22, v28, "Asked to present a confirmation dialog while one is already waiting for a reply", v24, 2u);
    goto LABEL_13;
  }

  v41 = v3;
  v13 = (a1 + *(v5 + 36));
  v14 = *v13;
  v15 = v13[1];
  aBlock = 0;
  v45 = 0xE000000000000000;
  sub_230F39978();

  aBlock = 0xD000000000000023;
  v45 = 0x8000000230F409F0;
  MEMORY[0x23191FB50](v14, v15);
  v17 = aBlock;
  v16 = v45;
  if (qword_27DB81D48 != -1)
  {
    swift_once();
  }

  v18 = qword_27DB86DB8;
  v19 = sub_230F395D8();
  v20 = [v18 sceneWithIdentifier_];

  if (v20)
  {

    if (qword_27DB81D40 != -1)
    {
      swift_once();
    }

    v21 = sub_230F391F8();
    __swift_project_value_buffer(v21, qword_27DB82940);

    v22 = sub_230F391D8();
    v23 = sub_230F397B8();

    if (!os_log_type_enabled(v22, v23))
    {

      goto LABEL_18;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136315138;
    v26 = sub_230F0F28C(v17, v16, &aBlock);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_230EF9000, v22, v23, "Asked to present while a scene already exists for %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x231920D30](v25, -1, -1);
LABEL_13:
    MEMORY[0x231920D30](v24, -1, -1);
LABEL_18:

    return;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v17;
  *(v29 + 24) = v16;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_230F385DC;
  *(v30 + 24) = v29;
  v48 = sub_230F17F10;
  v49 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v40[1] = &v46;
  v46 = sub_230F16AFC;
  v47 = &block_descriptor_21;
  v31 = _Block_copy(&aBlock);

  v32 = [v18 createScene_];
  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    v33 = v41;
    [v32 setDelegate_];
    [v32 addObserver_];
    sub_230F30F14(a1, v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v35 = swift_allocObject();
    sub_230F385E4(v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
    v36 = (v35 + ((v7 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    v37 = v43;
    *v36 = v42;
    v36[1] = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_230F38648;
    *(v38 + 24) = v35;
    v48 = sub_230F18664;
    v49 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_230F388FC;
    v47 = &block_descriptor_30;
    v39 = _Block_copy(&aBlock);

    [v32 configureParameters_];
    _Block_release(v39);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if ((v39 & 1) == 0)
    {
      [v32 activate_];

      return;
    }
  }

  __break(1u);
}

void sub_230F359E0(void *a1)
{
  v2 = sub_230F395D8();
  [a1 setIdentifier_];

  v3 = [objc_allocWithZone(type metadata accessor for DevicePickerConfirmationSceneSpecification()) init];
  [a1 setSpecification_];

  v4 = sub_230F395D8();
  v5 = [objc_opt_self() identityForAngelJobLabel_];

  [a1 setClientIdentity_];
}

uint64_t sub_230F35AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(type metadata accessor for DDUIPermissionRequest() - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  sub_230F30F14(a2, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_230F385E4(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a3;
  v12[1] = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_230F38824;
  *(v13 + 24) = v11;
  aBlock[4] = sub_230F18664;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_230F388FC;
  aBlock[3] = &block_descriptor_39;
  v14 = _Block_copy(aBlock);

  [a1 updateSettingsWithBlock_];
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_230F35CE4(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainConfiguration];
  [a1 setDisplayConfiguration_];

  [a1 setForeground_];
  type metadata accessor for DDUIConfirmationDialogMutableSceneSettings();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for DDUIPermissionRequest();
    v8 = (a2 + v7[9]);
    v9 = *v8;
    v10 = v8[1];
    v24 = a1;
    v11 = [v6 otherSettings];
    v12 = sub_230F395D8();
    [v11 setObject:v12 forSetting:18492849];

    v13 = (a2 + v7[8]);
    v14 = *v13;
    v15 = v13[1];
    v16 = [v6 otherSettings];
    v17 = sub_230F395D8();
    [v16 setObject:v17 forSetting:18492848];

    v18 = [v6 otherSettings];
    v19 = sub_230F395D8();
    [v18 setObject:v19 forSetting:18492850];

    v20 = a2 + v7[7];
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    v25[0] = *v20;
    v25[1] = v21;
    v25[2] = v22;
    v25[3] = v23;
    v26 = *(v20 + 32);
    sub_230F266B0(v25[0], v21, v22, v23, v26);
    sub_230F0CFA8(v25);
  }
}

uint64_t sub_230F35F1C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A50, &unk_230F3EAB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A48, &qword_230F3EAB0);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC21DeviceDiscoveryUICore28DDUIConfirmationSceneManager_continuation;
  swift_beginAccess();
  sub_230F384C8(v6, a2 + v9);
  return swift_endAccess();
}

void sub_230F36054(void *a1, uint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A48, &qword_230F3EAB0);
  v5 = *(v65 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v65);
  v59 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A50, &unk_230F3EAB8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v64 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v52 - v12;
  v72 = MEMORY[0x277D84FA0];
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_230F398C8();
    sub_230F38538();
    sub_230F38584();
    sub_230F39788();
    a2 = v73;
    v14 = v74;
    v15 = v75;
    v16 = v76;
    v17 = v77;
  }

  else
  {
    v18 = -1 << *(a2 + 32);
    v14 = a2 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a2 + 56);

    v16 = 0;
  }

  v67 = v15;
  v21 = (v15 + 64) >> 6;
  v62 = (v5 + 48);
  v58 = (v5 + 16);
  v57 = (v5 + 8);
  v61 = (v5 + 56);
  *&v13 = 136315138;
  v60 = v13;
  while (a2 < 0)
  {
    v27 = sub_230F398F8();
    if (!v27 || (*&v68 = v27, sub_230F38538(), swift_dynamicCast(), v26 = v70, v24 = v16, v25 = v17, !v70))
    {
LABEL_48:
      sub_230F1094C();
      return;
    }

LABEL_19:
    type metadata accessor for DDUIConfirmationAction();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {

      goto LABEL_9;
    }

    v29 = v28;
    v30 = v26;
    v31 = [v29 info];
    if (!v31)
    {

      v70 = 0u;
      v71 = 0u;
LABEL_40:
      sub_230F0D798(&v70, &qword_27DB81D50, &unk_230F3BFE0);
      goto LABEL_9;
    }

    v32 = v31;
    v33 = [v31 objectForSetting_];

    if (v33)
    {
      sub_230F39888();
      swift_unknownObjectRelease();
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
    }

    v70 = v68;
    v71 = v69;
    if (!*(&v69 + 1))
    {

      goto LABEL_40;
    }

    if ((swift_dynamicCast() & 1) != 0 && (v34 = sub_230F39A38(), , v34 < 3))
    {
      v56 = v34;
      if (qword_27DB81D40 != -1)
      {
        swift_once();
      }

      v35 = sub_230F391F8();
      __swift_project_value_buffer(v35, qword_27DB82940);
      v36 = sub_230F391D8();
      v37 = sub_230F39798();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v70 = v39;
        v54 = v38;
        *v38 = v60;
        v55 = v3;
        v53 = v39;
        if (v56)
        {
          if (v56 == 1)
          {
            v40 = 0x656E696C636564;
          }

          else
          {
            v40 = 0x726F727265;
          }

          if (v56 == 1)
          {
            v41 = 0xE700000000000000;
          }

          else
          {
            v41 = 0xE500000000000000;
          }
        }

        else
        {
          v41 = 0xE600000000000000;
          v40 = 0x747065636361;
        }

        v42 = sub_230F0F28C(v40, v41, &v70);

        v43 = v54;
        *(v54 + 1) = v42;
        _os_log_impl(&dword_230EF9000, v36, v37, "got confirmation action: %s", v43, 0xCu);
        v44 = v53;
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x231920D30](v44, -1, -1);
        MEMORY[0x231920D30](v43, -1, -1);

        v3 = v55;
      }

      else
      {
      }

      sub_230F36F44(&v70, v30);

      v45 = v66;
      [v66 setDelegate_];
      [v45 removeObserver_];
      [v45 invalidate];
      v46 = OBJC_IVAR____TtC21DeviceDiscoveryUICore28DDUIConfirmationSceneManager_continuation;
      swift_beginAccess();
      v47 = v63;
      sub_230F38458(v3 + v46, v63);
      v48 = v65;
      if ((*v62)(v47, 1, v65))
      {

        sub_230F0D798(v47, &qword_27DB82A50, &unk_230F3EAB8);
      }

      else
      {
        v49 = v59;
        (*v58)(v59, v47, v48);
        sub_230F0D798(v47, &qword_27DB82A50, &unk_230F3EAB8);
        LOBYTE(v70) = v56;
        sub_230F39708();

        (*v57)(v49, v48);
      }

      v50 = v64;
      (*v61)(v64, 1, 1, v48);
      v51 = OBJC_IVAR____TtC21DeviceDiscoveryUICore28DDUIConfirmationSceneManager_continuation;
      swift_beginAccess();
      sub_230F384C8(v50, v3 + v51);
      swift_endAccess();
    }

    else
    {
    }

LABEL_9:
    v16 = v24;
    v17 = v25;
  }

  v22 = v16;
  v23 = v17;
  v24 = v16;
  if (v17)
  {
LABEL_15:
    v25 = (v23 - 1) & v23;
    v26 = *(*(a2 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v26)
    {
      goto LABEL_48;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_48;
    }

    v23 = *(v14 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_230F368AC()
{

  v0 = sub_230F39668();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_230F39668();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_230F39B28();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_230F39668();
      v3 = v5;
    }

    while (v5);
  }

  sub_230F39668();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_230F36AE4(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A48, &qword_230F3EAB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A50, &unk_230F3EAB8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v20[-v16];
  [a1 setDelegate_];
  [a1 removeObserver_];
  [a1 invalidate];
  v18 = OBJC_IVAR____TtC21DeviceDiscoveryUICore28DDUIConfirmationSceneManager_continuation;
  swift_beginAccess();
  sub_230F38458(v3 + v18, v17);
  if ((*(v7 + 48))(v17, 1, v6))
  {
    sub_230F0D798(v17, &qword_27DB82A50, &unk_230F3EAB8);
  }

  else
  {
    (*(v7 + 16))(v10, v17, v6);
    sub_230F0D798(v17, &qword_27DB82A50, &unk_230F3EAB8);
    v20[0] = a2;
    sub_230F39708();
    (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 56))(v15, 1, 1, v6);
  swift_beginAccess();
  sub_230F384C8(v15, v3 + v18);
  return swift_endAccess();
}

id sub_230F36D88(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_230F36DF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_230F39BA8();
  sub_230F39638();
  v9 = sub_230F39BC8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_230F39B28() & 1) != 0)
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

    sub_230F37848(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_230F36F44(void *a1, void *a2)
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

    v8 = a2;

    v9 = sub_230F398E8();

    if (v9)
    {

      sub_230F38538();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_230F398D8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_230F3715C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_230F3759C(v22 + 1);
    }

    v20 = v8;
    sub_230F377C4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_230F38538();
  v11 = *(v6 + 40);
  v12 = sub_230F39848();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_230F379C8(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_230F39858();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_230F3715C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A70, &unk_230F3EAC8);
    v2 = sub_230F39958();
    v16 = v2;
    sub_230F398C8();
    if (sub_230F398F8())
    {
      sub_230F38538();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_230F3759C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_230F39848();
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

      while (sub_230F398F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_230F3733C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82AD8, &qword_230F3EAD8);
  result = sub_230F39948();
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
      sub_230F39BA8();
      sub_230F39638();
      result = sub_230F39BC8();
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

uint64_t sub_230F3759C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A70, &unk_230F3EAC8);
  result = sub_230F39948();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = sub_230F39848();
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

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_230F377C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_230F39848();
  v5 = -1 << *(a2 + 32);
  result = sub_230F398B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_230F37848(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_230F3733C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_230F37B28();
      goto LABEL_16;
    }

    sub_230F37DD4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_230F39BA8();
  sub_230F39638();
  result = sub_230F39BC8();
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

      result = sub_230F39B28();
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
  result = sub_230F39B38();
  __break(1u);
  return result;
}

void sub_230F379C8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_230F3759C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_230F37C84();
      goto LABEL_12;
    }

    sub_230F3800C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_230F39848();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_230F38538();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_230F39858();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_230F39B38();
  __break(1u);
}

void *sub_230F37B28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82AD8, &qword_230F3EAD8);
  v2 = *v0;
  v3 = sub_230F39938();
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

id sub_230F37C84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A70, &unk_230F3EAC8);
  v2 = *v0;
  v3 = sub_230F39938();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_230F37DD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82AD8, &qword_230F3EAD8);
  result = sub_230F39948();
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
      sub_230F39BA8();

      sub_230F39638();
      result = sub_230F39BC8();
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

uint64_t sub_230F3800C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A70, &unk_230F3EAC8);
  result = sub_230F39948();
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_230F39848();
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
      *(*(v6 + 48) + 8 * v13) = v18;
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

uint64_t _s21DeviceDiscoveryUICore28DDUIConfirmationActionResultO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_230F39A38();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_230F38288()
{
  result = qword_27DB82958;
  if (!qword_27DB82958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82958);
  }

  return result;
}

uint64_t type metadata accessor for DDUIConfirmationSceneManager()
{
  result = qword_27DB82A30;
  if (!qword_27DB82A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_230F38364()
{
  sub_230F383F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_230F383F4()
{
  if (!qword_27DB82A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB82A48, &qword_230F3EAB0);
    v0 = sub_230F39868();
    if (!v1)
    {
      atomic_store(v0, &qword_27DB82A40);
    }
  }
}

uint64_t sub_230F38458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A50, &unk_230F3EAB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230F384C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A50, &unk_230F3EAB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_230F38538()
{
  result = qword_27DB82A58;
  if (!qword_27DB82A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB82A58);
  }

  return result;
}

unint64_t sub_230F38584()
{
  result = qword_27DB82A60;
  if (!qword_27DB82A60)
  {
    sub_230F38538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82A60);
  }

  return result;
}

void sub_230F385DC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_230F359E0(a1);
}

uint64_t sub_230F385E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDUIPermissionRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for DDUIPermissionRequest();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_230F390B8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5] + 8);

  v8 = v1[6];
  v9 = sub_230F394D8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v5 + v1[7];
  sub_230F26718(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32));
  v13 = *(v5 + v1[8] + 8);

  v14 = *(v5 + v1[9] + 8);

  v15 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v2 | 7);
}

uint64_t sub_230F3883C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DDUIPermissionRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

void DDUIEndpointPairingBrowsingTransportForOptions_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_230EF9000, a2, OS_LOG_TYPE_ERROR, "DDUIEndpointPairingBrowsingTransportForOptions -- invalid options given, returning nil! {options: %lu}", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void DDUIEndpointPairingListeningTransportForOptions_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_230EF9000, a2, OS_LOG_TYPE_ERROR, "DDUIEndpointPairingListeningTransportForOptions -- invalid options given, returning nil! {options: %lu}", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void DDUIDeviceTypeForModelString_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_230EF9000, a2, OS_LOG_TYPE_FAULT, "Unable to determine a device type for model %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}