unint64_t sub_2489919EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56A0, &unk_248A15320);
    v3 = sub_248A13240();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;

      result = sub_2489A8714(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
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

unint64_t sub_248991AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5680, &qword_248A152F8);
    v3 = sub_248A13240();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2489A7D40(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_248991BE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5690, &qword_248A15308);
    v3 = sub_248A13240();
    for (i = a1 + 32; ; i += 40)
    {
      sub_24898D610(i, &v11, &qword_27EEB5698, &unk_248A15310);
      v5 = v11;
      result = sub_2489A87D4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_248983794(&v12, (v3[7] + 32 * result));
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

unint64_t sub_248991D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5688, &qword_248A15300);
    v3 = sub_248A13240();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2489A7D40(v5, v6);
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

uint64_t sub_248991E04(char a1)
{
  if (a1)
  {
    return 0x72656E657473696CLL;
  }

  else
  {
    return 0x726573776F7262;
  }
}

uint64_t sub_248991E3C()
{
  v0 = sub_248A13260();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248991E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_248991F04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_248991F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_248991FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_248992050@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_248991E3C();
  *a2 = result;
  return result;
}

uint64_t sub_248992080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_248991E04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2489920B4(uint64_t a1)
{
  (*(*(a1 - 8) + 16))(v10, v1, a1);
  if (v12)
  {
    if (v12 != 1)
    {
      return 0x6576697463616E49;
    }

    sub_248978948(v11, v9);
    sub_248A13100();
    v3 = 0x2820657669746341;
    v4 = 0xE800000000000000;
  }

  else
  {
    sub_248978948(v11, v9);
    sub_248A13100();
    v3 = 0x6974617669746341;
    v4 = 0xEC0000002820676ELL;
  }

  MEMORY[0x24C1DF8B0](v3, v4);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for PeerConnectionServiceCoordinator.Role();
  swift_getWitnessTable();
  sub_248A13330();
  MEMORY[0x24C1DF8B0](8236, 0xE200000000000000);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  sub_248A13330();
  MEMORY[0x24C1DF8B0](8236, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
  sub_248A131F0();

  v7 = 0;
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v7;
}

uint64_t sub_2489922F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = type metadata accessor for PeerConnectionServiceCoordinator.State();
  return (*(*(v6 - 8) + 16))(a1, v1 + 14, v6);
}

uint64_t sub_2489923A4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = type metadata accessor for PeerConnectionServiceCoordinator.State();
  (*(*(v6 - 8) + 40))(v1 + 14, a1, v6);
  return swift_endAccess();
}

uint64_t PeerConnectionServiceCoordinator.__allocating_init(nearbyDeviceProviding:rapportXPCEventServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_2489968CC(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t PeerConnectionServiceCoordinator.init(nearbyDeviceProviding:rapportXPCEventServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2489968CC(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_24899252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_248992550, 0, 0);
}

uint64_t sub_248992550()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v0[5] = swift_getObjectType();
  v4 = *(v2 + 24);
  v2 += 24;
  v0[6] = v4;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0xCD1A000000000000;
  v5 = *(v2 - 8);

  v7 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248992604, v7, v6);
}

uint64_t sub_248992604()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  (*(v0 + 48))(&unk_248A15610, *(v0 + 32), *(v0 + 40), *(v0 + 24));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24899268C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248992728;

  return sub_2489929F0(1, a1);
}

uint64_t sub_248992728()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24899285C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24899285C()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_248975000, v4, v5, "Error initiating peer connection: %@", v8, 0xCu);
    sub_24897CA88(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2489929F0(char a1, uint64_t a2)
{
  *(v3 + 344) = a2;
  *(v3 + 352) = v2;
  *(v3 + 73) = a1;
  *(v3 + 360) = *v2;
  *(v3 + 368) = *v2;
  v4 = sub_248A131D0();
  *(v3 + 376) = v4;
  v5 = *(v4 - 8);
  *(v3 + 384) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  v7 = sub_248A134B0();
  *(v3 + 400) = v7;
  v8 = *(v7 - 8);
  *(v3 + 408) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 416) = swift_task_alloc();
  v10 = sub_248A13310();
  *(v3 + 424) = v10;
  v11 = *(v10 - 8);
  *(v3 + 432) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 440) = swift_task_alloc();
  v13 = sub_248A134D0();
  *(v3 + 448) = v13;
  v14 = *(v13 - 8);
  *(v3 + 456) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 464) = swift_task_alloc();
  v16 = sub_248A13510();
  *(v3 + 472) = v16;
  v17 = *(v16 - 8);
  *(v3 + 480) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 488) = swift_task_alloc();
  v19 = sub_248A13520();
  *(v3 + 496) = v19;
  v20 = *(v19 - 8);
  *(v3 + 504) = v20;
  v21 = *(v20 + 64) + 15;
  *(v3 + 512) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248992CD0, v2, 0);
}

uint64_t sub_248992CD0()
{
  v17 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  *(v0 + 76) = *MEMORY[0x277D84680];
  *(v0 + 520) = 1;
  v1 = sub_248A122D0();
  *(v0 + 528) = __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 360);
    if (*(v0 + 73))
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (*(v0 + 73))
    {
      v6 = 0x72656E657473696CLL;
    }

    else
    {
      v6 = 0x726573776F7262;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446722;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_24897BC00(v6, v5, &v16);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2050;
    *(v7 + 24) = 1;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Initiating peer connection with role %{public}s (attempt #: %{public}ld)", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v13 = swift_task_alloc();
  *(v0 + 536) = v13;
  *v13 = v0;
  v13[1] = sub_248992F30;
  v14 = *(v0 + 352);

  return sub_2489954CC();
}

uint64_t sub_248992F30()
{
  v2 = *(*v1 + 536);
  v3 = *v1;
  v3[68] = v0;

  if (v0)
  {
    v4 = v3[64];
    v5 = v3[61];
    v6 = v3[58];
    v7 = v3[55];
    v8 = v3[52];
    v9 = v3[49];

    v10 = v3[1];

    return v10();
  }

  else
  {
    v12 = v3[44];

    return MEMORY[0x2822009F8](sub_2489930C0, v12, 0);
  }
}

uint64_t sub_2489930C0()
{
  v33 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 73);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = *(v0 + 360);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446210;
      v9 = sub_248A13570();
      v11 = sub_24897BC00(v9, v10, v32);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Initializing listener", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1E0A80](v8, -1, -1);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    v12 = *(v0 + 544);
    v13 = *(v0 + 368);
    *(v0 + 600) = *(v13 + 80);
    *(v0 + 608) = *(v13 + 88);
    type metadata accessor for PeerListener();
    *(v0 + 616) = sub_2489B7B98();
    sub_2489B7BD0();
    if (v12)
    {

      v14 = *(v0 + 512);
      v15 = *(v0 + 488);
      v16 = *(v0 + 464);
      v17 = *(v0 + 440);
      v18 = *(v0 + 416);
      v19 = *(v0 + 392);

      v20 = *(v0 + 8);

      return v20();
    }

    else
    {
      v31 = swift_task_alloc();
      *(v0 + 624) = v31;
      *v31 = v0;
      v31[1] = sub_2489939B4;

      return sub_2489B8100();
    }
  }

  else
  {
    if (v5)
    {
      v22 = *(v0 + 360);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136446210;
      v25 = sub_248A13570();
      v27 = sub_24897BC00(v25, v26, v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Initializing browser", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C1E0A80](v24, -1, -1);
      MEMORY[0x24C1E0A80](v23, -1, -1);
    }

    v28 = *(v0 + 368);
    v29 = *(v0 + 352);
    *(v0 + 552) = *(v28 + 80);
    *(v0 + 560) = *(v28 + 88);
    type metadata accessor for PeerBrowser();
    *(v0 + 568) = PeerBrowser.__allocating_init(nearbyDeviceProvider:)(*(v29 + 184), *(v29 + 192));
    swift_unknownObjectRetain();
    sub_2489BACD0();
    v30 = swift_task_alloc();
    *(v0 + 576) = v30;
    *v30 = v0;
    v30[1] = sub_248993464;

    return sub_2489BB00C();
  }
}

uint64_t sub_248993464(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 576);
  v15 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {
    v6 = v4[44];
    v7 = sub_248994778;
    v8 = 0;
  }

  else
  {
    v9 = v4[70];
    v10 = v4[69];
    v4[74] = a1;
    type metadata accessor for PeerConnection();

    swift_getWitnessTable();
    v11 = sub_248A12CD0();
    v13 = v12;
    v7 = sub_2489935E4;
    v6 = v11;
    v8 = v13;
  }

  return MEMORY[0x2822009F8](v7, v6, v8);
}

uint64_t sub_2489935E4()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 352);
  sub_24898BBA0(v2, &off_285B61008);

  return MEMORY[0x2822009F8](sub_248993664, v2, 0);
}

uint64_t sub_248993664()
{
  v31 = v0;
  v1 = v0[71];
  sub_2489BBA60();
  v2 = v0[74];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v0[83] = v2;
  v0[82] = v5;
  v0[81] = v4;
  v6 = v0[44];

  v7 = *(v6 + 200);
  v0[84] = v7;
  v0[85] = *(v6 + 208);
  if (v7)
  {
    sub_2489789C8(v7);

    v29 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[86] = v9;
    *v9 = v0;
    v9[1] = sub_248993F04;

    return (v29)(v0 + 26, v2);
  }

  else
  {
    v11 = v0[66];
    v12 = sub_248A122B0();
    v13 = sub_248A12E70();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[45];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136446210;
      v17 = sub_248A13570();
      v19 = sub_24897BC00(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Peer connection service provider not set", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1E0A80](v16, -1, -1);
      MEMORY[0x24C1E0A80](v15, -1, -1);
    }

    v20 = sub_248A12150();
    sub_2489975AC(qword_27EEB5470, MEMORY[0x277D05138]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D05130], v20);
    swift_willThrow();

    v22 = v0[64];
    v23 = v0[61];
    v24 = v0[58];
    v25 = v0[55];
    v26 = v0[52];
    v27 = v0[49];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2489939B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 624);
  v15 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {
    v6 = v4[44];
    v7 = sub_248994830;
    v8 = 0;
  }

  else
  {
    v9 = v4[76];
    v10 = v4[75];
    v4[80] = a1;
    type metadata accessor for PeerConnection();

    swift_getWitnessTable();
    v11 = sub_248A12CD0();
    v13 = v12;
    v7 = sub_248993B34;
    v6 = v11;
    v8 = v13;
  }

  return MEMORY[0x2822009F8](v7, v6, v8);
}

uint64_t sub_248993B34()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 352);
  sub_24898BBA0(v2, &off_285B61008);

  return MEMORY[0x2822009F8](sub_248993BB4, v2, 0);
}

uint64_t sub_248993BB4()
{
  v31 = v0;
  v1 = v0[77];
  sub_2489B8704();
  v2 = v0[80];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v0[83] = v2;
  v0[82] = v5;
  v0[81] = v4;
  v6 = v0[44];

  v7 = *(v6 + 200);
  v0[84] = v7;
  v0[85] = *(v6 + 208);
  if (v7)
  {
    sub_2489789C8(v7);

    v29 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[86] = v9;
    *v9 = v0;
    v9[1] = sub_248993F04;

    return (v29)(v0 + 26, v2);
  }

  else
  {
    v11 = v0[66];
    v12 = sub_248A122B0();
    v13 = sub_248A12E70();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[45];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136446210;
      v17 = sub_248A13570();
      v19 = sub_24897BC00(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Peer connection service provider not set", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1E0A80](v16, -1, -1);
      MEMORY[0x24C1E0A80](v15, -1, -1);
    }

    v20 = sub_248A12150();
    sub_2489975AC(qword_27EEB5470, MEMORY[0x277D05138]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D05130], v20);
    swift_willThrow();

    v22 = v0[64];
    v23 = v0[61];
    v24 = v0[58];
    v25 = v0[55];
    v26 = v0[52];
    v27 = v0[49];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_248993F04()
{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_248994014, v2, 0);
}

uint64_t sub_248994014()
{
  v32 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 528);
  sub_248997228(v0 + 208, v0 + 248);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 664);
    v6 = *(v0 + 360);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446722;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v31);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_248997228(v0 + 248, v0 + 288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
    v12 = sub_248A12B80();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    v15 = sub_24897BC00(v12, v14, &v31);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2082;
    v16 = PeerConnection.description.getter();
    v18 = v17;

    v19 = sub_24897BC00(v16, v18, &v31);

    *(v7 + 24) = v19;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Created peer connection service %{public}s with peer connection %{public}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
    v20 = *(v0 + 664);

    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  }

  v21 = *(v0 + 664);
  v22 = *(v0 + 352);
  *(v0 + 16) = *(v0 + 73) & 1;
  *(v0 + 24) = v21;
  sub_248997228(v0 + 208, v0 + 32);
  *(v0 + 72) = 0;

  sub_2489923A4(v0 + 16);
  v23 = *(v0 + 232);
  v24 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v23);
  v25 = *(v24 + 8);
  v30 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 696) = v27;
  *v27 = v0;
  v27[1] = sub_24899434C;
  v28 = *(v0 + 344);

  return v30(v28, v23, v24);
}

uint64_t sub_24899434C()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v4 = *v1;
  *(*v1 + 704) = v0;

  v5 = *(v2 + 352);
  if (v0)
  {
    v6 = sub_2489948E8;
  }

  else
  {
    v6 = sub_248994478;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_248994478()
{
  v35 = v0;
  *(v0 + 80) = *(v0 + 73) & 1;
  v1 = *(v0 + 528);
  v2 = *(v0 + 352);
  *(v0 + 88) = *(v0 + 664);
  sub_248997228(v0 + 208, v0 + 96);
  *(v0 + 136) = 1;

  sub_2489923A4(v0 + 80);
  swift_retain_n();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v32 = *(v0 + 672);
    v33 = *(v0 + 680);
    v30 = *(v0 + 656);
    v31 = *(v0 + 664);
    v5 = *(v0 + 648);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v34);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    sub_2489922F4(v0 + 144);

    v13 = type metadata accessor for PeerConnectionServiceCoordinator.State();
    v14 = sub_2489920B4(v13);
    v16 = v15;

    (*(*(v13 - 8) + 8))(v0 + 144, v13);
    v17 = sub_24897BC00(v14, v16, &v34);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Peer connection initiated: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);

    sub_248996A48(v32);
  }

  else
  {
    v18 = *(v0 + 680);
    v19 = *(v0 + 672);
    v20 = *(v0 + 664);
    v21 = *(v0 + 352);

    sub_248996A48(v19);
  }

  v22 = *(v0 + 512);
  v23 = *(v0 + 488);
  v24 = *(v0 + 464);
  v25 = *(v0 + 440);
  v26 = *(v0 + 416);
  v27 = *(v0 + 392);
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_248994778()
{
  v1 = v0[71];

  v2 = v0[73];
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[55];
  v7 = v0[52];
  v8 = v0[49];

  v9 = v0[1];

  return v9();
}

