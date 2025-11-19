uint64_t sub_2450CD838(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 40);
  *&v20 = *a1;
  *(&v20 + 1) = v7;
  v21 = *(a1 + 16);
  *&v22 = *(a1 + 32);
  DWORD2(v22) = v8;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  v19[0] = v20;
  v19[1] = v21;
  v19[2] = v22;
  v19[3] = v23;
  v9 = *(v3 + 16);
  sub_2450A51DC(a1, &v18);
  sub_2450C5A70(a2, a3);

  v10 = sub_2450CC304(v19);
  if (v4)
  {

    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v11 = sub_2450E5638();
    __swift_project_value_buffer(v11, qword_27EE0AEC8);
    v12 = sub_2450E5628();
    v13 = sub_2450E59A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24508F000, v12, v13, "Something went wrong when attempting to set a device property!", v14, 2u);
      MEMORY[0x245D63500](v14, -1, -1);
    }

    sub_2450CDA38();
    swift_allocError();
    goto LABEL_9;
  }

  v15 = v10;

  if (v15)
  {
    sub_2450C590C();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = 0;
    *(v16 + 16) = 1;
LABEL_9:
    swift_willThrow();
  }

  return sub_2450A51AC(&v20);
}

unint64_t sub_2450CDA38()
{
  result = qword_27EDF7E30;
  if (!qword_27EDF7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E30);
  }

  return result;
}

unint64_t sub_2450CDA8C()
{
  result = qword_27EDF7E40;
  if (!qword_27EDF7E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E38, &unk_2450EE628);
    sub_2450CDE6C(&qword_27EDF7E48, &qword_27EDF74D8, &unk_2450EB790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E40);
  }

  return result;
}

uint64_t sub_2450CDB28(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2450CDB40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2450CDB40(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_2450CDB50(a1, a2);
  }
}

uint64_t sub_2450CDB50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2450A5294(a1, a2);
  }

  return a1;
}

unint64_t sub_2450CDB64()
{
  result = qword_27EDF7E58;
  if (!qword_27EDF7E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E50, &qword_2450EE638);
    sub_2450CDE6C(&qword_27EDF7E60, &qword_27EDF74E8, &qword_2450EE640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E58);
  }

  return result;
}

unint64_t sub_2450CDC00()
{
  result = qword_27EDF7E70;
  if (!qword_27EDF7E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E68, &qword_2450EE648);
    sub_2450CDE6C(&qword_27EDF7E78, &qword_27EDF7518, &qword_2450EB7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E70);
  }

  return result;
}

uint64_t sub_2450CDC9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6DB0, &qword_2450EBB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2450CDD0C()
{
  result = qword_27EDF7E88;
  if (!qword_27EDF7E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E80, &qword_2450EE650);
    sub_2450CDE6C(&qword_27EDF7E90, &qword_27EDF74F8, &unk_2450EB7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E88);
  }

  return result;
}

uint64_t sub_2450CDDA8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_2450CDDBC(a1, a2);
  }

  return a1;
}

uint64_t sub_2450CDDBC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_2450CDDD0()
{
  result = qword_27EDF7EA0;
  if (!qword_27EDF7EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E98, &qword_2450EE658);
    sub_2450CDE6C(&qword_27EDF7EA8, &qword_27EDF7508, &unk_2450EE660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7EA0);
  }

  return result;
}

uint64_t sub_2450CDE6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2450CDEC0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2450CDEF0()
{
  result = qword_27EDF7640;
  if (!qword_27EDF7640)
  {
    type metadata accessor for CoreAudioOrchestratorServerXPC.Request(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7640);
  }

  return result;
}

uint64_t sub_2450CDF48(uint64_t a1)
{
  v2 = type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2450CDFB8()
{
  result = qword_27EDF7EB0;
  if (!qword_27EDF7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7EB0);
  }

  return result;
}

unint64_t sub_2450CE020()
{
  result = qword_27EDF7EB8;
  if (!qword_27EDF7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7EB8);
  }

  return result;
}

uint64_t sub_2450CE09C()
{
  result = sub_2450D7F88();
  qword_27EE0AEE0 = result;
  return result;
}

uint64_t _s22CoreAudioOrchestration08IsolatedaB12ClientServerC13StartIOAtTime04hostI0s5Int32Vs6UInt64V_tFZ_0(uint64_t a1)
{
  if (qword_27EDF6750 != -1)
  {
    swift_once();
  }

  v2 = sub_2450D7A98();
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  v4 = sub_2450E5628();
  v5 = sub_2450E5988();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = a1;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_24508F000, v4, v5, "Started client at time: %llu with: %d", v6, 0x12u);
    MEMORY[0x245D63500](v6, -1, -1);
  }

  return v2;
}

uint64_t sub_2450CE2B8(uint64_t (*a1)(void), const char *a2)
{
  if (qword_27EDF6750 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v3 = a1();
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_24508F000, v5, v6, a2, v7, 8u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  return v3;
}

void sub_2450CE3F0(char *a1)
{
  v1 = *a1;
  if (qword_27EDF6750 != -1)
  {
    swift_once();
  }

  v7 = v1;
  v2 = sub_2450D5BD8(&v7);
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  oslog = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_24508F000, oslog, v4, "Registered client with: %d", v5, 8u);
    MEMORY[0x245D63500](v5, -1, -1);
  }
}

void sub_2450CE538(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (v1)
    {
      v7 = 4473165;
    }

    else
    {
      v7 = 4473160;
    }

    v8 = sub_2450C0EE8(v7, 0xE300000000000000, &v13);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_24508F000, v3, v4, "Self configuring client: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245D63500](v6, -1, -1);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  if (qword_27EDF6750 != -1)
  {
    swift_once();
  }

  v14 = v1;
  v9 = sub_2450D5F58(&v14);
  oslog = sub_2450E5628();
  v10 = sub_2450E5988();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v9;
    _os_log_impl(&dword_24508F000, oslog, v10, "Self configuration returned with: %d", v11, 8u);
    MEMORY[0x245D63500](v11, -1, -1);
  }
}

uint64_t sub_2450CE76C@<X0>(uint64_t a1@<X8>)
{
  sub_2450B64AC();
  sub_2450E5778();
  v2 = sub_2450CE924();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74D8, &unk_2450EB790);
  result = sub_2450AD608(&qword_27EDF74E0, &qword_27EDF74D8, &unk_2450EB790);
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2450CE8C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_2450CE924()
{
  v1 = v0;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24508F000, v3, v4, "Launch ping received!", v5, 2u);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  *(v1 + 40) = 1;

  return sub_2450E5788();
}

double sub_2450CEA18@<D0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_27EDF6748 != -1)
  {
LABEL_28:
    swift_once();
  }

  v32 = a2;
  v6 = sub_2450E5638();
  __swift_project_value_buffer(v6, qword_27EE0AEC8);
  v7 = sub_2450E5628();
  v8 = sub_2450E5998();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_24508F000, v7, v8, "Looking for client.... %u", v9, 8u);
    MEMORY[0x245D63500](v9, -1, -1);
  }

  v3 = *(*(v3 + 16) + 16);
  v10 = v3 + 64;
  v11 = 1 << *(v3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  a2 = v12 & *(v3 + 64);
  v13 = (v11 + 63) >> 6;

  v14 = 0;
  v15 = 0x278E22000uLL;
  v33 = v3;
  while (a2)
  {
LABEL_13:
    v17 = *(*(v3 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(a2)))));
    v18 = *(v17 + 16);

    [v18 *(v15 + 3080)];
    swift_beginAccess();
    v19 = *(v17 + 24);
    v20 = type metadata accessor for UseCaseConfigurationBehavior();
    if (*(v19 + 16) && (v21 = sub_2450C8178(v20), (v22 & 1) != 0))
    {
      v23 = v15;
      v24 = a1;
      v25 = *(*(v19 + 56) + 16 * v21);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        swift_unknownObjectRetain();
      }

      a1 = v24;
      v15 = v23;
      v3 = v33;
    }

    else
    {
      v26 = 0;
    }

    [*(v17 + 16) unlock];
    if (v26)
    {
      v27 = *(*(v26 + 16) + 16);

      if (v27 == a1)
      {

        type metadata accessor for RegisteredClient();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC0, qword_2450EE8F8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          *(v32 + 32) = 0;
          result = 0.0;
          *v32 = 0u;
          *(v32 + 16) = 0u;
        }

        return result;
      }
    }

    a2 &= a2 - 1;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v16 >= v13)
    {
      break;
    }

    a2 = *(v10 + 8 * v16);
    ++v14;
    if (a2)
    {
      v14 = v16;
      goto LABEL_13;
    }
  }

  v29 = sub_2450E5628();
  v30 = sub_2450E59A8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24508F000, v29, v30, "No possible Stravinsky client was found!", v31, 2u);
    MEMORY[0x245D63500](v31, -1, -1);
  }

  *(v32 + 32) = 0;
  result = 0.0;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  return result;
}

uint64_t sub_2450CED70()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(*(v0 + 16) + 16);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * v10)));
      v12 = *v11;
      result = swift_conformsToProtocol2();
      if (result)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v14 = result;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2450D307C(0, v9[2] + 1, 1, v9);
      v9 = result;
    }

    v15 = v9[2];
    v16 = v9[3];
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v21 = v15 + 1;
      v19 = v9;
      v20 = v9[2];
      result = sub_2450D307C((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v17 = v21;
      v9 = result;
    }

    v9[2] = v17;
    v18 = &v9[2 * v15];
    v18[4] = v11;
    v18[5] = v14;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v5)
    {

      return v9;
    }

    v4 = *(v1 + 64 + 8 * v13);
    ++v8;
    if (v4)
    {
      v8 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2450CEF48@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2450CEF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v5 = *(a3 + 8);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = v4;
  return v5(v7);
}

