uint64_t sub_2489C5A10(uint64_t (*a1)(void))
{
  v2 = a1(0);
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_2489A86D0(v2), (v5 & 1) != 0))
  {
    sub_248997228(*(v3 + 56) + 40 * v4, &v15);
    if (*(&v16 + 1))
    {
      v6 = *(&v16 + 1);
      v7 = v17;
      v8 = __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
      v9 = *(v6 - 8);
      v10 = *(v9 + 64);
      MEMORY[0x28223BE20](v8);
      v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12);
      sub_248983734(&v15, &unk_27EEB5D70, &unk_248A16A50);
      v13 = *(v7 + 16);
      *(&v19 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v18);
      v13(v6, v7);
      (*(v9 + 8))(v12, v6);
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  sub_248983734(&v15, &unk_27EEB5D70, &unk_248A16A50);
  v18 = 0u;
  v19 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  if (swift_dynamicCast())
  {
    return v15;
  }

  sub_2489BEB30();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2489C5C68@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E98, &qword_248A16D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v23 - v5;
  v7 = sub_248A11EF0();
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_2489A86D0(v7), (v10 & 1) != 0))
  {
    sub_248997228(*(v8 + 56) + 40 * v9, &v24);
    if (*(&v25 + 1))
    {
      v11 = *(&v25 + 1);
      v12 = v26;
      v13 = __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
      v23[1] = v23;
      v14 = *(v11 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x28223BE20](v13);
      v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17);
      sub_248983734(&v24, &unk_27EEB5D70, &unk_248A16A50);
      v29 = a1;
      v18 = *(v12 + 16);
      *(&v28 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v27);
      v18(v11, v12);
      a1 = v29;
      (*(v14 + 8))(v17, v11);
      goto LABEL_7;
    }
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  sub_248983734(&v24, &unk_27EEB5D70, &unk_248A16A50);
  v27 = 0u;
  v28 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  v19 = swift_dynamicCast();
  v20 = *(*(v7 - 8) + 56);
  if (v19)
  {
    v21 = *(v7 - 8);
    v20(v6, 0, 1, v7);
    return (*(v21 + 32))(a1, v6, v7);
  }

  else
  {
    v20(v6, 1, 1, v7);
    sub_248983734(v6, &unk_27EEB5E98, &qword_248A16D10);
    sub_2489BEB30();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_2489C5FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E00, &qword_248A16C98);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_2489A86D0(v3), (v6 & 1) != 0))
  {
    sub_248997228(*(v4 + 56) + 40 * v5, &v16);
    if (*(&v17 + 1))
    {
      v7 = *(&v17 + 1);
      v8 = v18;
      v9 = __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      v21 = &v16;
      v10 = *(v7 - 8);
      v11 = *(v10 + 64);
      MEMORY[0x28223BE20](v9);
      v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13);
      sub_248983734(&v16, &unk_27EEB5D70, &unk_248A16A50);
      v14 = *(v8 + 16);
      *(&v20 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v19);
      v14(v7, v8);
      (*(v10 + 8))(v13, v7);
      goto LABEL_7;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  sub_248983734(&v16, &unk_27EEB5D70, &unk_248A16A50);
  v19 = 0u;
  v20 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  if (swift_dynamicCast())
  {
    return sub_248978948(&v16, a1);
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_248983734(&v16, &qword_27EEB5F58, &qword_248A16D60);
  sub_2489BEB30();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2489C6244(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_2489A86D0(v3), (v6 & 1) != 0))
  {
    sub_248997228(*(v4 + 56) + 40 * v5, &v16);
    if (*(&v17 + 1))
    {
      v7 = *(&v17 + 1);
      v8 = v18;
      v9 = __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      v10 = *(v7 - 8);
      v11 = *(v10 + 64);
      MEMORY[0x28223BE20](v9);
      v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13);
      sub_248983734(&v16, &unk_27EEB5D70, &unk_248A16A50);
      v14 = *(v8 + 16);
      *(&v20 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v19);
      v14(v7, v8);
      (*(v10 + 8))(v13, v7);
      goto LABEL_7;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  sub_248983734(&v16, &unk_27EEB5D70, &unk_248A16A50);
  v19 = 0u;
  v20 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  if (swift_dynamicCast())
  {
    return v16;
  }

  sub_2489BEB30();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2489C6C34@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_2489C5FB0(&v5);
  return sub_248978948(&v5, a1);
}

uint64_t sub_2489C6EE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E98, &qword_248A16D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_2489C5C68(&v11 - v6);
  v8 = sub_248A11EF0();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return (*(v9 + 32))(a1, v7, v8);
}

uint64_t Daemon.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Daemon.init()@<X0>(void *a1@<X8>)
{
  sub_2489CA768();
  v2 = sub_2489CB3E4();

  *a1 = 0xD000000000000018;
  a1[1] = 0x8000000248A19C80;
  a1[2] = v2;
  return result;
}

uint64_t Daemon.init(dependencies:)@<X0>(void *a1@<X8>)
{
  *a1 = 0xD000000000000018;
  a1[1] = 0x8000000248A19C80;
  v2 = sub_2489CB3E4();

  a1[2] = v2;
  return result;
}

uint64_t sub_2489C858C()
{
  if (qword_28150F5D0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_281510578);
  sub_2489BDB14(0xD000000000000055, 0x8000000248A19CA0, 0x6574617669746361, 0xEA00000000002928);
  sub_248A120F0();
  v3 = sub_248A120E0();
  sub_248A120D0();

  v4 = *(v1 + 16);
  v0[8] = v4;
  if (v4)
  {
    v5 = v0[7];
    v0[9] = 0;
    sub_248997228(v5 + 32, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v8 = *(v7 + 8);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_2489C87A0;

    return v13(v6, v7);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2489C87A0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x2822009F8](sub_2489C88A4, 0, 0);
}

uint64_t sub_2489C88A4()
{
  v1 = v0[9] + 1;
  if (v1 == v0[8])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    sub_248997228(v0[7] + 40 * v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = *(v5 + 8);
    v9 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_2489C87A0;

    return v9(v4, v5);
  }
}

uint64_t sub_2489C8A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2489C8A48, 0, 0);
}

uint64_t sub_2489C8A48()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_2489C8AB4, v2, 0);
}

uint64_t sub_2489C8AB4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  *(v2 + 200) = &unk_248A16D08;
  *(v2 + 208) = v1;
  sub_248996A48(v3);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2489C8B64;
  v6 = v0[3];

  return sub_24899D6C8();
}

uint64_t sub_2489C8B64()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2489C8C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_2489C8C7C, 0, 0);
}

uint64_t sub_2489C8C7C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  sub_24899A680(*(v0 + 64), (v0 + 16));
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v2[3] = v3;
  v2[4] = *(v4 + 8);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2489C8D4C(uint64_t result)
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

  result = sub_2489C991C(result, v11, 1, v3);
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