uint64_t sub_248994830()
{
  v1 = v0[77];

  v2 = v0[79];
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[55];
  v7 = v0[52];
  v8 = v0[49];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2489948E8()
{
  v73 = v0;
  v1 = *(v0 + 520);
  if (v1 == 5)
  {
    v2 = *(v0 + 704);
    v3 = *(v0 + 528);
    v4 = v2;
    v5 = sub_248A122B0();
    v6 = sub_248A12E60();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 704);
      v8 = *(v0 + 360);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v72[0] = v11;
      *v9 = 136446466;
      v12 = sub_248A13570();
      v14 = sub_24897BC00(v12, v13, v72);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2114;
      v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] Failed to initiate peer connection with error: %{public}@; out of retries", v9, 0x16u);
      sub_24897CA88(v10);
      MEMORY[0x24C1E0A80](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1E0A80](v11, -1, -1);
      MEMORY[0x24C1E0A80](v9, -1, -1);
    }

    v17 = *(v0 + 704);
    v18 = *(v0 + 680);
    v19 = *(v0 + 672);
    v20 = *(v0 + 664);
    [objc_opt_self() dss:140 errorWithCode:0 userInfo:1 retryable:?];
    swift_willThrow();

    sub_248996A48(v19);

    __swift_destroy_boxed_opaque_existential_0((v0 + 208));
    v21 = *(v0 + 512);
    v22 = *(v0 + 488);
    v23 = *(v0 + 464);
    v24 = *(v0 + 440);
    v25 = *(v0 + 416);
    v26 = *(v0 + 392);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v68 = *(v0 + 704);
    v69 = *(v0 + 528);
    v59 = *(v0 + 76);
    v60 = *(v0 + 512);
    v66 = *(v0 + 496);
    v67 = *(v0 + 504);
    v57 = *(v0 + 488);
    v64 = *(v0 + 480);
    v65 = *(v0 + 472);
    v58 = *(v0 + 464);
    v29 = *(v0 + 440);
    v62 = *(v0 + 456);
    v63 = *(v0 + 448);
    v30 = *(v0 + 432);
    v56 = *(v0 + 424);
    v32 = *(v0 + 408);
    v31 = *(v0 + 416);
    v71 = 1000000000000000000 * v1;
    v61 = *(v0 + 400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5788, &qword_248A155B8);
    v33 = sub_248A134F0();
    v34 = *(v33 - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_248A14B30;
    sub_248A134E0();
    sub_24899728C(v37);
    swift_setDeallocating();
    (*(v34 + 8))(v37 + v36, v33);
    swift_deallocClassInstance();
    sub_248A13500();
    (*(v30 + 104))(v29, v59, v56);
    sub_248A134C0();
    (*(v30 + 8))(v29, v56);
    sub_248A134A0();
    sub_248A11970();

    (*(v32 + 8))(v31, v61);
    (*(v62 + 8))(v58, v63);
    (*(v64 + 8))(v57, v65);
    sub_2489975AC(&unk_27EEB5EE0, MEMORY[0x277CC9FF0]);
    sub_248A13530();
    (*(v67 + 8))(v60, v66);
    v39 = *(v0 + 328);
    v38 = *(v0 + 336);
    v40 = v68;

    v41 = sub_248A122B0();
    v42 = sub_248A12E60();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 704);
      v44 = *(v0 + 360);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72[0] = v70;
      *v45 = 136446722;
      v47 = sub_248A13570();
      v49 = sub_24897BC00(v47, v48, v72);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2114;
      v50 = v43;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v51;
      *v46 = v51;
      *(v45 + 22) = 2082;
      v52 = sub_24897BC00(v39, v38, v72);

      *(v45 + 24) = v52;
      _os_log_impl(&dword_248975000, v41, v42, "[%{public}s] Failed to initiate peer connection with error: %{public}@; will re-attempt to initiate peer connection after %{public}s delay", v45, 0x20u);
      sub_24897CA88(v46);
      MEMORY[0x24C1E0A80](v46, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v70, -1, -1);
      MEMORY[0x24C1E0A80](v45, -1, -1);
    }

    else
    {
    }

    v53 = *(v0 + 392);
    sub_248A133B0();
    v54 = swift_task_alloc();
    *(v0 + 712) = v54;
    *v54 = v0;
    v54[1] = sub_248995020;
    v55 = *(v0 + 392);

    return sub_248996414(v71, 0, 0, 0, 1);
  }
}

uint64_t sub_248995020()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v4 = *v1;
  *(*v1 + 720) = v0;

  v5 = v2[49];
  v6 = v2[48];
  v7 = v2[47];
  v8 = v2[44];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_2489953EC;
  }

  else
  {
    v9 = sub_24899519C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24899519C()
{
  v23 = v0;
  v1 = *(v0 + 704);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 520);

  sub_248996A48(v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v6 = v5 + 1;
  *(v0 + 520) = v5 + 1;
  v7 = sub_248A122D0();
  *(v0 + 528) = __swift_project_value_buffer(v7, qword_27EEB9DC8);
  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 360);
    if (*(v0 + 73))
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    if (*(v0 + 73))
    {
      v12 = 0x72656E657473696CLL;
    }

    else
    {
      v12 = 0x726573776F7262;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446722;
    v15 = sub_248A13570();
    v17 = sub_24897BC00(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = sub_24897BC00(v12, v11, &v22);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2050;
    *(v13 + 24) = v6;
    _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Initiating peer connection with role %{public}s (attempt #: %{public}ld)", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  v19 = swift_task_alloc();
  *(v0 + 536) = v19;
  *v19 = v0;
  v19[1] = sub_248992F30;
  v20 = *(v0 + 352);

  return sub_2489954CC();
}

uint64_t sub_2489953EC()
{
  v1 = v0[88];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];

  sub_248996A48(v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  v5 = v0[90];
  v6 = v0[64];
  v7 = v0[61];
  v8 = v0[58];
  v9 = v0[55];
  v10 = v0[52];
  v11 = v0[49];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2489954CC()
{
  v1[23] = v0;
  v1[24] = *v0;
  v1[25] = *v0;
  return MEMORY[0x2822009F8](sub_24899553C, v0, 0);
}

uint64_t sub_24899553C()
{
  v30 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  swift_retain_n();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136446466;
    v10 = *(v6 + 80);
    v11 = *(v6 + 88);
    v12 = sub_248A13570();
    v14 = sub_24897BC00(v12, v13, &v29);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    sub_2489922F4(v0 + 80);

    v15 = type metadata accessor for PeerConnectionServiceCoordinator.State();
    v16 = sub_2489920B4(v15);
    v18 = v17;

    (*(*(v15 - 8) + 8))(v0 + 80, v15);
    v19 = sub_24897BC00(v16, v18, &v29);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Invalidate for state: %{public}s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
    v20 = *(v0 + 184);
  }

  v21 = *(v0 + 184);
  sub_2489922F4(v0 + 16);
  if (*(v0 + 72) >= 2u)
  {
    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v22 = *(v0 + 200);
    *(v0 + 208) = *(v0 + 24);
    sub_248978948((v0 + 32), v0 + 144);
    v23 = *(v22 + 80);
    v24 = *(v22 + 88);
    type metadata accessor for PeerConnection();
    swift_getWitnessTable();
    v26 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_248995858, v26, v25);
  }
}

uint64_t sub_248995858()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  sub_24898BBC0(v2, &off_285B61008);

  return MEMORY[0x2822009F8](sub_2489958D8, v2, 0);
}

uint64_t sub_2489958D8()
{
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_2489959FC;

  return v7(v1, v2);
}

uint64_t sub_2489959FC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_248995BB0;
  }

  else
  {
    v6 = sub_248995B28;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_248995B28()
{
  v7 = v0;
  v1 = v0[23];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v6 = 2;
  sub_2489923A4(v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v2 = v0[1];

  return v2();
}

uint64_t sub_248995BB0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v1 = v0[1];
  v2 = v0[28];

  return v1();
}

uint64_t sub_248995C14()
{
  v1 = *v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v11[0] = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Force inactive", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v13 = 2;
  return sub_2489923A4(v11);
}

void *PeerConnectionServiceCoordinator.deinit()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for PeerConnectionServiceCoordinator.State();
  (*(*(v3 - 8) + 8))(v0 + 14, v3);
  v4 = v0[23];
  swift_unknownObjectRelease();
  v5 = v0[26];
  sub_248996A48(v0[25]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PeerConnectionServiceCoordinator.__deallocating_deinit()
{
  PeerConnectionServiceCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

void sub_248995EDC(void *a1)
{
  v3 = *v1;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DC8);
  v5 = a1;
  oslog = sub_248A122B0();
  v6 = sub_248A12E60();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_248975000, oslog, v6, "[%{public}s] Peer connection did fail with error: %{public}@", v7, 0x16u);
    sub_24897CA88(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }
}

uint64_t sub_2489960BC(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_27EEB9DC8);
  v13 = sub_248A122B0();
  v14 = sub_248A12E80();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136446210;
    v18 = sub_248A13570();
    v20 = sub_24897BC00(v18, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_248975000, v13, v14, a1, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1E0A80](v17, -1, -1);
    v21 = v16;
    a3 = v25;
    MEMORY[0x24C1E0A80](v21, -1, -1);
  }

  v22 = sub_248A12D40();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v6;

  sub_2489AC334(0, 0, v11, a3, v23);
}

uint64_t sub_248996338()
{
  v1 = *(v0 + 16);
  sub_248995C14();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_248996414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_248A131C0();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_248996514, 0, 0);
}

uint64_t sub_248996514()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_248A131D0();
  v7 = sub_2489975AC(&qword_27EEB5790, MEMORY[0x277D85928]);
  sub_248A13390();
  sub_2489975AC(&qword_27EEB5798, MEMORY[0x277D858F8]);
  sub_248A131E0();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2489966A4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2489966A4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248996860, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_248996860()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2489968CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  swift_defaultActor_initialize();
  *(v4 + 160) = 0;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 168) = 2;
  *(v4 + 176) = 0;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  v13 = sub_248A12D40();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_2489AC334(0, 0, v12, &unk_248A15600, v14);

  return v4;
}

uint64_t sub_248996A48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of PeerConnectionService.activate(transaction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2489839A0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PeerConnectionService.invalidate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248978D74;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PeerConnectionService.sendHeartbeat()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PeerConnectionService.peerIdentifier()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_248978D74;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PeerConnectionBrokering.peerConnection()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24898314C;

  return v9(a1, a2);
}

uint64_t sub_2489970E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13DeviceSharing32PeerConnectionServiceCoordinatorC5State33_04FDFE04316EE7D2413F7080B355764CLLOyx_G(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_248997158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248997194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2489971E4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_248997228(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24899728C(uint64_t a1)
{
  v2 = sub_248A134F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB57A0, &unk_248A155C8);
    v10 = sub_248A130E0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2489975AC(&qword_27EEB57A8, MEMORY[0x277CC9FC8]);
      v18 = sub_248A12AE0();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2489975AC(qword_27EEB57B0, MEMORY[0x277CC9FC8]);
          v25 = sub_248A12B00();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2489975AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2489975F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_248996318(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2489976E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_248995EA0(a1, v4, v5, v6);
}

uint64_t sub_24899779C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2489839A0;

  return sub_24899252C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_248997864(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899268C(a1);
}

uint64_t getEnumTagSinglePayload for SpecificAssetType.GazeModelType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpecificAssetType.GazeModelType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SpecificAssetType.description.getter()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      v3 = v0[1] | v0[2] | v1;
      v4 = v1 != 1 || *(v0 + 1) != 0;
      v5 = 0x46676E697373694DLL;
      if (!v4)
      {
        v5 = 0x656D6C6C6F726E45;
      }

      if (v3)
      {
        return v5;
      }

      else
      {
        return 0xD000000000000015;
      }
    }
  }

  else if (v1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C65646F4D657945;
  }
}

uint64_t sub_248997B94()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      v3 = v0[1] | v0[2] | v1;
      v4 = v1 != 1 || *(v0 + 1) != 0;
      v5 = 0x46676E697373694DLL;
      if (!v4)
      {
        v5 = 0x656D6C6C6F726E45;
      }

      if (v3)
      {
        return v5;
      }

      else
      {
        return 0xD000000000000015;
      }
    }
  }

  else if (v1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C65646F4D657945;
  }
}

uint64_t SpecificAssetType.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*(v0 + 24))
  {
    if (v4 != 1)
    {
      sub_248A12BB0();
    }

    sub_248A12BB0();
    v5 = v2;
  }

  else
  {
    sub_248A12BB0();
    v5 = v3;
  }

  if (v5)
  {
    sub_2489837A4(v1, v2, v3, v4);
    sub_248A12BB0();
  }

  sub_248A12BB0();

  return sub_2489837C4(v1, v2, v3, v4);
}

uint64_t SpecificAssetType.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_248A13430();
  SpecificAssetType.hash(into:)();
  return sub_248A13460();
}

uint64_t sub_248997EF4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_248A13430();
  SpecificAssetType.hash(into:)();
  return sub_248A13460();
}

uint64_t sub_248997F54()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_248A13430();
  SpecificAssetType.hash(into:)();
  return sub_248A13460();
}

uint64_t SpecificAssetType.GazeModelType.hashValue.getter()
{
  v1 = *v0;
  sub_248A13430();
  MEMORY[0x24C1E0100](v1);
  return sub_248A13460();
}

uint64_t sub_248998020()
{
  v1 = *v0;
  sub_248A13430();
  MEMORY[0x24C1E0100](v1);
  return sub_248A13460();
}

uint64_t sub_248998068()
{
  v1 = *v0;
  sub_248A13430();
  MEMORY[0x24C1E0100](v1);
  return sub_248A13460();
}

uint64_t SpecificAssetType.RXType.description.getter()
{
  if (!v0[1])
  {
    return 0x6F2F7720657A6147;
  }

  v1 = *v0;
  strcpy(v3, "Gaze w/ RX: ");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  MEMORY[0x24C1DF8B0](v1);
  return v3[0];
}

uint64_t SpecificAssetType.RXType.hash(into:)()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_248A12BB0();
  }

  return sub_248A12BB0();
}

uint64_t SpecificAssetType.RXType.emoji.getter()
{
  if (*(v0 + 8))
  {
    return 2475794416;
  }

  else
  {
    return 0x8FB8EF81919FF0;
  }
}

uint64_t SpecificAssetType.RXType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_248A13430();
  if (v2)
  {
    sub_248A12BB0();
  }

  sub_248A12BB0();
  return sub_248A13460();
}

uint64_t sub_248998238()
{
  if (!v0[1])
  {
    return 0x6F2F7720657A6147;
  }

  v1 = *v0;
  strcpy(v3, "Gaze w/ RX: ");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  MEMORY[0x24C1DF8B0](v1);
  return v3[0];
}

uint64_t sub_2489982B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_248A13430();
  if (v2)
  {
    sub_248A12BB0();
  }

  sub_248A12BB0();
  return sub_248A13460();
}

uint64_t sub_248998328()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_248A12BB0();
  }

  return sub_248A12BB0();
}

uint64_t sub_248998394()
{
  v1 = *v0;
  v2 = v0[1];
  sub_248A13430();
  if (v2)
  {
    sub_248A12BB0();
  }

  sub_248A12BB0();
  return sub_248A13460();
}

uint64_t _s13DeviceSharing17SpecificAssetTypeO6RXTypeO2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_248A13340();
}

