unint64_t sub_243D3C2B0()
{
  result = qword_27EDAF5E8;
  if (!qword_27EDAF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5E8);
  }

  return result;
}

unint64_t sub_243D3C308()
{
  result = qword_27EDAF5F0;
  if (!qword_27EDAF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5F0);
  }

  return result;
}

unint64_t sub_243D3C360()
{
  result = qword_27EDAF5F8;
  if (!qword_27EDAF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5F8);
  }

  return result;
}

unint64_t sub_243D3C3B8()
{
  result = qword_27EDAF600;
  if (!qword_27EDAF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF600);
  }

  return result;
}

uint64_t sub_243D3C40C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F6373736170 && a2 == 0xE800000000000000;
  if (v4 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x525565646F437271 && a2 == 0xE90000000000004CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_243D552A8();

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

uint64_t sub_243D3C52C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEC00000065646F43 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_243D552A8();

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

uint64_t sub_243D3C690(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000243D5EA70 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000243D5EA90 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000243D5EAB0 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000243D5EAD0 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000243D5EAF0 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000243D5EB10 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000243D5EB30 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000243D5EB50 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_243D552A8();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_243D3C970()
{
  result = qword_27EDAF608;
  if (!qword_27EDAF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF608);
  }

  return result;
}

unint64_t sub_243D3C9C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF9B0, &qword_243D5BB90);
  v3 = sub_243D55168();

  v4 = *(a1 + 176);
  *&v33[128] = *(a1 + 160);
  *&v33[144] = v4;
  *&v33[153] = *(a1 + 185);
  v5 = *(a1 + 112);
  *&v33[64] = *(a1 + 96);
  *&v33[80] = v5;
  v6 = *(a1 + 144);
  *&v33[96] = *(a1 + 128);
  *&v33[112] = v6;
  v7 = *(a1 + 48);
  *v33 = *(a1 + 32);
  *&v33[16] = v7;
  v8 = *(a1 + 80);
  *&v33[32] = *(a1 + 64);
  *&v33[48] = v8;
  v9 = v33[0];
  sub_243D3CC40(v33, v32, &qword_27EDAF618, &qword_243D5AFB0);
  result = sub_243D4AA18(v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 208);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v9;
    v13 = v3[7] + 168 * result;
    v14 = *&v33[8];
    v15 = *&v33[40];
    *(v13 + 16) = *&v33[24];
    *(v13 + 32) = v15;
    *v13 = v14;
    v16 = *&v33[56];
    v17 = *&v33[72];
    v18 = *&v33[104];
    *(v13 + 80) = *&v33[88];
    *(v13 + 96) = v18;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    v19 = *&v33[120];
    v20 = *&v33[136];
    v21 = *&v33[152];
    *(v13 + 160) = v33[168];
    *(v13 + 128) = v20;
    *(v13 + 144) = v21;
    *(v13 + 112) = v19;
    v22 = v3[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      break;
    }

    v3[2] = v24;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v25 = v12 + 11;
    v26 = v12[9];
    *&v33[128] = v12[8];
    *&v33[144] = v26;
    *&v33[153] = *(v12 + 153);
    v27 = v12[5];
    *&v33[64] = v12[4];
    *&v33[80] = v27;
    v28 = v12[7];
    *&v33[96] = v12[6];
    *&v33[112] = v28;
    v29 = v12[1];
    *v33 = *v12;
    *&v33[16] = v29;
    v30 = v12[3];
    *&v33[32] = v12[2];
    *&v33[48] = v30;
    v9 = v33[0];
    sub_243D3CC40(v33, v32, &qword_27EDAF618, &qword_243D5AFB0);
    result = sub_243D4AA18(v9);
    v12 = v25;
    if (v31)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_243D3CBBC()
{
  result = qword_27EDAF610;
  if (!qword_27EDAF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF610);
  }

  return result;
}

uint64_t sub_243D3CC40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243D3CCFC()
{
  v0 = sub_243D54D88();
  __swift_allocate_value_buffer(v0, qword_27EDAF620);
  __swift_project_value_buffer(v0, qword_27EDAF620);
  return sub_243D54D78();
}

uint64_t CPSRequesterSession.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession_environment;
  v4 = sub_243D54CA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CPSRequesterSession.__allocating_init(configuration:environment:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  CPSRequesterSession.init(configuration:environment:)(a1, a2);
  return v7;
}

uint64_t CPSRequesterSession.init(configuration:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_243D54CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF638, &qword_243D5AFD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  *(v2 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__invalidateCalled) = 0;
  v15 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__sessionID;
  v16 = CUNextIDDecimal64();
  *(v3 + v15) = v16;
  *(v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask) = 0;
  *(v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__eventContinuations) = MEMORY[0x277D84F98];
  sub_243D44E54(a1, v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__configuration, type metadata accessor for CPSRequesterUseCaseConfiguration);
  v17 = *(v7 + 16);
  v17(v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession_environment, a2, v6);
  v29 = v16;
  v18 = sub_243D55288();
  v19 = (v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label);
  *v19 = v18;
  v19[1] = v20;
  sub_243D3D1D8();
  sub_243D54CB8();
  v21 = v29;
  if (!v29)
  {
    sub_243D54C68();
    v22 = sub_243D54C28();
    v23 = (*(*(v22 - 8) + 48))(v14, 1, v22);
    sub_243D455D0(v14, &qword_27EDAF638, &qword_243D5AFD0);
    if (v23 != 1)
    {
      v17(v10, a2, v6);
      v25 = type metadata accessor for CPSXPCClient();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v21 = swift_allocObject();
      *(v21 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 0;
      sub_243D54BF8();
      (*(v7 + 8))(a2, v6);
      sub_243D43DB0(a1, type metadata accessor for CPSRequesterUseCaseConfiguration);
      *(v21 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
      *(v21 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations) = MEMORY[0x277D84F98];
      (*(v7 + 32))(v21 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment, v10, v6);
      goto LABEL_5;
    }

    v21 = _s17CompanionServices12CPSXPCClientC6shared11environmentAC14CoreUtilsSwift19CUEnvironmentValuesV_tFZ_0(a2);
  }

  (*(v7 + 8))(a2, v6);
  sub_243D43DB0(a1, type metadata accessor for CPSRequesterUseCaseConfiguration);
LABEL_5:
  *(v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcClient) = v21;
  return v3;
}

unint64_t sub_243D3D1D8()
{
  result = qword_27EDAF668;
  if (!qword_27EDAF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF668);
  }

  return result;
}

uint64_t CPSRequesterSession.deinit()
{
  v1 = v0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
  v2 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v4 = &v34 - v3;
  v6 = *(v0 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label);
  v5 = *(v0 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label + 8);
  v36 = v0 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label;
  v7 = qword_27EDAEC78;

  if (v7 != -1)
  {
LABEL_19:
    swift_once();
  }

  v8 = sub_243D54D88();
  __swift_project_value_buffer(v8, qword_27EDAF620);

  v9 = sub_243D54D68();
  v10 = sub_243D55028();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v12;
    *v11 = 136315138;
    v13 = sub_243D43538(v6, v5, &v39);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_243D1C000, v9, v10, "[%s] deinit", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245D50A20](v12, -1, -1);
    MEMORY[0x245D50A20](v11, -1, -1);
  }

  else
  {
  }

  v14 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask);
  v35 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask;
  *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask) = 0;
  if (v14)
  {
    sub_243D54FE8();
  }

  v15 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__eventContinuations;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF680, &unk_243D5AFE0);
  v37 = v1;
  v34 = v15;
  v16 = sub_243D54E88();
  swift_endAccess();
  v5 = v16 + 64;
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  v6 = (v17 + 63) >> 6;

  v20 = 0;
  if (v19)
  {
    while (1)
    {
      v21 = v20;
LABEL_15:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v23 = v22 | (v21 << 6);
      v24 = *(v16 + 56);
      v1 = *(*(v16 + 48) + 8 * v23);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
      (*(*(v25 - 8) + 16))(&v4[*(v38 + 48)], v24 + *(*(v25 - 8) + 72) * v23, v25);
      *v4 = v1;
      sub_243D54FD8();
      sub_243D455D0(v4, &qword_27EDAF678, &qword_243D5AFD8);
      if (!v19)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v21 >= v6)
    {
      break;
    }

    v19 = *(v5 + 8 * v21);
    ++v20;
    if (v19)
    {
      v20 = v21;
      goto LABEL_15;
    }
  }

  v26 = v37;
  sub_243D43DB0(v37 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__configuration, type metadata accessor for CPSRequesterUseCaseConfiguration);
  v27 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession_environment;
  v28 = sub_243D54CA8();
  (*(*(v28 - 8) + 8))(v26 + v27, v28);
  v29 = *(v36 + 8);

  v30 = *(v26 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcClient);

  v31 = *(v26 + v35);

  v32 = *(v26 + v34);

  return v26;
}

uint64_t CPSRequesterSession.__deallocating_deinit()
{
  CPSRequesterSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CPSRequesterSession.activate()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243D33B7C;

  return sub_243D3D748(0);
}

uint64_t sub_243D3D748(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 224) = a1;
  v3 = *v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF830, &qword_243D5B8B8) - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  v5 = type metadata accessor for CPSXPCClientRequest(0);
  *(v2 + 72) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF838, &qword_243D5B8C0);
  *(v2 + 88) = v7;
  v8 = *(v7 - 8);
  *(v2 + 96) = v8;
  *(v2 + 104) = *(v8 + 64);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession);
  v10 = sub_243D54F38();
  *(v2 + 128) = v10;
  *(v2 + 136) = v9;

  return MEMORY[0x2822009F8](sub_243D3D918, v10, v9);
}

uint64_t sub_243D3D918()
{
  v33 = v0;
  v1 = *(v0 + 48);
  v2 = v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label;
  v3 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label);
  *(v0 + 144) = v3;
  v4 = *(v2 + 8);
  *(v0 + 152) = v4;
  if (*(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__invalidateCalled))
  {
    if (qword_27EDAEC78 != -1)
    {
      swift_once();
    }

    v5 = sub_243D54D88();
    __swift_project_value_buffer(v5, qword_27EDAF620);

    v6 = sub_243D54D68();
    v7 = sub_243D55048();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32 = v9;
      *v8 = 136315138;
      v10 = sub_243D43538(v3, v4, &v32);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_243D1C000, v6, v7, "[%s] activate: ignore after invalidate", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x245D50A20](v9, -1, -1);
      MEMORY[0x245D50A20](v8, -1, -1);
    }

    else
    {
    }

LABEL_16:
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);
    v26 = *(v0 + 80);
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);

    v29 = *(v0 + 8);

    return v29();
  }

  if (qword_27EDAEC78 != -1)
  {
    swift_once();
    v30 = *(v0 + 48);
  }

  v11 = sub_243D54D88();
  *(v0 + 160) = __swift_project_value_buffer(v11, qword_27EDAF620);

  v12 = sub_243D54D68();
  v13 = sub_243D55048();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 48);
    v15 = *(v0 + 224);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_243D43538(v3, v4, &v32);
    *(v16 + 12) = 2080;
    v18 = CPSRequesterUseCaseConfiguration.description.getter();
    v20 = sub_243D43538(v18, v19, &v32);

    *(v16 + 14) = v20;
    *(v16 + 22) = 1024;
    *(v16 + 24) = v15;
    _os_log_impl(&dword_243D1C000, v12, v13, "[%s] activate: configuration={%s} restart=%{BOOL}d", v16, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x245D50A20](v17, -1, -1);
    MEMORY[0x245D50A20](v16, -1, -1);
  }

  v21 = *(v0 + 48);
  if ((*(v0 + 224) & 1) == 0 && *(v21 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask))
  {
    goto LABEL_16;
  }

  *(v0 + 168) = *(v21 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcClient);
  type metadata accessor for CPSXPCClient();
  *(v0 + 176) = sub_243D43D60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient);
  v23 = sub_243D54F38();
  *(v0 + 184) = v23;
  *(v0 + 192) = v22;

  return MEMORY[0x2822009F8](sub_243D3DD4C, v23, v22);
}

uint64_t sub_243D3DD4C()
{
  v1 = v0[21];
  v2 = v0[15];
  CPSXPCClient.events.getter();
  v3 = v0[16];
  v4 = v0[17];

  return MEMORY[0x2822009F8](sub_243D3DDB4, v3, v4);
}

uint64_t sub_243D3DDB4()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = *(v2 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__sessionID);
  sub_243D44E54(v2 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__configuration, v1, type metadata accessor for CPSRequesterUseCaseConfiguration);
  *(v1 + *(type metadata accessor for CPSXPCRequesterStartInfo(0) + 20)) = v3;
  type metadata accessor for CPSXPCClientRequesterRequest(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v4 = v0[23];
  v5 = v0[24];

  return MEMORY[0x2822009F8](sub_243D3DE8C, v4, v5);
}

uint64_t sub_243D3DE8C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_243D3DF88;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_243D3DF88()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v10 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[23];
    v5 = v2[24];
    v6 = sub_243D3E444;
  }

  else
  {
    v7 = v2[25];
    v8 = v2[10];

    sub_243D43DB0(v8, type metadata accessor for CPSXPCClientRequest);
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_243D3E0C4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_243D3E0C4()
{
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask);
  v35 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask;
  v36 = v1;
  *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask) = 0;
  if (v2)
  {
    sub_243D54FE8();
  }

  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[11];
  v7 = v0[8];
  v31 = v0[13];
  v8 = v0[6];
  v32 = v0[7];
  v34 = sub_243D54C78();
  v9 = sub_243D54F98();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v7, 1, 1, v9);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v4, v3, v6);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v4, v6);
  *(v13 + ((v31 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  sub_243D45560(v7, v32);
  v14 = (*(v10 + 48))(v32, 1, v9);
  v15 = v0[7];
  if (v14 == 1)
  {
    sub_243D455D0(v0[7], &qword_27EDAF830, &qword_243D5B8B8);
  }

  else
  {
    sub_243D54F88();
    (*(v10 + 8))(v15, v9);
  }

  v33 = v0[15];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[8];
  v19 = sub_243D45630();
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_243D5B8D0;
  *(v20 + 24) = v13;
  v0[2] = 6;
  v0[3] = 0;
  v0[4] = v34;
  v0[5] = v19;

  v21 = v34;
  v22 = swift_task_create();
  sub_243D455D0(v18, &qword_27EDAF830, &qword_243D5B8B8);

  (*(v16 + 8))(v33, v17);
  v23 = *(v36 + v35);
  *(v36 + v35) = v22;

  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[10];
  v28 = v0[7];
  v27 = v0[8];

  v29 = v0[1];

  return v29();
}

uint64_t sub_243D3E444()
{
  v1 = v0[25];
  v2 = v0[10];

  sub_243D43DB0(v2, type metadata accessor for CPSXPCClientRequest);
  v3 = v0[16];
  v4 = v0[17];

  return MEMORY[0x2822009F8](sub_243D3E4C8, v3, v4);
}

uint64_t sub_243D3E4C8()
{
  v30 = v0;
  v1 = v0[27];
  v3 = v0[19];
  v2 = v0[20];
  (*(v0[12] + 8))(v0[15], v0[11]);

  v4 = v1;
  v5 = sub_243D54D68();
  v6 = sub_243D55038();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[27];
    v9 = v0[18];
    v8 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v10 = 136315394;
    v13 = sub_243D43538(v9, v8, &v29);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_243D1C000, v5, v6, "[%s] ### start failed: error=%@", v10, 0x16u);
    sub_243D455D0(v11, &unk_27EDAF940, &qword_243D5B8B0);
    MEMORY[0x245D50A20](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245D50A20](v12, -1, -1);
    MEMORY[0x245D50A20](v10, -1, -1);
  }

  else
  {
    v16 = v0[19];
  }

  v17 = v0[27];
  v18 = v0[6];
  v19 = objc_allocWithZone(sub_243D54D28());
  v20 = v17;
  v21 = sub_243D54D48();
  v29 = v21;
  CPSRequesterSession._report(event:)(&v29);

  sub_243D43D04(v21);
  v23 = v0[14];
  v22 = v0[15];
  v24 = v0[10];
  v26 = v0[7];
  v25 = v0[8];

  v27 = v0[1];

  return v27();
}