void *sub_2489C8E40(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_2489C9C68(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D60, &qword_248A16C50);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Daemon.bootstrapSandbox()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_248A12CB0();
  *(v3 + 16) = 1024;
  bzero((v3 + 32), 0x400uLL);
  sub_248A12B90();

  v4 = _set_user_dir_suffix();

  if (!v4)
  {
    v10 = MEMORY[0x24C1DF180](v5);
    if (strerror(v10))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v3 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2489C9DB0(0, *(v3 + 16), 0, v3);
  }

  if (!confstr(65537, (v3 + 32), v6))
  {
LABEL_16:
    v11 = MEMORY[0x24C1DF180]();
    if (strerror(v11))
    {
      v24 = sub_248A12C00();
      v26 = v25;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_248A13100();
      MEMORY[0x24C1DF8B0](0xD000000000000034, 0x8000000248A19D80);
      MEMORY[0x24C1DF8B0](v2, v1);
      v27 = MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
      LODWORD(v45) = MEMORY[0x24C1DF180](v27);
      v28 = sub_248A132F0();
      MEMORY[0x24C1DF8B0](v28);

      MEMORY[0x24C1DF8B0](2112041, 0xE300000000000000);
      MEMORY[0x24C1DF8B0](v24, v26);
      v29 = qword_28150F5D0;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_248A122D0();
      __swift_project_value_buffer(v30, qword_281510578);

      v20 = sub_248A122B0();
      v31 = sub_248A12E60();

      if (os_log_type_enabled(v20, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v45 = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_24897BC00(0, 0xE000000000000000, &v45);
        _os_log_impl(&dword_248975000, v20, v31, "Sandbox bootstrap error: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x24C1E0A80](v33, -1, -1);
        MEMORY[0x24C1E0A80](v32, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!mkdir((v3 + 32), 0x2BCu) && MEMORY[0x24C1DF180]() != 17)
  {
LABEL_18:
    v12 = MEMORY[0x24C1DF180]();
    if (strerror(v12))
    {
      v34 = sub_248A12C00();
      v36 = v35;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_248A13100();
      MEMORY[0x24C1DF8B0](0xD000000000000029, 0x8000000248A19D50);
      MEMORY[0x24C1DF8B0](v2, v1);
      v37 = MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
      LODWORD(v45) = MEMORY[0x24C1DF180](v37);
      v38 = sub_248A132F0();
      MEMORY[0x24C1DF8B0](v38);

      MEMORY[0x24C1DF8B0](2112041, 0xE300000000000000);
      MEMORY[0x24C1DF8B0](v34, v36);
      v39 = qword_28150F5D0;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_248A122D0();
      __swift_project_value_buffer(v40, qword_281510578);

      v20 = sub_248A122B0();
      v41 = sub_248A12E60();

      if (os_log_type_enabled(v20, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_24897BC00(0, 0xE000000000000000, &v45);
        _os_log_impl(&dword_248975000, v20, v41, "Sandbox bootstrap error: %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1E0A80](v43, -1, -1);
        MEMORY[0x24C1E0A80](v42, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_20:
    v13 = sub_248A12C00();
    v15 = v14;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000002DLL, 0x8000000248A19D00);
    MEMORY[0x24C1DF8B0](v2, v1);
    v16 = MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
    LODWORD(v45) = MEMORY[0x24C1DF180](v16);
    v17 = sub_248A132F0();
    MEMORY[0x24C1DF8B0](v17);

    MEMORY[0x24C1DF8B0](2112041, 0xE300000000000000);
    MEMORY[0x24C1DF8B0](v13, v15);
    v18 = qword_28150F5D0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_248A122D0();
    __swift_project_value_buffer(v19, qword_281510578);

    v20 = sub_248A122B0();
    v21 = sub_248A12E60();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_24897BC00(0, 0xE000000000000000, &v45);
      _os_log_impl(&dword_248975000, v20, v21, "Sandbox bootstrap error: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1E0A80](v23, -1, -1);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

LABEL_34:

    sub_248A13200();
    __break(1u);
    return;
  }

  if (qword_28150F5D0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_281510578);
  oslog = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_248975000, oslog, v8, "Sandbox bootstrapped successfully", v9, 2u);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }
}

char *sub_2489C970C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5F68, &qword_248A16D70);
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

char *sub_2489C9818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5F60, &qword_248A16D68);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2489C991C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
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

char *sub_2489C9A28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F70, &qword_248A16D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2489C9B34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D38, &qword_248A16C30);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D40, &qword_248A16C38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2489C9C68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D50, &qword_248A16C48);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D60, &qword_248A16C50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2489C9DB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D48, &qword_248A16C40);
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

char *sub_2489C9EA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D30, &qword_248A16C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2489C9FB0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = v28 - v5;
  v29 = sub_248A12EA0();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A12ED0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_248A12A40();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_2489B7884(0, &qword_28150F560, 0x277D85C90);
  v28[0] = "8Q16@NSError24";
  v28[1] = v14;
  sub_248A12A20();
  v32 = MEMORY[0x277D84F90];
  sub_2489CBB90(&unk_28150F570, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_2489CBBD8(&qword_28150F580, &unk_27EEB5F20, &unk_248A16460);
  sub_248A12FA0();
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v29);
  v15 = v30;
  *(a2 + 24) = sub_248A12EE0();
  v16 = qword_27EEB5408;
  v17 = sub_248A11BC0();
  v18 = *(*(v17 - 8) + 56);
  v18(a2 + v16, 1, 1, v17);
  sub_248A11DF0();
  v19 = qword_27EEB5418;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
  v21 = qword_27EEB5428;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  (*(*(v22 - 8) + 56))(a2 + v21, 1, 1, v22);
  *(a2 + qword_27EEB5438) = 0;
  v23 = (a2 + qword_27EEB5440);
  *v23 = v15;
  v23[1] = &protocol witness table for NWConnection;
  *(a2 + qword_27EEB5448) = 0;
  sub_248A122A0();
  swift_unknownObjectRetain();
  *(a2 + 16) = sub_248A12290();
  v24 = MEMORY[0x24C1DF380]();
  nw_connection_copy_endpoint(v24);
  swift_unknownObjectRelease();
  if (nw_endpoint_get_device_id())
  {
    sub_248A12C00();
    v25 = v31;
    sub_248A11B80();

    swift_unknownObjectRelease();
  }

  else
  {
    v25 = v31;
    v18(v31, 1, 1, v17);

    swift_unknownObjectRelease();
  }

  v26 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D194(v25, a2 + v26, &qword_27EEB5400, &unk_248A14E10);
  swift_endAccess();
  return a2;
}

void sub_2489CA494(uint64_t a1, uint64_t a2)
{
  v4 = sub_248A12A50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_248A12A60();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = *(a2 + 40);
    if (v11 <= 0x3F)
    {
      v13 = *(a2 + 24);
      v12 = *(a2 + 32);

      sub_2489C27D4();
      sub_2489BA88C(v13, v12, v11);
      LOBYTE(v11) = *(a2 + 40);
    }

    v14 = *(a2 + 24);
    v15 = *(a2 + 32);
    *(a2 + 24) = a1;
    *(a2 + 32) = &protocol witness table for NWConnection;
    *(a2 + 40) = 64;
    swift_unknownObjectRetain();
    sub_2489BA88C(v14, v15, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2489CA604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_2489AC334(0, 0, v12, &unk_248A16D20, v14);

  return v4;
}

uint64_t sub_2489CA768()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v66 = v64 - v2;
  v3 = sub_248A11EF0();
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Dependencies();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2489918CC(MEMORY[0x277D84F90]);
  v8 = type metadata accessor for NotificationController();
  v9 = [objc_allocWithZone(v8) init];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5DA8, &qword_248A16C78);
  v74 = sub_2489CBBD8(&unk_28150FD70, &unk_27EEB5DA8, &qword_248A16C78);
  *&v72 = v9;
  swift_beginAccess();
  v65 = v9;
  sub_2489BE1C8(&v72, v8);
  swift_endAccess();
  type metadata accessor for RapportXPCEventServer();
  swift_allocObject();
  v10 = sub_2489D54A0();
  v64[4] = v10;
  v11 = sub_2489CBB90(&qword_27EEB5DB8, type metadata accessor for RapportXPCEventServer);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5D98, &qword_248A16C70);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5DC0, &qword_248A16C80);
  v74 = sub_2489CBBD8(&unk_27EEB5DC8, &qword_27EEB5DC0, &qword_248A16C80);
  *&v72 = v10;
  *(&v72 + 1) = v11;
  swift_beginAccess();

  sub_2489BE1C8(&v72, v12);
  swift_endAccess();
  type metadata accessor for DarwinNotificationXPCEventServer();
  swift_allocObject();
  v13 = sub_2489D1480();
  v64[3] = v13;
  v14 = sub_2489CBB90(&unk_28150F940, type metadata accessor for DarwinNotificationXPCEventServer);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D90, &qword_248A16C68);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5DD8, &qword_248A16C88);
  v74 = sub_2489CBBD8(&unk_27EEB5DE0, &qword_27EEB5DD8, &qword_248A16C88);
  *&v72 = v13;
  *(&v72 + 1) = v14;
  swift_beginAccess();

  sub_2489BE1C8(&v72, v15);
  swift_endAccess();
  sub_248A11D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_248A14B30;
  *(v16 + 32) = sub_248A11D60();
  *(v16 + 40) = v17;
  v18 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v19 = sub_248A12B30();

  v20 = [v18 initWithMachServiceName_];

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D58, &qword_248A181B0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  sub_248A11DF0();
  v25 = type metadata accessor for ServerListener();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v26[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener] = v20;
  v71.receiver = v26;
  v71.super_class = v25;
  v27 = v20;
  v24[3] = objc_msgSendSuper2(&v71, sel_init);
  v24[4] = v16;
  sub_248A122A0();
  v28 = sub_248A12290();

  v24[2] = v28;
  *(v24[3] + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8) = &off_285B62840;
  swift_unknownObjectWeakAssign();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5DF0, &qword_248A16C90);
  v74 = sub_2489CBBD8(&qword_28150FD48, &unk_27EEB5DF0, &qword_248A16C90);
  *&v72 = v24;
  swift_beginAccess();

  sub_2489BE1C8(&v72, v21);
  swift_endAccess();
  v29 = type metadata accessor for SharingInteractionController();
  swift_allocObject();
  v30 = SharingInteractionController.init()();
  v73 = v29;
  v74 = &protocol witness table for SharingInteractionController;
  *&v72 = v30;
  v64[2] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E00, &qword_248A16C98);
  v70[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E08, &qword_248A16CA0);
  v70[4] = sub_2489CBBD8(&qword_28150FD80, &unk_27EEB5E08, &qword_248A16CA0);
  v70[0] = swift_allocObject();
  sub_248997228(&v72, v70[0] + 16);
  swift_beginAccess();

  sub_2489BE1C8(v70, v31);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(&v72);

  sub_2489C6C34(&v72);
  v32 = type metadata accessor for NearbyDeviceProvider(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = NearbyDeviceProvider.init(sharingInteractionController:browserProvider:)(&v72, sub_2489B3210, 0);
  v64[1] = v35;

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E18, &qword_248A16CA8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E20, &qword_248A16CB0);
  v74 = sub_2489CBBD8(&qword_28150FD88, &unk_27EEB5E20, &qword_248A16CB0);
  *&v72 = v35;
  *(&v72 + 1) = &protocol witness table for NearbyDeviceProvider;
  swift_beginAccess();

  sub_2489BE1C8(&v72, v36);
  swift_endAccess();

  v37 = sub_2489C6490();
  v39 = v38;
  v40 = sub_2489C671C();
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E30, &qword_248A16CB8);
  swift_allocObject();
  v44 = sub_2489CA604(v37, v39, v40, v42);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E38, &qword_248A16CC0);
  v74 = sub_2489CBBD8(&unk_28150FD60, &unk_27EEB5E38, &qword_248A16CC0);
  *&v72 = v44;
  swift_beginAccess();

  sub_2489BE1C8(&v72, v43);
  swift_endAccess();
  v45 = sub_248A11EB0();
  v46 = sub_248A11EA0();
  v64[0] = v46;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E48, &qword_248A16CC8);
  v74 = sub_2489CBBD8(qword_28150FDB0, &unk_27EEB5E48, &qword_248A16CC8);
  *&v72 = v46;
  swift_beginAccess();

  sub_2489BE1C8(&v72, v45);
  swift_endAccess();
  v47 = v67;
  sub_248A11EE0();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E58, &qword_248A16CD0);
  v74 = sub_2489CBBD8(&unk_28150FDA0, &unk_27EEB5E58, &qword_248A16CD0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v72);
  v49 = v68;
  (*(v69 + 16))(boxed_opaque_existential_1Tm, v47, v68);
  swift_beginAccess();
  sub_2489BE1C8(&v72, v49);
  swift_endAccess();
  v50 = sub_248A11FD0();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_248A11FC0();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E68, &qword_248A16CD8);
  v74 = sub_2489CBBD8(&unk_28150FD90, &unk_27EEB5E68, &qword_248A16CD8);
  *&v72 = v53;
  swift_beginAccess();

  sub_2489BE1C8(&v72, v50);
  swift_endAccess();
  v54 = type metadata accessor for GuestUserAccessResponseController();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();

  v57 = sub_2489A47F8();

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D88, &qword_248A16C60);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E78, &qword_248A16CE0);
  v74 = sub_2489CBBD8(&unk_28150FD50, &unk_27EEB5E78, &qword_248A16CE0);
  *&v72 = v57;
  *(&v72 + 1) = &off_285B61480;
  swift_beginAccess();

  sub_2489BE1C8(&v72, v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D68, &qword_248A16C58);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E88, &qword_248A16CE8);
  v74 = sub_2489CBBD8(&qword_27EEB5E90, &qword_27EEB5E88, &qword_248A16CE8);
  *&v72 = v57;
  *(&v72 + 1) = &off_285B61440;

  sub_2489BE1C8(&v72, v59);
  swift_endAccess();
  v60 = sub_248A12D40();
  v61 = v66;
  (*(*(v60 - 8) + 56))(v66, 1, 1, v60);
  v62 = swift_allocObject();
  v62[2] = 0;
  v62[3] = 0;
  v62[4] = v44;
  v62[5] = v57;

  sub_2489E5FD4(0, 0, v61, &unk_248A16CF8, v62);

  (*(v69 + 8))(v67, v68);
  return v7;
}

void *sub_2489CB3E4()
{
  v0 = sub_2489C7A4C();
  v1 = sub_2489C671C();
  v3 = v2;
  v4 = sub_2489C81F0();
  v6 = v5;
  v22 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D50, &qword_248A16C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A16300;
  v8 = type metadata accessor for GuestUserHandoverServer();
  v9 = swift_allocObject();
  type metadata accessor for GuestUserHandoverServer.NotifyServiceState();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = 0;
  v9[7] = v10;
  v9[2] = sub_2489C7A4C();
  v9[3] = sub_2489C7CD8();
  v9[4] = v11;
  v9[5] = sub_2489C7F64();
  v9[6] = v12;
  *(inited + 56) = v8;
  *(inited + 64) = &off_285B63050;
  *(inited + 32) = v9;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D58, &qword_248A181B0);
  *(inited + 104) = &protocol witness table for XPCServer<A>;
  *(inited + 72) = v0;
  *(inited + 136) = swift_getObjectType();
  *(inited + 144) = *(v3 + 8);
  *(inited + 112) = v1;
  *(inited + 176) = swift_getObjectType();
  *(inited + 184) = *(v6 + 8);
  *(inited + 152) = v4;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2489C8E40(inited);
  v13 = swift_unknownObjectRetain();
  v14 = _s13DeviceSharing21EnrollmentAssetServerC026darwinNotificationXPCEventE0AcA06DarwinghE8Protocol_p_tcfC_0(v13, v6);
  v15 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_2489C9C68(0, v22[2] + 1, 1, v22);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_2489C9C68((v16 > 1), v17 + 1, 1, v15);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v20 = type metadata accessor for EnrollmentAssetServer();
  v21 = &protocol witness table for EnrollmentAssetServer;
  *&v19 = v14;
  v15[2] = v17 + 1;
  sub_248978948(&v19, &v15[5 * v17 + 4]);
  return v15;
}

uint64_t dispatch thunk of DaemonServer.activate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248978D74;

  return v9(a1, a2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2489CB750(uint64_t a1, int a2)
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

uint64_t sub_2489CB798(uint64_t result, int a2, int a3)
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

uint64_t sub_2489CB7E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489C8A28(a1, v4, v5, v7, v6);
}

uint64_t sub_2489CB8A8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2489839A0;

  return sub_2489C8C58(a1, a2, v2);
}

uint64_t sub_2489CB954(uint64_t a1)
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

  return sub_2489BF0B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2489CBA1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_2489BF214(a1);
}