uint64_t _s13DeviceSharing17SpecificAssetTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v30[0] = v4;
  v30[1] = v3;
  v30[2] = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  if (!v6)
  {
    if (!v10)
    {
      if (((v7 ^ v4) & 1) == 0)
      {
        v12 = v7;
        if (v5)
        {
          if (v9)
          {
            if (v3 == v8 && v5 == v9)
            {
              sub_2489837A4(v7, v3, v5, 0);
              sub_2489837A4(v4, v3, v5, 0);
              sub_2489837A4(v12, v3, v5, 0);
              sub_2489837A4(v4, v3, v5, 0);
              sub_248998C58(v30);

              goto LABEL_40;
            }

            v27 = v8;
            v28 = v9;
            v29 = sub_248A13340();
            sub_2489837A4(v12, v27, v28, 0);
            sub_2489837A4(v4, v3, v5, 0);
            sub_2489837A4(v12, v27, v28, 0);
            sub_2489837A4(v4, v3, v5, 0);
            sub_248998C58(v30);

            if (v29)
            {
              return 1;
            }
          }

          else
          {
            v26 = v8;
            sub_2489837A4(v7, v8, 0, 0);
            sub_2489837A4(v4, v3, v5, 0);
            sub_2489837A4(v12, v26, 0, 0);
            sub_2489837A4(v4, v3, v5, 0);
            sub_248998C58(v30);
          }

          return 0;
        }

        v24 = v9;
        v25 = v8;

        sub_2489837A4(v12, v25, v24, 0);
        sub_2489837A4(v4, v3, 0, 0);
        sub_248998C58(v30);
        if (v24)
        {
LABEL_33:

          return 0;
        }

LABEL_39:

        goto LABEL_40;
      }

      sub_2489837A4(v7, v8, v9, 0);
      v13 = v4;
      v14 = v3;
      v15 = v5;
      v16 = 0;
LABEL_30:
      sub_2489837A4(v13, v14, v15, v16);
      sub_248998C58(v30);
      return 0;
    }

    goto LABEL_29;
  }

  if (v6 != 1)
  {
    if (!(v5 | v3 | v4))
    {
      if (v10 != 2 || v9 | v8 | v7)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (v4 != 1 || v5 | v3)
    {
      if (v10 != 2 || v7 != 2)
      {
        goto LABEL_29;
      }
    }

    else if (v10 != 2 || v7 != 1)
    {
      goto LABEL_29;
    }

    if (!(v9 | v8))
    {
LABEL_28:
      sub_248998C58(v30);
      return 1;
    }

LABEL_29:
    sub_2489837A4(v7, v8, v9, v10);
    v13 = v4;
    v14 = v3;
    v15 = v5;
    v16 = v6;
    goto LABEL_30;
  }

  if (v10 != 1)
  {
    goto LABEL_29;
  }

  v11 = v9;
  if (!v3)
  {
    v18 = v7;
    v19 = v8;

    sub_2489837A4(v18, v19, v11, 1u);
    sub_2489837A4(v4, 0, v5, 1u);
    sub_248998C58(v30);
    if (v19)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  if (!v8)
  {
    v20 = v7;
    sub_2489837A4(v7, 0, v9, 1u);
    sub_2489837A4(v4, v3, v5, 1u);
    sub_2489837A4(v20, 0, v11, 1u);
    sub_2489837A4(v4, v3, v5, 1u);
    sub_248998C58(v30);

    return 0;
  }

  if (v4 == v7 && v3 == v8)
  {
    sub_2489837A4(v4, v3, v9, 1u);
    sub_2489837A4(v4, v3, v5, 1u);
    sub_2489837A4(v4, v3, v11, 1u);
    sub_2489837A4(v4, v3, v5, 1u);
    sub_248998C58(v30);

LABEL_40:

    return 1;
  }

  v21 = v7;
  v22 = v8;
  v23 = sub_248A13340();
  sub_2489837A4(v21, v22, v11, 1u);
  sub_2489837A4(v4, v3, v5, 1u);
  sub_2489837A4(v21, v22, v11, 1u);
  sub_2489837A4(v4, v3, v5, 1u);
  sub_248998C58(v30);

  result = 1;
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_248998974()
{
  result = qword_27EEB5838;
  if (!qword_27EEB5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5838);
  }

  return result;
}

unint64_t sub_2489989CC()
{
  result = qword_27EEB5840;
  if (!qword_27EEB5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5840);
  }

  return result;
}

unint64_t sub_248998A24()
{
  result = qword_27EEB5848;
  if (!qword_27EEB5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5848);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DeviceSharing17SpecificAssetTypeO(uint64_t a1)
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

uint64_t sub_248998A94(uint64_t a1, unsigned int a2)
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

uint64_t sub_248998ADC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_248998B24(uint64_t result, unsigned int a2)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_248998B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_248998BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_248998C10(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_248998C28(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_248998C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5850, &unk_248A15970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NWConnection.peerDeviceIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x24C1DF380]();
  nw_connection_copy_endpoint(v2);
  swift_unknownObjectRelease();
  if (nw_endpoint_get_device_id())
  {
    sub_248A12C00();
    sub_248A11B80();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_248A11BC0();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);

    return swift_unknownObjectRelease();
  }
}

void (*sub_248998DA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_248A12690();
  return sub_24897CEC0;
}

uint64_t sub_248998E28@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x24C1DF380]();
  nw_connection_copy_endpoint(v2);
  swift_unknownObjectRelease();
  if (nw_endpoint_get_device_id())
  {
    sub_248A12C00();
    sub_248A11B80();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_248A11BC0();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);

    return swift_unknownObjectRelease();
  }
}

uint64_t dispatch thunk of GuestUserAccessHeartBeatSending.sendHeartbeat()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248978D74;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.activate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.invalidate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.sendGuestUserAccessResponse(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2489839A0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.startViewMirroring(device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2489839A0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.endGuestUserAccess()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.unlockPeerDevice()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.sendRemoteUnlockError(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2489839A0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.replayRequest(requestConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 64))();
}

{
  return (*(a3 + 72))();
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.postNotification(payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2489839A0;

  return v11(a1, a2, a3);
}

uint64_t sub_248999A58()
{
  sub_2489A3F50(v0, v9);
  v1 = 0xE800000000000000;
  if (v11)
  {
    if (v11 != 1)
    {
      return 0x6576697463616E49;
    }

    v2 = v9[0];
    sub_248978948(v10, v8);
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0x2820657669746341, 0xE800000000000000);
    if (v2)
    {
      v3 = 0x72656E657473696CLL;
    }

    else
    {
      v3 = 0x726573776F7262;
    }

    if (v2)
    {
      v1 = 0xE800000000000000;
    }

    else
    {
      v1 = 0xE700000000000000;
    }
  }

  else
  {
    v4 = v9[0];
    sub_248978948(v10, v8);
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0x6974617669746341, 0xEC0000002820676ELL);
    if (v4)
    {
      v3 = 0x72656E657473696CLL;
    }

    else
    {
      v3 = 0x726573776F7262;
    }

    if (!v4)
    {
      v1 = 0xE700000000000000;
    }
  }

  MEMORY[0x24C1DF8B0](v3, v1);

  MEMORY[0x24C1DF8B0](8236, 0xE200000000000000);
  v5 = sub_2489FA2C8();
  MEMORY[0x24C1DF8B0](v5);

  MEMORY[0x24C1DF8B0](8236, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
  sub_248A131F0();

  v6 = 0;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_248999C68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = (v2 + 14);
  v4 = *v2;
  swift_beginAccess();
  sub_2489A3F50((v2 + 14), v21);
  if (v23 == 1)
  {

    return sub_248978948(&v22, a1);
  }

  else
  {
    sub_248983734(v21, &unk_27EEB5ED0, &qword_248A15BE0);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v7 = sub_248A122D0();
    __swift_project_value_buffer(v7, qword_27EEB9DC8);

    v8 = sub_248A122B0();
    v9 = sub_248A12E60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446466;
      v12 = sub_248A13570();
      v14 = sub_24897BC00(v12, v13, &v24);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      sub_2489A3F50(v5, v21);
      v15 = sub_248999A58();
      v17 = v16;
      sub_248983734(v21, &unk_27EEB5ED0, &qword_248A15BE0);
      v18 = sub_24897BC00(v15, v17, &v24);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Peer Connection state is %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v11, -1, -1);
      MEMORY[0x24C1E0A80](v10, -1, -1);
    }

    v19 = sub_248A12150();
    sub_2489A49AC(qword_27EEB5470, MEMORY[0x277D05138]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D05120], v19);
    return swift_willThrow();
  }
}

uint64_t sub_248999F68()
{
  *(v1 + 320) = v0;
  *(v1 + 328) = *v0;
  return MEMORY[0x2822009F8](sub_248999FB0, v0, 0);
}

uint64_t sub_248999FB0()
{
  v23 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  swift_retain_n();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446466;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    swift_beginAccess();
    sub_2489A3F50(v6 + 112, v0 + 144);

    v12 = sub_248999A58();
    v14 = v13;

    sub_248983734(v0 + 144, &unk_27EEB5ED0, &qword_248A15BE0);
    v15 = sub_24897BC00(v12, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Invalidate for state: %{public}s)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 320);
  }

  v17 = *(v0 + 320);
  swift_beginAccess();
  sub_2489A3F50(v17 + 112, v0 + 16);
  if (*(v0 + 72) >= 2u)
  {
    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    *(v0 + 336) = *(v0 + 24);
    sub_248978948((v0 + 32), v0 + 208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_2489A3FC0();
    v19 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_24899A2A4, v19, v18);
  }
}

uint64_t sub_24899A2A4()
{
  v1 = *(v0 + 320);
  sub_248A02B48(v1, *(v0 + 336));

  return MEMORY[0x2822009F8](sub_24899A320, v1, 0);
}

uint64_t sub_24899A320()
{
  v1 = v0[29];
  v2 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 26, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_24899A444;

  return v7(v1, v2);
}

uint64_t sub_24899A444()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = sub_24899A61C;
  }

  else
  {
    v6 = sub_24899A570;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24899A570()
{
  v1 = *(v0 + 320);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 80) = 0u;
  *(v0 + 136) = 2;
  swift_beginAccess();
  sub_2489A4024(v0 + 80, v1 + 112);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24899A61C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  v1 = v0[1];
  v2 = v0[44];

  return v1();
}

uint64_t sub_24899A680@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_281510560);
  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446466;
    v12 = sub_248A13570();
    v14 = sub_24897BC00(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_24897BC00(0xD00000000000002ALL, 0x8000000248A196D0, &v20);
    _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  v15 = type metadata accessor for GuestUserAccessResponsePeerConnectionService();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v18[3] = 0;
  sub_248A11DF0();
  v18[2] = a1;

  result = sub_2489A45BC(v3, v18);
  a2[3] = v15;
  a2[4] = &protocol witness table for GuestUserAccessResponsePeerConnectionService;
  *a2 = v18;
  return result;
}

uint64_t sub_24899A89C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  return MEMORY[0x2822009F8](sub_24899A8E4, 0, 0);
}

uint64_t sub_24899A8E4()
{
  v1 = *(*(v0 + 104) + 32);
  *(v0 + 120) = v1;
  return MEMORY[0x2822009F8](sub_24899A908, v1, 0);
}

uint64_t sub_24899A908()
{
  v1 = *(v0 + 120);
  sub_248999C68(v0 + 16);
  *(v0 + 128) = 0;

  return MEMORY[0x2822009F8](sub_24899A998, 0, 0);
}

uint64_t sub_24899A998()
{
  v15 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5878, &qword_248A15BD0);
  if (swift_dynamicCast())
  {
    sub_248978948((v0 + 56), *(v0 + 96));
    if (qword_28150F5C8 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_281510560);
    v2 = sub_248A122B0();
    v3 = sub_248A12E80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 112);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136446466;
      v7 = sub_248A13570();
      v9 = sub_24897BC00(v7, v8, &v14);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2082;
      *(v5 + 14) = sub_24897BC00(0xD000000000000017, 0x8000000248A195B0, &v14);
      _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v6, -1, -1);
      MEMORY[0x24C1E0A80](v5, -1, -1);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 112);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_248983734(v0 + 56, &qword_27EEB5880, &qword_248A15BD8);
    sub_248A13100();

    v13 = sub_248A13570();
    MEMORY[0x24C1DF8B0](v13);

    return sub_248A13200();
  }
}

uint64_t sub_24899ACA0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24899ACE8, 0, 0);
}

uint64_t sub_24899ACE8()
{
  v14 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[4] = __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000013, 0x8000000248A196B0, &v13);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v0[5] = *(v0[2] + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator);
  sub_248A11EB0();
  sub_2489A49AC(&qword_27EEB58B0, MEMORY[0x277D04FA0]);
  v11 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24899AF1C, v11, v10);
}

uint64_t sub_24899AF1C()
{
  v1 = v0[5];
  sub_248A11E90();
  v0[6] = 0;
  v2 = v0[1];

  return v2();
}

uint64_t sub_24899AFCC()
{
  v20 = v0;
  v1 = v0[6];
  v2 = v0[4];
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136446466;
    v12 = sub_248A13570();
    v14 = sub_24897BC00(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Unable to start Live Activity - %{public}@", v9, 0x16u);
    sub_248983734(v10, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_24899B19C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24899B1E4, 0, 0);
}

uint64_t sub_24899B1E4()
{
  v14 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000012, 0x8000000248A19690, &v13);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v0[4] = *(v0[2] + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator);
  sub_248A11EB0();
  sub_2489A49AC(&qword_27EEB58B0, MEMORY[0x277D04FA0]);
  v11 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24899B414, v11, v10);
}

uint64_t sub_24899B414()
{
  v1 = *(v0 + 32);
  sub_248A11E80();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24899B474()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = sub_248A11D50();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899B55C, 0, 0);
}

uint64_t sub_24899B55C()
{
  v14 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[10] = __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Triggering remote unlock", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_24899B71C;
  v11 = v0[5];

  return sub_24899BE5C();
}

uint64_t sub_24899B71C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_24899BAB4;
  }

  else
  {
    v3 = sub_24899B830;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24899B830()
{
  v1 = v0[9];
  v2 = v0[5];
  swift_beginAccess();
  sub_248A11EC0();
  swift_endAccess();
  sub_248A11D30();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_24899B90C;
  v4 = v0[9];
  v5 = v0[5];

  return sub_24899C9F8(v4);
}

uint64_t sub_24899B90C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  v6[14] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24899BC88, 0, 0);
  }

  else
  {
    v7 = v6[9];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_24899BAB4()
{
  v19 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Encountered error while performing remote unlock %{public}@", v7, 0x16u);
    sub_248983734(v8, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_24899BC88()
{
  v19 = v0;
  v1 = v0[14];
  v2 = v0[10];
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Encountered error while performing remote unlock %{public}@", v7, 0x16u);
    sub_248983734(v8, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_24899BE5C()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = sub_248A11BC0();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899BF7C, 0, 0);
}

uint64_t sub_24899BF7C()
{
  v14 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[13] = __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000012, 0x8000000248A195D0, &v13);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24899C180;
  v11 = v0[7];

  return sub_24899A89C((v0 + 2));
}

uint64_t sub_24899C180()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_24899C900;
  }

  else
  {
    v3 = sub_24899C294;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24899C294()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 8);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_24899C3C4;
  v7 = v0[9];

  return v9(v7, v1, v3);
}

uint64_t sub_24899C3C4()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24899C4C0, 0, 0);
}

uint64_t sub_24899C4C0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[13];
    sub_248983734(v3, &qword_27EEB5400, &unk_248A14E10);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v5 = sub_248A122B0();
    v6 = sub_248A12E60();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_248975000, v5, v6, "No peerIdentifier to unlock with", v7, 2u);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    v8 = v0[12];
    v9 = v0[9];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[7];
    (*(v2 + 32))(v0[12], v3, v1);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v13 = v12[8];
    v14 = v12[9];
    __swift_project_boxed_opaque_existential_1(v12 + 5, v13);
    v15 = sub_248A11B90();
    v17 = v16;
    v0[17] = v16;
    v18 = *(v14 + 8);
    v21 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[18] = v20;
    *v20 = v0;
    v20[1] = sub_24899C748;

    return v21(v15, v17, v13, v14);
  }
}

uint64_t sub_24899C748()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_24899C970;
  }

  else
  {
    v4 = sub_24899C878;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24899C878()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24899C900()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24899C970()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24899C9F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = sub_248A11D50();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899CB10, 0, 0);
}

uint64_t sub_24899CB10()
{
  v27 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_281510560);
  v6 = *(v2 + 16);
  v0[15] = v6;
  v0[16] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  if (v9)
  {
    v13 = v0[9];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136446722;
    v16 = sub_248A13570();
    v18 = sub_24897BC00(v16, v17, &v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_24897BC00(0xD00000000000001BLL, 0x8000000248A19610, &v26);
    *(v14 + 22) = 2082;
    sub_2489A49AC(&qword_27EEB5888, MEMORY[0x277D04F38]);
    v19 = sub_248A132F0();
    v21 = v20;
    (*(v11 + 8))(v10, v12);
    v22 = sub_24897BC00(v19, v21, &v26);

    *(v14 + 24) = v22;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] %{public}s — %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v15, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v23 = swift_task_alloc();
  v0[17] = v23;
  *v23 = v0;
  v23[1] = sub_24899CDFC;
  v24 = v0[8];

  return sub_24899A89C((v0 + 2));
}

uint64_t sub_24899CDFC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_24899D248;
  }

  else
  {
    v3 = sub_24899CF10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24899CF10()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v2(v4, v7, v3);
  swift_storeEnumTagMultiPayload();
  v9 = *(v6 + 32);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_24899D088;
  v12 = v0[11];

  return v14(v12, v8, v6);
}

uint64_t sub_24899D088()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_2489A43BC(v3, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  if (v0)
  {
    v4 = sub_24899D2B8;
  }

  else
  {
    v4 = sub_24899D1CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24899D1CC()
{
  v1 = v0[14];
  v2 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24899D248()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24899D2B8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t *sub_24899D330()
{
  v1 = v0[3];
  sub_248996A48(v0[2]);
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_airPlayReceiverCoordinator;
  v4 = sub_248A11EF0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator);

  v6 = *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator);

  v7 = *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityTimeoutTask);

  v8 = *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask);

  return v0;
}