uint64_t sub_243D3E728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF838, &qword_243D5B8C0);
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF848, &qword_243D5B8E8);
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243D3E85C, 0, 0);
}

uint64_t sub_243D3E85C()
{
  v1 = v0[14];
  v2 = v0[8];
  (*(v0[10] + 16))(v0[11], v0[7], v0[9]);
  sub_243D45798(&unk_27EDAF920, &qword_27EDAF838, &qword_243D5B8C0);
  sub_243D54FF8();
  swift_beginAccess();
  sub_243D45798(&qword_27EDAF850, &qword_27EDAF848, &qword_243D5B8E8);
  v3 = *(MEMORY[0x277D856D8] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_243D3E9C4;
  v5 = v0[14];
  v6 = v0[12];

  return MEMORY[0x282200310](v0 + 5, 0, 0);
}

uint64_t sub_243D3E9C4()
{
  v2 = *(*v1 + 120);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_243D3EAD4, 0, 0);
  }

  return result;
}

uint64_t sub_243D3EAD4()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[16] = v2;
  v0[17] = v1;
  if (v1 == 6)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
LABEL_8:
    v7 = v0[14];
    v8 = v0[11];

    v9 = v0[1];

    return v9();
  }

  v3 = v0[8];
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (!Strong)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    sub_243D457E0(v2, v1);
    goto LABEL_8;
  }

  type metadata accessor for CPSRequesterSession();
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession);
  v6 = sub_243D54F38();

  return MEMORY[0x2822009F8](sub_243D3EC44, v6, v5);
}

uint64_t sub_243D3EC44()
{
  v14 = v0;
  v1 = v0[18];
  if (v0[17] == 5)
  {
    if (*(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask))
    {
      if (qword_27EDAEC78 != -1)
      {
        swift_once();
        v12 = v0[18];
      }

      v2 = sub_243D54D88();
      __swift_project_value_buffer(v2, qword_27EDAF620);

      v3 = sub_243D54D68();
      v4 = sub_243D55038();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = v0[18];
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v13 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_243D43538(*(v5 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label), *(v5 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label + 8), &v13);
        _os_log_impl(&dword_243D1C000, v3, v4, "[%s] ### interrupted", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        MEMORY[0x245D50A20](v7, -1, -1);
        MEMORY[0x245D50A20](v6, -1, -1);
      }

      v8 = v0[18];
      v13 = 1;
      CPSRequesterSession._report(event:)(&v13);
      v9 = swift_task_alloc();
      v0[19] = v9;
      *v9 = v0;
      v9[1] = sub_243D3EE9C;
      v10 = v0[18];

      return sub_243D3D748(1);
    }
  }

  else if (v0[16] == *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__sessionID))
  {
    v13 = v0[17];
    CPSRequesterSession._report(event:)(&v13);
  }

  return MEMORY[0x2822009F8](sub_243D3EF98, 0, 0);
}

uint64_t sub_243D3EE9C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_243D3EF98, 0, 0);
}

uint64_t sub_243D3EF98()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  sub_243D457E0(v3, v2);
  sub_243D45798(&qword_27EDAF850, &qword_27EDAF848, &qword_243D5B8E8);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_243D3E9C4;
  v6 = v0[14];
  v7 = v0[12];

  return MEMORY[0x282200310](v0 + 5, 0, 0);
}

uint64_t CPSRequesterSession._report(event:)(id *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF688, &qword_243D5B000);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v82 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF690, &qword_243D5B008);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v78 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v76 = &v63 - v18;
  v80 = *a1;
  v19 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__eventContinuations;
  swift_beginAccess();
  v20 = *(v2 + v19);
  v21 = *(v20 + 64);
  v77 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v66 = v2 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label;
  v64 = (v22 + 63) >> 6;
  v68 = v9 + 16;
  v81 = (v9 + 32);
  v63 = 0x8000000243D5EBB0;
  v70 = v9;
  v71 = v20;
  v72 = (v9 + 8);
  v73 = (v5 + 8);

  v26 = 0;
  *&v27 = 136315650;
  v65 = v27;
  v67 = v2;
  v79 = v4;
  v74 = v8;
  while (v24)
  {
    v30 = v2;
    v31 = v26;
LABEL_16:
    v35 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v36 = v35 | (v31 << 6);
    v37 = v70;
    v38 = *(*(v71 + 48) + 8 * v36);
    v39 = v69;
    (*(v70 + 16))(v69, *(v71 + 56) + *(v70 + 72) * v36, v8);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
    v41 = *(v40 + 48);
    v42 = v78;
    *v78 = v38;
    v34 = v42;
    (*(v37 + 32))(v42 + v41, v39, v8);
    (*(*(v40 - 8) + 56))(v34, 0, 1, v40);
    v2 = v30;
    v4 = v79;
LABEL_17:
    v43 = v34;
    v44 = v76;
    sub_243D43C84(v43, v76);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
    }

    v46 = *v44;
    (*v81)(v82, &v44[*(v45 + 48)], v8);
    if (qword_27EDAEC78 != -1)
    {
      swift_once();
    }

    v47 = sub_243D54D88();
    __swift_project_value_buffer(v47, qword_27EDAF620);

    v48 = v80;
    sub_243D43CF4(v80);
    v49 = v48;
    v50 = sub_243D54D68();
    v51 = sub_243D55048();

    sub_243D43D04(v49);
    if (!os_log_type_enabled(v50, v51))
    {

      goto LABEL_5;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v85 = v53;
    *v52 = v65;
    *(v52 + 4) = sub_243D43538(*v66, *(v66 + 8), &v85);
    *(v52 + 12) = 2048;
    *(v52 + 14) = v46;
    *(v52 + 22) = 2080;
    if (v49 <= 1)
    {
      if (v49)
      {
        if (v49 != 1)
        {
LABEL_33:
          v83 = 0x203A726F727265;
          v84 = 0xE700000000000000;
          sub_243D43CF4(v49);
          v57 = v49;
          v58 = [v49 description];
          v59 = sub_243D54EA8();
          v61 = v60;

          MEMORY[0x245D4FE20](v59, v61);

          sub_243D43D04(v57);
          v55 = v83;
          v54 = v84;
          goto LABEL_34;
        }

        v55 = 0x7075727265746E69;
        v54 = 0xEB00000000646574;
      }

      else
      {
        v55 = 0xD00000000000001ALL;
        v54 = v63;
      }
    }

    else
    {
      switch(v49)
      {
        case 2:
          v54 = 0xEC00000064657470;
          v55 = 0x6563634172657375;
          break;
        case 3:
          v55 = 0x636E614372657375;
          v54 = 0xEC00000064656C65;
          break;
        case 4:
          v54 = 0xEA00000000006465;
          v55 = 0x696E654472657375;
          break;
        default:
          goto LABEL_33;
      }
    }

LABEL_34:
    v62 = sub_243D43538(v55, v54, &v85);

    *(v52 + 24) = v62;
    _os_log_impl(&dword_243D1C000, v50, v51, "[%s] event report: id=%llu, event={%s}", v52, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D50A20](v53, -1, -1);
    MEMORY[0x245D50A20](v52, -1, -1);

    v2 = v67;
    v4 = v79;
    v49 = v80;
LABEL_5:
    v83 = v49;
    sub_243D43CF4(v49);
    v8 = v74;
    v28 = v75;
    v29 = v82;
    sub_243D54FC8();
    (*v73)(v28, v4);
    result = (*v72)(v29, v8);
  }

  if (v64 <= v26 + 1)
  {
    v32 = v26 + 1;
  }

  else
  {
    v32 = v64;
  }

  v33 = v32 - 1;
  v34 = v78;
  while (1)
  {
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v31 >= v64)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
      (*(*(v56 - 8) + 56))(v34, 1, 1, v56);
      v24 = 0;
      v26 = v33;
      goto LABEL_17;
    }

    v24 = *(v77 + 8 * v31);
    ++v26;
    if (v24)
    {
      v30 = v2;
      v26 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t CPSRequesterSession.invalidate()()
{
  v1[5] = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
  v1[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for CPSXPCClientRequest(0);
  v1[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession);
  v8 = sub_243D54F38();
  v1[10] = v8;
  v1[11] = v7;

  return MEMORY[0x2822009F8](sub_243D3F9D4, v8, v7);
}

uint64_t sub_243D3F9D4()
{
  v39 = v0;
  if (qword_27EDAEC78 != -1)
  {
LABEL_22:
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_243D54D88();
  __swift_project_value_buffer(v2, qword_27EDAF620);

  v3 = sub_243D54D68();
  v4 = sub_243D55048();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_243D43538(*(v5 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label), *(v5 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label + 8), &v38);
    _os_log_impl(&dword_243D1C000, v3, v4, "[%s] invalidate", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D50A20](v7, -1, -1);
    MEMORY[0x245D50A20](v6, -1, -1);
  }

  v8 = v0[5];
  *(v8 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__invalidateCalled) = 1;
  v9 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask;
  v10 = *(v8 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask);
  v0[12] = v10;
  *(v8 + v9) = 0;
  if (v10)
  {
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[5];
    sub_243D54FE8();
    v0[13] = *(v13 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcClient);
    *v12 = *(v13 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__sessionID);
    type metadata accessor for CPSXPCClientRequesterRequest(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CPSXPCClient();
    v0[14] = sub_243D43D60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient);
    v15 = sub_243D54F38();
    v0[15] = v15;
    v0[16] = v14;

    return MEMORY[0x2822009F8](sub_243D3FE48, v15, v14);
  }

  else
  {
    v16 = v0[5];
    v17 = v0[6];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF680, &unk_243D5AFE0);
    v18 = sub_243D54E88();
    v37 = v0;
    v0 = v17;
    swift_endAccess();
    v19 = v18 + 64;
    v20 = -1;
    v21 = -1 << *(v18 + 32);
    if (-v21 < 64)
    {
      v20 = ~(-1 << -v21);
    }

    v22 = v20 & *(v18 + 64);
    v23 = (63 - v21) >> 6;
    v36 = v18;

    v24 = 0;
    if (v22)
    {
      while (1)
      {
        v25 = v24;
LABEL_16:
        v26 = v37[7];
        v27 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v28 = v27 | (v25 << 6);
        v29 = *(v36 + 56);
        v30 = *(*(v36 + 48) + 8 * v28);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
        (*(*(v31 - 8) + 16))(&v26[*(v0 + 12)], v29 + *(*(v31 - 8) + 72) * v28, v31);
        *v26 = v30;
        sub_243D54FD8();
        sub_243D455D0(v26, &qword_27EDAF678, &qword_243D5AFD8);
        if (!v22)
        {
          goto LABEL_12;
        }
      }
    }

    while (1)
    {
LABEL_12:
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v25 >= v23)
      {
        break;
      }

      v22 = *(v19 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    v32 = v37[9];
    v33 = v37[7];

    v34 = v37[1];

    return v34();
  }
}

uint64_t sub_243D3FE48()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v0[17] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_243D3FF44;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_243D3FF44()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 144);
  v5 = *v1;

  v6 = v2[17];
  if (v0)
  {

    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_243D402CC;
  }

  else
  {
    v10 = v3[9];

    sub_243D43DB0(v10, type metadata accessor for CPSXPCClientRequest);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_243D400A8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_243D400A8()
{
  v1 = v0[12];

  v2 = v0[5];
  v3 = v0[6];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF680, &unk_243D5AFE0);
  v4 = sub_243D54E88();
  v24 = v0;
  v5 = v3;
  swift_endAccess();
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  v23 = v4;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = v24[7];
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v13 << 6);
      v17 = *(v23 + 56);
      v18 = *(*(v23 + 48) + 8 * v16);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
      (*(*(v19 - 8) + 16))(&v14[*(v5 + 48)], v17 + *(*(v19 - 8) + 72) * v16, v19);
      *v14 = v18;
      sub_243D54FD8();
      result = sub_243D455D0(v14, &qword_27EDAF678, &qword_243D5AFD8);
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v20 = v24[9];
  v21 = v24[7];

  v22 = v24[1];

  return v22();
}

uint64_t sub_243D402CC()
{
  sub_243D43DB0(v0[9], type metadata accessor for CPSXPCClientRequest);
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x2822009F8](sub_243D4586C, v1, v2);
}

uint64_t CPSRequesterSession.events.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6A8, &qword_243D5B018);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6B0, &qword_243D5B020);
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = &v32 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
  v34 = *(v37 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v13 = &v32 - v12;
  v14 = CUNextIDDecimal64();
  v15 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label + 8);
  v36 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label);
  v16 = qword_27EDAEC78;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_243D54D88();
  __swift_project_value_buffer(v17, qword_27EDAF620);

  v18 = sub_243D54D68();
  v19 = sub_243D55018();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = v2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32 = v6;
    v23 = v22;
    v39[0] = v22;
    *v21 = 136315394;
    v24 = v36;
    *(v21 + 4) = sub_243D43538(v36, v15, v39);
    *(v21 + 12) = 2048;
    *(v21 + 14) = v14;
    _os_log_impl(&dword_243D1C000, v18, v19, "[%s] event monitor start: id=%llu", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v25 = v23;
    v6 = v32;
    MEMORY[0x245D50A20](v25, -1, -1);
    v26 = v21;
    v2 = v33;
    MEMORY[0x245D50A20](v26, -1, -1);
  }

  else
  {

    v24 = v36;
  }

  v27 = v35;
  (*(v7 + 104))(v10, *MEMORY[0x277D85778], v35);
  sub_243D54FA8();
  (*(v7 + 8))(v10, v27);
  v28 = v34;
  v29 = v37;
  (*(v34 + 16))(v6, v13, v37);
  (*(v28 + 56))(v6, 0, 1, v29);
  swift_beginAccess();
  sub_243D45B24(v6, v14);
  swift_endAccess();
  v30 = swift_allocObject();
  v30[2] = v2;
  v30[3] = v24;
  v30[4] = v15;
  v30[5] = v14;

  sub_243D54FB8();
  return (*(v28 + 8))(v13, v29);
}

uint64_t sub_243D4077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_243D54E58();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_243D54E78();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_243D54C78();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  aBlock[4] = sub_243D44C70;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243D40F5C;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  sub_243D54E68();
  v24 = MEMORY[0x277D84F90];
  sub_243D43D60(&unk_27EDAF990, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF810, &qword_243D5BB80);
  sub_243D45798(&qword_27EDAF9A0, &qword_27EDAF810, &qword_243D5BB80);
  sub_243D550B8();
  MEMORY[0x245D4FFA0](0, v16, v12, v19);
  _Block_release(v19);

  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);
}

uint64_t sub_243D40A78(uint64_t isEscapingClosureAtFileLocation, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  type metadata accessor for CPSRequesterSession();
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession);
  sub_243D54F38();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_243D44C94;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_243D44CC4;
    *(v6 + 24) = v5;

    v13[0] = isEscapingClosureAtFileLocation;
    sub_243D44D18(v13);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_243D550E8();
  MEMORY[0x245D4FE20](0xD00000000000003FLL, 0x8000000243D5ECB0);
  v12 = isEscapingClosureAtFileLocation;
  sub_243D55128();
  MEMORY[0x245D4FE20](46, 0xE100000000000000);
  result = sub_243D55138();
  __break(1u);
  return result;
}

