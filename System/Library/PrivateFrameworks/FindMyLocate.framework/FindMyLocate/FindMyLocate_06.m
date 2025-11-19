uint64_t sub_1B80492A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *MEMORY[0x1E69E7D40] & *a3;
  return MEMORY[0x1EEE6DFA0](sub_1B8049300, 0, 0);
}

uint64_t sub_1B8049300()
{
  v17 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1B80C8CBC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  sub_1B804D2AC();
  sub_1B80C8C9C();

  v0[9] = v0[2];
  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B80C900C();
  __swift_project_value_buffer(v6, qword_1EBA7AD10);

  v7 = sub_1B80C8FEC();
  v8 = sub_1B80C941C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD290, v16);
    *(v9 + 12) = 2080;
    type metadata accessor for Location();
    sub_1B8032C04();
    v11 = sub_1B80C902C();
    v13 = sub_1B7FB84FC(v11, v12, v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s decodedLocations: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v9, -1, -1);
  }

  v14 = v0[5];

  return MEMORY[0x1EEE6DFA0](sub_1B804973C, v14, 0);
}

uint64_t sub_1B804973C()
{
  v1 = *(v0 + 40);
  *(v0 + 80) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B80497AC, 0, 0);
}

uint64_t sub_1B80497AC()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 64);
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v12 = (*(v2 + 8) + **(v2 + 8));
    v4 = *(*(v2 + 8) + 4);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_1B8049920;
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);

    return v12(v6, v3, v2);
  }

  else
  {
    v9 = *(v0 + 72);

    v10 = *(v0 + 56);
    (*(v0 + 48))(0);
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1B8049920()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    swift_unknownObjectRelease();

    v7 = sub_1B8049A84;
  }

  else
  {

    swift_unknownObjectRelease();
    v7 = sub_1B800E41C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8049A84()
{
  v17 = v0;
  v1 = v0[12];
  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1EBA7AD10);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD290, &v16);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s failed with: %@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v1;
  v12(v1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8049CF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B80C89DC();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v8;
  v16[5] = a3;
  v16[6] = a4;
  sub_1B7FC62D8(a1, a2);

  MEMORY[0x1B8CB72D0](a6, a7, 2, a8, v16);
}

uint64_t sub_1B8049DC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *MEMORY[0x1E69E7D40] & *a3;
  return MEMORY[0x1EEE6DFA0](sub_1B8049E28, 0, 0);
}

uint64_t sub_1B8049E28()
{
  v18 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1B80C8CBC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBB88, sub_1B7FDC440);
  sub_1B80C8C9C();

  v6 = v0[2];
  v0[9] = v6;
  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1B80C900C();
  __swift_project_value_buffer(v7, qword_1EBA7AD10);

  v8 = sub_1B80C8FEC();
  v9 = sub_1B80C941C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD230, v17);
    *(v10 + 12) = 2080;
    v12 = MEMORY[0x1B8CB7B30](v6, &type metadata for Handle);
    v14 = sub_1B7FB84FC(v12, v13, v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1B7FB5000, v8, v9, "%{public}s decodedHandles: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v11, -1, -1);
    MEMORY[0x1B8CB8970](v10, -1, -1);
  }

  v15 = v0[5];

  return MEMORY[0x1EEE6DFA0](sub_1B804A27C, v15, 0);
}

uint64_t sub_1B804A27C()
{
  v1 = *(v0 + 40);
  *(v0 + 80) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B804A2EC, 0, 0);
}

uint64_t sub_1B804A2EC()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 64);
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v12 = (*(v2 + 16) + **(v2 + 16));
    v4 = *(*(v2 + 16) + 4);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_1B804A460;
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);

    return v12(v6, v3, v2);
  }

  else
  {
    v9 = *(v0 + 72);

    v10 = *(v0 + 56);
    (*(v0 + 48))(0);
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1B804A460()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    swift_unknownObjectRelease();

    v7 = sub_1B804A5C4;
  }

  else
  {

    swift_unknownObjectRelease();
    v7 = sub_1B804E038;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B804A5C4()
{
  v17 = v0;
  v1 = v0[12];
  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1EBA7AD10);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD230, &v16);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s failed with: %@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v1;
  v12(v1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B804A808(int a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;

  v12 = sub_1B80C8D3C();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  a7(v12, v14, a6, v15);

  sub_1B7FC3CCC(v12, v14);
}

uint64_t sub_1B804A8DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B80C89DC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = v4;
  sub_1B7FC62D8(a1, a2);

  MEMORY[0x1B8CB72D0]("stewieServiceStateChanged(_:completion:)", 40, 2, &unk_1B80D3308, v9);
}

uint64_t sub_1B804A9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = *MEMORY[0x1E69E7D40] & *a5;
  v6 = *(*(sub_1B80C896C() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804AA80, 0, 0);
}

uint64_t sub_1B804AA80()
{
  v31 = v0;
  v1 = *(v0 + 80);
  sub_1B7FC62D8(*(v0 + 32), *(v0 + 40));
  sub_1B80C895C();
  sub_1B804B6D0();
  sub_1B80C961C();
  if (*(v0 + 24))
  {
    if (qword_1EBA65AD0 != -1)
    {
      swift_once();
    }

    v2 = sub_1B80C900C();
    __swift_project_value_buffer(v2, qword_1EBA7AD10);
    v3 = sub_1B80C8FEC();
    v4 = sub_1B80C93FC();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1B7FB84FC(0xD000000000000028, 0x80000001B80CD1D0, &v30);
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s invalid state raw value", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CB8970](v6, -1, -1);
    v7 = v5;
LABEL_11:
    MEMORY[0x1B8CB8970](v7, -1, -1);
LABEL_12:

    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    sub_1B8010040();
    v16 = swift_allocError();
    *v17 = 0;
    v15();

    v18 = *(v0 + 80);

    v19 = *(v0 + 8);

    return v19();
  }

  v8 = *(v0 + 16);
  SecureLocationsStewie.ServiceState.init(rawValue:)(v8);
  v9 = v30;
  *(v0 + 27) = v30;
  if (v9 == 10)
  {
    if (qword_1EBA65AD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1B80C900C();
    __swift_project_value_buffer(v10, qword_1EBA7AD10);
    v3 = sub_1B80C8FEC();
    v11 = sub_1B80C93FC();
    if (!os_log_type_enabled(v3, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1B7FB84FC(0xD000000000000028, 0x80000001B80CD1D0, &v30);
    *(v12 + 12) = 2050;
    *(v12 + 14) = v8;
    _os_log_impl(&dword_1B7FB5000, v3, v11, "%{public}s unknown state: %{public}ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B8CB8970](v13, -1, -1);
    v7 = v12;
    goto LABEL_11;
  }

  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v21 = sub_1B80C900C();
  *(v0 + 88) = __swift_project_value_buffer(v21, qword_1EBA7AD10);
  v22 = sub_1B80C8FEC();
  v23 = sub_1B80C941C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_1B7FB84FC(0xD000000000000028, 0x80000001B80CD1D0, &v30);
    *(v24 + 12) = 2082;
    *(v0 + 26) = v9;
    v26 = sub_1B80C90EC();
    v28 = sub_1B7FB84FC(v26, v27, &v30);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_1B7FB5000, v22, v23, "%{public}s state: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v25, -1, -1);
    MEMORY[0x1B8CB8970](v24, -1, -1);
  }

  v29 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1B804AF48, v29, 0);
}

uint64_t sub_1B804AF48()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B804AFB8, 0, 0);
}

uint64_t sub_1B804AFB8()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 72);
    *(v0 + 25) = *(v0 + 27);
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v11 = (*(v2 + 24) + **(v2 + 24));
    v4 = *(*(v2 + 24) + 4);
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_1B804B144;
    v6 = *(v0 + 96);

    return v11(v0 + 25, v3, v2);
  }

  else
  {
    v8 = *(v0 + 56);
    (*(v0 + 48))(0);
    v9 = *(v0 + 80);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1B804B144()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v4 = sub_1B804B2E4;
  }

  else
  {
    v4 = sub_1B804B274;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B804B274()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(0);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B804B2E4()
{
  v20 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000028, 0x80000001B80CD1D0, &v19);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s failed with: %@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v12 = v0[14];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v12;
  v14(v12);

  v16 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B804B554(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8047138(a1, v7, v8, v9, v1 + v6, v10);
}

unint64_t sub_1B804B6D0()
{
  result = qword_1EBA66130;
  if (!qword_1EBA66130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66130);
  }

  return result;
}

uint64_t sub_1B804B76C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8046310(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1B804B954(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocationsStewie.PublishResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B804B9F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FBA3EC;

  return sub_1B80454E8(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t objectdestroy_20Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t sub_1B804BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = *(v6 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a6(a1, a2, a3, v6 + v11, v12);
}

uint64_t sub_1B804BD18(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8044DC8(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804BEA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B80446A8(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C028(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8043F88(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C1B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B80437A4(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C304(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8) + 80);

  return sub_1B8043ECC(a1, a2, a3);
}

uint64_t sub_1B804C3EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1B7FC253C;

  return sub_1B8042FB8(a1, v9, v10, v11, v1 + v6, v13, v14);
}

uint64_t sub_1B804C5D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B7FC62D8(a1, a2);
  }

  return a1;
}

uint64_t sub_1B804C630(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8042638(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C7B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8041F10(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C944(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B80417F0(a1, v7, v8, v9, v1 + v6);
}

uint64_t objectdestroy_121Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);
  sub_1B7FC3CCC(*(v2 + v7), *(v2 + v7 + 8));

  return MEMORY[0x1EEE6BDD0](v2, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_1B804CBC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1B7FC253C;

  return sub_1B804109C(a1, v9, v10, v11, v1 + v6, v13, v14);
}

uint64_t sub_1B804CD84(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8040974(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804CED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7FC253C;

  return sub_1B8035C04(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B804CFAC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B80361C0(a1);
}

void sub_1B804CFB4(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B8036380(a1, a2, a3);
}

unint64_t sub_1B804CFBC()
{
  result = qword_1EBA66150;
  if (!qword_1EBA66150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66150);
  }

  return result;
}

uint64_t sub_1B804D0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B804D108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B804D16C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B8039B78(a1, v7, v8, v9, v10, v1 + v6, v11);
}

void sub_1B804D2A4(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B803A340(a1, a2, a3);
}

unint64_t sub_1B804D2AC()
{
  result = qword_1ED8DBC28;
  if (!qword_1ED8DBC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66110, &qword_1B80D2FD0);
    sub_1B7FDC440();
    sub_1B7FCD1B8(&qword_1ED8DBC38, type metadata accessor for Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC28);
  }

  return result;
}

uint64_t objectdestroy_240Tm()
{
  v1 = (type metadata accessor for ClientID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = sub_1B80C8E9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(&v0[v3], v8);
  v11 = *&v0[v3 + 8 + v1[8]];

  v12 = v1[9];
  if (!(*(v9 + 48))(&v0[v3 + v12], 1, v8))
  {
    v10(&v0[v3 + v12], v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B804D514(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B8038D28(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1B804D64C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B803951C(a1);
}

void sub_1B804D654(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B80396DC(a1);
}

uint64_t sub_1B804D660(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for ClientID() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1B7FC253C;

  return sub_1B8037FB0(a1, v7, v8, v9, v10, v11, v1 + v5, v13);
}

uint64_t sub_1B804D7B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B80388B0(a1);
}

void sub_1B804D7BC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B8038A70(a1);
}

uint64_t sub_1B804D7C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B804A9B0(v2, v3, v4, v5, v6);
}

uint64_t sub_1B804D880()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B8049DC8(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_295Tm()
{
  sub_1B7FC3CCC(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B804D984()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B80492A0(v2, v3, v4, v5, v6);
}

uint64_t sub_1B804DA88(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8047D28(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804DBD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B7FC253C;

  return sub_1B803BCFC(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

void sub_1B804DD1C(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B803C5A8(a1, a2, a3);
}

uint64_t sub_1B804DD30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B803ACE8(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1B804DE04(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B803B4E0(a1, a2, a3);
}

uint64_t sub_1B804DE18(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (*(v5 + 80) + 101) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B8036D08(a1, v7, v8, v9, v10, (v1 + 6), v1 + v6, v11);
}

uint64_t sub_1B804DF54(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B80375A8(a1);
}

unint64_t sub_1B804DF5C()
{
  result = qword_1ED8DC198;
  if (!qword_1ED8DC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC198);
  }

  return result;
}

void sub_1B804DFB0(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B8037768(a1, a2, a3);
}

uint64_t Session.refreshLocation(for:priority:clientID:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 98) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B804E104, 0, 0);
}

uint64_t sub_1B804E104()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1B804E1A0;
  v2 = *(v0 + 64);

  return sub_1B7FC225C();
}

uint64_t sub_1B804E1A0()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B804E29C, 0, 0);
}

uint64_t sub_1B804E29C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 56);
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  LOBYTE(v1) = *(v0 + 98);
  *(v0 + 24) = v4;
  *(v0 + 40) = v3;
  *(v0 + 96) = v1;
  *(v0 + 97) = 3;

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1B804E390;
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);

  return sub_1B801C9B8(v0 + 16, v6, v7, (v0 + 96), 0, (v0 + 97));
}

uint64_t sub_1B804E390(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = *(v4 + 40);

    return MEMORY[0x1EEE6DFA0](sub_1B804E4F0, 0, 0);
  }

  else
  {
    v8 = *(v4 + 40);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t Session.forceRefreshLocation(for:clientID:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B804E52C, 0, 0);
}

uint64_t sub_1B804E52C()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1B804E5C8;
  v2 = *(v0 + 64);

  return sub_1B7FC225C();
}

uint64_t sub_1B804E5C8()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B804E6C4, 0, 0);
}

uint64_t sub_1B804E6C4()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 56);
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v4;
  *(v0 + 40) = v3;
  *(v0 + 96) = 257;

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1B804E7A4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);

  return sub_1B801C9B8(v0 + 16, v6, v7, (v0 + 96), 0, (v0 + 97));
}