uint64_t sub_2450CEFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  v7 = *(a5 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = v6;
  return v7(v9);
}

uint64_t sub_2450CF1E0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2450CF288;

  return sub_2450D0690();
}

uint64_t sub_2450CF288(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v5)
  {
    v7 = *(v3 + 16);
    v7[2](v7, a1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2450CF53C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2450D0E34;

  return sub_2450D07C4();
}

uint64_t sub_2450CF770(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2450D0E34;

  return sub_2450D08F8();
}

uint64_t sub_2450CF994(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2450D0E34;

  return sub_2450D0A2C();
}

uint64_t sub_2450CFA64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2450D0E60;

  return sub_2450CF994(v2);
}

uint64_t sub_2450CFB10(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2450D0E60;

  return v7();
}

uint64_t sub_2450CFBF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2450D0E60;

  return sub_2450CFB10(v2, v3, v5);
}

uint64_t sub_2450CFCB8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2450CFDA0;

  return v8();
}

uint64_t sub_2450CFDA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2450CFE98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2450D0E60;

  return sub_2450CFCB8(a1, v4, v5, v7);
}

uint64_t sub_2450CFF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2450D0220(a3, v25 - v11);
  v13 = sub_2450E5908();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2450D0290(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2450E58F8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2450E58E8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2450E5828() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_2450D0290(a3);

    return v23;
  }

LABEL_8:
  sub_2450D0290(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2450D0220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450D0290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2450D02F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2450D03F0;

  return v7(a1);
}

uint64_t sub_2450D03F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2450D04E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2450D0520(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2450D0E60;

  return sub_2450D02F8(a1, v5);
}

uint64_t sub_2450D05D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2450CFDA0;

  return sub_2450D02F8(a1, v5);
}

uint64_t sub_2450D06AC()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Enabling mic activity detection", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_2450D07E0()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Disabling mic activity detection", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_2450D0914()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Listening for mic activity detection", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_2450D0A48()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Stop listenting for mic activity detection", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_2450D0B60()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2450D0BA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2450D0E60;

  return sub_2450CF770(v2, v3);
}

uint64_t sub_2450D0C5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2450D0E60;

  return sub_2450CF53C(v2);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2450D0D48()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2450CFDA0;

  return sub_2450CF1E0(v2);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2450D0E8C(char *a1)
{
  v2 = sub_2450E56C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v13 = sub_2450E5638();
  __swift_project_value_buffer(v13, qword_27EE0AEC8);
  sub_2450D1B80(a1, v12);
  v14 = sub_2450E5628();
  v15 = sub_2450E5988();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v9;
    v18 = v17;
    v34[0] = v17;
    *v16 = 136315138;
    if (*v12)
    {
      v19 = 4473165;
    }

    else
    {
      v19 = 4473160;
    }

    sub_2450B43F0(v12);
    v20 = sub_2450C0EE8(v19, 0xE300000000000000, v34);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_24508F000, v14, v15, "Registering the client: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v21 = v18;
    v9 = v31;
    MEMORY[0x245D63500](v21, -1, -1);
    MEMORY[0x245D63500](v16, -1, -1);
  }

  else
  {

    sub_2450B43F0(v12);
  }

  v22 = *a1;
  v23 = *(v3 + 16);
  v23(v8, &a1[*(v9 + 20)], v2);
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 16) = v33;
  *(v24 + 24) = v22;
  type metadata accessor for ClientXPCConnection();
  swift_allocObject();
  v26 = v32;
  v23(v32, v8, v2);

  v27 = sub_2450A7498(v26, sub_2450D1C1C);
  (*(v3 + 8))(v8, v2);
  v28 = *(v25 + 40);
  LOBYTE(v34[0]) = v22;

  sub_2450AB974(v34, v27);

  return sub_2450E5788();
}

void sub_2450D121C(uint64_t a1, uint64_t a2, char a3)
{
  sub_2450B56B4(a1);
  v5 = *(*(a2 + 40) + 16);
  if (*(v5 + 16))
  {

    v6 = sub_2450C81F8(a3 & 1);
    if (v7)
    {
      v8 = *(**(*(v5 + 56) + 8 * v6) + 168);

      v8(v9);
    }
  }
}

uint64_t sub_2450D12D4(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v5 = sub_2450E5638();
  __swift_project_value_buffer(v5, qword_27EE0AEC8);
  v6 = sub_2450E5628();
  v7 = sub_2450E5988();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136315138;
    if (v3)
    {
      v10 = 4473165;
    }

    else
    {
      v10 = 4473160;
    }

    v11 = sub_2450C0EE8(v10, 0xE300000000000000, v21);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_24508F000, v6, v7, "Client notified about a hardware change: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245D63500](v9, -1, -1);
    MEMORY[0x245D63500](v8, -1, -1);
  }

  v12 = *(*(v2 + 40) + 16);
  if (!*(v12 + 16))
  {
    goto LABEL_14;
  }

  v13 = sub_2450C81F8(v3);
  if ((v14 & 1) == 0)
  {

    goto LABEL_14;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v21[0] = v15;
  type metadata accessor for RegisteredClient();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7ED8, &qword_2450EEBB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_15;
  }

  if (!*(&v19 + 1))
  {
LABEL_15:
    sub_24509F608(&v18, &qword_27EDF7ED0, &qword_2450EEBA8);
    return sub_2450E5788();
  }

  sub_24509551C(&v18, v21);
  v16 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_2450B071C(v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return sub_2450E5788();
}

uint64_t sub_2450D151C(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v5 = sub_2450E5638();
  __swift_project_value_buffer(v5, qword_27EE0AEC8);

  v6 = sub_2450E5628();
  v7 = sub_2450E5988();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136315138;
    if (v3)
    {
      v10 = 4473165;
    }

    else
    {
      v10 = 4473160;
    }

    v11 = sub_2450C0EE8(v10, 0xE300000000000000, v23);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_24508F000, v6, v7, "Client requested self configuration: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245D63500](v9, -1, -1);
    MEMORY[0x245D63500](v8, -1, -1);
  }

  v12 = *(*(v2 + 40) + 16);
  if (!*(v12 + 16))
  {
    goto LABEL_15;
  }

  v13 = sub_2450C81F8(v3);
  if ((v14 & 1) == 0)
  {

    goto LABEL_15;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v23[0] = v15;
  type metadata accessor for RegisteredClient();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EE8, &qword_2450EEBC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_16;
  }

  if (!*(&v21 + 1))
  {
LABEL_16:
    sub_24509F608(&v20, &qword_27EDF7EE0, &qword_2450EEBB8);
    return 2;
  }

  sub_24509551C(&v20, v23);
  v16 = *__swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v17 = sub_2450DCE04();
  if (v17 == sub_2450E5788())
  {
    v18 = sub_2450E5788();
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    return v18;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return 2;
}

uint64_t sub_2450D179C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2450D1AC4();
  sub_2450E5778();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v9[1];
      v19[0] = *v9;
      v19[1] = v11;
      v12 = sub_2450D12D4(v19);
    }

    else
    {
      v16 = *(v9 + 1);
      v19[0] = *v9;
      v20 = v16;
      v12 = sub_2450D151C(v19);
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74D8, &unk_2450EB790);
    result = sub_2450AD608(&qword_27EDF74E0, &qword_27EDF74D8, &unk_2450EB790);
    v21 = 0;
  }

  else
  {
    sub_2450D1B1C(v9, v5);
    v12 = sub_2450D0E8C(v5);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74D8, &unk_2450EB790);
    v14 = sub_2450AD608(&qword_27EDF74E0, &qword_27EDF74D8, &unk_2450EB790);
    v21 = 0;
    sub_2450B43F0(v5);
    result = v14;
  }

  *a1 = v12;
  *(a1 + 8) = 0;
  *(a1 + 16) = v21;
  *(a1 + 17) = v18;
  *(a1 + 20) = *(&v18 + 3);
  *(a1 + 24) = v13;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2450D1A58()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_2450D1AC4()
{
  result = qword_27EDF7638;
  if (!qword_27EDF7638)
  {
    type metadata accessor for CoreAudioOrchestratorServerXPC.Request(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7638);
  }

  return result;
}

uint64_t sub_2450D1B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450D1B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450D1BE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