uint64_t sub_243D40C98(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6A8, &qword_243D5B018);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21[-1] - v9;
  type metadata accessor for CPSRequesterSession();
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EDAEC78 != -1)
  {
    swift_once();
  }

  v11 = sub_243D54D88();
  __swift_project_value_buffer(v11, qword_27EDAF620);

  v12 = sub_243D54D68();
  v13 = sub_243D55018();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = a2;
    v17 = v15;
    v21[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_243D43538(v16, a3, v21);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    _os_log_impl(&dword_243D1C000, v12, v13, "[%s] event monitor ended: id=%llu", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x245D50A20](v17, -1, -1);
    MEMORY[0x245D50A20](v14, -1, -1);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  swift_beginAccess();
  sub_243D45B24(v10, a4);
  return swift_endAccess();
}

uint64_t sub_243D40F5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t CPSRequesterSession.Event.description.getter()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0xD00000000000001ALL;
    }

    if (v1 == 1)
    {
      return 0x7075727265746E69;
    }
  }

  else
  {
    if (v1 == 2)
    {
      return 0x6563634172657375;
    }

    if (v1 == 3)
    {
      return 0x636E614372657375;
    }

    if (v1 == 4)
    {
      return 0x696E654472657375;
    }
  }

  v3 = [v1 description];
  v4 = sub_243D54EA8();
  v6 = v5;

  MEMORY[0x245D4FE20](v4, v6);

  return v7;
}

unint64_t sub_243D410F8()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x6563634172657375;
  v4 = 0x636E614372657375;
  if (v1 != 4)
  {
    v4 = 0x696E654472657375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x7075727265746E69;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
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

uint64_t sub_243D411D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243D44A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243D41208(uint64_t a1)
{
  v2 = sub_243D43E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D41244(uint64_t a1)
{
  v2 = sub_243D43E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D41280(uint64_t a1)
{
  v2 = sub_243D44018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D412BC(uint64_t a1)
{
  v2 = sub_243D44018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D412F8(uint64_t a1)
{
  v2 = sub_243D43FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D41334(uint64_t a1)
{
  v2 = sub_243D43FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D41370(uint64_t a1)
{
  v2 = sub_243D43F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D413AC(uint64_t a1)
{
  v2 = sub_243D43F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D413E8(uint64_t a1)
{
  v2 = sub_243D43F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D41424(uint64_t a1)
{
  v2 = sub_243D43F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D41460(uint64_t a1)
{
  v2 = sub_243D43EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4149C(uint64_t a1)
{
  v2 = sub_243D43EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D414D8(uint64_t a1)
{
  v2 = sub_243D43E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D41514(uint64_t a1)
{
  v2 = sub_243D43E74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRequesterSession.Event.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6B8, &qword_243D5B028);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6C0, &qword_243D5B030);
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v41 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6C8, &qword_243D5B038);
  v44 = *(v46 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v42 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6D0, &qword_243D5B040);
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6D8, &qword_243D5B048);
  v43 = *(v45 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v41 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6E0, &qword_243D5B050);
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6E8, &qword_243D5B058);
  v56 = *(v21 - 8);
  v57 = v21;
  v22 = *(v56 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v41 - v23;
  v25 = *v1;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D43E20();
  sub_243D55338();
  if (v25 <= 1)
  {
    v32 = v53;
    v31 = v54;
    v33 = v14;
    v34 = v55;
    if (!v25)
    {
      v59 = 0;
      sub_243D44018();
      v37 = v57;
      sub_243D55218();
      (*(v32 + 8))(v20, v17);
      return (*(v56 + 8))(v24, v37);
    }

    if (v25 != 1)
    {
      goto LABEL_15;
    }

    v61 = 2;
    sub_243D43F70();
    v28 = v57;
    sub_243D55218();
    (*(v31 + 8))(v33, v34);
  }

  else
  {
    if (v25 != 2)
    {
      if (v25 == 3)
      {
        v63 = 4;
        sub_243D43EC8();
        v27 = v47;
        v28 = v57;
        sub_243D55218();
        v30 = v48;
        v29 = v49;
        goto LABEL_11;
      }

      if (v25 == 4)
      {
        v64 = 5;
        sub_243D43E74();
        v27 = v50;
        v28 = v57;
        sub_243D55218();
        v30 = v51;
        v29 = v52;
LABEL_11:
        (*(v30 + 8))(v27, v29);
        return (*(v56 + 8))(v24, v28);
      }

LABEL_15:
      v60 = 1;
      sub_243D43FC4();
      v38 = v41;
      v39 = v57;
      sub_243D55218();
      v58 = v25;
      sub_243D54D28();
      sub_243D43D60(&qword_27EDAF2D8, MEMORY[0x277D02A18]);
      v40 = v45;
      sub_243D55268();
      (*(v43 + 8))(v38, v40);
      return (*(v56 + 8))(v24, v39);
    }

    v62 = 3;
    sub_243D43F1C();
    v35 = v42;
    v28 = v57;
    sub_243D55218();
    (*(v44 + 8))(v35, v46);
  }

  return (*(v56 + 8))(v24, v28);
}

uint64_t CPSRequesterSession.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF728, &qword_243D5B060);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v70 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF730, &qword_243D5B068);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v69 = &v52 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF738, &qword_243D5B070);
  v61 = *(v56 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v56);
  v68 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF740, &qword_243D5B078);
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v66 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF748, &qword_243D5B080);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF750, &qword_243D5B088);
  v55 = *(v19 - 8);
  v20 = *(v55 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF758, &unk_243D5B090);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_243D43E20();
  v30 = v71;
  sub_243D55328();
  if (!v30)
  {
    v31 = v22;
    v53 = v19;
    v54 = v18;
    v32 = v68;
    v33 = v69;
    v34 = v70;
    v71 = v24;
    v35 = v27;
    v36 = sub_243D55208();
    v37 = (2 * *(v36 + 16)) | 1;
    v73 = v36;
    v74 = v36 + 32;
    v75 = 0;
    v76 = v37;
    v38 = sub_243D2A1F4();
    if (v38 == 6 || v75 != v76 >> 1)
    {
      v40 = sub_243D55108();
      swift_allocError();
      v42 = v41;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560) + 48);
      *v42 = &type metadata for CPSRequesterSession.Event;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
      swift_willThrow();
      (*(v71 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else if (v38 > 2u)
    {
      v45 = v71;
      if (v38 == 3)
      {
        LOBYTE(v77) = 3;
        sub_243D43F1C();
        v47 = v32;
        sub_243D55188();
        v48 = v67;
        (*(v61 + 8))(v47, v56);
        (*(v45 + 8))(v35, v23);
        swift_unknownObjectRelease();
        *v48 = 2;
      }

      else
      {
        v46 = v67;
        if (v38 == 4)
        {
          LOBYTE(v77) = 4;
          sub_243D43EC8();
          sub_243D55188();
          (*(v63 + 8))(v33, v62);
          (*(v45 + 8))(v35, v23);
          swift_unknownObjectRelease();
          *v46 = 3;
        }

        else
        {
          LOBYTE(v77) = 5;
          sub_243D43E74();
          sub_243D55188();
          (*(v64 + 8))(v34, v65);
          (*(v45 + 8))(v35, v23);
          swift_unknownObjectRelease();
          *v46 = 4;
        }
      }
    }

    else if (v38)
    {
      if (v38 == 1)
      {
        LOBYTE(v77) = 1;
        sub_243D43FC4();
        v39 = v54;
        sub_243D55188();
        sub_243D54D28();
        sub_243D43D60(&qword_27EDAF2E8, MEMORY[0x277D02A18]);
        v50 = v60;
        sub_243D551E8();
        (*(v59 + 8))(v39, v50);
        (*(v71 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v51 = v77;
      }

      else
      {
        LOBYTE(v77) = 2;
        sub_243D43F70();
        v49 = v66;
        sub_243D55188();
        (*(v57 + 8))(v49, v58);
        (*(v71 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v51 = 1;
      }

      *v67 = v51;
    }

    else
    {
      LOBYTE(v77) = 0;
      sub_243D44018();
      sub_243D55188();
      (*(v55 + 8))(v31, v53);
      (*(v71 + 8))(v27, v23);
      swift_unknownObjectRelease();
      *v67 = 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_243D425C0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_243D43D60(&qword_27EDAF800, type metadata accessor for CPSRequesterSession);

  return MEMORY[0x282158A60](v4, v5, a2);
}

uint64_t sub_243D42660@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession_environment;
  v5 = sub_243D54CA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_243D426DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a2;
  v61 = a3;
  v65 = type metadata accessor for CPSXPCClientRequest(0);
  isa = v65[-1].isa;
  v6 = *(isa + 8);
  v7 = MEMORY[0x28223BE20](v65);
  v58 = v8;
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v11 = sub_243D54C08();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v62 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v54 = *(v12 + 16);
  v55 = v12 + 16;
  v54(&v52 - v16, v3 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcCoder, v11);
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v18 = sub_243D54D88();
  __swift_project_value_buffer(v18, qword_27EDAF860);
  sub_243D44E54(a1, v10, type metadata accessor for CPSXPCClientRequest);
  v19 = sub_243D54D68();
  v20 = sub_243D55018();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v63 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v64 = v11;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    v25 = CPSXPCClientRequest.description.getter();
    v53 = a1;
    v26 = v4;
    v27 = v12;
    v29 = v28;
    sub_243D43DB0(v10, type metadata accessor for CPSXPCClientRequest);
    v30 = sub_243D43538(v25, v29, aBlock);
    v12 = v27;
    v4 = v26;
    a1 = v53;

    *(v22 + 4) = v30;
    _os_log_impl(&dword_243D1C000, v19, v20, "XPC request start: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v31 = v24;
    v11 = v64;
    MEMORY[0x245D50A20](v31, -1, -1);
    v32 = v22;
    v17 = v63;
    MEMORY[0x245D50A20](v32, -1, -1);
  }

  else
  {

    sub_243D43DB0(v10, type metadata accessor for CPSXPCClientRequest);
  }

  v33 = v67;
  v34 = sub_243D477D0();
  if (v33)
  {
    return (*(v12 + 8))(v17, v11);
  }

  v36 = v34;
  sub_243D43D60(&qword_27EDAF820, type metadata accessor for CPSXPCClientRequest);
  v67 = sub_243D54BE8();
  v65 = sub_243D54C78();
  v54(v62, v17, v11);
  v37 = v59;
  sub_243D44E54(a1, v59, type metadata accessor for CPSXPCClientRequest);
  v38 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v39 = *(isa + 80);
  v63 = v17;
  v40 = v12;
  v41 = (v56 + v39 + v38) & ~v39;
  v42 = v58 + v41 + 7;
  v58 = v4;
  v43 = v42 & 0xFFFFFFFFFFFFFFF8;
  v44 = ((v42 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v11;
  v64 = v11;
  v47 = v45;
  (*(v40 + 32))(v45 + v38, v62, v46);
  sub_243D45194(v37, v47 + v41);
  v48 = (v47 + v43);
  v49 = v61;
  *v48 = v60;
  v48[1] = v49;
  *(v47 + v44) = v58;
  aBlock[4] = sub_243D451F8;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243D481FC;
  aBlock[3] = &block_descriptor_36;
  v50 = _Block_copy(aBlock);

  v51 = v65;
  xpc_connection_send_message_with_reply(v36, v67, v65, v50);
  _Block_release(v50);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return (*(v40 + 8))(v63, v64);
}

void sub_243D42CB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id *))
{
  v6 = type metadata accessor for CPSXPCClientRequest(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_243D45308();
  sub_243D54BB8();
  v23 = 0;
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v11 = sub_243D54D88();
  __swift_project_value_buffer(v11, qword_27EDAF860);
  sub_243D44E54(a3, v10, type metadata accessor for CPSXPCClientRequest);
  v12 = sub_243D54D68();
  v13 = sub_243D55018();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = CPSXPCClientRequest.description.getter();
    v18 = v17;
    sub_243D43DB0(v10, type metadata accessor for CPSXPCClientRequest);
    v19 = sub_243D43538(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_243D1C000, v12, v13, "XPC request succeeded: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245D50A20](v15, -1, -1);
    MEMORY[0x245D50A20](v14, -1, -1);
  }

  else
  {

    sub_243D43DB0(v10, type metadata accessor for CPSXPCClientRequest);
  }

  a4(&v22);
  sub_243D4535C(v22, v23);
}

uint64_t sub_243D43154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  type metadata accessor for CPSXPCClient();
  sub_243D43D60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v9, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_243D426DC(a3, sub_243D44DD8, v11);
}

uint64_t sub_243D43348(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243D43440;

  return v7(a1);
}

uint64_t sub_243D43440()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_243D43538(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243D43604(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243D45804(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_243D43604(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243D43710(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_243D55118();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_243D43710(uint64_t a1, unint64_t a2)
{
  v4 = sub_243D4375C(a1, a2);
  sub_243D4388C(&unk_2856F3968);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_243D4375C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243D43978(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_243D55118();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_243D54EF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243D43978(v10, 0);
        result = sub_243D550D8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243D4388C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_243D439EC(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_243D43978(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF858, &qword_243D5B8F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_243D439EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF858, &qword_243D5B8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_243D43AE0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0);
    return sub_243D54F48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0);
    return sub_243D54F58();
  }
}

uint64_t _s17CompanionServices19CPSRequesterSessionC5EventO2eeoiySbAE_AEtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_17:
        if (v3 >= 5)
        {
          sub_243D45698(0, &qword_27EDAF808, 0x277D82BB8);
          sub_243D43CF4(v3);
          sub_243D43CF4(v2);
          v4 = sub_243D55098();
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v3 == 1)
      {
        v2 = 1;
        v4 = 1;
        goto LABEL_19;
      }
    }

    else if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_19;
    }

LABEL_18:
    sub_243D43CF4(*a2);
    sub_243D43CF4(v2);
    v4 = 0;
    goto LABEL_19;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v4 = 1;
      v2 = 2;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 == 3)
  {
    if (v3 == 3)
    {
      v4 = 1;
      v2 = 3;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 != 4)
  {
    goto LABEL_17;
  }

  if (v3 != 4)
  {
    goto LABEL_18;
  }

  v4 = 1;
  v2 = 4;
LABEL_19:
  sub_243D43D04(v2);
  sub_243D43D04(v3);
  return v4 & 1;
}

uint64_t sub_243D43C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF690, &qword_243D5B008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_243D43CF4(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_243D43D04(id a1)
{
  if (a1 >= 5)
  {
  }
}

uint64_t type metadata accessor for CPSRequesterSession()
{
  result = qword_27EDAF760;
  if (!qword_27EDAF760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D43D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243D43DB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_243D43E20()
{
  result = qword_27EDAF6F0;
  if (!qword_27EDAF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF6F0);
  }

  return result;
}

unint64_t sub_243D43E74()
{
  result = qword_27EDAF6F8;
  if (!qword_27EDAF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF6F8);
  }

  return result;
}

unint64_t sub_243D43EC8()
{
  result = qword_27EDAF700;
  if (!qword_27EDAF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF700);
  }

  return result;
}

unint64_t sub_243D43F1C()
{
  result = qword_27EDAF708;
  if (!qword_27EDAF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF708);
  }

  return result;
}

unint64_t sub_243D43F70()
{
  result = qword_27EDAF710;
  if (!qword_27EDAF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF710);
  }

  return result;
}

unint64_t sub_243D43FC4()
{
  result = qword_27EDAF718;
  if (!qword_27EDAF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF718);
  }

  return result;
}

unint64_t sub_243D44018()
{
  result = qword_27EDAF720;
  if (!qword_27EDAF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF720);
  }

  return result;
}

uint64_t sub_243D44074()
{
  result = type metadata accessor for CPSRequesterUseCaseConfiguration(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_243D54CA8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CompanionServices19CPSRequesterSessionC5EventO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_243D441C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D44220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_243D44270(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CPSRequesterSession.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CPSRequesterSession.Event.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_243D44498()
{
  result = qword_27EDAF780;
  if (!qword_27EDAF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF780);
  }

  return result;
}

unint64_t sub_243D444F0()
{
  result = qword_27EDAF788;
  if (!qword_27EDAF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF788);
  }

  return result;
}

unint64_t sub_243D44548()
{
  result = qword_27EDAF790;
  if (!qword_27EDAF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF790);
  }

  return result;
}

unint64_t sub_243D445A0()
{
  result = qword_27EDAF798;
  if (!qword_27EDAF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF798);
  }

  return result;
}

unint64_t sub_243D445F8()
{
  result = qword_27EDAF7A0;
  if (!qword_27EDAF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7A0);
  }

  return result;
}

unint64_t sub_243D44650()
{
  result = qword_27EDAF7A8;
  if (!qword_27EDAF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7A8);
  }

  return result;
}

unint64_t sub_243D446A8()
{
  result = qword_27EDAF7B0;
  if (!qword_27EDAF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7B0);
  }

  return result;
}

unint64_t sub_243D44700()
{
  result = qword_27EDAF7B8;
  if (!qword_27EDAF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7B8);
  }

  return result;
}

unint64_t sub_243D44758()
{
  result = qword_27EDAF7C0;
  if (!qword_27EDAF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7C0);
  }

  return result;
}

unint64_t sub_243D447B0()
{
  result = qword_27EDAF7C8;
  if (!qword_27EDAF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7C8);
  }

  return result;
}