uint64_t sub_1B804E7A4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v5 = *(v2 + 40);

    return MEMORY[0x1EEE6DFA0](sub_1B804E4F0, 0, 0);
  }

  else
  {

    v6 = *(v2 + 40);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t Session.startRanging(to:)(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B804E92C, 0, 0);
}

uint64_t sub_1B804E92C()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1B804E9CC;
  v2 = *(v0 + 208);

  return sub_1B7FC225C();
}

uint64_t sub_1B804E9CC()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B804EAC8, 0, 0);
}

uint64_t sub_1B804EAC8()
{
  v1 = *(v0 + 200);
  v2 = *(*(v0 + 208) + 40);
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v5;
  *(v0 + 64) = v7;
  *(v0 + 80) = v6;
  v8 = v1[10];
  v10 = v1[7];
  v9 = v1[8];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v8;
  *(v0 + 128) = v10;
  *(v0 + 144) = v9;
  v11 = swift_task_alloc();
  *(v0 + 224) = v11;
  *v11 = v0;
  v11[1] = sub_1B804EB98;
  v12 = *(v0 + 192);

  return sub_1B7FF2A0C(v12, (v0 + 16));
}

uint64_t sub_1B804EB98()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  *(v3 + 232) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B804ECCC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.startOwnerRanging()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B804ED04, 0, 0);
}

uint64_t sub_1B804ED04()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804EDA4;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B804EDA4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B804EEA0, 0, 0);
}

uint64_t sub_1B804EEA0()
{
  v1 = *(v0[3] + 40);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE7A0;
  v3 = v0[2];

  return sub_1B7FF30A4(v3);
}

uint64_t sub_1B804EF5C()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B804EFFC;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B804EFFC()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B804F0F8, 0, 0);
}

uint64_t sub_1B804F0F8()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B8048BB0;

  return sub_1B7FFA214();
}

uint64_t sub_1B804F1AC()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B804F24C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B804F24C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B804F348, 0, 0);
}

uint64_t sub_1B804F348()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B804FA0C;

  return sub_1B7FFB848();
}

uint64_t Session.removePeerToken(for:)(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B804F3FC, 0, 0);
}

uint64_t sub_1B804F3FC()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_1B804F49C;
  v2 = *(v0 + 200);

  return sub_1B7FC225C();
}

uint64_t sub_1B804F49C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B804F598, 0, 0);
}

uint64_t sub_1B804F598()
{
  v1 = *(v0 + 192);
  v2 = *(*(v0 + 200) + 40);
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v5;
  *(v0 + 64) = v7;
  *(v0 + 80) = v6;
  v8 = v1[10];
  v10 = v1[7];
  v9 = v1[8];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v8;
  *(v0 + 128) = v10;
  *(v0 + 144) = v9;
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_1B804F664;

  return sub_1B7FFC1EC((v0 + 16));
}

uint64_t sub_1B804F664()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  *(v3 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B804F798, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.requestOwnerToken(force:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B804F7D4, 0, 0);
}

uint64_t sub_1B804F7D4()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B804F874;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B804F874()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B804F970, 0, 0);
}

uint64_t sub_1B804F970()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B804FA0C;
  v3 = *(v0 + 40);

  return sub_1B7FFCFA4(v3);
}

uint64_t sub_1B804FA10()
{
  sub_1B804FB98(v0 + 112);
  sub_1B7FB86D4(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_serviceDescription, &qword_1EBA65EA0, &qword_1B80D23B0);
  v1 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_session);

  v2 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler + 8);
  sub_1B7FBE244(*(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler));
  v3 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 16);
  v4 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 24);
  v5 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 32);
  v6 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 40);
  v7 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 48);
  sub_1B804FBC0(*(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice), *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 8));
  sub_1B7FB86D4(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation, &qword_1EBA66180, &qword_1B80D35B0);
  sub_1B7FB86D4(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation, &qword_1EBA66188, &qword_1B80D35B8);
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B804FB24()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_session);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1B804FBC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B804FC10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661C0, &qword_1B80D3630);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804FD04, v1, 0);
}

uint64_t sub_1B804FD04()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1B80C934C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B804FDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66180, &qword_1B80D35B0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804FE98, a4, 0);
}

uint64_t sub_1B804FE98()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v2, v3 + v6, &qword_1EBA66180, &qword_1B80D35B0);
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1B8050004;
  v8 = v0[6];

  return sub_1B8052280();
}

uint64_t sub_1B8050004()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1B8050140, v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B8050140()
{
  v18 = v0;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD450, &v17);
    *(v8 + 12) = 2082;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B8050354(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661B8, &qword_1B80D3610);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8050448, v1, 0);
}

uint64_t sub_1B8050448()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1B80C934C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B805053C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = sub_1B80C92CC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  v20 = sub_1B8051EF4();
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = v20;
  *(v22 + 4) = a2;
  (*(v11 + 32))(&v22[v21], v14, v10);
  *&v22[(v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;
  swift_retain_n();
  sub_1B80A1D3C(0, 0, v18, v25, v22);
}

uint64_t sub_1B8050740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66188, &qword_1B80D35B8) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80507E0, a4, 0);
}

uint64_t sub_1B80507E0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v2, v3 + v6, &qword_1EBA66188, &qword_1B80D35B8);
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1B805094C;
  v8 = v0[6];

  return sub_1B8052280();
}

uint64_t sub_1B805094C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1B8050A88, v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B8050A88()
{
  v18 = v0;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD420, &v17);
    *(v8 + 12) = 2082;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B8050C9C()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66188, &qword_1B80D35B8) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66180, &qword_1B80D35B0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8050D98, v0, 0);
}

uint64_t sub_1B8050D98()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v2 + v3, v1, &qword_1EBA66180, &qword_1B80D35B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_1B7FB86D4(v1, &qword_1EBA66180, &qword_1B80D35B0);
  if (v2 != 1)
  {
    goto LABEL_6;
  }

  v5 = v0[10];
  v6 = v0[8];
  v7 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v6 + v7, v5, &qword_1EBA66188, &qword_1B80D35B8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510);
  LODWORD(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8);
  sub_1B7FB86D4(v5, &qword_1EBA66188, &qword_1B80D35B8);
  if (v6 == 1)
  {
    v10 = v0[10];
    v9 = v0[11];

    v11 = v0[1];

    return v11();
  }

  else
  {
LABEL_6:
    v14 = v0[8];
    v13 = v0[9];
    v15 = swift_task_alloc();
    v0[12] = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    v16 = *(MEMORY[0x1E699C830] + 4);
    v17 = swift_task_alloc();
    v0[13] = v17;
    *v17 = v0;
    v17[1] = sub_1B7FEA0D0;

    return MEMORY[0x1EEE04418]();
  }
}

uint64_t sub_1B8051038(uint64_t a1)
{
  *(v2 + 376) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661A0, &qword_1B80D35F8);
  *(v2 + 384) = v4;
  v5 = *(v4 - 8);
  *(v2 + 392) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 400) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66188, &qword_1B80D35B8) - 8) + 64) + 15;
  *(v2 + 408) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510);
  *(v2 + 416) = v8;
  v9 = *(v8 - 8);
  *(v2 + 424) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 432) = swift_task_alloc();
  v11 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v11;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 61) = *(a1 + 45);

  return MEMORY[0x1EEE6DFA0](sub_1B80511C0, v1, 0);
}

uint64_t sub_1B80511C0()
{
  v57 = v0;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDEE8);
  sub_1B8051DAC(v0 + 16, v0 + 72);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  sub_1B8051E08(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v53 = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000016, 0x80000001B80CD400, &v53);
    *(v4 + 12) = 2080;
    v6 = *(v0 + 32);
    v54 = *(v0 + 16);
    v55 = v6;
    *v56 = *(v0 + 48);
    *&v56[13] = *(v0 + 61);
    sub_1B8051DAC(v0 + 16, v0 + 296);
    v7 = PreferenceStreamChange.description.getter();
    v9 = v8;
    v10 = v55;
    *(v0 + 240) = v54;
    *(v0 + 256) = v10;
    *(v0 + 272) = *v56;
    *(v0 + 285) = *&v56[13];
    sub_1B8051E08(v0 + 240);
    v11 = sub_1B7FB84FC(v7, v9, &v53);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s with: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  if (!*(v0 + 68))
  {
    v12 = *(v0 + 376);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = *(v0 + 24);
    *&v54 = *(v0 + 16);
    v19 = v54;
    *(&v54 + 1) = v18;
    *&v55 = v17;
    *(&v55 + 1) = v16;
    *v56 = v15;
    *&v56[8] = v14;
    *&v56[16] = v13;
    sub_1B8051638(&v54);
    v20 = v12 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice;
    v21 = *(v12 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice);
    v51 = *(v20 + 16);
    v52 = *(v20 + 8);
    v50 = *(v20 + 24);
    v48 = *(v20 + 40);
    v49 = *(v20 + 32);
    v22 = *(v20 + 48);
    *v20 = v19;
    *(v20 + 8) = v18;
    *(v20 + 16) = v17;
    *(v20 + 24) = v16;
    *(v20 + 32) = v15;
    *(v20 + 40) = v14;
    *(v20 + 48) = v13;
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    v27 = *(v0 + 64);
    sub_1B8051E5C(*(v0 + 16), *(v0 + 24));
    sub_1B804FBC0(v21, v52);
  }

  v29 = *(v0 + 416);
  v28 = *(v0 + 424);
  v30 = *(v0 + 408);
  v31 = *(v0 + 376);
  v32 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v31 + v32, v30, &qword_1EBA66188, &qword_1B80D35B8);
  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    sub_1B7FB86D4(*(v0 + 408), &qword_1EBA66188, &qword_1B80D35B8);
    v33 = sub_1B80C8FEC();
    v34 = sub_1B80C93FC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1B7FB5000, v33, v34, "Missing preferenceContinuation!", v35, 2u);
      MEMORY[0x1B8CB8970](v35, -1, -1);
    }
  }

  else
  {
    v37 = *(v0 + 424);
    v36 = *(v0 + 432);
    v38 = *(v0 + 416);
    v40 = *(v0 + 392);
    v39 = *(v0 + 400);
    v41 = *(v0 + 384);
    (*(v37 + 32))(v36, *(v0 + 408), v38);
    v42 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v42;
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 173) = *(v0 + 61);
    sub_1B8051DAC(v0 + 16, v0 + 184);
    sub_1B80C92EC();
    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);
  }

  v43 = *(v0 + 432);
  v44 = *(v0 + 400);
  v45 = *(v0 + 408);

  v46 = *(v0 + 8);

  return v46();
}