uint64_t sub_2489CBAB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489CBB24(uint64_t a1)
{
  v2 = type metadata accessor for NearbyDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2489CBB90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2489CBBD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2489CBC2C@<X0>(uint64_t *a1@<X8>)
{
  v62 = a1;
  v2 = sub_248A12480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v61 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v66[2] = *v1;
  v66[3] = v11;
  v66[4] = v12;
  sub_2489CC220();
  sub_248A12440();
  sub_2489CF9A8();
  v13 = sub_248A12B00();
  v14 = *(v3 + 8);
  v14(v7, v2);
  if (v13)
  {
    v14(v9, v2);
    v63 = v10;
    v64 = v11;
    v65 = v12;
    result = sub_2489CDE00();
    if (v16)
    {
      v17 = result;
      v18 = v16;
      if (result == 0x3030303030303030 && v16 == 0xE800000000000000 || (sub_248A13340() & 1) != 0)
      {

        v17 = 0;
        v18 = 0;
      }

      v19 = [v12 label];
      if (v19)
      {
        v20 = v19;
        v21 = sub_248A12B60();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v63 = v21;
      v64 = v23;
      v66[0] = 0xD000000000000014;
      v66[1] = 0x8000000248A1A030;
      sub_2489835B8();
      v30 = sub_248A12F50();

      if (v30)
      {
        v31 = v62;
        *v62 = 1;
        v31[1] = v17;
        v31[2] = v18;
        *(v31 + 24) = 0;
        return result;
      }

      v32 = [v12 label];
      if (v32)
      {
        v33 = v32;
        v34 = sub_248A12B60();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      v63 = v34;
      v64 = v36;
      strcpy(v66, "gazeEyeModel");
      BYTE5(v66[1]) = 0;
      HIWORD(v66[1]) = -5120;
      v45 = sub_248A12F50();

      if (v45)
      {
        v46 = v62;
        *v62 = 0;
        v46[1] = v17;
        v46[2] = v18;
        *(v46 + 24) = 0;
        return result;
      }

      v47 = [v12 label];
      if (v47)
      {
        v48 = v47;
        v49 = sub_248A12B60();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0xE000000000000000;
      }

      v63 = v49;
      v64 = v51;
      v66[0] = 0xD00000000000001DLL;
      v66[1] = 0x8000000248A1A050;
      v54 = sub_248A12F50();

      if (v54)
      {
        v38 = v62;
        *v62 = v17;
        v38[1] = v18;
        v38[2] = 0;
        v39 = 1;
        goto LABEL_32;
      }

      v55 = [v12 label];
      if (v55)
      {
        v56 = v55;
        v57 = sub_248A12B60();
        v59 = v58;
      }

      else
      {
        v57 = 0;
        v59 = 0xE000000000000000;
      }

      v63 = v57;
      v64 = v59;
      v66[0] = 0xD000000000000015;
      v66[1] = 0x8000000248A1A070;
      v60 = sub_248A12F50();

      v38 = v62;
      *v62 = 0;
      v38[1] = 0;
      v38[2] = 0;
      if (v60)
      {
        v39 = 2;
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_30:
    v38 = v62;
    *v62 = 0;
    v38[1] = 0;
    v38[2] = 0;
LABEL_31:
    v39 = -1;
    goto LABEL_32;
  }

  sub_248A12460();
  v24 = sub_248A12B00();
  v14(v7, v2);
  result = (v14)(v9, v2);
  if ((v24 & 1) == 0)
  {
    goto LABEL_30;
  }

  v25 = [v12 label];
  if (v25)
  {
    v26 = v25;
    v27 = sub_248A12B60();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v63 = v27;
  v64 = v29;
  strcpy(v66, "enrollment");
  BYTE3(v66[1]) = 0;
  HIDWORD(v66[1]) = -369098752;
  sub_2489835B8();
  v37 = sub_248A12F50();

  if ((v37 & 1) == 0)
  {
    v40 = [v12 label];
    if (v40)
    {
      v41 = v40;
      v42 = sub_248A12B60();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0xE000000000000000;
    }

    v63 = v42;
    v64 = v44;
    strcpy(v66, "missingFingers");
    HIBYTE(v66[1]) = -18;
    v52 = sub_248A12F50();

    if (v52)
    {
      v53 = v62;
      v62[1] = 0;
      v53[2] = 0;
      *v53 = 2;
      *(v53 + 24) = 2;
      return result;
    }

    goto LABEL_30;
  }

  v38 = v62;
  v62[1] = 0;
  v38[2] = 0;
  *v38 = 1;
  v39 = 2;
LABEL_32:
  *(v38 + 24) = v39;
  return result;
}

uint64_t sub_2489CC220()
{
  v1 = *(v0 + 16);
  v2 = [v1 type];
  if (v2 > 120)
  {
    if (v2 == 121)
    {

      return sub_248A12410();
    }

    if (v2 == 125)
    {

      return sub_248A12440();
    }

LABEL_15:

    return sub_248A12450();
  }

  if (v2 == 100)
  {
    v6 = [v1 label];
    if (v6)
    {
      v7 = v6;
      sub_248A12B60();

      sub_2489835B8();
      LOBYTE(v7) = sub_248A12F50();

      if (v7)
      {
        return sub_248A12420();
      }

      return sub_248A12440();
    }

    goto LABEL_15;
  }

  if (v2 != 102)
  {
    goto LABEL_15;
  }

  v3 = [v1 label];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3;
  sub_248A12B60();

  sub_2489835B8();
  LOBYTE(v4) = sub_248A12F50();

  if (v4)
  {
    return sub_248A12450();
  }

  return sub_248A12460();
}

uint64_t AllAssetsRepresentation.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v77 = 0x1000000000000015;
  v78 = 0x8000000248A1A010;
  sub_248A13100();

  sub_2489CCFCC();
  v3 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v3);

  MEMORY[0x24C1DF8B0](0x6576697463412820, 0xE900000000000029);
  MEMORY[0x24C1DF8B0](0x203A859CE20ALL, 0xA600000000000000);

  sub_248A13100();

  sub_2489CD4B8();
  v4 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v4);

  MEMORY[0x24C1DF8B0](0x2064756F6C432820, 0xEF296465636E7953);
  MEMORY[0x24C1DF8B0](0x3A8FB8EF86ACE20ALL, 0xA900000000000020);

  sub_248A13100();

  sub_2489CD170();
  v5 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v5);

  MEMORY[0x24C1DF8B0](0x43206D6F72662820, 0xED00002964756F6CLL);
  MEMORY[0x24C1DF8B0](0x3A8FB8EF8198E20ALL, 0xA900000000000020);

  sub_248A13100();

  *&v73 = 0xA700000000000000;
  v75[0] = v2;
  sub_2489CD314();
  v76 = v6;
  v7 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v7);

  MEMORY[0x24C1DF8B0](0x50206D6F72662820, 0xEB00000000295032);
  MEMORY[0x24C1DF8B0](0x203A9DA49FF00ALL, 0xA700000000000000);

  v72 = v2;
  sub_2489CD910();
  v9 = *(v8 + 16);

  v65 = v2;
  if (v9)
  {
    MEMORY[0x24C1DF8B0](0x6148208B9CE20A0ALL, 0xAB0000000073646ELL);
    v72 = v2;
    sub_2489CD910();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 48);
      do
      {
        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = *v12;
        v12 += 3;
        v75[0] = 10;
        v75[1] = 0xE100000000000000;
        v72 = v13;
        *&v73 = v14;
        *(&v73 + 1) = v15;

        v16 = v15;
        v17 = AssetIntermediaryRepresentation.description.getter();
        MEMORY[0x24C1DF8B0](v17);

        MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

        --v11;
      }

      while (v11);
    }

    v1 = 0;
  }

  v72 = v2;
  sub_2489CCDF4();
  v19 = 0;
  v20 = v18 + 56;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 56);
  v24 = (v21 + 63) >> 6;
  v69 = v18;
  v66 = v24;
  v67 = v18 + 56;
  while (v23)
  {
LABEL_15:
    v70 = v23;
    v71 = v19;
    v26 = *(v69 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v23))));
    v27 = *v26;
    v28 = *(v26 + 8);
    v72 = 2570;
    *&v73 = 0xE200000000000000;
    if (v28)
    {
      v29 = 2475794416;
    }

    else
    {
      v29 = 0x8FB8EF81919FF0;
    }

    if (v28)
    {
      v30 = 0xA400000000000000;
    }

    else
    {
      v30 = 0xA700000000000000;
    }

    MEMORY[0x24C1DF8B0](v29, v30);

    MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
    if (v28)
    {
      strcpy(v75, "Gaze w/ RX: ");
      BYTE5(v75[1]) = 0;
      HIWORD(v75[1]) = -5120;
      MEMORY[0x24C1DF8B0](v27, v28);
      v31 = v75[0];
      v32 = v75[1];
    }

    else
    {
      v31 = 0x6F2F7720657A6147;
      v32 = 0xEB00000000585220;
    }

    MEMORY[0x24C1DF8B0](v31, v32);

    MEMORY[0x24C1DF8B0](v72, v73);

    v75[0] = v2;
    v72 = v27;
    *&v73 = v28;
    v33 = sub_2489CD678(&v72);

    v34 = *(v33 + 16);
    if (v34)
    {
      v68 = v1;
      v76 = MEMORY[0x277D84F90];
      sub_2489CE5CC(0, v34, 0);
      v35 = v76;
      v36 = (v33 + 48);
      do
      {
        v37 = *(v36 - 2);
        v38 = *(v36 - 1);
        v39 = *v36;
        v75[0] = v37;
        v75[1] = v38;
        v75[2] = v39;
        sub_2489CBC2C(&v72);
        if (v74 == 255)
        {
          v40 = 0x64696C61766E4928;
          v41 = 0xE900000000000029;
        }

        else
        {
          v42 = v72;
          v75[0] = 0;
          v75[1] = 0xE000000000000000;
          if (v74)
          {
            if (v74 == 1)
            {
              sub_24898382C(v72, v73, *(&v73 + 1), 1u);
              v43 = 0xD00000000000001DLL;
              v44 = 0x8000000248A192A0;
            }

            else if (*(&v73 + 1) | v73 | v72)
            {
              if (v72 == 1 && v73 == 0)
              {
                sub_24898382C(1, 0, 0, 2u);
                v44 = 0xEA0000000000746ELL;
                v43 = 0x656D6C6C6F726E45;
              }

              else
              {
                sub_24898382C(2, 0, 0, 2u);
                v43 = 0x46676E697373694DLL;
                v44 = 0xEE00737265676E69;
              }
            }

            else
            {
              v43 = 0xD000000000000015;
              v44 = 0x8000000248A19280;
            }
          }

          else
          {
            sub_24898382C(v72, v73, *(&v73 + 1), 0);
            if (v42)
            {
              v43 = 0xD000000000000010;
            }

            else
            {
              v43 = 0x6C65646F4D657945;
            }

            if (v42)
            {
              v44 = 0x8000000248A192C0;
            }

            else
            {
              v44 = 0xE800000000000000;
            }
          }

          MEMORY[0x24C1DF8B0](v43, v44);

          MEMORY[0x24C1DF8B0](8250, 0xE200000000000000);

          v45 = sub_2489CF4FC(8);
          v47 = v46;
          v49 = v48;
          v51 = v50;

          v52 = MEMORY[0x24C1DF860](v45, v47, v49, v51);
          v54 = v53;

          MEMORY[0x24C1DF8B0](v52, v54);

          MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
          v72 = v37;
          *&v73 = v38;
          *(&v73 + 1) = v39;
          v55 = sub_2489CE130();
          MEMORY[0x24C1DF8B0](v55);

          MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
          v72 = v37;
          *&v73 = v38;
          *(&v73 + 1) = v39;
          v56 = sub_2489CE368();
          MEMORY[0x24C1DF8B0](v56);

          v40 = v75[0];
          v41 = v75[1];
        }

        v76 = v35;
        v58 = *(v35 + 16);
        v57 = *(v35 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_2489CE5CC((v57 > 1), v58 + 1, 1);
          v35 = v76;
        }

        *(v35 + 16) = v58 + 1;
        v59 = v35 + 16 * v58;
        *(v59 + 32) = v40;
        *(v59 + 40) = v41;
        v36 += 3;
        --v34;
      }

      while (v34);

      v1 = v68;
      v2 = v65;
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    v72 = v35;

    sub_2489CEA10(&v72);

    v60 = *(v72 + 16);
    if (v60)
    {
      v61 = (v72 + 40);
      do
      {
        v62 = *(v61 - 1);
        v63 = *v61;
        v72 = 10;
        *&v73 = 0xE100000000000000;

        MEMORY[0x24C1DF8B0](v62, v63);

        MEMORY[0x24C1DF8B0](v72, v73);

        v61 += 16;
        --v60;
      }

      while (v60);
    }

    v23 = (v70 - 1) & v70;

    v24 = v66;
    v20 = v67;
    v19 = v71;
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      v72 = v77;
      *&v73 = v78;

      MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

      return v72;
    }

    v23 = *(v20 + 8 * v25);
    ++v19;
    if (v23)
    {
      v19 = v25;
      goto LABEL_15;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_2489CCDF4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = (v4 + 24 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        v24 = *(v5 - 2);
        v25 = v8;
        v26 = v7;

        v9 = v7;
        sub_2489CBC2C(v22);
        v10 = v22[0];
        v11 = v22[1];
        v12 = v22[2];
        v13 = v23;

        if (v13 <= 254)
        {
          break;
        }

LABEL_4:
        ++v6;
        v5 += 3;
        if (v2 == v6)
        {
          goto LABEL_29;
        }
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13)
      {
        v16 = v10;
      }

      else
      {
        v16 = v11;
      }

      if (v13)
      {
        v17 = v11;
      }

      else
      {
        v17 = v12;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2489C970C(0, *(v21 + 2) + 1, 1, v21);
      }

      v19 = *(v21 + 2);
      v18 = *(v21 + 3);
      if (v19 >= v18 >> 1)
      {
        v21 = sub_2489C970C((v18 > 1), v19 + 1, 1, v21);
      }

      v3 = v6 + 1;
      v4 = v1 + 48;
      *(v21 + 2) = v19 + 1;
      v20 = &v21[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      if (v2 - 1 == v6)
      {
        goto LABEL_29;
      }
    }

    if (v12 | v11 | v10)
    {
      if (v12 | v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == 1;
      }

      if (v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      sub_24898382C(v15, 0, 0, 2u);
    }

    goto LABEL_4;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_29:
  sub_2489DF100(v21);
}

void sub_2489CCFCC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v20 = v9;
        v21 = v8;
        v22 = v10;

        v11 = v10;
        sub_2489CBC2C(v18);
        if (v19 != 255)
        {
          sub_24898382C(v18[0], v18[1], v18[2], v19);
          if ([v11 assetState])
          {
            break;
          }
        }

        ++v7;
        v6 += 3;
        if (v2 == v7)
        {
          goto LABEL_15;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2489CE5AC(0, *(v5 + 16) + 1, 1);
        v5 = v23;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_2489CE5AC((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v5 = v23;
      }

      v3 = v7 + 1;
      *(v5 + 16) = v15;
      v16 = (v5 + 24 * v14);
      v16[4] = v9;
      v16[5] = v8;
      v16[6] = v11;
      v4 = v1 + 48;
    }

    while (v2 - 1 != v7);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v17 = *(v5 + 16);
}

void sub_2489CD170()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v20 = v9;
        v21 = v8;
        v22 = v10;

        v11 = v10;
        sub_2489CBC2C(v18);
        if (v19 != 255)
        {
          sub_24898382C(v18[0], v18[1], v18[2], v19);
          if (([v11 assetState] & 0x20) != 0)
          {
            break;
          }
        }

        ++v7;
        v6 += 3;
        if (v2 == v7)
        {
          goto LABEL_15;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2489CE5AC(0, *(v5 + 16) + 1, 1);
        v5 = v23;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_2489CE5AC((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v5 = v23;
      }

      v3 = v7 + 1;
      *(v5 + 16) = v15;
      v16 = (v5 + 24 * v14);
      v16[4] = v9;
      v16[5] = v8;
      v16[6] = v11;
      v4 = v1 + 48;
    }

    while (v2 - 1 != v7);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v17 = *(v5 + 16);
}

void sub_2489CD314()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v20 = v9;
        v21 = v8;
        v22 = v10;

        v11 = v10;
        sub_2489CBC2C(v18);
        if (v19 != 255)
        {
          sub_24898382C(v18[0], v18[1], v18[2], v19);
          if (([v11 assetState] & 0x40) != 0)
          {
            break;
          }
        }

        ++v7;
        v6 += 3;
        if (v2 == v7)
        {
          goto LABEL_15;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2489CE5AC(0, *(v5 + 16) + 1, 1);
        v5 = v23;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_2489CE5AC((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v5 = v23;
      }

      v3 = v7 + 1;
      *(v5 + 16) = v15;
      v16 = (v5 + 24 * v14);
      v16[4] = v9;
      v16[5] = v8;
      v16[6] = v11;
      v4 = v1 + 48;
    }

    while (v2 - 1 != v7);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v17 = *(v5 + 16);
}

void sub_2489CD4B8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v18 = v5;
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v21 = v9;
        v22 = v8;
        v23 = v10;

        v11 = v10;
        sub_2489CBC2C(v19);
        if (v20 != 255)
        {
          sub_24898382C(v19[0], v19[1], v19[2], v20);
          if (([v11 assetState] & 0x220) != 0)
          {
            break;
          }
        }

        ++v7;
        v6 += 3;
        if (v2 == v7)
        {
          v5 = v18;
          goto LABEL_16;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v18;
      v24 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2489CE5AC(0, *(v18 + 16) + 1, 1);
        v5 = v24;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_2489CE5AC((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v5 = v24;
      }

      v3 = v7 + 1;
      *(v5 + 16) = v15;
      v16 = (v5 + 24 * v14);
      v16[4] = v9;
      v16[5] = v8;
      v16[6] = v11;
      v4 = v1 + 48;
    }

    while (v2 - 1 != v7);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v17 = *(v5 + 16);
}

uint64_t sub_2489CD678(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v6 = *a1;
  v5 = a1[1];
  v7 = v2 + 48;
  v27 = v3 - 1;
  result = MEMORY[0x277D84F90];
  v29 = *(*v1 + 16);
  do
  {
    v28 = result;
    v9 = (v7 + 24 * v4);
    v10 = v4;
    while (1)
    {
      if (v10 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v33 = v11;
      v34 = v12;
      v35 = v13;

      v14 = v13;
      sub_2489CBC2C(&v30);
      if (v32 > 1u)
      {
        if (v32 != 255 && *(&v31 + 1) | v31 | v30)
        {
          if (v31 == 0 && v30 == 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          result = sub_24898382C(v22, 0, 0, 2u);
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v15 = v32 ? v30 : v31;
      v16 = v32 ? v31 : *(&v31 + 1);
      if (!v16)
      {
        break;
      }

      if (!v5)
      {

        goto LABEL_5;
      }

      if (v15 == v6 && v16 == v5)
      {
        v19 = v5;
        v18 = v6;
        goto LABEL_33;
      }

      v17 = v5;
      v18 = v6;
      v19 = v17;
      v20 = sub_248A13340();

      if (v20)
      {
        goto LABEL_34;
      }

      v6 = v18;
      v5 = v19;
      v3 = v29;
LABEL_6:
      ++v10;
      v9 += 3;
      if (v3 == v10)
      {
        return v28;
      }
    }

    if (v5)
    {
LABEL_5:

      goto LABEL_6;
    }

    v19 = 0;
    v18 = v6;
LABEL_33:

LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v28;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v28;
    }

    else
    {
      sub_2489CE5AC(0, *(v28 + 16) + 1, 1);
      result = v36;
    }

    v25 = *(result + 16);
    v24 = *(result + 24);
    if (v25 >= v24 >> 1)
    {
      sub_2489CE5AC((v24 > 1), v25 + 1, 1);
      result = v36;
    }

    v4 = v10 + 1;
    *(result + 16) = v25 + 1;
    v26 = (result + 24 * v25);
    v26[4] = v11;
    v26[5] = v12;
    v26[6] = v14;
    v7 = v2 + 48;
    v6 = v18;
    v5 = v19;
    v3 = v29;
  }

  while (v27 != v10);
  return result;
}

void sub_2489CD910()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = v1 + 48;
  v24 = v2 - 1;
  v5 = MEMORY[0x277D84F90];
  v25 = v1 + 48;
  do
  {
    v26 = v5;
    v6 = (v4 + 24 * v3);
    v7 = v3;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      v10 = *v6;
      v41 = v9;
      v42 = v8;
      v43 = v10;

      v11 = v10;
      sub_2489CBC2C(&v37);
      v12 = v38;
      v13 = v40;
      if (v40 != 255)
      {
        break;
      }

      sub_24898382C(v37, v38, v39, 0xFFu);
      sub_24898382C(1, 0, 0, 2u);
LABEL_5:
      ++v7;

      v6 += 3;
      if (v2 == v7)
      {
        return;
      }
    }

    v27 = v9;
    v28 = v11;
    v33 = v37;
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v29 = 1;
    v30 = 0;
    v31 = 0;
    v32 = 2;
    v14 = v37;
    v15 = v2;
    v16 = v1;
    v17 = v39;
    sub_2489CFA00(v37, v38, v39, v40);
    v18 = _s13DeviceSharing17SpecificAssetTypeO2eeoiySbAC_ACtFZ_0(&v33, &v29);
    sub_2489837C4(v29, v30, v31, v32);
    sub_2489837C4(v33, v34, v35, v36);
    v19 = v17;
    v1 = v16;
    v2 = v15;
    v11 = v28;
    sub_24898382C(v14, v12, v19, v13);
    if ((v18 & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2489CE5AC(0, *(v26 + 16) + 1, 1);
      v5 = v44;
    }

    v22 = *(v5 + 16);
    v21 = *(v5 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_2489CE5AC((v21 > 1), v22 + 1, 1);
      v5 = v44;
    }

    v3 = v7 + 1;
    *(v5 + 16) = v22 + 1;
    v23 = (v5 + 24 * v22);
    v23[4] = v27;
    v23[5] = v8;
    v23[6] = v28;
    v4 = v25;
  }

  while (v24 != v7);
}

uint64_t AssetIntermediaryRepresentation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v23 = *v0;
  v24 = v2;
  v25 = v3;
  sub_2489CBC2C(&v20);
  if (v22 == 255)
  {
    return 0x64696C61766E4928;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  if (v22)
  {
    if (v22 == 1)
    {
      v5 = 0x8000000248A192A0;
      sub_24898382C(v20, v21, *(&v21 + 1), 1u);
      v6 = 13;
    }

    else
    {
      if (*(&v21 + 1) | v21 | v20)
      {
        if (v20 == 1 && v21 == 0)
        {
          sub_24898382C(1, 0, 0, 2u);
          v5 = 0xEA0000000000746ELL;
          v7 = 0x656D6C6C6F726E45;
        }

        else
        {
          sub_24898382C(2, 0, 0, 2u);
          v5 = 0xEE00737265676E69;
          v7 = 0x46676E697373694DLL;
        }

        goto LABEL_15;
      }

      v5 = 0x8000000248A19280;
      v6 = 5;
    }

    v7 = v6 | 0xD000000000000010;
  }

  else if (v20)
  {
    v5 = 0x8000000248A192C0;
    sub_24898382C(v20, v21, *(&v21 + 1), 0);
    v7 = 0xD000000000000010;
  }

  else
  {
    sub_24898382C(v20, v21, *(&v21 + 1), 0);
    v5 = 0xE800000000000000;
    v7 = 0x6C65646F4D657945;
  }

LABEL_15:
  MEMORY[0x24C1DF8B0](v7, v5);

  MEMORY[0x24C1DF8B0](8250, 0xE200000000000000);

  v8 = sub_2489CF4FC(8);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x24C1DF860](v8, v10, v12, v14);
  v17 = v16;

  MEMORY[0x24C1DF8B0](v15, v17);

  MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
  v20 = v1;
  *&v21 = v2;
  *(&v21 + 1) = v3;
  v18 = sub_2489CE130();
  MEMORY[0x24C1DF8B0](v18);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  v20 = v1;
  *&v21 = v2;
  *(&v21 + 1) = v3;
  v19 = sub_2489CE368();
  MEMORY[0x24C1DF8B0](v19);

  return v23;
}

id sub_2489CDE00()
{
  result = [*(v0 + 16) label];
  if (result)
  {
    v2 = result;
    sub_248A12B60();

    sub_2489835B8();
    v3 = sub_248A12F30();

    if (v3[2] >= 2uLL && (v4 = v3[6], v5 = v3[7], , v6 = sub_248A12BC0(), , v6 >= 8))
    {
      v7 = v3[6];
      v8 = v3[7];

      v9 = sub_2489CF4FC(8);
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = MEMORY[0x24C1DF860](v9, v11, v13, v15);

      return v16;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static AssetIntermediaryRepresentation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_248A13340() & 1) == 0)
  {
    return 0;
  }

  sub_2489CF8E4();
  return sub_248A12F10() & 1;
}

BOOL sub_2489CDFD0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v4 = v2;
  v5 = *(a2 + 8);
  return (_s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(&v4, &v6) & 1) == 0;
}

BOOL sub_2489CE020(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v4 = v2;
  v5 = *(a2 + 8);
  return (_s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(&v6, &v4) & 1) == 0;
}

uint64_t sub_2489CE070(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v4 = v2;
  v5 = *(a2 + 8);
  return _s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(&v4, &v6) & 1;
}

uint64_t sub_2489CE0BC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_248A13340() & 1) == 0)
  {
    return 0;
  }

  sub_2489CF8E4();
  return sub_248A12F10() & 1;
}