unint64_t sub_243D44808()
{
  result = qword_27EDAF7D0;
  if (!qword_27EDAF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7D0);
  }

  return result;
}

unint64_t sub_243D44860()
{
  result = qword_27EDAF7D8;
  if (!qword_27EDAF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7D8);
  }

  return result;
}

unint64_t sub_243D448B8()
{
  result = qword_27EDAF7E0;
  if (!qword_27EDAF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7E0);
  }

  return result;
}

unint64_t sub_243D44910()
{
  result = qword_27EDAF7E8;
  if (!qword_27EDAF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7E8);
  }

  return result;
}

unint64_t sub_243D44968()
{
  result = qword_27EDAF7F0;
  if (!qword_27EDAF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7F0);
  }

  return result;
}

unint64_t sub_243D449C0()
{
  result = qword_27EDAF7F8;
  if (!qword_27EDAF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7F8);
  }

  return result;
}

uint64_t sub_243D44A14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000243D5EBB0 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7075727265746E69 && a2 == 0xEB00000000646574 || (sub_243D552A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6563634172657375 && a2 == 0xEC00000064657470 || (sub_243D552A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E614372657375 && a2 == 0xEC00000064656C65 || (sub_243D552A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696E654472657375 && a2 == 0xEA00000000006465)
  {

    return 5;
  }

  else
  {
    v5 = sub_243D552A8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243D44CE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243D44D18(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_243D44D44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243D44DD8(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0) - 8) + 80);

  return sub_243D43AE0(a1);
}

uint64_t sub_243D44E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243D44EBC()
{
  v1 = sub_243D54C08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for CPSXPCClientRequest(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = (v0 + v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for CPSXPCClientRequesterRequest(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v10;

      v12 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
      v13 = v10 + v12[5];
      v14 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
      if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
LABEL_7:
          v20 = *(v13 + 1);

          goto LABEL_8;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v16 = sub_243D54BA8();
          (*(*(v16 - 8) + 8))(v13, v16);
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8F0, &qword_243D59710);
          v18 = *&v13[v17[12] + 8];

          v19 = *&v13[v17[16] + 8];

          v13 += v17[20];
          goto LABEL_7;
        }
      }

LABEL_8:
      v21 = *(v10 + v12[6] + 8);

      v22 = *(v10 + v12[7] + 8);

      v23 = *(v10 + v12[8] + 8);

      v24 = *(v10 + v12[9]);

      v25 = *(v10 + v12[10] + 8);

      v26 = *(v10 + v12[11]);
    }
  }

  v27 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v0 + v27 + 8);

  v30 = *(v0 + v28);

  return MEMORY[0x2821FE8E8](v0, v28 + 8, v3 | v7 | 7);
}

uint64_t sub_243D45194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSXPCClientRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_243D451F8(uint64_t a1)
{
  v3 = *(sub_243D54C08() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CPSXPCClientRequest(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v1 + v9);

  sub_243D42CB4(a1, v1 + v4, v1 + v7, v11);
}

unint64_t sub_243D45308()
{
  result = qword_27EDAF828;
  if (!qword_27EDAF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF828);
  }

  return result;
}

void sub_243D4535C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_243D45368()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D453A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF838, &qword_243D5B8C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_243D45448(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF838, &qword_243D5B8C0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243D33B7C;

  return sub_243D3E728(a1, v1 + v5, v6);
}

uint64_t sub_243D45560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF830, &qword_243D5B8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D455D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_243D45630()
{
  result = qword_27EDAF840;
  if (!qword_27EDAF840)
  {
    sub_243D45698(255, &qword_27EDAEED0, 0x277D85C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF840);
  }

  return result;
}

uint64_t sub_243D45698(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_243D456E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243D33B7C;

  return sub_243D43348(a1, v5);
}

uint64_t sub_243D45798(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_243D457E0(uint64_t a1, void *a2)
{
  if (a2 != 6)
  {
    sub_243D457F0(a1, a2);
  }
}

void sub_243D457F0(uint64_t a1, void *a2)
{
  if (a2 != 5)
  {
    sub_243D43D04(a2);
  }
}

uint64_t sub_243D45804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243D4587C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8B0, &qword_243D5B920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_243D455D0(a1, &qword_27EDAF8B0, &qword_243D5B920);
    v15 = *v3;
    v16 = sub_243D4AAD0(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_243D4BA34(&unk_27EDAF8C0, &qword_243D5B930, &qword_27EDAF9A8, &qword_243D5BB88);
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_243D4B268(v18, v21, &unk_27EDAF8C0, &qword_243D5B930);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_243D455D0(v9, &qword_27EDAF8B0, &qword_243D5B920);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_243D4B424(v14, a2, v23, &unk_27EDAF8C0, &qword_243D5B930, &qword_27EDAF9A8, &qword_243D5BB88);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_243D45B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6A8, &qword_243D5B018);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_243D455D0(a1, &qword_27EDAF6A8, &qword_243D5B018);
    v15 = *v3;
    v16 = sub_243D4AAD0(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_243D4BA34(&qword_27EDAF980, &qword_243D5BB70, &qword_27EDAF988, &qword_243D5BB78);
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_243D4B268(v18, v21, &qword_27EDAF980, &qword_243D5BB70);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_243D455D0(v9, &qword_27EDAF6A8, &qword_243D5B018);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_243D4B424(v14, a2, v23, &qword_27EDAF980, &qword_243D5BB70, &qword_27EDAF988, &qword_243D5BB78);
    *v3 = v26;
  }

  return result;
}

uint64_t CUEnvironmentValues.cpsXPCClient.getter()
{
  sub_243D3D1D8();
  sub_243D54CB8();
  return v1;
}

uint64_t CPSXPCClient.__allocating_init(environment:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 0;
  sub_243D54BF8();
  *(v5 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
  *(v5 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations) = MEMORY[0x277D84F98];
  v6 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v7 = sub_243D54CA8();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t CPSXPCClient.events.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8B0, &qword_243D5B920);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8B8, &qword_243D5B928);
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v27);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v28 = CUNextIDDecimal64();
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v15 = sub_243D54D88();
  __swift_project_value_buffer(v15, qword_27EDAF860);
  v16 = sub_243D54D68();
  v17 = sub_243D55018();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = v5;
    v19 = v1;
    v20 = v18;
    *v18 = 134217984;
    *(v18 + 4) = v28;
    _os_log_impl(&dword_243D1C000, v16, v17, "event monitor start: id=%llu", v18, 0xCu);
    v21 = v20;
    v1 = v19;
    v5 = v26;
    MEMORY[0x245D50A20](v21, -1, -1);
  }

  v22 = v27;
  (*(v6 + 104))(v9, *MEMORY[0x277D85778], v27);
  sub_243D54FA8();
  (*(v6 + 8))(v9, v22);
  (*(v11 + 16))(v5, v14, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  v23 = v28;
  sub_243D4587C(v5, v28);
  swift_endAccess();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *(v24 + 24) = v23;

  sub_243D54FB8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t CPSXPCClient.send<A>(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v5[7] = sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient);
  v8 = sub_243D54F38();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_243D46364, v8, v7);
}

uint64_t sub_243D46364()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_243D4646C;
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, v1, v2, 0x71657228646E6573, 0xEE00293A74736575, sub_243D4BFF8, v4, v7);
}