double sub_2450D1C28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2450C8178(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2450C93C0();
      v11 = v13;
    }

    sub_2450C5C34((*(v11 + 56) + 40 * v8), a2);
    sub_2450C88BC(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_2450D1CC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2450C8178(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2450C9990();
      v11 = v16;
    }

    v12 = (*(v11 + 56) + 96 * v8);
    v13 = v12[3];
    a2[2] = v12[2];
    a2[3] = v13;
    a2[4] = v12[4];
    *(a2 + 73) = *(v12 + 73);
    v14 = v12[1];
    *a2 = *v12;
    a2[1] = v14;
    sub_2450C8F78(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *(a2 + 73) = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_2450D1E74(uint64_t a1)
{
  v2 = v1;
  result = sub_2450C9B28(a1, v32);
  v4 = v1[2];
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v1[2] = v5;
    v33 = v4 + 1;
    v34 = 0;
    sub_2450C9B28(v32, v30);
    swift_beginAccess();
    sub_2450D3DC4(v30, v5, v31);
    sub_2450D4D00(v31);
    swift_endAccess();
    v6 = v35;
    v7 = v36;
    swift_beginAccess();
    v8 = v1[4];
    v9 = MEMORY[0x277D84FA0];
    if (*(v8 + 16))
    {
      v10 = v2[4];

      v11 = sub_2450C7FE0(v6, v7);
      if (v12)
      {
        v13 = *(*(v8 + 56) + 8 * v11);
      }

      else
      {
        v13 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v13 = MEMORY[0x277D84FA0];
    }

    v28 = v13;
    sub_2450D62D8(v30, v5);
    swift_beginAccess();
    sub_2450D3C64(v13, v6, v7);
    swift_endAccess();

    v14 = v37;
    v15 = v38;
    swift_beginAccess();
    v16 = v2[5];
    if (*(v16 + 16) && (LOBYTE(v29[0]) = v15, v17 = sub_2450C8058(v14 | (v15 << 32)), (v18 & 1) != 0))
    {
      v27 = *(*(v16 + 56) + 8 * v17);
    }

    else
    {
      v27 = v9;
    }

    sub_2450D62D8(v29, v5);
    swift_beginAccess();
    LOBYTE(v25[0]) = v15;
    sub_2450D3B30(v27, v14 | (v15 << 32));
    swift_endAccess();

    v19 = v39;
    v20 = v40;
    swift_beginAccess();
    v21 = v2[6];
    if (*(v21 + 16) && (v22 = sub_2450C80E8(v19, v20), (v23 & 1) != 0))
    {
      v26 = *(*(v21 + 56) + 8 * v22);
    }

    else
    {
      v26 = v9;
    }

    sub_2450D62D8(v25, v5);
    v24 = v26;
    swift_beginAccess();
    sub_2450D39C4(v24, v19, v20);
    swift_endAccess();

    sub_2450C5B18(v32);
    return v5;
  }

  return result;
}

double sub_2450D2134@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  sub_2450D1CC4(a1, &v23);
  swift_endAccess();
  if (*(&v24 + 1))
  {
    v38 = v23;
    v39 = v24;
    v40 = v25;
    v4 = v27;
    v41 = v26;
    v5 = v28;
    v21 = v29;
    v20 = v30;
    v36 = v31;
    v37 = v32;
    v6 = v33;
    v35 = v34;
    v7 = sub_2450D1D80();
    v19 = v4;
    v8 = sub_2450D23BC(v22, v4, v5);
    if (*v9)
    {
      sub_2450D3284(a1);
    }

    (v8)(v22, 0);
    (v7)(&v23, 0);
    v10 = sub_2450D1DD0();
    v11 = sub_2450D2448(v22, v21 | (v20 << 32));
    if (*v12)
    {
      sub_2450D3284(a1);
    }

    (v11)(v22, 0);
    (v10)(&v23, 0);
    v13 = v35;
    v14 = sub_2450D1E24();
    v15 = sub_2450D24D0(v22, v6, v13);
    if (*v16)
    {
      sub_2450D3284(a1);
    }

    (v15)(v22, 0);
    (v14)(&v23, 0);
    v17 = v39;
    *a2 = v38;
    *(a2 + 16) = v17;
    result = *&v40;
    *(a2 + 32) = v40;
    *(a2 + 48) = v41;
    *(a2 + 56) = v19;
    *(a2 + 64) = v5;
    *(a2 + 72) = v21;
    *(a2 + 76) = v20;
    *(a2 + 77) = v36;
    *(a2 + 79) = v37;
    *(a2 + 80) = v6;
    *(a2 + 88) = v35;
  }

  else
  {
    sub_2450D4D00(&v23);
    result = 0.0;
    *(a2 + 73) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t (*sub_2450D23BC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2450D40E0(v6, a2, a3);
  return sub_2450D2444;
}

uint64_t (*sub_2450D2448(uint64_t **a1, unint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2450D402C(v4, a2 | ((HIDWORD(a2) & 1) << 32));
  return sub_2450D4EB4;
}

uint64_t (*sub_2450D24D0(uint64_t **a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2450D3F80(v6, a2, a3 & 1);
  return sub_2450D4EB4;
}

void sub_2450D2558(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2450D25A4(uint64_t a1)
{
  v2 = v1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);

  v5 = sub_2450E5628();
  v6 = sub_2450E5998();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(v2[3] + 16);

    _os_log_impl(&dword_24508F000, v5, v6, "querying subscriptions from set of %ld", v7, 0xCu);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  else
  {
  }

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = *a1;
    swift_beginAccess();
    v11 = v2[4];
    if (*(v11 + 16))
    {
      v12 = v2[4];

      v13 = sub_2450C7FE0(v10, v9);
      if (v14)
      {
        v15 = *(*(v11 + 56) + 8 * v13);
      }

      else
      {
        v15 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v15 = MEMORY[0x277D84FA0];
    }

    sub_2450D2A54(v15, v8);
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    v16 = *(a1 + 16);
    swift_beginAccess();
    v17 = v2[5];
    if (*(v17 + 16) && (LOBYTE(v47) = 0, v18 = sub_2450C8058(v16), (v19 & 1) != 0))
    {
      v20 = *(*(v17 + 56) + 8 * v18);
    }

    else
    {
      v20 = MEMORY[0x277D84FA0];
    }

    sub_2450D2A54(v20, v8);
  }

  v21 = MEMORY[0x277D84FA0];
  if ((*(a1 + 32) & 1) == 0)
  {
    v22 = *(a1 + 24);
    swift_beginAccess();
    v23 = v2[6];
    if (*(v23 + 16) && (v24 = sub_2450C80E8(v22, 0), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
    }

    else
    {
      v26 = MEMORY[0x277D84FA0];
    }

    sub_2450D2A54(v26, v8);
  }

  swift_beginAccess();
  if (*(v8 + 16))
  {
    v27 = *(v8 + 16);
  }

  else
  {
    v27 = v21;
  }

  v28 = *(v27 + 16);
  if (!v28)
  {

    v29 = MEMORY[0x277D84F90];
    v32 = *(MEMORY[0x277D84F90] + 16);
    if (v32)
    {
LABEL_32:
      v33 = v29 + 4;
      swift_beginAccess();
      v34 = MEMORY[0x277D84F90];
      do
      {
        v36 = *v33++;
        v35 = v36;
        v37 = v2[3];
        if (*(v37 + 16) && (v38 = sub_2450C8178(v35), (v39 & 1) != 0))
        {
          sub_2450C9B28(*(v37 + 56) + 96 * v38, &v47);
        }

        else
        {
          v50 = 0u;
          memset(v51, 0, 25);
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_2450D2CBC(0, v34[2] + 1, 1, v34);
        }

        v41 = v34[2];
        v40 = v34[3];
        if (v41 >= v40 >> 1)
        {
          v34 = sub_2450D2CBC((v40 > 1), v41 + 1, 1, v34);
        }

        v34[2] = v41 + 1;
        v42 = &v34[12 * v41];
        v43 = v48;
        v42[2] = v47;
        v42[3] = v43;
        v44 = v49;
        v45 = v50;
        v46 = v51[0];
        *(v42 + 105) = *(v51 + 9);
        v42[5] = v45;
        v42[6] = v46;
        v42[4] = v44;
        --v32;
      }

      while (v32);

      goto LABEL_45;
    }

LABEL_44:

    v34 = MEMORY[0x277D84F90];
LABEL_45:

    return v34;
  }

  v29 = sub_2450D31B0(v28, 0);
  v30 = sub_2450D4C00(&v47, v29 + 4, v28, v27);

  result = sub_24509BD4C();
  if (v30 == v28)
  {
    v32 = v29[2];
    if (v32)
    {
      goto LABEL_32;
    }

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_2450D2A54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v8 = *(a2 + 16);
    swift_bridgeObjectRetain_n();

    sub_2450D499C(v4);

    sub_2450D2B30(v5);
    sub_2450D4B08(v8);

    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = v8;
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
  }
}

uint64_t sub_2450D2B30(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_2450D62D8(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2450D2C10()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2450D2C84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_2450D2CBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EF0, &qword_2450EEC38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D38, &qword_2450EEC40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2450D2E00(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78A8, &qword_2450ECFF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2450D2F34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F20, &qword_2450EEC70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2450D307C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F10, &qword_2450EEC60);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F18, &qword_2450EEC68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2450D31B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EF8, &qword_2450EEC48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_2450D3234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_2450D3264(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2450D3284(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_2450E5EE8();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2450D7060();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_2450D3470(v7);
  result = v13;
  *v1 = v14;
  return result;
}

unint64_t sub_2450D3374(unsigned int a1)
{
  v3 = *v1;
  v4 = MEMORY[0x245D62B60](*(*v1 + 40), a1, 4);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 4 * v6) != a1)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v10 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    v14 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2450D71A0();
      v12 = v14;
    }

    v8 = *(*(v12 + 48) + 4 * v6);
    sub_2450D35F4(v6);
    v9 = 0;
    *v1 = v14;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

unint64_t sub_2450D3470(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2450E5A28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_2450E5EE8() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2450D35F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2450E5A28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 4 * v6);
        v12 = MEMORY[0x245D62B60](*(v3 + 40), *v11, 4) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 4 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2450D377C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 8 * result;
  *v4 = a2;
  *(v4 + 4) = BYTE4(a2) & 1;
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

uint64_t sub_2450D37D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v31 = v11;
  v12 = sub_2450C8178(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_2450DD9D0(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_2450C8178(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v12;
    sub_2450C93C0();
    v12 = v22;
    v19 = v31;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v23 = a1[3];
    v24 = v12;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(a1, v23);
    v26 = *(*(v23 - 8) + 64);
    MEMORY[0x28223BE20](v25);
    v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    sub_2450D4E0C(v24, a2, *v28, v19);
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v19 = v31;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 40 * v12;
  sub_2450C5C34((v19[7] + 40 * v12), a3);
  result = sub_2450C5C34(a1, v19[7] + v20);
LABEL_11:
  *v5 = v19;
  return result;
}

unint64_t sub_2450D39C4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_2450C80E8(a2, a3 & 1);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_2450DDC50(v17, isUniquelyReferenced_nonNull_native);
    result = sub_2450C80E8(a2, a3 & 1);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F00, &qword_2450EEC50);
    result = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = result;
    sub_2450C9540();
    result = v22;
    v19 = v11;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v19 = v11;
  if (v4)
  {
LABEL_7:
    v20 = v19[7];
    v21 = *(v20 + 8 * result);
    *(v20 + 8 * result) = a1;
LABEL_12:
    *v5 = v19;
    return v21;
  }

LABEL_10:
  v19[(result >> 6) + 8] |= 1 << result;
  v23 = v19[6] + 16 * result;
  *v23 = a2;
  *(v23 + 8) = a3 & 1;
  *(v19[7] + 8 * result) = a1;
  v24 = v19[2];
  v25 = v24 + 1;
  if (!__OFADD__(v24, 1))
  {
    v21 = 0;
    v19[2] = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2450D3B30(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = HIDWORD(a2) & 1;
  v10 = a2;
  v11 = sub_2450C8058(a2 | (v9 << 32));
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  LOBYTE(a2) = v12;
  if (v8[3] < v16)
  {
    sub_2450DDF10(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_2450C8058(v10 | (v9 << 32));
    if ((a2 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F08, &qword_2450EEC58);
    v11 = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_2450C96B0();
    v11 = v20;
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_2450D377C(v11, v10 | (v9 << 32), a1, v8);
    v19 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((a2 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = v8[7];
  v19 = *(v18 + 8 * v11);
  *(v18 + 8 * v11) = a1;
LABEL_11:
  *v3 = v8;
  return v19;
}

unint64_t sub_2450D3C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_2450C7FE0(a2, a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_2450DE1D8(v17, isUniquelyReferenced_nonNull_native);
    result = sub_2450C7FE0(a2, a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    sub_2450C9820();
    result = v21;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v19 = v11[7];
    v20 = *(v19 + 8 * result);
    *(v19 + 8 * result) = a1;
LABEL_12:
    *v5 = v11;
    return v20;
  }

LABEL_10:
  v11[(result >> 6) + 8] |= 1 << result;
  v22 = (v11[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v11[7] + 8 * result) = a1;
  v23 = v11[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v16)
  {
    v11[2] = v24;

    v20 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_2450D3DC4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_2450C8178(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_2450DE480(v17, isUniquelyReferenced_nonNull_native);
    result = sub_2450C8178(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v25 = result;
    sub_2450C9990();
    result = v25;
    v19 = v11;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v19 = v11;
  if (v4)
  {
LABEL_7:
    v20 = (v19[7] + 96 * result);
    v21 = v20[3];
    a3[2] = v20[2];
    a3[3] = v21;
    a3[4] = v20[4];
    *(a3 + 73) = *(v20 + 73);
    v22 = v20[1];
    *a3 = *v20;
    a3[1] = v22;
    v23 = a1[3];
    v20[2] = a1[2];
    v20[3] = v23;
    v20[4] = a1[4];
    *(v20 + 73) = *(a1 + 73);
    v24 = a1[1];
    *v20 = *a1;
    v20[1] = v24;
LABEL_12:
    *v5 = v19;
    return result;
  }

LABEL_10:
  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  v26 = (v19[7] + 96 * result);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  *(v26 + 73) = *(a1 + 73);
  v28 = a1[4];
  v26[3] = a1[3];
  v26[4] = v28;
  v26[2] = a1[2];
  v29 = v19[2];
  v16 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v16)
  {
    v19[2] = v30;
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    *(a3 + 73) = 0u;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2450D3F80(uint64_t *a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_2450D4940(v8);
  v8[9] = sub_2450D41F0(v8 + 4, a2, a3 & 1, isUniquelyReferenced_nonNull_native);
  return sub_2450D4EB8;
}

uint64_t (*sub_2450D402C(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_2450D4940(v6);
  v6[9] = sub_2450D4494(v6 + 4, a2 | ((HIDWORD(a2) & 1) << 32), isUniquelyReferenced_nonNull_native);
  return sub_2450D4EB8;
}

uint64_t (*sub_2450D40E0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_2450D4968(v8);
  v8[9] = sub_2450D46A4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2450D418C;
}

void sub_2450D4190(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2450D41F0(uint64_t *a1, uint64_t a2, char a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 32) = a3;
  *(v10 + 8) = a2;
  *(v10 + 16) = v4;
  v12 = *v4;
  v13 = sub_2450C80E8(a2, a3 & 1);
  *(v11 + 33) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2450C9540();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2450DDC50(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2450C80E8(a2, a3 & 1);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F00, &qword_2450EEC50);
    result = sub_2450E5E88();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 24) = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_2450D4354;
}

void sub_2450D4354(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 33);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (*(v2 + 33))
    {
      goto LABEL_9;
    }

    v7 = *(v2 + 32);
    v8 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = v6[6] + 16 * v5;
    *v9 = v8;
    *(v9 + 8) = v7 & 1;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_2450C8A38(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v12 = *(v2 + 32);
    v13 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v14 = v6[6] + 16 * v5;
    *v14 = v13;
    *(v14 + 8) = v12 & 1;
    *(v6[7] + 8 * v5) = v3;
    v15 = v6[2];
    v11 = __OFADD__(v15, 1);
    v4 = v15 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v16 = *v2;

  free(v2);
}

void (*sub_2450D4494(uint64_t *a1, unint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = HIDWORD(a2) & 1;
  v12 = a2;
  v13 = sub_2450C8058(a2 | (v11 << 32));
  *(v9 + 32) = v14 & 1;
  v15 = *(v10 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v10 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      sub_2450C96B0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2450DDF10(v18, a3 & 1);
    v22 = *v4;
    v13 = sub_2450C8058(v12 | (v11 << 32));
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F08, &qword_2450EEC58);
    result = sub_2450E5E88();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v13;
  if (v19)
  {
    v24 = *(*(*v4 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_2450D45FC;
}

void sub_2450D45FC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_2450D377C(v4, v1[1] | ((HIDWORD(v1[1]) & 1) << 32), v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_2450C8C00(v1[3], *v1[2]);
  }

  v6 = *v1;

  free(v1);
}

void (*sub_2450D46A4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2450C7FE0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2450C9820();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2450DE1D8(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2450C7FE0(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2450E5E88();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_2450D47FC;
}

void sub_2450D47FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_2450D4D68(*(v13 + 48) + 16 * v12);
      sub_2450C8DC8(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_2450D4940(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2450D4EAC;
}

uint64_t (*sub_2450D4968(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2450D4990;
}

uint64_t sub_2450D499C(uint64_t result)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_2450D3284(v11))
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 48) + ((v3 << 9) | (8 * v10)));
      v12 = *v1;
      if (*(*v1 + 16))
      {
        v13 = *(v12 + 40);
        v14 = sub_2450E5EE8();
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          break;
        }
      }

LABEL_6:
      result = sub_2450D62D8(&v18, v11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v17 = ~v15;
    while (*(*(v12 + 48) + 8 * v16) != v11)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= i)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

uint64_t sub_2450D4B08(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_2450D3284(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_2450D4C00(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2450D4D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D38, &qword_2450EEC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2450D4E0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for HADRegisteredClient();
  v14 = &off_2858011B0;
  *&v12 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2450C5C34(&v12, a4[7] + 40 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2450D4ED0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2450D4EF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_2450D4F30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F38, &qword_2450EECF8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450D54BC();
  sub_2450E5F58();
  v17 = 0;
  sub_2450E5DB8();
  if (!v5)
  {
    v16 = 1;
    sub_2450E5D88();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_2450D50D0()
{
  if (*v0)
  {
    result = 0x646F43726F727265;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_2450D5114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002450F3EF0 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2450E5E68();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2450D5204(uint64_t a1)
{
  v2 = sub_2450D54BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D5240(uint64_t a1)
{
  v2 = sub_2450D54BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D527C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2450D52F4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_2450D52F4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F28, &qword_2450EECF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2450D54BC();
  sub_2450E5F48();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v14[31] = 0;
    v8 = sub_2450E5CB8();
    v10 = v9;
    v14[30] = 1;
    sub_2450E5C88();
    v13 = v12;
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v14[24] = v10 & 1;
    v14[8] = v13 & 1;
  }

  return v8;
}

unint64_t sub_2450D54BC()
{
  result = qword_27EDF7F30;
  if (!qword_27EDF7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F30);
  }

  return result;
}

unint64_t sub_2450D5524()
{
  result = qword_27EDF7F40;
  if (!qword_27EDF7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F40);
  }

  return result;
}

unint64_t sub_2450D557C()
{
  result = qword_27EDF7F48;
  if (!qword_27EDF7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F48);
  }

  return result;
}

unint64_t sub_2450D55D4()
{
  result = qword_27EDF7F50;
  if (!qword_27EDF7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F50);
  }

  return result;
}

uint64_t sub_2450D5628()
{
  sub_2450D5690();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_2450D5690()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Destroying IO Proc", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  result = [*(v0 + 16) destroyHALIOProc];
  if (result)
  {
    v6 = result;
    v7 = sub_2450E5628();
    v8 = sub_2450E59A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24508F000, v7, v8, "Could not destory IOProc for provided deviceID!", v9, 2u);
      MEMORY[0x245D63500](v9, -1, -1);
    }

    return v6;
  }

  return result;
}

uint64_t sub_2450D58E4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 36);
  v7 = *(a3 + 72);
  v9 = *a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  return v7(&v9);
}

uint64_t sub_2450D5938(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 36);
  v7 = *(a3 + 80);
  v9 = *a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  return v7(&v9);
}

uint64_t sub_2450D5990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v5 = *(a3 + 88);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = v4;
  return v5(v7);
}

uint64_t sub_2450D59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  v7 = *(a5 + 96);
  v9[0] = *a1;
  v9[1] = v5;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = v6;
  return v7(v9);
}

void *sub_2450D5A88()
{
  v1 = v0;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24508F000, v3, v4, "OrchestratorClient deallocated", v5, 2u);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  v6 = v1[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 3);
  v7 = v1[8];

  return v1;
}

uint64_t sub_2450D5B80()
{
  sub_2450D5A88();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2450D5BD8(char *a1)
{
  v2 = v1;
  v4 = sub_2450E56C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v10 = sub_2450E5638();
  __swift_project_value_buffer(v10, qword_27EE0AEC8);
  v11 = sub_2450E5628();
  v12 = sub_2450E5988();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24508F000, v11, v12, "OrchestratorClient should register", v13, 2u);
    MEMORY[0x245D63500](v13, -1, -1);
  }

  v14 = *(v2 + 64);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v9;

  sub_2450AC180(sub_2450D7C44, v16);

  v18 = *(v2 + 16);
  v21 = v9;
  if (*(v14 + 16))
  {

    sub_2450E5728();

    v19 = sub_2450B0C1C(&v21, v8);
    (*(v5 + 8))(v8, v4);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2450D5E24(char a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 16);
    v11 = a3 & 1;
    sub_2450B0EF8(&v11, a1 & 1);
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v7 = sub_2450E5638();
    __swift_project_value_buffer(v7, qword_27EE0AEC8);
    v8 = sub_2450E5628();
    v9 = sub_2450E59A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24508F000, v8, v9, "Client unavailable for hardware availability handler!", v10, 2u);
      MEMORY[0x245D63500](v10, -1, -1);
    }
  }
}

uint64_t sub_2450D5F58(_BYTE *a1)
{
  v2 = v1;
  LOBYTE(v3) = *a1;
  if (qword_27EDF6748 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v4 = sub_2450E5638();
    __swift_project_value_buffer(v4, qword_27EE0AEC8);
    v5 = sub_2450E5628();
    v6 = sub_2450E5988();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24508F000, v5, v6, "OrchestratorClient submitting available devices for configuration", v7, 2u);
      MEMORY[0x245D63500](v7, -1, -1);
    }

    v31 = MEMORY[0x277D84FA0];
    v8 = sub_2450D82CC();
    v28 = v3;
    v29 = v2;
    v9 = v8[6];
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v10 = v8[6];
      }

      v11 = v8[6];

      sub_2450E5A48();
      type metadata accessor for AudioDeviceInfo();
      sub_2450CB9D8();
      sub_2450E5948();
      v9 = v32;
      v12 = v33;
      v3 = v34;
      v13 = v35;
      v14 = v36;
    }

    else
    {
      v15 = -1 << *(v9 + 32);
      v12 = v9 + 56;
      v3 = ~v15;
      v16 = -v15;
      v17 = v16 < 64 ? ~(-1 << v16) : -1;
      v14 = v17 & *(v9 + 56);
      v18 = v8[6];

      v13 = 0;
    }

    if (v9 < 0)
    {
      break;
    }

LABEL_13:
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (v14)
    {
LABEL_17:
      v2 = (v20 - 1) & v20;
      v22 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));

      if (v22)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= ((v3 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v20 = *(v12 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  while (sub_2450E5AB8())
  {
    type metadata accessor for AudioDeviceInfo();
    swift_dynamicCast();
    v22 = v30;
    v21 = v13;
    v2 = v14;
    if (!v30)
    {
      break;
    }

LABEL_21:
    v23 = *(v22 + 24);
    v24 = *(v22 + 32);

    sub_2450D64A0(&v30, v23, v24);

    v13 = v21;
    v14 = v2;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_23:
  sub_24509BD4C();

  v25 = *(v29 + 16);
  LOBYTE(v30) = v28;
  v26 = sub_2450B10BC(&v30, v31);

  return v26;
}

uint64_t sub_2450D62D8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_2450E5EE8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2450D6C9C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2450D63B8(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x245D62B60](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_2450D6DBC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2450D64A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2450E5EF8();
  sub_2450E5838();
  v9 = sub_2450E5F38();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2450E5E68() & 1) != 0)
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

    sub_2450D6EE0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2450D65F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F58, "܅");
  result = sub_2450E5B28();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      result = sub_2450E5EE8();
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2450D6814(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F60, "ޅ");
  result = sub_2450E5B28();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
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
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x245D62B60](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2450D6A3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C50, &unk_2450EDC90);
  result = sub_2450E5B28();
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
      sub_2450E5EF8();
      sub_2450E5838();
      result = sub_2450E5F38();
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

uint64_t sub_2450D6C9C(uint64_t result, unint64_t a2, char a3)
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
    sub_2450D65F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2450D7060();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2450D743C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_2450E5EE8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
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
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2450E5E78();
  __break(1u);
  return result;
}

uint64_t sub_2450D6DBC(uint64_t result, unint64_t a2, char a3)
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
    sub_2450D6814(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2450D71A0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2450D762C(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x245D62B60](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2450E5E78();
  __break(1u);
  return result;
}

uint64_t sub_2450D6EE0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2450D6A3C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2450D72E0();
      goto LABEL_16;
    }

    sub_2450D7820(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2450E5EF8();
  sub_2450E5838();
  result = sub_2450E5F38();
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

      result = sub_2450E5E68();
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
  result = sub_2450E5E78();
  __break(1u);
  return result;
}

void *sub_2450D7060()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F58, "܅");
  v2 = *v0;
  v3 = sub_2450E5B18();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2450D71A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F60, "ޅ");
  v2 = *v0;
  v3 = sub_2450E5B18();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2450D72E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C50, &unk_2450EDC90);
  v2 = *v0;
  v3 = sub_2450E5B18();
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

uint64_t sub_2450D743C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F58, "܅");
  result = sub_2450E5B28();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = sub_2450E5EE8();
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

        goto LABEL_28;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_2450D762C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F60, "ޅ");
  result = sub_2450E5B28();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      result = MEMORY[0x245D62B60](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_2450D7820(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C50, &unk_2450EDC90);
  result = sub_2450E5B28();
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
      sub_2450E5EF8();

      sub_2450E5838();
      result = sub_2450E5F38();
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

uint64_t sub_2450D7AD8(const char *a1, uint64_t (*a2)(void))
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  v4 = sub_2450E5628();
  v5 = sub_2450E5988();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24508F000, v4, v5, a1, v6, 2u);
    MEMORY[0x245D63500](v6, -1, -1);
  }

  return a2();
}

uint64_t sub_2450D7BD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2450D7C0C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void *sub_2450D7C74(uint64_t a1, void *a2)
{
  v4 = sub_2450E56F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v12[3] = type metadata accessor for TempClientHardware();
  v12[4] = &off_2858027B8;
  v12[0] = a1;
  a2[10] = sub_2450AC098;
  a2[11] = 0;
  sub_2450AD6FC(v12, (a2 + 5));
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0xE000000000000000;

  sub_2450E56E8();
  v6 = sub_2450E5738();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2450E56D8();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v10 = a2[2];
  a2[2] = v9;

  return a2;
}

uint64_t sub_2450D7D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TempClientHardware();
  v26[3] = v6;
  v26[4] = &off_2858027B8;
  v26[0] = a2;
  *(a3 + 16) = a1;
  sub_2450AD6FC(v26, a3 + 24);
  sub_2450AD6FC(a3 + 24, v24);
  v7 = v25;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v23[3] = v6;
  v23[4] = &off_2858027B8;
  v23[0] = v13;
  type metadata accessor for ClientHardwareXPCService();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v6);
  v16 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_2450D7C74(*v18, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  *(a3 + 64) = v20;
  return a3;
}

uint64_t sub_2450D7F88()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "OrchestratorClient allocated", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  type metadata accessor for OrchestratorClientMessageProtocol();
  v4 = swift_allocObject();
  type metadata accessor for RegistrationMessageAuthor();
  *(v4 + 24) = swift_allocObject();
  type metadata accessor for ServerXPCConnection();
  swift_allocObject();
  *(v4 + 16) = sub_2450A7230(0xD00000000000002ELL, 0x80000002450F3A50, sub_2450B09FC);
  v5 = type metadata accessor for TempClientHardware();
  v15[3] = v5;
  v15[4] = &off_2858027B8;
  v15[0] = swift_allocObject();
  type metadata accessor for OrchestratorClient();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v15, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_2450D7D94(v4, *v10, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return v12;
}

void sub_2450D81EC()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }
}