void sub_1B8051638(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661A8, &qword_1B80D3600);
  v64 = *(v3 - 1);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v57[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66180, &qword_1B80D35B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v57[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57[-v13];
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 24);
  v66 = *(a1 + 16);
  v67 = v17;
  v18 = *(a1 + 40);
  v69 = *(a1 + 32);
  v70 = v18;
  v68 = *(a1 + 48);
  v19 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v1 + v19, v9, &qword_1EBA66180, &qword_1B80D35B0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7FB86D4(v9, &qword_1EBA66180, &qword_1B80D35B0);
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v20 = sub_1B80C900C();
    __swift_project_value_buffer(v20, qword_1ED8DDEE8);
    v21 = v15;
    v22 = v16;
    v23 = v15;
    v25 = v66;
    v24 = v67;
    v27 = v69;
    v26 = v70;
    v28 = v68;
    sub_1B8051E5C(v21, v22);
    v29 = sub_1B80C8FEC();
    v30 = sub_1B80C93FC();
    sub_1B804FBC0(v23, v22);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v78 = v65;
      *v31 = 136315138;
      v71 = v23;
      v72 = v22;
      v73 = v25;
      v74 = v24;
      v75 = v27;
      v76 = v26;
      v77 = v28;
      sub_1B8051E5C(v23, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661B0, &qword_1B80D66C0);
      v32 = sub_1B80C90EC();
      v34 = sub_1B7FB84FC(v32, v33, &v78);

      *(v31 + 4) = v34;
      _os_log_impl(&dword_1B7FB5000, v29, v30, "Missing meDeviceCountinuation for %s", v31, 0xCu);
      v35 = v65;
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1B8CB8970](v35, -1, -1);
      MEMORY[0x1B8CB8970](v31, -1, -1);
    }
  }

  else
  {
    v61 = v11;
    v36 = *(v11 + 32);
    v60 = v14;
    v36(v14, v9, v10);
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v37 = sub_1B80C900C();
    __swift_project_value_buffer(v37, qword_1ED8DDEE8);
    v38 = v15;
    v39 = v16;
    v40 = v15;
    v42 = v66;
    v41 = v67;
    v44 = v69;
    v43 = v70;
    v45 = v68;
    sub_1B8051E5C(v38, v39);
    v46 = sub_1B80C8FEC();
    v47 = sub_1B80C941C();
    sub_1B804FBC0(v40, v39);
    v62 = v46;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v58 = v47;
      v59 = v49;
      v78 = v49;
      *v48 = 136315138;
      v71 = v40;
      v72 = v39;
      v73 = v42;
      v74 = v41;
      v75 = v44;
      v76 = v43;
      v77 = v45;
      sub_1B8051E5C(v40, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661B0, &qword_1B80D66C0);
      v50 = sub_1B80C90EC();
      v52 = sub_1B7FB84FC(v50, v51, &v78);
      v43 = v70;

      *(v48 + 4) = v52;
      v44 = v69;
      v53 = v48;
      _os_log_impl(&dword_1B7FB5000, v62, v58, "meDeviceUpdated: %s", v48, 0xCu);
      v54 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1B8CB8970](v54, -1, -1);
      MEMORY[0x1B8CB8970](v53, -1, -1);
    }

    v55 = v60;
    v71 = v40;
    v72 = v39;
    v73 = v42;
    v74 = v41;
    v75 = v44;
    v76 = v43;
    v77 = v45;
    sub_1B8051E5C(v40, v39);
    v56 = v63;
    sub_1B80C92EC();
    (*(v64 + 8))(v56, v65);
    (*(v61 + 8))(v55, v10);
  }
}

uint64_t sub_1B8051C94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8051CB4, v1, 0);
}

uint64_t sub_1B8051CB4()
{
  v1 = v0[3];
  sub_1B8051638(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8051D18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FBA3EC;

  return sub_1B8051038(a1);
}

uint64_t sub_1B8051E5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B8051EF4()
{
  result = qword_1ED8DD538;
  if (!qword_1ED8DD538)
  {
    _s18SettingsConnectionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD538);
  }

  return result;
}

uint64_t sub_1B8051F4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FBA3EC;

  return sub_1B8050740(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B80520D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B804FDF8(a1, v7, v8, v9, v1 + v6);
}

void sub_1B805221C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B80C8CFC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1B8052280()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B80522C8, v0, 0);
}

uint64_t sub_1B80522C8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD00000000000002BLL, 0x80000001B80CD490, sub_1B805C98C, v3, v6);
}

uint64_t sub_1B80523B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8052400, v2, 0);
}

uint64_t sub_1B8052400()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v8;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B801A858;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000022, 0x80000001B80CD620, sub_1B805C944, v3, v6);
}

uint64_t sub_1B8052508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_1B80C92CC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;

  sub_1B80A1D3C(0, 0, v13, &unk_1B80D3800, v15);
}

uint64_t sub_1B805264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8052674, 0, 0);
}

uint64_t sub_1B8052674()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = _s18SettingsConnectionCMa();
  v7 = sub_1B805B74C();
  *v5 = v0;
  v5[1] = sub_1B805277C;
  v8 = v0[10];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B805C4BC, v3, v6, v7);
}

uint64_t sub_1B805277C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1B80529F8;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1B8052898;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8052898()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v10 = *(v0 + 13);
  v4 = sub_1B80C90AC();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v10;
  v0[6] = sub_1B805C4C4;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_152;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v3 setActiveLocationSharingDevice:v4 completion:v6];
  _Block_release(v6);

  swift_unknownObjectRelease();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B80529F8()
{
  v17 = v0;
  v1 = v0[15];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD620, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[17];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8052C00(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD620, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8052DC0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v13 = a1;
    v5 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    sub_1B80C8AEC();
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v8 = sub_1B80C900C();
    __swift_project_value_buffer(v8, qword_1ED8DDEE8);

    oslog = sub_1B80C8FEC();
    v9 = sub_1B80C941C();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1B7FB84FC(a3, a4, &v13);
      _os_log_impl(&dword_1B7FB5000, oslog, v9, "setActiveLocationSharingDevice succeeded: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B8052F64(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8052FB0, v1, 0);
}

uint64_t sub_1B8052FB0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFAE34;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD000000000000017, 0x80000001B80CD600, sub_1B805C95C, v4, v7);
}

uint64_t sub_1B80530B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B80530D8, 0, 0);
}

uint64_t sub_1B80530D8()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s18SettingsConnectionCMa();
  v5 = sub_1B805B74C();
  *v3 = v0;
  v3[1] = sub_1B80531DC;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805C3A0, v1, v4, v5);
}

uint64_t sub_1B80531DC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B805342C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B80532F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80532F8()
{
  v1 = *(v0 + 128);
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  v0[6] = sub_1B805C3A8;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_136;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v4 setHideMyLocationWithHidden:v1 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B805342C()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CD600, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8053634(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CD600, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

uint64_t sub_1B80537F4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8053840, v1, 0);
}

uint64_t sub_1B8053840()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD000000000000021, 0x80000001B80CD5D0, sub_1B805C958, v4, v7);
}

uint64_t sub_1B8053940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8053968, 0, 0);
}

uint64_t sub_1B8053968()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s18SettingsConnectionCMa();
  v5 = sub_1B805B74C();
  *v3 = v0;
  v3[1] = sub_1B8053A6C;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805C254, v1, v4, v5);
}

uint64_t sub_1B8053A6C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B8053CBC;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B8053B88;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8053B88()
{
  v1 = *(v0 + 128);
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  v0[6] = sub_1B805C25C;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_120;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v4 allowFriendshipRequestsWithAllowed:v1 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B8053CBC()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CD5D0, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8053EC4(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CD5D0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8054084(void *a1, uint64_t a2, char a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    v6 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    sub_1B80C8AEC();
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDEE8);
    oslog = sub_1B80C8FEC();
    v10 = sub_1B80C941C();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = a3 & 1;
      _os_log_impl(&dword_1B7FB5000, oslog, v10, a5, v11, 8u);
      MEMORY[0x1B8CB8970](v11, -1, -1);
    }
  }
}

uint64_t sub_1B80541C4(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8054210, v2, 0);
}

uint64_t sub_1B8054210()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1B800B9CC;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v7, 0xD000000000000024, 0x80000001B80CD5A0, sub_1B805C954, v4, &type metadata for Device);
}

uint64_t sub_1B8054314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B805433C, 0, 0);
}

uint64_t sub_1B805433C()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s18SettingsConnectionCMa();
  v5 = sub_1B805B74C();
  *v3 = v0;
  v3[1] = sub_1B8054440;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805C07C, v1, v4, v5);
}

uint64_t sub_1B8054440()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B8054690;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B805455C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B805455C()
{
  v1 = *(v0 + 128);
  v2 = v0[8];
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + 11);
  v0[6] = sub_1B805C084;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_104;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  [v2 activeLocationSharingDeviceWithCached:v1 completion:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1B8054690()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD5A0, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8054898(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD5A0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8054A58(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    *&v35 = a3;
    v4 = a3;
LABEL_5:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v5 = 1;
    *&v35 = v3;
    goto LABEL_5;
  }

  v8 = sub_1B80C8CBC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B805B96C();
  v11 = a1;
  v12 = a2;
  sub_1B80C8C9C();

  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v13 = sub_1B80C900C();
  __swift_project_value_buffer(v13, qword_1ED8DDEE8);
  sub_1B805C08C(&v31, &v27);
  v14 = sub_1B80C8FEC();
  v15 = sub_1B80C941C();
  sub_1B805C0E8(&v31);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    sub_1B805C08C(&v31, &v27);
    v18 = Device.description.getter();
    v20 = v19;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v30 = v25;
    sub_1B805C0E8(&v27);
    v21 = sub_1B7FB84FC(v18, v20, &v26);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1B7FB5000, v14, v15, "activeLocationSharingDevice succeeded: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B8CB8970](v17, -1, -1);
    MEMORY[0x1B8CB8970](v16, -1, -1);
  }

  v27 = v31;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v11, v12);
  sub_1B805C0E8(&v31);
}

uint64_t sub_1B8054D64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8054DAC, v1, 0);
}

uint64_t sub_1B8054DAC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B8000A0C;
  v6 = v0[2];

  return MEMORY[0x1EEE04418](v6, 0xD000000000000019, 0x80000001B80CD580, sub_1B805C994, v3, &type metadata for DeviceWithCompanion);
}

uint64_t sub_1B8054E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8054EC0, 0, 0);
}

uint64_t sub_1B8054EC0()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s18SettingsConnectionCMa();
  v5 = sub_1B805B74C();
  *v3 = v0;
  v3[1] = sub_1B8054FC4;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805BE50, v1, v4, v5);
}

uint64_t sub_1B8054FC4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B8055204;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B80550E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80550E0()
{
  v1 = v0[8];
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 11);
  v0[6] = sub_1B805BE58;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_88;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v1 thisDeviceWithCompanionWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B8055204()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CD580, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B805540C(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CD580, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B80555CC(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    *&v34 = a3;
    v4 = a3;
LABEL_5:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v5 = 1;
    *&v34 = v3;
    goto LABEL_5;
  }

  v8 = sub_1B80C8CBC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B805BE60();
  v11 = a1;
  v12 = a2;
  sub_1B80C8C9C();

  v31 = v37;
  v32 = v38;
  v33[0] = v39[0];
  *(v33 + 12) = *(v39 + 12);
  v28 = v34;
  v29 = v35;
  v30 = v36;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v13 = sub_1B80C900C();
  __swift_project_value_buffer(v13, qword_1ED8DDEE8);
  sub_1B805BEB4(&v28, &v22);
  v14 = sub_1B80C8FEC();
  v15 = sub_1B80C941C();
  sub_1B805BF10(&v28);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 136315138;
    v26 = v32;
    v27[0] = v33[0];
    *(v27 + 12) = *(v33 + 12);
    v22 = v28;
    v23 = v29;
    v21 = v17;
    v24 = v30;
    v25 = v31;
    v18 = DeviceWithCompanion.description.getter();
    v20 = sub_1B7FB84FC(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1B7FB5000, v14, v15, "thisDeviceWithCompanion succeeded: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B8CB8970](v17, -1, -1);
    MEMORY[0x1B8CB8970](v16, -1, -1);
  }

  v26 = v32;
  v27[0] = v33[0];
  *(v27 + 12) = *(v33 + 12);
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v11, v12);
  sub_1B805BF10(&v28);
}

uint64_t sub_1B80558C4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8055910, v1, 0);
}

uint64_t sub_1B8055910()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 57);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B8055A14;
  v7 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE04418](v0 + 56, 0xD00000000000001CLL, 0x80000001B80CD560, sub_1B805C950, v4, v7);
}

uint64_t sub_1B8055A14()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1B8055B58;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_1B8055B3C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8055B58()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2(0);
}

uint64_t sub_1B8055BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8055BE8, 0, 0);
}

uint64_t sub_1B8055BE8()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s18SettingsConnectionCMa();
  v5 = sub_1B805B74C();
  *v3 = v0;
  v3[1] = sub_1B8055CEC;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805BD24, v1, v4, v5);
}

uint64_t sub_1B8055CEC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B8055F3C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B8055E08;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8055E08()
{
  v1 = *(v0 + 128);
  v2 = v0[8];
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + 11);
  v0[6] = sub_1B805BD2C;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B8056304;
  v0[5] = &block_descriptor_72;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  [v2 isMyLocationEnabledWithCached:v1 completion:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1B8055F3C()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CD560, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8056144(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CD560, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8056304(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1B805637C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80563C8, v1, 0);
}

uint64_t sub_1B80563C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 57);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B80564CC;
  v7 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE04418](v0 + 56, 0xD000000000000025, 0x80000001B80CD510, sub_1B805C94C, v4, v7);
}

uint64_t sub_1B80564CC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1B805C948;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_1B805C998;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80565F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B805661C, 0, 0);
}