uint64_t sub_243D4646C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[8];
    v5 = v3[9];

    return MEMORY[0x2822009F8](sub_243D465A4, v4, v5);
  }

  else
  {
    v6 = v3[10];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_243D465A4()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_243D46608()
{
  v0 = sub_243D54D88();
  __swift_allocate_value_buffer(v0, qword_27EDAF860);
  __swift_project_value_buffer(v0, qword_27EDAF860);
  return sub_243D54D78();
}

uint64_t CPSXPCClient.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v4 = sub_243D54CA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_243D46700()
{
  swift_weakInit();
  dword_27EDAF878 = 0;
  qword_27EDAF880 = 0;
  return sub_243D4CCC4(v1, &qword_27EDAF880);
}

uint64_t CPSXPCClient.init(environment:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 0;
  sub_243D54BF8();
  *(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
  *(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations) = MEMORY[0x277D84F98];
  v3 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v4 = sub_243D54CA8();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

unint64_t CPSXPCClient.deinit()
{
  v1 = v0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v57 = *(v61 - 8);
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D0, &qword_243D5B940);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  if (qword_27EDAEC80 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v11 = sub_243D54D88();
    __swift_project_value_buffer(v11, qword_27EDAF860);
    v12 = sub_243D54D68();
    v13 = sub_243D55028();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_243D1C000, v12, v13, "deinit", v14, 2u);
      MEMORY[0x245D50A20](v14, -1, -1);
    }

    v15 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D8, &qword_243D5B948);
    v51 = v15;
    v52 = v1;
    v16 = sub_243D54E88();
    swift_endAccess();
    v17 = 0;
    v19 = v16 + 64;
    v18 = *(v16 + 64);
    v56 = v16;
    v20 = 1 << *(v16 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v1 = v21 & v18;
    v22 = (v20 + 63) >> 6;
    v54 = v57 + 16;
    v55 = v8;
    v23 = (v57 + 32);
    v58 = (v57 + 8);
    v59 = v10;
    v53 = (v57 + 32);
    v24 = v60;
    if ((v21 & v18) != 0)
    {
      break;
    }

LABEL_8:
    if (v22 <= (v17 + 1))
    {
      v26 = (v17 + 1);
    }

    else
    {
      v26 = v22;
    }

    v10 = (v26 - 1);
    while (1)
    {
      v25 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
        (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
        v1 = 0;
        goto LABEL_16;
      }

      v1 = *(v19 + 8 * v25);
      ++v17;
      if (v1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v25 = v17;
LABEL_15:
    v27 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v28 = v27 | (v25 << 6);
    v29 = v57;
    v30 = *(*(v56 + 48) + 8 * v28);
    v31 = v61;
    (*(v57 + 16))(v24, *(v56 + 56) + *(v57 + 72) * v28, v61);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
    v33 = *(v32 + 48);
    v34 = v55;
    *v55 = v30;
    v35 = *(v29 + 32);
    v8 = v34;
    v36 = v31;
    v23 = v53;
    v35(&v34[v33], v24, v36);
    (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
    v10 = v25;
LABEL_16:
    v37 = v59;
    sub_243D4C004(v8, v59);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
    {
      break;
    }

    v39 = v37 + *(v38 + 48);
    v40 = v60;
    v41 = v61;
    (*v23)(v60, v39, v61);
    sub_243D54FD8();
    (*v58)(v40, v41);
    v17 = v10;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  v43 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v44 = sub_243D54CA8();
  v45 = v52;
  (*(*(v44 - 8) + 8))(v52 + v43, v44);
  v46 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcCoder;
  v47 = sub_243D54C08();
  (*(*(v47 - 8) + 8))(v45 + v46, v47);
  v48 = *(v45 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  swift_unknownObjectRelease();
  v49 = *(v45 + v51);

  return v45;
}

uint64_t CPSXPCClient.__deallocating_deinit()
{
  CPSXPCClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall CPSXPCClient.invalidate()()
{
  *(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  if (v1)
  {
    xpc_connection_cancel(v1);
  }

  CPSXPCClient._cleanupIfNeeded()();
}

Swift::Void __swiftcall CPSXPCClient._cleanupIfNeeded()()
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v41 = *(v45 - 8);
  v1 = *(v41 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D0, &qword_243D5B940);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  if (*(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) == 1 && !*(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection))
  {
    v42 = v6;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D8, &qword_243D5B948);
    v9 = sub_243D54E88();
    swift_endAccess();
    v10 = 0;
    v11 = *(v9 + 64);
    v36 = v9 + 64;
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v37 = v41 + 16;
    v38 = v8;
    v43 = (v41 + 32);
    v39 = v9;
    v40 = (v41 + 8);
    v16 = v44;
    if ((v13 & v11) != 0)
    {
      while (1)
      {
        v17 = v10;
LABEL_14:
        v20 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v21 = v20 | (v17 << 6);
        v22 = *(*(v39 + 48) + 8 * v21);
        v23 = v41;
        v24 = v45;
        (*(v41 + 16))(v16, *(v39 + 56) + *(v41 + 72) * v21, v45);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
        v26 = *(v25 + 48);
        v27 = v42;
        *v42 = v22;
        (*(v23 + 32))(&v27[v26], v16, v24);
        (*(*(v25 - 8) + 56))(v27, 0, 1, v25);
        v19 = v17;
        v28 = v27;
        v8 = v38;
LABEL_15:
        sub_243D4C004(v28, v8);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
        if ((*(*(v29 - 8) + 48))(v8, 1, v29) == 1)
        {
          break;
        }

        v30 = *(v29 + 48);
        v31 = v44;
        v32 = v45;
        (*v43)(v44, &v8[v30], v45);
        sub_243D54FD8();
        (*v40)(v31, v32);
        v10 = v19;
        if (!v14)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (v15 <= v10 + 1)
      {
        v18 = v10 + 1;
      }

      else
      {
        v18 = v15;
      }

      v19 = v18 - 1;
      while (1)
      {
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v17 >= v15)
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
          v34 = v42;
          (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
          v28 = v34;
          v14 = 0;
          goto LABEL_15;
        }

        v14 = *(v36 + 8 * v17);
        ++v10;
        if (v14)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t CPSXPCClient.send<A>(request:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v60 = a4;
  v61 = a5;
  v62 = a2;
  v63 = a3;
  v66 = type metadata accessor for CPSXPCClientRequest(0);
  isa = v66[-1].isa;
  v8 = *(isa + 8);
  v9 = MEMORY[0x28223BE20](v66);
  v58 = v10;
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = sub_243D54C08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v64 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v54 = *(v14 + 16);
  v55 = v14 + 16;
  v54(&v52 - v18, v5 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcCoder, v13);
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v20 = sub_243D54D88();
  __swift_project_value_buffer(v20, qword_27EDAF860);
  sub_243D4C074(a1, v12);
  v21 = sub_243D54D68();
  v22 = sub_243D55018();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v65 = v14;
    v24 = v23;
    v25 = swift_slowAlloc();
    v53 = v13;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    v27 = CPSXPCClientRequest.description.getter();
    v52 = a1;
    v28 = v19;
    v29 = v6;
    v31 = v30;
    sub_243D4C0D8(v12);
    v32 = sub_243D43538(v27, v31, aBlock);
    v6 = v29;
    v19 = v28;
    a1 = v52;

    *(v24 + 4) = v32;
    _os_log_impl(&dword_243D1C000, v21, v22, "XPC request start: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v33 = v26;
    v13 = v53;
    MEMORY[0x245D50A20](v33, -1, -1);
    v34 = v24;
    v14 = v65;
    MEMORY[0x245D50A20](v34, -1, -1);
  }

  else
  {

    sub_243D4C0D8(v12);
  }

  v35 = v68;
  v36 = sub_243D477D0();
  if (v35)
  {
    return (*(v14 + 8))(v19, v13);
  }

  v38 = v36;
  sub_243D4CC60(&qword_27EDAF820, type metadata accessor for CPSXPCClientRequest);
  v68 = sub_243D54BE8();
  v66 = sub_243D54C78();
  v54(v64, v19, v13);
  v39 = v59;
  sub_243D4C074(a1, v59);
  v40 = *(v14 + 80);
  v65 = v14;
  v41 = (v40 + 32) & ~v40;
  v42 = (v56 + *(isa + 80) + v41) & ~*(isa + 80);
  v56 = v6;
  isa = v38;
  v43 = &v58[v42 + 7] & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v58 = v19;
  v45 = v13;
  v46 = v44;
  v47 = v61;
  *(v44 + 16) = v60;
  *(v44 + 24) = v47;
  (*(v14 + 32))(v44 + v41, v64, v45);
  sub_243D45194(v39, v46 + v42);
  v48 = (v46 + v43);
  v49 = v63;
  *v48 = v62;
  v48[1] = v49;
  *(v46 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;
  aBlock[4] = sub_243D4C40C;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243D481FC;
  aBlock[3] = &block_descriptor_0;
  v50 = _Block_copy(aBlock);

  v51 = v66;
  xpc_connection_send_message_with_reply(isa, v68, v66, v50);
  _Block_release(v50);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return (*(v65 + 8))(v58, v45);
}

_xpc_connection_s *sub_243D477D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF638, &qword_243D5AFD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &aBlock - v4;
  v6 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection;
  if (*(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection))
  {
    mach_service = *(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  }

  else
  {
    sub_243D54C68();
    v8 = sub_243D54C28();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_243D455D0(v5, &qword_27EDAF638, &qword_243D5AFD0);
      sub_243D2BF60();
      sub_243D54CB8();
      mach_service = v20;
      if (!v20)
      {
        v18 = objc_allocWithZone(sub_243D54D28());
        sub_243D54D38();
        swift_willThrow();
        return mach_service;
      }

      v10 = sub_243D54C78();
      v11 = sub_243D54EB8();

      mach_service = xpc_connection_create_mach_service((v11 + 32), v10, 0);

      swift_unknownObjectRetain();
    }

    else
    {
      v12 = sub_243D54C18();
      (*(v9 + 8))(v5, v8);
      mach_service = xpc_connection_create_from_endpoint(v12);
      swift_unknownObjectRetain();
      v13 = sub_243D54C78();
      xpc_connection_set_target_queue(mach_service, v13);
      swift_unknownObjectRelease();
    }

    v14 = *(v1 + v6);
    *(v1 + v6) = mach_service;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v15 = swift_allocObject();
    swift_weakInit();
    v23 = sub_243D4C8AC;
    v24 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_243D481FC;
    v22 = &block_descriptor_14;
    v16 = _Block_copy(&aBlock);

    xpc_connection_set_event_handler(mach_service, v16);
    _Block_release(v16);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return mach_service;
}

uint64_t sub_243D47AFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a5;
  v64 = a4;
  v62 = a3;
  v12 = type metadata accessor for CPSXPCClientRequest(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v20 = sub_243D55318();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v61 - v26;
  v65 = a7;
  v66 = a8;
  v67 = a2;
  v68 = a1;
  v28 = v25;
  v30 = v29;
  sub_243D48048(sub_243D4C838, v19, &v61 - v26);
  (*(v30 + 16))(v24, v27, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v24;
    if (qword_27EDAEC80 != -1)
    {
      swift_once();
    }

    v32 = sub_243D54D88();
    __swift_project_value_buffer(v32, qword_27EDAF860);
    sub_243D4C074(v62, v16);
    v33 = v31;
    v34 = sub_243D54D68();
    v35 = sub_243D55038();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = v28;
      v69 = v61;
      *v36 = 136315394;
      v38 = CPSXPCClientRequest.description.getter();
      v39 = v30;
      v41 = v40;
      sub_243D4C0D8(v16);
      v42 = sub_243D43538(v38, v41, &v69);
      v30 = v39;

      *(v36 + 4) = v42;
      *(v36 + 12) = 2112;
      v43 = v31;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v44;
      *v37 = v44;
      _os_log_impl(&dword_243D1C000, v34, v35, "### XPC request failed: %s, error=%@", v36, 0x16u);
      sub_243D455D0(v37, &unk_27EDAF940, &qword_243D5B8B0);
      MEMORY[0x245D50A20](v37, -1, -1);
      v45 = v61;
      __swift_destroy_boxed_opaque_existential_1(v61);
      v46 = v45;
      v28 = v62;
      MEMORY[0x245D50A20](v46, -1, -1);
      MEMORY[0x245D50A20](v36, -1, -1);
    }

    else
    {

      sub_243D4C0D8(v16);
    }
  }

  else
  {
    if (qword_27EDAEC80 != -1)
    {
      swift_once();
    }

    v47 = sub_243D54D88();
    __swift_project_value_buffer(v47, qword_27EDAF860);
    sub_243D4C074(v62, v18);
    v48 = sub_243D54D68();
    v49 = sub_243D55018();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v62 = v28;
      v51 = v50;
      v52 = v30;
      v53 = swift_slowAlloc();
      v69 = v53;
      *v51 = 136315138;
      v54 = CPSXPCClientRequest.description.getter();
      v56 = v55;
      sub_243D4C0D8(v18);
      v57 = sub_243D43538(v54, v56, &v69);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_243D1C000, v48, v49, "XPC request succeeded: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      v58 = v53;
      v30 = v52;
      MEMORY[0x245D50A20](v58, -1, -1);
      v59 = v51;
      v28 = v62;
      MEMORY[0x245D50A20](v59, -1, -1);
    }

    else
    {

      sub_243D4C0D8(v18);
    }

    (*(v30 + 8))(v24, v28);
  }

  v64(v27);
  return (*(v30 + 8))(v27, v28);
}

uint64_t sub_243D48048@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_243D55318();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14[-v11];
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v12, v8);
}

uint64_t sub_243D481FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_243D4825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v8 = sub_243D54F68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  type metadata accessor for CPSXPCClient();
  sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v9 + 32))(v14 + v13, v12, v8);
  CPSXPCClient.send<A>(request:replyHandler:)(v17, sub_243D4CBB0, v14, a4, a5);
}

uint64_t sub_243D48484(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v2 = sub_243D54F68();
  return sub_243D484EC(a1, v2);
}

uint64_t sub_243D484EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_243D55318();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_243D54F48();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_243D54F58();
  }
}

uint64_t sub_243D48728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_243D54E58();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_243D54E78();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243D54C78();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_243D4CC58;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243D40F5C;
  aBlock[3] = &block_descriptor_29;
  v15 = _Block_copy(aBlock);

  sub_243D54E68();
  v20 = MEMORY[0x277D84F90];
  sub_243D4CC60(&unk_27EDAF990, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF810, &qword_243D5BB80);
  sub_243D45798(&qword_27EDAF9A0, &qword_27EDAF810, &qword_243D5BB80);
  sub_243D550B8();
  MEMORY[0x245D4FFA0](0, v12, v8, v15);
  _Block_release(v15);

  (*(v19 + 8))(v8, v5);
  (*(v9 + 8))(v12, v18);
}

uint64_t sub_243D48A10(uint64_t isEscapingClosureAtFileLocation, uint64_t a2)
{
  v7 = a2;
  type metadata accessor for CPSXPCClient();
  sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient);
  sub_243D54F38();
  if (swift_task_isCurrentExecutor())
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_243D4CCA8;
    *(v3 + 24) = &v6;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_243D4CD88;
    *(v4 + 24) = v3;

    v9[0] = isEscapingClosureAtFileLocation;
    sub_243D4CD5C(v9);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_243D550E8();
  MEMORY[0x245D4FE20](0xD00000000000003FLL, 0x8000000243D5ECB0);
  v8 = isEscapingClosureAtFileLocation;
  sub_243D55128();
  MEMORY[0x245D4FE20](46, 0xE100000000000000);
  result = sub_243D55138();
  __break(1u);
  return result;
}

uint64_t sub_243D48C2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8B0, &qword_243D5B920);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  type metadata accessor for CPSXPCClient();
  sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v7 = sub_243D54D88();
  __swift_project_value_buffer(v7, qword_27EDAF860);
  v8 = sub_243D54D68();
  v9 = sub_243D55018();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a2;
    _os_log_impl(&dword_243D1C000, v8, v9, "event monitor cancel: id=%llu", v10, 0xCu);
    MEMORY[0x245D50A20](v10, -1, -1);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  swift_beginAccess();
  sub_243D4587C(v6, a2);
  return swift_endAccess();
}

uint64_t CPSXPCClient._report(event:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8F8, &qword_243D5B960);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v83 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D0, &qword_243D5B940);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v81 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v80 = &v65 - v17;
  v18 = a1[1];
  v84 = *a1;
  v74 = v18;
  v19 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = *(v20 + 64);
  v68 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v70 = v8 + 16;
  v82 = (v8 + 32);
  v67 = 0x8000000243D5ED40;
  v65 = 0x8000000243D5EBB0;
  v72 = v8;
  v73 = v20;
  v75 = (v8 + 8);
  v76 = (v4 + 8);

  v27 = 0;
  *&v28 = 134218242;
  v69 = v28;
  v79 = v3;
  v77 = v7;
  while (v24)
  {
    v37 = v27;
LABEL_18:
    v41 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v42 = v41 | (v37 << 6);
    v43 = v72;
    v44 = *(*(v73 + 48) + 8 * v42);
    v45 = v71;
    (*(v72 + 16))(v71, *(v73 + 56) + *(v72 + 72) * v42, v7);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
    v47 = *(v46 + 48);
    v48 = v81;
    *v81 = v44;
    v40 = v48;
    (*(v43 + 32))(v48 + v47, v45, v7);
    (*(*(v46 - 8) + 56))(v40, 0, 1, v46);
LABEL_19:
    v49 = v40;
    v50 = v80;
    sub_243D4C004(v49, v80);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
    }

    v52 = *v50;
    (*v82)(v83, &v50[*(v51 + 48)], v7);
    if (qword_27EDAEC80 != -1)
    {
      swift_once();
    }

    v53 = sub_243D54D88();
    __swift_project_value_buffer(v53, qword_27EDAF860);
    v54 = v84;
    v55 = v74;
    sub_243D4C548(v84, v74);
    v56 = sub_243D54D68();
    v57 = sub_243D55018();
    sub_243D457F0(v54, v55);
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v87 = v59;
      *v58 = v69;
      *(v58 + 4) = v52;
      *(v58 + 12) = 2080;
      v31 = 0x7075727265746E69;
      v32 = 0xEB00000000646574;
      if (v55 != 5)
      {
        v88 = 0;
        v89 = 0xE000000000000000;
        sub_243D43CF4(v55);
        sub_243D550E8();

        v88 = 0xD000000000000014;
        v89 = v67;
        v85 = v84;
        v60 = sub_243D55288();
        MEMORY[0x245D4FE20](v60);

        MEMORY[0x245D4FE20](8236, 0xE200000000000000);
        if (v55 <= 1)
        {
          if (v55)
          {
            v30 = 0x7075727265746E69;
            v29 = 0xEB00000000646574;
            if (v55 != 1)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v30 = 0xD00000000000001ALL;
            v29 = v65;
          }
        }

        else
        {
          switch(v55)
          {
            case 2:
              v29 = 0xEC00000064657470;
              v30 = 0x6563634172657375;
              break;
            case 3:
              v30 = 0x636E614372657375;
              v29 = 0xEC00000064656C65;
              break;
            case 4:
              v29 = 0xEA00000000006465;
              v30 = 0x696E654472657375;
              break;
            default:
LABEL_32:
              v85 = 0x203A726F727265;
              v86 = 0xE700000000000000;
              v62 = [v55 description];
              v66 = sub_243D54EA8();
              v64 = v63;

              MEMORY[0x245D4FE20](v66, v64);

              v30 = v85;
              v29 = v86;
              break;
          }
        }

        MEMORY[0x245D4FE20](v30, v29);

        sub_243D457F0(v84, v55);
        v31 = v88;
        v32 = v89;
      }

      v33 = sub_243D43538(v31, v32, &v87);

      *(v58 + 14) = v33;
      _os_log_impl(&dword_243D1C000, v56, v57, "event report: id=%llu, event={%s}", v58, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x245D50A20](v59, -1, -1);
      MEMORY[0x245D50A20](v58, -1, -1);
    }

    v34 = v79;
    v88 = v84;
    v89 = v55;
    sub_243D4C548(v84, v55);
    v7 = v77;
    v35 = v78;
    v36 = v83;
    sub_243D54FC8();
    (*v76)(v35, v34);
    result = (*v75)(v36, v7);
  }

  if (v25 <= v27 + 1)
  {
    v38 = v27 + 1;
  }

  else
  {
    v38 = v25;
  }

  v39 = v38 - 1;
  v40 = v81;
  while (1)
  {
    v37 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v37 >= v25)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
      (*(*(v61 - 8) + 56))(v40, 1, 1, v61);
      v24 = 0;
      v27 = v39;
      goto LABEL_19;
    }

    v24 = *(v68 + 8 * v37);
    ++v27;
    if (v24)
    {
      v27 = v37;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t CPSXPCClient.Event.description.getter()
{
  if (v0[1] == 5)
  {
    return 0x7075727265746E69;
  }

  v2 = *v0;
  sub_243D550E8();

  v3 = sub_243D55288();
  MEMORY[0x245D4FE20](v3);

  MEMORY[0x245D4FE20](8236, 0xE200000000000000);
  v4 = CPSRequesterSession.Event.description.getter();
  MEMORY[0x245D4FE20](v4);

  return 0xD000000000000014;
}

uint64_t sub_243D497F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF958, &qword_243D5BB50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v16[0] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF960, &qword_243D5BB58);
    v9 = sub_243D54C58();
    MEMORY[0x28223BE20](v9);
    v13 = v6;
    type metadata accessor for CPSXPCClient();
    sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient);
    sub_243D54F38();
    if (swift_task_isCurrentExecutor())
    {
      v10 = swift_allocObject();
      *(v10 + 16) = sub_243D4C8B4;
      *(v10 + 24) = &v15[-4];
      v11 = swift_allocObject();
      *(v11 + 16) = sub_243D4C8E0;
      *(v11 + 24) = v10;

      v16[0] = v8;
      sub_243D44D18(v16);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return (*(v3 + 8))(v6, v2);
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_243D550E8();
    MEMORY[0x245D4FE20](0xD00000000000003FLL, 0x8000000243D5ECB0);
    v15[2] = v8;
    sub_243D55128();
    MEMORY[0x245D4FE20](46, 0xE100000000000000);
    v14 = 0;
    v13 = 174;
    result = sub_243D55138();
    __break(1u);
  }

  return result;
}

void sub_243D49B50()
{
  type metadata accessor for CPSXPCClient();
  sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_243D49C10();
}