void *sub_2450D82CC()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  type metadata accessor for AudioSystemInfo();
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0xE000000000000000;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  result[6] = MEMORY[0x277D84FA0];
  return result;
}

void sub_2450D83D8()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  oslog = sub_2450E5628();
  v1 = sub_2450E5988();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24508F000, oslog, v1, "TempClientHardware - NO OP!", v2, 2u);
    MEMORY[0x245D63500](v2, -1, -1);
  }
}

double sub_2450D84C0@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24508F000, v3, v4, "TempClientHardware - NO OP!", v5, 2u);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2450D85AC()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_2450D869C()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_2450D877C()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2450D8904@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (qword_27EDF6718 != -1)
  {
    result = swift_once();
  }

  v4 = qword_27EE0AEA0;
  if (*(qword_27EE0AEA0 + 16) && (result = sub_2450C81F8(v3), (v5 & 1) != 0))
  {
    v6 = (*(v4 + 56) + 16 * result);
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (qword_27EDF6720 != -1)
  {
    result = swift_once();
  }

  v9 = qword_27EE0AEA8;
  if (*(qword_27EE0AEA8 + 16))
  {
    result = sub_2450C81F8(v3);
    if (v10)
    {
      v11 = (*(v9 + 56) + 16 * result);
      v12 = *v11;
      v13 = v11[1];

      if ((v3 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_17:
      if (qword_27EDF6728 == -1)
      {
LABEL_18:
        v15 = qword_27EE0AEB0;
        if (*(qword_27EE0AEB0 + 16) && (result = sub_2450C81F8(1), (v16 & 1) != 0))
        {
          v17 = *(*(v15 + 56) + 8 * result);
          result = v17;
        }

        else
        {
          v17 = 0;
        }

        if (qword_27EDF6730 != -1)
        {
          result = swift_once();
        }

        v18 = qword_27EE0AEB8;
        if (*(qword_27EE0AEB8 + 16) && (result = sub_2450C81F8(1), (v19 & 1) != 0))
        {
          result = sub_24509FAE0(*(v18 + 56) + 32 * result, v27);
        }

        else
        {
          memset(v27, 0, sizeof(v27));
        }

        if (qword_27EDF6758 == -1)
        {
          if (v17)
          {
            goto LABEL_30;
          }
        }

        else
        {
          result = swift_once();
          if (v17)
          {
LABEL_30:
            result = sub_2450C5BCC(v27, v24, &qword_27EDF7D48, &unk_2450EDDC0);
            if (v25)
            {
              if (v8)
              {
                if (v13)
                {
                  v20 = type metadata accessor for NSXPCClientPortal();
                  swift_allocObject();
                  v21 = v17;
                  v22 = sub_24509F760(v21, v24, v7, v8, v12, v13);
                  v25 = v20;
                  v26 = &off_2857FFAE8;
                  v24[0] = v22;
                  swift_beginAccess();
                  sub_2450D8DA4(v24, &xmmword_27EE0AEE8);
                  swift_endAccess();

                  sub_24509F608(v27, &qword_27EDF7D48, &unk_2450EDDC0);
                  goto LABEL_34;
                }

LABEL_48:
                __break(1u);
                return result;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_42:
      result = swift_once();
      goto LABEL_18;
    }
  }

  v12 = 0;
  v13 = 0;
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (qword_27EDF6758 == -1)
  {
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

  result = swift_once();
  if (!v8)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_14:
  if (!v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v14 = type metadata accessor for SwiftXPCClientPortal();
  swift_allocObject();
  v25 = v14;
  v26 = &off_2858011E0;
  v24[0] = sub_2450B14E0(v7, v8, v12, v13);
  swift_beginAccess();
  sub_2450D8DA4(v24, &xmmword_27EE0AEE8);
  swift_endAccess();
LABEL_34:
  if (qword_27EDF6758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2450C5BCC(&xmmword_27EE0AEE8, v24, &qword_27EDF7F68, qword_2450EF090);
  v23 = v25;
  sub_24509F608(v24, &qword_27EDF7F68, qword_2450EF090);
  if (v23)
  {
    LOBYTE(v24[0]) = v3;
    sub_2450CE3F0(v24);
    if (v3)
    {
      LOBYTE(v24[0]) = v3;
      sub_2450CE538(v24);
    }
  }

  return sub_2450C5BCC(&xmmword_27EE0AEE8, a2, &qword_27EDF7F68, qword_2450EF090);
}

double sub_2450D8D68()
{
  qword_27EE0AF08 = 0;
  result = 0.0;
  xmmword_27EE0AEE8 = 0u;
  unk_27EE0AEF8 = 0u;
  return result;
}

uint64_t sub_2450D8DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F68, qword_2450EF090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450D8E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2450D8EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2450D8F54(uint64_t a1)
{
  v2 = sub_2450DAA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D8F90(uint64_t a1)
{
  v2 = sub_2450DAA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D90A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, void (*a8)(void))
{
  v18[2] = a3;
  v19 = a5;
  v18[1] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8();
  sub_2450E5F58();
  v21 = 0;
  v16 = v18[3];
  sub_2450E5DC8();
  if (!v16)
  {
    v20 = 1;
    sub_2450E5D88();
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_2450D9240()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2450D927C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002450F4120 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450D9360(uint64_t a1)
{
  v2 = sub_2450DAA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D939C(uint64_t a1)
{
  v2 = sub_2450DAA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D9404@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

unint64_t sub_2450D94C8()
{
  result = qword_27EDF7F70;
  if (!qword_27EDF7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F70);
  }

  return result;
}

unint64_t sub_2450D9548()
{
  result = qword_27EDF7F78;
  if (!qword_27EDF7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F78);
  }

  return result;
}

uint64_t sub_2450D95AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450D9634(uint64_t a1)
{
  v2 = sub_2450DC158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D9670(uint64_t a1)
{
  v2 = sub_2450DC158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D96AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2450DB40C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2450D96D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8098, &qword_2450EF988);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DC158();
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2450D9814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8080, &qword_2450EF970);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBEC8();
  sub_2450E5F58();
  LOBYTE(v16) = 0;
  sub_2450E5DC8();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_2450C5A70(v14, v15);
    sub_2450A2C60();
    sub_2450E5E08();
    sub_2450A5294(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2450D99B0(uint64_t a1)
{
  v2 = sub_2450DBEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D99EC(uint64_t a1)
{
  v2 = sub_2450DBEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D9A28@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2450C5A70(v2, v3);
}

uint64_t sub_2450D9A34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2450DB5A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2450D9A84(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8078, &qword_2450EF968);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBE74();
  sub_2450E5F58();
  v16 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v15 = 1;
    sub_2450E5DD8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2450D9C18()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2450D9C4C(uint64_t a1)
{
  v2 = sub_2450DBE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D9C88(uint64_t a1)
{
  v2 = sub_2450DBE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D9CD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2450DB7F8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_2450D9D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8070, &qword_2450EF960);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBE20();
  sub_2450E5F58();
  v16 = 0;
  sub_2450E5DC8();
  if (!v5)
  {
    v15 = 1;
    sub_2450E5DC8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2450D9EB8(uint64_t a1)
{
  v2 = sub_2450DBE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D9EF4(uint64_t a1)
{
  v2 = sub_2450DBE20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D9F30@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_2450D9F3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2450DB9E0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2450D9F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8068, &qword_2450EF958);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBDCC();
  sub_2450E5F58();
  v15 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v14 = 1;
    sub_2450E5DF8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2450DA120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450DA1F8(uint64_t a1)
{
  v2 = sub_2450DBDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DA234(uint64_t a1)
{
  v2 = sub_2450DBDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DA27C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2450DBBE4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2450DA2CC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF80A0, &qword_2450EF990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DC104();
  sub_2450E5F58();
  v16 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v15 = 1;
    sub_2450E5E28();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2450DA45C()
{
  if (*v0)
  {
    result = 0x4965736143657375;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2450DA494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4965736143657375 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450DA578(uint64_t a1)
{
  v2 = sub_2450DC104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DA5B4(uint64_t a1)
{
  v2 = sub_2450DC104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DA5F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2450DBF1C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_2450DA640(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F90, &unk_2450EF210);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for SetPropertyHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D20, &qword_2450EDD98);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DAA9C();
  sub_2450E5F48();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_2450E5CC8();
    v10[14] = 1;
    sub_2450E5C88();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_2450DA844(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F80, &unk_2450EF200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for GetPropertyHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D30, &unk_2450EDDA0);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DAA48();
  sub_2450E5F48();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_2450E5CC8();
    v10[14] = 1;
    sub_2450E5C88();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2450DAA48()
{
  result = qword_27EDF7F88;
  if (!qword_27EDF7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F88);
  }

  return result;
}

unint64_t sub_2450DAA9C()
{
  result = qword_27EDF7F98;
  if (!qword_27EDF7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F98);
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

uint64_t sub_2450DAB04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2450DAB4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2450DABB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2450DAC00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2450DAC54(uint64_t a1, int a2)
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

uint64_t sub_2450DACA0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2450DAD14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_2450DAD5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2450DADD0()
{
  result = qword_27EDF7FB0;
  if (!qword_27EDF7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FB0);
  }

  return result;
}

unint64_t sub_2450DAE28()
{
  result = qword_27EDF7FB8;
  if (!qword_27EDF7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FB8);
  }

  return result;
}

unint64_t sub_2450DAE7C(uint64_t a1)
{
  result = sub_2450B8C0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2450DAEA4(uint64_t a1)
{
  result = sub_2450B8B64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2450DAECC(uint64_t a1)
{
  result = sub_2450B8AB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2450DAEF4(uint64_t a1)
{
  result = sub_2450B88E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2450DAF48()
{
  result = qword_27EDF7FC0;
  if (!qword_27EDF7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FC0);
  }

  return result;
}

unint64_t sub_2450DAFC8()
{
  result = qword_27EDF7FC8;
  if (!qword_27EDF7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FC8);
  }

  return result;
}

unint64_t sub_2450DB048()
{
  result = qword_27EDF7FD0;
  if (!qword_27EDF7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FD0);
  }

  return result;
}

unint64_t sub_2450DB0C8()
{
  result = qword_27EDF7FD8;
  if (!qword_27EDF7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FD8);
  }

  return result;
}

unint64_t sub_2450DB148()
{
  result = qword_27EDF7FE0;
  if (!qword_27EDF7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FE0);
  }

  return result;
}

uint64_t sub_2450DB1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450DB204()
{
  result = qword_27EDF7FE8;
  if (!qword_27EDF7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FE8);
  }

  return result;
}

unint64_t sub_2450DB258()
{
  result = qword_27EDF7FF0;
  if (!qword_27EDF7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FF0);
  }

  return result;
}

unint64_t sub_2450DB2B0()
{
  result = qword_27EDF7FF8;
  if (!qword_27EDF7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FF8);
  }

  return result;
}

unint64_t sub_2450DB308()
{
  result = qword_27EDF8000;
  if (!qword_27EDF8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8000);
  }

  return result;
}

unint64_t sub_2450DB360()
{
  result = qword_27EDF8008;
  if (!qword_27EDF8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8008);
  }

  return result;
}

unint64_t sub_2450DB3B8()
{
  result = qword_27EDF8010;
  if (!qword_27EDF8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8010);
  }

  return result;
}

uint64_t sub_2450DB40C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8088, &unk_2450EF978);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[1] = &type metadata for GetPropertyResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78B0, &unk_2450ED000);
  sub_2450E5818();

  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DC158();
  sub_2450E5F48();
  if (!v1)
  {
    v9 = sub_2450E5CC8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

uint64_t sub_2450DB5A0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8048, &unk_2450EF938);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v12[0] = &type metadata for DataPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7938, &unk_2450ED150);
  sub_2450E5818();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBEC8();
  sub_2450E5F48();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    v8 = sub_2450E5CC8();

    v13 = 1;
    sub_2450A2B84();
    sub_2450E5D08();
    (*(v4 + 8))(v7, v3);
    v10 = v12[0];
    v11 = v12[1];

    sub_2450C5A70(v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_2450A5294(v10, v11);
  }

  return v8;
}

uint64_t sub_2450DB7F8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8038, &qword_2450EF928);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for BoolPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7940, &qword_2450EF930);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBE74();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5CD8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_2450DB9E0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8028, &unk_2450EF918);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for StringPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7948, &unk_2450ED160);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBE20();
  sub_2450E5F48();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_2450E5CC8();
    v10[14] = 1;
    sub_2450E5CC8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_2450DBBE4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8018, &unk_2450EF908);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for IntPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7950, &qword_2450EDDD0);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBDCC();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2450DBDCC()
{
  result = qword_27EDF8020;
  if (!qword_27EDF8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8020);
  }

  return result;
}

unint64_t sub_2450DBE20()
{
  result = qword_27EDF8030;
  if (!qword_27EDF8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8030);
  }

  return result;
}

unint64_t sub_2450DBE74()
{
  result = qword_27EDF8040;
  if (!qword_27EDF8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8040);
  }

  return result;
}

unint64_t sub_2450DBEC8()
{
  result = qword_27EDF8050;
  if (!qword_27EDF8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8050);
  }

  return result;
}