uint64_t sub_24899D3F8()
{
  sub_24899D330();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuestUserAccessResponseController()
{
  result = qword_28150F798;
  if (!qword_28150F798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24899D4A4()
{
  result = sub_248A11EF0();
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

uint64_t dispatch thunk of GuestUserSessionActivationStateProviding.guestUserSessionActivationState()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24898314C;

  return v9(a1, a2);
}

uint64_t sub_24899D6C8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24899D710, 0, 0);
}

uint64_t sub_24899D710()
{
  v14 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0x6574617669746361, 0xEA00000000002928, &v13);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = v0[2];
  sub_24899D8DC();
  v11 = v0[1];

  return v11();
}

uint64_t sub_24899D8DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  sub_24899DF5C();
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_281510560);
  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;
    v12 = sub_248A13570();
    v14 = sub_24897BC00(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Start observing guest user session activation state updates", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  v15 = sub_248A12D40();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  v17[5] = v2;
  v18 = sub_2489E5FD4(0, 0, v6, &unk_248A15C48, v17);
  v19 = *(v1 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask);
  *(v1 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask) = v18;
}

uint64_t sub_24899DB6C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24899DBB4, 0, 0);
}

uint64_t sub_24899DBB4()
{
  v14 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0x6164696C61766E69, 0xEC00000029286574, &v13);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = *(v0[2] + 32);
  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = sub_24899DDC8;

  return sub_248999F68();
}

uint64_t sub_24899DDC8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24899DEF8, 0, 0);
  }
}

uint64_t sub_24899DEF8()
{
  v1 = *(v0 + 16);
  sub_24899DF5C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24899DF5C()
{
  v1 = v0;
  v2 = *v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_281510560);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Stop observing guest user session activation state updates", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v11 = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask;
  if (*(v1 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask))
  {
    v12 = *(v1 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    sub_248A12D70();

    v13 = *(v1 + v11);
  }

  *(v1 + v11) = 0;
}

uint64_t sub_24899E148(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_248A11E10();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899E214, 0, 0);
}

uint64_t sub_24899E214()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = *(v0[3] + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_notificationController);
  sub_248A11E20();
  (*(v4 + 16))(v2, v1, v3);
  v7 = (*(v4 + 88))(v2, v3);
  if (v7 == *MEMORY[0x277D04F60])
  {
    v8 = v0[6];
    (*(v0[5] + 96))(v8, v0[4]);
    v9 = *v8;
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_24899E440;

    return NotificationController.postGuestUserModeUnavailableNotification(with:)(v9);
  }

  else if (v7 == *MEMORY[0x277D04F68])
  {
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_24899E5C4;

    return NotificationController.postUnableToPlayProtectedContent()();
  }

  else
  {
    return sub_248A13200();
  }
}

uint64_t sub_24899E440()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24899E53C, 0, 0);
}

uint64_t sub_24899E53C()
{
  v1 = v0[6];
  (*(v0[5] + 8))(v0[7], v0[4]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24899E5C4()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2489A4A04, 0, 0);
}

uint64_t sub_24899E6C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = sub_248A11F90();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v8 = *(*(sub_248A11F40() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899E81C, 0, 0);
}

uint64_t sub_24899E81C()
{
  v63 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_281510560);
  sub_2489A421C(v2, v1, MEMORY[0x277D05078]);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62 = v10;
    *v9 = 136446722;
    v11 = sub_248A13570();
    v13 = sub_24897BC00(v11, v12, &v62);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_24897BC00(0xD00000000000001FLL, 0x8000000248A19630, &v62);
    *(v9 + 22) = 2082;
    v14 = sub_248A11F20();
    v16 = v15;
    sub_2489A43BC(v7, MEMORY[0x277D05078]);
    v17 = sub_24897BC00(v14, v16, &v62);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] %{public}s — %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  else
  {

    sub_2489A43BC(v7, MEMORY[0x277D05078]);
  }

  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  v20 = *(v0 + 96);
  v21 = *(v0 + 104);
  v22 = *(v0 + 64);
  v23 = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator;
  *(v0 + 144) = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator;
  v24 = *(v22 + v23);

  sub_248A11F70();

  *(v0 + 216) = *MEMORY[0x277D05088];
  v25 = *(v21 + 104);
  *(v0 + 152) = v25;
  *(v0 + 160) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v25(v18);
  sub_2489A49AC(&qword_27EEB5890, MEMORY[0x277D05090]);
  LOBYTE(v24) = sub_248A12B00();
  v26 = *(v21 + 8);
  *(v0 + 168) = v26;
  *(v0 + 176) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v18, v20);
  if (v24)
  {
    v27 = sub_248A122B0();
    v28 = sub_248A12E80();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 72);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v62 = v31;
      *v30 = 136446466;
      v32 = sub_248A13570();
      v34 = sub_24897BC00(v32, v33, &v62);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_24897BC00(0xD00000000000001FLL, 0x8000000248A19630, &v62);
      _os_log_impl(&dword_248975000, v27, v28, "[%{public}s] %{public}s Prox card request was already fulfilled", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v31, -1, -1);
      MEMORY[0x24C1E0A80](v30, -1, -1);
    }

    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    v37 = *(v0 + 160);
    v38 = *(v0 + 136);
    v40 = *(v0 + 120);
    v39 = *(v0 + 128);
    v41 = *(v0 + 112);
    v42 = *(v0 + 96);
    v43 = *(*(v0 + 64) + *(v0 + 144));
    (*(v0 + 152))(v41, *(v0 + 216), v42);

    sub_248A11F80();

    v36(v41, v42);
    v36(v40, v42);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    sub_2489A421C(*(v0 + 56), *(v0 + 128), MEMORY[0x277D05078]);
    v46 = sub_248A122B0();
    v47 = sub_248A12E80();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 128);
    if (v48)
    {
      v50 = *(v0 + 72);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v62 = v52;
      *v51 = 136446722;
      v53 = sub_248A13570();
      v55 = sub_24897BC00(v53, v54, &v62);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_24897BC00(0xD00000000000001FLL, 0x8000000248A19630, &v62);
      *(v51 + 22) = 2082;
      v56 = sub_248A11F20();
      v58 = v57;
      sub_2489A43BC(v49, MEMORY[0x277D05078]);
      v59 = sub_24897BC00(v56, v58, &v62);

      *(v51 + 24) = v59;
      _os_log_impl(&dword_248975000, v46, v47, "[%{public}s] %{public}s Sending guest user access response: %{public}s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v52, -1, -1);
      MEMORY[0x24C1E0A80](v51, -1, -1);
    }

    else
    {

      sub_2489A43BC(v49, MEMORY[0x277D05078]);
    }

    v60 = swift_task_alloc();
    *(v0 + 184) = v60;
    *v60 = v0;
    v60[1] = sub_24899EF20;
    v61 = *(v0 + 64);

    return sub_24899A89C(v0 + 16);
  }
}

uint64_t sub_24899EF20()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_24899F3FC;
  }

  else
  {
    v3 = sub_24899F034;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24899F034()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  sub_2489A421C(v4, v1, MEMORY[0x277D05078]);
  swift_storeEnumTagMultiPayload();
  v6 = *(v3 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_24899F1AC;
  v9 = v0[11];

  return v11(v9, v5, v3);
}

uint64_t sub_24899F1AC()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 208) = v0;

  sub_2489A43BC(v3, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  if (v0)
  {
    v4 = sub_24899F4A8;
  }

  else
  {
    v4 = sub_24899F2F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24899F2F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);
  v9 = *(*(v0 + 64) + *(v0 + 144));
  (*(v0 + 152))(v7, *(v0 + 216), v8);

  sub_248A11F80();

  v2(v7, v8);
  v2(v6, v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24899F3FC()
{
  v1 = *(v0 + 176);
  (*(v0 + 168))(*(v0 + 120), *(v0 + 96));
  v2 = *(v0 + 192);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24899F4A8()
{
  v1 = *(v0 + 176);
  (*(v0 + 168))(*(v0 + 120), *(v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 208);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24899F55C()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899F618, 0, 0);
}

uint64_t sub_24899F618()
{
  v14 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000014, 0x8000000248A195F0, &v13);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_24899F818;
  v11 = v0[7];

  return sub_24899A89C((v0 + 2));
}

uint64_t sub_24899F818()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_24899FC2C;
  }

  else
  {
    v3 = sub_24899F92C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24899F92C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  swift_storeEnumTagMultiPayload();
  v5 = *(v4 + 32);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_24899FA78;
  v8 = v0[10];

  return v10(v8, v3, v4);
}

uint64_t sub_24899FA78()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 112) = v0;

  sub_2489A43BC(v3, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  if (v0)
  {
    v4 = sub_24899FC90;
  }

  else
  {
    v4 = sub_24899FBBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24899FBBC()
{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24899FC2C()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24899FC90()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[14];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24899FCFC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = sub_248A11E60();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899FE14, 0, 0);
}

uint64_t sub_24899FE14()
{
  v27 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_281510560);
  v6 = *(v2 + 16);
  v0[15] = v6;
  v0[16] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];
  if (v9)
  {
    v13 = v0[9];
    v24 = v8;
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136446722;
    v15 = sub_248A13570();
    v17 = sub_24897BC00(v15, v16, &v26);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_24897BC00(0xD000000000000019, 0x8000000248A19520, &v26);
    *(v14 + 22) = 2114;
    sub_2489A49AC(&qword_27EEB5870, MEMORY[0x277D04F88]);
    swift_allocError();
    v6(v18, v11, v12);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    (*(v10 + 8))(v11, v12);
    *(v14 + 24) = v19;
    *v23 = v19;
    _os_log_impl(&dword_248975000, v7, v24, "[%{public}s] %{public}s — %{public}@", v14, 0x20u);
    sub_248983734(v23, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v23, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v25, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v20 = swift_task_alloc();
  v0[17] = v20;
  *v20 = v0;
  v20[1] = sub_2489A0158;
  v21 = v0[8];

  return sub_24899A89C((v0 + 2));
}

uint64_t sub_2489A0158()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2489A49F4;
  }

  else
  {
    v3 = sub_2489A026C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489A026C()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v2(v4, v7, v3);
  swift_storeEnumTagMultiPayload();
  v9 = *(v6 + 32);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_2489A03E4;
  v12 = v0[11];

  return v14(v12, v8, v6);
}

uint64_t sub_2489A03E4()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_2489A43BC(v3, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  if (v0)
  {
    v4 = sub_2489A49F8;
  }

  else
  {
    v4 = sub_2489A49FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2489A0528(uint64_t a1)
{
  v2 = v1;
  v36 = *v1;
  v37 = sub_248A11F90();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A11FF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v13 = sub_248A122D0();
  __swift_project_value_buffer(v13, qword_281510560);
  (*(v9 + 16))(v12, a1, v8);
  v14 = sub_248A122B0();
  v15 = sub_248A12E80();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v1;
    v17 = v16;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v17 = 136446722;
    v18 = sub_248A13570();
    v20 = sub_24897BC00(v18, v19, &v38);
    v36 = a1;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_24897BC00(0xD000000000000024, 0x8000000248A194F0, &v38);
    *(v17 + 22) = 2082;
    sub_2489A49AC(&qword_27EEB5868, MEMORY[0x277D050B0]);
    v22 = sub_248A132F0();
    v24 = v23;
    (*(v9 + 8))(v12, v8);
    v25 = sub_24897BC00(v22, v24, &v38);

    *(v17 + 24) = v25;
    _os_log_impl(&dword_248975000, v14, v15, "[%{public}s] %{public}s — %{public}s", v17, 0x20u);
    v26 = v34;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v26, -1, -1);
    v27 = v17;
    v2 = v35;
    MEMORY[0x24C1E0A80](v27, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v28 = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator;
  v29 = *(v2 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator);
  v30 = v37;
  (*(v4 + 104))(v7, *MEMORY[0x277D05080], v37);

  sub_248A11F80();

  (*(v4 + 8))(v7, v30);
  v31 = *(v2 + v28);

  sub_248A11FA0();
}

uint64_t sub_2489A093C(uint64_t a1)
{
  v2 = v1;
  v36 = *v1;
  v37 = sub_248A11F90();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A12010();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v13 = sub_248A122D0();
  __swift_project_value_buffer(v13, qword_281510560);
  (*(v9 + 16))(v12, a1, v8);
  v14 = sub_248A122B0();
  v15 = sub_248A12E80();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v1;
    v17 = v16;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v17 = 136446722;
    v18 = sub_248A13570();
    v20 = sub_24897BC00(v18, v19, &v38);
    v36 = a1;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_24897BC00(0xD000000000000024, 0x8000000248A194F0, &v38);
    *(v17 + 22) = 2082;
    sub_2489A49AC(&qword_27EEB5860, MEMORY[0x277D050C8]);
    v22 = sub_248A132F0();
    v24 = v23;
    (*(v9 + 8))(v12, v8);
    v25 = sub_24897BC00(v22, v24, &v38);

    *(v17 + 24) = v25;
    _os_log_impl(&dword_248975000, v14, v15, "[%{public}s] %{public}s — %{public}s", v17, 0x20u);
    v26 = v34;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v26, -1, -1);
    v27 = v17;
    v2 = v35;
    MEMORY[0x24C1E0A80](v27, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v28 = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator;
  v29 = *(v2 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator);
  v30 = v37;
  (*(v4 + 104))(v7, *MEMORY[0x277D05080], v37);

  sub_248A11F80();

  (*(v4 + 8))(v7, v30);
  v31 = *(v2 + v28);

  sub_248A11FB0();
}

uint64_t sub_2489A0D50()
{
  v1 = v0;
  v2 = *v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_281510560);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v13);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_24897BC00(0xD000000000000010, 0x8000000248A194D0, &v13);
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator);

  sub_248A11F50();
}

uint64_t sub_2489A0F30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return sub_24899D6C8();
}

uint64_t sub_2489A0FBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return sub_24899DB6C();
}

uint64_t sub_2489A1048(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899E6C0(a1);
}

uint64_t sub_2489A10DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899C9F8(a1);
}

uint64_t sub_2489A1170()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return sub_24899F55C();
}

uint64_t sub_2489A11FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_24899BE5C();
}

uint64_t sub_2489A1288(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899FCFC(a1);
}

uint64_t sub_2489A1328(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899E148(a1);
}

uint64_t sub_2489A13BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_248A11E40();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_248A11EF0();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = sub_248A12010();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v16 = sub_248A11FF0();
  v6[17] = v16;
  v17 = *(v16 - 8);
  v6[18] = v17;
  v18 = *(v17 + 64) + 15;
  v6[19] = swift_task_alloc();
  v19 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v6[20] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489A15D0, 0, 0);
}

uint64_t sub_2489A15D0()
{
  v51 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[5];
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_281510560);
  sub_2489A421C(v2, v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136446466;
    v11 = sub_248A13570();
    v13 = sub_24897BC00(v11, v12, &v50);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = GuestUserAccessPeerConnectionServiceMessage.Request.description.getter();
    v16 = v15;
    sub_2489A43BC(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
    v17 = sub_24897BC00(v14, v16, &v50);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Did receive peer connection service message: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  else
  {

    sub_2489A43BC(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v18 = v0[20];
  sub_2489A421C(v0[5], v0[21], type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v0[9] + 32))(v0[10], v0[21], v0[8]);
        v38 = swift_task_alloc();
        v0[26] = v38;
        *v38 = v0;
        v38[1] = sub_2489A1F84;
        v39 = v0[10];
        v40 = v0[6];

        return sub_24899E148(v39);
      }

      v22 = v0[15];
      v21 = v0[16];
      v23 = v0[14];
      v24 = v0[6];
      (*(v22 + 32))(v21, v0[21], v23);
      v25 = *(v24 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator);

      sub_248A11FB0();
    }

    else
    {
      v22 = v0[18];
      v21 = v0[19];
      v23 = v0[17];
      v29 = v0[6];
      (*(v22 + 32))(v21, v0[21], v23);
      v30 = *(v29 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator);

      sub_248A11FA0();
    }

    (*(v22 + 8))(v21, v23);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v26 = swift_task_alloc();
      v0[24] = v26;
      *v26 = v0;
      v26[1] = sub_2489A1D8C;
      v27 = v0[6];

      return sub_24899ACA0();
    }

    else
    {
      v44 = v0[12];
      v43 = v0[13];
      v45 = v0[11];
      v46 = v0[6];
      v47 = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_airPlayReceiverCoordinator;
      swift_beginAccess();
      (*(v44 + 16))(v43, v46 + v47, v45);
      sub_248A11ED0();
      (*(v44 + 8))(v43, v45);
      v48 = swift_task_alloc();
      v0[25] = v48;
      *v48 = v0;
      v48[1] = sub_2489A1E88;
      v49 = v0[6];

      return sub_24899B19C();
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v20 = *(v0[6] + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator);

      sub_248A11F50();

LABEL_19:
      v32 = v0[21];
      v31 = v0[22];
      v33 = v0[19];
      v34 = v0[16];
      v35 = v0[13];
      v36 = v0[10];

      v37 = v0[1];

      return v37();
    }

    v41 = swift_task_alloc();
    v0[23] = v41;
    *v41 = v0;
    v41[1] = sub_2489A1BE4;
    v42 = v0[6];

    return sub_24899B474();
  }
}