uint64_t sub_1B805661C()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s18SettingsConnectionCMa();
  v5 = sub_1B805B74C();
  *v3 = v0;
  v3[1] = sub_1B8056720;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805BBE0, v1, v4, v5);
}

uint64_t sub_1B8056720()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B8056970;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B805683C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B805683C()
{
  v1 = *(v0 + 128);
  v2 = v0[8];
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + 11);
  v0[6] = sub_1B805BBE8;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B8056304;
  v0[5] = &block_descriptor_56;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  [v2 areFriendshipRequestsAllowedWithCached:v1 completion:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1B8056970()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD510, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8056B78(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD510, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8056D38(char a1, id a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2)
  {
    v6 = a2;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDEE8);
    v10 = sub_1B80C8FEC();
    v11 = sub_1B80C941C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a1 & 1;
      _os_log_impl(&dword_1B7FB5000, v10, v11, a5, v12, 8u);
      MEMORY[0x1B8CB8970](v12, -1, -1);
    }

    sub_1B80C8ADC();
  }
}

uint64_t sub_1B8056E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8056EBC, 0, 0);
}

uint64_t sub_1B8056EBC()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s18SettingsConnectionCMa();
  v5 = sub_1B805B74C();
  *v3 = v0;
  v3[1] = sub_1B8056FC0;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805BAC0, v1, v4, v5);
}

uint64_t sub_1B8056FC0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B80571DC;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B80570DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80570DC()
{
  v1 = v0[11];
  v2 = v0[8];
  v0[6] = sub_1B805C988;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_37_0;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v2 startMonitoringPreferencesChangeForClientWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B80571DC()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000002BLL, 0x80000001B80CD490, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B80573E4(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000002BLL, 0x80000001B80CD490, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

uint64_t sub_1B80575A4(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80575F0, v1, 0);
}

uint64_t sub_1B80575F0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661C8, &qword_1B80D3768);
  *v6 = v0;
  v6[1] = sub_1B7FFF050;

  return MEMORY[0x1EEE04418](v0 + 16, 0xD000000000000013, 0x80000001B80CD4F0, sub_1B805C960, v4, v7);
}

uint64_t sub_1B8057704(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  v15 = sub_1B80C92CC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a2;
  *(v16 + 40) = a1;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;

  sub_1B80A1D3C(0, 0, v14, a6, v16);
}

uint64_t sub_1B8057830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8057858, 0, 0);
}

uint64_t sub_1B8057858()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s18SettingsConnectionCMa();
  v5 = sub_1B805B74C();
  *v3 = v0;
  v3[1] = sub_1B805795C;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805B8D8, v1, v4, v5);
}

uint64_t sub_1B805795C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B8057BAC;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B8057A78;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8057A78()
{
  v1 = *(v0 + 128);
  v2 = v0[8];
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + 11);
  v0[6] = sub_1B805B8E0;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_24;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  [v2 allDevicesWithCached:v1 completion:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1B8057BAC()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CD4F0, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8057DB4(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CD4F0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8057F74(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v22 = a3;
    v4 = a3;
LABEL_5:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v5 = 1;
    v22 = v3;
    goto LABEL_5;
  }

  v8 = sub_1B80C8CBC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661C8, &qword_1B80D3768);
  sub_1B805B8E8();
  v11 = a1;
  v12 = a2;
  sub_1B80C8C9C();

  v13 = v22;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v14 = sub_1B80C900C();
  __swift_project_value_buffer(v14, qword_1ED8DDEE8);

  v15 = sub_1B80C8FEC();
  v16 = sub_1B80C941C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315138;
    v19 = MEMORY[0x1B8CB7B30](v13, &type metadata for Device);
    v21 = sub_1B7FB84FC(v19, v20, &v22);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1B7FB5000, v15, v16, "allDevices succeeded: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B8CB8970](v18, -1, -1);
    MEMORY[0x1B8CB8970](v17, -1, -1);
  }

  v22 = v13;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v11, v12);
}

uint64_t sub_1B8058214()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B805825C, v0, 0);
}

uint64_t sub_1B805825C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD00000000000001FLL, 0x80000001B80CD4D0, sub_1B805C990, v3, v6);
}

uint64_t sub_1B8058348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v15 - v10;
  v12 = sub_1B80C92CC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;

  sub_1B80A1D3C(0, 0, v11, a5, v13);
}

uint64_t sub_1B8058464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8058488, 0, 0);
}

uint64_t sub_1B8058488()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s18SettingsConnectionCMa();
  v5 = sub_1B805B74C();
  *v3 = v0;
  v3[1] = sub_1B805858C;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805B744, v1, v4, v5);
}

uint64_t sub_1B805858C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B80587A8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B80586A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80586A8()
{
  v1 = v0[11];
  v2 = v0[8];
  v0[6] = sub_1B805B7A4;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_6;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v2 emulateShowSaveMeAlertCommandWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B80587A8()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDEE8);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000001FLL, 0x80000001B80CD4D0, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B80589B0(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001FLL, 0x80000001B80CD4D0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8058B70(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    sub_1B80C8AEC();
  }
}

uint64_t sub_1B8058BC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8058C0C, v2, 0);
}

uint64_t sub_1B8058C0C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v8;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B802CFA4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000022, 0x80000001B80CD620, sub_1B805C3D4, v3, v6);
}

uint64_t sub_1B8058D14(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8058D60, v1, 0);
}

uint64_t sub_1B8058D60()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD000000000000017, 0x80000001B80CD600, sub_1B805C288, v4, v7);
}

uint64_t sub_1B8058E60(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8058EAC, v1, 0);
}

uint64_t sub_1B8058EAC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD000000000000021, 0x80000001B80CD5D0, sub_1B805C13C, v4, v7);
}

uint64_t sub_1B8058FAC(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8058FF8, v2, 0);
}

uint64_t sub_1B8058FF8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1B800B9CC;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v7, 0xD000000000000024, 0x80000001B80CD5A0, sub_1B805BF64, v4, &type metadata for Device);
}

uint64_t sub_1B80590FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8059144, v1, 0);
}

uint64_t sub_1B8059144()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B800B9CC;
  v6 = v0[2];

  return MEMORY[0x1EEE04418](v6, 0xD000000000000019, 0x80000001B80CD580, sub_1B805BD50, v3, &type metadata for DeviceWithCompanion);
}

uint64_t sub_1B8059234(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8059280, v1, 0);
}

uint64_t sub_1B8059280()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 57);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B80564CC;
  v7 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE04418](v0 + 56, 0xD00000000000001CLL, 0x80000001B80CD560, sub_1B805BC0C, v4, v7);
}

uint64_t sub_1B8059384(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80593D0, v1, 0);
}

uint64_t sub_1B80593D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 57);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B80564CC;
  v7 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE04418](v0 + 56, 0xD000000000000025, 0x80000001B80CD510, sub_1B805BAC8, v4, v7);
}

uint64_t sub_1B80594D4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B805951C, v0, 0);
}

uint64_t sub_1B805951C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD00000000000002BLL, 0x80000001B80CD490, sub_1B805B9C0, v3, v6);
}

uint64_t sub_1B8059608(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8059654, v1, 0);
}

uint64_t sub_1B8059654()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661C8, &qword_1B80D3768);
  *v6 = v0;
  v6[1] = sub_1B800CF88;

  return MEMORY[0x1EEE04418](v0 + 16, 0xD000000000000013, 0x80000001B80CD4F0, sub_1B805B7C0, v4, v7);
}

uint64_t sub_1B8059768()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B80597B0, v0, 0);
}

uint64_t sub_1B80597B0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD00000000000001FLL, 0x80000001B80CD4D0, sub_1B805B644, v3, v6);
}

uint64_t sub_1B805989C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + 120);
  v6 = sub_1B80C92CC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  swift_retain_n();
  sub_1B809F924(0, 0, v4, &unk_1B80D3850, v7);

  sub_1B7FB86D4(v4, &unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1B8CB8A10](v0 + 112);
  v8 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B80599F8()
{
  sub_1B805989C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B8059A24(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *MEMORY[0x1E69E7D40] & *v4;
  v11 = sub_1B80C8E9C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (qword_1ED8DD4C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1B80C900C();
  __swift_project_value_buffer(v13, qword_1ED8DDE30);
  v14 = sub_1B80C8FEC();
  v15 = sub_1B80C941C();
  if (os_log_type_enabled(v14, v15))
  {
    v27 = a1;
    v16 = a2;
    v17 = a4;
    v18 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD680, &v28);
    _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1B8CB8970](v20, -1, -1);
    v21 = v19;
    a3 = v18;
    a4 = v17;
    a2 = v16;
    a1 = v27;
    MEMORY[0x1B8CB8970](v21, -1, -1);
  }

  sub_1B80C8A0C();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = *(v10 + 80);
  v23[3] = *(v10 + 88);
  v23[4] = v22;
  v23[5] = a1;
  v23[6] = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;

  sub_1B804C5D4(a1, a2);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  v25 = v5[15];
  sub_1B80C8A3C();
}

uint64_t sub_1B8059D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8059D40, 0, 0);
}

uint64_t sub_1B8059D40()
{
  v1 = v0[19];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8059DFC, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1B8059DFC()
{
  v1 = *(v0 + 192);
  *(v0 + 200) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B8059E74, 0, 0);
}

uint64_t sub_1B8059E74()
{
  if (*(v0 + 200))
  {
    if (*(v0 + 168) >> 60 == 15)
    {
      v1 = 0;
      v2 = 0uLL;
      v3 = 0uLL;
      v4 = 0uLL;
    }

    else
    {
      v6 = *(v0 + 160);
      v7 = sub_1B80C8CBC();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      sub_1B80C8CAC();
      sub_1B805B96C();
      sub_1B80C8C9C();

      v2 = *(v0 + 72);
      v3 = *(v0 + 88);
      v4 = *(v0 + 104);
      v1 = *(v0 + 120);
    }

    v11 = *(v0 + 184);
    *(v0 + 16) = v2;
    *(v0 + 32) = v3;
    *(v0 + 48) = v4;
    *(v0 + 64) = v1;
    v17 = (*(v11 + 8) + **(v11 + 8));
    v12 = *(*(v11 + 8) + 4);
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_1B805A084;
    v14 = *(v0 + 200);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);

    return v17(v0 + 16, v15, v16);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1B805A084()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v13 = *v1;
  *(v2 + 216) = v0;

  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v2 += 16;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  sub_1B804FBC0(v4, v5);
  if (v0)
  {
    v11 = sub_1B805A210;
  }

  else
  {
    v11 = sub_1B805A1AC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1B805A1AC()
{
  v1 = *(v0 + 200);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B805A210()
{
  v1 = v0[25];
  swift_unknownObjectRelease();
  v2 = v0[27];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B805A274(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 80) = a2;
  *(v4 + 32) = a1;
  v5 = sub_1B80C929C();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B805A33C, 0, 0);
}

uint64_t sub_1B805A33C()
{
  v31 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 56);
    v3 = *(v0 + 32);
    *(v0 + 16) = v3;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      if (qword_1ED8DD4C0 != -1)
      {
        swift_once();
      }

      v5 = sub_1B80C900C();
      __swift_project_value_buffer(v5, qword_1ED8DDE30);
      v6 = sub_1B80C8FEC();
      v7 = sub_1B80C941C();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_17;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7FB5000, v6, v7, "meDeviceUpdated workItem cancelled", v8, 2u);
      v9 = v8;
    }

    else
    {
      if (qword_1ED8DD4C0 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 32);
      v17 = sub_1B80C900C();
      __swift_project_value_buffer(v17, qword_1ED8DDE30);
      v18 = v3;
      v6 = sub_1B80C8FEC();
      v19 = sub_1B80C93FC();
      sub_1B805C63C(v16, 1);
      if (!os_log_type_enabled(v6, v19))
      {
        goto LABEL_17;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136446210;
      *(v0 + 24) = v3;
      v22 = v3;
      v23 = sub_1B80C90EC();
      v25 = sub_1B7FB84FC(v23, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1B7FB5000, v6, v19, "meDeviceUpdated workItem failure. Error %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B8CB8970](v21, -1, -1);
      v9 = v20;
    }

    MEMORY[0x1B8CB8970](v9, -1, -1);
LABEL_17:

    v26 = *(v0 + 48);
    (*(v0 + 40))(*(v0 + 32));
    goto LABEL_18;
  }

  if (qword_1ED8DD4C0 != -1)
  {
    swift_once();
  }

  v10 = sub_1B80C900C();
  __swift_project_value_buffer(v10, qword_1ED8DDE30);
  v11 = sub_1B80C8FEC();
  v12 = sub_1B80C941C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B7FB5000, v11, v12, "meDeviceUpdated workItem success", v13, 2u);
    MEMORY[0x1B8CB8970](v13, -1, -1);
  }

  v14 = *(v0 + 40);
  v15 = *(v0 + 48);

  v14(0);