uint64_t sub_2450DBF1C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8058, &qword_2450EF948);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for IsolatedUseCaseDevicesAvailable;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7930, &qword_2450EF950);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DC104();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5D28();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2450DC104()
{
  result = qword_27EDF8060;
  if (!qword_27EDF8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8060);
  }

  return result;
}

unint64_t sub_2450DC158()
{
  result = qword_27EDF8090;
  if (!qword_27EDF8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8090);
  }

  return result;
}

unint64_t sub_2450DC210()
{
  result = qword_27EDF80A8;
  if (!qword_27EDF80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80A8);
  }

  return result;
}

unint64_t sub_2450DC268()
{
  result = qword_27EDF80B0;
  if (!qword_27EDF80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80B0);
  }

  return result;
}

unint64_t sub_2450DC2C0()
{
  result = qword_27EDF80B8;
  if (!qword_27EDF80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80B8);
  }

  return result;
}

unint64_t sub_2450DC318()
{
  result = qword_27EDF80C0;
  if (!qword_27EDF80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80C0);
  }

  return result;
}

unint64_t sub_2450DC370()
{
  result = qword_27EDF80C8;
  if (!qword_27EDF80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80C8);
  }

  return result;
}

unint64_t sub_2450DC3C8()
{
  result = qword_27EDF80D0;
  if (!qword_27EDF80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80D0);
  }

  return result;
}