uint64_t sub_2489A1BE4()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2489A1CE0, 0, 0);
}

uint64_t sub_2489A1CE0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2489A1D8C()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2489A4A00, 0, 0);
}

uint64_t sub_2489A1E88()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2489A4A00, 0, 0);
}

uint64_t sub_2489A1F84()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_2489A215C;
  }

  else
  {
    v3 = sub_2489A2098;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489A2098()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2489A215C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v6 = v0[1];
  v7 = v0[27];

  return v6();
}

uint64_t sub_2489A2224(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 40) = a4;
  return MEMORY[0x2822009F8](sub_2489A2248, 0, 0);
}

uint64_t sub_2489A2248()
{
  v19 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    if (v5)
    {
      v11 = 0xD000000000000015;
    }

    else
    {
      v11 = 0xD00000000000001ALL;
    }

    if (v5)
    {
      v12 = "sendGuestUserAccessResponse(_:)";
    }

    else
    {
      v12 = "peerConnectionDidFail";
    }

    v13 = sub_24897BC00(v11, v12 | 0x8000000000000000, &v18);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Did receive peer connection service status update: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  if (*(v0 + 40))
  {
    v14 = swift_task_alloc();
    *(v0 + 32) = v14;
    *v14 = v0;
    v14[1] = sub_2489A24B0;
    v15 = *(v0 + 16);

    return sub_24899B19C();
  }

  else
  {
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2489A24B0()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2489A25AC, 0, 0);
}

uint64_t sub_2489A25AC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator);

  sub_248A11F50();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489A2628(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_248A12D40();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_2489A421C(a2, v8, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_2489A441C(v8, v16 + v14, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  *(v16 + v15) = v2;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v4;

  sub_2489E5FD4(0, 0, v12, &unk_248A15C80, v16);
}

uint64_t sub_2489A2840(uint64_t a1, char *a2)
{
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = *a2;
  v10 = sub_248A12D40();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = v4;

  sub_2489AC334(0, 0, v8, &unk_248A15C68, v11);
}

uint64_t sub_2489A2984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_248A11F40() - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489A2A18, 0, 0);
}

uint64_t sub_2489A2A18()
{
  v23 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_281510560);
  sub_2489A421C(v2, v1, MEMORY[0x277D05078]);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446466;
    v11 = sub_248A13570();
    v13 = sub_24897BC00(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_248A11F20();
    v16 = v15;
    sub_2489A43BC(v7, MEMORY[0x277D05078]);
    v17 = sub_24897BC00(v14, v16, &v22);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Should send guest user mode response: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  else
  {

    sub_2489A43BC(v7, MEMORY[0x277D05078]);
  }

  v18 = swift_task_alloc();
  v0[6] = v18;
  *v18 = v0;
  v18[1] = sub_2489A2C8C;
  v19 = v0[2];
  v20 = v0[3];

  return sub_24899E6C0(v19);
}

uint64_t sub_2489A2C8C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2489A2D9C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_248A11F40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_248A12D40();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2489A421C(a1, v7, MEMORY[0x277D05078]);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_2489A441C(v7, v15 + v13, MEMORY[0x277D05078]);
  *(v15 + v14) = v1;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;

  sub_2489E5FD4(0, 0, v11, &unk_248A15CA0, v15);
}

uint64_t sub_2489A2FB4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_2489A2FFC, 0, 0);
}

uint64_t sub_2489A2FFC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator);
  v2 = *(MEMORY[0x277D04F98] + 4);
  v5 = (*MEMORY[0x277D04F98] + MEMORY[0x277D04F98]);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_2489A30AC;

  return v5();
}

uint64_t sub_2489A30AC(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2489A31AC, 0, 0);
}

uint64_t sub_2489A31AC()
{
  v15 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1026;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Guest user session activation state — %{BOOL,public}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 40);

  return v11(v12);
}

uint64_t sub_2489A3348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58A0, &qword_248A15C50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58A8, &qword_248A15C58);
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489A347C, 0, 0);
}

uint64_t sub_2489A347C()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v0[17] = *(Strong + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator);
    sub_248A11EB0();
    sub_2489A49AC(&qword_27EEB58B0, MEMORY[0x277D04FA0]);
    v4 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_2489A35B0, v4, v3);
  }

  else
  {
    v5 = v0[15];
    v6 = v0[12];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2489A35B0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  sub_248A11E70();

  return MEMORY[0x2822009F8](sub_2489A361C, 0, 0);
}

uint64_t sub_2489A361C()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  sub_248A12D50();
  (*(v4 + 8))(v3, v5);
  swift_beginAccess();
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_2489A370C;
  v8 = v0[15];
  v9 = v0[13];

  return MEMORY[0x2822003E8](v0 + 23, 0, 0, v9);
}

uint64_t sub_2489A370C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2489A3808, 0, 0);
}

uint64_t sub_2489A3808()
{
  v26 = v0;
  v1 = *(v0 + 184);
  if (v1 == 2 || (sub_248A12D80() & 1) != 0)
  {
    v2 = *(v0 + 128);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v3 = *(v0 + 120);
    v4 = *(v0 + 96);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (qword_28150F5C8 != -1)
    {
      swift_once();
    }

    v7 = sub_248A122D0();
    __swift_project_value_buffer(v7, qword_281510560);
    v8 = sub_248A122B0();
    v9 = sub_248A12E80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 72);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136446466;
      v13 = sub_248A13570();
      v15 = sub_24897BC00(v13, v14, &v25);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1026;
      *(v11 + 14) = v1 & 1;
      _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] guest user session activation state did update to state - %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1E0A80](v12, -1, -1);
      MEMORY[0x24C1E0A80](v11, -1, -1);
    }

    v16 = *(v0 + 128);
    v17 = *(v16 + 16);
    *(v0 + 152) = v17;
    *(v0 + 160) = *(v16 + 24);
    if (v17)
    {

      v24 = (v17 + *v17);
      v18 = v17[1];
      v19 = swift_task_alloc();
      *(v0 + 168) = v19;
      *v19 = v0;
      v19[1] = sub_2489A3B78;

      return v24(v1 & 1);
    }

    else
    {
      v20 = *(MEMORY[0x277D85798] + 4);
      v21 = swift_task_alloc();
      *(v0 + 144) = v21;
      *v21 = v0;
      v21[1] = sub_2489A370C;
      v22 = *(v0 + 120);
      v23 = *(v0 + 104);

      return MEMORY[0x2822003E8](v0 + 184, 0, 0, v23);
    }
  }
}

uint64_t sub_2489A3B78()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[20];
  sub_248996A48(v2[19]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489A3D30, 0, 0);
  }

  else
  {
    v6 = *(MEMORY[0x277D85798] + 4);
    v7 = swift_task_alloc();
    v2[18] = v7;
    *v7 = v4;
    v7[1] = sub_2489A370C;
    v8 = v2[15];
    v9 = v2[13];

    return MEMORY[0x2822003E8](v2 + 23, 0, 0, v9);
  }
}

uint64_t sub_2489A3D30()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];
  v7 = v0[22];

  return v6();
}

uint64_t sub_2489A3DCC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2489789C8(v1);
  return v1;
}

uint64_t sub_2489A3E1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_248996A48(v5);
}

uint64_t sub_2489A3EC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489825D4;

  return sub_2489A2FB4();
}

uint64_t sub_2489A3F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5ED0, &qword_248A15BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2489A3FC0()
{
  result = qword_27EEB5EC0;
  if (!qword_27EEB5EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5898, &qword_248A15C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5EC0);
  }

  return result;
}

uint64_t sub_2489A4024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5ED0, &qword_248A15BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489A4094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2489839A0;

  return sub_2489A3348(a1, v4, v5, v7, v6);
}

uint64_t sub_2489A4154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248978D74;

  return sub_2489A2224(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_2489A421C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2489A4284(uint64_t a1)
{
  v4 = *(type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2489839A0;

  return sub_2489A13BC(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_2489A43BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2489A441C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2489A4484(uint64_t a1)
{
  v4 = *(sub_248A11F40() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_248978D74;

  return sub_2489A2984(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_2489A45BC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_27EEB9DC8);

  v4 = sub_248A122B0();
  v5 = sub_248A12E80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446722;
    nullsub_1(v2);
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_24897BC00(0x726573624F646461, 0xEF293A5F28726576, &v15);
    *(v6 + 22) = 2082;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58B8, &qword_248A15CB0);
    v11 = sub_248A12B80();
    v13 = sub_24897BC00(v11, v12, &v15);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_248975000, v4, v5, "%{public}s %{public}s: %{public}s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  return sub_248A11DA0();
}

void *sub_2489A47F8()
{
  v1 = v0;
  v2 = sub_248A11EF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0;
  v0[3] = 0;
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityTimeoutTask) = 0;
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask) = 0;
  v0[4] = sub_2489C69A8();
  sub_2489C6C34(v10);
  sub_248978948(v10, (v0 + 5));
  sub_2489C6EE8(v6);
  (*(v3 + 32))(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_airPlayReceiverCoordinator, v6, v2);
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator) = sub_2489C729C();
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator) = sub_2489C752C();
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_notificationController) = sub_2489C77BC();
  v7 = *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator);
  sub_2489A49AC(&qword_28150F7A8, type metadata accessor for GuestUserAccessResponseController);

  sub_248A11F60();

  return v1;
}

uint64_t sub_2489A49AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FileManagerBYOE.assetURL()@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_248A11A70();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_248A11AC0();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v23);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v21 = v20 - v11;
  v12 = NSTemporaryDirectory();
  sub_248A12B60();

  sub_248A11A80();

  v25 = 1701804386;
  v26 = 0xE400000000000000;
  v13 = *MEMORY[0x277CC91C0];
  v22 = v2[13];
  v22(v5, v13, v1);
  sub_2489835B8();
  sub_248A11AB0();
  v14 = v2 + 1;
  v15 = v2[1];
  v20[1] = v14;
  v15(v5, v1);
  v16 = *(v6 + 8);
  v17 = v23;
  v16(v10, v23);
  v25 = 0x646574726F707865;
  v26 = 0xEF7374657373612ELL;
  v22(v5, v13, v1);
  v18 = v21;
  sub_248A11AB0();
  v15(v5, v1);
  return (v16)(v18, v17);
}

uint64_t FileManagerBYOE.compressedAssetURL()@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_248A11A70();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_248A11AC0();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v21);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v20 = &v19 - v11;
  v12 = NSTemporaryDirectory();
  sub_248A12B60();

  sub_248A11A80();

  v23 = 1701804386;
  v24 = 0xE400000000000000;
  v13 = v2[13];
  v13(v5, *MEMORY[0x277CC91C0], v1);
  sub_2489835B8();
  sub_248A11AB0();
  v14 = v2[1];
  v19 = v2 + 1;
  v14(v5, v1);
  v15 = *(v6 + 8);
  v16 = v21;
  v15(v10, v21);
  v23 = 0xD000000000000013;
  v24 = 0x8000000248A19700;
  v13(v5, *MEMORY[0x277CC91D0], v1);
  v17 = v20;
  sub_248A11AB0();
  v14(v5, v1);
  return (v15)(v17, v16);
}

uint64_t FileManagerBYOE.checkEnoughDiskSpaceFor(assetURL:)(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2489A500C, 0, 0);
}

uint64_t sub_2489A500C()
{
  v36 = *MEMORY[0x277D85DE8];
  v35 = v0[8];
  v1 = sub_2489A54E8(v0[7]);
  if (v2)
  {
    sub_2489A7CEC();
    swift_allocError();
    *v3 = 0;
LABEL_23:
    swift_willThrow();
    v24 = v0[1];
    v32 = *MEMORY[0x277D85DE8];
    v26 = 0;
    goto LABEL_24;
  }

  if (v1 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (qword_28150F5E0 == -1)
  {
    goto LABEL_5;
  }

  v34 = v1;
  swift_once();
  v1 = v34;
LABEL_5:
  v4 = 2 * v1;
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105A8);
  v6 = sub_248A122B0();
  v7 = sub_248A12E80();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_248975000, v6, v7, "Low disk space threshold (bytes): %{public}lld", v8, 0xCu);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  v9 = NSHomeDirectory();
  if (!v9)
  {
    sub_248A12B60();
    v9 = sub_248A12B30();
  }

  v10 = v0[8];
  v0[2] = 0;
  v11 = [v10 attributesOfFileSystemForPath:v9 error:v0 + 2];

  v12 = v0[2];
  if (!v11)
  {
    v31 = v12;
    sub_248A11A40();

    goto LABEL_23;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_2489A9668(&qword_27EEB52A8, type metadata accessor for FileAttributeKey);
  v13 = sub_248A12AA0();
  v14 = v12;

  if (!*(v13 + 16) || (v15 = sub_2489A8640(*MEMORY[0x277CCA1D0]), (v16 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_24897C864(*(v13 + 56) + 32 * v15, (v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v27 = sub_248A122B0();
    v28 = sub_248A12E60();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_248975000, v27, v28, "Could not get free space size.", v29, 2u);
      MEMORY[0x24C1E0A80](v29, -1, -1);
    }

    sub_2489A7CEC();
    swift_allocError();
    *v30 = 1;
    goto LABEL_23;
  }

  v17 = v0[6];
  v18 = sub_248A122B0();
  v19 = sub_248A12E80();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134349056;
    *(v20 + 4) = v17;
    _os_log_impl(&dword_248975000, v18, v19, "Available disk space (bytes): %{public}ld", v20, 0xCu);
    MEMORY[0x24C1E0A80](v20, -1, -1);
  }

  v21 = sub_248A122B0();
  v22 = sub_248A12E80();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67240192;
    *(v23 + 4) = v4 < v17;
    _os_log_impl(&dword_248975000, v21, v22, "Enough disk space exists: %{BOOL,public}d", v23, 8u);
    MEMORY[0x24C1E0A80](v23, -1, -1);
  }

  v24 = v0[1];
  v25 = *MEMORY[0x277D85DE8];
  v26 = v4 < v17;
LABEL_24:

  return v24(v26);
}