void sub_243D49C10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF958, &qword_243D5BB50);
  sub_243D54C48();
  v2 = MEMORY[0x245D50BD0](v18);
  if (v2 == sub_243D54D98())
  {
    sub_243D4A044(v18);
LABEL_19:
    swift_unknownObjectRelease();
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = sub_243D54DB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v18 == v3)
  {
    if ((*(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) & 1) == 0)
    {
      sub_243D49F48();
    }

    goto LABEL_19;
  }

  swift_unknownObjectRetain();
  v4 = sub_243D54DA8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v18 == v4)
  {
    if ((*(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) & 1) == 0)
    {
      if (qword_27EDAEC80 != -1)
      {
        swift_once();
      }

      v13 = sub_243D54D88();
      __swift_project_value_buffer(v13, qword_27EDAF860);
      v14 = sub_243D54D68();
      v15 = sub_243D55038();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_243D1C000, v14, v15, "### Invalidated unexpectedly", v16, 2u);
        MEMORY[0x245D50A20](v16, -1, -1);
      }
    }

    v17 = *(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
    *(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
    swift_unknownObjectRelease();
    CPSXPCClient._cleanupIfNeeded()();
    goto LABEL_19;
  }

  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v5 = sub_243D54D88();
  __swift_project_value_buffer(v5, qword_27EDAF860);
  swift_unknownObjectRetain();
  v6 = sub_243D54D68();
  v7 = sub_243D55038();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = sub_243D55008();
    v12 = sub_243D43538(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_243D1C000, v6, v7, "### XPC event error: error=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D50A20](v9, -1, -1);
    MEMORY[0x245D50A20](v8, -1, -1);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_243D49F48()
{
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v0 = sub_243D54D88();
  __swift_project_value_buffer(v0, qword_27EDAF860);
  v1 = sub_243D54D68();
  v2 = sub_243D55038();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_243D1C000, v1, v2, "### interrupted", v3, 2u);
    MEMORY[0x245D50A20](v3, -1, -1);
  }

  v5 = xmmword_243D5B910;
  return CPSXPCClient._report(event:)(&v5);
}