LABEL_18:
  v27 = *(v0 + 72);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1B805A6D4(int a1, int a2, void *a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  if (a3)
  {
    v6 = a3;
    a3 = sub_1B80C8D3C();
    v8 = v7;
  }

  else
  {
    v8 = 0xF000000000000000;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  sub_1B8059A24(a3, v8, sub_1B8011D00, v9);

  sub_1B7FC72F8(a3, v8);
}

uint64_t sub_1B805A7B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *MEMORY[0x1E69E7D40] & *v4;
  v11 = sub_1B80C8E9C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (qword_1ED8DD4C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1B80C900C();
  __swift_project_value_buffer(v13, qword_1ED8DDE30);
  v14 = sub_1B80C8FEC();
  v15 = sub_1B80C941C();
  if (os_log_type_enabled(v14, v15))
  {
    v27 = a1;
    v16 = a2;
    v17 = a4;
    v18 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_1B7FB84FC(0xD000000000000026, 0x80000001B80CD650, &v28);
    _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1B8CB8970](v20, -1, -1);
    v21 = v19;
    a3 = v18;
    a4 = v17;
    a2 = v16;
    a1 = v27;
    MEMORY[0x1B8CB8970](v21, -1, -1);
  }

  sub_1B80C8A0C();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = *(v10 + 80);
  v23[3] = *(v10 + 88);
  v23[4] = v22;
  v23[5] = a1;
  v23[6] = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;

  sub_1B7FC62D8(a1, a2);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  v25 = v5[15];
  sub_1B80C8A3C();
}

uint64_t sub_1B805AAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B805AACC, 0, 0);
}

uint64_t sub_1B805AACC()
{
  v1 = v0[33];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[38] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B805AB88, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1B805AB88()
{
  v1 = *(v0 + 304);
  *(v0 + 312) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B805AC00, 0, 0);
}

uint64_t sub_1B805AC00()
{
  if (*(v0 + 312))
  {
    v2 = *(v0 + 272);
    v1 = *(v0 + 280);
    v3 = sub_1B80C8CBC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1B80C8CAC();
    sub_1B805C648();
    sub_1B80C8C9C();
    v17 = *(v0 + 296);

    *(v0 + 117) = *(v0 + 61);
    v8 = *(v0 + 32);
    *(v0 + 104) = *(v0 + 48);
    v9 = *(v0 + 16);
    *(v0 + 88) = v8;
    *(v0 + 72) = v9;
    v10 = *(v17 + 16);
    v16 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 320) = v12;
    *v12 = v0;
    v12[1] = sub_1B805ADF4;
    v13 = *(v0 + 312);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);

    return v16(v0 + 72, v14, v15);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B805ADF4()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  v4 = *(v2 + 72);
  v5 = *(v2 + 88);
  v6 = *(v2 + 104);
  if (v0)
  {
    *(v2 + 173) = *(v2 + 117);
    *(v2 + 144) = v5;
    *(v2 + 160) = v6;
    *(v2 + 128) = v4;
    sub_1B8051E08(v2 + 128);
    v7 = sub_1B805AFB8;
  }

  else
  {
    *(v2 + 229) = *(v2 + 117);
    *(v2 + 216) = v6;
    *(v2 + 200) = v5;
    *(v2 + 184) = v4;
    sub_1B8051E08(v2 + 184);
    v7 = sub_1B805AF54;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B805AF54()
{
  v1 = *(v0 + 312);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B805AFB8()
{
  v1 = v0[39];
  swift_unknownObjectRelease();
  v2 = v0[41];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B805B01C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 80) = a2;
  *(v4 + 32) = a1;
  v5 = sub_1B80C929C();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B805B0E4, 0, 0);
}

uint64_t sub_1B805B0E4()
{
  v32 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 56);
    v3 = *(v0 + 32);
    *(v0 + 16) = v3;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      if (qword_1ED8DD4C0 != -1)
      {
        swift_once();
      }

      v5 = sub_1B80C900C();
      __swift_project_value_buffer(v5, qword_1ED8DDE30);
      v6 = sub_1B80C8FEC();
      v7 = sub_1B80C941C();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_17;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1B7FB84FC(0xD000000000000026, 0x80000001B80CD650, &v31);
      _os_log_impl(&dword_1B7FB5000, v6, v7, "%{public}s workItem cancelled", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CB8970](v9, -1, -1);
      v10 = v8;
    }

    else
    {
      if (qword_1ED8DD4C0 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 32);
      v18 = sub_1B80C900C();
      __swift_project_value_buffer(v18, qword_1ED8DDE30);
      v19 = v3;
      v6 = sub_1B80C8FEC();
      v20 = sub_1B80C93FC();
      sub_1B805C63C(v17, 1);
      if (!os_log_type_enabled(v6, v20))
      {
        goto LABEL_17;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_1B7FB84FC(0xD000000000000026, 0x80000001B80CD650, &v31);
      *(v21 + 12) = 2082;
      *(v0 + 24) = v3;
      v23 = v3;
      v24 = sub_1B80C90EC();
      v26 = sub_1B7FB84FC(v24, v25, &v31);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_1B7FB5000, v6, v20, "%{public}s workItem failure. Error %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v22, -1, -1);
      v10 = v21;
    }

    MEMORY[0x1B8CB8970](v10, -1, -1);
LABEL_17:

    v27 = *(v0 + 48);
    (*(v0 + 40))(*(v0 + 32));
    goto LABEL_18;
  }

  if (qword_1ED8DD4C0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B80C900C();
  __swift_project_value_buffer(v11, qword_1ED8DDE30);
  v12 = sub_1B80C8FEC();
  v13 = sub_1B80C941C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1B7FB84FC(0xD000000000000026, 0x80000001B80CD650, &v31);
    _os_log_impl(&dword_1B7FB5000, v12, v13, "%{public}s workItem success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B8CB8970](v15, -1, -1);
    MEMORY[0x1B8CB8970](v14, -1, -1);
  }

  v16 = *(v0 + 48);
  (*(v0 + 40))(0);
LABEL_18:
  v28 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1B805B560(int a1, int a2, void *a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = a3;

  v7 = sub_1B80C8D3C();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_1B805A7B0(v7, v9, sub_1B8011BEC, v10);

  sub_1B7FC3CCC(v7, v9);
}

uint64_t sub_1B805B67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8058464(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B805B744(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B80589B0(a1);
}

unint64_t sub_1B805B74C()
{
  result = qword_1ED8DD540;
  if (!qword_1ED8DD540)
  {
    _s18SettingsConnectionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD540);
  }

  return result;
}

uint64_t sub_1B805B800(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B8057830(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805B8D8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8057DB4(a1);
}

void sub_1B805B8E0(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B8057F74(a1, a2, a3);
}

unint64_t sub_1B805B8E8()
{
  result = qword_1EBA661D0;
  if (!qword_1EBA661D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA661C8, &qword_1B80D3768);
    sub_1B805B96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA661D0);
  }

  return result;
}

unint64_t sub_1B805B96C()
{
  result = qword_1ED8DD4D0;
  if (!qword_1ED8DD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4D0);
  }

  return result;
}

uint64_t sub_1B805B9F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8056E98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B805BAC0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B80573E4(a1);
}

uint64_t sub_1B805BB08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B80565F4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805BBE0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8056B78(a1);
}

uint64_t sub_1B805BC4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FBA3EC;

  return sub_1B8055BC0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805BD24(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8056144(a1);
}

uint64_t sub_1B805BD88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8054E9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B805BE50(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B805540C(a1);
}

void sub_1B805BE58(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B80555CC(a1, a2, a3);
}

unint64_t sub_1B805BE60()
{
  result = qword_1EBA661D8;
  if (!qword_1EBA661D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA661D8);
  }

  return result;
}

uint64_t sub_1B805BFA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B8054314(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805C07C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8054898(a1);
}

void sub_1B805C084(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B8054A58(a1, a2, a3);
}

uint64_t sub_1B805C17C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B8053940(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805C254(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8053EC4(a1);
}

uint64_t sub_1B805C2C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B80530B0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805C3A0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8053634(a1);
}

uint64_t sub_1B805C3E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7FC253C;

  return sub_1B805264C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B805C4BC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8052C00(a1);
}

uint64_t sub_1B805C4D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B805AAA4(v4, v5, v6, v2, v3);
}

uint64_t sub_1B805C58C(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B7FC253C;

  return sub_1B805B01C(a1, a2 & 1, v7, v6);
}

void sub_1B805C63C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_1B805C648()
{
  result = qword_1ED8DD4C8;
  if (!qword_1ED8DD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4C8);
  }

  return result;
}

uint64_t sub_1B805C69C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FBA3EC;

  return sub_1B8059D18(v4, v5, v6, v2, v3);
}

uint64_t sub_1B805C758(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B7FC253C;

  return sub_1B805A274(a1, a2 & 1, v7, v6);
}

uint64_t objectdestroy_148Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x1EEE6BDD0](v3, a3, 7);
}

uint64_t sub_1B805C86C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7FC253C;

  return sub_1B80133D8();
}

uint64_t Session.getAllDevices(cached:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B805C9DC, 0, 0);
}

uint64_t sub_1B805C9DC()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B805CA7C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B805CA7C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B805CB78, 0, 0);
}

uint64_t sub_1B805CB78()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B805CC14;
  v3 = *(v0 + 40);

  return sub_1B80575A4(v3);
}

uint64_t sub_1B805CC14(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

FindMyLocate::ServiceEntitlements_optional __swiftcall ServiceEntitlements.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ServiceEntitlements.rawValue.getter()
{
  v1 = 0xD000000000000026;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002FLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B805CDF4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000026;
  v3 = *a1;
  v4 = ".findmylocate.locationservice";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002FLL;
  }

  else
  {
    v5 = 0xD000000000000026;
  }

  if (v3 == 1)
  {
    v6 = ".findmylocate.locationservice";
  }

  else
  {
    v6 = ".findmylocate.friendshipservice";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000002DLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "kFMFGroupIdGroup";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002FLL;
  }

  else
  {
    v4 = ".findmylocate.friendshipservice";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000002DLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "kFMFGroupIdGroup";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

uint64_t sub_1B805CECC()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B805CF68()
{
  *v0;
  *v0;
  sub_1B80C911C();
}

uint64_t sub_1B805CFF0()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t Session.sendFriendshipOffer(to:from:with:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 392) = a5;
  *(v7 + 400) = v6;
  *(v7 + 480) = a6;
  *(v7 + 376) = a2;
  *(v7 + 384) = a4;
  *(v7 + 368) = a1;
  v9 = *(*(sub_1B80C8E9C() - 8) + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v10 = type metadata accessor for FriendshipRequest();
  *(v7 + 416) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  v12 = sub_1B80C8E2C();
  *(v7 + 432) = v12;
  v13 = *(v12 - 8);
  *(v7 + 440) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 448) = swift_task_alloc();
  v15 = a3[9];
  *(v7 + 144) = a3[8];
  *(v7 + 160) = v15;
  *(v7 + 176) = a3[10];
  v16 = a3[5];
  *(v7 + 80) = a3[4];
  *(v7 + 96) = v16;
  v17 = a3[7];
  *(v7 + 112) = a3[6];
  *(v7 + 128) = v17;
  v18 = a3[1];
  *(v7 + 16) = *a3;
  *(v7 + 32) = v18;
  v19 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v19;

  return MEMORY[0x1EEE6DFA0](sub_1B805D1F4, 0, 0);
}

uint64_t sub_1B805D1F4()
{
  v30 = v0;
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v28 = *(v0 + 480);
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  sub_1B80C99EC();
  sub_1B80C8DAC();
  v11 = v5[7];
  (*(v2 + 16))(v3 + v11, v1, v4);
  (*(v2 + 56))(v3 + v11, 0, 1, v4);
  LOBYTE(v4) = *(v8 + 80);
  v12 = *(v8 + 88);
  v13 = *(v8 + 96);
  v14 = *(v8 + 104);
  sub_1B805D84C(v0 + 16, v0 + 192);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C899C();
  v15 = v3 + v5[10];
  *v15 = v4;
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v3 + v5[5]) = v10;
  v16 = (v3 + v5[6]);
  v17 = *(v0 + 16);
  v18 = *(v0 + 48);
  v16[1] = *(v0 + 32);
  v16[2] = v18;
  *v16 = v17;
  v19 = *(v0 + 64);
  v20 = *(v0 + 80);
  v21 = *(v0 + 112);
  v16[5] = *(v0 + 96);
  v16[6] = v21;
  v16[3] = v19;
  v16[4] = v20;
  v22 = *(v0 + 128);
  v23 = *(v0 + 144);
  v24 = *(v0 + 176);
  v16[9] = *(v0 + 160);
  v16[10] = v24;
  v16[7] = v22;
  v16[8] = v23;
  *(v3 + v5[8]) = 0;
  *(v3 + v5[9]) = 3;
  *(v3 + v5[11]) = v28;

  v29 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v29);
  v25 = swift_task_alloc();
  *(v0 + 456) = v25;
  *v25 = v0;
  v25[1] = sub_1B805D3F4;
  v26 = *(v0 + 400);

  return sub_1B7FC225C();
}