uint64_t sub_2489A54E8(uint64_t a1)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v3 = sub_248A11AC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A11A60();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  sub_248A11AA0();
  v13 = sub_248A12B30();

  v14 = [v12 enumeratorAtPath_];

  if (v14)
  {
    v56 = v14;
    sub_248A12E30();
    v57 = 0;
    v62 = 0;
    v63 = *MEMORY[0x277CCA1C0];
    *&v15 = 136446466;
    v60 = v15;
    v61 = v11;
    while (1)
    {
      sub_248A11A50();
      if (!v66[3])
      {
        break;
      }

      if (swift_dynamicCast())
      {
        sub_248A11AA0();
        v16 = sub_248A12B30();

        v17 = sub_248A12B30();

        v18 = [v16 stringByAppendingPathComponent_];

        v19 = v18;
        if (!v18)
        {
          sub_248A12B60();
          v19 = sub_248A12B30();
        }

        v20 = sub_248A12B60();
        v22 = v21;
        v65 = 0;
        v23 = [v12 attributesOfItemAtPath:v19 error:&v65];

        v24 = v65;
        if (v23)
        {

          type metadata accessor for FileAttributeKey(0);
          sub_2489A9668(&qword_27EEB52A8, type metadata accessor for FileAttributeKey);
          v25 = sub_248A12AA0();

          if (*(v25 + 16) && (v26 = sub_2489A8640(v63), (v27 & 1) != 0))
          {
            sub_24897C864(*(v25 + 56) + 32 * v26, &v65);

            if (swift_dynamicCast())
            {
              v28 = __OFADD__(v57, v64);
              v57 += v64;
              if (v28)
              {
                __break(1u);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          v29 = v24;
          v30 = sub_248A11A40();

          swift_willThrow();
          if (qword_28150F5E0 != -1)
          {
            swift_once();
          }

          v62 = 0;
          v31 = sub_248A122D0();
          __swift_project_value_buffer(v31, qword_2815105A8);

          v32 = v30;
          v33 = sub_248A122B0();
          v34 = sub_248A12E60();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = a1;
            v37 = swift_slowAlloc();
            v38 = v12;
            v39 = swift_slowAlloc();
            v65 = v39;
            *v35 = v60;
            v40 = sub_24897BC00(v20, v22, &v65);

            *(v35 + 4) = v40;
            *(v35 + 12) = 2114;
            v41 = v30;
            v42 = _swift_stdlib_bridgeErrorToNSError();
            *(v35 + 14) = v42;
            *v37 = v42;
            _os_log_impl(&dword_248975000, v33, v34, "Failed to get attributes for file %{public}s: %{public}@", v35, 0x16u);
            sub_248983734(v37, &qword_27EEB5600, &unk_248A15210);
            v43 = v37;
            a1 = v36;
            MEMORY[0x24C1E0A80](v43, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v39);
            v44 = v39;
            v12 = v38;
            v11 = v61;
            MEMORY[0x24C1E0A80](v44, -1, -1);
            MEMORY[0x24C1E0A80](v35, -1, -1);
          }

          else
          {
          }
        }
      }
    }

    (*(v58 + 8))(v11, v59);

    result = v57;
  }

  else
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v46 = sub_248A122D0();
    __swift_project_value_buffer(v46, qword_2815105A8);
    (*(v4 + 16))(v7, a1, v3);
    v47 = sub_248A122B0();
    v48 = sub_248A12E60();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v66[0] = v50;
      *v49 = 136446210;
      sub_2489A9668(&qword_27EEB53D0, MEMORY[0x277CC9260]);
      v51 = sub_248A132F0();
      v53 = v52;
      (*(v4 + 8))(v7, v3);
      v54 = sub_24897BC00(v51, v53, v66);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_248975000, v47, v48, "Failed to enumerate directory: %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C1E0A80](v50, -1, -1);
      MEMORY[0x24C1E0A80](v49, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    result = 0;
  }

  v55 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileManagerBYOE.ensureBYOEDirectoryExists()()
{
  v67[1] = *MEMORY[0x277D85DE8];
  v1 = sub_248A11A70();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_248A11AC0();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v49[-v11];
  v63 = *v0;
  v13 = NSTemporaryDirectory();
  sub_248A12B60();

  sub_248A11A80();

  v65 = 1701804386;
  v66 = 0xE400000000000000;
  v14 = v2[13];
  v61 = *MEMORY[0x277CC91C0];
  v62 = v2 + 13;
  v60 = v14;
  v14(v5);
  v59 = sub_2489835B8();
  sub_248A11AB0();
  v15 = v2[1];
  v56 = v2 + 1;
  v57 = v1;
  v58 = v15;
  v15(v5, v1);
  v17 = v64 + 8;
  v16 = *(v64 + 8);
  v16(v10, v6);
  sub_248A11AA0();
  v16(v12, v6);
  v18 = sub_248A12B30();

  v19 = v63;
  v20 = [v63 fileExistsAtPath:v18 isDirectory:0];

  if ((v20 & 1) == 0)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v55 = v16;
    v64 = v17;
    v21 = sub_248A122D0();
    __swift_project_value_buffer(v21, qword_2815105A8);
    v22 = v19;
    v23 = sub_248A122B0();
    v24 = sub_248A12E80();
    v63 = v22;

    v25 = os_log_type_enabled(v23, v24);
    v54 = v6;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v52 = v26;
      v53 = swift_slowAlloc();
      v67[0] = v53;
      *v26 = 136446210;
      v27 = NSTemporaryDirectory();
      v51 = v23;
      v28 = v27;
      sub_248A12B60();
      v29 = v6;

      sub_248A11A80();
      v30 = v57;

      v65 = 1701804386;
      v66 = 0xE400000000000000;
      v60(v5, v61, v30);
      sub_248A11AB0();
      v58(v5, v30);
      v31 = v29;
      v32 = v29;
      v50 = v24;
      v33 = v55;
      v55(v10, v32);
      v34 = sub_248A11AA0();
      v36 = v35;
      v33(v12, v31);
      v37 = sub_24897BC00(v34, v36, v67);

      v39 = v51;
      v38 = v52;
      *(v52 + 1) = v37;
      _os_log_impl(&dword_248975000, v39, v50, "%{public}s does not exist, creating", v38, 0xCu);
      v40 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x24C1E0A80](v40, -1, -1);
      MEMORY[0x24C1E0A80](v38, -1, -1);
    }

    else
    {

      v33 = v55;
    }

    v41 = NSTemporaryDirectory();
    sub_248A12B60();

    sub_248A11A80();

    v65 = 1701804386;
    v66 = 0xE400000000000000;
    v42 = v57;
    v60(v5, v61, v57);
    sub_248A11AB0();
    v58(v5, v42);
    v43 = v54;
    v33(v10, v54);
    v44 = sub_248A11A90();
    v33(v12, v43);
    v65 = 0;
    v45 = [v63 createDirectoryAtURL:v44 withIntermediateDirectories:1 attributes:0 error:&v65];

    if (v45)
    {
      v46 = v65;
    }

    else
    {
      v47 = v65;
      sub_248A11A40();

      swift_willThrow();
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileManagerBYOE.ensureCleanDiskState()()
{
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = sub_248A11AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  FileManagerBYOE.assetURL()(v5);
  sub_248A11AA0();
  v9 = *(v2 + 8);
  v7 = (v2 + 8);
  v8 = v9;
  v9(v5, v1);
  v10 = sub_248A12B30();

  v11 = [v6 fileExistsAtPath_];

  if (v11)
  {
    v51 = v7;
    v52 = v8;
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v12 = sub_248A122D0();
    __swift_project_value_buffer(v12, qword_2815105A8);
    v50 = v6;
    v13 = v6;
    v14 = sub_248A122B0();
    v15 = sub_248A12E80();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54[0] = v48;
      *v16 = 136446210;
      FileManagerBYOE.assetURL()(v5);
      v17 = sub_248A11AA0();
      v49 = v13;
      v19 = v18;
      v8 = v52;
      v52(v5, v1);
      v20 = sub_24897BC00(v17, v19, v54);
      v13 = v49;

      *(v16 + 4) = v20;
      _os_log_impl(&dword_248975000, v14, v15, "%{public}s already exists, deleting", v16, 0xCu);
      v21 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C1E0A80](v21, -1, -1);
      MEMORY[0x24C1E0A80](v16, -1, -1);
    }

    else
    {

      v8 = v52;
    }

    FileManagerBYOE.assetURL()(v5);
    sub_248A11AA0();
    v8(v5, v1);
    v22 = sub_248A12B30();

    v54[0] = 0;
    v23 = [v13 removeItemAtPath:v22 error:v54];

    v24 = v54[0];
    v6 = v50;
    if (!v23)
    {
      goto LABEL_16;
    }

    v25 = v54[0];
  }

  FileManagerBYOE.compressedAssetURL()(v5);
  sub_248A11AA0();
  v8(v5, v1);
  v26 = sub_248A12B30();

  v27 = [v6 fileExistsAtPath_];

  if (v27)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v28 = sub_248A122D0();
    __swift_project_value_buffer(v28, qword_2815105A8);
    v29 = v6;
    v30 = sub_248A122B0();
    v31 = sub_248A12E80();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v52 = v1;
      v33 = v32;
      v51 = swift_slowAlloc();
      v54[0] = v51;
      *v33 = 136446210;
      FileManagerBYOE.compressedAssetURL()(v5);
      v34 = sub_248A11AA0();
      v35 = v8;
      v36 = v29;
      v38 = v37;
      v35(v5, v52);
      v39 = sub_24897BC00(v34, v38, v54);
      v29 = v36;
      v8 = v35;

      *(v33 + 4) = v39;
      _os_log_impl(&dword_248975000, v30, v31, "%{public}s already exists, deleting", v33, 0xCu);
      v40 = v51;
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x24C1E0A80](v40, -1, -1);
      v41 = v33;
      v1 = v52;
      MEMORY[0x24C1E0A80](v41, -1, -1);
    }

    FileManagerBYOE.compressedAssetURL()(v5);
    sub_248A11AA0();
    v8(v5, v1);
    v42 = sub_248A12B30();

    v54[0] = 0;
    v43 = [v29 removeItemAtPath:v42 error:v54];

    v24 = v54[0];
    if (v43)
    {
      v44 = v54[0];
      goto LABEL_17;
    }

LABEL_16:
    v45 = v24;
    v46 = sub_248A11A40();

    v53 = v46;
    swift_willThrow();
  }

LABEL_17:
  v47 = *MEMORY[0x277D85DE8];
}

id FileManagerBYOE.fileExists(atURL:)()
{
  v1 = *v0;
  sub_248A11AA0();
  v2 = sub_248A12B30();

  v3 = [v1 fileExistsAtPath_];

  return v3;
}

id FileManagerBYOE.removeItem(at:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = sub_248A11A90();
  v6[0] = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v2 error:v6];

  if (v1)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_248A11A40();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id FileManagerBYOE.copy(itemAt:to:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = sub_248A11A90();
  v3 = sub_248A11A90();
  v8[0] = 0;
  v4 = [v1 copyItemAtURL:v2 toURL:v3 error:v8];

  if (v4)
  {
    result = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_248A11A40();

    result = swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

id FileManagerBYOE.createDirectory(at:withIntermediateDirectories:)(uint64_t a1, char a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = sub_248A11A90();
  v10[0] = 0;
  v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:a2 & 1 attributes:0 error:v10];

  if (v6)
  {
    result = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_248A11A40();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FileManagerBYOE.formattedSize(ofAssetsAtURL:)(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = 0x6E776F6E6B6E55;
  v4 = *v1;
  v14 = 0;
  sub_248A11AA0();
  v5 = sub_248A12B30();

  [v4 fileExistsAtPath:v5 isDirectory:&v14];

  if ((v14 & 1) == 0)
  {
    v6 = sub_2489A6CE8();
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v6 = sub_2489A54E8(a1);
  if ((v7 & 1) == 0)
  {
LABEL_3:
    v8 = v6;
    v9 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v9 setAllowedUnits_];
    [v9 setCountStyle_];
    v10 = [v9 stringFromByteCount_];
    v3 = sub_248A12B60();
  }

LABEL_5:
  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2489A6CE8()
{
  v23[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_248A11AA0();
  v2 = sub_248A12B30();

  v23[0] = 0;
  v3 = [v1 attributesOfItemAtPath:v2 error:v23];

  v4 = v23[0];
  if (!v3)
  {
    v10 = v23[0];
    v11 = sub_248A11A40();

    swift_willThrow();
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v12 = sub_248A122D0();
    __swift_project_value_buffer(v12, qword_2815105A8);
    v13 = v11;
    v14 = sub_248A122B0();
    v15 = sub_248A12E60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = sub_248A133C0();
      v20 = sub_24897BC00(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_248975000, v14, v15, "Error retrieving file size: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1E0A80](v17, -1, -1);
      MEMORY[0x24C1E0A80](v16, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_2489A9668(&qword_27EEB52A8, type metadata accessor for FileAttributeKey);
  v5 = sub_248A12AA0();
  v6 = v4;

  if (!*(v5 + 16) || (v7 = sub_2489A8640(*MEMORY[0x277CCA1C0]), (v8 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_24897C864(*(v5 + 56) + 32 * v7, v23);

  if (!swift_dynamicCast())
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = v22;
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2489A7054()
{
  v1 = *v0;
  sub_248A11AA0();
  v2 = sub_248A12B30();

  v3 = [v1 fileExistsAtPath_];

  return v3;
}

uint64_t sub_2489A710C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489825D4;

  return FileManagerBYOE.checkEnoughDiskSpaceFor(assetURL:)(a1);
}

unint64_t FileManagerBYOE.Error.description.getter()
{
  if (*v0)
  {
    result = 0xD00000000000002CLL;
  }

  else
  {
    result = 0xD000000000000031;
  }

  *v0;
  return result;
}

unint64_t sub_2489A7224()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t sub_2489A7260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001BLL && 0x8000000248A19820 == a2;
  if (v6 || (sub_248A13340() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000248A19840 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_248A13340();

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

uint64_t sub_2489A7358(uint64_t a1)
{
  v2 = sub_2489A7F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2489A7394(uint64_t a1)
{
  v2 = sub_2489A7F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2489A73DC(uint64_t a1)
{
  v2 = sub_2489A8010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2489A7418(uint64_t a1)
{
  v2 = sub_2489A8010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2489A7454(uint64_t a1)
{
  v2 = sub_2489A7FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2489A7490(uint64_t a1)
{
  v2 = sub_2489A7FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileManagerBYOE.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58C8, &qword_248A15CC8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58D0, &qword_248A15CD0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58D8, &qword_248A15CD8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2489A7F68();
  sub_248A13490();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2489A7FBC();
    v18 = v22;
    sub_248A132B0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2489A8010();
    sub_248A132B0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t FileManagerBYOE.Error.hashValue.getter()
{
  v1 = *v0;
  sub_248A13430();
  MEMORY[0x24C1E0100](v1);
  return sub_248A13460();
}

uint64_t FileManagerBYOE.Error.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58F8, &qword_248A15CE0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5900, &qword_248A15CE8);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5908, &qword_248A15CF0);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2489A7F68();
  v17 = v37;
  sub_248A13480();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_248A132A0();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_248A13150();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5910, &qword_248A15CF8) + 48);
    *v25 = &type metadata for FileManagerBYOE.Error;
    sub_248A13280();
    sub_248A13140();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_2489A7FBC();
    sub_248A13270();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_2489A8010();
    sub_248A13270();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

unint64_t sub_2489A7C80()
{
  if (*v0)
  {
    result = 0xD00000000000002CLL;
  }

  else
  {
    result = 0xD000000000000031;
  }

  *v0;
  return result;
}

unint64_t sub_2489A7CEC()
{
  result = qword_27EEB58C0;
  if (!qword_27EEB58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB58C0);
  }

  return result;
}

unint64_t sub_2489A7D40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_248A13430();
  sub_248A12BB0();
  v6 = sub_248A13460();

  return sub_2489A88F0(a1, a2, v6);
}

unint64_t sub_2489A7DB8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_248A13080();

  return sub_2489A89A8(a1, v5);
}

unint64_t sub_2489A7DFC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_248A12480();
  v5 = MEMORY[0x277D04ED0];
  sub_2489A9668(&unk_27EEB61C0, MEMORY[0x277D04ED0]);
  v6 = sub_248A12AE0();
  return sub_2489A946C(a1, v6, MEMORY[0x277D04ED0], &qword_27EEB5958, v5, MEMORY[0x277D04EE0]);
}

unint64_t sub_2489A7ED0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = *(v4 + 40);
  sub_248A13430();
  SpecificAssetType.hash(into:)();
  v10 = sub_248A13460();

  return sub_2489A8A70(a1, a2, a3, a4, v10);
}

unint64_t sub_2489A7F68()
{
  result = qword_27EEB58E0;
  if (!qword_27EEB58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB58E0);
  }

  return result;
}

unint64_t sub_2489A7FBC()
{
  result = qword_27EEB58E8;
  if (!qword_27EEB58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB58E8);
  }

  return result;
}

unint64_t sub_2489A8010()
{
  result = qword_27EEB58F0;
  if (!qword_27EEB58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB58F0);
  }

  return result;
}

unint64_t sub_2489A8068()
{
  result = qword_27EEB5918;
  if (!qword_27EEB5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5918);
  }

  return result;
}

uint64_t dispatch thunk of FileManagerBYOEProtocol.checkEnoughDiskSpaceFor(assetURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24898314C;

  return v11(a1, a2, a3);
}

uint64_t sub_2489A8300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2489A8348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2489A83D8()
{
  result = qword_27EEB5920;
  if (!qword_27EEB5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5920);
  }

  return result;
}

unint64_t sub_2489A8430()
{
  result = qword_27EEB5928;
  if (!qword_27EEB5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5928);
  }

  return result;
}

unint64_t sub_2489A8488()
{
  result = qword_27EEB5930;
  if (!qword_27EEB5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5930);
  }

  return result;
}

unint64_t sub_2489A84E0()
{
  result = qword_27EEB5938;
  if (!qword_27EEB5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5938);
  }

  return result;
}

unint64_t sub_2489A8538()
{
  result = qword_27EEB5940;
  if (!qword_27EEB5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5940);
  }

  return result;
}

unint64_t sub_2489A8590()
{
  result = qword_27EEB5948;
  if (!qword_27EEB5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5948);
  }

  return result;
}