uint64_t sub_243D4A044(void *a1)
{
  v3 = v1;
  sub_243D4CA24();
  result = sub_243D54BB8();
  if (v2)
  {
    return result;
  }

  v26 = 0;
  v6 = v25[0];
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v7 = sub_243D54D88();
  __swift_project_value_buffer(v7, qword_27EDAF860);
  sub_243D43CF4(*(&v25[0] + 1));
  v8 = sub_243D54D68();
  v9 = sub_243D55018();
  sub_243D43D04(*(&v25[0] + 1));
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = a1;
    v11 = swift_slowAlloc();
    *&v23 = v11;
    *v10 = 136315138;
    v25[0] = v6;
    sub_243D43CF4(*(&v6 + 1));
    v12 = CPSXPCServerRequest.description.getter();
    v14 = v13;
    sub_243D43D04(*(&v6 + 1));
    v15 = sub_243D43538(v12, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_243D1C000, v8, v9, "XPC request: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v16 = v11;
    a1 = v20;
    MEMORY[0x245D50A20](v16, -1, -1);
    MEMORY[0x245D50A20](v10, -1, -1);
  }

  v23 = v6;
  sub_243D43CF4(*(&v6 + 1));
  CPSXPCClient._report(event:)(&v23);
  sub_243D457F0(v6, *(&v6 + 1));
  memset(v25, 0, 48);
  sub_243D4CA78(v25, &v21);
  if (!v22)
  {
    sub_243D455D0(v25, &unk_27EDAF970, &unk_243D5BB60);
    sub_243D43D04(*(&v6 + 1));
    return sub_243D455D0(&v21, &unk_27EDAF970, &unk_243D5BB60);
  }

  sub_243D4CAE8(&v21, &v23);
  v17 = *(v3 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  if (!v17)
  {
    sub_243D455D0(v25, &unk_27EDAF970, &unk_243D5BB60);
LABEL_14:
    sub_243D43D04(*(&v6 + 1));
    return __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  v18 = *(v3 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  swift_unknownObjectRetain();
  if (!sub_243D4C940(a1))
  {
    sub_243D455D0(v25, &unk_27EDAF970, &unk_243D5BB60);
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(&v23, v24);
  v19 = v26;
  sub_243D54BD8();
  if (v19)
  {
    sub_243D455D0(v25, &unk_27EDAF970, &unk_243D5BB60);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_243D43D04(*(&v6 + 1));
  }

  else
  {
    xpc_connection_send_message(v17, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_243D43D04(*(&v6 + 1));
    sub_243D455D0(v25, &unk_27EDAF970, &unk_243D5BB60);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

void sub_243D4A3D0(void *a1, void *a2)
{
  v3 = v2;
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v6 = sub_243D54D88();
  __swift_project_value_buffer(v6, qword_27EDAF860);
  v7 = a2;
  v8 = sub_243D54D68();
  v9 = sub_243D55038();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_243D1C000, v8, v9, "### XPC error reply: error=%@", v10, 0xCu);
    sub_243D455D0(v11, &unk_27EDAF940, &qword_243D5B8B0);
    MEMORY[0x245D50A20](v11, -1, -1);
    MEMORY[0x245D50A20](v10, -1, -1);
  }

  v14 = *(v3 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  if (v14)
  {
    v15 = *(v3 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
    swift_unknownObjectRetain();
    if (xpc_dictionary_expects_reply())
    {
      v16 = sub_243D4C940(a1);
      if (v16)
      {
        v17 = v16;
        sub_243D54BC8();
        xpc_connection_send_message(v14, v17);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_243D4A73C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_243D4CC60(&qword_27EDAF930, type metadata accessor for CPSXPCClient);

  return MEMORY[0x282158A60](v4, v5, a2);
}

uint64_t sub_243D4A7DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v5 = sub_243D54CA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_243D4A860(uint64_t *a1)
{
  v2 = *a1;
  sub_243D3D1D8();

  return sub_243D54CC8();
}

uint64_t (*CUEnvironmentValues.cpsXPCClient.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_243D3D1D8();
  sub_243D54CB8();
  return sub_243D4A95C;
}

uint64_t sub_243D4A95C(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_243D54CC8();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_243D54CC8();
  }
}

unint64_t sub_243D4AA18(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_243D552E8();
  sub_243D54ED8();

  v5 = sub_243D55308();

  return sub_243D4B684(a1 & 1, v5);
}

unint64_t sub_243D4AAD0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_243D552D8();

  return sub_243D4B7D8(a1, v4);
}

uint64_t sub_243D4AB14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF9B0, &qword_243D5BB90);
  v42 = a2;
  result = sub_243D55158();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v41 = v3;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 168 * v21;
      if (v42)
      {
        v43 = *v23;
        v44 = *(v23 + 16);
        v51 = *(v23 + 40);
        v47 = *(v23 + 48);
        v45 = *(v23 + 56);
        v46 = *(v23 + 32);
        v48 = *(v23 + 64);
        v49 = *(v23 + 80);
        v50 = *(v23 + 96);
        v54 = *(v23 + 144);
        v52 = *(v23 + 112);
        v53 = *(v23 + 128);
        v55 = *(v23 + 160);
      }

      else
      {
        v25 = *(v23 + 16);
        v24 = *(v23 + 32);
        v57 = *v23;
        v58 = v25;
        v59 = v24;
        v26 = *(v23 + 96);
        v28 = *(v23 + 48);
        v27 = *(v23 + 64);
        v62 = *(v23 + 80);
        v63 = v26;
        v60 = v28;
        v61 = v27;
        v30 = *(v23 + 128);
        v29 = *(v23 + 144);
        v31 = *(v23 + 112);
        v67 = *(v23 + 160);
        v65 = v30;
        v66 = v29;
        v64 = v31;
        v55 = v67;
        v53 = v30;
        v54 = v29;
        v52 = v31;
        v49 = v62;
        v50 = v63;
        v48 = v61;
        v51 = *(&v59 + 1);
        v47 = v28;
        v45 = BYTE8(v28);
        v46 = v59;
        v43 = v57;
        v44 = v58;
        sub_243D39488(&v57, v56);
      }

      v32 = *(v8 + 40);
      sub_243D552E8();
      sub_243D54ED8();

      result = sub_243D55308();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
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
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 168 * v16;
      *v17 = v43;
      *(v17 + 16) = v44;
      *(v17 + 32) = v46;
      *(v17 + 40) = v51;
      *(v17 + 48) = v47;
      *(v17 + 56) = v45;
      *(v17 + 64) = v48;
      *(v17 + 80) = v49;
      *(v17 + 96) = v50;
      *(v17 + 112) = v52;
      *(v17 + 128) = v53;
      *(v17 + 144) = v54;
      *(v17 + 160) = v55;
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

    if ((v42 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_243D4AF1C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v44 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v47 = a2;
  result = sub_243D55158();
  v18 = result;
  if (*(v15 + 16))
  {
    v44 = v9;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = (v12 + 16);
    v46 = v12;
    v25 = (v12 + 32);
    v26 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(*(v15 + 48) + 8 * v31);
      v33 = *(v12 + 72);
      v34 = *(v15 + 56) + v33 * v31;
      if (v47)
      {
        (*v25)(v48, v34, v49);
      }

      else
      {
        (*v45)(v48, v34, v49);
      }

      v35 = *(v18 + 40);
      result = sub_243D552D8();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v26 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v26 + 8 * v38);
          if (v42 != -1)
          {
            v27 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v37) & ~*(v26 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v18 + 48) + 8 * v27) = v32;
      result = (*v25)(*(v18 + 56) + v33 * v27, v48, v49);
      ++*(v18 + 16);
      v12 = v46;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v15 + 32);
    v9 = v44;
    if (v43 >= 64)
    {
      bzero((v15 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

unint64_t sub_243D4B268(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_243D550C8() + 1) & ~v7;
    do
    {
      v13 = *(a2 + 40);
      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v8);
      v16 = *v15;
      result = sub_243D552D8();
      v17 = result & v11;
      if (v5 >= v12)
      {
        if (v17 < v12 || v5 < v17)
        {
          goto LABEL_5;
        }
      }

      else if (v17 < v12 && v5 < v17)
      {
        goto LABEL_5;
      }

      v20 = (v14 + 8 * v5);
      if (v5 != v8 || v20 >= v15 + 1)
      {
        *v20 = *v15;
      }

      v21 = *(a2 + 56);
      v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v23 = v22 * v5;
      result = v21 + v22 * v5;
      v24 = v22 * v8;
      v25 = v21 + v22 * v8 + v22;
      if (v23 < v24 || result >= v25)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v23 == v24)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_243D4B424(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v15 = *v7;
  v17 = sub_243D4AAD0(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_243D4BA34(a4, a5, a6, a7);
      goto LABEL_7;
    }

    sub_243D4AF1C(v20, a3 & 1, a4, a5, a6, a7);
    v31 = *v11;
    v32 = sub_243D4AAD0(a2);
    if ((v21 & 1) == (v33 & 1))
    {
      v17 = v32;
      v23 = *v11;
      if (v21)
      {
        goto LABEL_8;
      }

      return sub_243D4B5D4(v17, a2, a1, v23, a4, a5);
    }

LABEL_15:
    result = sub_243D552C8();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v11;
  if ((v21 & 1) == 0)
  {
    return sub_243D4B5D4(v17, a2, a1, v23, a4, a5);
  }

LABEL_8:
  v24 = v23[7];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v26 = *(v25 - 8);
  v27 = *(v26 + 40);
  v28 = v25;
  v29 = v24 + *(v26 + 72) * v17;

  return v27(v29, a1, v28);
}

uint64_t sub_243D4B5D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v9 = a4[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_243D4B684(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x51636972656E6567;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v7 = 0xED000065646F4352;
    }

    else
    {
      v7 = 0x8000000243D5E5F0;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x51636972656E6567 : 0xD000000000000013;
      v9 = *(*(v2 + 48) + v4) ? 0xED000065646F4352 : 0x8000000243D5E5F0;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_243D552A8();

      if ((v11 & 1) == 0)
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

unint64_t sub_243D4B7D8(uint64_t a1, uint64_t a2)
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

void *sub_243D4B844()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF9B0, &qword_243D5BB90);
  v2 = *v0;
  v3 = sub_243D55148();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_243D39488(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      v18 = *(v2 + 56) + 168 * v16;
      v19 = *(v18 + 96);
      v21 = *(v18 + 48);
      v20 = *(v18 + 64);
      v42 = *(v18 + 80);
      v43 = v19;
      v40 = v21;
      v41 = v20;
      v23 = *(v18 + 128);
      v22 = *(v18 + 144);
      v24 = *(v18 + 112);
      v47 = *(v18 + 160);
      v45 = v23;
      v46 = v22;
      v44 = v24;
      v26 = *(v18 + 16);
      v25 = *(v18 + 32);
      v37 = *v18;
      v38 = v26;
      v39 = v25;
      *(*(v4 + 48) + v16) = v17;
      v27 = *(v4 + 56) + 168 * v16;
      v28 = v37;
      v29 = v39;
      *(v27 + 16) = v38;
      *(v27 + 32) = v29;
      *v27 = v28;
      v30 = v40;
      v31 = v41;
      v32 = v43;
      *(v27 + 80) = v42;
      *(v27 + 96) = v32;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      v33 = v44;
      v34 = v45;
      v35 = v46;
      *(v27 + 160) = v47;
      *(v27 + 128) = v34;
      *(v27 + 144) = v35;
      *(v27 + 112) = v33;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_243D4BA34(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v36 = *(v34 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_243D55148();
  v12 = v11;
  if (*(v10 + 16))
  {
    v32[0] = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v35 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v32[1] = v36 + 32;
    v32[2] = v36 + 16;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = *(*(v10 + 48) + 8 * v25);
        v27 = v36;
        v28 = *(v36 + 72) * v25;
        v30 = v33;
        v29 = v34;
        (*(v36 + 16))(v33, *(v10 + 56) + v28, v34);
        v31 = v35;
        *(*(v35 + 48) + 8 * v25) = v26;
        result = (*(v27 + 32))(*(v31 + 56) + v28, v30, v29);
        v20 = v37;
      }

      while (v37);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v32[0];
        v12 = v35;
        goto LABEL_21;
      }

      v24 = *(v10 + 64 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v37 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

uint64_t _s17CompanionServices12CPSXPCClientC5EventO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  if (v3 != 5)
  {
    if (v4 != 5 && v2 == v5)
    {
      v8 = *(a2 + 8);
      v9 = v3;
      sub_243D4C548(v2, v4);
      sub_243D4C548(v2, v3);
      sub_243D4C548(v2, v4);
      sub_243D4C548(v2, v3);
      v6 = _s17CompanionServices19CPSRequesterSessionC5EventO2eeoiySbAE_AEtFZ_0(&v9, &v8);
      sub_243D457F0(v2, v3);
      sub_243D457F0(v2, v4);
      sub_243D457F0(v2, v4);
      sub_243D457F0(v2, v3);
      return v6 & 1;
    }

LABEL_7:
    sub_243D4C548(*a2, *(a2 + 8));
    sub_243D4C548(v2, v3);
    sub_243D457F0(v2, v3);
    sub_243D457F0(v5, v4);
    v6 = 0;
    return v6 & 1;
  }

  if (v4 != 5)
  {
    goto LABEL_7;
  }

  sub_243D457F0(*a1, 5);
  sub_243D457F0(v5, 5);
  v6 = 1;
  return v6 & 1;
}

uint64_t _s17CompanionServices12CPSXPCClientC6shared11environmentAC14CoreUtilsSwift19CUEnvironmentValuesV_tFZ_0(uint64_t a1)
{
  v2 = sub_243D54CA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EDAEC88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27EDAF878);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v3 + 16))(v6, a1, v2);
    v8 = type metadata accessor for CPSXPCClient();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    Strong = swift_allocObject();
    *(Strong + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 0;
    sub_243D54BF8();
    *(Strong + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
    *(Strong + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations) = MEMORY[0x277D84F98];
    (*(v3 + 32))(Strong + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment, v6, v2);
    swift_weakAssign();
  }

  os_unfair_lock_unlock(&dword_27EDAF878);
  return Strong;
}

uint64_t sub_243D4BF6C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for CPSXPCClient()
{
  result = qword_27EDAF908;
  if (!qword_27EDAF908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D4C004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D0, &qword_243D5B940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D4C074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSXPCClientRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D4C0D8(uint64_t a1)
{
  v2 = type metadata accessor for CPSXPCClientRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243D4C134()
{
  v1 = sub_243D54C08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for CPSXPCClientRequest(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = (v0 + v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for CPSXPCClientRequesterRequest(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v10;

      v12 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
      v13 = v10 + v12[5];
      v14 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
      if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
LABEL_7:
          v20 = *(v13 + 1);

          goto LABEL_8;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v16 = sub_243D54BA8();
          (*(*(v16 - 8) + 8))(v13, v16);
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8F0, &qword_243D59710);
          v18 = *&v13[v17[12] + 8];

          v19 = *&v13[v17[16] + 8];

          v13 += v17[20];
          goto LABEL_7;
        }
      }

LABEL_8:
      v21 = *(v10 + v12[6] + 8);

      v22 = *(v10 + v12[7] + 8);

      v23 = *(v10 + v12[8] + 8);

      v24 = *(v10 + v12[9]);

      v25 = *(v10 + v12[10] + 8);

      v26 = *(v10 + v12[11]);
    }
  }

  v27 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v0 + v27 + 8);

  v30 = *(v0 + v28);

  return MEMORY[0x2821FE8E8](v0, v28 + 8, v3 | v7 | 7);
}

uint64_t sub_243D4C40C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_243D54C08() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CPSXPCClientRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1 + v10;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v1 + v11);

  return sub_243D47AFC(a1, v1 + v6, v1 + v9, v13, v14, v15, v3, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_243D4C548(uint64_t a1, void *a2)
{
  if (a2 != 5)
  {
    return sub_243D43CF4(a2);
  }

  return result;
}

uint64_t sub_243D4C55C@<X0>(void *a1@<X8>)
{
  sub_243D3D1D8();
  result = sub_243D54CB8();
  *a1 = v3;
  return result;
}

uint64_t sub_243D4C5B8()
{
  result = sub_243D54CA8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_243D54C08();
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

uint64_t get_enum_tag_for_layout_string_17CompanionServices12CPSXPCClientC5EventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 5;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D4C6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 5;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D4C754(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_243D4C7A4(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = a2 - 2147483643;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2 + 4;
  }

  return result;
}

uint64_t sub_243D4C838(void *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[4];
  result = sub_243D54BB8();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_243D4C874()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D4C8E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_243D4C908()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

xpc_object_t sub_243D4C940(void *a1)
{
  result = xpc_dictionary_create_reply(a1);
  if (!result)
  {
    if (qword_27EDAEC80 != -1)
    {
      swift_once();
    }

    v2 = sub_243D54D88();
    __swift_project_value_buffer(v2, qword_27EDAF860);
    v3 = sub_243D54D68();
    v4 = sub_243D55038();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_243D1C000, v3, v4, "### XPC create reply failed", v5, 2u);
      MEMORY[0x245D50A20](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_243D4CA24()
{
  result = qword_27EDAF968;
  if (!qword_27EDAF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF968);
  }

  return result;
}

uint64_t sub_243D4CA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF970, &unk_243D5BB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_243D4CAE8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_243D4CB00()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v2 = sub_243D54F68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_243D4CBB0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v5 = *(*(sub_243D54F68() - 8) + 80);

  return sub_243D48484(a1);
}

uint64_t sub_243D4CC60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CPSXPCRequesterStopInfo(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CPSXPCRequesterStopInfo(uint64_t result, int a2, int a3)
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

uint64_t CPSXPCRequesterStartInfo.init(configuration:sessionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_243D4CFEC(a1, a3, type metadata accessor for CPSRequesterUseCaseConfiguration);
  result = type metadata accessor for CPSXPCRequesterStartInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

unint64_t CPSXPCClientRequest.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CPSXPCClientRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243D4F94C(v1, v9, type metadata accessor for CPSXPCClientRequest);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 0xD000000000000010;
  }

  sub_243D4CFEC(v9, v5, type metadata accessor for CPSXPCClientRequesterRequest);
  v13[0] = 0x6574736575716572;
  v13[1] = 0xEB00000000203A72;
  v10 = CPSXPCClientRequesterRequest.description.getter();
  MEMORY[0x245D4FE20](v10);

  v11 = v13[0];
  sub_243D507EC(v5, type metadata accessor for CPSXPCClientRequesterRequest);
  return v11;
}

uint64_t sub_243D4CFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243D4D054()
{
  if (*v0)
  {
    result = 0x6574736575716572;
  }

  else
  {
    result = 0x74736F6E67616964;
  }

  *v0;
  return result;
}

uint64_t sub_243D4D098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736F6E67616964 && a2 == 0xEA00000000006369;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

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

uint64_t sub_243D4D184(uint64_t a1)
{
  v2 = sub_243D4F6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4D1C0(uint64_t a1)
{
  v2 = sub_243D4F6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4D1FC(uint64_t a1)
{
  v2 = sub_243D4F760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4D238(uint64_t a1)
{
  v2 = sub_243D4F760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4D274(uint64_t a1)
{
  v2 = sub_243D4F70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4D2B0(uint64_t a1)
{
  v2 = sub_243D4F70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCClientRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF9C0, &qword_243D5BBD0);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v26 - v4;
  v29 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  v5 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF9C8, &qword_243D5BBD8);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for CPSXPCClientRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF9D0, &qword_243D5BBE0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D4F6B8();
  sub_243D55338();
  sub_243D4F94C(v34, v14, type metadata accessor for CPSXPCClientRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v30;
    sub_243D4CFEC(v14, v30, type metadata accessor for CPSXPCClientRequesterRequest);
    v36 = 1;
    sub_243D4F70C();
    v22 = v31;
    sub_243D55218();
    sub_243D4F808(&qword_27EDAF9E8, type metadata accessor for CPSXPCClientRequesterRequest);
    v23 = v33;
    sub_243D55268();
    (*(v32 + 8))(v22, v23);
    sub_243D507EC(v21, type metadata accessor for CPSXPCClientRequesterRequest);
  }

  else
  {
    v35 = 0;
    sub_243D4F760();
    sub_243D55218();
    sub_243D4F7B4();
    v25 = v28;
    sub_243D55268();
    (*(v27 + 8))(v10, v25);
  }

  return (*(v16 + 8))(v19, v15);
}

uint64_t CPSXPCClientRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA00, &qword_243D5BBE8);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA08, &qword_243D5BBF0);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA10, &unk_243D5BBF8);
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = type metadata accessor for CPSXPCClientRequest(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v47 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_243D4F6B8();
  v27 = v59;
  sub_243D55328();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v48 = v22;
  v49 = v24;
  v59 = v10;
  v50 = v19;
  v28 = v57;
  v29 = v58;
  v31 = v55;
  v30 = v56;
  v32 = sub_243D55208();
  v33 = (2 * *(v32 + 16)) | 1;
  v61 = v32;
  v62 = v32 + 32;
  v63 = 0;
  v64 = v33;
  v34 = sub_243D2ABDC();
  if (v34 == 2 || v63 != v64 >> 1)
  {
    v38 = sub_243D55108();
    swift_allocError();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560) + 48);
    *v40 = v15;
    sub_243D55198();
    sub_243D550F8();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v31 + 8))(v14, v30);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  if (v34)
  {
    v65 = 1;
    sub_243D4F70C();
    sub_243D55188();
    v35 = v29;
    v59 = v15;
    type metadata accessor for CPSXPCClientRequesterRequest(0);
    sub_243D4F808(&qword_27EDAFA18, type metadata accessor for CPSXPCClientRequesterRequest);
    v36 = v50;
    v37 = v53;
    sub_243D551E8();
    (*(v54 + 8))(v28, v37);
    (*(v31 + 8))(v14, v30);
    swift_unknownObjectRelease();
    v57 = 0;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v65 = 0;
    sub_243D4F760();
    v43 = v59;
    sub_243D55188();
    v35 = v29;
    sub_243D4F850();
    v44 = v52;
    sub_243D551E8();
    v57 = 0;
    (*(v51 + 8))(v43, v44);
    (*(v31 + 8))(v14, v30);
    swift_unknownObjectRelease();
    v45 = v48;
    swift_storeEnumTagMultiPayload();
    v36 = v45;
  }

  v46 = v49;
  sub_243D4CFEC(v36, v49, type metadata accessor for CPSXPCClientRequest);
  sub_243D4CFEC(v46, v35, type metadata accessor for CPSXPCClientRequest);
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_243D4DE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 2003789939 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D4DE94(uint64_t a1)
{
  v2 = sub_243D4F8A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4DED0(uint64_t a1)
{
  v2 = sub_243D4F8A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4DF0C(uint64_t a1)
{
  v2 = sub_243D4F8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4DF48(uint64_t a1)
{
  v2 = sub_243D4F8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCClientDiagnosticRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA28, &qword_243D5BC08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA30, &qword_243D5BC10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D4F8A4();
  sub_243D55338();
  sub_243D4F8F8();
  sub_243D55218();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t CPSXPCClientDiagnosticRequest.hashValue.getter()
{
  sub_243D552E8();
  MEMORY[0x245D50230](0);
  return sub_243D55308();
}

uint64_t CPSXPCClientDiagnosticRequest.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA48, &qword_243D5BC18);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA50, &qword_243D5BC20);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D4F8A4();
  sub_243D55328();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_243D55208();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_243D2ABE0() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_243D55108();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560) + 48);
    *v19 = &type metadata for CPSXPCClientDiagnosticRequest;
    sub_243D55198();
    sub_243D550F8();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_243D4F8F8();
  sub_243D55188();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_243D4E52C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA28, &qword_243D5BC08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA30, &qword_243D5BC10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D4F8A4();
  sub_243D55338();
  sub_243D4F8F8();
  sub_243D55218();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t CPSXPCClientRequesterRequest.description.getter()
{
  v1 = v0;
  started = type metadata accessor for CPSXPCRequesterStartInfo(0);
  v3 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_243D4F94C(v1, v9, type metadata accessor for CPSXPCClientRequesterRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v20 = 0;
    v21 = 0xE000000000000000;
    MEMORY[0x245D4FE20](0x203A706F7473, 0xE600000000000000);
    v18 = 1029990771;
    v19 = 0xE400000000000000;
    v17 = v10;
    v11 = sub_243D55288();
    MEMORY[0x245D4FE20](v11);

    MEMORY[0x245D4FE20](v18, v19);

    return v20;
  }

  else
  {
    sub_243D4CFEC(v9, v5, type metadata accessor for CPSXPCRequesterStartInfo);
    v20 = 0x203A7472617473;
    v21 = 0xE700000000000000;
    v18 = 1029990771;
    v19 = 0xE400000000000000;
    v17 = *&v5[*(started + 20)];
    v13 = sub_243D55288();
    MEMORY[0x245D4FE20](v13);

    MEMORY[0x245D4FE20](8236, 0xE200000000000000);
    v14 = CPSRequesterUseCaseConfiguration.description.getter();
    MEMORY[0x245D4FE20](v14);

    MEMORY[0x245D4FE20](v18, v19);

    v12 = v20;
    sub_243D507EC(v5, type metadata accessor for CPSXPCRequesterStartInfo);
  }

  return v12;
}

uint64_t sub_243D4E96C()
{
  if (*v0)
  {
    result = 1886352499;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t sub_243D4E99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

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

uint64_t sub_243D4EA74(uint64_t a1)
{
  v2 = sub_243D5084C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4EAB0(uint64_t a1)
{
  v2 = sub_243D5084C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4EAEC(uint64_t a1)
{
  v2 = sub_243D50948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4EB28(uint64_t a1)
{
  v2 = sub_243D50948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4EB64(uint64_t a1)
{
  v2 = sub_243D508A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4EBA0(uint64_t a1)
{
  v2 = sub_243D508A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCClientRequesterRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA58, &qword_243D5BC28);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &started - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA60, &qword_243D5BC30);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = &started - v7;
  started = type metadata accessor for CPSXPCRequesterStartInfo(0);
  v8 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v10 = &started - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&started - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA68, &qword_243D5BC38);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &started - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D5084C();
  sub_243D55338();
  sub_243D4F94C(v34, v14, type metadata accessor for CPSXPCClientRequesterRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v14;
    v37 = 1;
    sub_243D508A0();
    v22 = v29;
    sub_243D55218();
    v35 = v21;
    sub_243D508F4();
    v23 = v33;
    sub_243D55268();
    (*(v32 + 8))(v22, v23);
  }

  else
  {
    sub_243D4CFEC(v14, v10, type metadata accessor for CPSXPCRequesterStartInfo);
    v36 = 0;
    sub_243D50948();
    v24 = v28;
    sub_243D55218();
    sub_243D4F808(&qword_27EDAFA90, type metadata accessor for CPSXPCRequesterStartInfo);
    v25 = v31;
    sub_243D55268();
    (*(v30 + 8))(v24, v25);
    sub_243D507EC(v10, type metadata accessor for CPSXPCRequesterStartInfo);
  }

  return (*(v16 + 8))(v19, v15);
}

uint64_t CPSXPCClientRequesterRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA98, &qword_243D5BC40);
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAA0, &qword_243D5BC48);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAA8, &qword_243D5BC50);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v48 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_243D5084C();
  v25 = v58;
  sub_243D55328();
  if (!v25)
  {
    v48 = v17;
    v49 = v22;
    v58 = v20;
    v27 = v55;
    v26 = v56;
    v28 = v57;
    v29 = sub_243D55208();
    v30 = (2 * *(v29 + 16)) | 1;
    v60 = v29;
    v61 = v29 + 32;
    v62 = 0;
    v63 = v30;
    v31 = sub_243D2ABDC();
    v32 = v9;
    if (v31 == 2 || v62 != v63 >> 1)
    {
      v39 = sub_243D55108();
      swift_allocError();
      v41 = v40;
      v42 = v12;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560) + 48);
      *v41 = v13;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v27 + 8))(v42, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        LOBYTE(v64) = 1;
        sub_243D508A0();
        v33 = v54;
        sub_243D55188();
        v34 = v28;
        sub_243D5099C();
        v35 = v50;
        sub_243D551E8();
        (*(v53 + 8))(v33, v35);
        (*(v27 + 8))(v12, v32);
        swift_unknownObjectRelease();
        v36 = v48;
        *v48 = v64;
        swift_storeEnumTagMultiPayload();
        v37 = v36;
        v38 = v49;
        sub_243D4CFEC(v37, v49, type metadata accessor for CPSXPCClientRequesterRequest);
      }

      else
      {
        LOBYTE(v64) = 0;
        sub_243D50948();
        v45 = v26;
        sub_243D55188();
        type metadata accessor for CPSXPCRequesterStartInfo(0);
        sub_243D4F808(&qword_27EDAFAB8, type metadata accessor for CPSXPCRequesterStartInfo);
        v46 = v58;
        v47 = v51;
        sub_243D551E8();
        (*(v52 + 8))(v45, v47);
        (*(v27 + 8))(v12, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v49;
        sub_243D4CFEC(v46, v49, type metadata accessor for CPSXPCClientRequesterRequest);
        v34 = v57;
      }

      sub_243D4CFEC(v38, v34, type metadata accessor for CPSXPCClientRequesterRequest);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

unint64_t sub_243D4F6B8()
{
  result = qword_27EDAF9D8;
  if (!qword_27EDAF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF9D8);
  }

  return result;
}

unint64_t sub_243D4F70C()
{
  result = qword_27EDAF9E0;
  if (!qword_27EDAF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF9E0);
  }

  return result;
}

unint64_t sub_243D4F760()
{
  result = qword_27EDAF9F0;
  if (!qword_27EDAF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF9F0);
  }

  return result;
}

unint64_t sub_243D4F7B4()
{
  result = qword_27EDAF9F8;
  if (!qword_27EDAF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF9F8);
  }

  return result;
}

uint64_t sub_243D4F808(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243D4F850()
{
  result = qword_27EDAFA20;
  if (!qword_27EDAFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA20);
  }

  return result;
}

unint64_t sub_243D4F8A4()
{
  result = qword_27EDAFA38;
  if (!qword_27EDAFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA38);
  }

  return result;
}

unint64_t sub_243D4F8F8()
{
  result = qword_27EDAFA40;
  if (!qword_27EDAFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA40);
  }

  return result;
}

uint64_t sub_243D4F94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t CPSXPCRequesterStartInfo.description.getter()
{
  v4 = *(v0 + *(type metadata accessor for CPSXPCRequesterStartInfo(0) + 20));
  v1 = sub_243D55288();
  MEMORY[0x245D4FE20](v1);

  MEMORY[0x245D4FE20](8236, 0xE200000000000000);
  v2 = CPSRequesterUseCaseConfiguration.description.getter();
  MEMORY[0x245D4FE20](v2);

  return 1029990771;
}

uint64_t sub_243D4FABC()
{
  if (*v0)
  {
    result = 0x496E6F6973736573;
  }

  else
  {
    result = 0x72756769666E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_243D4FB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

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

uint64_t sub_243D4FBF4(uint64_t a1)
{
  v2 = sub_243D509F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4FC30(uint64_t a1)
{
  v2 = sub_243D509F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCRequesterStartInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAC0, &qword_243D5BC58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D509F0();
  sub_243D55338();
  v13[15] = 0;
  type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  sub_243D4F808(&qword_27EDAF2B0, type metadata accessor for CPSRequesterUseCaseConfiguration);
  sub_243D55268();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CPSXPCRequesterStartInfo(0) + 20));
    v13[14] = 1;
    sub_243D55278();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CPSXPCRequesterStartInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAD0, &qword_243D5BC60);
  v22 = *(v25 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v22 - v8;
  started = type metadata accessor for CPSXPCRequesterStartInfo(0);
  v11 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D509F0();
  sub_243D55328();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v13;
  v16 = v22;
  v17 = v23;
  v27 = 0;
  sub_243D4F808(&qword_27EDAF2C0, type metadata accessor for CPSRequesterUseCaseConfiguration);
  sub_243D551E8();
  v18 = v15;
  sub_243D4CFEC(v24, v15, type metadata accessor for CPSRequesterUseCaseConfiguration);
  v26 = 1;
  v19 = v25;
  v20 = sub_243D551F8();
  (*(v16 + 8))(v9, v19);
  *(v18 + *(started + 20)) = v20;
  sub_243D4F94C(v18, v17, type metadata accessor for CPSXPCRequesterStartInfo);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_243D507EC(v18, type metadata accessor for CPSXPCRequesterStartInfo);
}

uint64_t sub_243D50164(uint64_t a1)
{
  v5 = *(v1 + *(a1 + 20));
  v2 = sub_243D55288();
  MEMORY[0x245D4FE20](v2);

  MEMORY[0x245D4FE20](8236, 0xE200000000000000);
  v3 = CPSRequesterUseCaseConfiguration.description.getter();
  MEMORY[0x245D4FE20](v3);

  return 1029990771;
}

uint64_t CPSXPCRequesterStopInfo.description.getter()
{
  v3 = *v0;
  v1 = sub_243D55288();
  MEMORY[0x245D4FE20](v1);

  return 1029990771;
}

uint64_t sub_243D5029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D5032C(uint64_t a1)
{
  v2 = sub_243D50A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D50368(uint64_t a1)
{
  v2 = sub_243D50A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCRequesterStopInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAD8, &qword_243D5BC68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D50A44();
  sub_243D55338();
  sub_243D55278();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CPSXPCRequesterStopInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAE8, &qword_243D5BC70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D50A44();
  sub_243D55328();
  if (!v2)
  {
    v11 = sub_243D551F8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_243D50648(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAD8, &qword_243D5BC68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D50A44();
  sub_243D55338();
  sub_243D55278();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_243D50780()
{
  v3 = *v0;
  v1 = sub_243D55288();
  MEMORY[0x245D4FE20](v1);

  return 1029990771;
}

uint64_t sub_243D507EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_243D5084C()
{
  result = qword_27EDAFA70;
  if (!qword_27EDAFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA70);
  }

  return result;
}

unint64_t sub_243D508A0()
{
  result = qword_27EDAFA78;
  if (!qword_27EDAFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA78);
  }

  return result;
}

unint64_t sub_243D508F4()
{
  result = qword_27EDAFA80;
  if (!qword_27EDAFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA80);
  }

  return result;
}

unint64_t sub_243D50948()
{
  result = qword_27EDAFA88;
  if (!qword_27EDAFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA88);
  }

  return result;
}

unint64_t sub_243D5099C()
{
  result = qword_27EDAFAB0;
  if (!qword_27EDAFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFAB0);
  }

  return result;
}

unint64_t sub_243D509F0()
{
  result = qword_27EDAFAC8;
  if (!qword_27EDAFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFAC8);
  }

  return result;
}

unint64_t sub_243D50A44()
{
  result = qword_27EDAFAE0;
  if (!qword_27EDAFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFAE0);
  }

  return result;
}

unint64_t CPSXPCServerRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_243D550E8();

  v3 = sub_243D55288();
  MEMORY[0x245D4FE20](v3);

  MEMORY[0x245D4FE20](8236, 0xE200000000000000);
  v4 = CPSRequesterSession.Event.description.getter();
  MEMORY[0x245D4FE20](v4);

  return 0xD000000000000014;
}

uint64_t sub_243D50B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574736575716572 && a2 == 0xEE00746E65764572)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D50C18(uint64_t a1)
{
  v2 = sub_243D51074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D50C54(uint64_t a1)
{
  v2 = sub_243D51074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D50C90()
{
  if (*v0)
  {
    result = 0x746E657665;
  }

  else
  {
    result = 0x496E6F6973736573;
  }

  *v0;
  return result;
}

uint64_t sub_243D50CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

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

uint64_t sub_243D50DAC(uint64_t a1)
{
  v2 = sub_243D510C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D50DE8(uint64_t a1)
{
  v2 = sub_243D510C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCServerRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAF0, &qword_243D5BC78);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAF8, &qword_243D5BC80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  v12 = *v1;
  v21[0] = v1[1];
  v14 = a1[3];
  v13 = a1[4];
  v15 = a1;
  v16 = v3;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_243D51074();
  sub_243D55338();
  sub_243D510C8();
  sub_243D55218();
  v25 = 0;
  v19 = v21[1];
  sub_243D55278();
  if (!v19)
  {
    v23 = v21[0];
    v24 = 1;
    sub_243D5111C();
    sub_243D55268();
  }

  (*(v22 + 8))(v6, v16);
  return (*(v8 + 8))(v11, v18);
}

unint64_t sub_243D51074()
{
  result = qword_27EDAFB00;
  if (!qword_27EDAFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB00);
  }

  return result;
}

unint64_t sub_243D510C8()
{
  result = qword_27EDAFB08;
  if (!qword_27EDAFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB08);
  }

  return result;
}