uint64_t sub_1B805D3F4()
{
  v1 = *(*v0 + 456);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B805D4F0, 0, 0);
}

uint64_t sub_1B805D4F0()
{
  v1 = *(v0[50] + 40);
  v2 = swift_task_alloc();
  v0[58] = v2;
  *v2 = v0;
  v2[1] = sub_1B805D590;
  v3 = v0[53];
  v4 = v0[46];

  return sub_1B800624C(v4, v3);
}

uint64_t sub_1B805D590()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_1B805D754;
  }

  else
  {
    v3 = sub_1B805D6A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B805D6A4()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = v0[51];
  sub_1B805D8BC(v0[53]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B805D754()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = v0[51];
  sub_1B805D8BC(v0[53]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];
  v6 = v0[59];

  return v5();
}

uint64_t sub_1B805D84C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D78, &qword_1B80D2640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B805D8BC(uint64_t a1)
{
  v2 = type metadata accessor for FriendshipRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B805D91C()
{
  result = qword_1EBA661E0;
  if (!qword_1EBA661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA661E0);
  }

  return result;
}

unint64_t sub_1B805D974()
{
  result = qword_1ED8DBBB8;
  if (!qword_1ED8DBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBB8);
  }

  return result;
}

__n128 FriendshipCanShareLocationRequest.init(handle:origin:isFromGroup:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 24);
  *(a4 + 176) = *a2;
  *(a4 + 184) = *(a2 + 8);
  *(a4 + 200) = v4;
  v5 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v5;
  *(a4 + 160) = *(a1 + 160);
  v6 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v6;
  v7 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v7;
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 208) = a3;
  return result;
}

uint64_t FriendshipRequest.init(toHandles:callerHandle:endDate:origin:requestType:responseType:isFromGroup:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = sub_1B80C8E9C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v33 = a2[8];
  v34 = a2[9];
  v35 = a2[10];
  v29 = a2[4];
  v30 = a2[5];
  v31 = a2[6];
  v32 = a2[7];
  v25 = *a2;
  v28 = a2[3];
  v26 = a2[1];
  v27 = a2[2];
  LOBYTE(a2) = *a4;
  v24 = *(a4 + 8);
  v18 = *(a4 + 24);
  LOBYTE(a5) = *a5;
  v19 = *a6;
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v20 = type metadata accessor for FriendshipRequest();
  sub_1B80C899C();
  v21 = a8 + v20[10];
  *v21 = a2;
  *(v21 + 8) = v24;
  *(v21 + 24) = v18;
  *(a8 + v20[5]) = a1;
  v22 = (a8 + v20[6]);
  v22[8] = v33;
  v22[9] = v34;
  v22[10] = v35;
  v22[4] = v29;
  v22[5] = v30;
  v22[6] = v31;
  v22[7] = v32;
  *v22 = v25;
  v22[1] = v26;
  v22[2] = v27;
  v22[3] = v28;
  *(a8 + v20[8]) = a5;
  *(a8 + v20[9]) = v19;
  result = sub_1B805DC34(a3, a8 + v20[7]);
  *(a8 + v20[11]) = a7;
  return result;
}

uint64_t type metadata accessor for FriendshipRequest()
{
  result = qword_1EBA65A10;
  if (!qword_1EBA65A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B805DC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FriendshipRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FriendshipRequest.toHandles.getter()
{
  v1 = *(v0 + *(type metadata accessor for FriendshipRequest() + 20));
}

uint64_t FriendshipRequest.callerHandle.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FriendshipRequest() + 24));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v21 = v3[2];
  v15 = v21;
  v22 = v14;
  v16 = v3[1];
  v20[0] = *v3;
  v17 = v20[0];
  v20[1] = v16;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_1B7FB8448(v20, &v19, &qword_1EBA65D78, &qword_1B80D2640);
}

uint64_t FriendshipRequest.requestType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FriendshipRequest();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FriendshipRequest.respondType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FriendshipRequest();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t FriendshipRequest.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FriendshipRequest() + 40);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t FriendshipRequest.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30[-v3];
  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v42 = v43[0];
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80D39D0);
  MEMORY[0x1B8CB7A40](0x6469202020200A3ALL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  sub_1B8060054(&qword_1EBA661E8);
  v5 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v5);

  MEMORY[0x1B8CB7A40](0x69726F202020200ALL, 0xED0000203A6E6967);
  v6 = type metadata accessor for FriendshipRequest();
  v7 = v0 + v6[10];
  v8 = *(v7 + 24);
  LOBYTE(v43[0]) = *v7;
  *(v43 + 8) = *(v7 + 8);
  *(&v43[1] + 1) = v8;
  v9 = RequestOrigin.description.getter();
  MEMORY[0x1B8CB7A40](v9);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD720);
  v10 = MEMORY[0x1B8CB7B30](*(v0 + v6[5]), &type metadata for Handle);
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CD740);
  v11 = (v0 + v6[6]);
  v12 = v11[7];
  v13 = v11[9];
  v50 = v11[8];
  v51 = v13;
  v14 = v11[9];
  v52 = v11[10];
  v15 = v11[3];
  v16 = v11[5];
  v46 = v11[4];
  v47 = v16;
  v17 = v11[5];
  v18 = v11[7];
  v48 = v11[6];
  v49 = v18;
  v19 = v11[1];
  v43[0] = *v11;
  v43[1] = v19;
  v20 = v11[3];
  v22 = *v11;
  v21 = v11[1];
  v44 = v11[2];
  v45 = v20;
  v39 = v50;
  v40 = v14;
  v41 = v11[10];
  v35 = v46;
  v36 = v17;
  v37 = v48;
  v38 = v12;
  v31 = v22;
  v32 = v21;
  v33 = v44;
  v34 = v15;
  sub_1B7FB8448(v43, v30, &qword_1EBA65D78, &qword_1B80D2640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D78, &qword_1B80D2640);
  v23 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v23);

  MEMORY[0x1B8CB7A40](0x646E65202020200ALL, 0xEE00203A65746144);
  sub_1B7FB8448(v0 + v6[7], v4, &unk_1EBA65FD0, &unk_1B80D1920);
  v24 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v24);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CD760);
  LOBYTE(v31) = *(v0 + v6[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661F0, &qword_1B80D3A08);
  v25 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v25);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CD780);
  LOBYTE(v31) = *(v0 + v6[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661F8, &qword_1B80D3A10);
  v26 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v26);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CD7A0);
  if (*(v0 + v6[11]))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v0 + v6[11]))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v27, v28);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return v42;
}

uint64_t sub_1B805E3C0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E696769726FLL;
  if (v1 != 6)
  {
    v3 = 0x72476D6F72467369;
  }

  v4 = 0x5474736575716572;
  if (v1 != 4)
  {
    v4 = 0x54646E6F70736572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x614872656C6C6163;
  if (v1 != 2)
  {
    v5 = 0x65746144646E65;
  }

  if (*v0)
  {
    v2 = 0x656C646E61486F74;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B805E4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B80606B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B805E4F8(uint64_t a1)
{
  v2 = sub_1B805FDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B805E534(uint64_t a1)
{
  v2 = sub_1B805FDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66200, &qword_1B80D3A18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B805FDC4();
  sub_1B80C99DC();
  LOBYTE(v47) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  sub_1B8060054(&qword_1EBA66210);
  sub_1B80C97DC();
  if (!v2)
  {
    v11 = type metadata accessor for FriendshipRequest();
    v59 = *(v3 + v11[5]);
    v58 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
    sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224);
    sub_1B80C97DC();
    v12 = (v3 + v11[6]);
    v13 = v12[8];
    v14 = v12[6];
    v54 = v12[7];
    v55 = v13;
    v15 = v12[8];
    v16 = v12[10];
    v56 = v12[9];
    v57 = v16;
    v17 = v12[4];
    v18 = v12[2];
    v50 = v12[3];
    v51 = v17;
    v19 = v12[4];
    v20 = v12[6];
    v52 = v12[5];
    v53 = v20;
    v21 = *v12;
    v22 = v12[2];
    v48 = v12[1];
    v49 = v22;
    v23 = *v12;
    v44 = v15;
    v45 = v56;
    v46 = v12[10];
    v47 = v23;
    v40 = v19;
    v41 = v52;
    v42 = v14;
    v43 = v54;
    v36 = v21;
    v37 = v48;
    v38 = v18;
    v39 = v50;
    v35 = 2;
    sub_1B7FB8448(&v47, v34, &qword_1EBA65D78, &qword_1B80D2640);
    sub_1B7FDC224();
    sub_1B80C977C();
    v34[8] = v44;
    v34[9] = v45;
    v34[10] = v46;
    v34[4] = v40;
    v34[5] = v41;
    v34[6] = v42;
    v34[7] = v43;
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v34[3] = v39;
    sub_1B7FB86D4(v34, &qword_1EBA65D78, &qword_1B80D2640);
    v24 = v11[7];
    v30 = 3;
    sub_1B80C8E2C();
    sub_1B7FBAD64(&qword_1ED8DC390);
    sub_1B80C977C();
    v30 = *(v3 + v11[8]);
    v33 = 4;
    sub_1B805FE18();
    sub_1B80C977C();
    v30 = *(v3 + v11[9]);
    v33 = 5;
    sub_1B805FE6C();
    sub_1B80C977C();
    v25 = v3 + v11[10];
    v26 = *(v25 + 24);
    v30 = *v25;
    v31 = *(v25 + 8);
    v32 = v26;
    v33 = 6;
    sub_1B7FDC2CC();

    sub_1B80C97DC();

    v27 = *(v3 + v11[11]);
    v30 = 7;
    sub_1B80C979C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FriendshipRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66228, &qword_1B80D3A28);
  v43 = *(v46 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v39 - v12;
  v14 = type metadata accessor for FriendshipRequest();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B805FDC4();
  v45 = v13;
  v20 = v47;
  sub_1B80C99BC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0(v64);
  }

  v47 = v6;
  v21 = v43;
  v22 = v44;
  LOBYTE(v53) = 0;
  sub_1B8060054(&qword_1EBA66230);
  sub_1B80C972C();
  v23 = *(v22 + 32);
  v40 = v17;
  v41 = v7;
  v23(v17, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  v48 = 1;
  sub_1B7FDC3C8(&qword_1ED8DBB88, sub_1B7FDC440);
  sub_1B80C972C();
  *&v40[*(v14 + 20)] = v53;
  v52 = 2;
  sub_1B7FDC440();
  sub_1B80C96CC();
  v39 = v14;
  v24 = &v40[*(v14 + 24)];
  v25 = v62;
  *(v24 + 8) = v61;
  *(v24 + 9) = v25;
  *(v24 + 10) = v63;
  v26 = v58;
  *(v24 + 4) = v57;
  *(v24 + 5) = v26;
  v27 = v60;
  *(v24 + 6) = v59;
  *(v24 + 7) = v27;
  v29 = v54;
  v28 = v55;
  *v24 = v53;
  *(v24 + 1) = v29;
  v30 = v56;
  *(v24 + 2) = v28;
  *(v24 + 3) = v30;
  sub_1B80C8E2C();
  v48 = 3;
  sub_1B7FBAD64(&qword_1ED8DBBD8);
  v31 = v47;
  v32 = v45;
  sub_1B80C96CC();
  v33 = v39;
  sub_1B805DC34(v31, &v40[v39[7]]);
  v51 = 4;
  sub_1B805FEC0();
  sub_1B80C96CC();
  v34 = v40;
  v40[v33[8]] = v48;
  v51 = 5;
  sub_1B805FF14();
  sub_1B80C96CC();
  *(v34 + v33[9]) = v48;
  v51 = 6;
  sub_1B7FCFB00();
  sub_1B80C972C();
  v35 = v50;
  v36 = v34 + v33[10];
  *v36 = v48;
  *(v36 + 8) = v49;
  *(v36 + 24) = v35;
  v48 = 7;
  v37 = sub_1B80C96EC();
  (*(v21 + 8))(v32, v46);
  *(v34 + v33[11]) = v37 & 1;
  sub_1B805FF68(v34, v42);
  __swift_destroy_boxed_opaque_existential_0(v64);
  return sub_1B805D8BC(v34);
}

uint64_t sub_1B805F30C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FriendshipCanShareLocationRequest.handle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1B7FC8DA4(v18, &v17);
}

uint64_t FriendshipCanShareLocationRequest.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = *(v1 + 176);
  *(a1 + 8) = *(v1 + 184);
  *(a1 + 24) = v2;
}

uint64_t FriendshipCanShareLocationRequest.description.getter()
{
  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[10];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[6];
  v16 = v0[7];
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  v1 = *(v0 + 176);
  v8 = *(v0 + 184);
  v2 = *(v0 + 25);
  v3 = *(v0 + 208);
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0xD000000000000021, 0x80000001B80D3A10);
  MEMORY[0x1B8CB7A40](0x726F202020200A3ALL, 0xEE00203A6E696769);
  v4 = RequestOrigin.description.getter();
  MEMORY[0x1B8CB7A40](v4);

  MEMORY[0x1B8CB7A40](0x6E6168202020200ALL, 0xED0000203A656C64);
  v5 = Handle.description.getter();
  MEMORY[0x1B8CB7A40](v5);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CD7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66248, &qword_1B80D3A58);
  v6 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v6);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B805F5FC()
{
  v1 = 0x6E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x72476D6F72467369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_1B805F658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8060954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B805F680(uint64_t a1)
{
  v2 = sub_1B805FFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B805F6BC(uint64_t a1)
{
  v2 = sub_1B805FFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipCanShareLocationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66250, &qword_1B80D3A60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = v1[9];
  v58 = v1[8];
  v59 = v8;
  v60 = v1[10];
  v9 = v1[5];
  v54 = v1[4];
  v55 = v9;
  v10 = v1[7];
  v56 = v1[6];
  v57 = v10;
  v11 = v1[1];
  v50 = *v1;
  v51 = v11;
  v12 = v1[3];
  v52 = v1[2];
  v53 = v12;
  v20 = *(v1 + 176);
  v13 = *(v1 + 23);
  v18 = *(v1 + 24);
  v19 = v13;
  v21 = *(v1 + 25);
  v17[1] = *(v1 + 208);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC8DA4(&v50, &v39);
  sub_1B805FFCC();
  sub_1B80C99DC();
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v46 = v57;
  v39 = v50;
  v40 = v51;
  v41 = v52;
  v42 = v53;
  v38 = 0;
  sub_1B7FDC224();
  v15 = v61;
  sub_1B80C97DC();
  if (v15)
  {
    v35 = v47;
    v36 = v48;
    v37 = v49;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    sub_1B7FCAD28(&v27);
  }

  else
  {
    v35 = v47;
    v36 = v48;
    v37 = v49;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    sub_1B7FCAD28(&v27);
    v23 = v20;
    v24 = v19;
    v25 = v18;
    v26 = v21;
    v22 = 1;
    sub_1B7FDC2CC();

    sub_1B80C97DC();

    v23 = 2;
    sub_1B80C976C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t FriendshipCanShareLocationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66258, &qword_1B80D3A68);
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B805FFCC();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v81 = 0;
  sub_1B7FDC440();
  sub_1B80C972C();
  v76 = v65;
  v77 = v66;
  v78 = v67;
  v72 = v61;
  v73 = v62;
  v74 = v63;
  v75 = v64;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v71 = v60;
  LOBYTE(v27) = 1;
  sub_1B7FCFB00();
  sub_1B80C972C();
  v79 = v41;
  v24 = v42;
  v25 = *(&v41 + 1);
  v11 = *(&v42 + 1);
  v80 = 2;
  v12 = sub_1B80C96BC();
  (*(v10 + 8))(v8, v26);
  v35 = v76;
  v36 = v77;
  v37 = v78;
  v31 = v72;
  v32 = v73;
  v13 = v75;
  v33 = v74;
  v34 = v75;
  v27 = v68;
  v28 = v69;
  v14 = v71;
  v29 = v70;
  v30 = v71;
  LOBYTE(v10) = v79;
  LOBYTE(v38) = v79;
  v16 = v24;
  v15 = v25;
  *(&v38 + 1) = v25;
  *&v39 = v24;
  *(&v39 + 1) = v11;
  v40 = v12;
  *(a2 + 208) = v12;
  v17 = v32;
  *(a2 + 96) = v33;
  *(a2 + 112) = v13;
  v18 = v36;
  *(a2 + 128) = v35;
  *(a2 + 144) = v18;
  v19 = v31;
  *(a2 + 32) = v29;
  *(a2 + 48) = v14;
  *(a2 + 64) = v19;
  *(a2 + 80) = v17;
  v20 = v28;
  *a2 = v27;
  *(a2 + 16) = v20;
  v21 = v38;
  *(a2 + 160) = v37;
  *(a2 + 176) = v21;
  *(a2 + 192) = v39;
  sub_1B8010CC0(&v27, &v41);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v49 = v76;
  v50 = v77;
  v51 = v78;
  v45 = v72;
  v46 = v73;
  v47 = v74;
  v48 = v75;
  v41 = v68;
  v42 = v69;
  v43 = v70;
  v44 = v71;
  v52 = v10;
  v53 = v15;
  v54 = v16;
  v55 = v11;
  v56 = v12;
  return sub_1B8012D18(&v41);
}

unint64_t sub_1B805FDC4()
{
  result = qword_1EBA66208;
  if (!qword_1EBA66208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66208);
  }

  return result;
}

unint64_t sub_1B805FE18()
{
  result = qword_1EBA66218;
  if (!qword_1EBA66218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66218);
  }

  return result;
}