unint64_t sub_2450DC420()
{
  result = qword_27EDF80D8;
  if (!qword_27EDF80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80D8);
  }

  return result;
}

unint64_t sub_2450DC478()
{
  result = qword_27EDF80E0;
  if (!qword_27EDF80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80E0);
  }

  return result;
}

unint64_t sub_2450DC4D0()
{
  result = qword_27EDF80E8;
  if (!qword_27EDF80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80E8);
  }

  return result;
}

unint64_t sub_2450DC528()
{
  result = qword_27EDF80F0;
  if (!qword_27EDF80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80F0);
  }

  return result;
}

unint64_t sub_2450DC580()
{
  result = qword_27EDF80F8;
  if (!qword_27EDF80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80F8);
  }

  return result;
}

unint64_t sub_2450DC5D8()
{
  result = qword_27EDF8100;
  if (!qword_27EDF8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8100);
  }

  return result;
}

unint64_t sub_2450DC630()
{
  result = qword_27EDF8108;
  if (!qword_27EDF8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8108);
  }

  return result;
}

unint64_t sub_2450DC688()
{
  result = qword_27EDF8110;
  if (!qword_27EDF8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8110);
  }

  return result;
}

unint64_t sub_2450DC6E0()
{
  result = qword_27EDF8118;
  if (!qword_27EDF8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8118);
  }

  return result;
}