uint64_t sub_2489CE130()
{
  v1 = sub_248A11990();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = [v6 assetState];
  if (v7)
  {
    v8 = 0xA300000000000000;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](((v7 << 63) >> 63) & 0x859CE2, v8);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  v9 = [v6 assetState];
  if ((v9 & 0x40) != 0)
  {
    v10 = 0xA400000000000000;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](((v9 << 57) >> 63) & 0x9DA49FF0, v10);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  v11 = [v6 assetState];
  if ((v11 & 0x20) != 0)
  {
    v12 = 0xA600000000000000;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](((v11 << 58) >> 63) & 0x8FB8EF8198E2, v12);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  v13 = [v6 assetState];
  v14 = (v13 & 0x220) == 0;
  if ((v13 & 0x220) != 0)
  {
    v15 = 0x8FB8EF86ACE2;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    v16 = 0xA600000000000000;
  }

  MEMORY[0x24C1DF8B0](v15, v16);

  sub_248A11980();
  sub_2489835B8();
  v17 = sub_248A12F40();
  (*(v2 + 8))(v5, v1);

  return v17;
}

uint64_t sub_2489CE368()
{
  v1 = *(v0 + 16);
  v2 = [v1 ckrecordIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_248A12B60();

    if (sub_248A12BC0() >= 8)
    {
      v27 = 0x492E64756F6C4320;
      v28 = 0xEA00000000002844;
      v4 = sub_2489CF4FC(8);
      v6 = v5;
      v8 = v7;
      v10 = v9;

      v11 = MEMORY[0x24C1DF860](v4, v6, v8, v10);
      v13 = v12;

      MEMORY[0x24C1DF8B0](v11, v13);

      MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
      MEMORY[0x24C1DF8B0](0x492E64756F6C4320, 0xEA00000000002844);
    }
  }

  v14 = [v1 enrollmentIdentifier];
  if (v14)
  {
    v15 = v14;
    sub_248A12B60();

    if (sub_248A12BC0() >= 8)
    {
      sub_248A13100();

      v16 = sub_2489CF4FC(8);
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = MEMORY[0x24C1DF860](v16, v18, v20, v22);
      v25 = v24;

      MEMORY[0x24C1DF8B0](v23, v25);

      MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
      MEMORY[0x24C1DF8B0](0x6D6C6C6F726E4520, 0xEF2844492E746E65);
    }
  }

  return 0;
}