unint64_t sub_2489A85E8()
{
  result = qword_27EEB5950;
  if (!qword_27EEB5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5950);
  }

  return result;
}

unint64_t sub_2489A8640(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_248A12B60();
  sub_248A13430();
  sub_248A12BB0();
  v4 = sub_248A13460();

  return sub_2489A9118(a1, v4);
}

unint64_t sub_2489A86D0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_248A13420();

  return sub_2489A921C(a1, v4);
}

unint64_t sub_2489A8714(char a1)
{
  v3 = *(v1 + 40);
  sub_248A13430();
  sub_248A12BB0();

  v4 = sub_248A13460();

  return sub_2489A9288(a1, v4);
}

unint64_t sub_2489A87D4(unsigned int a1)
{
  v3 = MEMORY[0x24C1E00D0](*(v1 + 40), a1, 4);

  return sub_2489A9400(a1, v3);
}

unint64_t sub_2489A881C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_248A11BC0();
  v5 = MEMORY[0x277CC95F0];
  sub_2489A9668(&unk_27EEB5A30, MEMORY[0x277CC95F0]);
  v6 = sub_248A12AE0();
  return sub_2489A946C(a1, v6, MEMORY[0x277CC95F0], &qword_27EEB5960, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_2489A88F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_248A13340())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2489A89A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2489A960C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1DFD50](v9, a1);
      sub_248983688(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2489A8A70(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if (((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return v8;
  }

  v13 = ~v7;
  v14 = a1 != 2;
  v15 = a3 | a2;
  v16 = a1 != 1;
  if (a3 | a2)
  {
    v14 = 1;
  }

  if (v15)
  {
    v16 = 1;
  }

  v17 = a4 != 2;
  v18 = v15 | a1;
  if (a4 != 2)
  {
    v14 = 1;
  }

  v59 = v14;
  v19 = a4 != 2 || v16;
  v58 = v19;
  if (v18)
  {
    v17 = 1;
  }

  v60 = v17;
  v61 = v13;
  while (1)
  {
    v25 = *(v5 + 48) + 32 * v8;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v62[0] = v26;
    v62[1] = v27;
    v62[2] = v28;
    v63 = v29;
    v64 = a1;
    v65 = a2;
    v66 = a3;
    v67 = a4;
    if (!v29)
    {
      break;
    }

    if (v29 != 1)
    {
      if (v28 | v27 | v26)
      {
        if (v26 == 1 && (v28 | v27) == 0)
        {
          if ((v58 & 1) == 0)
          {
LABEL_61:
            sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);
            return v8;
          }
        }

        else if (!v59)
        {
          goto LABEL_61;
        }
      }

      else if (!v60)
      {
        goto LABEL_61;
      }

      goto LABEL_16;
    }

    if (a4 != 1)
    {
      v20 = 1;
      goto LABEL_15;
    }

    if (v27)
    {
      if (a2)
      {
        if (v26 == a1 && v27 == a2)
        {
          v55 = v28;
          sub_2489837A4(a1, a2, v28, 1u);
          sub_2489837A4(a1, a2, a3, 1u);
          sub_2489837A4(a1, a2, v55, 1u);
          sub_2489837A4(a1, a2, a3, 1u);
          sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

          goto LABEL_65;
        }

        v31 = v26;
        v32 = v27;
        v33 = v28;
        v34 = sub_248A13340();
        sub_2489837A4(v31, v32, v33, 1u);
        sub_2489837A4(a1, a2, a3, 1u);
        v35 = v31;
        v13 = v61;
        v36 = v33;
        v6 = v5 + 64;
        sub_2489837A4(v35, v32, v36, 1u);
        sub_2489837A4(a1, a2, a3, 1u);
        sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

        goto LABEL_46;
      }

      v45 = v26;
      v46 = v27;
      v47 = v28;
      sub_2489837A4(v26, v27, v28, 1u);
      sub_2489837A4(a1, 0, a3, 1u);
      v48 = v45;
      v13 = v61;
      sub_2489837A4(v48, v46, v47, 1u);
      sub_2489837A4(a1, 0, a3, 1u);
      sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

LABEL_59:

      goto LABEL_18;
    }

    v43 = v26;
    v44 = v28;
    sub_2489837A4(v26, 0, v28, 1u);
    sub_2489837A4(a1, a2, a3, 1u);
    sub_2489837A4(v43, 0, v44, 1u);
    sub_2489837A4(a1, a2, a3, 1u);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);
    if (!a2)
    {
      goto LABEL_62;
    }

    v13 = v61;
LABEL_18:
    v8 = (v8 + 1) & v13;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return v8;
    }
  }

  if (a4)
  {
    v20 = 0;
LABEL_15:
    sub_2489837A4(v26, v27, v28, v20);
LABEL_16:
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
LABEL_17:
    sub_2489837A4(v21, v22, v23, v24);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);
    goto LABEL_18;
  }

  if ((v26 ^ a1))
  {
    sub_2489837A4(v26, v27, v28, 0);
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = 0;
    goto LABEL_17;
  }

  if (!v28)
  {
    v49 = v26;
    v50 = v27;
    sub_2489837A4(v26, v27, 0, 0);
    sub_2489837A4(a1, a2, a3, 0);
    sub_2489837A4(v49, v50, 0, 0);
    sub_2489837A4(a1, a2, a3, 0);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);
    if (!a3)
    {
LABEL_62:
      swift_bridgeObjectRelease_n();
      return v8;
    }

    v6 = v5 + 64;
    goto LABEL_18;
  }

  if (!a3)
  {
    v51 = v26;
    v52 = v27;
    v53 = v28;
    sub_2489837A4(v26, v27, v28, 0);
    sub_2489837A4(a1, a2, 0, 0);
    v54 = v51;
    v13 = v61;
    sub_2489837A4(v54, v52, v53, 0);
    sub_2489837A4(a1, a2, 0, 0);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

    v6 = v5 + 64;
    goto LABEL_59;
  }

  if (v27 != a2 || v28 != a3)
  {
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v34 = sub_248A13340();
    sub_2489837A4(v39, v40, v41, 0);
    sub_2489837A4(a1, a2, a3, 0);
    v42 = v40;
    v6 = v5 + 64;
    sub_2489837A4(v39, v42, v41, 0);
    sub_2489837A4(a1, a2, a3, 0);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

    v13 = v61;
LABEL_46:

    if (v34)
    {
      return v8;
    }

    goto LABEL_18;
  }

  v56 = v26;
  sub_2489837A4(v26, a2, a3, 0);
  sub_2489837A4(a1, a2, a3, 0);
  sub_2489837A4(v56, a2, a3, 0);
  sub_2489837A4(a1, a2, a3, 0);
  sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

LABEL_65:

  return v8;
}