unint64_t sub_1B805FE6C()
{
  result = qword_1EBA66220;
  if (!qword_1EBA66220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66220);
  }

  return result;
}

unint64_t sub_1B805FEC0()
{
  result = qword_1EBA66238;
  if (!qword_1EBA66238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66238);
  }

  return result;
}

unint64_t sub_1B805FF14()
{
  result = qword_1EBA66240;
  if (!qword_1EBA66240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66240);
  }

  return result;
}

uint64_t sub_1B805FF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendshipRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B805FFCC()
{
  result = qword_1ED8DC000;
  if (!qword_1ED8DC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC000);
  }

  return result;
}

uint64_t sub_1B8060054(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66020, &qword_1B80D2A10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B80600CC()
{
  sub_1B80602B8(319, &qword_1EBA66268, type metadata accessor for FriendshipRequest, MEMORY[0x1E699C7D8]);
  if (v0 <= 0x3F)
  {
    sub_1B806031C(319, &qword_1EBA65938, &type metadata for Handle, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B806031C(319, &qword_1ED8DD998, &type metadata for Handle, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B80602B8(319, &qword_1ED8DDAC0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B806031C(319, &qword_1EBA659F8, &type metadata for FriendshipRequestType, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B806031C(319, &qword_1EBA659E0, &type metadata for FriendshipResponseToInviteType, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B80602B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B806031C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1B80603B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_1B80603F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B80604A4()
{
  result = qword_1EBA66270;
  if (!qword_1EBA66270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66270);
  }

  return result;
}

unint64_t sub_1B80604FC()
{
  result = qword_1EBA66278;
  if (!qword_1EBA66278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66278);
  }

  return result;
}

unint64_t sub_1B8060554()
{
  result = qword_1ED8DBFF0;
  if (!qword_1ED8DBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBFF0);
  }

  return result;
}

unint64_t sub_1B80605AC()
{
  result = qword_1ED8DBFF8;
  if (!qword_1ED8DBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBFF8);
  }

  return result;
}

unint64_t sub_1B8060604()
{
  result = qword_1EBA66280;
  if (!qword_1EBA66280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66280);
  }

  return result;
}

unint64_t sub_1B806065C()
{
  result = qword_1EBA66288;
  if (!qword_1EBA66288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66288);
  }

  return result;
}

uint64_t sub_1B80606B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E61486F74 && a2 == 0xE900000000000073 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614872656C6C6163 && a2 == 0xEC000000656C646ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54646E6F70736572 && a2 == 0xEB00000000657079 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72476D6F72467369 && a2 == 0xEB0000000070756FLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B8060954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72476D6F72467369 && a2 == 0xEB0000000070756FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

BOOL static FriendshipRequestStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1B8060AF4()
{
  v1 = 0x73736563637573;
  v2 = 0x6572756C696166;
  if (*v0 != 2)
  {
    v2 = 0x676E69646E6570;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
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

uint64_t sub_1B8060B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8064580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8060B9C(uint64_t a1)
{
  v2 = sub_1B806136C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060BD8(uint64_t a1)
{
  v2 = sub_1B806136C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8060C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8060CAC(uint64_t a1)
{
  v2 = sub_1B8061414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060CE8(uint64_t a1)
{
  v2 = sub_1B8061414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8060D30(uint64_t a1)
{
  v2 = sub_1B80614BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060D6C(uint64_t a1)
{
  v2 = sub_1B80614BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8060DA8(uint64_t a1)
{
  v2 = sub_1B80613C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060DE4(uint64_t a1)
{
  v2 = sub_1B80613C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8060E20(uint64_t a1)
{
  v2 = sub_1B8061510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060E5C(uint64_t a1)
{
  v2 = sub_1B8061510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequestStatus.encode(to:)(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66290, &qword_1B80D3E80);
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v28 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66298, &qword_1B80D3E88);
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662A0, &qword_1B80D3E90);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662A8, &qword_1B80D3E98);
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662B0, &qword_1B80D3EA0);
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v18 = &v28 - v17;
  v19 = *v1;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806136C();
  sub_1B80C99DC();
  switch(v19)
  {
    case 5:
      v43 = 3;
      sub_1B80613C0();
      v24 = v32;
      v23 = v38;
      sub_1B80C974C();
      (*(v34 + 8))(v24, v36);
      return (*(v15 + 8))(v18, v23);
    case 4:
      v40 = 1;
      sub_1B80614BC();
      v23 = v38;
      sub_1B80C974C();
      (*(v30 + 8))(v10, v31);
      return (*(v15 + 8))(v18, v23);
    case 3:
      v39 = 0;
      sub_1B8061510();
      v21 = v38;
      sub_1B80C974C();
      (*(v28 + 8))(v14, v29);
      return (*(v15 + 8))(v18, v21);
    default:
      v42 = 2;
      sub_1B8061414();
      v25 = v33;
      v26 = v38;
      sub_1B80C974C();
      v41 = v19;
      sub_1B8061468();
      v27 = v37;
      sub_1B80C97DC();
      (*(v35 + 8))(v25, v27);
      return (*(v15 + 8))(v18, v26);
  }
}

unint64_t sub_1B806136C()
{
  result = qword_1EBA662B8;
  if (!qword_1EBA662B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662B8);
  }

  return result;
}

unint64_t sub_1B80613C0()
{
  result = qword_1EBA662C0;
  if (!qword_1EBA662C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662C0);
  }

  return result;
}

unint64_t sub_1B8061414()
{
  result = qword_1EBA662C8;
  if (!qword_1EBA662C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662C8);
  }

  return result;
}

unint64_t sub_1B8061468()
{
  result = qword_1EBA662D0;
  if (!qword_1EBA662D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662D0);
  }

  return result;
}

unint64_t sub_1B80614BC()
{
  result = qword_1EBA662D8;
  if (!qword_1EBA662D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662D8);
  }

  return result;
}

unint64_t sub_1B8061510()
{
  result = qword_1EBA662E0;
  if (!qword_1EBA662E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662E0);
  }

  return result;
}

uint64_t FriendshipRequestStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662E8, &qword_1B80D3EA8);
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v60 = v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662F0, &qword_1B80D3EB0);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662F8, &qword_1B80D3EB8);
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66300, &qword_1B80D3EC0);
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66308, &qword_1B80D3EC8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v49 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1B806136C();
  v25 = v62;
  sub_1B80C99BC();
  if (!v25)
  {
    v26 = v17;
    v50 = v14;
    v51 = 0;
    v28 = v59;
    v27 = v60;
    v62 = v19;
    v29 = v61;
    v30 = v22;
    v31 = sub_1B80C973C();
    v32 = *(v31 + 16);
    if (!v32 || ((v33 = *(v31 + 32), v32 == 1) ? (v34 = v33 == 4) : (v34 = 1), v34))
    {
      v35 = sub_1B80C955C();
      swift_allocError();
      v37 = v36;
      v38 = v18;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
      *v37 = &type metadata for FriendshipRequestStatus;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v62 + 8))(v30, v38);
      goto LABEL_21;
    }

    v49[1] = v31;
    if (v33 <= 1)
    {
      if (v33)
      {
        v65 = 1;
        sub_1B80614BC();
        v43 = v51;
        sub_1B80C968C();
        if (!v43)
        {
          (*(v55 + 8))(v13, v56);
          (*(v62 + 8))(v22, v18);
          swift_unknownObjectRelease();
          *v29 = 4;
          return __swift_destroy_boxed_opaque_existential_0(v63);
        }
      }

      else
      {
        v64 = 0;
        sub_1B8061510();
        v40 = v51;
        sub_1B80C968C();
        if (!v40)
        {
          (*(v52 + 8))(v26, v50);
          (*(v62 + 8))(v22, v18);
          swift_unknownObjectRelease();
          *v29 = 3;
          return __swift_destroy_boxed_opaque_existential_0(v63);
        }
      }

      (*(v62 + 8))(v22, v18);
LABEL_21:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v63);
    }

    if (v33 != 2)
    {
      v68 = 3;
      sub_1B80613C0();
      v44 = v27;
      v45 = v51;
      sub_1B80C968C();
      v46 = v62;
      if (!v45)
      {
        (*(v53 + 8))(v44, v54);
        (*(v46 + 8))(v30, v18);
        swift_unknownObjectRelease();
        *v29 = 5;
        return __swift_destroy_boxed_opaque_existential_0(v63);
      }

      (*(v62 + 8))(v30, v18);
      goto LABEL_21;
    }

    v67 = 2;
    sub_1B8061414();
    v41 = v51;
    sub_1B80C968C();
    v42 = v62;
    if (v41)
    {
      (*(v62 + 8))(v22, v18);
      goto LABEL_21;
    }

    sub_1B8061C70();
    v48 = v57;
    sub_1B80C972C();
    (*(v58 + 8))(v28, v48);
    (*(v42 + 8))(v22, v18);
    swift_unknownObjectRelease();
    *v29 = v66;
  }

  return __swift_destroy_boxed_opaque_existential_0(v63);
}