char *sub_2489CE5AC(char *a1, int64_t a2, char a3)
{
  result = sub_2489CE60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2489CE5CC(char *a1, int64_t a2, char a3)
{
  result = sub_2489CE72C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2489CE5EC(size_t a1, int64_t a2, char a3)
{
  result = sub_2489CE838(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2489CE60C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F98, &qword_248A16ED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2489CE72C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
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

size_t sub_2489CE838(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5F90, &qword_248A16ED0);
  v10 = *(type metadata accessor for NearbyDevice(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NearbyDevice(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2489CEA10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2489CF4E8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2489CEA7C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2489CEA7C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248A132D0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_248A12CB0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2489CEC44(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2489CEB74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2489CEB74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_248A13340(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2489CEC44(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2489CF4D4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2489CF220((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_248A13340();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_248A13340();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2489C9818(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2489C9818((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2489CF220((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2489CF4D4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2489CF448(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_248A13340(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2489CF220(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_248A13340() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_248A13340() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2489CF448(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2489CF4D4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2489CF4FC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_248A12BE0();

    return sub_248A12C40();
  }

  return result;
}

uint64_t _s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v36 = sub_248A11B70();
  v35 = *(v36 - 8);
  v4 = *(v35 + 64);
  v5 = MEMORY[0x28223BE20](v36);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v54 = v10;
  v55 = v11;
  v34 = v12;
  v56 = v12;
  sub_2489CBC2C(v52);
  v17 = v52[0];
  v16 = v52[1];
  v18 = v52[2];
  v19 = v53;
  v49 = v14;
  v50 = v13;
  v51 = v15;
  sub_2489CBC2C(&v45);
  v20 = v45;
  v21 = v46;
  v22 = v47;
  v23 = v48;
  if (v19 == 255)
  {
    if (v48 == 255)
    {
      sub_24898382C(v17, v16, v18, 0xFFu);
      goto LABEL_7;
    }
  }

  else
  {
    v41 = v17;
    v42 = v16;
    v43 = v18;
    v44 = v19;
    if (v48 != 255)
    {
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      sub_2489CFA00(v17, v16, v18, v19);
      v24 = _s13DeviceSharing17SpecificAssetTypeO2eeoiySbAC_ACtFZ_0(&v41, &v37);
      sub_2489837C4(v37, v38, v39, v40);
      sub_2489837C4(v41, v42, v43, v44);
      sub_24898382C(v17, v16, v18, v19);
      if ((v24 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_7:
      v25 = [v34 lastUpdatedTime];
      sub_248A11B50();

      v26 = [v15 lastUpdatedTime];
      sub_248A11B50();

      LOBYTE(v26) = sub_248A11B40();
      v27 = *(v35 + 8);
      v28 = v7;
      v29 = v36;
      v27(v28, v36);
      v27(v9, v29);
      return v26 & 1;
    }

    v31 = v47;
    sub_2489CFA00(v17, v16, v18, v19);
    sub_2489837C4(v17, v16, v18, v19);
    v22 = v31;
    v23 = -1;
  }

  v32 = v22;
  v33 = v23;
  sub_24898382C(v17, v16, v18, v19);
  sub_24898382C(v20, v21, v32, v33);
LABEL_10:
  result = sub_248A13200();
  __break(1u);
  return result;
}

unint64_t sub_2489CF8E4()
{
  result = qword_27EEB5F80;
  if (!qword_27EEB5F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB5F80);
  }

  return result;
}

unint64_t sub_2489CF934()
{
  result = qword_27EEB5F88;
  if (!qword_27EEB5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5F88);
  }

  return result;
}

unint64_t sub_2489CF9A8()
{
  result = qword_27EEB5958;
  if (!qword_27EEB5958)
  {
    sub_248A12480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5958);
  }

  return result;
}

uint64_t sub_2489CFA00(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_2489837A4(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t DarwinNotification.description.getter()
{
  v1 = 0xD000000000000029;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000004CLL;
  }

  *v0;
  return result;
}

DeviceSharing::DarwinNotification_optional __swiftcall DarwinNotification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248A13260();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2489CFAC8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000029;
  v3 = *a1;
  v4 = "haringd.deviceEnrollmentData";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002BLL;
  }

  else
  {
    v5 = 0xD000000000000029;
  }

  if (v3 == 1)
  {
    v6 = "haringd.deviceEnrollmentData";
  }

  else
  {
    v6 = "ssets.notify.iCloudSyncDown";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000004CLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ExtendedDeviceLockState";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v4 = "ssets.notify.iCloudSyncDown";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000004CLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ExtendedDeviceLockState";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_248A13340();
  }

  return v11 & 1;
}

uint64_t sub_2489CFBA0()
{
  v1 = *v0;
  sub_248A13430();
  sub_248A12BB0();

  return sub_248A13460();
}

uint64_t sub_2489CFC3C()
{
  *v0;
  *v0;
  sub_248A12BB0();
}

uint64_t sub_2489CFCC4()
{
  v1 = *v0;
  sub_248A13430();
  sub_248A12BB0();

  return sub_248A13460();
}

void sub_2489CFD68(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000029;
  v3 = "haringd.deviceEnrollmentData";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v3 = "ssets.notify.iCloudSyncDown";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000004CLL;
    v4 = "ExtendedDeviceLockState";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_2489CFDC4()
{
  v1 = 0xD000000000000029;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000004CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2489CFE40()
{
  *(v1 + 64) = v0;
  type metadata accessor for DarwinNotificationXPCEventServer();
  sub_2489D1D98(qword_28150F950, v2, type metadata accessor for DarwinNotificationXPCEventServer);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489CFEF4, v4, v3);
}

uint64_t sub_2489CFEF4()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD000000000000073, 0x8000000248A1A130, 0x6574617669746361, 0xEA00000000002928);
  v3 = *(v1 + 16);
  v0[6] = sub_2489D00C0;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2489D00C4;
  v0[5] = &block_descriptor_1;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  v6 = sub_248A12B90();
  xpc_set_event_stream_handler((v6 + 32), v3, v4);

  _Block_release(v4);
  v7 = v0[1];

  return v7();
}

uint64_t sub_2489D00C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2489D013C(void *a1)
{
  isEscapingClosureAtFileLocation = v1;
  v4 = *v1;
  v5 = sub_248A12A50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(isEscapingClosureAtFileLocation + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_248A12A60();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (qword_28150F5F0 == -1)
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
  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_2815105C0);
  swift_unknownObjectRetain();
  v13 = sub_248A122B0();
  v14 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32[1] = v11;
    v17 = v16;
    v33[0] = v16;
    *v15 = 136446466;
    v18 = sub_248A13570();
    v20 = sub_24897BC00(v18, v19, v33);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v21 = [a1 description];
    v22 = sub_248A12B60();
    v24 = v23;

    v25 = sub_24897BC00(v22, v24, v33);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_248975000, v13, v14, "%{public}s received Notifyd XPC event %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v17, -1, -1);
    MEMORY[0x24C1E0A80](v15, -1, -1);
  }

  MEMORY[0x28223BE20](v26);
  v30 = a1;
  v31 = v4;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = sub_2489D1BB8;
  *(v27 + 24) = &v32[-4];
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2489D1BD4;
  *(v28 + 24) = v27;

  v33[0] = isEscapingClosureAtFileLocation;
  sub_2489D1BF0(v33);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_11:
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v32[3] = isEscapingClosureAtFileLocation;
    type metadata accessor for DarwinNotificationXPCEventServer();
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    LODWORD(v31) = 0;
    v30 = 53;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489D05EC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v60 - v6;
  v8 = os_transaction_create();
  if (!v8)
  {
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003BLL, 0x8000000248A1A2F0);
    v56 = [a2 description];
    v57 = sub_248A12B60();
    v59 = v58;

    MEMORY[0x24C1DF8B0](v57, v59);

    result = sub_248A13200();
    __break(1u);
    return result;
  }

  v9 = v8;
  v10 = sub_2489D0E1C(a2);
  if (!v11)
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v32 = sub_248A122D0();
    __swift_project_value_buffer(v32, qword_2815105C0);
    v33 = sub_248A122B0();
    v34 = sub_248A12E60();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_37;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_248975000, v33, v34, "Unable to determine event name", v35, 2u);
    v36 = v35;
    goto LABEL_36;
  }

  v12 = v10;
  v13 = v11;

  v14 = sub_248A13260();

  if (v14 >= 3)
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v37 = sub_248A122D0();
    __swift_project_value_buffer(v37, qword_2815105C0);

    v33 = sub_248A122B0();
    v38 = sub_248A12E60();

    if (!os_log_type_enabled(v33, v38))
    {

LABEL_37:

      return swift_unknownObjectRelease();
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v64[0] = v40;
    *v39 = 136315138;
    v41 = sub_24897BC00(v12, v13, v64);

    *(v39 + 4) = v41;
    _os_log_impl(&dword_248975000, v33, v38, "Unknown event: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1E0A80](v40, -1, -1);
    v36 = v39;
LABEL_36:
    MEMORY[0x24C1E0A80](v36, -1, -1);
    goto LABEL_37;
  }

  swift_beginAccess();
  v15 = *(a1 + 24);
  if (!*(v15 + 16))
  {
LABEL_26:
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v42 = sub_248A122D0();
    __swift_project_value_buffer(v42, qword_2815105C0);
    v33 = sub_248A122B0();
    v43 = sub_248A12E60();
    if (!os_log_type_enabled(v33, v43))
    {
      goto LABEL_37;
    }

    v44 = 0xD000000000000029;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v63[0] = v46;
    *v45 = 136446210;
    if (v14)
    {
      if (v14 != 2)
      {
        v48 = "haringd.deviceEnrollmentData";
        v44 = 0xD00000000000002BLL;
        goto LABEL_35;
      }

      v47 = "com.vpg.managedassets.notify.iCloudSyncUp";
    }

    else
    {
      v44 = 0xD00000000000004CLL;
      v47 = "com.apple.kvs.store-did-change.com.apple.devicesharingd.deviceEnrollmentData";
    }

    v48 = (v47 - 32);
LABEL_35:
    v49 = sub_24897BC00(v44, v48 | 0x8000000000000000, v63);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_248975000, v33, v43, "No handler found for: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x24C1E0A80](v46, -1, -1);
    v36 = v45;
    goto LABEL_36;
  }

  v16 = sub_2489A8714(v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_26;
  }

  v62 = *(*(v15 + 56) + 16 * v16);

  v18 = swift_allocObject();
  *(v18 + 16) = v62;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v19 = sub_248A122D0();
  __swift_project_value_buffer(v19, qword_2815105C0);

  v20 = sub_248A122B0();
  v21 = sub_248A12E80();

  if (os_log_type_enabled(v20, v21))
  {
    LODWORD(v62) = v21;
    v22 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v65 = v61;
    *v22 = 136315650;
    v23 = sub_248A13570();
    v25 = sub_24897BC00(v23, v24, &v65);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_248A170D8;
    *(v26 + 24) = v18;
    v63[0] = &unk_248A170F0;
    v63[1] = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FA8, &qword_248A170F8);
    v27 = sub_248A12B80();
    v29 = sub_24897BC00(v27, v28, &v65);

    *(v22 + 14) = v29;
    *(v22 + 22) = 2082;
    if (v14)
    {
      if (v14 == 1)
      {
        v30 = 0xD00000000000002BLL;
      }

      else
      {
        v30 = 0xD000000000000029;
      }

      if (v14 == 1)
      {
        v31 = "haringd.deviceEnrollmentData";
      }

      else
      {
        v31 = "ssets.notify.iCloudSyncDown";
      }
    }

    else
    {
      v30 = 0xD00000000000004CLL;
      v31 = "ExtendedDeviceLockState";
    }

    v51 = v62;
    v52 = sub_24897BC00(v30, v31 | 0x8000000000000000, &v65);

    *(v22 + 24) = v52;
    _os_log_impl(&dword_248975000, v20, v51, "%s: Invoking handler: %s for notification: %{public}s", v22, 0x20u);
    v53 = v61;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v53, -1, -1);
    MEMORY[0x24C1E0A80](v22, -1, -1);
  }

  v54 = sub_248A12D40();
  (*(*(v54 - 8) + 56))(v7, 1, 1, v54);
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = &unk_248A170D8;
  v55[5] = v18;
  v55[6] = v9;
  sub_2489AC334(0, 0, v7, &unk_248A170E8, v55);
}

uint64_t sub_2489D0E1C(void *a1)
{
  v2 = MEMORY[0x24C1E0C00]();
  if (v2 != sub_248A124B0())
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_2815105C0);
    v4 = sub_248A122B0();
    v5 = sub_248A12E60();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "xpc_object_t was not of type XPC_TYPE_DICTIONARY";
LABEL_6:
    _os_log_impl(&dword_248975000, v4, v5, v7, v6, 2u);
    MEMORY[0x24C1E0A80](v6, -1, -1);
LABEL_7:

    return 0;
  }

  v9 = sub_248A124A0();
  if (!xpc_dictionary_get_string(a1, v9))
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v10 = sub_248A122D0();
    __swift_project_value_buffer(v10, qword_2815105C0);
    v4 = sub_248A122B0();
    v5 = sub_248A12E60();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Unable to get XPC_EVENT_KEY_NAME";
    goto LABEL_6;
  }

  return sub_248A12C00();
}

uint64_t sub_2489D0FC0(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2489839A0;

  return v8(v4);
}

uint64_t sub_2489D10B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_248978D74;

  return v11(a6);
}

uint64_t sub_2489D11AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  swift_beginAccess();
  if (*(*(v3 + 24) + 16))
  {

    sub_2489A8714(v7);
    v9 = v8;

    if (v9)
    {
      if (qword_28150F5F0 != -1)
      {
        swift_once();
      }

      v10 = sub_248A122D0();
      __swift_project_value_buffer(v10, qword_2815105C0);
      v11 = sub_248A122B0();
      v12 = sub_248A12E60();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v25 = v14;
        *v13 = 136315138;
        v15 = "haringd.deviceEnrollmentData";
        v16 = 0xD00000000000002BLL;
        if (v7 != 1)
        {
          v16 = 0xD000000000000029;
          v15 = "ssets.notify.iCloudSyncDown";
        }

        if (v7)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0xD00000000000004CLL;
        }

        if (v7)
        {
          v18 = v15;
        }

        else
        {
          v18 = "ExtendedDeviceLockState";
        }

        v19 = sub_24897BC00(v17, v18 | 0x8000000000000000, &v25);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_248975000, v11, v12, "Found existing handler for %s, replacing", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x24C1E0A80](v14, -1, -1);
        MEMORY[0x24C1E0A80](v13, -1, -1);
      }
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  swift_beginAccess();

  v21 = *(v4 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_2489B091C(&unk_248A16EF8, v20, v7, isUniquelyReferenced_nonNull_native);
  *(v4 + 24) = v24;
  return swift_endAccess();
}

uint64_t DarwinNotificationXPCEventServer.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DarwinNotificationXPCEventServer.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2489D1480()
{
  v10[0] = sub_248A12EA0();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A12ED0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_248A12A40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24898C37C();
  sub_248A12A20();
  v10[1] = MEMORY[0x277D84F90];
  sub_2489D1D98(&unk_28150F570, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v10[0]);
  *(v0 + 16) = sub_248A12EE0();
  *(v0 + 24) = sub_2489919EC(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_2489D16D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_2489CFE40();
}

uint64_t sub_2489D1764(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2489839A0;

  return sub_2489D0FC0(a1, a2, v7);
}

unint64_t sub_2489D1830()
{
  result = qword_28150FC68[0];
  if (!qword_28150FC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28150FC68);
  }

  return result;
}

uint64_t sub_2489D1884(uint64_t a1, uint64_t a2)
{
  result = sub_2489D1D98(qword_28150F950, a2, type metadata accessor for DarwinNotificationXPCEventServer);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DarwinNotification(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DarwinNotification(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of DarwinNotificationXPCEventServer.activate()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2489839A0;

  return v6();
}

uint64_t sub_2489D1BF0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2489D1C1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_2489D3D38(a1, v5);
}

uint64_t sub_2489D1CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248978D74;

  return sub_2489D10B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2489D1D98(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2489D1DE4()
{
  v0 = sub_248A11B70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = sub_248A12B30();
  [v5 setDateFormat_];

  sub_248A11B60();
  v7 = sub_248A11B30();
  (*(v1 + 8))(v4, v0);
  v8 = [v5 stringFromDate_];

  v9 = sub_248A12B60();
  return v9;
}

uint64_t sub_2489D1F6C()
{
  v1 = *(*(v0 + 16) + 328);
  if (sub_248A12030())
  {
    v2 = 8756450;
  }

  else
  {
    v2 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v2, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000011, 0x8000000248A1A510);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  if (sub_248A12040())
  {
    v3 = 8756450;
  }

  else
  {
    v3 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v3, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000011, 0x8000000248A1A530);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v4 = *(v0 + 8);

  return v4(0x100000000000001CLL, 0x8000000248A1A4F0);
}

uint64_t sub_2489D2130()
{
  v1 = v0[4];
  v0[2] = 0x1000000000000013;
  v0[3] = 0x8000000248A1A430;
  v2 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v1[27]);
  v3 = sub_248A121D0();
  if (v3)
  {
    v4 = 8756450;
  }

  else
  {
    v4 = 0x8FB8EFAB9AE2;
  }

  if (v3)
  {
    v5 = 0xA300000000000000;
  }

  else
  {
    v5 = 0xA600000000000000;
  }

  MEMORY[0x24C1DF8B0](v4, v5);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0x634120656C707041, 0xED0000746E756F63);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2489D22B8;
  v7 = v0[4];

  return sub_2489F0CCC();
}

uint64_t sub_2489D22B8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_2489D26D0;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v7 = sub_2489D23E4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2489D23E4()
{
  if (*(v0 + 56))
  {
    v1 = 8756450;
  }

  else
  {
    v1 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v1, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000015, 0x8000000248A1A450);
  v2 = *(v0 + 32);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v3 = v2[28];
  __swift_project_boxed_opaque_existential_1(v2 + 24, v2[27]);
  if (sub_248A121E0())
  {
    v4 = 8756450;
  }

  else
  {
    v4 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v4, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000012, 0x8000000248A1A490);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v5.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  value = v5.value;
  if (v5.value)
  {
    v7 = 8756450;
  }

  else
  {
    v7 = 9215458;
  }

  if (v5.value == 2)
  {
    v8 = 0x8FB8EFAB9AE2;
  }

  else
  {
    v8 = v7;
  }

  if (value == 2)
  {
    v9 = 0xA600000000000000;
  }

  else
  {
    v9 = 0xA300000000000000;
  }

  MEMORY[0x24C1DF8B0](v8, v9);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000017, 0x8000000248A1A4B0);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v10.value = EnrollmentAssetServer.getAssociatedAVPKVS()().value;
  v11 = v10.value;
  v12 = 9215458;
  if (v10.value)
  {
    v12 = 8756450;
  }

  if (v10.value == 2)
  {
    v13 = 0x8FB8EFAB9AE2;
  }

  else
  {
    v13 = v12;
  }

  if (v11 == 2)
  {
    v14 = 0xA600000000000000;
  }

  else
  {
    v14 = 0xA300000000000000;
  }

  MEMORY[0x24C1DF8B0](v13, v14);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000014, 0x8000000248A1A4D0);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = *(v0 + 8);

  return v17(v15, v16);
}

uint64_t sub_2489D26D0()
{
  v1 = *(v0 + 32);
  MEMORY[0x24C1DF8B0](0x100000000000001BLL, 0x8000000248A1A470);

  v2 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v1[27]);
  if (sub_248A121E0())
  {
    v3 = 8756450;
  }

  else
  {
    v3 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v3, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000012, 0x8000000248A1A490);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v4.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  value = v4.value;
  if (v4.value)
  {
    v6 = 8756450;
  }

  else
  {
    v6 = 9215458;
  }

  if (v4.value == 2)
  {
    v7 = 0x8FB8EFAB9AE2;
  }

  else
  {
    v7 = v6;
  }

  if (value == 2)
  {
    v8 = 0xA600000000000000;
  }

  else
  {
    v8 = 0xA300000000000000;
  }

  MEMORY[0x24C1DF8B0](v7, v8);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000017, 0x8000000248A1A4B0);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v9.value = EnrollmentAssetServer.getAssociatedAVPKVS()().value;
  v10 = v9.value;
  if (v9.value)
  {
    v11 = 8756450;
  }

  else
  {
    v11 = 9215458;
  }

  if (v9.value == 2)
  {
    v12 = 0x8FB8EFAB9AE2;
  }

  else
  {
    v12 = v11;
  }

  if (v10 == 2)
  {
    v13 = 0xA600000000000000;
  }

  else
  {
    v13 = 0xA300000000000000;
  }

  MEMORY[0x24C1DF8B0](v12, v13);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000014, 0x8000000248A1A4D0);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = *(v0 + 8);

  return v16(v14, v15);
}