unint64_t sub_2489A9118(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_248A12B60();
      v9 = v8;
      if (v7 == sub_248A12B60() && v9 == v10)
      {
        break;
      }

      v12 = sub_248A13340();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2489A921C(uint64_t a1, uint64_t a2)
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

unint64_t sub_2489A9288(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000004CLL;
      v6 = 0xD00000000000002BLL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "haringd.deviceEnrollmentData";
      }

      else
      {
        v6 = 0xD000000000000029;
        v7 = "ssets.notify.iCloudSyncDown";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD00000000000004CLL;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ExtendedDeviceLockState";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD00000000000002BLL : 0xD000000000000029;
        v10 = a1 == 1 ? "haringd.deviceEnrollmentData" : "ssets.notify.iCloudSyncDown";
      }

      else
      {
        v10 = "ExtendedDeviceLockState";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_248A13340();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2489A9400(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2489A946C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_2489A9668(v24, v25);
      v20 = sub_248A12B00();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_2489A9668(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t NWProtocolFramer.Message.transportItem.getter()
{
  sub_248A12810();
  if (v6)
  {
    v0 = swift_dynamicCast();
    v1 = v4;
    v2 = v0 ^ 1;
    if (!v0)
    {
      v1 = 0;
    }
  }

  else
  {
    sub_2489A9778(v5);
    v1 = 0;
    v2 = 1;
  }

  return v1 | (v2 << 32);
}

uint64_t sub_2489A9778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NWProtocolFramer.Message.init(transportItem:)()
{
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  v0 = sub_248A127F0();

  sub_248A12820();

  return v0;
}

uint64_t sub_2489A9894(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((a3 & 1) != 0 || (a1 ? (v5 = a2 - a1) : (v5 = 0), v5 < qword_27EEB5FC0))
  {
    result = 0;
  }

  else
  {
    if (a1)
    {
      v7 = *a1;
    }

    else
    {
      v7 = 0;
    }

    *a5 = v7;
    *(a5 + 8) = a1 == 0;
    result = qword_27EEB5FC0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ArchiveStreamCompression.compress(fileAtURL:toFileURL:)(uint64_t a1, uint64_t a2)
{
  v141 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5970, &qword_248A161B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v128 = &v117 - v5;
  v140 = sub_248A11CA0();
  v138 = *(v140 - 8);
  v6 = *(v138 + 64);
  v7 = MEMORY[0x28223BE20](v140);
  v126 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v117 - v9;
  v10 = sub_248A11C90();
  v131 = *(v10 - 8);
  v132 = v10;
  v11 = *(v131 + 64);
  MEMORY[0x28223BE20](v10);
  v130 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_248A124D0();
  v137 = *(v13 - 8);
  v14 = *(v137 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v129 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v139 = &v117 - v17;
  v18 = sub_248A11AC0();
  isa = v18[-1].isa;
  v20 = isa[8];
  v21 = MEMORY[0x28223BE20](v18);
  v123 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v117 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v117 - v26;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v28 = sub_248A122D0();
  v29 = __swift_project_value_buffer(v28, qword_2815105A8);
  v30 = isa[2];
  v125 = a1;
  v30(v27, a1, v18);
  v121 = v30;
  v122 = isa + 2;
  v30(v25, v141, v18);
  v135 = v29;
  v31 = sub_248A122B0();
  v32 = sub_248A12E80();
  v33 = os_log_type_enabled(v31, v32);
  v136 = v13;
  v124 = isa;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v142 = v134;
    *v34 = 136446466;
    sub_2489AC224(&qword_27EEB53D0, MEMORY[0x277CC9260]);
    LODWORD(v120) = v32;
    v119 = v31;
    v35 = sub_248A132F0();
    v37 = v36;
    v38 = isa[1];
    v38(v27, v18);
    v39 = sub_24897BC00(v35, v37, &v142);
    v40 = v139;

    *(v34 + 4) = v39;
    *(v34 + 12) = 2082;
    v41 = sub_248A132F0();
    v43 = v42;
    v38(v25, v18);
    v44 = sub_24897BC00(v41, v43, &v142);

    *(v34 + 14) = v44;
    v45 = v119;
    _os_log_impl(&dword_248975000, v119, v120, "Compressing: %{public}s to %{public}s", v34, 0x16u);
    v46 = v134;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v46, -1, -1);
    MEMORY[0x24C1E0A80](v34, -1, -1);
  }

  else
  {

    v38 = isa[1];
    v38(v25, v18);
    v38(v27, v18);
    v40 = v139;
  }

  v47 = sub_248A11AA0();
  MEMORY[0x24C1DF1A0](v47);
  sub_248A11C20();
  v48 = sub_248A11C10();
  if (!v48)
  {
    v83 = sub_248A122B0();
    v84 = sub_248A12E60();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_248975000, v83, v84, "Error creating write stream", v85, 2u);
      MEMORY[0x24C1E0A80](v85, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v86 = 0;
    swift_willThrow();
    v82 = v136;
    return (*(v137 + 8))(v40, v82);
  }

  v118 = v38;
  v119 = v18;
  v134 = v48;
  type metadata accessor for ArchiveStreamCompressionConfiguration();
  sub_248A120F0();
  v49 = sub_248A120E0();
  v50 = sub_248A12090();
  v52 = v51;

  v53 = v130;
  sub_2489F5524(v50, v52, v130);

  if (qword_27EEB5188 != -1)
  {
    swift_once();
  }

  v54 = qword_27EEB5968;
  v142 = MEMORY[0x277D84F90];
  v55 = sub_2489AC224(&qword_27EEB5980, MEMORY[0x277D832A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5988, &unk_248A161B8);
  v56 = sub_2489AC1C0();
  v57 = v133;
  v58 = v140;
  sub_248A12FA0();
  v120 = v54;
  v59 = sub_248A11BF0();
  v60 = v53;
  v61 = v138 + 8;
  v62 = *(v138 + 8);
  v62(v57, v58);
  (*(v131 + 8))(v60, v132);
  if (!v59)
  {
    v87 = sub_248A122B0();
    v88 = sub_248A12E60();
    v89 = os_log_type_enabled(v87, v88);
    v40 = v139;
    if (v89)
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_248975000, v87, v88, "Error creating compress stream", v90, 2u);
      MEMORY[0x24C1E0A80](v90, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v91 = 0;
    swift_willThrow();
    sub_2489ABF64(0x7473206574697277, 0xEC0000006D616572, v134, MEMORY[0x277D83238]);

    v82 = v136;
    return (*(v137 + 8))(v40, v82);
  }

  sub_248A11D20();
  v142 = MEMORY[0x277D84F90];
  v138 = v61;
  sub_248A12FA0();
  v132 = v59;
  v63 = v140;
  v64 = sub_248A11CE0();
  v62(v57, v63);
  if (!v64)
  {
    v92 = sub_248A122B0();
    v93 = sub_248A12E60();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_248975000, v92, v93, "Error creating encode stream", v94, 2u);
      MEMORY[0x24C1E0A80](v94, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v95 = 0;
    swift_willThrow();
    goto LABEL_28;
  }

  v131 = v56;
  v133 = v55;
  v65 = sub_248A11CB0();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  if (!sub_248A11CC0())
  {
    v96 = sub_248A122B0();
    v97 = sub_248A12E60();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_248975000, v96, v97, "Unable to create ArchiveHeader.FieldKeySet", v98, 2u);
      MEMORY[0x24C1E0A80](v98, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v99 = 0;
    swift_willThrow();
    sub_2489ABF64(0x732065646F636E65, 0xED00006D61657274, v64, MEMORY[0x277D832B8]);

LABEL_28:
    v100 = MEMORY[0x277D83238];
    sub_2489ABF64(0x73736572706D6F63, 0xEF6D616572747320, v132, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7473206574697277, 0xEC0000006D616572, v134, v100);

    v82 = v136;
    v40 = v139;
    return (*(v137 + 8))(v40, v82);
  }

  v68 = sub_248A11AA0();
  MEMORY[0x24C1DF1A0](v68);
  v69 = v128;
  (*(v137 + 56))(v128, 1, 1, v136);
  v142 = MEMORY[0x277D84F90];
  v70 = v126;
  sub_248A12FA0();
  v133 = v64;
  v71 = v127;
  sub_248A11D00();
  if (v71)
  {
    v62(v70, v63);
    sub_248983734(v69, &qword_27EEB5970, &qword_248A161B0);
    v72 = v71;
    v73 = sub_248A122B0();
    v74 = sub_248A12E60();

    v75 = os_log_type_enabled(v73, v74);
    v40 = v139;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138543362;
      v78 = v71;
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 4) = v79;
      *v77 = v79;
      _os_log_impl(&dword_248975000, v73, v74, "Unable to write compressed file: %{public}@", v76, 0xCu);
      sub_248983734(v77, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v77, -1, -1);
      MEMORY[0x24C1E0A80](v76, -1, -1);
    }

    swift_willThrow();

    v80 = v136;
    (*(v137 + 8))(v129, v136);
    sub_2489ABF64(0x732065646F636E65, 0xED00006D61657274, v133, MEMORY[0x277D832B8]);

    v81 = MEMORY[0x277D83238];
    sub_2489ABF64(0x73736572706D6F63, 0xEF6D616572747320, v132, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7473206574697277, 0xEC0000006D616572, v134, v81);

    v82 = v80;
    return (*(v137 + 8))(v40, v82);
  }

  v62(v70, v63);
  sub_248983734(v69, &qword_27EEB5970, &qword_248A161B0);
  v102 = v123;
  v103 = v119;
  v121(v123, v141, v119);
  v104 = sub_248A122B0();
  v105 = sub_248A12E40();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v142 = v107;
    *v106 = 136446210;
    sub_2489AC224(&qword_27EEB53D0, MEMORY[0x277CC9260]);
    v108 = sub_248A132F0();
    v109 = v102;
    v111 = v110;
    v118(v109, v103);
    v112 = sub_24897BC00(v108, v111, &v142);

    *(v106 + 4) = v112;
    _os_log_impl(&dword_248975000, v104, v105, "Compressed file written to %{public}s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    MEMORY[0x24C1E0A80](v107, -1, -1);
    MEMORY[0x24C1E0A80](v106, -1, -1);
  }

  else
  {

    v118(v102, v103);
  }

  v113 = v136;
  v114 = *(v137 + 8);
  v114(v129, v136);
  v115 = v139;
  sub_2489ABF64(0x732065646F636E65, 0xED00006D61657274, v133, MEMORY[0x277D832B8]);

  v116 = MEMORY[0x277D83238];
  sub_2489ABF64(0x73736572706D6F63, 0xEF6D616572747320, v132, MEMORY[0x277D83238]);

  sub_2489ABF64(0x7473206574697277, 0xEC0000006D616572, v134, v116);

  return (v114)(v115, v113);
}

uint64_t ArchiveStreamCompression.decompress(archiveAtURL:toFileURL:)(uint64_t a1, _DWORD *a2)
{
  v167 = a2;
  v171 = a1;
  v172[1] = *MEMORY[0x277D85DE8];
  v164 = sub_248A11CA0();
  v170 = *(v164 - 8);
  v2 = v170[8];
  v3 = MEMORY[0x28223BE20](v164);
  v160 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v163 = &v145 - v5;
  v6 = sub_248A124D0();
  v7 = *(v6 - 8);
  v168 = v6;
  v169 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v162 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v145 - v11;
  v13 = sub_248A11AC0();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v145 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v145 - v22;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v24 = sub_248A122D0();
  v25 = __swift_project_value_buffer(v24, qword_2815105A8);
  v26 = v14[2];
  v26(v23, v171, v13);
  v155 = v26;
  v156 = v14 + 2;
  v26(v21, v167, v13);
  v165 = v25;
  v27 = sub_248A122B0();
  v28 = sub_248A12E80();
  v29 = os_log_type_enabled(v27, v28);
  v166 = v12;
  v158 = v14;
  v159 = v13;
  v157 = v18;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v154 = v21;
    v31 = v30;
    v153 = swift_slowAlloc();
    v172[0] = v153;
    *v31 = 136446466;
    sub_2489AC224(&qword_27EEB53D0, MEMORY[0x277CC9260]);
    v152 = v27;
    v32 = sub_248A132F0();
    LODWORD(v151) = v28;
    v34 = v33;
    v35 = v14[1];
    v35(v23, v13);
    v36 = sub_24897BC00(v32, v34, v172);
    v37 = v169;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2082;
    v38 = v154;
    v39 = sub_248A132F0();
    v41 = v40;
    v154 = v35;
    v35(v38, v13);
    v12 = v166;
    v42 = sub_24897BC00(v39, v41, v172);

    *(v31 + 14) = v42;
    v43 = v152;
    _os_log_impl(&dword_248975000, v152, v151, "Decompressing: %{public}s to %{public}s", v31, 0x16u);
    v44 = v153;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v44, -1, -1);
    v45 = v31;
    v46 = v168;
    MEMORY[0x24C1E0A80](v45, -1, -1);
  }

  else
  {

    v47 = v14[1];
    v47(v21, v13);
    v154 = v47;
    v47(v23, v13);
    v46 = v168;
    v37 = v169;
  }

  v48 = sub_248A11AA0();
  MEMORY[0x24C1DF1A0](v48);
  sub_248A11C20();
  v49 = sub_248A11C10();
  if (!v49)
  {
    v91 = sub_248A122B0();
    v92 = sub_248A12E60();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_248975000, v91, v92, "Unable to create read stream", v93, 2u);
      MEMORY[0x24C1E0A80](v93, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v94 = 1;
    swift_willThrow();
    goto LABEL_35;
  }

  v50 = v49;
  if (qword_27EEB5188 != -1)
  {
    swift_once();
  }

  v51 = qword_27EEB5968;
  v172[0] = MEMORY[0x277D84F90];
  v52 = sub_2489AC224(&qword_27EEB5980, MEMORY[0x277D832A8]);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5988, &unk_248A161B8);
  v54 = sub_2489AC1C0();
  v55 = v163;
  v56 = v164;
  sub_248A12FA0();
  v171 = v51;
  v57 = sub_248A11C00();
  v58 = v170 + 1;
  v59 = v170[1];
  v59(v55, v56);
  if (!v57)
  {
    v95 = v50;
    v96 = sub_248A122B0();
    v97 = sub_248A12E60();
    v98 = os_log_type_enabled(v96, v97);
    v99 = v166;
    if (v98)
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_248975000, v96, v97, "Unable to create decompress stream", v100, 2u);
      MEMORY[0x24C1E0A80](v100, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v101 = 1;
    swift_willThrow();
    sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v95, MEMORY[0x277D83238]);

    v46 = v168;
    v37 = v169;
    v12 = v99;
    goto LABEL_35;
  }

  v153 = v50;
  v60 = sub_248A11D20();
  v172[0] = MEMORY[0x277D84F90];
  v149 = v53;
  v148 = v54;
  v170 = v58;
  v150 = v52;
  sub_248A12FA0();
  v152 = v57;
  v147 = v60;
  v61 = sub_248A11CD0();
  v59(v55, v56);
  v151 = v61;
  if (!v61)
  {
    v102 = v153;
    v103 = sub_248A122B0();
    v104 = sub_248A12E60();
    v105 = os_log_type_enabled(v103, v104);
    v46 = v168;
    v37 = v169;
    if (v105)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_248975000, v103, v104, "Unable to create decode stream", v106, 2u);
      MEMORY[0x24C1E0A80](v106, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v107 = 1;
    swift_willThrow();
    v108 = MEMORY[0x277D83238];
    sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v152, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v102, v108);

    goto LABEL_34;
  }

  v146 = v59;
  v62 = sub_248A11AA0();
  v64 = v63;
  v65 = objc_opt_self();
  v66 = [v65 defaultManager];
  v67 = sub_248A12B30();
  v68 = [v66 fileExistsAtPath_];

  if ((v68 & 1) == 0)
  {
    v69 = [v65 defaultManager];
    v70 = sub_248A12B30();
    v172[0] = 0;
    v71 = [v69 createDirectoryAtPath:v70 withIntermediateDirectories:0 attributes:0 error:v172];

    if (!v71)
    {
      v115 = v172[0];

      v116 = sub_248A11A40();

      swift_willThrow();
      v117 = v116;
      v118 = sub_248A122B0();
      v119 = sub_248A12E60();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *v120 = 138412290;
        v122 = v116;
        v123 = _swift_stdlib_bridgeErrorToNSError();
        *(v120 + 4) = v123;
        *v121 = v123;
        _os_log_impl(&dword_248975000, v118, v119, "Unable to create output directory: %@", v120, 0xCu);
        sub_248983734(v121, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v121, -1, -1);
        MEMORY[0x24C1E0A80](v120, -1, -1);
      }

      sub_2489AC16C();
      swift_allocError();
      *v124 = 1;
      swift_willThrow();

      sub_2489ABF64(0x732065646F636564, 0xED00006D61657274, v151, MEMORY[0x277D832B8]);

      v125 = MEMORY[0x277D83238];
      sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v152, MEMORY[0x277D83238]);

      sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v153, v125);

      v46 = v168;
      v37 = v169;
      goto LABEL_34;
    }

    v72 = v172[0];
  }

  MEMORY[0x24C1DF1A0](v62, v64);
  v73 = MEMORY[0x277D84F90];
  v172[0] = MEMORY[0x277D84F90];
  v75 = v163;
  v74 = v164;
  sub_248A12FA0();
  v76 = sub_248A11CF0();
  v146(v75, v74);
  if (!v76)
  {
    v109 = sub_248A122B0();
    v110 = sub_248A12E60();
    v111 = os_log_type_enabled(v109, v110);
    v46 = v168;
    v37 = v169;
    if (v111)
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_248975000, v109, v110, "Unable to create extract stream", v112, 2u);
      MEMORY[0x24C1E0A80](v112, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v113 = 1;
    swift_willThrow();
    (*(v37 + 8))(v162, v46);
    sub_2489ABF64(0x732065646F636564, 0xED00006D61657274, v151, MEMORY[0x277D832B8]);

    v114 = MEMORY[0x277D83238];
    sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v152, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v153, v114);

    goto LABEL_34;
  }

  v172[0] = v73;
  v77 = v160;
  sub_248A12FA0();
  v78 = v151;
  v171 = v76;
  v79 = v161;
  sub_248A11D10();
  v46 = v168;
  v37 = v169;
  if (v79)
  {
    v146(v77, v74);
    v80 = v79;
    v81 = sub_248A122B0();
    v82 = sub_248A12E60();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138543362;
      v85 = v79;
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 4) = v86;
      *v84 = v86;
      _os_log_impl(&dword_248975000, v81, v82, "Unable to process decode stream to extract stream: %{public}@", v83, 0xCu);
      sub_248983734(v84, &qword_27EEB5600, &unk_248A15210);
      v87 = v84;
      v37 = v169;
      MEMORY[0x24C1E0A80](v87, -1, -1);
      MEMORY[0x24C1E0A80](v83, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v88 = 1;
    swift_willThrow();

    v89 = MEMORY[0x277D832B8];
    sub_2489ABF64(0x2074636172747865, 0xEE006D6165727473, v171, MEMORY[0x277D832B8]);

    (*(v37 + 8))(v162, v46);
    sub_2489ABF64(0x732065646F636564, 0xED00006D61657274, v78, v89);

    v90 = MEMORY[0x277D83238];
    sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v152, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v153, v90);

LABEL_34:
    v12 = v166;
LABEL_35:
    result = (*(v37 + 8))(v12, v46);
    goto LABEL_36;
  }

  v146(v77, v74);
  v128 = v157;
  v129 = v159;
  v155(v157, v167, v159);
  v130 = sub_248A122B0();
  v131 = sub_248A12E80();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = v128;
    v133 = swift_slowAlloc();
    v167 = v133;
    v170 = swift_slowAlloc();
    v172[0] = v170;
    *v133 = 136446210;
    sub_2489AC224(&qword_27EEB53D0, MEMORY[0x277CC9260]);
    v134 = v132;
    v135 = sub_248A132F0();
    v137 = v136;
    v154(v134, v129);
    v138 = sub_24897BC00(v135, v137, v172);
    v37 = v169;

    v139 = v167;
    *(v167 + 1) = v138;
    _os_log_impl(&dword_248975000, v130, v131, "Decompressed file written to %{public}s", v139, 0xCu);
    v140 = v170;
    __swift_destroy_boxed_opaque_existential_0(v170);
    MEMORY[0x24C1E0A80](v140, -1, -1);
    MEMORY[0x24C1E0A80](v139, -1, -1);
  }

  else
  {

    v154(v128, v129);
  }

  v141 = v166;
  v142 = MEMORY[0x277D832B8];
  sub_2489ABF64(0x2074636172747865, 0xEE006D6165727473, v171, MEMORY[0x277D832B8]);

  v143 = *(v37 + 8);
  v143(v162, v46);
  sub_2489ABF64(0x732065646F636564, 0xED00006D61657274, v78, v142);

  v144 = MEMORY[0x277D83238];
  sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v152, MEMORY[0x277D83238]);

  sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v153, v144);

  result = (v143)(v141, v46);
LABEL_36:
  v127 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2489ABEF0()
{
  sub_248A120F0();
  v0 = sub_248A120E0();
  v1 = sub_248A120A0();

  qword_27EEB5968 = v1;
}

unint64_t sub_2489AC16C()
{
  result = qword_27EEB5978;
  if (!qword_27EEB5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5978);
  }

  return result;
}

unint64_t sub_2489AC1C0()
{
  result = qword_27EEB5990;
  if (!qword_27EEB5990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5988, &unk_248A161B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5990);
  }

  return result;
}

uint64_t sub_2489AC224(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2489AC2E0()
{
  result = qword_27EEB5998;
  if (!qword_27EEB5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5998);
  }

  return result;
}

uint64_t sub_2489AC334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2489B1DD0(a3, v27 - v11);
  v13 = sub_248A12D40();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2489B1E40(v12);
  }

  else
  {
    sub_248A12D30();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_248A12CD0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_248A12B90() + 32;
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

      sub_2489B1E40(a3);

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

  sub_2489B1E40(a3);
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

void sub_2489AC5F4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2489AC654()
{
  v1 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2489AC6A0(uint64_t a1)
{
  v3 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2489AC758()
{
  v1 = v0 + OBJC_IVAR___DSNotificationController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2489AC7A8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___DSNotificationController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2489AC814(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___DSNotificationController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2489AC8B4;
}

void sub_2489AC8B4(uint64_t a1, char a2)
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

uint64_t sub_2489AC93C(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 40) = a3;
  *(v4 + 72) = swift_getObjectType();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2489ACA18, 0, 0);
}

uint64_t sub_2489ACA18()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_27EEB5190 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9D98);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40[0] = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, v40);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD00000000000002FLL, 0x8000000248A19A00, v40);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 48);
  v12 = *(v0 + 40);
  [*(v0 + 64) cancelNotificationIfNecessary];
  *(v0 + 112) = 0;
  v13 = *MEMORY[0x277CBECE8];
  v14 = sub_248A12A80();
  v15 = CFUserNotificationCreate(v13, v12, v10, (v0 + 112), v14);
  *(v0 + 88) = v15;

  if (v15)
  {
    v16 = *(v0 + 112) == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v29 = *(v0 + 80);
    v30 = *(v0 + 64);
    v31 = sub_248A12D40();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    sub_248A12D20();
    v32 = v15;
    v33 = v30;
    v34 = sub_248A12D10();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v33;
    v35[5] = v32;
    sub_2489AC334(0, 0, v29, &unk_248A16438, v35);

    v37 = *(MEMORY[0x277D050D8] + 4);
    v38 = swift_task_alloc();
    *(v0 + 96) = v38;
    *v38 = v0;
    v38[1] = sub_2489ACEE8;
    v39 = *MEMORY[0x277D85DE8];

    return MEMORY[0x28215AA68]();
  }

  else
  {
    v17 = sub_248A122B0();
    v18 = sub_248A12E60();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 72);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      *v20 = 136446466;
      v22 = sub_248A13570();
      v24 = sub_24897BC00(v22, v23, v40);

      *(v20 + 4) = v24;
      *(v20 + 12) = 1026;
      swift_beginAccess();
      *(v20 + 14) = *(v0 + 112);
      _os_log_impl(&dword_248975000, v17, v18, "%{public}s error creating CFUserNotification: %{public}d", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1E0A80](v21, -1, -1);
      MEMORY[0x24C1E0A80](v20, -1, -1);
    }

    v25 = *(v0 + 80);

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x277D85DE8];

    return v26(0);
  }
}