unint64_t sub_243D5111C()
{
  result = qword_27EDAFB10;
  if (!qword_27EDAFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB10);
  }

  return result;
}

uint64_t CPSXPCServerRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB18, &qword_243D5BC88);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB20, &qword_243D5BC90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_243D51074();
  sub_243D55328();
  if (!v2)
  {
    v15 = v29;
    v16 = v9;
    v17 = sub_243D55208();
    v18 = (2 * *(v17 + 16)) | 1;
    v32 = v17;
    v33 = v17 + 32;
    v34 = 0;
    v35 = v18;
    if ((sub_243D2ABE0() & 1) != 0 || v34 != v35 >> 1)
    {
      v19 = sub_243D55108();
      swift_allocError();
      v20 = v8;
      v22 = v21;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560) + 48);
      *v22 = &type metadata for CPSXPCServerRequest;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v19 - 8) + 104))(v22, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v16 + 8))(v12, v20);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_243D510C8();
      sub_243D55188();
      LOBYTE(v36) = 0;
      v25 = sub_243D551F8();
      v31 = 1;
      sub_243D5153C();
      sub_243D551E8();
      (*(v15 + 8))(v7, v4);
      (*(v16 + 8))(v12, v8);
      swift_unknownObjectRelease();
      v26 = v36;
      v27 = v28;
      *v28 = v25;
      v27[1] = v26;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_243D5153C()
{
  result = qword_27EDAFB28;
  if (!qword_27EDAFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB28);
  }

  return result;
}

uint64_t sub_243D515C8(uint64_t a1)
{
  v2 = sub_243D51754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D51604(uint64_t a1)
{
  v2 = sub_243D51754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCAckReply.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB30, &qword_243D5BC98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51754();
  sub_243D55338();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_243D51754()
{
  result = qword_27EDAFB38;
  if (!qword_27EDAFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB38);
  }

  return result;
}

uint64_t sub_243D517D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB30, &qword_243D5BC98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51754();
  sub_243D55338();
  return (*(v3 + 8))(v6, v2);
}

uint64_t CPSXPCShowReply.output.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_243D51930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D519B4(uint64_t a1)
{
  v2 = sub_243D51B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D519F0(uint64_t a1)
{
  v2 = sub_243D51B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCShowReply.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB40, &qword_243D5BCA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51B68();
  sub_243D55338();
  sub_243D55248();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_243D51B68()
{
  result = qword_27EDAFB48;
  if (!qword_27EDAFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB48);
  }

  return result;
}

uint64_t CPSXPCShowReply.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB50, &qword_243D5BCA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51B68();
  sub_243D55328();
  if (!v2)
  {
    v11 = sub_243D551C8();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_243D51D34()
{
  result = qword_27EDAFB58;
  if (!qword_27EDAFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB58);
  }

  return result;
}

uint64_t sub_243D51DA0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB40, &qword_243D5BCA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51B68();
  sub_243D55338();
  sub_243D55248();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_243D51EE4()
{
  result = type metadata accessor for CPSXPCClientRequesterRequest(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D51F60()
{
  result = type metadata accessor for CPSXPCRequesterStartInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D51FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_243D5205C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_243D520CC()
{
  result = type metadata accessor for CPSRequesterUseCaseConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D52150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 5;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_243D521AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = a2 - 2147483643;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_243D52310()
{
  result = qword_27EDAFB90;
  if (!qword_27EDAFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB90);
  }

  return result;
}

unint64_t sub_243D52368()
{
  result = qword_27EDAFB98;
  if (!qword_27EDAFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB98);
  }

  return result;
}

unint64_t sub_243D523C0()
{
  result = qword_27EDAFBA0;
  if (!qword_27EDAFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBA0);
  }

  return result;
}

unint64_t sub_243D52418()
{
  result = qword_27EDAFBA8;
  if (!qword_27EDAFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBA8);
  }

  return result;
}

unint64_t sub_243D52470()
{
  result = qword_27EDAFBB0;
  if (!qword_27EDAFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBB0);
  }

  return result;
}

unint64_t sub_243D524C8()
{
  result = qword_27EDAFBB8;
  if (!qword_27EDAFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBB8);
  }

  return result;
}

unint64_t sub_243D52520()
{
  result = qword_27EDAFBC0;
  if (!qword_27EDAFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBC0);
  }

  return result;
}

unint64_t sub_243D52578()
{
  result = qword_27EDAFBC8;
  if (!qword_27EDAFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBC8);
  }

  return result;
}

unint64_t sub_243D525D0()
{
  result = qword_27EDAFBD0;
  if (!qword_27EDAFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBD0);
  }

  return result;
}

unint64_t sub_243D52628()
{
  result = qword_27EDAFBD8;
  if (!qword_27EDAFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBD8);
  }

  return result;
}

unint64_t sub_243D52680()
{
  result = qword_27EDAFBE0;
  if (!qword_27EDAFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBE0);
  }

  return result;
}

unint64_t sub_243D526D8()
{
  result = qword_27EDAFBE8;
  if (!qword_27EDAFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBE8);
  }

  return result;
}

unint64_t sub_243D52730()
{
  result = qword_27EDAFBF0;
  if (!qword_27EDAFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBF0);
  }

  return result;
}

unint64_t sub_243D52788()
{
  result = qword_27EDAFBF8;
  if (!qword_27EDAFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBF8);
  }

  return result;
}

unint64_t sub_243D527E0()
{
  result = qword_27EDAFC00;
  if (!qword_27EDAFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC00);
  }

  return result;
}

unint64_t sub_243D52838()
{
  result = qword_27EDAFC08;
  if (!qword_27EDAFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC08);
  }

  return result;
}

unint64_t sub_243D52890()
{
  result = qword_27EDAFC10;
  if (!qword_27EDAFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC10);
  }

  return result;
}

unint64_t sub_243D528E8()
{
  result = qword_27EDAFC18;
  if (!qword_27EDAFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC18);
  }

  return result;
}

unint64_t sub_243D52940()
{
  result = qword_27EDAFC20;
  if (!qword_27EDAFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC20);
  }

  return result;
}

unint64_t sub_243D52998()
{
  result = qword_27EDAFC28;
  if (!qword_27EDAFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC28);
  }

  return result;
}

unint64_t sub_243D529F0()
{
  result = qword_27EDAFC30;
  if (!qword_27EDAFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC30);
  }

  return result;
}

unint64_t sub_243D52A48()
{
  result = qword_27EDAFC38;
  if (!qword_27EDAFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC38);
  }

  return result;
}

unint64_t sub_243D52AA0()
{
  result = qword_27EDAFC40;
  if (!qword_27EDAFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC40);
  }

  return result;
}

unint64_t sub_243D52AF8()
{
  result = qword_27EDAFC48;
  if (!qword_27EDAFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC48);
  }

  return result;
}

unint64_t sub_243D52B50()
{
  result = qword_27EDAFC50;
  if (!qword_27EDAFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC50);
  }

  return result;
}

unint64_t sub_243D52BA8()
{
  result = qword_27EDAFC58;
  if (!qword_27EDAFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC58);
  }

  return result;
}

unint64_t sub_243D52C00()
{
  result = qword_27EDAFC60;
  if (!qword_27EDAFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC60);
  }

  return result;
}

unint64_t sub_243D52C58()
{
  result = qword_27EDAFC68;
  if (!qword_27EDAFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC68);
  }

  return result;
}

unint64_t sub_243D52CB0()
{
  result = qword_27EDAFC70;
  if (!qword_27EDAFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC70);
  }

  return result;
}

unint64_t sub_243D52D08()
{
  result = qword_27EDAFC78;
  if (!qword_27EDAFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC78);
  }

  return result;
}

unint64_t sub_243D52D60()
{
  result = qword_27EDAFC80;
  if (!qword_27EDAFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC80);
  }

  return result;
}

unint64_t sub_243D52DB8()
{
  result = qword_27EDAFC88;
  if (!qword_27EDAFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC88);
  }

  return result;
}

unint64_t sub_243D52E10()
{
  result = qword_27EDAFC90;
  if (!qword_27EDAFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC90);
  }

  return result;
}

unint64_t sub_243D52E68()
{
  result = qword_27EDAFC98;
  if (!qword_27EDAFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC98);
  }

  return result;
}

unint64_t sub_243D52EC0()
{
  result = qword_27EDAFCA0;
  if (!qword_27EDAFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCA0);
  }

  return result;
}

unint64_t sub_243D52F18()
{
  result = qword_27EDAFCA8;
  if (!qword_27EDAFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCA8);
  }

  return result;
}

unint64_t sub_243D52F70()
{
  result = qword_27EDAFCB0;
  if (!qword_27EDAFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCB0);
  }

  return result;
}

unint64_t sub_243D52FC8()
{
  result = qword_27EDAFCB8;
  if (!qword_27EDAFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCB8);
  }

  return result;
}

unint64_t sub_243D53020()
{
  result = qword_27EDAFCC0;
  if (!qword_27EDAFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCC0);
  }

  return result;
}

unint64_t sub_243D53078()
{
  result = qword_27EDAFCC8;
  if (!qword_27EDAFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCC8);
  }

  return result;
}