uint64_t sub_2489D2980()
{
  v1 = v0[4];
  v0[2] = 0x1000000000000014;
  v0[3] = 0x8000000248A1A410;
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 64);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2489D2AC4;

  return v8(v2, v3);
}

uint64_t sub_2489D2AC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_2489D2D5C;
  }

  else
  {
    v5 = sub_2489D2BD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2489D2BD8()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v3 += 32;

      v8 = sub_2489CF4FC(8);
      v9 = MEMORY[0x24C1DF860](v8);
      v11 = v10;

      MEMORY[0x24C1DF8B0](2629690, 0xE300000000000000);
      v12 = sub_248982978();
      MEMORY[0x24C1DF8B0](v12);

      MEMORY[0x24C1DF8B0](41, 0xE100000000000000);

      MEMORY[0x24C1DF8B0](v9, v11);

      MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

      --v2;
    }

    while (v2);
    v13 = v0[6];
  }

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v14 = v0[2];
  v15 = v0[3];
  v16 = v0[1];

  return v16(v14, v15);
}

uint64_t sub_2489D2D94()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105A8);
  sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1A370, 0xD000000000000011, 0x8000000248A1A3F0);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_2489D2EA8;

  return sub_2489D3914();
}

uint64_t sub_2489D2EA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = sub_2489D31C0;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v9 = sub_2489D2FDC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2489D2FDC()
{
  MEMORY[0x24C1DF8B0](v0[9], v0[8]);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2489D3084;
  v2 = v0[5];

  return sub_2489D1F4C();
}

uint64_t sub_2489D3084(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v9 = v6[3];

    v10 = sub_2489D38B4;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    v10 = sub_2489D31D8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2489D31D8()
{
  MEMORY[0x24C1DF8B0](v0[13], v0[12]);

  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2489D3280;
  v2 = v0[5];

  return sub_2489D2110();
}

uint64_t sub_2489D3280(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v9 = v6[3];

    v10 = sub_2489D38CC;
  }

  else
  {
    v6[16] = a2;
    v6[17] = a1;
    v10 = sub_2489D33BC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2489D33BC()
{
  MEMORY[0x24C1DF8B0](v0[17], v0[16]);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_2489D3464;
  v2 = v0[5];

  return sub_2489D2960();
}

uint64_t sub_2489D3464(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v9 = v6[3];

    v10 = sub_2489D38E4;
  }

  else
  {
    v6[20] = a2;
    v6[21] = a1;
    v10 = sub_2489D35A0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2489D35A0()
{
  v1 = v0[5];
  MEMORY[0x24C1DF8B0](v0[21], v0[20]);

  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 48);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_2489D36F0;

  return (v8)(v0 + 4, v2, v3);
}

uint64_t sub_2489D36F0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);

    v5 = sub_2489D38FC;
  }

  else
  {
    v5 = sub_2489D380C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2489D380C()
{
  v8 = v0[4];
  v1 = AllAssetsRepresentation.description.getter();
  v3 = v2;

  MEMORY[0x24C1DF8B0](v1, v3);

  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_2489D3914()
{
  v1 = sub_248A123A0();
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489D39D0, 0, 0);
}

uint64_t sub_2489D39D0()
{
  v1 = v0[6];
  v0[2] = sub_2489D1DE4();
  v0[3] = v2;
  MEMORY[0x24C1DF8B0](5459817, 0xE300000000000000);
  MEMORY[0x24C1DF8B0](0x20B1939FF00ALL, 0xA600000000000000);

  sub_248A12390();
  v3 = *(MEMORY[0x277D04E78] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_2489D3AD0;
  v5 = v0[6];

  return MEMORY[0x28215A838]();
}

uint64_t sub_2489D3AD0()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2489D3BCC, 0, 0);
}

uint64_t sub_2489D3BCC()
{
  v1 = v0[6];
  LOBYTE(v1) = sub_248A12340();
  (*(v0[5] + 8))(v0[6], v0[4]);
  if (v1)
  {
    v2 = 8756450;
  }

  else
  {
    v2 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v2, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000011, 0x8000000248A1A550);
  v3 = v0[6];
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v5 = v0[2];
  v4 = v0[3];

  v6 = v0[1];

  return v6(v5, v4);
}

uint64_t sub_2489D3D38(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2489D3E30;

  return v6();
}

uint64_t sub_2489D3E30()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2489D3F24(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2489C9B34(0, v6[2] + 1, 1, v6);
    *(v2 + 24) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2489C9B34((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = &unk_248A16EF8;
  v10[5] = v5;
  *(v2 + 24) = v6;
  return swift_endAccess();
}

uint64_t sub_2489D4028()
{
  *(v1 + 64) = v0;
  type metadata accessor for RapportXPCEventServer();
  sub_2489D5BA0(qword_28150FB20, v2, type metadata accessor for RapportXPCEventServer);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489D40DC, v4, v3);
}

uint64_t sub_2489D40DC()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD000000000000068, 0x8000000248A1A5B0, 0x6574617669746361, 0xEA00000000002928);
  v3 = *(v1 + 16);
  v0[6] = sub_2489D58A4;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2489D00C4;
  v0[5] = &block_descriptor_2;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  xpc_set_event_stream_handler("com.apple.rapport.matching", v3, v4);
  _Block_release(v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2489D4254(void *a1)
{
  isEscapingClosureAtFileLocation = v1;
  v4 = *v1;
  v5 = sub_248A12A50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(isEscapingClosureAtFileLocation + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v10;
  v11 = sub_248A12A60();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    if (qword_28150F5F0 == -1)
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
  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_2815105C0);
  swift_unknownObjectRetain();
  v13 = sub_248A122B0();
  v14 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32[0] = v16;
    *v15 = 136446466;
    v17 = sub_248A13570();
    v19 = sub_24897BC00(v17, v18, v32);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = [a1 description];
    v21 = sub_248A12B60();
    v23 = v22;

    v24 = sub_24897BC00(v21, v23, v32);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_248975000, v13, v14, "%{public}s received Rapport XPC event %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v16, -1, -1);
    MEMORY[0x24C1E0A80](v15, -1, -1);
  }

  MEMORY[0x28223BE20](v25);
  v29 = a1;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = sub_2489D5A9C;
  *(v26 + 24) = &v31[-4];
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2489D5AB8;
  *(v27 + 24) = v26;

  v32[0] = isEscapingClosureAtFileLocation;
  sub_2489D1BF0(v32);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_11:
    v32[0] = 0;
    v32[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v31[1] = isEscapingClosureAtFileLocation;
    type metadata accessor for RapportXPCEventServer();
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    v30 = 0;
    v29 = 48;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489D46FC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - v6;
  v8 = os_transaction_create();
  if (v8)
  {
    v9 = v8;
    sub_2489D4E14(a2);
    v10 = sub_248A12D40();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v12 = sub_2489D5BA0(qword_28150FB20, v11, type metadata accessor for RapportXPCEventServer);
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = v12;
    v13[4] = a1;
    v13[5] = v9;
    swift_retain_n();
    sub_2489AC334(0, 0, v7, &unk_248A17280, v13);
  }

  else
  {
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003BLL, 0x8000000248A1A2F0);
    v15 = [a2 description];
    v16 = sub_248A12B60();
    v18 = v17;

    MEMORY[0x24C1DF8B0](v16, v18);

    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489D4930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for RapportXPCEventServer();
  sub_2489D5BA0(qword_28150FB20, v6, type metadata accessor for RapportXPCEventServer);
  v8 = sub_248A12CD0();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_2489D49E8, v8, v7);
}

uint64_t sub_2489D49E8()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 24);
  v0[10] = v2;
  v3 = v2[2];
  v0[11] = v3;
  if (v3)
  {
    v0[12] = 0;
    v4 = v0[7];
    v5 = v2[4];
    v0[13] = v2[5];

    v0[5] = v4;

    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_2489D4B68;

    return v10();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2489D4B68()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2489D4CAC, v5, v4);
}

uint64_t sub_2489D4CAC()
{
  v1 = v0[12] + 1;
  if (v1 == v0[11])
  {
    v2 = v0[10];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[12] = v1;
    v5 = v0[7];
    v6 = v0[10] + 16 * v1;
    v7 = *(v6 + 32);
    v0[13] = *(v6 + 40);
    v0[5] = v5;

    v10 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_2489D4B68;

    return v10();
  }
}

void sub_2489D4E14(void *a1)
{
  v3 = *v1;
  v4 = sub_248A12A50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v1[2];
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_248A12A60();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (!xpc_dictionary_get_BOOL(a1, "replyRequired"))
  {
    if (qword_28150F5F0 == -1)
    {
LABEL_9:
      v31 = sub_248A122D0();
      __swift_project_value_buffer(v31, qword_2815105C0);
      swift_unknownObjectRetain();
      v14 = sub_248A122B0();
      v32 = sub_248A12E80();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v14, v32))
      {
        goto LABEL_17;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54 = v34;
      *v33 = 136446466;
      v35 = sub_248A13570();
      v37 = sub_24897BC00(v35, v36, &v54);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      v38 = [a1 description];
      v39 = sub_248A12B60();
      v41 = v40;

      v42 = sub_24897BC00(v39, v41, &v54);

      *(v33 + 14) = v42;
      v43 = "%{public}s consumed XPC event %{public}s";
LABEL_15:
      _os_log_impl(&dword_248975000, v14, v32, v43, v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v34, -1, -1);
      MEMORY[0x24C1E0A80](v33, -1, -1);
      goto LABEL_17;
    }

LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  reply = xpc_dictionary_create_reply(a1);
  if (!reply)
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v44 = sub_248A122D0();
    __swift_project_value_buffer(v44, qword_2815105C0);
    swift_unknownObjectRetain();
    v14 = sub_248A122B0();
    v32 = sub_248A12E60();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v14, v32))
    {
      goto LABEL_17;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v54 = v34;
    *v33 = 136446466;
    v45 = sub_248A13570();
    v47 = sub_24897BC00(v45, v46, &v54);

    *(v33 + 4) = v47;
    *(v33 + 12) = 2082;
    v48 = [a1 description];
    v49 = sub_248A12B60();
    v51 = v50;

    v52 = sub_24897BC00(v49, v51, &v54);

    *(v33 + 14) = v52;
    v43 = "%{public}s failed to consume XPC event %{public}s";
    goto LABEL_15;
  }

  v12 = reply;
  xpc_dictionary_send_reply();
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v13 = sub_248A122D0();
  __swift_project_value_buffer(v13, qword_2815105C0);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = sub_248A122B0();
  v15 = sub_248A12E80();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54 = v17;
    *v16 = 136446722;
    v18 = sub_248A13570();
    v20 = sub_24897BC00(v18, v19, &v54);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = [a1 description];
    v22 = sub_248A12B60();
    v24 = v23;

    v25 = sub_24897BC00(v22, v24, &v54);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2082;
    v26 = [v12 description];
    v27 = sub_248A12B60();
    v29 = v28;

    v30 = sub_24897BC00(v27, v29, &v54);

    *(v16 + 24) = v30;
    _os_log_impl(&dword_248975000, v14, v15, "%{public}s consumed XPC event %{public}s with reply %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v17, -1, -1);
    MEMORY[0x24C1E0A80](v16, -1, -1);

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
LABEL_17:
}