unint64_t sub_2450DC738()
{
  result = qword_27EDF8120;
  if (!qword_27EDF8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8120);
  }

  return result;
}

unint64_t sub_2450DC790()
{
  result = qword_27EDF8128;
  if (!qword_27EDF8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8128);
  }

  return result;
}

unint64_t sub_2450DC7E8()
{
  result = qword_27EDF8130;
  if (!qword_27EDF8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8130);
  }

  return result;
}

uint64_t sub_2450DC8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_2450C8178(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a1 + 56) + 16 * v4);
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = result;
    swift_unknownObjectRetain();
    return v8;
  }

  return result;
}

uint64_t sub_2450DC964()
{
  v1 = v0;
  if (qword_27EDF6738 != -1)
  {
    swift_once();
  }

  v2 = off_27EDF7D98;
  if (*(off_27EDF7D98 + 2) && (v3 = sub_2450C8284(1836346212), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 8 * v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7600, &unk_2450F0020);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2450EA8E0;
    type metadata accessor for UseCaseConfigurationBehavior();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(inited + 32) = v7;
    *(inited + 40) = &off_285801758;
    swift_retain_n();
    v8 = sub_2450C9B84(inited);
    swift_setDeallocating();
    v9 = *(inited + 32);
    swift_unknownObjectRelease();
    v10 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];

    v11 = v8;
    *(v1 + 16) = v10;
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v12 = sub_2450E5638();
    __swift_project_value_buffer(v12, qword_27EE0AEC8);
    v13 = sub_2450E5628();
    v14 = sub_2450E59A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24508F000, v13, v14, "Could not register the MAD client with appropriate behaviors!", v15, 2u);
      MEMORY[0x245D63500](v15, -1, -1);
    }

    *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v11 = sub_2450C3028(MEMORY[0x277D84F90]);
  }

  *(v1 + 24) = v11;
  return v1;
}

uint64_t sub_2450DCB78(uint64_t a1)
{
  type metadata accessor for ClientHardwareConnectionBehavior();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;

  sub_2450DE74C(v4, v1, &off_285802190);

  v5 = *(v3 + 16);
  type metadata accessor for ClientHardwareProtocol();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  type metadata accessor for HardwareConfigurationBehavior();
  *(swift_allocObject() + 16) = v6;

  sub_2450DE74C(v7, v1, &off_285801E68);

  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  type metadata accessor for ADMBehavior();
  *(swift_allocObject() + 16) = v9;

  sub_2450DE74C(v10, v1, &off_2857FFA48);
}

id sub_2450DCCC4()
{
  v1 = type metadata accessor for ADMBehavior();
  v2 = *(v0 + 16);
  [v2 lock];
  swift_beginAccess();
  sub_2450C7F5C(v1);
  swift_endAccess();
  [v2 unlock];
  v3 = type metadata accessor for HardwareConfigurationBehavior();
  [v2 lock];
  swift_beginAccess();
  sub_2450C7F5C(v3);
  swift_endAccess();
  [v2 unlock];
  v4 = type metadata accessor for ClientHardwareConnectionBehavior();
  [v2 lock];
  swift_beginAccess();
  sub_2450C7F5C(v4);
  swift_endAccess();
  return [v2 unlock];
}

uint64_t sub_2450DCE04()
{
  v1 = v0;
  v2 = *(v0 + 16);
  [v2 lock];
  swift_beginAccess();
  v3 = sub_2450DC8F0(*(v1 + 24), type metadata accessor for UseCaseConfigurationBehavior);
  [v2 unlock];
  if (v3)
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v4 = sub_2450E5638();
    __swift_project_value_buffer(v4, qword_27EE0AEC8);

    v5 = sub_2450E5628();
    v6 = sub_2450E5988();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = sub_2450E5928();
      v11 = sub_2450C0EE8(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_24508F000, v5, v6, "Available Hardware UIDs: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x245D63500](v8, -1, -1);
      MEMORY[0x245D63500](v7, -1, -1);
    }

    v12 = sub_2450DD098();
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v13 = sub_2450E5638();
    __swift_project_value_buffer(v13, qword_27EE0AEC8);
    v14 = sub_2450E5628();
    v15 = sub_2450E59A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24508F000, v14, v15, "MAD is missing Use Case Configuration Behavior!", v16, 2u);
      MEMORY[0x245D63500](v16, -1, -1);
    }

    return 1;
  }

  return v12;
}