unint64_t sub_1B8061C70()
{
  result = qword_1EBA66318;
  if (!qword_1EBA66318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66318);
  }

  return result;
}

uint64_t sub_1B8061CC4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8061CF8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8061D2C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B8061D60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

BOOL sub_1B8061DBC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1B8061E24()
{
  v1 = 0x5264696C61766E69;
  if (*v0 != 1)
  {
    v1 = 0x46646E616D6D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53676E697373696DLL;
  }
}

uint64_t sub_1B8061EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B80646EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8061ECC(uint64_t a1)
{
  v2 = sub_1B8062418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8061F08(uint64_t a1)
{
  v2 = sub_1B8062418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8061F44(uint64_t a1)
{
  v2 = sub_1B806246C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8061F80(uint64_t a1)
{
  v2 = sub_1B806246C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8061FBC(uint64_t a1)
{
  v2 = sub_1B80624C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8061FF8(uint64_t a1)
{
  v2 = sub_1B80624C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8062034(uint64_t a1)
{
  v2 = sub_1B8062514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8062070(uint64_t a1)
{
  v2 = sub_1B8062514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequestError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66320, &qword_1B80D3ED8);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66328, &qword_1B80D3EE0);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66330, &qword_1B80D3EE8);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66338, &qword_1B80D3EF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8062418();
  sub_1B80C99DC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1B80624C0();
      v12 = v26;
      sub_1B80C974C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1B806246C();
      v12 = v29;
      sub_1B80C974C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1B8062514();
    sub_1B80C974C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1B8062418()
{
  result = qword_1EBA66340;
  if (!qword_1EBA66340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66340);
  }

  return result;
}

unint64_t sub_1B806246C()
{
  result = qword_1EBA66348;
  if (!qword_1EBA66348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66348);
  }

  return result;
}

unint64_t sub_1B80624C0()
{
  result = qword_1EBA66350;
  if (!qword_1EBA66350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66350);
  }

  return result;
}

unint64_t sub_1B8062514()
{
  result = qword_1EBA66358;
  if (!qword_1EBA66358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66358);
  }

  return result;
}

uint64_t FriendshipRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FriendshipRequestError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66360, &qword_1B80D3EF8);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66368, &qword_1B80D3F00);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66370, &qword_1B80D3F08);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66378, &unk_1B80D3F10);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8062418();
  v18 = v49;
  sub_1B80C99BC();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_1B80C973C();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_1B80624C0();
          v33 = v40;
          sub_1B80C968C();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_1B806246C();
          v37 = v40;
          sub_1B80C968C();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_1B8062514();
        v35 = v40;
        sub_1B80C968C();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  v26 = sub_1B80C955C();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
  *v28 = &type metadata for FriendshipRequestError;
  sub_1B80C969C();
  sub_1B80C954C();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t FriendshipRequestResult.result.getter()
{
  v1 = *(v0 + *(type metadata accessor for FriendshipRequestResult() + 20));
}

uint64_t type metadata accessor for FriendshipRequestResult()
{
  result = qword_1EBA659E8;
  if (!qword_1EBA659E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FriendshipRequestResult.requestIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for FriendshipRequestResult() + 24));
}

uint64_t FriendshipRequestResult.init(request:result:requestIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B8010290(a1, a4);
  result = type metadata accessor for FriendshipRequestResult();
  *(a4 + *(result + 24)) = a3;
  *(a4 + *(result + 20)) = a2;
  return result;
}

uint64_t FriendshipRequestResult.description.getter()
{
  v1 = v0;
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0xD000000000000017, 0x80000001B80D3F00);
  MEMORY[0x1B8CB7A40](0x6572202020200A3ALL, 0xEF203A7473657571);
  v2 = FriendshipRequest.description.getter();
  MEMORY[0x1B8CB7A40](v2);

  MEMORY[0x1B8CB7A40](0x736572202020200ALL, 0xED0000203A746C75);
  v3 = type metadata accessor for FriendshipRequestResult();
  v4 = *(v0 + *(v3 + 20));
  sub_1B8032C04();
  v5 = sub_1B80C902C();
  MEMORY[0x1B8CB7A40](v5);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD7F0);
  v6 = *(v1 + *(v3 + 24));
  v7 = sub_1B80C902C();
  MEMORY[0x1B8CB7A40](v7);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B8062EA8()
{
  v1 = 0x746C75736572;
  if (*v0 != 1)
  {
    v1 = 0x4974736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_1B8062F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B806481C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8062F2C(uint64_t a1)
{
  v2 = sub_1B806324C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8062F68(uint64_t a1)
{
  v2 = sub_1B806324C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequestResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66380, &qword_1B80D3F38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806324C();
  sub_1B80C99DC();
  LOBYTE(v14) = 0;
  type metadata accessor for FriendshipRequest();
  sub_1B8063724(&qword_1EBA66028);
  sub_1B80C97DC();
  if (!v2)
  {
    v11 = type metadata accessor for FriendshipRequestResult();
    v14 = *(v3 + *(v11 + 20));
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66390, &qword_1B80D3F40);
    sub_1B8063768(&qword_1EBA66398, sub_1B7FDC224, sub_1B80632A0);
    sub_1B80C97DC();
    v14 = *(v3 + *(v11 + 24));
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA663A8, &qword_1B80D3F48);
    sub_1B806384C(&qword_1EBA663B0, sub_1B7FDC224);
    sub_1B80C97DC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B806324C()
{
  result = qword_1EBA66388;
  if (!qword_1EBA66388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66388);
  }

  return result;
}

unint64_t sub_1B80632A0()
{
  result = qword_1EBA663A0;
  if (!qword_1EBA663A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663A0);
  }

  return result;
}

uint64_t FriendshipRequestResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for FriendshipRequest();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA663B8, &qword_1B80D3F50);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for FriendshipRequestResult();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B806324C();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  v18 = v24;
  v19 = v15;
  LOBYTE(v28) = 0;
  sub_1B8063724(&qword_1EBA663C0);
  v20 = v25;
  sub_1B80C972C();
  sub_1B8010290(v7, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66390, &qword_1B80D3F40);
  v27 = 1;
  sub_1B8063768(&qword_1EBA663C8, sub_1B7FDC440, sub_1B80637F8);
  sub_1B80C972C();
  *(v19 + *(v12 + 20)) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA663A8, &qword_1B80D3F48);
  v27 = 2;
  sub_1B806384C(&qword_1EBA663D8, sub_1B7FDC440);
  sub_1B80C972C();
  (*(v18 + 8))(v11, v20);
  *(v19 + *(v12 + 24)) = v28;
  sub_1B8010450(v19, v23, type metadata accessor for FriendshipRequestResult);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return sub_1B80638D0(v19, type metadata accessor for FriendshipRequestResult);
}

uint64_t sub_1B8063724(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FriendshipRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B8063768(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66390, &qword_1B80D3F40);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B80637F8()
{
  result = qword_1EBA663D0;
  if (!qword_1EBA663D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663D0);
  }

  return result;
}

uint64_t sub_1B806384C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA663A8, &qword_1B80D3F48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B80638D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B8063934()
{
  result = qword_1EBA663E0;
  if (!qword_1EBA663E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FriendshipRequestStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FriendshipRequestStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B8063B14(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B8063B28(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void sub_1B8063B80()
{
  type metadata accessor for FriendshipRequest();
  if (v0 <= 0x3F)
  {
    sub_1B8063C3C(319, &qword_1EBA65958);
    if (v1 <= 0x3F)
    {
      sub_1B8063C3C(319, &qword_1EBA65950);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8063C3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1B8032C04();
    v3 = sub_1B80C903C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1B8063D44()
{
  result = qword_1EBA663E8;
  if (!qword_1EBA663E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663E8);
  }

  return result;
}

unint64_t sub_1B8063D9C()
{
  result = qword_1EBA663F0;
  if (!qword_1EBA663F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663F0);
  }

  return result;
}

unint64_t sub_1B8063DF4()
{
  result = qword_1EBA663F8;
  if (!qword_1EBA663F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663F8);
  }

  return result;
}

unint64_t sub_1B8063E4C()
{
  result = qword_1EBA66400;
  if (!qword_1EBA66400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66400);
  }

  return result;
}

unint64_t sub_1B8063EA4()
{
  result = qword_1EBA66408;
  if (!qword_1EBA66408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66408);
  }

  return result;
}

unint64_t sub_1B8063EFC()
{
  result = qword_1EBA66410;
  if (!qword_1EBA66410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66410);
  }

  return result;
}

unint64_t sub_1B8063F54()
{
  result = qword_1EBA66418;
  if (!qword_1EBA66418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66418);
  }

  return result;
}

unint64_t sub_1B8063FAC()
{
  result = qword_1EBA66420;
  if (!qword_1EBA66420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66420);
  }

  return result;
}

unint64_t sub_1B8064004()
{
  result = qword_1EBA66428;
  if (!qword_1EBA66428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66428);
  }

  return result;
}

unint64_t sub_1B806405C()
{
  result = qword_1EBA66430;
  if (!qword_1EBA66430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66430);
  }

  return result;
}

unint64_t sub_1B80640B4()
{
  result = qword_1EBA66438;
  if (!qword_1EBA66438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66438);
  }

  return result;
}

unint64_t sub_1B806410C()
{
  result = qword_1EBA66440;
  if (!qword_1EBA66440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66440);
  }

  return result;
}

unint64_t sub_1B8064164()
{
  result = qword_1EBA66448;
  if (!qword_1EBA66448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66448);
  }

  return result;
}

unint64_t sub_1B80641BC()
{
  result = qword_1EBA66450;
  if (!qword_1EBA66450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66450);
  }

  return result;
}

unint64_t sub_1B8064214()
{
  result = qword_1EBA66458;
  if (!qword_1EBA66458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66458);
  }

  return result;
}

unint64_t sub_1B806426C()
{
  result = qword_1EBA66460;
  if (!qword_1EBA66460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66460);
  }

  return result;
}

unint64_t sub_1B80642C4()
{
  result = qword_1EBA66468;
  if (!qword_1EBA66468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66468);
  }

  return result;
}

unint64_t sub_1B806431C()
{
  result = qword_1EBA66470;
  if (!qword_1EBA66470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66470);
  }

  return result;
}

unint64_t sub_1B8064374()
{
  result = qword_1EBA66478;
  if (!qword_1EBA66478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66478);
  }

  return result;
}

unint64_t sub_1B80643CC()
{
  result = qword_1EBA66480;
  if (!qword_1EBA66480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66480);
  }

  return result;
}

unint64_t sub_1B8064424()
{
  result = qword_1EBA66488;
  if (!qword_1EBA66488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66488);
  }

  return result;
}

unint64_t sub_1B806447C()
{
  result = qword_1EBA66490;
  if (!qword_1EBA66490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66490);
  }

  return result;
}

unint64_t sub_1B80644D4()
{
  result = qword_1EBA66498;
  if (!qword_1EBA66498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66498);
  }

  return result;
}

unint64_t sub_1B806452C()
{
  result = qword_1EBA664A0;
  if (!qword_1EBA664A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA664A0);
  }

  return result;
}

uint64_t sub_1B8064580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B80CD810 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B80646EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E697373696DLL && a2 == 0xEF64497265767265;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEF65736E6F707365 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x46646E616D6D6F63 && a2 == 0xED000064656C6961)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B806481C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xEA00000000007364)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B806495C(uint64_t a1)
{
  v2 = sub_1B8064ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8064998(uint64_t a1)
{
  v2 = sub_1B8064ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80649D4()
{
  if (*v0)
  {
    result = 7041889;
  }

  else
  {
    result = 0x726566666FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B8064A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726566666FLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7041889 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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