uint64_t RapportXPCEventServer.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t RapportXPCEventServer.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2489D54A0()
{
  v10[0] = sub_248A12EA0();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A12ED0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_248A12A40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24898C37C();
  sub_248A12A20();
  v10[1] = MEMORY[0x277D84F90];
  sub_2489D5BA0(&unk_28150F570, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v10[0]);
  *(v0 + 16) = sub_248A12EE0();
  *(v0 + 24) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_2489D56EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2489C9B34(0, v6[2] + 1, 1, v6);
    *(v2 + 24) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2489C9B34((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = &unk_248A17290;
  v10[5] = v5;
  *(v2 + 24) = v6;
  return swift_endAccess();
}

uint64_t sub_2489D57F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248978D74;

  return sub_2489D4028();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2489D58C0(uint64_t a1, uint64_t a2)
{
  result = sub_2489D5BA0(qword_28150FB20, a2, type metadata accessor for RapportXPCEventServer);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of RapportXPCEventServer.activate()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2489839A0;

  return v6();
}

uint64_t sub_2489D5AB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2489D5AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489D4930(a1, v4, v5, v7, v6);
}

uint64_t sub_2489D5BA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2489D5C00(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

unint64_t sub_2489D5C78(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  out_token = -1;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  aBlock[4] = sub_2489D6010;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2489D5C00;
  aBlock[3] = &block_descriptor_3;
  v11 = _Block_copy(aBlock);

  v12 = sub_248A12B90();
  v13 = notify_register_dispatch((v12 + 32), &out_token, a3, v11);

  _Block_release(v11);
  if (v13)
  {
    if (qword_27EEB5190 != -1)
    {
      swift_once();
    }

    v14 = sub_248A122D0();
    __swift_project_value_buffer(v14, qword_27EEB9D98);

    v15 = sub_248A122B0();
    v16 = sub_248A12E70();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_24897BC00(a1, a2, aBlock);
      _os_log_impl(&dword_248975000, v15, v16, "Unable to register for notification: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1E0A80](v18, -1, -1);
      MEMORY[0x24C1E0A80](v17, -1, -1);
    }

    v19 = 0;
  }

  else
  {
    v19 = out_token;
  }

  LOBYTE(aBlock[0]) = v13 != 0;
  v20 = *MEMORY[0x277D85DE8];
  return v19 | ((v13 != 0) << 32);
}

void sub_2489D5EF4(int a1)
{
  if (notify_cancel(a1))
  {
    if (qword_27EEB5190 != -1)
    {
      swift_once();
    }

    v2 = sub_248A122D0();
    __swift_project_value_buffer(v2, qword_27EEB9D98);
    oslog = sub_248A122B0();
    v3 = sub_248A12E70();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67240192;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_248975000, oslog, v3, "Unable to cancel listening for notification corresponding to token: %{public}d", v4, 8u);
      MEMORY[0x24C1E0A80](v4, -1, -1);
    }
  }
}

uint64_t sub_2489D6010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LocalAuthenticator.__allocating_init()()
{
  v0 = swift_allocObject();
  LocalAuthenticator.init()();
  return v0;
}

uint64_t *LocalAuthenticator.init()()
{
  v1 = v0;
  v2 = *v0;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_27EEB51A8 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_27EEB9DE0);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Initialized", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  return v1;
}

uint64_t sub_2489D6210()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_2489D6258, v0, 0);
}

uint64_t sub_2489D6258()
{
  v23 = v0;
  if (qword_27EEB51A8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[4] = __swift_project_value_buffer(v1, qword_27EEB9DE0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v22);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Authenticating", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = v0[2];
  if (*(v10 + 112))
  {
    v11 = sub_248A122B0();
    v12 = sub_248A12E80();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[3];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v16 = sub_248A13570();
      v18 = sub_24897BC00(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_248975000, v11, v12, "[%{public}s] Authentication already in progress; ignoring request", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1E0A80](v15, -1, -1);
      MEMORY[0x24C1E0A80](v14, -1, -1);
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    *(v10 + 112) = 1;
    v21 = swift_task_alloc();
    v0[5] = v21;
    *v21 = v0;
    v21[1] = sub_2489D6534;

    return sub_2489D6BE0();
  }
}

uint64_t sub_2489D6534()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_2489D6678, v7, 0);
  }
}

uint64_t sub_2489D6678()
{
  v13 = v0;
  v1 = v0[4];
  *(v0[2] + 112) = 0;
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Authentication successful!", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2489D67C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56D0, &unk_248A15340);
    v2 = sub_248A13240();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 4 * v13);
    sub_24897C864(*(a1 + 56) + 32 * v13, v34 + 8);
    LODWORD(v34[0]) = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    LODWORD(v31[0]) = v14;
    swift_dynamicCast();
    sub_248983794((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_248983794(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_248983794(v30, v31);
    v15 = *(v2 + 40);
    result = sub_248A13080();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_248983794(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2489D6A7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_248A12AA0();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t LocalAuthenticator.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2489D6BE0()
{
  v1 = *(*(sub_248A11BE0() - 8) + 64) + 15;
  *(v0 + 384) = swift_task_alloc();
  v2 = *(*(sub_248A12B20() - 8) + 64) + 15;
  *(v0 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489D6C98, 0, 0);
}

uint64_t sub_2489D6C98()
{
  v1 = v0[48];
  v2 = v0[49];
  sub_248A12B10();
  _s30DeviceSharingFrameworkSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_248A11BD0();
  v6 = sub_248A12B70();
  v8 = v7;
  sub_248A12B10();
  v9 = [v4 bundleForClass_];
  sub_248A11BD0();
  v10 = sub_248A12B70();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FB0, &unk_248A17380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A172F0;
  *(inited + 32) = 1030;
  v14 = MEMORY[0x277D837D0];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  *(inited + 72) = 2;
  *(inited + 104) = v14;
  *(inited + 80) = v10;
  *(inited + 88) = v12;
  *(inited + 112) = 1001;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0x404E000000000000;
  *(inited + 152) = 1034;
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  *(inited + 192) = 1033;
  *(inited + 224) = MEMORY[0x277D849A8];
  *(inited + 200) = 1;
  v15 = sub_248991BE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5698, &unk_248A15310);
  swift_arrayDestroy();
  v16 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v0[50] = v16;
  sub_2489D67C4(v15);

  v17 = sub_248A12A80();
  v0[51] = v17;

  v0[2] = v0;
  v0[7] = v0 + 47;
  v0[3] = sub_2489D7038;
  v18 = swift_continuation_init();
  v0[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FB8, &unk_248A17390);
  v0[39] = MEMORY[0x277D85DD0];
  v0[40] = 1107296256;
  v0[41] = sub_2489D6A7C;
  v0[42] = &block_descriptor_4;
  v0[43] = v18;
  [v16 evaluatePolicy:1013 options:v17 reply:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2489D7038()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_2489D71D8;
  }

  else
  {
    v3 = sub_2489D7148;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489D7148()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);

  v4 = *(v0 + 376);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2489D71D8()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[48];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[52];

  return v6();
}

uint64_t dispatch thunk of LocalAuthenticator.authenticate()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248978D74;

  return v6();
}

uint64_t PeerProtocolHeader.init(transportItem:length:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    *a3 = result;
    a3[1] = a2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t PeerProtocolHeader.transportData.getter()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v8 = v0[1];
  __src = v1;
  v10[0] = sub_2489D7A60(&__src, v10);
  v10[1] = v2 & 0xFFFFFFFFFFFFFFLL;
  v3 = sub_2489D7A60(&v8, &__src);
  v5 = v4;
  sub_248A11B10();
  sub_24898C4FC(v3, v5 & 0xFFFFFFFFFFFFFFLL);
  result = v10[0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *PeerProtocolHeader.init(buffer:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = result == 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2489D7514()
{
  if (*v0)
  {
    result = 0x6874676E656CLL;
  }

  else
  {
    result = 0x726F70736E617274;
  }

  *v0;
  return result;
}

uint64_t sub_2489D7558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F70736E617274 && a2 == 0xED00006D65744974;
  if (v6 || (sub_248A13340() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
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

uint64_t sub_2489D7638(uint64_t a1)
{
  v2 = sub_2489D7BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2489D7674(uint64_t a1)
{
  v2 = sub_2489D7BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PeerProtocolHeader.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FC8, &qword_248A173A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2489D7BC8();
  sub_248A13490();
  v15 = 0;
  sub_248A132C0();
  if (!v2)
  {
    v14 = 1;
    sub_248A132C0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PeerProtocolHeader.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FD8, &qword_248A173A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2489D7BC8();
  sub_248A13480();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_248A13290();
    v15 = 1;
    v12 = sub_248A13290();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2489D7A60(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2489D7B18(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2489D7A60(a1, &a1[a2]);
  }

  v3 = sub_248A119B0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_248A119A0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_248A11AE0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_2489D7BC8()
{
  result = qword_27EEB5FD0;
  if (!qword_27EEB5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5FD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PeerProtocolHeader(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PeerProtocolHeader(uint64_t result, int a2, int a3)
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

unint64_t sub_2489D7C94()
{
  result = qword_27EEB5FE0;
  if (!qword_27EEB5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5FE0);
  }

  return result;
}

unint64_t sub_2489D7CEC()
{
  result = qword_27EEB5FE8;
  if (!qword_27EEB5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5FE8);
  }

  return result;
}

unint64_t sub_2489D7D44()
{
  result = qword_27EEB5FF0;
  if (!qword_27EEB5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5FF0);
  }

  return result;
}

void sub_2489D7D98(uint64_t a1, char a2)
{
  v3 = v2;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_248A13030();
    if (!v5)
    {
      return;
    }

    v39 = MEMORY[0x277D84F90];
    v6 = &v39;
    sub_248A13190();
    v36 = sub_248A12FE0();
    v37 = v7;
    v38 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v39 = MEMORY[0x277D84F90];
  v6 = &v39;
  sub_248A13190();
  v8 = -1 << *(a1 + 32);
  v9 = sub_248A12FB0();
  v10 = *(a1 + 36);
  v36 = v9;
  v37 = v10;
  v38 = 0;
LABEL_7:
  v11 = 0;
  v30 = v5;
  while (v11 < v5)
  {
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      goto LABEL_36;
    }

    v14 = v36;
    v15 = v38;
    v33 = v13;
    v34 = v37;
    sub_2489DEE78(v36, v37, v38, a1, &qword_27EEB6098, 0x277D54C08);
    v17 = v16;
    v18 = [v16 uniqueID];
    if (!v18)
    {
      goto LABEL_42;
    }

    v6 = v18;
    v19 = [v17 name];
    if (!v19)
    {
      goto LABEL_43;
    }

    v5 = v19;
    v20 = [v17 modelIdentifier];
    if (!v20)
    {
      goto LABEL_41;
    }

    v3 = v20;
    v21 = [v17 productVersion];
    if (!v21)
    {
      goto LABEL_40;
    }

    v22 = v21;
    [objc_allocWithZone(MEMORY[0x277D050E0]) initWithUniqueIdentifier:v6 name:v5 modelIdentifier:v3 productVersion:v21 isPaired:a2 & 1];

    v6 = &v39;
    sub_248A13170();
    v3 = *(v39 + 16);
    sub_248A131A0();
    sub_248A131B0();
    sub_248A13180();
    if (v31)
    {
      if (!v15)
      {
        goto LABEL_44;
      }

      if (sub_248A13000())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v5 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6090, &unk_248A17720);
      v6 = sub_248A12E00();
      sub_248A13070();
      (v6)(v35, 0);
    }

    else
    {
      if (v15)
      {
        goto LABEL_45;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      v6 = (1 << *(a1 + 32));
      if (v14 >= v6)
      {
        goto LABEL_37;
      }

      v23 = v14 >> 6;
      v24 = *(a1 + 56 + 8 * (v14 >> 6));
      if (((v24 >> v14) & 1) == 0)
      {
        goto LABEL_38;
      }

      if (*(a1 + 36) != v34)
      {
        goto LABEL_39;
      }

      v25 = v24 & (-2 << (v14 & 0x3F));
      if (v25)
      {
        v6 = (__clz(__rbit64(v25)) | v14 & 0x7FFFFFFFFFFFFFC0);
        v5 = v30;
      }

      else
      {
        v3 = (v23 << 6);
        v26 = v23 + 1;
        v27 = (a1 + 64 + 8 * v23);
        v5 = v30;
        while (v26 < (v6 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v3 += 64;
          ++v26;
          if (v29)
          {
            sub_248983728(v14, v34, 0);
            v6 = &v3[__clz(__rbit64(v28))];
            goto LABEL_32;
          }
        }

        sub_248983728(v14, v34, 0);
      }

LABEL_32:
      v36 = v6;
      v37 = v34;
      v38 = 0;
    }

    v11 = v33;
    if (v33 == v5)
    {
      sub_248983728(v36, v37, v38);
      return;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  __break(1u);
LABEL_41:

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_2489D81A4(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_248A13030();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2489CE5CC(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_248A12FE0();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_248A12FB0();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_2489DEE78(v39, v40, v41, v1, &qword_27EEB5A90, 0x277D050E0);
        v13 = v12;
        v14 = [v12 uniqueIdentifier];
        v15 = sub_248A12B60();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2489CE5CC((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_248A13000())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B8, &qword_248A17738);
          v7 = sub_248A12E00();
          sub_248A13070();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_248983728(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_248983728(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_248983728(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t SharingInteractionControllerProtocol.hasPairedDevice()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489D8668;

  return v9(a1, a2);
}

uint64_t sub_2489D8668(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  *(v4 + 24) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489D87A0, 0, 0);
  }
}

uint64_t sub_2489D87A0()
{
  v1 = *(v0 + 24);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_248A13030();
    v3 = *(v0 + 24);
  }

  else
  {
    v2 = *(v1 + 16);
  }

  v4 = *(v0 + 8);

  return v4(v2 > 0);
}

void *SharingInteractionController.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_248A12EA0();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A12ED0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_248A12A40();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[4] = MEMORY[0x277D84F98];
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_2815105D8);
  v13 = sub_248A122B0();
  v14 = sub_248A12E80();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446466;
    v18 = sub_248A13570();
    v31[1] = v11;
    v20 = sub_24897BC00(v18, v19, &v36);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_24897BC00(0x292874696E69, 0xE600000000000000, &v36);
    v21 = v14;
    v22 = ObjectType;
    _os_log_impl(&dword_248975000, v13, v21, "%{public}s: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v17, -1, -1);
    v23 = v16;
    v3 = v32;
    MEMORY[0x24C1E0A80](v23, -1, -1);
  }

  else
  {

    v22 = ObjectType;
  }

  sub_2489B7884(0, &qword_28150F560, 0x277D85C90);
  sub_248A12A10();
  v36 = MEMORY[0x277D84F90];
  sub_2489DD118(&unk_28150F570, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v34 + 104))(v33, *MEMORY[0x277D85268], v3);
  v24 = sub_248A12EE0();
  v1[3] = v24;
  v25 = objc_allocWithZone(MEMORY[0x277D54C10]);
  v26 = v24;
  v1[2] = [v25 initWithQueue_];
  v35.receiver = v1;
  v35.super_class = v22;
  v27 = objc_msgSendSuper2(&v35, sel_init);
  v28 = v27[2];
  v29 = v27;
  [v28 setDelegate_];

  return v29;
}

uint64_t SharingInteractionController.isRemoteUnlockSupported()()
{
  *(v1 + 16) = v0;
  swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v2, type metadata accessor for SharingInteractionController);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489D8D90, v4, v3);
}

uint64_t sub_2489D8D90()
{
  v1 = [*(*(v0 + 16) + 16) isSupportedForType_];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t SharingInteractionController.unlock(withDeviceID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[6] = v6;
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2489D8EC0, v6, v5);
}

uint64_t sub_2489D8EC0()
{
  v20 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105D8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_24897BC00(v7, v6, &v19);
    _os_log_impl(&dword_248975000, v3, v4, "%{public}s: unlock(withDeviceID: %{public}s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  v14 = v0[2];
  v13 = v0[3];
  v15 = swift_task_alloc();
  v0[8] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_2489D90F8;
  v17 = v0[4];

  return sub_2489D92FC(sub_2489DD184, v15);
}

uint64_t sub_2489D90F8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[6];
    v5 = v3[7];

    return MEMORY[0x2822009F8](sub_2489E2210, v4, v5);
  }

  else
  {
    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

void sub_2489D9230(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D54C18]) init];
  v3 = sub_248A12B30();
  [v2 setIdsDeviceID_];

  v4 = [a1 authenticateForType:11 withOptions:v2];
  sub_248A11BA0();
}

uint64_t sub_2489D92FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v3[6] = sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[7] = v6;
  v3[8] = v5;

  return MEMORY[0x2822009F8](sub_2489D93C0, v6, v5);
}

uint64_t sub_2489D93C0()
{
  v17 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105D8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s: Performing authentication manager request", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = *(v0 + 48);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = *(v0 + 16);
  *(v11 + 32) = v12;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_2489D95E0;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2489D95E0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_2489D9714;
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_2489D96FC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2489D9714()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t SharingInteractionController.canAuthenticate(withDeviceID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[6] = v6;
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2489D9838, v6, v5);
}

uint64_t sub_2489D9838()
{
  v20 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105D8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_24897BC00(v7, v6, &v19);
    _os_log_impl(&dword_248975000, v3, v4, "%{public}s: canAuthenticate(withDeviceID: %{public}s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  v14 = v0[2];
  v13 = v0[3];
  v15 = swift_task_alloc();
  v0[8] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_2489D9A70;
  v17 = v0[4];

  return sub_2489D92FC(sub_2489DD18C, v15);
}

uint64_t sub_2489D9A70()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[6];
    v5 = v3[7];

    return MEMORY[0x2822009F8](sub_2489D9BA8, v4, v5);
  }

  else
  {
    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_2489D9BA8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_2489D9C0C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D54C18]) init];
  v3 = sub_248A12B30();
  [v2 setIdsDeviceID_];

  v4 = sub_248A12B30();
  v5 = [a1 canAuthenticateForType:11 withIDSDeviceID:v4];

  sub_248A11BA0();
}

uint64_t SharingInteractionController.listDevices()()
{
  v1[18] = v0;
  v1[19] = swift_getObjectType();
  v2 = swift_task_alloc();
  v1[20] = v2;
  *v2 = v1;
  v2[1] = sub_2489D9D8C;

  return sub_2489DA628();
}

uint64_t sub_2489D9D8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v5 = *v2;
  *(*v2 + 168) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v3 + 176) = v8;
    *v8 = v5;
    v8[1] = sub_2489D9F00;
    v9 = *(v3 + 144);

    return SharingInteractionController.listPairedDevices()();
  }
}

uint64_t sub_2489D9F00(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 176);
  v7 = *v2;
  v5[23] = v1;

  v9 = v5[19];
  v10 = v5[18];
  if (v3)
  {
    sub_2489DD118(&unk_27EEB6000, v8, type metadata accessor for SharingInteractionController);
    v11 = sub_248A12CD0();
    v13 = v12;
    v14 = sub_2489DA5C4;
  }

  else
  {
    v5[24] = a1;
    sub_2489DD118(&unk_27EEB6000, v8, type metadata accessor for SharingInteractionController);
    v11 = sub_248A12CD0();
    v13 = v15;
    v14 = sub_2489DA0E8;
  }

  return MEMORY[0x2822009F8](v14, v11, v13);
}