uint64_t sub_2450DD098()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "MAD self configuration executing...", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 16);
  [v5 lock];
  swift_beginAccess();
  v6 = sub_2450DC8F0(*(v0 + 24), type metadata accessor for UseCaseConfigurationBehavior);
  [v5 unlock];
  if (!v6)
  {
    sub_2450B09A8();
    v13 = swift_allocError();
    *v14 = 0xD000000000000025;
    *(v14 + 8) = 0x80000002450F4180;
    *(v14 + 16) = 2;
    swift_willThrow();
    goto LABEL_15;
  }

  [v5 lock];
  v7 = sub_2450DC8F0(*(v0 + 24), type metadata accessor for HardwareConfigurationBehavior);
  [v5 unlock];
  if (!v7)
  {
    sub_2450B09A8();
    v13 = swift_allocError();
    *v15 = 0xD000000000000033;
    *(v15 + 8) = 0x80000002450F41B0;
    *(v15 + 16) = 2;
    swift_willThrow();
LABEL_14:

LABEL_15:
    v17 = sub_2450E5628();
    v18 = sub_2450E59A8();
    if (os_log_type_enabled(v17, v18))
    {
      v12 = 2;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24508F000, v17, v18, "Something went wrong when self configuring MAD", v19, 2u);
      MEMORY[0x245D63500](v19, -1, -1);
    }

    else
    {

      return 2;
    }

    return v12;
  }

  [v5 lock];
  v8 = sub_2450DC8F0(*(v0 + 24), type metadata accessor for ADMBehavior);
  [v5 unlock];
  if (!v8)
  {
    sub_2450B09A8();
    v13 = swift_allocError();
    *v16 = 0xD000000000000020;
    *(v16 + 8) = 0x80000002450F41F0;
    *(v16 + 16) = 2;
    swift_willThrow();

    goto LABEL_14;
  }

  v9 = sub_2450E5628();
  v10 = sub_2450E5988();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24508F000, v9, v10, "...MAD self configuration completed!", v11, 2u);
    MEMORY[0x245D63500](v11, -1, -1);
  }

  return sub_2450E5788();
}

uint64_t sub_2450DD4B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CC8, &qword_2450EDD28);
  result = sub_2450E5C18();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v22 = *(v8 + 40);
      result = sub_2450E5EE8();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2450DD724(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CE0, &unk_2450EDD40);
  v33 = a2;
  result = sub_2450E5C18();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2450E5EF8();
      sub_2450E5838();

      result = sub_2450E5F38();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2450DD9D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CE8, &unk_2450EE350);
  result = sub_2450E5C18();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_2450C5C34(v22, v33);
      }

      else
      {
        sub_2450AD6FC(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_2450E5EE8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_2450C5C34(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2450DDC50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CB0, &qword_2450EDD10);
  v38 = a2;
  result = sub_2450E5C18();
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_2450E5EF8();
      sub_2450E5F18();
      if (!v25)
      {
        MEMORY[0x245D62B90](v24);
      }

      result = sub_2450E5F38();
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

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
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
        goto LABEL_39;
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
      goto LABEL_37;
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

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_2450DDF10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CB8, &qword_2450EDD18);
  v39 = a2;
  result = sub_2450E5C18();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v22 = 8 * (v19 | (v9 << 6));
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + v22;
      v25 = *v24;
      v26 = *(v24 + 4);
      v27 = *(v23 + v22);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_2450E5EF8();
      sub_2450E5F18();
      if (!v26)
      {
        sub_2450E5F28();
      }

      result = sub_2450E5F38();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      v18 = *(v8 + 48) + v17;
      *v18 = v25;
      *(v18 + 4) = v26;
      *(*(v8 + 56) + v17) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_37;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_2450DE1D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CC0, &qword_2450EDD20);
  v38 = a2;
  result = sub_2450E5C18();
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
      sub_2450E5EF8();
      sub_2450E5838();
      result = sub_2450E5F38();
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

uint64_t sub_2450DE480(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7DF8, &qword_2450EE348);
  result = sub_2450E5C18();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
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
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = *(*(v5 + 48) + 8 * v25);
      v27 = (*(v5 + 56) + 96 * v25);
      if (a2)
      {
        v28 = v27[1];
        v42 = *v27;
        v43 = v28;
        v29 = v27[2];
        v30 = v27[3];
        v31 = v27[4];
        *(v46 + 9) = *(v27 + 73);
        v45 = v30;
        v46[0] = v31;
        v44 = v29;
      }

      else
      {
        sub_2450C9B28(v27, &v42);
      }

      v32 = *(v8 + 40);
      result = sub_2450E5EE8();
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
      *(*(v8 + 48) + 8 * v16) = v26;
      v17 = (*(v8 + 56) + 96 * v16);
      v18 = v43;
      *v17 = v42;
      v17[1] = v18;
      v19 = v44;
      v20 = v45;
      v21 = v46[0];
      *(v17 + 73) = *(v46 + 9);
      v17[3] = v20;
      v17[4] = v21;
      v17[2] = v19;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v40 = 1 << *(v5 + 32);
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

    v3 = v41;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

id sub_2450DE74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  [v6 lock];
  swift_beginAccess();
  ObjectType = swift_getObjectType();

  v8 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + 24);
  *(a2 + 24) = 0x8000000000000000;
  sub_2450DE83C(a1, ObjectType, isUniquelyReferenced_nonNull_native, &v11, a3);
  *(a2 + 24) = v11;
  swift_endAccess();
  return [v6 unlock];
}

unint64_t sub_2450DE83C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v10 = *a4;
  result = sub_2450C8178(a2);
  v13 = v10[2];
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
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_2450DD4B0(v16, a3 & 1);
      v20 = *a4;
      result = sub_2450C8178(a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2450E5E88();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2450C9100();
      result = v19;
    }
  }

  v22 = *a4;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a2;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a5;
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
  v24 = *v23;
  *v23 = a1;
  v23[1] = a5;

  return swift_unknownObjectRelease();
}

uint64_t sub_2450DE9BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8178, &qword_2450F01E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DF540();
  sub_2450E5F58();
  v15 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v14 = 1;
    sub_2450E5DF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2450DEB50()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2450DEB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002450F4220 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450DEC6C(uint64_t a1)
{
  v2 = sub_2450DF540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DECA8(uint64_t a1)
{
  v2 = sub_2450DF540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DECE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2450DF11C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2450DED34(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8180, &qword_2450F01F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DF4EC();
  sub_2450E5F58();
  v16 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v15 = 1;
    sub_2450E5E28();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2450DEEC4(uint64_t a1)
{
  v2 = sub_2450DF4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DEF00(uint64_t a1)
{
  v2 = sub_2450DF4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DEF3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2450DF304(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_2450DEFB8()
{
  result = qword_27EDF8138;
  if (!qword_27EDF8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8138);
  }

  return result;
}

uint64_t sub_2450DF038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450DF074()
{
  result = qword_27EDF8140;
  if (!qword_27EDF8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8140);
  }

  return result;
}

unint64_t sub_2450DF0C8()
{
  result = qword_27EDF8148;
  if (!qword_27EDF8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8148);
  }

  return result;
}

uint64_t sub_2450DF11C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8160, &qword_2450F01D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for IncomingConfigurationEventHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8168, &qword_2450F01E0);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DF540();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_2450DF304(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8150, &unk_2450F01C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67E0, &unk_2450E7470);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DF4EC();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5D28();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2450DF4EC()
{
  result = qword_27EDF8158;
  if (!qword_27EDF8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8158);
  }

  return result;
}

unint64_t sub_2450DF540()
{
  result = qword_27EDF8170;
  if (!qword_27EDF8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8170);
  }

  return result;
}

unint64_t sub_2450DF5B8()
{
  result = qword_27EDF8188;
  if (!qword_27EDF8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8188);
  }

  return result;
}

unint64_t sub_2450DF610()
{
  result = qword_27EDF8190;
  if (!qword_27EDF8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8190);
  }

  return result;
}

unint64_t sub_2450DF668()
{
  result = qword_27EDF8198;
  if (!qword_27EDF8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8198);
  }

  return result;
}

unint64_t sub_2450DF6C0()
{
  result = qword_27EDF81A0;
  if (!qword_27EDF81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81A0);
  }

  return result;
}

unint64_t sub_2450DF718()
{
  result = qword_27EDF81A8;
  if (!qword_27EDF81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81A8);
  }

  return result;
}

unint64_t sub_2450DF770()
{
  result = qword_27EDF81B0;
  if (!qword_27EDF81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81B0);
  }

  return result;
}

uint64_t sub_2450DF7D4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF81D0, &qword_2450F04E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E0014();
  sub_2450E5F58();
  v16 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v15 = 1;
    sub_2450E5E28();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2450DF964(uint64_t a1)
{
  v2 = sub_2450E0014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DF9A0(uint64_t a1)
{
  v2 = sub_2450E0014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DF9DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2450DFE2C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_2450DFA58()
{
  result = qword_27EDF81B8;
  if (!qword_27EDF81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81B8);
  }

  return result;
}

uint64_t sub_2450DFAAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8200, &qword_2450F06C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E06A8();
  sub_2450E5F58();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_2450E5DC8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v19[14] = 1;
  sub_2450E5D68();
  v15 = *(v3 + 8);
  v19[13] = 2;
  sub_2450E5E28();
  v16 = *(v3 + 9);
  v19[12] = 3;
  sub_2450E5E28();
  v18 = *(v3 + 10);
  v19[11] = 4;
  sub_2450E5E28();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2450DFC8C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4955656369766564;
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