uint64_t sub_2489DA0E8()
{
  v51 = v0;
  v1 = v0[24];
  v2 = v0[21];
  sub_2489D81A4(v1);
  v48 = v3;
  v49 = v0;
  v4 = v2;
  v0[15] = v1;
  v5 = v0[21];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = v0[21];
    }

    sub_248A12FF0();
    sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    sub_2489DD194(&qword_27EEB6010, &qword_27EEB5A90, 0x277D050E0);
    sub_248A12E10();
    v4 = v0[2];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[6];
  }

  else
  {
    v9 = 0;
    v12 = *(v5 + 56);
    v7 = v5 + 56;
    v11 = v12;
    v13 = -1 << *(v7 - 24);
    v8 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v10 = v15 & v11;
  }

  v46 = v0 + 13;
  v16 = (v8 + 64) >> 6;
  v17 = v0 + 15;
  v47 = v4;
  while (v4 < 0)
  {
    v23 = sub_248A13060();
    if (!v23)
    {
      goto LABEL_23;
    }

    v17[2] = v23;
    sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    swift_dynamicCast();
    v22 = v17[1];
    v20 = v9;
    v21 = v10;
    if (!v22)
    {
      goto LABEL_23;
    }

LABEL_21:
    v24 = [v22 uniqueIdentifier];
    v25 = sub_248A12B60();
    v27 = v26;

    v49[13] = v25;
    v49[14] = v27;
    v28 = swift_task_alloc();
    *(v28 + 16) = v46;
    LOBYTE(v25) = sub_2489DEDCC(sub_2489DF090, v28, v48);

    if (v25)
    {
    }

    else
    {
      sub_2489DDA10(v50, v22);
    }

    v9 = v20;
    v10 = v21;
    v4 = v47;
  }

  v18 = v9;
  v19 = v10;
  v20 = v9;
  if (!v10)
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        goto LABEL_23;
      }

      v19 = *(v7 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_17:
  v21 = (v19 - 1) & v19;
  v22 = *(*(v4 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
  if (v22)
  {
    goto LABEL_21;
  }

LABEL_23:

  sub_2489B7A48();
  if (qword_28150F5F8 == -1)
  {
    goto LABEL_24;
  }

LABEL_30:
  swift_once();
LABEL_24:
  v29 = sub_248A122D0();
  __swift_project_value_buffer(v29, qword_2815105D8);
  v30 = sub_248A122B0();
  v31 = sub_248A12E80();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v49[19];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50[0] = v34;
    *v33 = 136446466;
    v35 = sub_248A13570();
    v37 = sub_24897BC00(v35, v36, v50);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    swift_beginAccess();
    v38 = v49[15];
    sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    sub_2489DD194(&qword_27EEB6010, &qword_27EEB5A90, 0x277D050E0);

    v39 = sub_248A12DE0();
    v41 = v40;

    v42 = sub_24897BC00(v39, v41, v50);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_248975000, v30, v31, "%{public}s: List devices - %{public}s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v34, -1, -1);
    MEMORY[0x24C1E0A80](v33, -1, -1);
  }

  swift_beginAccess();
  v43 = v49[15];
  v44 = v49[1];

  return v44(v43);
}

uint64_t sub_2489DA5C4()
{
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2489DA628()
{
  v1[19] = v0;
  swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v2, type metadata accessor for SharingInteractionController);
  v4 = sub_248A12CD0();
  v1[20] = v4;
  v1[21] = v3;

  return MEMORY[0x2822009F8](sub_2489DA6E0, v4, v3);
}

uint64_t sub_2489DA6E0()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2489DA804;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6018, &qword_248A175C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2489DAFE0;
  v0[13] = &block_descriptor_79;
  v0[14] = v2;
  [v1 listCandidateDevicesForType:9 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2489DA804()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);
  if (v3)
  {
    v6 = sub_2489DA9D0;
  }

  else
  {
    v6 = sub_2489DA934;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2489DA934()
{
  sub_2489D7D98(*(v0 + 144), 0);
  v2 = v1;

  v3 = sub_2489DF198(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2489DA9D0()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

uint64_t SharingInteractionController.listPairedDevices()()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v2, type metadata accessor for SharingInteractionController);
  v4 = sub_248A12CD0();
  v1[21] = v4;
  v1[22] = v3;

  return MEMORY[0x2822009F8](sub_2489DAAF8, v4, v3);
}

uint64_t sub_2489DAAF8()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2489DAC1C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6018, &qword_248A175C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2489DAFE0;
  v0[13] = &block_descriptor_5;
  v0[14] = v2;
  [v1 listCandidateDevicesForType:11 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2489DAC1C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_2489DAF74;
  }

  else
  {
    v6 = sub_2489DAD4C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2489DAD4C()
{
  v20 = v0;
  sub_2489D7D98(v0[18], 1);
  v2 = v1;

  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_2815105D8);

  v4 = sub_248A122B0();
  v5 = sub_248A12E80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136446466;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    v13 = MEMORY[0x24C1DF960](v2, v12);
    v15 = sub_24897BC00(v13, v14, v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_248975000, v4, v5, "%{public}s: List paired devices - %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v16 = sub_2489DF198(v2);

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_2489DAF74()
{
  v1 = *(v0 + 184);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 184);

  return v2();
}

uint64_t sub_2489DAFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_2489B7884(0, &qword_27EEB6098, 0x277D54C08);
    sub_2489DD194(&unk_27EEB60A0, &qword_27EEB6098, 0x277D54C08);
    **(*(v4 + 64) + 40) = sub_248A12DD0();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t SharingInteractionController.pair(withDeviceID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[6] = v6;
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2489DB1C0, v6, v5);
}

uint64_t sub_2489DB1C0()
{
  v20 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105D8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_24897BC00(v7, v6, &v19);
    _os_log_impl(&dword_248975000, v3, v4, "%{public}s: pair(withDeviceID: %{public}s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  v14 = v0[2];
  v13 = v0[3];
  v15 = swift_task_alloc();
  v0[8] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_2489D90F8;
  v17 = v0[4];

  return sub_2489D92FC(sub_2489DF2F0, v15);
}

void sub_2489DB3F8(void *a1)
{
  v2 = sub_248A12B30();
  v3 = sub_248A12B30();
  v4 = [a1 enableForType:9 withIDSDeviceID:v2 passcode:v3];

  sub_248A11BA0();
}

uint64_t SharingInteractionController.unpair(withDeviceID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[6] = v6;
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2489DB55C, v6, v5);
}

uint64_t sub_2489DB55C()
{
  v20 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_248A122D0();
  v0[8] = __swift_project_value_buffer(v2, qword_2815105D8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_24897BC00(v7, v6, &v19);
    _os_log_impl(&dword_248975000, v3, v4, "%{public}s: unpair(withDeviceID: %{public}s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  v14 = v0[2];
  v13 = v0[3];
  v15 = swift_task_alloc();
  v0[9] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_2489DB798;
  v17 = v0[4];

  return sub_2489D92FC(sub_2489DF2F8, v15);
}

uint64_t sub_2489DB798()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[6];
    v5 = v3[7];

    return MEMORY[0x2822009F8](sub_2489DB8D0, v4, v5);
  }

  else
  {
    v6 = v3[9];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_2489DB8D0()
{
  v24 = v0;
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[3];

  v5 = v1;
  v6 = sub_248A122B0();
  v7 = sub_248A12E80();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[11];
    v9 = v0[5];
    v10 = v0[2];
    v22 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136446722;
    v14 = sub_248A13570();
    v16 = sub_24897BC00(v14, v15, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_24897BC00(v10, v22, &v23);
    *(v11 + 22) = 2114;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v18;
    *v12 = v18;
    _os_log_impl(&dword_248975000, v6, v7, "%{public}s: error while unpairing deviceID %{public}s: %{public}@", v11, 0x20u);
    sub_248983734(v12, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v13, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  else
  {
    v19 = v0[11];
  }

  v20 = v0[1];

  return v20();
}

void sub_2489DBAF4(void *a1)
{
  v2 = sub_248A12B30();
  v3 = [a1 disableForType:9 withIDSDeviceID:v2];

  sub_248A11BA0();
}